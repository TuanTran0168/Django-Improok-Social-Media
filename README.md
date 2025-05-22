# Django Improok - Social Media

A basic social media app built with Django. Features include user signup/login, posting, liking, commenting, and profile management.

You can access the deployed server at [Improok - Social Media](https://trandangtuan0168.pythonanywhere.com/).

Or Swagger [Improok - Social Media](https://trandangtuan0168.pythonanywhere.com/swagger/).
## Features

- User registration and authentication
- Create, edit, delete posts
- Like and comment on posts
- View and update user profiles
- Admin dashboard via Django admin
- Invitation posts (for events or activities)
- Survey posts with multiple-choice voting, text answers, and single/multiple options

## How to Run

### 1. Clone the repository
```bash
git clone https://github.com/TuanTran0168/Django-Improok-Social-Media.git
cd Django-Improok-Social-Media
```

### 2. Set up virtual environment and install packages
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\\Scripts\\activate
pip install -r requirements.txt
```
### 3. Run the project
```bash
python manage.py migrate
python manage.py createsuperuser  # Optional
python manage.py runserver
```
Open your browser and go to: http://127.0.0.1:8000

## Admin Panel

Access the admin dashboard at: http://127.0.0.1:8000/admin
