from werkzeug.security import generate_password_hash
from werkzeug.security import check_password_hash
from sqlalchemy.exc import IntegrityError
from app.models import Users


def add_user(db_session, email, password):
    password_hash = generate_password_hash(password)
    user = Users(
        email=email,
        password_hash=password_hash
    )

    try:
        db_session.add(user)
        db_session.commit()
        return {
            "ok": True,
            "user_id": user.user_id,
            "email": user.email
        }

    except IntegrityError:
        db_session.rollback()
        return {
            "ok": False,
            "error": "Email already registered"
        }


def login_user(db_session, email, password):
    user = db_session.query(Users).filter_by(email=email).first()
    if not user:
        return {"ok": False, "error": "user_not_found"}
    if not check_password_hash(user.password_hash, password):
        return {"ok": False, "error": "invalid_password"}
    return {
        "ok": True,
        "user_id": user.user_id,
        "email": user.email
    }


