# Generated by Django 4.2.7 on 2023-12-19 12:23

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('social_media', '0016_remove_surveyquestionoption_survey_answer_option_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='account',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='account',
            name='role',
            field=models.ForeignKey(default=3, on_delete=django.db.models.deletion.CASCADE, to='social_media.role'),
        ),
        migrations.AlterField(
            model_name='alumniaccount',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='comment',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='confirmstatus',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='invitationgroup',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='post',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='postimage',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='postinvitation',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='postreaction',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='postsurvey',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='reaction',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='role',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='surveyanswer',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='surveyquestion',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='surveyquestionoption',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='surveyquestiontype',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='surveyresponse',
            name='deleted_date',
            field=models.DateField(null=True),
        ),
        migrations.AlterField(
            model_name='user',
            name='confirm_status',
            field=models.ForeignKey(default=3, on_delete=django.db.models.deletion.CASCADE, to='social_media.confirmstatus'),
        ),
    ]