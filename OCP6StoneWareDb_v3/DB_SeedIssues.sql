/*==================================================
/ Seed Issues
===================================================*/
USE [OCP6StoneWareDB_V3]
GO

IF  EXISTS (
	SELECT id 
		FROM Issues
		WHERE id > 0
)
DELETE FROM Issue_Resolution
DELETE FROM Issues


EXEC dbo.AddIssueToDb @product_id = 1, @status_id = 2,
	@problem_description = 'User tried to sign in with their gmail account and keep getting an error message
		saying that the email does not exist',
	@created_at = '2019-04-21',
	@issue_resolution = 'The user was using the wrong email address.',
	@date_resolved = '2019-04-22'

EXEC dbo.AddIssueToDb @product_id = 1, @status_id = 2,
	@problem_description = 'User says product is buying two of every purchase made. If the user
		wishes to buy 10 shares of Apple stock, the product makes two transactions, each for 10
		shares.',
	@created_at = '2019-03-10',
	@issue_resolution = 'User was on a 3G network and expected the purchase to complete
		faster than it was. User clicked the Purchase button, then clicked it again when the screen
		did not change fast enough. Sent request to Development to add “in progress” animation
		when purchases are made and to disable Purchase button after first click.',
	@date_resolved = '2019-03-10'

EXEC dbo.AddIssueToDb @product_id = 4, @status_id = 1,
	@problem_description = 'User says the stock price keeps changing randomly.',
	@created_at = '2019-03-14'
	
EXEC dbo.AddIssueToDb @product_id = 6, @status_id = 1,
	@problem_description = 'User says the stock price keeps changing randomly.',
	@created_at = '2019-03-19'

EXEC dbo.AddIssueToDb @product_id = 12, @status_id = 1,
	@problem_description = 'The app keeps crashing for the user while they try to cancel an order.',
	@created_at = '2019-08-03'

EXEC dbo.AddIssueToDb @product_id = 11, @status_id = 1,
	@problem_description = 'The app keeps crashing when trying to cancel an order.',
	@created_at = '2019-08-03'

EXEC dbo.AddIssueToDb @product_id = 1, @status_id = 2,
	@problem_description = 'The user is having difficulty updating the application.',
	@created_at = '2019-02-10',
	@issue_resolution = 'Asked user to delete the older version and downloading the newest
	version that is available.',
	@date_resolved = '2019-02-10'

	EXEC dbo.AddIssueToDb @product_id = 1, @status_id = 2,
	@problem_description = 'USers are having difficulty updating the application.',
	@created_at = '2019-02-10',
	@issue_resolution = 'Advised user to delete the older version and downloading the newest
	version that is available.',
	@date_resolved = '2019-02-10'

EXEC dbo.AddIssueToDb @product_id = 13, @status_id = 2,
	@problem_description = 'User says the application is running slow.',
	@created_at = '2019-05-10',
	@issue_resolution = 'The user had 10 other applications opended at the same time. Advised to 
	close the other applications.',
	@date_resolved = '2019-05-10'

	EXEC dbo.AddIssueToDb @product_id = 20, @status_id = 2,
	@problem_description = 'User says the application is running slow.',
	@created_at = '2019-05-10',
	@issue_resolution = 'The user had 10 other applications opended at the same time. Advised to 
	close the other applications.',
	@date_resolved = '2019-05-10'

EXEC dbo.AddIssueToDb @product_id = 8, @status_id = 1,
	@problem_description = 'The user complains that the application text is not scrolling. The information is displayed
	outside the view window.',
	@created_at = '2019-08-14'

	EXEC dbo.AddIssueToDb @product_id = 12, @status_id = 1,
	@problem_description = 'The user complains that the application text is not scrolling. The information is displayed
	outside the view window.',
	@created_at = '2019-08-14'

EXEC dbo.AddIssueToDb @product_id = 10, @status_id = 1,
	@problem_description = 'The user complains that the application text is not scrolling. The information is displayed
	outside the view window.',
	@created_at = '2019-08-17'

EXEC dbo.AddIssueToDb @product_id = 8, @status_id = 1,
	@problem_description = 'App not updating the proper date for displaying the account information',
	@created_at = '2019-05-01'

EXEC dbo.AddIssueToDb @product_id = 13, @status_id = 2,
	@problem_description = 'User says the application is running slow.',
	@created_at = '2019-05-10',
	@issue_resolution = 'The user had 10 other applications opended at the same time. Advised to 
	close the other applications.',
	@date_resolved = '2019-05-10'

EXEC dbo.AddIssueToDb @product_id = 22, @status_id = 1,
	@problem_description = 'The user is not able to access the calendar.',
	@created_at = '2019-03-28'

EXEC dbo.AddIssueToDb @product_id = 22, @status_id = 1,
	@problem_description = 'Found a bug when attempting to update calendar. Error message says that the operation cannot complete
	because the date is NULL',
	@created_at = '2019-03-29'

EXEC dbo.AddIssueToDb @product_id = 13, @status_id = 2,
	@problem_description = 'The app is accepting empty entries when creating a new entry.',
	@created_at = '2019-05-10',
	@issue_resolution = 'Added validation to the entry form to check if the user is attempting to
	submit and empty form. Will display a validation error to notify the user that they cannot submit
	empty data.',
	@date_resolved = '2019-05-10'

EXEC dbo.AddIssueToDb @product_id = 3, @status_id = 1,
	@problem_description = 'The total amounts are not calculating properly.',
	@created_at = '2019-03-20'

EXEC dbo.AddIssueToDb @product_id = 3, @status_id = 1,
	@problem_description = 'User says they have found a few spelling errors in the application.',
	@created_at = '2019-01-29'

EXEC dbo.AddIssueToDb @product_id = 22, @status_id = 1,
	@problem_description = 'Found a bug when attempting to update calendar. Error message says that the operation cannot complete
	because the date is NULL',
	@created_at = '2019-03-29'

EXEC dbo.AddIssueToDb @product_id = 15, @status_id = 2,
	@problem_description = 'The application keeps locking up',
	@created_at = '2019-05-03',
	@issue_resolution = 'Advised the customer to update their operating system.',
	@date_resolved = '2019-05-10'

	EXEC dbo.AddIssueToDb @product_id = 15, @status_id = 2,
	@problem_description = 'The application keeps locking up',
	@created_at = '2019-05-03',
	@issue_resolution = 'Advising users to update their operating system.',
	@date_resolved = '2019-05-10'

EXEC dbo.AddIssueToDb @product_id = 15, @status_id = 2,
	@problem_description = 'App is not displaying properly on smaller screen devices.',
	@created_at = '2019-02-14',
	@issue_resolution = 'Added a screen size check and adjusted displaying properly',
	@date_resolved = '2019-03-10'

EXEC dbo.AddIssueToDb @product_id = 44, @status_id = 1,
	@problem_description = 'User says the application starts acting crazy when they tap the screen exactly 5 times in a row.',
	@created_at = '2019-01-20'

EXEC dbo.AddIssueToDb @product_id = 35, @status_id = 1,
	@problem_description = 'User says the application starts acting crazy when they tap the screen exactly 5 times in a row.',
	@created_at = '2019-01-20'

EXEC dbo.AddIssueToDb @product_id = 44, @status_id = 2,
	@problem_description = 'User says the planner is not displaying the correct information for dates selected.',
	@created_at = '2019-02-25',
	@issue_resolution = 'Found a bug that was not updating the calendar properly.',
	@date_resolved = '2019-07-11'

EXEC dbo.AddIssueToDb @product_id = 38, @status_id = 1,
	@problem_description = 'User says the application starts acting crazy when they tap the screen exactly 5 times in a row.',
	@created_at = '2019-01-20'

EXEC dbo.AddIssueToDb @product_id = 18, @status_id = 1,
	@problem_description = 'Found a bug when attempting to update calendar. Error message says that the operation cannot complete
	because the date is NULL',
	@created_at = '2019-08-29'

EXEC dbo.AddIssueToDb @product_id = 12, @status_id = 1,
	@problem_description = 'User is not able to update their account information',
	@created_at = '2019-06-16'

EXEC dbo.AddIssueToDb @product_id = 30, @status_id = 2,
	@problem_description = 'User says the exercises are not displaying properly and the timer is off by 2 secs.',
	@created_at = '2019-06-16',
	@issue_resolution = 'Found a bug that was setting the timer offet by 2 secs. Updated the timer.',
	@date_resolved = '2019-11-06'

EXEC dbo.AddIssueToDb @product_id = 25, @status_id = 2,
	@problem_description = 'The application is running slow for certain users in the North East Market',
	@created_at = '2019-11-16',
	@issue_resolution = 'Data carriers was experiencing heavy load times',
	@date_resolved = '2019-11-16'

EXEC dbo.AddIssueToDb @product_id = 25, @status_id = 2,
	@problem_description = 'The application is running slow for certain users in the North East Market',
	@created_at = '2019-11-16',
	@issue_resolution = 'Data carriers was experiencing heavy load times',
	@date_resolved = '2019-11-16'

EXEC dbo.AddIssueToDb @product_id = 41, @status_id = 1,
	@problem_description = 'App is stuck on loading data. No other information provided.',
	@created_at = '2019-06-23'
	
EXEC dbo.AddIssueToDb @product_id = 30, @status_id = 1,
	@problem_description = 'User is having issues loading data during certain times of the day. Between 12am and 3am eastern time.',
	@created_at = '2019-06-07'

EXEC dbo.AddIssueToDb @product_id = 5, @status_id = 2,
	@problem_description = 'User is not able to purchase more than a certain quantity of stocks',
	@created_at = '2019-04-01',
	@issue_resolution = 'Verified that there is a safety check in place to ensure massive amounts of stocks are not purchased.',
	@date_resolved = '2019-04-01'

EXEC dbo.AddIssueToDb @product_id = 5, @status_id = 2,
	@problem_description = 'Partial data is being shown for certain users in the central market',
	@created_at = '2019-04-19',
	@issue_resolution = 'Updated geo-location functionality',
	@date_resolved = '2019-04-19'

EXEC dbo.AddIssueToDb @product_id = 23, @status_id = 1,
	@problem_description = 'User says the app displays a black screen when trying to update information.',
	@created_at = '2019-06-07'

EXEC dbo.AddIssueToDb @product_id = 38, @status_id = 1,
	@problem_description = 'App keeps disconnecting from data sources.',
	@created_at = '2019-06-07'

EXEC dbo.AddIssueToDb @product_id = 40, @status_id = 1,
	@problem_description = 'Balance is updating twice',
	@created_at = '2019-01-07'

EXEC dbo.AddIssueToDb @product_id = 40, @status_id = 1,
	@problem_description = 'Previous balance is being deleted after adding new entry',
	@created_at = '2019-01-02'

EXEC dbo.AddIssueToDb @product_id = 34, @status_id = 1,
	@problem_description = 'The user cannot update their personal information',
	@created_at = '2019-05-02'

EXEC dbo.AddIssueToDb @product_id = 22, @status_id = 1,
	@problem_description = 'The user cannot reset their password. Says not getting the confimation emails to reset password.',
	@created_at = '2019-07-02'

EXEC dbo.AddIssueToDb @product_id = 9, @status_id = 2,
	@problem_description = 'User says the application is running slower than normal lately.',
	@created_at = '2019-04-19',
	@issue_resolution = 'Asked the user to update the application and restart their device.',
	@date_resolved = '2019-04-19'

EXEC dbo.AddIssueToDb @product_id = 18, @status_id = 2,
	@problem_description = 'User says the application is running slower than normal lately.',
	@created_at = '2019-02-19',
	@issue_resolution = 'Asked the user to update the application and restart their device.',
	@date_resolved = '2019-04-19'

EXEC dbo.AddIssueToDb @product_id = 24, @status_id = 2,
	@problem_description = 'Application keeps crashing and displaying error 404',
	@created_at = '2019-08-19',
	@issue_resolution = 'Had an incorrect URL for the help and contact page. Updated the URL.',
	@date_resolved = '2019-08-19'

EXEC dbo.AddIssueToDb @product_id = 21, @status_id = 1,
	@problem_description = 'The user cannot reset their password. Says not getting the confimation emails to reset password.',
	@created_at = '2019-07-02'

EXEC dbo.AddIssueToDb @product_id = 23, @status_id = 1,
	@problem_description = 'The user cannot reset their password. Says not getting the confimation emails to reset password.',
	@created_at = '2019-07-02'

EXEC dbo.AddIssueToDb @product_id = 24, @status_id = 1,
	@problem_description = 'The user cannot reset their password. Says not getting the confimation emails to reset password.',
	@created_at = '2019-07-02'

EXEC dbo.AddIssueToDb @product_id = 19, @status_id = 1,
	@problem_description = 'The user cannot reset their password. Says not getting the confimation emails to reset password.',
	@created_at = '2019-07-02'
