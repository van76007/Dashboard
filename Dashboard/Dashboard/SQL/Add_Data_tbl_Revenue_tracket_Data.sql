SET NOCOUNT ON;
SET XACT_ABORT ON;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_Revenue_Tracker_Data]([Name], [Total_Finance_PEPM_Calculated], [Total_Finance_One_Time_Calculated], [Month], [Year], [Contract_Date], [Projected_Assignment], [Projected_Project_Start_Date], [Imp_Planned_KO], [Status_Comments], [Hold_Explanation], [Status], [PSID])
SELECT N'Zantingh Direct Inc', 2460.0000, 898.0000, 12, 2013, '20131212 00:00:00.000', N'', NULL, N'', N'06/26/14 - Prepping for KOM.  client replied via e-mail - they are still not ready to begin.

06/18/14 - Prepping for KOM - I have left VM and sent e-mail as of today, no reply.

06/12/14 - No change.

05/29/14-Client requested to be contacted the week of June 16', N'10/27/14jah:  email to Renato with spreadsheet of Micro OnHolds that he is assigned as sponsor to answer to.', N'Not Started', N'PP4J931, PP4J933' UNION ALL
SELECT N'Young Life of Canada', 4800.0000, 3840.0000, 12, 2014, '20141216 00:00:00.000', N'Staline Lamarque', '20150817 00:00:00.000', N'8/31/15', N'8/3/2015- Prep preadmin. Emailed Anna at X2O. Shes on vacat till Aug 17. Awaiting reply.
7/31/2015- Prep preadmin. Still no word frol client. Left vm. Asked Nisrine for clients email.
6/22/2015- Prep preadmin. Called left vm for Anna. Awaiting reply.
6/19/2015- Prep preadmin. P.Toucott said to contact Nisrine (New slaes person).
6/12/2015- Prep preadmin. Sent email to Keith &awaiting reply.', N'', N'Not Started', N'PP2D979' UNION ALL
SELECT N'X2O Media Inc.', 1248.0000, 4779.7900, 11, 2013, '20131112 00:00:00.000', N'', NULL, N'', N'existing account being done by service [Anna P]Add on', N'', N'Not Started', N'PP4Q663' UNION ALL
SELECT N'Wills Transfer Limited', 9849.6000, 7948.0000, 10, 2014, '20141029 00:00:00.000', N'Staline Lamarque', '20150504 00:00:00.000', N'', N'04/21/2015- Leo said he terminated PP&WFM services.
01/07/2015- Prepping for preadmin. Preadmin 4/12 @1pmEST. Spoke/confirmed with client &sent email
12/29/2014- Prepping for preadmin. Left vm&email for Leonard. Advised no resource and will follow-up in January to review TBD start date.', N'', N'Not Started', N'PP72929' UNION ALL
SELECT N'Wild Rose Brewery Ltd', 2640.0000, 3128.0000, 4, 2015, '20150414 00:00:00.000', N'Sehnaaz Bhuttoo', '20151014 00:00:00.000', N'10/31/15', N'04/21/2015- Prepping for preadmin. Client is going thru restructuring. Wants to start Oct. Will follow-up Mid-Sept to see where her heads at.
04/13/2015- Prepping for preadmin. Left vm& email Libby advising 6/8 KOM. Awaiting repsonse.
02/10/2015- Prepping for preadmin. Follow-up call w/ Libby 4/10 @10amEST
02/10/2015- Prepping for preadmin. Advised by G.Raymond that Jeff is resigning and to follow-up w/ Libby eslack@ehlaw.ca around mid-April. Set calendar reminder to call Libby mid-April.
12/29/2014- Prepping for preadmin. Left vm & email for JeffAdvised no resource and will follow-up in January to review TBD start date', N'', N'Not Started', N'PP9Q444' UNION ALL
SELECT N'Watermark Dental Group', 1920.0000, 3360.0000, 7, 2014, '20140704 00:00:00.000', N'Doobmanee luvna', '20151012 00:00:00.000', N'10/31/15', N'04/21/2015- Prepping for preadmin. Client is going thru restructuring. Wants to start Oct. Will follow-up Mid-Sept to see where her heads at.
04/13/2015- Prepping for preadmin. Left vm& email Libby advising 6/8 KOM. Awaiting repsonse.
02/10/2015- Prepping for preadmin. Follow-up call w/ Libby 4/10 @10amEST
02/10/2015- Prepping for preadmin. Advised by G.Raymond that Jeff is resigning and to follow-up w/ Libby eslack@ehlaw.ca around mid-April. Set calendar reminder to call Libby mid-April.
12/29/2014- Prepping for preadmin. Left vm & email for JeffAdvised no resource and will follow-up in January to review TBD start date
01/05/2015-Prepping for preadmin. Spoke w/ Jeff and advised no resource and will follow-up in mid Feb to review TBD start date.', N'', N'Not Started', N'PP4Q665' UNION ALL
SELECT N'Wardco Window & Door Manufacturing Inc', 2160.0000, 2625.0000, 3, 2015, '20150327 00:00:00.000', N'', NULL, N'', N'null', N'', N'Not Started', N'null' UNION ALL
SELECT N'Walker''s/Capital Group of Companies Limited', 2400.0000, 3575.0000, 4, 2014, '20140423 00:00:00.000', N'Sehnaaz Bhuttoo', '20150713 00:00:00.000', N'', N'6/15/2015- Prepping preadmin. Left 2 vm&1 email to Kathy to determine 7/13 KOM. Awaiting reply.
04/22/2015- Prepping for preadmin. Email Sales &CCd Dean to find out what to do w/ acct.
04/17/2015- Prepping for preadmin. Emailed Sales/Dean/Mahadev again for guidance.
04/16/2015- Prepping for preadmin. Escalated to Sales, Mahadev & Dean. Discrepancy of what the client bought. Shes not aware of WFM, she seems to just want to convert to PP+. Awaiting response from Sales/Dean/Mahadev.
02/25/2015- Prepping for preadmin. Preadmin 4/16@12noon.
02/23/2015- Prepping for preadmin. Left another vm for Brenda to pass along to Kathy. Also emailed kathy for the 4th time and CC Sales&Dean.
02/12/2015-Prepping for preadmin. Left vm&email for Kathy. Copied Sales person&Dean. Brenda from accts rec''d called back advising client is away on vacay. Set calendar reminder to call Feb 23 to follow-up with Kathy
01/14/2015- Prepping for preadmin. Left detailed vm&email Kathy.Awaiting reply', N'', N'Not Started', N'PP47534 PP47581 PP47535  PP47536' UNION ALL
SELECT N'WHITE HOUSE DESIGN COMPANY INC.', 3000.0000, 4800.0000, 4, 2014, '20140417 00:00:00.000', N'', NULL, N'', N'02/12/2015- Advised by Dyen no preadmin req. Client already with imp
2/11/15- add on', N'', N'Not Started', N'PP47559' UNION ALL
SELECT N'WAYFARER INSURANCE BROKERS LTD', 2460.0000, 2880.0000, 7, 2014, '20140730 00:00:00.000', N'Darrin Read-Sweeting', '20150831 00:00:00.000', N'8/31/15', N'7/7./2015- Prepping preadmin. Switching from Natasha to Darrin.
06/29/15 - On Track for KOM. No issues.

06/16/2015- Preadmin completed. KOM 7/6 3-5pmEST. Assigned to Natasha
2/25/2015-Prepping for preadin. Preadmin 6/16@12noon EST.', N'', N'Not Started', N'PP1G378' UNION ALL
SELECT N'VONS STEAKHOUSE & OYSTERBAR LTD. o/a VONS STEAKHOUSE LTD. & COOK COUNTY SALOON LTD.', 4464.0000, 588.0000, 10, 2014, '20141007 00:00:00.000', N'Sehnaaz Bhuttoo', '20150818 00:00:00.000', N'8/31/15', N'05/19/2015- Prepping preadmin. Replied toc lient email, cannot start KOm sooner. Asked sales to follow-up w/ client & provided advance wb.
05/11/2015- Prepping preadmin. Sent Dean email to push up KOM to earlier date.
05/06/2015- prepping preadmin. Emailed client to confirm preadmin date&awaiting response. 
04/10/2015- Prepping for preadmin. Left vm&email Janice advising 8/18 KOM and i''ll be reaching out to her again closer toward August to sched preadmin. Awaiting call back from Janice.', N'', N'Not Started', N'PP4N700' UNION ALL
SELECT N'Upper Canada Forest Products Ltd.', 2160.0000, 5320.0000, 11, 2013, '20131114 00:00:00.000', N'Dylen Citta', '20150914 00:00:00.000', N'9/30/15', N'7/22/2015- Prepping onboarding. Sent another email to sched Welcome Call. Awaiting reply.
7/10/2015- Prepping onboarding. Sent 1st contact email and sent email advising that onboarding preadmin will need to be done in July. Awaiting reply.
05/19/2015- Prepping preadmin. Emailed clinet again to sched preadmin
05/06/2015- Prepping preadmin. Emailed client to confirm preadmin date
04/22/2015- Prepping for preadmin. Sent Roxanne another email to see when she can have preadmin in Sept./
4/10/2015- Prepping for preadmin. Clients wants to be live for Dec. I advised we''ll have a preadmin beginning of Sept and KOM by mid-Sept. Still waiting for Rxanne to confirm preadmin date. Left vm&email Roxanne. J.O''Connel said the imp will needs a French rep assigned.', N'', N'Not Started', N'PP1S140, PP4S465, PP1S139, PP4N268' UNION ALL
SELECT N'Union Food Donuts Limited Partnership', 720.0000, 0.0000, 12, 2014, '20141215 00:00:00.000', N'Dylen Citta', '20150831 00:00:00.000', N'8/31/15', N'7/20/2015- Prepping onboarding. Welcome call completed. !st CheckPoint Call 8/10@11amEST
05/19/2015- Prepping preadmin. Predamin 7/16 @11:30amEST
05/11/2015- Prepping preadmin. Sent Dean email to push up KOM to earlier date.
05/06/2015- Prepping preadmin. Emailed Dean for starting KOm sooner.
4/10/2015- Prepping for preadmin. Spoke w/ Mary & advised tentative 8/18 KOM, but will see if we can start sooner. No promises made. Advised to contact Veronika for sales matters. No preadmin call set yet as im waiting for Dean to confirm KOM date', N'', N'Not Started', N'PP15883' UNION ALL
SELECT N'Umicore Canada Inc', 720.0000, 3100.0000, 6, 2015, '20150609 00:00:00.000', N'Natasha Manick', '20150810 00:00:00.000', N'8/11/15', N'7/28/2015- Preadmin completed. Old process as per Dean. KOM Aug 11@10amEST
6/4/2015- Prepping preadmin. Left vm and recshed meeting invite for 7/27.
6/2/2015- Prepping preadmin. Emailed Michele new KOM & want to resched preadmin for 7/27. Awaiting reply
04/22/2015- Prepping for preadmin. Preadmin 8/25 @11:30EST. Advised Michele WFM will start 9/7, but PP set will be 5/11. Emailed Josh, Mahadev&Dean.', N'', N'Not Started', N'PP4T595' UNION ALL
SELECT N'Tymac Launch Service Ltd', 1920.0000, 3000.0000, 7, 2014, '20140717 00:00:00.000', N'Staline Lamarque', '20150907 00:00:00.000', N'9/30/15', N'7/30/2015- Prep Onboard. Welcome call completed. 1st Checkpoint TBD (waiting for Michelle to advise). Emailed Welcome package. Client wants to keep 9/7 KOM.
7/29/2015- Prep onboarding. Emailed client to advise of earlier start of Aug 17.
07/13/2015- Prepping onboarding. Onbioarding sched 7/27@4pm.
07/10/2015- Prepping onboarding. Sent 1st contact email and called&emailed client. Awaiting reply
04/24/2015- Prepping for preadmin. Preadmin 8/26 @ 11:30amEST
4/22/2015- Prepping for preadmin. Left vm&email.', N'', N'Not Started', N'PP28183' UNION ALL
SELECT N'Transporation Investment Corporation', 900.0000, 3800.0000, 11, 2014, '20141106 00:00:00.000', N'Natasha Manick', '20150915 00:00:00.000', N'9/30/15', N'7/7/15-Account moved to KOM 09/15 as per sales rep, customer is on vacation
6/2/2015- Prepping preadmin. Sent email to J.Azie to advise client of new KOM 7/13. J.Azie should sched preadmin 1st wk of July.
4/23/2015- Prepping preadmin. Sent email to J.Azie to follow-up w/ client.', N'', N'Not Started', N'PP90704' UNION ALL
SELECT N'Transmation (canada) Inc.o\a Transcat CR 1', 1728.0000, 0.0000, 4, 2015, '20150402 00:00:00.000', N'Tej Suroowan', '20151012 00:00:00.000', N'10/31/15', N'7/14/2015- Prepping onboarding. Sched 8/12 @11amEST
7/13/2015- Prepping onboarding. Left vm&emailed client advising onboarding call will need to push up to the wk of August 10. Sent 1st contact email. Awaiting reply.
4/23/2015- Prepping for preadmin. Preadmin 9/8 @11:30EST', N'', N'Not Started', N'PP2U130' UNION ALL
SELECT N'Transmation (canada) Inc.o\a Transcat', 2016.0000, 4368.0000, 9, 2014, '20140926 00:00:00.000', N'Dylen Citta', '20150928 00:00:00.000', N'9/30/15', N'7/31/2015- Prep Onboard. Welcome call completed. 1st Checkpoint 8/14 @2pmEST
7/28/2015- Prep onboarding. Sched Onboarding 7/31.
7/22/2015- Prepping onboarding. Sent another email to confirm Welcome call date. Awaiting reply.
7/10/2015- Prepping onboarding. Sent 1st contact email and advised email&called to push up onboarding call to this month. Awaiting reply
4/23/2015- Prepping for preadmin. Preadmin 9/9 @11EST', N'', N'Not Started', N'PP4K280' UNION ALL
SELECT N'Town of Cochrane Library O/A Nan Boothby Memorial Library', 969.0000, 5999.9900, 9, 2014, '20140916 00:00:00.000', N'Sehnaaz Bhuttoo', '20150928 00:00:00.000', N'9/30/15', N'05/05/2015- Prepping preadmin. Preadkin 9/03 @11:30amEST
4/23/2015- prepping preadmin. No direct ext for Bob. Sent email to Bob. Awaiting response.', N'', N'Not Started', N'PP22660' UNION ALL
SELECT N'Toronto Pan Am Sports Centre Inc', 16200.0000, 6540.0000, 7, 2014, '20140723 00:00:00.000', N'Tej Suroowan', '20150919 00:00:00.000', N'9/30/15', N'7/22/2015- Prepping onboarding. Sched SWelcome Call 7/29 @1pmEST.
7/10/2015- Prepping onboarding. Sent back to sales. Fernando is no longer w/ company. New Op manager wants to review contract. Contract will need to be amended to reflect new company name etc. Awaiting direction from sales. 
4/23/2015- Prepping preadmin. Preadmin 9/15 @11EST', N'', N'Not Started', N'PP4T757' UNION ALL
SELECT N'Toronto Humane Society', 5100.0000, 9056.0000, 1, 2014, '20140130 00:00:00.000', N'Deensha Bunhejee', '20150928 00:00:00.000', N'9/30/15', N'7/21/2015- Prepping onboarding. Welcome call completed. 1st Checkpoint call 8/19@12pmEST. Ordered clocks/badges.

7/10/2015- Prepping onboarding. Sched 7/21 @12-1pmEST. Sent 1st contact email
5/5/2015- Prepping preadmin. Client wants to start end of June/July. Emailed Dean. Still tentatively sched preadmin 9/2 @11:30amEST', N'', N'Not Started', N'PP4T783, PP4T784, PP4T785, PP4T786' UNION ALL
SELECT N'Tipco Inc.', 3192.0000, 2760.0000, 12, 2014, '20141212 00:00:00.000', N'Natasha Manick', '20150915 00:00:00.000', N'9/30/15', N'5/29/2015- Preadmin completed by J.Azie.
5/25/2015- Prepping preadmin. Emailed J.Azie again to contact client.
5/5/2015- Prepping preadmin. Payroll will be set up for 5/27. Emailed J.Azie to contact client to advise of KOM.', N'', N'Not Started', N'PP4T970, PP4T971' UNION ALL
SELECT N'The MasterCard Foundation', 6000.0000, 9900.0000, 3, 2015, '20150310 00:00:00.000', N'Natasha Manick', '20150907 00:00:00.000', N'9/30/15', N'7/21/2015- Prepping onboarding. Welcome call completed. 1st Checkpoint call 8/18. 
7/10/2015- Prepping onboarding. Called, no answer. Emailed client to advise onboarding preadmin needs to be done this month. Sent First contact email. Awaiting response.
5/25/2015- Prepping preadmin. Preadmin 8/27 @11amEST. Conversion is 6/10.
5/11/2015- Prepping preadmin. Spoke w/ Al, &wants me to call back to discuss WFM KOM etc.', N'', N'Not Started', N'PP4U051' UNION ALL
SELECT N'The Ingredient Company', 5197.9200, 3328.0000, 6, 2015, '20150630 00:00:00.000', N'Staline Lamrque', '20150916 00:00:00.000', N'9/30/15', N'7/28/2015- !st Checkpoint Call completed. Client still needs to look at their sched and take Org Struct/Setup training. Emailed Discovery Package. 2nd Checkpoint Call 9/3@3pmEST
7/16/2015- Prepping onboarding. 1st Checkpoint 7/28.
5/11/2015- Prepping onboarding. Emailed 1st contact email. Spoke w/ client and sched onboarding call 7/16@2pmEST', N'', N'Not Started', N'PP42494' UNION ALL
SELECT N'The Artona Group Inc', 3672.0000, 2392.0000, 4, 2015, '20150430 00:00:00.000', N'Nishna Issory', '20150914 00:00:00.000', N'9/30/15', N'7/9/2015- Prepping onboarding. Emailed client to advise that preadmin onboarding will need to be done between July 20-27& client will keep Sept 14 KOM. Client is away from June 26-July 27. Awaiting reply.
5/20/2015- Prepping preadmin. Preadmin 8/20 @10amEST. C.McGowan is setting up payroll/MHR', N'', N'Not Started', N'PP4U251' UNION ALL
SELECT N'TRS Components Ltd', 2400.0000, 2450.0000, 5, 2015, '20150501 00:00:00.000', N'Nishna Issory', '20150901 00:00:00.000', N'9/30/15', N'7/20/2015- Prepping onboarding. Welcome call completed. 1st Checkpoint 8/11@3pmEST
7/15/2015- Prepping onboarding. Emailed client again advising KOM date and needing to sched onboarding preadmin. this month. Awaiting reply
7/8/2015- Prepping onboarding. Emailed First contact email. Left vm& sched follow-up call 7/9.', N'', N'Not Started', N'PP2B445, PP4U385' UNION ALL
SELECT N'THE VALLEY GROUP (ST. MARY''S) INC. O/A CHICOPEE TUBE PARK', 1470.0000, 3500.0000, 9, 2014, '20140905 00:00:00.000', N'Nishna Issory', '20150820 00:00:00.000', N'8/20/15', N'8/5/2015- Prepping preadmin. Left vm again. Awaiting reply.
8/4/2015- Prepping preadmin. Client didnt attand. Left vm&email client.
7/8/2015- Prepping onboarding. Left vm&emailed Andy. Advised of 8/20 KOM. Awaiting reply.', N'', N'Not Started', N'PP4U448' UNION ALL
SELECT N'THE SCONEWITCH O/A 4227964 CANADA INC', 2352.0000, 2904.0000, 5, 2015, '20150515 00:00:00.000', N'Nishna Issory', '20151006 00:00:00.000', N'10/31/15', N'7/13/2015- Prepping onboarding sched 8/6 11am. 1st contact email sent.', N'', N'Not Started', N'PP4U471' UNION ALL
SELECT N'Swim 4 Me Inc O/A Davina''s Swim House', 2400.0000, 2600.0000, 5, 2015, '20150519 00:00:00.000', N'Nishna Issory', '20150915 00:00:00.000', N'9/30/15', N'7/22/2015- Prepping onboarding. Onboarding completed. 1st checkpoint 8/11@1pmEST
7/14/2015- Prepping onboarding.7/22@11:30EST Sent 1st Contact email
6/3/2015- Prepping onboarding. Email 1st contact email. Sched folow-up call 7/9', N'', N'Not Started', N'PP4P961,PP4P962' UNION ALL
SELECT N'Suzo-Happ Canada ULC', 1080.0000, 3100.0000, 11, 2014, '20141128 00:00:00.000', N'Sehnaaz Bhuttoo', '20150828 00:00:00.000', N'8/31/15', N'06/17/2015- Prepping preadmin. Fanata finally called back and sched preadmin for Aug 11
06/12/2015- Prepping preadmin. Bev H will convert and gave proper contact info.
6/10/2015- Prepping for preadmin. Emailed S.Mongrain to advise what to do w/ conversion.', N'', N'Not Started', N'PP4U508' UNION ALL
SELECT N'Stuyver''s', 5760.0000, 2392.0000, 6, 2015, '20150603 00:00:00.000', N'Staline Lamarque', '20150824 00:00:00.000', N'8/31/15', N'7/21/2015- Prepping preadmin. Preadmin completed. WB sent in advance as per Dean. Advised client will not support until KOM. Client will need to set up payroll for 8/18. Advised to call ADP to cancel. NO ADP TAPE will be accepted! Will have someone send EE Import Grid.
7/20/2015- Prepping preadmin. Client wants preadmin 7/21 @1:30pm. Old process- not onboarding, not enough time.
7/17/2015- Prepping onboarding. Emailed Naveed 1st contact email&left vm. Dean needs to clarify KOM is in Aug or Sept.
6/3/2015- Prepping onboarding. Sent first contact email. Sched follow-up call 7/9/2015', N'', N'Not Started', N'PP4U514' UNION ALL
SELECT N'Student Association of George Brown College', 3840.0000, 15700.0000, 3, 2014, '20140314 00:00:00.000', N'Staline lamarque', '20150910 00:00:00.000', N'9/30/15', N'6/15/2015- Prepping preadmin. Preadmin 8/24 @3:30pmEST. Sent wb in advance.', N'', N'Not Started', N'PP1P596, PP48171, PP2J535' UNION ALL
SELECT N'Stepping Stones Child Care Co-operative', 8235.0000, 10200.0000, 12, 2014, '20141204 00:00:00.000', N'Deensha Bunhejee', '20150806 00:00:00.000', N'8/31/15', N'7/7/2015- Prepping preadmin. Conf Call w/ D.Convery& client Ram. Conversion will happen 7/21 by Adil. If Adil is able to convert the account the client will have a end of Aug WFM KOM as per Dean.', N'', N'Not Started', N'PP4U586' UNION ALL
SELECT N'Spray Lake Sawmills Recreation Park Society', 3600.0000, 3353.7000, 4, 2015, '20150401 00:00:00.000', N'Sehnaaz Bhuttoo', '20151031 00:00:00.000', N'10/31/15', N'7/10/2015- Preppin onboarding. Emailed 1st contact email& emailed client to call me about Aug 31 onboarding call.', N'', N'Not Started', N'PP4L146' UNION ALL
SELECT N'Southlake Family Health Team', 3096.0000, 997.0000, 10, 2014, '20141008 00:00:00.000', N'Doobmanee Luvna', '20150915 00:00:00.000', N'9/30/15', N'6/9/2015- Prepping onboarding. Emailed 1st contact email. Sched follow-up call 7/9.', N'', N'Not Started', N'PP4U618, PP9E922   PP44287' UNION ALL
SELECT N'Solideal Canada Inc.', 5544.0000, 3079.0000, 10, 2014, '20141020 00:00:00.000', N'Natasha manick', '20151026 00:00:00.000', N'10/31/15', N'7/14/2015- Prepping onboarding. Sched 8/18. Sent 1st contact email.', N'', N'Not Started', N'PP4U639' UNION ALL
SELECT N'Smith Clinic', 3456.0000, 4404.9600, 5, 2014, '20140530 00:00:00.000', N'Doobmanee luvna', '20151015 00:00:00.000', N'10/31/15', N'7/14/2015- Prepping onboarding. Left vm&emailed 1st contact email', N'', N'Not Started', N'PP4U652' UNION ALL
SELECT N'Skoah Inc', 3192.0000, 3192.0000, 12, 2014, '20141210 00:00:00.000', N'Dylen Citta', '20151013 00:00:00.000', N'10/31/15', N'7/15/2015- Prep onboard. Emailed 1st contact email&email advising 10/12 KOM. Awaiting reply.', N'', N'Not Started', N'PP4U788' UNION ALL
SELECT N'Simex Inc', 750.0000, 4480.0000, 7, 2015, '20150727 00:00:00.000', N'Deensha Bunhejee', '20151007 00:00:00.000', N'10/31/15', N'7/20/2015- Prepping onboarding. Sent back to Sales/Admin team bc of confliucting info in contract. Awaiting response. APPEARS TO BE DUPLICATE-SAME COMP.', N'', N'Not Started', N'PP4U845' UNION ALL
SELECT N'Seventy-Seven Signs Ltd.', 1320.0000, 699.0000, 10, 2014, '20141016 00:00:00.000', N'Staline Lamarque', '20151001 00:00:00.000', N'10/31/15', N'7/20/2015- Prepping onboarding. Sent 1st contact email. Onboarding sched 8/13 @11amESt', N'', N'Not Started', N'PP1B328,PP4P508,PP41489' UNION ALL
SELECT N'Services Detail Niro Au Inc.', 4620.0000, 6250.0000, 2, 2014, '20140204 00:00:00.000', N'Staline Lamarque', '20151029 00:00:00.000', N'10/31/15', N'07/07/2015-email 1 sentdarshynee', N'', N'Not Started', N'PP4V090' UNION ALL
SELECT N'Service Master of Canada', 1632.0000, 2499.0000, 3, 2015, '20150305 00:00:00.000', N'Sehnaaz Bhuttoo', '20150908 00:00:00.000', N'9/8/15', N'7/20/2015- Prepping onboarding. Emailed 1st contact email& emailed client to advise KOM. Awaiting reply.', N'', N'Not Started', N'PP4T650' UNION ALL
SELECT N'Select Outsourcing Canada Inc.', 672.0000, 4959.0000, 10, 2013, '20131029 00:00:00.000', N'Deensha Bunhejee', '20151007 00:00:00.000', N'10/31/15', N'7/20/2015- Prepping onboarding. Sent 1st contact email to Jill and left vm. Advised Oct 7 KOM. Awaiting reply.', N'', N'Not Started', N'PP4V124' UNION ALL
SELECT N'Sealweld Corporation', 2256.0000, 4000.0000, 3, 2014, '20140328 00:00:00.000', N'', '20151030 00:00:00.000', N'10/31/15', N'7/29/2015- Prep onboarding. Advised 10/30 KOM, client may want to push out. Awaiting reply next wk. Sent 1st contact email', N'', N'Not Started', N'PP4V147' UNION ALL
SELECT N'Scan Again Corp', 576.0000, 3510.0000, 12, 2013, '20131218 00:00:00.000', N'', '20151030 00:00:00.000', N'10/31/15', N'7/29/2015- Prep onboarding. Email client KOM 10/30. Emailed 1st contact email.', N'', N'Not Started', N'PP4K637; PP4U572' UNION ALL
SELECT N'Savvia Inc', 1875.0000, 5040.0000, 7, 2014, '20140722 00:00:00.000', N'', '20151103 00:00:00.000', N'11/30/15', N'7/29/2015- Prep onboarding. Email client KOM 10/30. Emailed 1st contact email.', N'', N'Not Started', N'PP23848' UNION ALL
SELECT N'Sarah McLachlan School of Music Society', 2550.0000, 3750.0000, 4, 2014, '20140430 00:00:00.000', N'', '20151103 00:00:00.000', N'11/30/15', N'7/29/2015- Prep onboarding. Email client KOM 10/30. Emailed 1st contact email.', N'', N'Not Started', N'PP21030, PP4M121' UNION ALL
SELECT N'STONEHENGE THERAPEUTIC COMMUNITY.', 3840.0000, 8610.0000, 3, 2014, '20140307 00:00:00.000', N'', '20151110 00:00:00.000', N'11/30/15', N'7/29/2015- Prep onboarding. French speaking client. Emailed Dean and J.Azie. Awaiting reply.', N'', N'Not Started', N'PP4V241' UNION ALL
SELECT N'SSi Micro Ltd', 3012.0000, 10500.0000, 11, 2014, '20141127 00:00:00.000', N'', '20151123 00:00:00.000', N'11/30/15', N'7/29/2015- Prep onboarding. Email client KOM 11/23. Emailed 1st contact email.', N'', N'Not Started', N'PP17880' UNION ALL
SELECT N'SPECTRUM EDUCATIONAL SUPPLIES', 2414.2800, 6557.6200, 11, 2013, '20131112 00:00:00.000', N'', '20151123 00:00:00.000', N'11/30/15', N'7/29/2015- Prep onboarding. Email client KOM 11/23. Emailed 1st contact email.', N'', N'Not Started', N'PP4V382'
COMMIT;
RAISERROR (N'[dbo].[tbl_Revenue_Tracker_Data]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_Revenue_Tracker_Data]([Name], [Total_Finance_PEPM_Calculated], [Total_Finance_One_Time_Calculated], [Month], [Year], [Contract_Date], [Projected_Assignment], [Projected_Project_Start_Date], [Imp_Planned_KO], [Status_Comments], [Hold_Explanation], [Status], [PSID])
SELECT N'Rowan House Society', 1488.0000, 3100.0000, 4, 2015, '20150408 00:00:00.000', N'', '20151109 00:00:00.000', N'11/30/15', N'7/29/2015- Prep onboarding. Email client KOM 11/9. Emailed 1st contact email.', N'', N'Not Started', N'PP4V388' UNION ALL
SELECT N'Rosenblatt Dentistry Professional Corporation', 594.0000, 4014.0000, 1, 2014, '20140108 00:00:00.000', N'new starter', '20151118 00:00:00.000', N'11/30/15', N'7/29/2015- Prep onboarding. Email client KOM 11/18. Emailed 1st contact email.', N'', N'Not Started', N'PP4D495' UNION ALL
SELECT N'Rocky Mountain Flatbread Company Ltd', 2160.0000, 961.0000, 5, 2015, '20150525 00:00:00.000', N'', '20151104 00:00:00.000', N'11/30/15', N'7/29/2015- Prep onboarding. Email client KOM 11/4. Emailed 1st contact email.', N'', N'Not Started', N'PP1G735,PP4J754,PP4G055,PP4V443' UNION ALL
SELECT N'Rico Electric INC.', 1224.0000, 997.0000, 11, 2013, '20131122 00:00:00.000', N'new starter', '20151118 00:00:00.000', N'', N'', N'', N'Not Started', N'PP4V481' UNION ALL
SELECT N'Rem Tek Enterprises Ltd OA Brooke Radiology', 4800.0000, 3220.0000, 12, 2014, '20141231 00:00:00.000', N'new starter', '20151124 00:00:00.000', N'', N'', N'', N'Not Started', N'PP4V500' UNION ALL
SELECT N'Rackforce Networks Inc.', 3120.0000, 6800.0000, 8, 2014, '20140827 00:00:00.000', N'', NULL, N'', N'07/20/15 - First punch delayed due to up-sell of workflows from July 27-Aug 10, client has pushed out team training as well

07/13/15 - on track for 1st punch, mtg to rev. workflow, testing entitlements, client unavail for mtgs, training
07/06/15-On track for first punch, work flows being worked, testing being done with entitlements, client team training upcoming, no issues 
06/29/15 - acct progress continues, forms module being signed, group training for client to be held July 23, 24, no issues
06/22/15-  risk for 1st punch, meeting held with client and conf. final dates this week. If client misses, CR will be charged or client will be placed on hold

06/15/15- risk for 1st punch, meeting scheduled with client June 18 1pm to either proceed or place on hold til she has time to dedicate

06/09/15 - at risk for delay of go live again; client still working with sales re: Forms module, group training canceled last minute, no DF issues
06/09/15- at risk for delay of go live; client still working with sales, group training still planned for this month, no issues. 

06/02/15 - On track for Jun29, testing policies + planning group training for this month, client in talks with sales re: workflow options, no issues

05/15/15 -Go live delay from 05/29 to 06/29.  People: Client away for multiple dates on business, illness, and recent death in her imm. family.   New cust. training set for May 25th.

05/12/15 -  risk for 1st punch due to training staff, testing cont''d, no issues
05/05/15 -  risk for 1st punch due to training staff, testing cont''d, training session resched for may 25
 
04/27/15- At risk for delay of 1st punch due to family death, client still training, testing cont''d, no issues

4/20/15 - on track for 1st punch, client still training, testing cont''d, no issues

4/14/15-on track for 1st punch, training/testing cont''d, training seminar set for May 1, no issues

4/7/15-on track for 1st punch, training cont''d, testing cont''d, no issues', N'Client has had access to the test system for two weeks, but has not signed in at all. Trying to re-engage with the client, but client is not responding to emails regarding a new timeline. Reached out to project sponsor and have a meeting scheduled with th', N'On Hold', N'PP44919 4920, VAN3462 3620, PP9M758' UNION ALL
SELECT N'Alendel Fabrics Ltd', 2304.0000, 997.0000, 6, 2014, '20140610 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Alca Distribution Inc.', 960.0000, 4770.0000, 2, 2014, '20140228 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Aeryon Labs Inc', 6720.0000, 6860.0000, 5, 2015, '20150531 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Adviso Conseil Inc', 3420.0000, 4500.0000, 3, 2014, '20140321 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Activa Group Of Companies', 4320.0000, 5358.0000, 12, 2014, '20141216 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Ackard Contractors Ltd.', 1620.0000, 4300.0000, 8, 2015, '20150819 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'ANACONDA MINING INC', 2142.0000, 3998.9800, 1, 2015, '20150112 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'ACTIVESTATE SOFTWARE INC', 3144.4899, 3360.0000, 5, 2014, '20140522 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'ABBL Hardware Inc', 1665.0000, 898.0000, 6, 2014, '20140602 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'AAA Field Services Ltd', 1026.0000, 34.6500, 6, 2015, '20150624 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'ROCKSTAR CONSORTIUM INC', 882.0000, 3568.5000, 11, 2013, '20131126 00:00:00.000', N'', NULL, N'', N'07/20/15 - go live delayed due to up-sell of workflows from July 27-Aug 10, client has pushed out team training as well, escalated to Renato to have a meeting with client to put on hold or CR to be presented

07/13/15 - on track for 1st punch, mtg to rev. workflow, testing entitlements, client unavail for mtgs, training 
07/06/15-On track for first punch, testing being done with entitlements, client team training upcoming, no issues

06/29/15-On track for first punch, mtg held with client to advise no more delays or the client will be charged CR or placed on hold

06/22/15- at risk for 1st punch, mtg held with client and confirming final dates this week. If client misses, CR will be charged or client will be placed on hold

06/15/15-At risk for first punch, mtg scheduled with client June 18 1pm to either proceed or place on hold till she has the time to dedicate

06/09/15- at risk for delay of go live; client still working with sales, group training still planned for this month, no issues.

06/02/15 - On track for Jun29, testing policies + planning group training for this month, client in talks with sales re: workflow options, no issues
05/15/15 - Go Live delayed from 05/29/15 to 06/29/15.  People: Client away for multiple dates on business, illness, and most recently a death in her immediate family.   New customized training set for May 25th.
05/12/15 - at risk for delay of 1st punch due to training staff, testing cont''d, no issues
05/05/15 - at risk for delay of 1st punch due to training staff, testing cont''d, training session resched for may 25
4/27/15- At Risk for delay of 1st punch due to family death, client still training; session sched for business focals on May 1

04/20/15 - on track for 1st punch, client still training, testing cont''d, no issues

4/14/15- on track for 1st punch; training, testing cont''d, client seminar set for May 1, no issues

4/7/15-on track for 1st punch, training cont''d, testing cont''d, no issues', N'On Hold- Start May 12th for J.Azie', N'On Hold', N'PP44920, PP4D602, VAN1325, VAN3462' UNION ALL
SELECT N'RIFCO National Auto Finance Corporation', 4320.0000, 4600.0000, 4, 2015, '20150415 00:00:00.000', N'', NULL, N'', N'06/12/14: Prepping for Go live, client is testing. Issue concerning potential cancellation at this time. Client customer considering cancelling due to too much time & effort to implement

06/12/14: Prepping for Go live, client is testing. No Issues at this time.

06/05/14: Prepping for Go live, client is testing. No Issues at this time.

05/30/14-Prepping for Go live, client is testing. Issue currently open at this time.

05/23/14-Prepping for first live, client is testing. . No issues at this time.', N'11/13/14jah:  Per Dean this was sent back to Sales.  Email to Michael Tuske to find out what action he''s taken and if the contract should be cancelled.

10/27/14jah:  email to Dean with spreadsheet of Micro OnHolds that he is assigned as sponsor to answer', N'On Hold', N'PP4K116' UNION ALL
SELECT N'Pureform Diagnostic Imaging Clinics', 2494.8000, 4575.7500, 4, 2014, '20140423 00:00:00.000', N'Dylen Citta', '20141022 00:00:00.000', N'', N'6/5/15: to follow up with sales on 6/9/15 to determine action on project', N'11-11-14jah:

From: Citta , Dylen 
Sent: Tuesday, November 11, 2014 8:12 AM
To: Kim, Sherry
Cc: Payumo, Renato
Subject: Elliot Turbomachinery-PP4H939

Hi Sherry,

This client has unfortunately missed two kick-off meetings due to lack of response from thei', N'On Hold', N'PP4H939 & PP4J341' UNION ALL
SELECT N'Project Skin MD Ltd.', 1080.0000, 708.0000, 6, 2014, '20140610 00:00:00.000', N'', NULL, N'', N'12/16/2014 -  **AT RISK** for first run; process/people; YTD being worked on by Terry To.

12/09/2014 -  **AT RISK** for first run; process/people; YTD being reworked on.

12/02/2014 - **AT RISK** for first run; process/people; YTD information incorrect on PP

11/25/2014 - **AT RISK** for first run; process/people; YTD information incorrect on PP

11/18/2014 -  **AT RISK** for first run; people; no responses received for emails sent to client

11/11/2014 - **AT RISK** for first run; people; no responses received for emails sent to client [please see delay milestones]

10/31/2014 - AT RISK for first live run; client not responding to any emails; on phone conversation they mentioned they were busy with payroll, and will contact us when they are ready to revert to Ceridian. Meeting invite sent again, for wednesday 05th nov, but no response. Working with Ren on this a/c

10/24/2014 - On track for first live run; awaiting on client for new YTD data from ADP, for process of pay period 22.

10/16/2014 - On track for first live run. YTD and PP update completed. No issues at this time.

10/03/2014 - On track for First live run 10/17/2014, YTD being input on pp; working with Julie Wong

09/26/2014 - At Risk for First live run, working on pp, pp has to be reset from scratch, Renato engaged.

09/12/2014 - Prepping for first live, no issues 

09/05/2014 - Prepping for first live; client postponed for 09/15/2014 [please see delay milestone and attached email]

08/22/2014 - Prepping for pay date, no issues

08/15/2014 - Prepping for pay date, no issues

08/07/14 - Prepping for pay date, no issues

07/24/214 - Prepping for first live run. client postponed again due to sickness. Potential issues on clients availability.

07/17/2014 - Prepping for first live run, as client has been sick. Confirmed to be completed by end of week

07/11/2014 - Prepping for first live run 07/14/2014.', N'awaiting for powerpay setup YTD being setup by Terry TO', N'On Hold', N'PP4L309 & PP4L310' UNION ALL
SELECT N'Primemax Energy Inc', 4158.0000, 2088.0000, 10, 2014, '20141014 00:00:00.000', N'', NULL, N'', N'5/5/14- client is not answering calls or emails Dean to follow up

KOM Comments: KOM done. waiting for sign off before starting configuration.', N'Client does not have time to dedicate to the implementation', N'On Hold', N'PP72003' UNION ALL
SELECT N'Picadilly Fashions', 2880.0000, 3248.0000, 11, 2014, '20141113 00:00:00.000', N'', NULL, N'', N'07/31/14 - Prepping for first punch.  Account suspended due to no response.

07/24/14 - Prepping for first punch.  Issues with clock, client just returned on July 21st.

07/17/14 - Prepping for first punch.  Issues with clock, client on annual leave from June 13th - July 21st.

07/10/14 - Prepping for first punch.  Issues with clock, client on annual leave from June 13th - July 21st.

07/03/14 - Prepping for first punch.  Issues with clock, client on annual leave from June 13th - July 21st.

06/26/14 - Prepping for first punch.  Issues with clock, client on annual leave from June 13th - July 21st.

06/19/14 - Prepping for first punch. Issues with clock, client on annual leave from June 13th - July 21st.  

06/12/14 - Prepping for first punch.  Issues with clock, client on annual leave from June 13th - July 21st.

06/05/14 - Prepping for first punch.  Issues with clock, client returning to office June 9th.

05/29/14 - Prepping for first punch.  Issues with clock, waiting for clock team response.

5/23/14 - Prepping for first punch,issues with clock, working with clock team and client', N'', N'On Hold', N'PP25411' UNION ALL
SELECT N'933796 Ontario Inc OA Carmen Cartage and Carmen Truck and Trailer Centre Ltd', 3420.0000, 3360.0000, 11, 2014, '20141120 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'9181-9136 Quebec Inc o/a Les Glaceurs', 1680.0000, 2800.0100, 6, 2014, '20140630 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'9117-4227 Québec Inc. o/a Électronique Addison', 4195.2000, 4230.7200, 2, 2015, '20150202 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'8815429 Canada Inc o/a John Sweeping (2014); and Munro & Scullion Contracting Inc.', 8448.0000, 7500.0000, 9, 2014, '20140908 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'8635854 Canada Inc.', 1152.0000, 3840.0000, 11, 2014, '20141127 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'7712618 Canada Inc o/a Institut de Recherches en Rhumatologie de Montréal', 816.0000, 2982.0000, 6, 2015, '20150626 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'724167 Alberta Ltd oa Bridges Catering', 2040.0000, 2635.0000, 2, 2015, '20150219 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'682393 BC LTD o/a Regional Recycling Vancouver', 3000.0000, 898.0000, 10, 2014, '20141009 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'608867 BC Ltd O/A Heather Mountain Lodge', 1800.0000, 997.0000, 4, 2014, '20140409 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'572274 BC LTD DBA REGIONAL RECYCLING, ABBOTSFORD', 2160.0000, 997.0000, 11, 2013, '20131119 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Phil & Sebastian Coffee Company Canada Ltd', 3600.0000, 2070.0000, 6, 2015, '20150604 00:00:00.000', N'Sehnaaz Bhuttoo', '20140929 00:00:00.000', N'9/1/14', N'5/5/15: Go Live at risk. Client has advised that they will need 2 more weeks before coming off hold. Go live date postponed to third week of June 2015.

3/16/15: Client has requested to go on hold, referred to manager. On hold active from 3/12/15 to 4/9/15. To touch base with client on 4/14/15 and go live 4/28/15.

3/9/15 On track for Go Live, client has already given signoff for March 13th 2015. Working on Test register

3/2/15: Go Live at risk, client''s parent has been admitted to hospital and has not been able to complete testing. Also awaiting approval from company level management on refinement details

2/24/15: Go Live at risk, working on test register, awaiting response from client to go live, no issues

2/16/15: Go Live on track, working with client to process parallel before moving into prod. 

2/3/15: Go Live on track, customer was not able to attend call today due to business deadlines, call has been re-scheduled for tomorrow.

1/26/15: Go Live on track, Test environment handed over to client for testing today, awaiting feedback to progress onto next milestone.

1/06/14: On track for Go Live, client will return this week on 1/09/14 to begin testing

12/30/14: Go Live on track, client will not be available for testing this week, call re-scheduled for 1/9/2015. no issues

12/23/14: On track for Go Live, working on internal testing, awaiting missing employee assignment information from client.

12/01/14: On track for Go Live, Client''s time is taken up with month end and post vacation work. Client will touch base on Thursday.

11/24/14: On track for Go Live, config complete, awaiting return of list of employees sent to client to complete HR Import.

11/10/14: Go live on track, config in progress. Unable to schedule weekly updates since client is on vacation returning Nov 21. Awaiting client''s return to follow up.

10/16/14: Actual go live on track. Environment not yet received to begin config. Escalated issue to manager and Project Cord. Awaiting response', N'06/10/14:  Pre Admin delayed from 06/10/14 to 09/29/14, People, Client going through audit and amalgamating 5 new companies.', N'On Hold', N'PP1A490' UNION ALL
SELECT N'Peoples Ministries Inc. o/a The Peoples Church', 2400.0000, 3840.0000, 5, 2015, '20150528 00:00:00.000', N'Tulsi Moorut', NULL, N'', N'09/18/14: Client requested account to be placed on hold as she had surgery and is on medical leave for 3-4 weeks

09/11/14: Prepping for Go Live, in external testing, no issues at this time

02/24/15: To Pinky will follow up with client to know what needs to be done.

09/04/14: Prepping for Go Live, in external testing, primary contact person resigned - new contact person is going on medical leave

08/28/14: Prepping for Go Live, in internal testing, no issues at this time

08/21/14: Prepping for Go Live, in internal testing, no issues at this time

08/14/14: Prepping for Go Live, in configuration, no issues at this time

08/07/14: Prepping for Go Live, in configuration, no issues at this time

07/24/14: Prepping for Go Live, KOM scheduled on 30/07/14 no issues at this time', N'11/13/14jah:  Per update from Dean B:  called client yesterday they will get back to me to let us know how they want to proceed.

10/27/14jah:  email to Dean with spreadsheet of Micro OnHolds that he is assigned as sponsor to answer to.

09/18/14: Client ', N'On Hold', N'PP4K954, PP4L017, PP4L012, PP4L007, PP4P440' UNION ALL
SELECT N'Partners In Parenting Inc.', 6840.0000, 6350.0000, 9, 2014, '20140922 00:00:00.000', N'Kavinsy Kheerodhur', '20140902 00:00:00.000', N'', N'09/25/14: Prepping for KOM, PP Implementer contact client to continue with account. Client availability issue, delays on PP setup.

08/21/14 - Prepping for KOM, contacted client to schedule KOM, client wants to put account on hold for 2 weeks & will decide then if they would go forward with implementation, will contact Sales Rep on Monday to advise of situation.

08/14/14 - Prepping for KOM, contacted client to schedule KOM, no issues at this time.

08/07/14 - Prepping for go live client sent email to call them on 8/11/14 to schedule KOM, no issues at this time.

08/06/14 - Prepping for KOM, left voice mail to client to have KOM date agreed upon, no response yet at the time.

07/25/14 - Prepping for preadmin, welcome call completed, account passed to rep-AD

07/23/14 - Prepping for preadmin, the number on paperwork is incorrect and no other number provided, reached out to Christopher Dickenson for correct number, advised this is urgent as we''re trying to position KOM asap, he''ll get back to me', N'11/14/14jah:  em from Christopher Dickenson asking that we not cancel the contract that he''ll get with the customer.  He said he''d had an email from the customer 3 weeks ago saying they were "getting their ducks in a row internally".  I''ve asked that he u', N'On Hold', N'PP4P355' UNION ALL
SELECT N'Panglobal Training Systems Ltd', 614.4000, 2350.0000, 7, 2015, '20150727 00:00:00.000', N'', NULL, N'8/1/14', N'02/24/2015: Pinky to follow up with customer/ sales to understand way forward.

1/27/2015: At Risk for go live, no response from client. Dean following up.

1/19/15: not on track for go live, client cancelled walk through. Dean following up

01/12/2015:On Track for Go-Live, test call scheduled for January 13, no issues.

01/05/2015: On Track for Go-Live, test call scheduled for January 13, no issues.

12/02/2014-On track for Go live on 12/17/2014, instance has been made available to client for testing, weekly call will be done on Thursday to ask client for sign-off, working on refining potential client problems such as assigning managers and handling balances. No issues at this point.
11/24/2014-On track for go live, testing walk through to be done with client on Thursday
11/27/2014.No issues currently.
11/10/2014- On track for go live, config and internal testing completed. Client did not attend training, will schedule a fixed reocurring meeting and confirm next steps.

10/30/2014-At risk for go live, configuration was stopped due to missing information, configuration is now complete, doing internal testing.
10/23/2014-On track for Go live on 11/06/2014, doing config, no issues.

10/16/2014: At risk for go live, workbook received late, crucial information was missing, workbook received today configuration resumed.

10/10/14: At risk for go live, client still not responding despite call, voicemail and email left.
10/8/14: at risk for go live client not responding to emails or calls. Manager to follow up after 3rd attempt.

10/03/2014- AT risk for actual go-live, call scheduled with Director on the 10/08/2014 to redefine timeline and sign off on workbook.

09/09/2014- At risk for actual go live, sign-off not received, information missing to carry on with configuration. Awaiting Director to return from vacation to validate', N'Client cancelled testing walk through mid January and has not responded to any communication.', N'On Hold', N'PP4A086' UNION ALL
SELECT N'552420 BC LTD o/a Regional Recycling Richmond', 1500.0000, 898.0000, 10, 2014, '20141009 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'4298322 Canada Inc UTOYOTA (Adjv Technologie & Services)', 1080.0000, 798.0000, 3, 2014, '20140305 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'2446644 Ontario Inc. dba Sky Zone Whitby', 1020.0000, 2400.0000, 5, 2015, '20150526 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'2392504 Ontario Inc. oa Skyzone Vaughan, 2285770 Ontario Inc. oa Skyzone Indoor Trampoline Park, and 2328544 Ontario Inc. oa Skyzone Toronto', 5688.0000, 4050.0000, 9, 2014, '20140908 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'2251249 Ontario Inc o/a Ontario Wound Care Inc', 840.0000, 699.0000, 3, 2014, '20140325 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'2223348 Ontario Inc o/a Tim Hortons', 3300.0000, 1512.0000, 6, 2014, '20140619 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'1839016 Alberta Ltd', 900.0000, 1750.0000, 6, 2015, '20150629 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'1816884 Alberta Ltd o/a Mocha Cabana', 2280.0000, 798.0000, 5, 2014, '20140529 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'1731900 Alberta Ltd. O/A Best Western Plus Executive Residency Drayton Valley', 1344.0000, 500.0000, 8, 2014, '20140829 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'1609715 Alberta Ltd o/a Airdrie Hotel & Suites', 1440.0000, 997.0000, 9, 2014, '20140930 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'PPM 2000 Inc', 3166.9200, 5600.0000, 2, 2015, '20150206 00:00:00.000', N'Samantha LamYeeMan', '20141117 00:00:00.000', N'', N'05/26/15:  At risk for first pay. Employees not punching yet. Dean called client 5/28/15 left VM to follow up 6/2/15- clocks not mounted

05/11/15:  At risk for first pay.Pay period missed.Employees not punching yet.manager to call client to set expectations.
05/04/15:  At risk for first pay. Employees not punching yet. manager to call client to set expectations
04/27/15:  At risk for first pay. Employees not punching yet.
04/20/15: At risk for first pay. Employees not punching yet.
04/13/15: On track for first pay, first capture for Wednesday. Client still enrolling employees fingerprints.
04/06/15: Account being put on hold.
03/30/15: On track for first pay, employees not punching this week though. Client still waiting to use clock to capture time. No issues
03/23/15: On track for first pay of next pay period, employees not punching yet. Client in peak period. No issues.
03/16/15: On track for first pay, employees not punching yet. Client in peak period will input time manually. No issues
03/09/15: At risk for first pay, employees not punching yet. Client in peak period.
03/02/15: On Track for first capture this week, waiting for client to begin punching. 
02/23/15: On track for first punch, client is hooking up 2nd clock, no issue at this time.
02/16/15: At risk for first punch, client is still hooking up the clocks, no issue at this time.  
02/11/15: On track for first punch, client is hooking up the clocks, no issues at this time
02/03/15- Actual Go Live delayed from 02/03/2015 to 02/10/2015: Entitlements not working properly, working with buddy to resolve and Client has not yet attempted her testing.
01/20/15- At Risk for actual GO-Live, still on testing. Have not schedule walk through meeting with client yet.', N'client moving to HCM', N'On Hold', N'PP4Q562' UNION ALL
SELECT N'Orix Geoscience Inc.', 1656.0000, 6200.0000, 7, 2014, '20140716 00:00:00.000', N'Natasha Manick', '20141208 00:00:00.000', N'', N'07/27/15: On hold, employees and new payroll admin in training, to touch base 1st week October

07/21/15: Pending hold, primary contact leaving company and employees to be trained over two months.

07/14/15: On Track for Live Time Capture. To touch base with client on 07/15 no issues

06/29/15:  At Risk For Live Time capture.  To touch base with client concerning timeline on 07/03

06/05/15: At Risk for Live Time Capture, client to proceed with implementation, client currently doing US Payroll certification until 06/14.  To check back in with client on 06/15

06/01/15: At Risk for Live Time Capture, client currently in talks with sales over Dayforce system limitations as well as Powerpay CBI limitations and how to proceed.  To check back in with client on 06/16

05/28/15: At Risk for Live Time Capture. Possible client cancellation due to system limitations (lack of a mass approve Overtime Banking manually) Dean called client 5/28/15 left VM 

05/13/15: On track for Live Time Capture. To schedule call with client for 05/14 to get update on Sales Visit on 5/11.

05/05/15: On track for Live Time Capture. To hold call with client for new issues on 05/06.  Client currently testing.

04/28/15: On track for Live Time Capture. To review issues brought up in last minutes and resolve.  Client currently testing.

04/21/15: On track for Transfer to Service. Client training and testing with employees.

04/7/15: On track for Go-Live date. Testing Refinements in Progress on 4/7.

03/30/15: On track for Go-Live date. Testing Refinements in Progress to discuss with client on 03/31, no issues

03/23/15: On track for Go-Live date. Testing Refinements in Progress, no issues', N'07/21/15: Pending hold, primary contact leaving company and employees to be trained over two months.

Client wants to focus on Powerpay setup first and then continue with Dayforce setup.', N'On Hold', N'PP4Q542' UNION ALL
SELECT N'Ontario Orthotic Lab Inc', 4200.0000, 7360.0000, 5, 2014, '20140527 00:00:00.000', N'Deensha Bhunhejee', '20141124 00:00:00.000', N'', N'7/22/15: Account on Hold. Customer Readiness, account resuming in October.

7/14/15: At risk for Project Completion. Account on hold due to non-commitment on behalf of client. 

7/3/15: At Risk for project completion. client going on vacation for 4 weeks. Awaiting client confirmation to put project on Hold

6/29/15 - At Risk for project completion. Client going on holiday for 3 weeks. Client advised that project will be put on Hold. Awaiting confirmation on dates to put Account on hold. ECD 06/30

6/26/15 - At risk for Project Completion. Payroll admins not willing to commit to First Pay date. Deeshal to review revamped timeline with project sponsor.

6/23/15 - At Risk for project completion. Client reluctant to move to powerpay for payroll. Call scheduled with client 24/06 to review timeline and discuss concerns.


6/15/2015: First Pay delayed from 6/29/15 to TBD, People: Payroll admin not committing to first transmit date, Deeshal to call client sponsor (Brett) to set timeline.

6/1/2015 - On track for rescheduled First Pay. Training review in progress. Assisting client with time sheet review. No issues

5/26/2015 - On track for rescheduled First Pay. On-site training with Harry Weide in progress.

5/19/2015 - On track for rescheduled First Pay. Prepping for Test transmit on 5/21. No issues.

5/12/2015 - On track for rescheduled First Pay. Time Capture in progress. Assisting client with timesheet review.', N'Director and project lead will be on Vacation for 1 month hence will not be able to proceed with implementation.', N'On Hold', N'PP4Q907' UNION ALL
SELECT N'One Arrow First Nation', 9000.0000, 7800.0000, 12, 2014, '20141204 00:00:00.000', N'Deensha bunhejee', '20150112 00:00:00.000', N'', N'07/29/2015: On Track for first punch, working on KPI import for client, no issues.

06/16/2015: At Risk for First Punch, client is not responding back on internet connection fixes. Dean to call Client ECD 06/18/15.

06/09/2015: On Track for First Punch, client would provide update on internet issue by 06/12/2015, working on schedule report. 

06/01/2015: At Risk for First Punch, Reported internet fix for client on 6/11/15. Working on budget scheduling import.

05/26/2015: At Risk for First Punch, client will have internet connection 6/3/15. Support team assisting for KPI setup.

05/19/2015: At Risk for First Punch, Awaiting for client response in regards to their internet connection issue. Working on KPI setup currently with the help of Anna.

05/14/2015: At Risk for first Punch, Dean called the client, awaiting for client updates on time frame to move forward with the implementation and fix their clock issues.

05/05/2015: At Risk for First Punch, client still having internet issues on their end. Waiting on Dharma to escalate the scheduling budgeting configuration part.

04/28/2015: At Risk for First Punch, client having internet issues on their end, waiting for client to fix it so that we can start capturing time.

04/20/2015: On Track for First Punch, client started punches for one location and having issues with the second location''s clock. Already log a ticket and Gary is looking into this.

04/14/2015: On track for First Punch, still waiting for sale response in regards to their expectation from the clock.

03/31/2015: At Risk for first Punch, sales got a call scheduled with the client on April 7, no issues.

03/31/2015: At Risk for first Punch, client is sick sales to talk about her requirements in regards to Dayforce Touch. No issues', N'Client does not have firewall setup and is awaiting provider to come on site to fix.', N'On Hold', N'PP1G820,PP4F032,PP4L705'
COMMIT;
RAISERROR (N'[dbo].[tbl_Revenue_Tracker_Data]: Insert Batch: 2.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_Revenue_Tracker_Data]([Name], [Total_Finance_PEPM_Calculated], [Total_Finance_One_Time_Calculated], [Month], [Year], [Contract_Date], [Projected_Assignment], [Projected_Project_Start_Date], [Imp_Planned_KO], [Status_Comments], [Hold_Explanation], [Status], [PSID])
SELECT N'Olds Softgels Inc', 2985.0000, 2479.0000, 11, 2013, '20131113 00:00:00.000', N'Toolsi Moorut', '20150126 00:00:00.000', N'', N'01/09/2015- Prepping for preadmin. Client advised to be placed on hold for a few months. I told her to contact Ankur when shes ready to resume.
11/20/2014- Prepping for preadmin. Spoke w/ client. Preadmin Jan 30@3pm', N'01/09/2015- Client advised to be placed on hold for a few months. I told her to contact Ankur when shes ready to resume.', N'On Hold', N'PP4R146' UNION ALL
SELECT N'O''Chiese First Nation', 960.0000, 2928.0000, 9, 2014, '20140910 00:00:00.000', N'Yogesh Bussawon', '20150302 00:00:00.000', N'', N'06/02/15 : At Risk for Go live, email sent to client.  If client does not respond by EOD, the account is going on hold.


06/01/15 : At Risk for Go Live.  Client contacted to resume implementation, awaiting responce to move forward.

05/28/15: At Risk for Go Live. Advised by sales rep to wait until 1st June before notifying client to put account on Hold. Deeshal to follow up with Michelle on 06/01/15.

05/27/15: At Risk for Go Live. Client contacted by sales rep with regards to training awaiting response. Deeshal to follow up with Michelle on 05/28/15, If no resolution by 05/29/15, client will be notified and account will be put on Hold.

05/25/15: At Risk for Go Live. Client contacted by sales rep with regards to training awaiting response. If no resolution by 05/29/15, account will be put on Hold

05/19/15 : At Risk for Go Live.  Waiting for sales (Michelle Chatelier) response on this.  Client requires on site training, will follow up with sales.

05/11/15: At Risk for Go Live. Tool: High risk of cancellation, client requesting free on-site training and unwilling to progress further with implementation. Client doesn''t want to do the online training. Sales engaged and working with client for a resolution.

05/01/15: At risk for go live, Client on vacation,delaying sandbox.

04/28/15: On track for go live,External testing, no issues at this time.

04/20/15: On track for go live,internal testing, no issues at this time.

04/13/15: On track for go live, in configuration, no issues at this time.

04/07/2015 - On track for go live, in configuration ,no issues at this time.

03/30/2015 - On track for go live, in configuration ,no issues at this time.

03/24/2015 - On track for go live, in configuration ,no issue at this time.', N'Client is unwilling to take the online training and requesting on site training for free. Client will not proceed with implementation unless free training is provided.', N'On Hold', N'PP4L119' UNION ALL
SELECT N'Northstar Frontier Services Inc.', 1920.0000, 3840.0000, 12, 2014, '20141203 00:00:00.000', N'Staline Lamarque', '20150413 00:00:00.000', N'4/30/15', N'7/21/15: On Track for go live, working on config, no issues.

07/14/15: On Track for Go live, Working on Config, no issues.

07/09/15:On Track for go live, Received workbook, working on config, no issues.

07/08/15: On Track for Go live, Client contacted, will send workbook on the 07/08/15.

07/03/15: On Track for Go live, Client deadline to send workbook back is today, will call customer to validate if review was completed.

06/29/15: On Track for Go live, Awaiting workbook from client, no issues.

06/23/15: Timeline reviewed with client, awaiting workbook review, will start config when workbook is sent back. no issues. 

6/9/15- Client requested meeting with manager to discuss timelines 

06/02/15: Completed information gathering with client, building workbook to send to client.

04/28/15: On Track for Go live, awaiting client to finish workbook

04/21/15:On Track for KOM, no issues.

04/14/15:On Track for KOM, no issues.

07/04/2015: On Track for KOM, no issues.

03/20/2015- Preadmin comleted by J.Azie & S.Setiawan. KOM Apr 13
03/17/2015- Prepping for preadmin. Confirmed that Adil will convert w/ client. J.Azie will have preadmin 4/6 with the client.
03/10/2015- Prepping fotr preadmin. advised J.Azie to call client and explain PP run will be 3/20 and WFM KOM will be 4/13. I told J.azie to sched preadmin wk of 3/30th
03/09/2015- Prepping for preadmin. Advised by Dean KOM is week of 03/23 and he wants preadmin to be done this wk. Emailed J.Azie to do preadmin this wk.
12/19/2014- Prepping for preadmin. JA sched preadmin March 20.
12/18/2014- Prepping fort preadmin. Asked JA to follow-up again.
12/9/2014- Prepping for preadmin. Sent to JA to do French preadmin call', N'07/22/15 - Client readiness. Client believe dayforce and powerpay do not fit their business needs. They are currently reviewing with powerpay team and Sales team for solution.

Client needs more time to complete the workbook before approving it(wants to l', N'On Hold', N'PP4R434' UNION ALL
SELECT N'Northern New Brunswick Airport Authority Inc', 864.0000, 2460.0000, 3, 2015, '20150303 00:00:00.000', N'Natasha Manick', '20150406 00:00:00.000', N'4/30/15', N'7/28/15 - Account on Hold.

7/14/15 - Account Hold. Client on leave for 3 weeks (not communicated to IC)

7/3/15: On Track for project completion. No issues.

6/29/15: On track for Go-Live. Solution refinement in progress. No issues. 

6/23/15 - On track for Go-Live. Client testing in progress. No issues.

5/26/15 - Project On Hold, client requested 3 weeks delay to project timeline due to exam period. Client agreed to resume project on 06/10/2015.

5/25/15 - At Risk for Go Live. Client requested 3 weeks delay due to peak season and also requesting more flexibility in terms of project timelines. Awaiting client confirmation to put project On Hold. Deeshal to contact client to review timeline 05/26/15.

5/19/2015 - At Risk for Go Live. Client testing in progress. Client responsiveness can be a potential issue.

5/12/2015 - On track for Go Live. Client testing in progress. No issues.

5/5/2015 - On track for Go Live. Internal testing in progress. Client testing scheduled on 5/7.

4/29/2015 - On track for Go Live. KOM completed and Internal testing in progress. Potential issue: Client responsiveness to e-mails and calls.

4/21/2015 - On track for Go Live. KOM has been partially completed and rescheduled several times due to client responsiveness/availability. Meeting set on Friday 24 Apr to complete KOM.

03/18/2015- Prepping for preadmin. Emailed Bernie to resched preadmin to 3rd wk of March instead
01/09/2015- Prepping for preadmin. Preadmin sched 4/14 @ 11amEST 12/10/2014- Prepping for preadmin. Client okay with start in March& sales clarified/amending contract to correct amount of clocks.
12/10/2014- Prepping for preadmin. Left detailed vm&email advising no resource and will follow-up in January to review TBD strat date', N'Client not available until August.', N'On Hold', N'PP95130' UNION ALL
SELECT N'North West Redwater Partnership', 2880.0000, 20240.0000, 8, 2015, '20150807 00:00:00.000', N'Deensha Bunhejee', '20150416 00:00:00.000', N'4/30/15', N'06/10/2015: Project on hold as per client request due to unavailability. Client going on vacation until 
08/17/2015. Proposed Go-Live date from client is 09/18. To follow up with Lori upon her return

06/05/2015: At risk for actual Go-Live, client advised that they will confirm the new timeline on 6/10/2015 as manager, decision maker, is on Sick leave.

06/01/2015: At risk for actual Go-Live. Employee training not started and client requesting to postpone Go-Live. Primary contact on vacation. Meeting on 6/3/15

05/26/2015: On track for re scheduled Go-Live. Working on the solutions refinement. No issues

05/19/2015: On track for Go-Live. No issues

05/12/2015: On track for Go-Live. No issues

05/07/2015: On track for Go-Live. sent credential and invitation for 1st walk through. client on vacation, will return on the 14th May. No issues

04/28/2015: On track for Go-Live. Internal testing, No issues

04/14/2015: On Track for KOM, no issues.

04/10/2015- Preadmin completed. KOM 4/16@12noon EST. Assigned to Deensha
04/08/2015- Prepping for preadmin.Left vm&emailed client advising KOm can start next week instead of Apr 27. Awaiting reply from client.
01/09/2015- Prepping for preadmin. Preadmin sched 4/14 @12pm.
12/29/2014- Prepping for preadmin. Left vm&email for Lori. Advised no resource and will follow-up in January to review TBD start date.', N'Client going on vacation until 08/17/2015. Will not be available at all for the duration.', N'On Hold', N'PP4Q972' UNION ALL
SELECT N'1384230 Ontario Inc. O/A Canadian Golf & Country Club', 3886.2000, 11125.0000, 3, 2014, '20140306 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'0739024 BC LTD O/A Regional Recycling Burnaby', 2340.0000, 898.0000, 10, 2014, '20141009 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'All The Best Fine Foods Ltd', 2880.0000, NULL, 9, 2015, '20150901 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Calgary Quest Children''s Society', 3120.0000, NULL, 9, 2015, '20150917 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Lloyd All-Day Restaurant Inc', 2730.0000, NULL, 9, 2015, '20150917 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'North Star Pallets Inc', 1680.0000, 2500.0000, 5, 2015, '20150508 00:00:00.000', N'Sehnaaz Bhuttoo', '20150504 00:00:00.000', N'5/31/15', N'8/4/15: At risk for go live, client will be on hold as from Wednesday 8/5/15 to Mid September until training is complete

7/27/15: On track for go live, client has requested to have go live date moved to end of august 2015, manager has been 
notified.

7/21/15: On track for Go Live, client has returned from vacation, weekly calls scheduled for 7/22/2015 to confirm go live date.

7/14/15: At risk for Go live, client is currently on holiday and will complete testing and begin first time capture on his return- 8/12/15

7/7/15: On track for Go Live, walk through complete, client to validate data when he is back from holiday on 7/13/2015

6/30/15: On track for Go Live, working on solution refinement requested during last communication with client, awaiting client''s return to begin first time capture.

6/22/15: At risk for Go Live, Client will be on holiday from 6/30/2015 to 7/13/2015, First time capture will begin after client returns.

6/16/15: On track for go live. Client testing. no issues

6/09/15: On track for Go Live, working on HR Import and internal testing, no issues.

5/26/15: On track for Go Live. In configuration. No issues.

05/11/15- On track for Go Live. In configuration. No issues.
05/04/15- on track for go live. Waiting for workbook sign-off. No issues.
04/27/15- On track for KOM Welcome call completed. No issues.
04/13/2015- Preadmin completed.
03/03/2015- Prepping for preadmin. Preadmin 4/13 @12EST
02/25/2025- Prepping for preadmin. Left vm&email advising new start date of June 22
02/19/2015- Prepping for preadmin. Left vm&email Peter w/ new start date of 6/22. Proposed to have preadmin 1st wk of June 
02/18/2015- Prepping for preadmin. Client is expecting to KOM in March, i advised July 6. Escalated back to Heidi Tooth& Dean to see for earlier start date.
02/10/2015-Prepping for preadmin. Left vm &emailed client advising KOM 7/6. Set reminder 2/17 @11amEST to follow-up with client', N'7/31/15: Project will go on hold on 8/5/15. Client has to take training and train employees. Project to pick up Mid September', N'On Hold', N'PP9N891' UNION ALL
SELECT N'Newsco International Energy Services', 4800.0000, 7190.0000, 4, 2014, '20140417 00:00:00.000', N'Deensha Bunhejee', '20150804 00:00:00.000', N'8/31/15', N'7/13/2015- Preadmin completed. Assigned to Deensha KOM 7/20 11-1pmEST
7/8/2015- Prepping preadmin. Left vm&emailed April Clarke. Advised 7/20 KOM. Awaiting reply.', N'', N'On Hold', N'PP4G769' UNION ALL
SELECT N'Newcomer Centre of Peel', 3900.0000, 3328.0000, 5, 2015, '20150527 00:00:00.000', N'', NULL, N'', N'08/04/15 - On track for project closure, outstanding items confirmed by client, expect signoff this week
07/20/15 - At risk for project closure, outstanding items reviewed, unable to connect with client for signoff

07/13/15 - resubmitting Transfer to Service
07/06/15 - On track for project completion, service reviewing missing documents not added, no issues

06/29/15-On track for project closure, no issues

06/22/15- transferring to svc this week, 1 issue remaining: 1 ee finger scan

06//15/15 - at risk for trsf to svc - clock issues cont''d, punch policy to be adjusted

06/09/15- at risk for trsf to svc - new issues today, sched call with client/sales to resolve

06/02/15 - signoff rec''d, trsf to svc this wk, new issue (today) re: clock function

05/25/15 -at risk for trsf to svc, VAC accrual discr., working with mentor

05/05/15 -at risk for trsf to svc, VAC accrual discrepancy, working with mentor

4/27/15 - readying acct for trans to service, successful payroll w/o issues

4/20/15 - On track trans to svc, OT issue resolved, requesting signoff again

4/14/15- at risk for trsf to svc, issue with ROE date, working with mentor to resolve; final transmit with client Apr 20

4/7/15- on track to trsf to svc - signoff exp this wk,  1 stat hol issue, resolving this week

3/31/15- on track to trsf to svc this week; doing 1 more payroll; no issues

3/9/15 - 1st payroll conducted, ran into export issue; all ee''s enrolled exc. for 5; working on enrollment issues, export corr''n

3/3/15- On track for first punch, no issues

2/24/15- On track for live, no issues', N'11/12/14jah:  Renato indicated on his spreadsheet that this customer would require followup to determine if they would be proceeding with the project.  Just em''d him to see if the follow up had been done. Per Renato: The client just called the IC today to', N'In Progress', N'PP4L868' UNION ALL
SELECT N'Natural Choice Pharmacy Ltd.', 840.0000, 798.0000, 12, 2013, '20131206 00:00:00.000', N'', NULL, N'', N'08/06/15: At Risk for Transition to service, pay policy issues, working internally for resolution.

07/28/15:AT Risk For Transition to Service, Issues Fixed, awaiting client review.

07/22/15: At Risk for Transition to service, meeting schedule with client for the 07/24/15.

07/21/15: At Risk for transition to service, still awaiting client to confirm availability for meeting.

07/14/15: At Risk for Transition to service, Stat Dollar banking is a system limitation. Contacted client to setup a meeting. client will contact me back with date and time.

07/08/15:At risk for transition to service, Stat dollar banking not working, working internally.

07/03/15:At Risk for Transition to service, Pay code mapping issue fixed, working on stat rule with patrice.

06/29/15: At risk for transition to service, woking internally on pay code mapping issues and EI History/stat rules. ECD: 07/03/15.

06/23/15: At risk for Transition to service, Working internally on Ei history and Stat rules. Revised ECD for stat rules 06/25/15. Earning for last 4 pay periods amended. will contact client on 06/25/15 to review EI history.

06/16/15: At Risk for transition to service, working internally on Ei History and stat rules. ECD for Stat rules 06/19/15. Will contact client on 06/17/15 to have precisions about EI history adjustments.

06/15/15: At Risk for Transition to Service, Manager will have a meeting with customer monday 15th, client asked to add new department on the system.

06/08/15:At Risk for transition to service, still no update from customer about account cancellation. EI issues''s solution found with the help of Cindy, currently implementing it.

06/03/15: At Risk for Transition to service, Had meeting with client, had questions in regards to ROE and was made aware of the system limitation. Customer will discuss with management and revert back to us.', N'Imp Issues', N'In Progress', N'PP4L976' UNION ALL
SELECT N'House of Horvath Inc - Addon', 2520.0000, 2670.0000, 3, 2015, '20150318 00:00:00.000', N'YasvirKervin Alam', '20150601 00:00:00.000', N'6/30/15', N'7/21/15- On track for go live external testing no issues

7/14/15- On track for go live external testing no issues

06/25/2015-On track for Go live, internal testing. Client to begin testing 6/30/15. No issues.

06/19/2015-On track for Go live, internal testing. No issues.

06/09/2015-On track for Configuration, working on HR import. No issues.

06/01/2015-On track for Configuration, KOM done, waiting for sign off from client.

05/28/2015- On track for KOM, welcome done. KOM scheduled for Monday 01, June

05/27/2015- On track for KOM, called client to do welcome, client was not available. LVM

05/26/2015- Prepping preadmin. Preadmin completed
04/17/2015- Prepping for preadmin. Emailed wb in advance as per Dean.
04/16/2015- Prepping for preadmin. Preadmin 5/26 @11am EST
04/13/2015- Prepping preadmin. Left vm for Carl again. Still waiting for response. Advised in vm 6/1 KOM 
04/08/2015- Prepping preadmin. Left vm&email for Cral. Awaiting response.
02/05/2015- Prepping for preadmin. Client responded to contact him in June as he cannot sched a preadmin this far in advance. Set reminder to call June 1@11:30amEST
01/28/2015- Prepping for preadmin. Left vm&email Melanie to advise KOM 6/29.', N'', N'In Progress', N'PP1N331' UNION ALL
SELECT N'National Nutrition Ltd. - Addon', 1920.0000, 798.0000, 12, 2013, '20131213 00:00:00.000', N'Staline Lamarque', '20140616 00:00:00.000', N'', N'8/4/15: On track for go live, client is currently away, working on importing new employees from Powerpay

7/27/15: On track for go live, some issues around pay policies after the test environment was upgraded to 7.47 which has now been resolved. Awaiting client''s authorization to front fill existing production environment.

7/21/15: On Track for Go Live, External testing and product refinements in progress. To reconfirm go live with client on weekly call Thursday 7/23/2015.

7/13/15: On track for Go Live, environment already handed over to the client for testing, working on refining the entitlements module.

7/6/15: On track for Go Live, Config and first walk through complete. External testing to begin next Tuesday 7/7/2015. Potential issue around the type of clock delivered to client.

6/30/15: At risk for Go live, employee details file received back from client yesterday, working on HR Import. no issues

6/23/15: At Risk for Go Live, client hasn''t sent back employee import file for employee data load. Possible delay for first walk through scheduled for Thursday 6/25/15.

6/16/15: On Track for go Live, configuration in progress. no issues

6/9/15: On track for Go Live, client''s scanning machine is broken, advised that config is being done with the available information.

6/1/15: On track for Go live, awaiting workbook sign off to begin config. No issues

5/26/15: On track for go live. Project re-started as from KOM. Awaiting workbook return to begin config.', N'Account being put on hold due to no communications for 3 weeks

02/24/2015: Account being put on hold for personal reason.', N'In Progress', N'PP4F952 & PP4F725' UNION ALL
SELECT N'National Captioning Canada Inc. o/a National Captioning Canada', 8064.0000, 898.0000, 6, 2014, '20140630 00:00:00.000', N'Vidhisha Suntoo', '20140915 00:00:00.000', N'', N'7/28/15: On track for Project Completion. Call with client and service scheduled on 7/29.

7/22/15: At risk for Project Completion. Client is OOO until Monday 7/27. Deeshal to follow-up for TSF. 

7/14/15: On track for project completion. TSF call scheduled on 7/15. All issues resolved.

7/3/2015: On Track for project completion. No issues

6/30/15 - Project Completion delayed from 6/30 to 7/15. People, Process: Client requested assistance with SWAN EXJE and RRSP calculation. Anna Puppi delayed the acceptance by 2 weeks to have a Powerpay queries resolved.

6/29/15 - On Track for project completion. Account reviewed by service rep, no issues. TSF call 06/30.

6/26/15 - On track for Project Completion. Cici has reviewed account and TSF call scheduled for Monday 6/29.

6/23/15 - At risk for Project Completion. TSF on 6/19. No Service rep has not been assigned to review account yet. Deeshal to follow up with Anna Puppi.

6/15/15 - On track for Project Completion. Transfer to Service scheduled for 6/17. No issues.

6/8/15 - Project Completion delayed from 6/12/15 to 6/19/15. People: Client requested new entitlements setup. Committed to date 17th June for Transfer to Service.

6/1/15 - On track for Project Completion. Successful transmit. Prepping TSF. No issues.

5/25/15 - On track for re-scheduled Second Live Run. Time capturing in progress, transmit pay on 1st June. Deeshal to review project status with client weekly. No issues.

5/19/15 - On track for re-scheduled Second Live Run. Client updating employee profiles manually and time capture in progress. No issues.

5/12/15 - On track for re-scheduled Second Live Run. Final PCR scripts in progress. Time capture in progress.

5/5/15 - At risk for Second Live Run. Employee Xref codes and employee numbers are duplicated on Dayforce (client has 2 PP accounts with ees bearing same numbers). PCR scripts in progress. Second live run postponed.', N'', N'In Progress', N'PP11860/PP4R548' UNION ALL
SELECT N'Mobis Parts Canada Corporation', 3600.0000, 12191.6600, 10, 2014, '20141008 00:00:00.000', N'Natasha Manick', '20140806 00:00:00.000', N'', N'08/4/15--At Risk for Project Completion. Reached out to client for a PCR, to receive authorization prior to scheduling Transfer to Service Call

07/28/15--At Risk for Project Completion. Reached out to client for a PCR, to receive authorization prior to scheduling Transfer to Service Call

07/21/15-At Risk for Project Completion. Awaiting service to confirm scheduled call with client.

07/14/15-At Risk for project completion.  Transfer to service to done, awaiting response from service team.

6/23/15-At Risk for project completion. More testing required on OT due to changes made to HR rules. Transition to service on 06/23. 

6/15/2015 -Transition To support delayed from 06/12 to 06/19. People, Client provided details on banking issue, to hold call on 06/15 to confirm that issue was resolved.

6/05/2015 -Transition To support delayed from 06/5 to 06/012. People, Client not providing clarification for issue that was highlighted as critical for client to give go-ahead to move to service. To follow up on 06/8.


5/25/2015 -Transition To support delayed from 05/19 to 06/05. People, Client not providing clarification for issue that was highlighted as critical for client to give go-ahead to move to service. To follow up on 05/28

05/19/15- On Track for transition to service, To Transfer to service on 05/22/15. No issues

05/13/15- On Track for transition to service, resolved all issues except system limitations. To call client before transferring to service, unable to reach client. To attempt once more on 5/13 before transferring to service with additional notes.

05/05/15- On Track for transition to service, resolved all issues except system limitations. To call client before transferring to service.', N'', N'In Progress', N'PP23398, PP23399, PP23845' UNION ALL
SELECT N'Mediclean Incorporated', 3360.0000, 15960.0000, 7, 2015, '20150716 00:00:00.000', N'Staline Lamarque', '20141015 00:00:00.000', N'', N'08/06/15: ON Track for Project completion, TFS meeting Scheduled, no issues.

07/28/15: At risk for project completion, Awaiting service acceptance.

07/22/15: On track for project completion, awaiting service acceptance.

07/21/15: On Track for transition to support, prepping TFS docs, no issues.

07/14/15: On Track for Transition to support, client back from vacation, will provide live sign off this week, no issues.

07/08/15: On track for Transition to support, client on Vacation, no issues.

07/03/15: At Risk for Transition to support, client want to have more time to review the system before moving to service, manager will call customer today to review.

06/29/15: At Risk for Transition to support, Clients informed us about some discrepancies for employees hire date, vacation bucker not working and have questions in regards to stat calculcation. Working on the issues internally. ECD : 06/29/15

06/25/15: At Risk for Transition to support, Due to HR import being done in december 2014 client have concerns data on dayforce is outdated. Reports provided to client to compare.

06/23/15: On Track for transition to support, Fixed the work assignment issues, will contact customer to get live sign off and transfer to service, no issues.

06/23/15: At risk for transition to support, working on the work assignment issues.

06/16/15:On Track for 1st Pay, Preparing for transition to support, no issues.

06/03/15: On Track for 1st pay, Time capture in progress, no issues.

06/02/15: On track for 1st pay, Time capture in progress, client processed payroll without transmitting.

05/26/15:On Track for 1st Pay, Time capture in progress, no issues.

05/19/15:On Track for 1st live capture, Need to walk new contact through system. No issues

05/12/15: On Track for first time live Capture, no issues.

05/05/2015: On Track for first time live capture. No issues

04/28/15: On Track for first time live capture, clocks setup no issues', N'Thibaut said client wants to be live by Jan ''15, so they want to start around Oct/Nov. Emailed sales rep.', N'In Progress', N'PP2K644' UNION ALL
SELECT N'McNain Communications Inc', 7920.0000, 6037.1300, 9, 2014, '20140930 00:00:00.000', N'Natasha Manick', '20141008 00:00:00.000', N'', N'7/28/2015: On track for Project Completion. Account sent to service for review. No issues.

7/22/2015: On track for Project Completion. Prepping for TSF documents. Transmit to PP successful. No issues.

7/13/2015: On track for Project Completion. Client reviewing timesheets and setting up geo locations.

7/3/2015:On Track for project completion. Timesheet review in progress. No issues

6/29/15: On Track for project completion. Timesheet review in progress. No issues

6/26/15: At risk for project completion. Client requested for additional pay run due to previous clock issues.

6/15/15: On track for Second Pay. Client will be populating one week timesheet manually and capturing time for the other week. 
6/9/15 - At risk for Second Pay. Timesheets are not being populated by the client. Contacted client on 6/2 by phone, main contact confirmed that they are yet to complete biometric registration of employees and do not have an ECD yet. Project completion might be delayed for another 3-4 weeks. Deeshal to contact client.

6/1/15 - On track for Second Pay. Prepping for transmit. No issues.

5/19/15 - On track for re-scheduled Second Pay. Time capture in progress. 70 new employees to be imported from PP to DF. No issues.

5/12/15 - On track for re-scheduled Second Pay. Clock issues resolved, time capture in progress. No issues.

5/5/15 - At risk for Second Pay. Client said they will not be using DF to process payroll due to clock issues. Replacement clock shipped out.', N'Client availability', N'In Progress', N'PP1C469, PP4M807' UNION ALL
SELECT N'Mazda Canada Inc', 11520.0000, 10400.0000, 10, 2014, '20141003 00:00:00.000', N'Tej Suroowan', '20141027 00:00:00.000', N'', N'08/03/15 : On Track for project completion.  No issues.

07/27/15 : On Track for project completion.  No issues.

07/21/15 : At Risk for project completion, account was sent to service on the 10th of July, no review has been done yet.  Dates have not been changed since the push cannot be justified.

07/14/15 : On Track for project completion, account already sent to service.  No Issues.

7/3/15: On Track for project completion. TTS prep in progress. TTS on 7/6/15.

06/29/15 : On Track for project completion.  Account will be sent to service this week.  No Issues.

06/26/15 : On Track for project completion.  Account will be sent to service next week.  No Issues.

06/25/15 : On Track for project completion.  No Issues.

06/22/15 : On Track for Go live. Production environment requested.  No Issues.

06/15/15 : On Track for go live planned for 06/25/15.  Client doing testing.  No Issues.

06/09/15 : On track for rescheduled go live. External testing. No issues.

06/01/15 : On Track for rescheduled go live date.  No issues.

05/28/15 : At Risk for go-live, Client unwilling to commit to a go live date although all concerns addressed. Client on holiday until 06/02/15. Deeshal to call client on 06/02/15. 

05/26/15 : At Risk for go-live, call scheduled with client 05/27/15.  Will try to get commitment for live date.

05/21/15: At Risk for go-live. Client requesting clarification on displaying future TAFW on timesheet and schedule 1 year in the future. DF product development team contacted awaiting response.

05/19/15 - At Risk for go-live, client not committing for go-live.  Yogesh and Deeshal will talk to client today.  (No issues on IMP side)

05/12/15 - At Risk for go-live, entitlement problem is resolved.  Already informed client that they can proceed to test and then we go live. No Issues.', N'', N'In Progress', N'PP4P512' UNION ALL
SELECT N'MANITOK ENERGY INC.', 1380.0000, 3360.0000, 10, 2014, '20141028 00:00:00.000', N'', NULL, N'', N'08/06/15: On Track for Project completion, TFS meeting scheduled.

07/22/15: On track for project completion, awaiting service acceptance.

07/21/15: On Track for transition to support, prepping TFS docs, no issues.

07/14/15:On Track for 1st Pay, 1st live run completed, no issues.

07/08/15:On Track for 1st Pay Capturing time, no issues.

06/29/15: On Track for 1st Pay, Capturing Time, no issues.

06/23/15: On Track for 1st Pay, capturing time, no issues.

06/15/15: On Track for 1st time live Capture, Client training employees, asked for clock/roles adjustments.

06/08/15:On Track for 1st time live capture, client training employees, no issues.

06/01/15: On Track for 1st time live capture, no issues.

05/15/15: On Track for Go live, external Testing, No issues.

05/12/15: On track for Go live, Internal Testing, no issues.

05/05/15: On Track for Go live, Internal Testing, awaiting Employee file from client, no issues.

04/28/15: On Track for Go live, Internal Testing, awaiting Employee file from client, no issues.

04/21/15: On Track for Go live, Working on config, no issues.', N'', N'In Progress', N'PP72905' UNION ALL
SELECT N'M.BELLIVEAU ENDODONTICS INC', 600.0000, 798.0000, 11, 2014, '20141114 00:00:00.000', N'', NULL, N'', N'08/06/15: On Track for Project completion, TFS meeting scheduled.

07/28/15: At risk for project completion, Awaiting service acceptance.

07/22/15: On track for project completion, awaiting service acceptance.

07/21/15: On Track for transition to support, prepping TFS docs, no issues.

07/14/15:On Track for 1st Pay, 1st live run completed, no issues.

07/08/15:On Track for 1st Pay, capturing time, no issues.

06/29/15: On Track for 1st Pay, capturing time, no issues.

06/23/15: On Track for 1st Pay, capturing time, no issues.

06/15/15: On Track for 1st time live capture, client training employees, no issues.

06/08/15: On Track for 1st time live capture, client training employees no issues.

06/01/15: On Track for 1st time live capture, no issues.

05/26/15: On Track for Go live, External Testing, no issues.

05/15/15: On Track for Go live, external Testing, No issues.

05/12/15: On Track for Go live, Internal Testing, No issues.

05/05/15: On Track for Go live, Internal Testing, awaiting Employee file from client, no issues.

04/28/15: On Track for Go live, Internal Testing, awaiting Employee file from client, no issues.

04/21/15: On Track for Go live, Working on config, no issues.', N'', N'In Progress', N'PP72906' UNION ALL
SELECT N'Luxury Retreats International Inc.', 5460.0000, 9325.0000, 12, 2013, '20131219 00:00:00.000', N'Tulsi Moorut', '20141117 00:00:00.000', N'', N'08/03/15 : On track for project completion.  No Issues.


07/27/15 : On track for project completion.  No Issues.

07/21/15 : At risk for project completion.  Service is taking too long to review.  Dates not pushed since push cannot be justified.

07/14/15 : On track for project completion.  TTS in progress ECD 7/15.  No Issues.

07/09/15 : On Track for project completion.  TFS scheduled for today.  No Issues.

7/3/15: On Track for project completion. ECD for TTS 7/6/15.

06/29/15 : On Track for first pay.  Payroll submission is for today.  No Issues.

06/22/15 : On Track for first pay.  Will transmit payroll on Monday 29th June.  No Issues.

06/16/15 : On track for rescheduled first pay.  No issues

06/15/15 : At risk for first pay.  Client not responding, will call client today together with Deeshal.

06/09/15 : On track for first pay.  Time capture starts today.  No issues.

06/01/15 : On track for first pay. Time capture this week.  No issues.

05/26/15 : On track for project completion.  Will start entitlements implementation today.  No issues.

05/19/15 : On track for project completion. Internal testing pay policies and entitlements.  No issues.

05/12/15 :  On track for project completion.  Testing pay policies and entitlement setups. No Issues.

05/05/15 : On track for project completion.  Will check if badges were shipped.  Checking configuration of account as well.  No issues.', N'', N'In Progress', N'PP72890' UNION ALL
SELECT N'Little Guy Oilfield Rentals Inc', 1008.0000, 3000.0000, 5, 2015, '20150520 00:00:00.000', N'', '20150105 00:00:00.000', N'', N'12/17/2014- Prepping for preadmin. Client advised that they used DF before they got acquired. It was a simple Ownership Change. L.Butson from Service said WFM Service team does not hanld ethis. This should be handled by DF or MFB. Sent email to Dean Sales, MFB. Awaiting repsonse.
11/4/2014- Prepping for preadmin. Preadmin sched 12/17@2:30pm', N'', N'In Progress', N'PP4Q848, PP4Q849' UNION ALL
SELECT N'Les Uniformes Loft Inc.', 1440.0000, 4615.0000, 2, 2014, '20140217 00:00:00.000', N'Dylen Citta', '20150330 00:00:00.000', N'3/31/15', N'08/4/15: On Track for first Pay,to review test register with client on 08/05

07/28/15: On Track for first Pay, test run done on 07/27, test register to be produced on 07/29 for actual comparison.

07/21/15: On Track for first Pay, test run delayed to 07/24.

07/14/15: On Track for first pay, test run to be done on 07/17. no issues

07/03/15:  On Track for First Pay,  To start Time Capture on 07/06. No issues

06/29/15: On Track for Go live, To go live on 0630.

06/23/15: At Risk for Go Live. Client has 6 sites - employees training not completed. ECD for training 07/03.

06/15/15: At Risk for Go-Live.  Issues with webclock not being able to be installed on PCs. Call to fix 6/16/15

06/05/15: Delay to Go live from 06/0815 - TBC.  People, client unable to make testing review call on 05/06, call to be held on 06/09 with a new Go-Live date to be confirmed.

06/02/15: At Risk for Go-Live, client currently testing, still testing payroll export.

05/25/15: Delay to Go live from 05/26 to 06/08.  Process: Issue producing test registers due to payroll export to Powerpay limitations.  currently, working with technical services to resolve issue by 6/2/15

05/19/2015 - At Risk for go-live.  Still stuck with org setup, departments not matching on PP & WFM.  Waiting for response from internal support team to move forward.

05/05/15-On track for Go Live,to do testing call on 05/07. No issues

04/28/15-On track for First Live,To lock requirements on 04/28 after client call.

04/21/15-On track for First Live, KOM done on 03/30. Final Workbook sent on 04/21 for confirmation due to delays in confirmation of mapping requirements.

04/7/15-On track for First Live, KOM done on 03/30. Feasibility of requirements confirmed. Amended Workbook to be sent to client for sign off on 4/7.

11/17/14- Prepping for preadmin. Left detailed vm&email w/ start date Jan 26', N'', N'In Progress', N'PP4Q951' UNION ALL
SELECT N'Les Soeurs Missionaires du Christ-Roi', 2220.0000, 3100.0000, 4, 2015, '20150410 00:00:00.000', N'Roma Domasing', '20141208 00:00:00.000', N'', N'08/04/2015-On Track for First Pay. working on importing new hires from powerpay.

07/23/2015- At Risk for First Pay. Client has re do the enrollment for both photograph and biometric template. They requested for 3 to 4 weeks to complete the procedure. 

07/21/2015- On Track for First Pay. Working with Gary to fix the clock issue. Received approval for refunds. Next call scheduled for tomorrow. 

07/17/2015- On Track for First pay. Currently working on clock issue. 

07/10/2015-On Track for First pay. client requested for refund for previous invoices. 

07/14/2015- At Risk for First pay for both pay groups. Process. Clock issue still not solved. Clock team engaged.

07/07/2015-At Risk for First pay for PP73043 due to system issue and clock configured incorrectly. Clock issue resolved today. Need client confirmation.   

07/03/2015-On track for First Pay. Transmission to Powerpay on Monday. 

06/29/2015- On track for First Pay. Client doing external testing. No issues.

06/22/15-On track for First Pay. Client training employees and conducting external testing at the same time. No issues

06/17/15- At Risk for First Pay. Client still doing external testing but requesting for more time to train employees.

06/15/15-On track for First Pay. Client doing external testing and employee training. 

06/01/15-On track for rescheduled first pay. working on defining the new roles and accesses and internal testing.No issues

05/26/15-On track for first pay, primary user on sick leave. Secondary user taking time to respond, awaiting HR Import data. No issues', N'Client went on vacation.', N'In Progress', N'PP72897, PP72898' UNION ALL
SELECT N'Les Agences Lisette Limoges Inc', 4320.0000, 6240.0000, 8, 2015, '20150821 00:00:00.000', N'', NULL, N'', N'12/15/14jah:  This CR is for both US and Ca, but has been booked (and should be billed) from Ca.', N'', N'In Progress', N'E0679, PP14703' UNION ALL
SELECT N'Leis Pet Distributing Inc', 1890.0000, 3100.0000, 12, 2014, '20141223 00:00:00.000', N'Sehnaaz Bhuttoo', '20150209 00:00:00.000', N'', N'02/24/15: 02/17/15:At Risk for Go-Live,  Awaiting sign-off. Client expectations beyond system limitations as well as issues with expectations on Powerpay reporting. To be handed back to Sales.

02/17/15:At Risk for Go-Live,  Awaiting sign-off. Client hesitating due to very complicated union agreements. Call scheduled on 02/18, to discuss feasibility of Dayforce with client.

02/11/15:At Risk for Go-Live,  Awaiting sign-off. Client hesitating due to very complicated union agreements.

01/27/15:On track for Go-Live, KOM done. Awaiting sign-off.

01/13/2015- Prepping for preadmin. Preadmin completed. Client will send union contracts for Dylen.
01/08/2015-Prepping for preadmin. Sent another email to Alex to follow-up with client.
12/23/2014 Prepping for preadminx Li to follow-up w. Sent another follow-up email to Ale/ client.
12/18/2014- Prepping for preadmin. Left vm&email with new Jan 19 start date.
12/12/2014- Spoke with client& advised March 16 KOM. Asked Sales to call and explain WFM project.  
12/3/2014- Prepping for preadmin. Left detailed vm&email', N'Client hesitating to move forward with DWFm due to feeling that sales did not meet their needs and expectations/requirements.  Note that sales rep has been informed about this.', N'In Progress', N'PP4P705' UNION ALL
SELECT N'Le Bon Dieu dans la Rue', 5040.0000, 5740.0000, 11, 2014, '20141128 00:00:00.000', N'Samantha LamYeeMan', '20150213 00:00:00.000', N'', N'08/03/15 : On Track for project completion.  No Issues.


07/27/15 : On Track for project completion.  No Issues.

07/21/15 : At Risk for project completion.  Issues due to new developments.

07/14/15 : At Risk for project completion.  Client requested to change entire setup due to new developments.  This is change control, Deeshal to contact the client 7/15.

07/08/15 : At Risk for project completion.  New issues found on Powerpay.  Employee vacation balances are incorrect.

07/03/15: At Risk for project completion. Issues resolved, client need time to test before moving changes into prod.

06/29/15 - At Risk for project completion. Issues resolved but client want more testing time. To confirm ECD with client 06/30/15.

06/23/15 - At Risk for project completion.  OT and Project time tracking issues. Backfill to test completed, working on config. ECD 06/29.

06/15/15 - At Risk for project completion.  Working on 36 configurations issues (Entitlements, availability, holiday rules, pay policies, Paystubs) and testing. All issues to be fixed by 6/19/2015.

06/09/15 - On track for project completion, still working and testing on pay policies, schedules and entitlement. No issues

06/02/15: At Risk for project completion. People: Account sent back from service due to major configuration issues. Pay policies, entitlement, Mobile app not working. Prod back filled into test, configuration being reviewed.

04/27/15: Waiting for Transfer to service sign-off. No issues
04/20/15: 1st Transmit done. Waiting for Transfer to service sign-off. No issues
04/13/15: On track for first pay. Transmit for tomorrow. no issues
04/06/15: On track for first pay. Capturing time. no issues.
03/30/15: On track for first pay. Client capturing time this week. no issues 
03/23/15: On track for first time capture. no issues at this time.
03/16/15: On Track for Actual go Live, Client doing testing. no issues at this time.', N'', N'In Progress', N'PP4R334' UNION ALL
SELECT N'Gendon Polymer Services', 1722.0000, NULL, 9, 2015, '20150930 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'L.H. Jewellery Ventures Inc.', 13680.0000, 3450.0000, 12, 2014, '20141212 00:00:00.000', N'Sehnaaz Bhuttoo', '20150430 00:00:00.000', N'4/30/15', N'8/4/15: Go Live on track, client has returned new SOW and parameters available to begin new module config

7/27/15: At risk for Go live, updated paperwork not yet received from sales for new module entitlements and new payroll Jepca Inc. Awaiting client to progress

7/21/15: At risk for Go Live, client has requested for new Entitlements module and a change in payroll calendar for secondary payroll Jepca Inc. Awaiting change in power pay and change in contract to progress.

7/14/15: On track for Go live, environment to be to be available on 7/15/2015 for first time capture. First live run will be towards the end of August 2015

7/7/15: Client has agreed to go live by the end of the week 7/12/2015. Working on outstanding queries around New jobs and Positions with client.

6/30/15: At risk for go live, client would like to test further as they are not fully at ease yet to roll out in their organisation. Working on outstanding queries with client.

6/23/15: At risk for Go Live, Client has sent revised workbook and Org structure has to be redefined, awaiting go ahead from manager for re-work.

6/16/15: On track for go live, client is testing and working on clock installation. no issues

6/9/15: On track for Go Live, client is currently testing. First time Capture will begin at the end of the current pay period. No issues

6/5/15: Go Live at risk, Client has advised that they are not comfortable to go live yet, date postponed for one pay period.

6/1/15: On track for Go Live, Client has been given access to test, working on setting up workflows, no issues

5/26/15: On track for Go Live, internal testing complete. Environment handed over to client for external testing.

5/19/15: On track for Go Live, Internal testing in progress, no issues

5/11/15: At risk for Go Live, awaiting paperwork from sales to complete data load and testing. Working on Core configuration.', N'', N'In Progress', N'PP4R207' UNION ALL
SELECT N'Koyo Canada Inc', 750.0000, 3500.0000, 6, 2014, '20140602 00:00:00.000', N'Deensha Bunhejee', '20150323 00:00:00.000', N'3/31/15', N'08/04/2015: At Risk for Project Completion, both Dayforce Support Team and the CDN Small/Mid Support WFM team do not support transnational account with both powerpay and redwood payroll. Still looking for the team to support this client.

07/27/2015: On Track for Project Completion, Dayforce Support team reviewing the account, no issues.

07/22/2015: At Risk for project completion, service team reject the transfer as this a transnational account. Dayforce service team to review parature ticket opened.

07/14/2015: On Track for Completion, service reviewing, no issues.

07/07/2015: On Track for Transition, preparing service documents, client having issues with physical clock.

07/03/2015: On Track for Transition, preparing service document, no issues.

06/29/15: On Track for Second Pay, second transmit done, no issues.

06/24/2015: On Track for Second Pay, First transmit had overtime issues that are fixed now.

06/16/2015: On Track for First Pay. No issues
06/09/2015: On Track for First Punch, client still having problem with clock[not able to punch], waiting for clock team to look into the issue.

06/01/2015: On Track for First Punch, client having issues with clock[not recognizing badges] Gary C is looking into this issue.

05/26/2015: On Track for First Punch, client creating schedules, no issues.

05/19/2015: On Track for First Punch, client is enrolling employees fingerprints, clock issue has been solve. No issues.

05/11/2015: On track for First Punch, client training managers, no issues.

05/05/2015: On track for First Punch, completing badge number imports, client training managers, no issues.

04/28/2015: On Track for First Punch, setting up badge number for employees, no issues.

04/20/2015: On Track for Go-Live, needs to work on the integration of the US part of this account.

04/14/2015: On Track for Go-Live, client doing testing, no issues.

04/06/2015: On Track for Go-Live, internal testing completed and test environment requested, no issues.', N'', N'In Progress', N'#PP4R506, PP4R507, PP4R508, PP4R509, PP4R510, PP4R511, PP4R512, PP4R513, PP4P984, PP4P975' UNION ALL
SELECT N'Koch Fuel Products Inc. - Add On', 480.0000, 2400.0000, 7, 2015, '20150729 00:00:00.000', N'Sehnaaz Bhuttoo', '20150427 00:00:00.000', N'4/30/15', N'08/04/15 : On Track for project completion.  Transfer to service scheduled for today.  No Issues.

07/28/15 : On Track for project completion.  No Issues.

07/21/15 : On Track for project completion.  No Issues.

07/14/15 : On Track for project completion.  No Issues.

7/3/15: On Track project completion. No Issues.

06/29/15 - On Track for first pay.  Client capturing time.  No Issues.

06/22/15 - On Track for first pay.  Client capturing time. No Issues.

06/19/15 - On track for first pay.  Client capturing time.  No Issues.

06/15/15 - On track for first time capture, call scheduled for biometric enrollment on Thursday.  Clock already setup.  No Issues.

06/10/15 - On track for go-live, sign off received.  Live DB already requested.  No issues.

06/09/15 - On track for go-live. External testing - Awaiting Go Live sign Off. No issues.
05/12/15 - On Track for Go-Live, currently testing and implementing premiums.
No issues.

05/05/15 - On Track for Go-Live, working on config.  Will proceed with the HR Import today.  No issues.

04/27/15 - KOM for Tuesday 04/28/15 at 9 am EST.

04/14/2015- Preadmin completed. KOM Apr 28 @9amEST
03/08/2015- Prepping for preadmin. Emailed Veronika back to advise the client that KOM is Apr 27 &preadmin is Apr 14@10amEST.
01/12/2015- Preadmin Apr 14@10 with Nasr &Marisa.
01/06/2015- Prepping for preadmin. Emailed Veronika again to follow-up w/ client.
12/24/2014- Prepping for preadmin. Email sales to follow-up and explain about conversion and WFM. Awaiting sales to determine conv dates. Advised Nasr no resource and will follow-up in January to review TBD start date.', N'', N'In Progress', N'PP4R711' UNION ALL
SELECT N'Koch Fuel Products Inc.', 4800.0000, 6215.0000, 11, 2014, '20141110 00:00:00.000', N'Roma Domasing', '20150209 00:00:00.000', N'', N'08/04/2015-On Track for First Time Capture. Working on client''s reports and new hire form

07/29/15- At Risk for First Time Capture. Client has issues with the new hire and tax forms. working on adding more options for the citizenship so that the information is relayed to the tax form. 

07/21/2015- On Track for First Time Capture. Contacted the DWF development team for the transmission of tax information. awaiting for response. 

07/17/2015- On Track for First Time Capture. Client decided against going on hold. Currently working on updates requested and waiting for the DWF development specialist to be back on 07/20/2015 to work on the transmission

07/15/2015-At Risk for First Time Capture. Process. Client might place project on hold as they currently have only 3 salaried employees and the other pay groups have not been set up yet. Next meeting with client scheduled for tomorrow where they will confirm about the next step. 

07/10/2015-At Risk for First Time Capture. Response received from Powerpay team. DWF development consultant will be back on the 20th after which a response about the feasibility of the transmission will be provided. 

07/03/2015-At Risk for First Time Capture. Working with development to create transmission codes. Awaiting response from Powerpay Rep to provide parameters which need to be imported from Dayforce. 

06/25/2015-At-Risk for First Time Capture. Process, Client made aware of system limitations by Ceridian PP rep, (tax info not transmitted) and is hesitant to go ahead. Internal meeting scheduled on Monday 06/29 with Sales and PP rep to mitigate risks and come up with a solution.

06/22/2015-At Risk for First Time Capture. Process: Client and employee training delayed due to availability of online training. Client currently doing external testing.

06/17/2015-At Risk for re-scheduled First Time Capture. Process. Client and employee training delayed. Client currently doing external testing.', N'', N'In Progress', N'PP4R722, PP4R723, PP4R724, PP4R725' UNION ALL
SELECT N'Kissner Fine Ingredients Inc', 540.0000, 3000.0000, 10, 2014, '20141015 00:00:00.000', N'Tulsi Moorut', '20150323 00:00:00.000', N'3/31/15', N'08/6/15: At Risk for Go-Live. Client. Contacted Cory and he advised that call has been postponed for tomorrow. 

08/04/15: At Risk for Go-Live. Client. Next call scheduled for Thursday with client and sales rep to determine the next step. Possible cancellation of account

07/29/15: At Risk for Go-Live. Product. Called client to show her the system before requesting for the testing environment. She is not happy with the product, does not want to use 2 different applications to run payroll and enter new hire as only Powerpay has the option for the taxation and vacation accululator and client does not have entitlement module purchased. Contacted sales rep Cory Kawa. Still waiting to hear back from him. 

07/28/15: On Track for Go Live. No Issues.

04/28/2015- At risk for Go-Live. No response from Sales person yet. Client is on vacation till the 5/11/15. Account placed on Hold. 

04/24/2015- Awaiting response from Sales person who needs to contact client for confirmation about the account status 

03/30/2015- On Track for Actual go Live - KOM completed on 03.26.2015, waiting for workbook sign-off.
03/17/2015- On Track for Actual go Live - KOM scheduled for the 03.23.2015.

03/12/2015- Preadmin completed. 
02/18/2015- Prepping for preadmin. Preadmin sched 3/12 @ 11amEST. KOM Marc 23 @10amEST
02/05/2015- Prepping for preadmin. Preadmin 2/18 @11:30amEST
01/12/2015- Prepping for preadmin. Left v,m&email Cheryl KOM wk 3/2. Awaiting call back.
12/19/2014- Prepping for preadmin. Spoke w/ S.Mongrain. Red-Blue conv being handled by J.Wong. Awaiting response from J.Wong when client will be live on PP.', N'Client is on vacation until May 11th and sales has yet to confirm whether the client will go ahead with the Dayforce product or not', N'In Progress', N'PP4R499' UNION ALL
SELECT N'Kids Come First Child Care Services', 4848.0000, 3660.0000, 5, 2015, '20150530 00:00:00.000', N'Deensha Bunhejee', '20150531 00:00:00.000', N'5/31/15', N'08/04/2015: At Risk for Transition to Support, working on WFM2.P2 File.

07/27/2015: At Risk for Transition to Support, employees'' work assignment needs to be fixed.

07/22/2015: On Track for transition to support, missing employees are uploaded on Dayforce, Preparing document to send to service, no issues.

07/14/2015: At Risk for Transition, need to upload missing employees on Dayforce. Went through the rest of her issues and everything is fixed.

07/03/2015: On Track for Transition to support, client not transmitting over to PP, no issues.

06/29/2015: On Track for First Transmit, start capturing time, no issues.

06/24/2015: On Track for Go-Live, doing test registry, no issues.

06/16/2015: On Track for Go-Live, client doing external testing, no issues.

06/09/2015: On Track for Go-Live, internal testing completed, no issues.

06/01/2015: On Track for Go-Live, doing internal testing, no issues.

05/26/2015: On Track for Go-Live, in configuration, no issues.

05/19/2015: On Track for KOM, no issues

05/11/2015: On Track for KOM, internal knowledge transfer not done, sale rep denied invite and didn''t provide availability as well. Follow up done no reply.

05/05/2015- Preadmin completed.
04/29/2015- Prepping preadmin. NOTE: As per Dean, DO NOT put KOM date in Welcome Email, just Reps name. Dean will touch base w/ client.
02/20/2015- Prepping for preadmin. Preadmin sched 5/5 @1pmEST w/ Amy Vanderhorst
02/19/2015- Prepping for preadmin. Jeff will decide who will spearhead proj. Will call 2/20@1pmEST.
02/112/2014- Prepping for preadmin. Left detailed vm&email for Jeff. Advised KOM 5/25 & want to sched preadmin beginning of May
12/29/2014- Prepping for preadmin. Left vm&email for Jeff. Advised no resource and will follow-up in January to review TBD start date.', N'', N'In Progress', N'PP1Y418' UNION ALL
SELECT N'Kameron Coal Management Limited', 2400.0000, 14088.0000, 5, 2015, '20150512 00:00:00.000', N'Natasha Manick', '20150427 00:00:00.000', N'4/30/15', N'7/28/2015: On track for First Pay. Assisting client with queries. PCR script in progress: Reset password on login set to 1.

7/22/2015: First Pay delayed from 8/4/2015 8/18/15. People: Client going on vacation for 3 weeks.

to 8/7/14/15: On track for Project Completion. Prepping first Pay. No issues.

7/3/15: On Track for project completion. No issues.

06/29/15: On track for First Time Capture. No clock setup to be done. Assisting client with timesheet entries. No issues. 

06/23/15: On Track for Go Live. Assisting client with queries. No issues.

06/15/15: On Track for Go Live. Client testing and manager training in progress. No issues.

06/02/15: On Track for rescheduled Go Live. People: Timeline has been recalculated to accommodate client''s pace and internal employee training for 7 different sites.

06/01/15 - At risk for Actual Go-Live Date. Timeline reviewed with Client, awaiting approval ECD 06/02/15. New proposed Go live date 06/22/15.


05/27/15 - At risk for Actual Go-Live Date. Deeshal to call client on 05/28/15 to confirm go live date.

05/26/15 - At risk for Actual Go-Live Date. Client have issues with on line training and current project timeline for training employees. Awaiting confirmation new go live date. 

05/25/15 - At risk for Actual Go-Live Date. Client have concern with regards to training. Sale rep contacted client and training concerns clarified. Deeshal M reviewing timeline with client on 05/26/15, go live date will be changed post meeting.

05/21/15 - At risk for Actual Go-Live Date. Client requested to sort out their training plan before proceeding with Sandbox. Sales rep and Deeshal following up with drafting the plan. - No implementation issues.', N'', N'In Progress', N'PP47987, PP4J018, PP4J123' UNION ALL
SELECT N'K6 Media Inc.', 870.0000, 798.0000, 7, 2014, '20140718 00:00:00.000', N'Roma Domasing', '20150406 00:00:00.000', N'4/30/15', N'08/04/2015: At risk for Project Completion, client still testing the stat pay.

07/27/2015: At Risk for Project Completion, service team is requesting for further testing report such as test transmit, working on those testing reports currently.

07/22/2015: At Risk for project completion, still waiting on Service to provide a schedule call with the client.

07/14/2015: At Risk for project completion, client came up with issues that was not on the workbook and challenging setup that was on the workbook(e.g banking of stat hours)

07/07/2015: On Track for project completion, vacation balances uploaded, service team to call client for confirmation, no issues.

07/03/2015: On Track for Transition to Service, need to upload vacation balances on Dayforce, no issues.

06/29/2015: On Track for Transition to service, need to fix webclock issues.

06/24/2015: On Track for Transition, First pay was without issues. Sent documents to Service Team for review.

06/15/2015: On Track for First Pay, transmitting today, no issues.

06/09/2015: On Track for First Pay, Client Capturing time, no issues.

06/01/2015: On Track for First Pay, Client Capturing time, no issues.

05/26/2015: On Track for first time capture, Client creating schedules, no issues.

05/19/2015: On Track for Go-Live, Client came up with additional requirements (tardy rule), no issues.

05/11/2015: On Track for Go-Live, client doing testing, no issues.

05/05/2015: On Track for Go-Live, external testing, no issues.

04/28/2015: On Track for Go-Live, waiting for client to provide the employee details sheet, no issues.

04/20/2015: On Track for Go-Live, uploading employees on Dayforce, having issues withe the organization structures of this client.

04/14/2015: On Track for Configuration, waiting for workbook sign-off, no issues.', N'', N'In Progress', N'PP4D807' UNION ALL
SELECT N'Jupiter Resources Inc', 864.0000, 5600.0000, 10, 2014, '20141029 00:00:00.000', N'Sehnaaz Bhuttoo', '20150601 00:00:00.000', N'6/30/15', N'8/4/15: Actual Go live delayed from 7/31/2015 8/17/2015, People: client has requested to complete supervisors training before rolling out to everyone and starting to capture time.

7/27/15: On track for go live, client currently on holiday, awaiting return next week beginning august 3rd to begin first time capture.

7/21/15: On track for Go Live, clock has been setup. client is currently away on vacation, awaiting sign off to request production environment, no issues.

7/14/15: On track for go live, client has agreed to go live in Friday 17th July before he leaves for holiday.

7/3/15: Go live at risk. First walk through complete, First time capture to begin when client is back from holiday on 8/1/2015

6/30/15: On track fro go live. Employee data load in progress, configuration complete. Working with client to place subcontractors on system. no issues.

6/23/15: On track for Go Live, workbook signoff received. No issues

6/16/15: On track for KOM, call scheduled for 6/17/2015, no issues

05/19/2015- Preadmin completed. KOM 6/1 1-3pm EST

02/23/2015- Prepping for preadmin. Preadmin sched 5/19 @11amEST.
02/19/2015- Prepping for preadmin. Left vm&email client and advised CANNOT start earlier. CC sales and Dean
02/18/2015- Prepping for preadmin. Emailed Dean to see if we can bump this up to earlier date.
02/12/2015- Prepping for preadmin. Sent Dean another email to follow-up with earlier start date.
01/19/2015- Prepping for preadmin. Spoke w/ client and he wants to start earlier. Emailed Dean and awaiting response.
01/14/2015- Prepping for preadmin. Left vm&email for Tim', N'', N'In Progress', N'PP1P376' UNION ALL
SELECT N'J. Jenkins & Son Landscape Contractors Ltd', 1440.0000, 3100.0000, 1, 2015, '20150106 00:00:00.000', N'Tulsi Moorut', '20150420 00:00:00.000', N'4/30/15', N'08/04/15:  Delay First Live Time Capture from 7/31 to 08/17.  People, client updating all employee rates and balances prior to capturing time.

07/28/15: On Track for First Live Time Capture. No issues.

07/21/15: On Track for First Live Time Capture. No issues.

07/14/15: On Track for First Live Time Capture.  No issues.

07/03/15: On Track For Go Live,  Touched base with client on 07/03, sent testing sign-off. Awaiting response prior to promoting to Production.

06/29/15: On Track for Go Live, finalizing refinements on testing environment. No issues

06/23/15: At Risk for Go Live, client back from bereavement leave and has resumed testing.  To continue refinement and discuss new timeline.

06/15/15: At Risk for Go Live, client to return to Canada later during the week of 06/15. Will resume testing once in office.

06/09/15: At Risk for New Go Live, Client currently away for mother''s funeral.  

06/02: On track for New Go Live, client currently testing. No issues.

05/25: Delay Sandbox Available from 05/25 to 06/1. People, client did not complete testing and wants to include her whole team in testing and primary contact mother ill. To be out of country.

05/19/15: On track for re-scheduled Go-Live, external testing no issues

05/05/15: On track for Go-Live, HR Import to be done on 05/05. Internal testing to be done once HR Import done.

04/28/15: On track for Go-Live, Sign off obtained on 04/28. To begin configuration.

04/28: On track for Go-Live, awaiting sign-off after workbook clarification call on 04/28.

04/21/15: On track for Go Live, KOM done, however client raised issues that may prevent go-ahead with implementation.  Sent to Alex Li(Sales) for further confirmations.

04/08/2015- Preadmin completed
02/12/2015- Prepping for preadmin. Preadmin 4/6@10amEST
01/14/2015- Prepping for preadmin. Spoke w/ Maria who was under the impression of a Jan/Feb start and live date of March/April. Sent back to Alex Li and cc''d Dean. Awaiting reply', N'', N'In Progress', N'PP9S923' UNION ALL
SELECT N'Interval House of Ottawa - Maison Interval d''Ottawa', 1380.0000, 6200.0000, 6, 2014, '20140627 00:00:00.000', N'Staline Lamarque', '20150615 00:00:00.000', N'6/30/15', N'08/04/15 : On Track for Go Live.  No Issues.

07/28/15 : On Track for Go Live.  No Issues.

07/21/15 : On Track for Go Live.  No Issues.

07/14/15 : On Track for Go Live.  No Issues.

7/3/15: On Track for Go Live.  No Issues.

06/29/2015 - On Track for Go Live.  No Issues.

06/23/2015 - On track for Go-Live.  Working on HR Import and configuration.  No Issues.


06/15/2015 -  On Track for Go-Live, client will be on vacation during the current live date 07/24/15.  An alternate live of the 17th Aug has been proposed by client as per attached email (Client will be on Vacation).  No Issues.


02/19/2015- Prepping for preadmin. Preadmin 6/2 @12:30pmEST
02/18/2015- Prepping for preadmin. Left vm&email for client about sched preadmin 1st wk of June
02/12/2015- Prepping for preadmin. Spoke w/ Nicola (Andrie''s boss) and advised of 6/15 start and that i want to sched a preadmin for 6/1. Nicola said she''s opkay with that date and she''ll pass my msg ago to Andrie.
01/13/2015- Prepping for preadmin. Conversion slated for 2/2. Emailed D. Shea to sched PP Training for client. Advised client WFM will start mid-June. No resource avil. Will reach out in June.', N'', N'In Progress', N'PP4S111' UNION ALL
SELECT N'Inflamax Research Inc.', 7872.0000, 9000.0000, 5, 2014, '20140507 00:00:00.000', N'', '20150608 00:00:00.000', N'6/30/15', N'08/4/15:At Risk For Go Live. Client doing month end to receive update on client progress on testing. No issues

07/28/15:At Risk For Go Live. Client doing month end to receive update on client progress on testing. No issues

07/20/15: Delay Go-Live from 07/17 to 07/31. People, Client doing month end and was unable to test. Agreed on new date

07/14/15: On Track for Go-Live, to touch base with client on 07/14. no issues

06/30/15: On Track for Go Live,  HR Import to be done on 06/30.  Testing call to be done on 07/02

06/23/15: On Track for Go-Live, Configuration Complete. HR Import In progress. No issues.

06/19/15: On Track for Go-Live, KOM Done. Awaiting Sign-off.

06/15/15: Delay KOM from 06/12/15 to 6/18/15. People, client unable to make meeting due to other commitments. 

05/28/2015- Preadmin cimpleted.
01/28/2015- Prepping for preadmin. Preadmin May 26 @2pmEST
01/28/2015- Prepping for preadmin. Left vm&email Melanie to advise KOM 6/8.', N'', N'In Progress', N'PP4S279' UNION ALL
SELECT N'ILTA Processing Inc.', 3360.0000, 6201.6000, 10, 2014, '20141027 00:00:00.000', N'Dylen Citta', '20150608 00:00:00.000', N'6/30/15', N'08/04/15: On Track For Go-Live, to check in with client to verify status of testing.

07/28/15:  Delay Go-Live from 07/27/15 to 08/10/15.  People, client currently on vacation.

07/21/15: On Track for Go Live,  to improve configuration as per client''s remarks in walk through call. No issues

07/14/15: On track for Go-Live, Currently configuring. No issues

06/29/15: At Risk for Go Live, client delaying sign-off.  To remind client on 06/30

06/23/15: At Risk For Go Live,  Client delaying sign off of workbook. Dean & Dylen to call client 06/24.

06/15/15: On Track for Go Live, Kick Off Meeting Completed. Client to use five days to update workbook and returned signed completed workbook on 06/18

06/09/15: On track for Kick Off Meeting, client confirmed availability for 06/11.

06/05/15: Delay Kick Off Meeting from 06/05 to 06/10. People, client unable to make it due to change in schedules. Tentative date for 06/10, client to confirm availability.

06/02/15: Welcome Call done, KOM scheduled for 06/05.

05/06/2015- Prepping for preadmin. Preadmin 5/26 @3:30pmEST
04/22/2015- Prepping for pereadmin. Emailed Carla again for update. Awaiting response.
03/27/2015- Prepping for preadmin. Still awaiting Carlas reply w/ how to move forward.
03/09/2015- Prepping for preadmin. Emailed/followed-up w/ Carla on Status.
03/03/2015- Prepping for preadmin. Emailed Carla again about status.
02/25/2015- Prepping for preadmin. Emaile Carla again.
02/19/2015- Prepping for preadmin. Sent Carla follow-up email to see when preadmin will be.

01/28/2015- Prepping for preadmin. Left vm&email Melanie to advise KOM 6/8.', N'', N'In Progress', N'PP22071' UNION ALL
SELECT N'House of Horvath Inc', 1800.0000, 3360.0000, 10, 2014, '20141010 00:00:00.000', N'Deensha Bunhejee', '20150727 00:00:00.000', N'7/31/15', N'08/04/2015: On Track for Go-Live, client testing, no issues.

07/28/2015: On Track for Go-Live, doing configuration, no issues.

07/27/2015: On Track for Configuration, Waiting for workbook Sign-Off, no issues.

7/15/2015- Preadmin completed. KOM 7/27 1-2pmEST
02/18/2015- Prepping for preadmin. Preadmin 7/14 @ 10am EST.
02/12/2015- Prepping for preadmin. Left vm&email detailing PP+ set up for 3/2 and sched preadmin wk of 7/13. Awaiting response.
02/11/2015- Prepping for preadmin. Left vm&email client.Contacted client and sent 1sb Intro email.', N'', N'In Progress', N'PP4S635' UNION ALL
SELECT N'Hillmar Industries Ltd', 1680.0000, 3100.0000, 6, 2014, '20140623 00:00:00.000', N'YasvirKervin Alam', '20150323 00:00:00.000', N'3/31/15', N'08/04/2015:  First Live Time Capture delayed from 08/03 to 08/31.  People: Client unwilling to capture time on Dayforce as they will be on vacation between 08/14 to 08/31, and they do not wish to attend any meetings/wakthroughs for payroll processing during holidays.  To use current payroll provider for the pay period, to use Dayforce upon return of client.

08/04/15: At Risk for Live Time Capture, Client informed of vacation and unwillingness to use Dayforce.  To discuss tentative live time capture.

07/28/15:  On Track for Go-Live, client verifying employee data prior to giving go ahead to go live. No issues

07/20/2015: Go live delayed from 07/17/2015 to 07/31/2015. People:  Client came back with new issues, to resolve and review with client.

07/14/15: On Track for Go Live, to touch base with client on 07/16 no issues

6/30/15-On Track for Go Live, to touch base with client on 07/02

6/23/15- At Risk for Go Live. Reworked configuration, client started external testing.

6/19/15- on track for go live, customer accepted work around for vacation balances. External testing no issues

06/16/2015- At Risk of cancellation, due to system limitation of converting vacation balances to dollar amount. Meeting with client on 6/19/15 to finalize whether to cancel or not.


06/09/2015- At Risk for Actual Go live, due to system limitation of converting vacation balances to dollar amount. Client to revert back to sales and follow up call scheduled for Friday.


06/05/2015- At Risk for Actual Go live, due to system limitation of converting vacation balances to dollar amount. client to revert back to sales and follow up call scheduled for Friday', N'', N'In Progress', N'PP4S715' UNION ALL
SELECT N'Hartwick O''Shea Cartwright Ltd', 996.0000, 0.0000, 1, 2014, '20140108 00:00:00.000', N'Sehnaaz Bhuttoo', '20150330 00:00:00.000', N'3/31/15', N'08/04/15:  At Risk For project Completion, client running payroll on 08/04.  To verify results on 08/07

07/14/15:  At risk for project completion, client not satisfied with second run as certain pay policies not functioning as expected.  to process one more run.

6/30/15: At risk for project completion, a number of issues came up during first transmission. 2nd pay period required to capture client''s new requirements for punches.

07/28/15: Transfer to service delayed from 7/27/15 to 8/31/15.  Tools, parature to fix SFTP issue preventing payroll data to be transmitted to Powerpay. 

6/23/15: On track for Project Completion. No issues.

6/16/15: On track for Transfer to service, First time capture has started, working on solution refinement.

6/9/15: On track for Go Live, awaiting acceptance email from client to log ticket for production environment.

6/2/15: On track for Go Live. NOCH complete on new PP account. Working on updating WFM and remapping to new account.

5/26/15: Go Live on track, client still testing. Possible escalation due to client not satisfied with Safari''s compatibility with Silverlight.

5/19/15: Go Live on track. External testing in progress. Hosting weekly calls with client for solution refinement until Powerpay is Noched, no issues

5/11/15: At Risk for Go Live, awaiting confirmation from sales to progress, client is currently testing and familiarizing with the environment.

5/5/15: Go Live on track, client changing payroll frequency from semi-monthly to bi-weekly. Payroll and sales engaged.

4/27/15: On track for Go Live. Internal testing complete. No issues

4/20/15: On track for go live. Client on planned vacation, working on setting up and testing workflows and guided processes.

4/13/15: On track for go live, client has completed training. External testing, no issues', N'', N'In Progress', N'PP9W704' UNION ALL
SELECT N'Harrison Hot Springs Resort & Spa Corp', 23040.0000, 24060.0000, 8, 2014, '20140822 00:00:00.000', N'Deensha Bunhejee', '20150518 00:00:00.000', N'4/30/15', N'08/04/2015: On Track for Transition, service still reviewing, no issues.

07/27/2015: On Track for Transition, Document sent to service for review, no issues.

07/22/2015: On Track for Transition, preparing document to send to service, no issues.

07/14/2015: On Track for First Pay, client capturing time, no issues.

07/07/2015: On Track for First Pay, client capturing time, no issues.

07/03/2015: On Track for first time capture, client starting time capture today, no issues.

06/29/2015: On Track for First Time Capture, no issues.

06/24/2015: On Track for First Time Capture, no issues.

06/16/2015: On Track for First Time Capture, uploading vacation hours on Live environment, no issues.

06/09/2015: On Track for Go-Live, client doing external testing, no issues.

06/01/2015: On Track for Go-Live, doing internal testing, no issues.

05/26/2015: On Track for Go-Live, waiting for workbook sign-off, no issues.

05/19/2015: On Track for KOM, no issues.

05/11/2015: On Track for KOM, internal knowledge transfer done, no issues.

05/05/2015: On Track for KOM, no issues.

04/29/2015- Preadmin completed. KOM will be set by Deensha&Dean. Emailed Nabiha about onsite training. Reg client for LM
04/29/2015- Prepping preadmin. NOTE: As per Dean, DO NOT put KOM date in Welcome Email, just Reps name. Dean will touch base w/ client.
03/10/2015- Prepping for preadmin. Preadmin 4/29 @2:30pmEST
03/09/2015- Prepping for preadmin. Email/followed-up w/ Veronica again on status.
03/04/2015- Prepping for preadmin. Still waiting for Veronika''s response. Emailed her again.
02/27/2015- Prepping for preadmin. Dean sent Sales email to advise May 4 KOm. Awaiting Sales to reply with preadmin date.
02/25/2015- Preeping for preadmin. Sent Dean&Sales another email w/ how to proceed as client is unhappy with start date
02/18/2015- Prepping for preadmin. Left vm&email. Suggest preadmin mid Aug. CC sales on email', N'', N'In Progress', N'PP46099' UNION ALL
SELECT N'Hamilton Duncan Armstrong & Stewart Law Corp', 4446.0000, 4116.0000, 7, 2014, '20140708 00:00:00.000', N'Natasha Manick', '20150525 00:00:00.000', N'5/31/15', N'7/28/15: On track for First Pay. Time capture in progress. No issues.

7/14/15: On track for First Time Capture. Clock setup and bio enrollment in progress. No issues.

7/3/15: On Track for go live. No issues.

06/29/15- On track for Go Live. Prepping go live. No issues.

06/23/15 - On track for Go Live. Assisting client with parallel run. No issues.

06/15/15 - On track for Go Live. Client testing in progress, solution refinement call on 6/18. No issues.

06/9/15 - On track for Go Live. Internal testing. No issues.

6/3/15 - On track for Go Live. System configuration complete and internal testing in progress. No issues.

05/25/15 - On track for Go Live. Kick Off meeting completed, awaiting client sign off. No issues.

05/11/2015- Preadmin completed.
2/25/2015- Prepping for preadmin. Preadmin 5/11@12noonEST. Payroll set-up for 3/23. Client refused train.', N'', N'In Progress', N'PP4S824' UNION ALL
SELECT N'NVR Construction Limited', 1182.6000, NULL, 9, 2015, '20150926 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL
COMMIT;
RAISERROR (N'[dbo].[tbl_Revenue_Tracker_Data]: Insert Batch: 3.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_Revenue_Tracker_Data]([Name], [Total_Finance_PEPM_Calculated], [Total_Finance_One_Time_Calculated], [Month], [Year], [Contract_Date], [Projected_Assignment], [Projected_Project_Start_Date], [Imp_Planned_KO], [Status_Comments], [Hold_Explanation], [Status], [PSID])
SELECT N'Saint John Airport Inc.', 1500.0000, NULL, 9, 2015, '20150901 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Legacy Building Solutions', 480.0000, NULL, 9, 2015, '20150904 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Safety Seal Plastics Inc', 1680.0000, NULL, 9, 2015, '20150908 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'ZAZULA PROCESS EQUIPMENT LTD', 1248.0000, NULL, 9, 2015, '20150928 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Acushnet Canada Inc', 1236.0000, NULL, 9, 2015, '20150923 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Comfort Systems Solutions Inc.; and Glomar Technologies Inc', 4620.0000, NULL, 9, 2015, '20150930 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'HOK, Inc. and HOK Architects Corporation', 4050.0000, 3600.0000, 6, 2014, '20140624 00:00:00.000', N'', '20150713 00:00:00.000', N'7/31/15', N'08/06/15: On Track for Go live, Client on Vacation. no issues.

07/28/15-On Track for Go live, Internal Testing, no issues.

07/21/15-On Track for Go live, working on config, no issues.

07/16/15-On Track for Go live, awaiting workbook signoff, no issues.

07/14/15-On Track for KOM, no issues.

07/08/15- On Track for KOM, no issues.
06/22/2015- Preadmin completed. KOM 7/13 11-1EST
03/10/.2015- Prepping for preadmin. Preadmin 6/22@10amEST
03/02/2015- Prepping for preadmin. Sent Dean another follow-up email to see if we can push the date up.
2/25/2015- Prepping for preadmin. Client is away from 7/22-8/17. Emailed Dean to see if we can start wk of 7/13 instead. Awaiting response from Dean.', N'', N'In Progress', N'PP10560' UNION ALL
SELECT N'HEALTH QUALITY COUNCIL', 2640.0000, 8410.0000, 8, 2013, '20130821 00:00:00.000', N'Sehnaaz Bhuttoo', '20150727 00:00:00.000', N'7/27/15', N'8/4/15: At for go live, client is away and has not signed off on workbook.

7/27/15: On track for KOM, welcome call completed and workbook has been received. Working on KOM Deck and updating workbook information from PP

7/21/15: On track for KOM on 7/29/2015, workbook received back, welcome call scheduled for Monday 7/27/2015.

03/04/2015- Prepping for preadmin. Confirmed withAlex Li& Colette that this is WFM, NOT HCM. Preadmin still sched for 7/9 @10sm
2015/03/02 Colette McNeil:  Contacted client and sent 1sb Intro email.
2/25/2015- Prepping for preadmin. Payrol set up 3/10. WFM preadmin 7/9 @10amEST', N'', N'In Progress', N'PP4S898' UNION ALL
SELECT N'Grouse River Outfitters Ltd', 2160.0000, 3500.0000, 2, 2014, '20140214 00:00:00.000', N'Samantha LamYeeMan', '20150420 00:00:00.000', N'4/30/15', N'7/21/15: go live delayed from 7/23/15 to 7/30/15. Process: issues with organizational structure and configuration[roles & users] client handed testing 7/22/15

07/14/15:On Track for Go Live.  Tools, issues with reporting line.

6/25/15: go live delayed from 6/29/15 to 7/15/15. Process: entitlements module not included in contract. Setting module up and client to test.

6/19/15: on track for go live, external testing, no issues

06/09/15: On track for Go Live, client doing external testing. sandbox review. No issues

06/02/15: On track for Go Live. External testing working on issues that client sent to Samantha

06/01/15: On track for Go Live. Introductory Call scheduled for tomorrow. No issues

05/26/15: On track for Go Live. External testing. No issues.

05/11/15: On track for go live. Internal testing. No issues
05/04/15: On track for go live. Working on config. No issues
04/27/15: On track for go live. No issues
04/20/15: On track for go live. No issues
04/13/15: KOM scheduled for 4/20 11am EST
04/06/15: KOM scheduled for 4/20 11am EST
03/25/2015- Preadmin completed. KOM 4/20 11am EST
2/25/2015- Prepping for preadmin. Preadmin 3/25@12pmEST', N'', N'In Progress', N'PP2B060,PP2C763' UNION ALL
SELECT N'Groupe Ultima Inc', 2400.0000, 1500.0000, 5, 2015, '20150513 00:00:00.000', N'Tej Suroowan', '20150504 00:00:00.000', N'', N'08/04/15 : At Risk for project completion.  Still no response from service.

07/28/15 : At Risk for project completion.  No response from service.

07/21/15 : On Track for project completion.  No Issues.

07/14/15 : On track for project completion.  No Issues.

7/3/15: On track for first pay. No issues.

06/29/15 - On Track for first pay.  No Issues.

06/26/15 - On Track for go live.  Sign off received.  No Issues.

06/23/15 - On Track for go live.  Sandbox released.  No issues.

06/17/15 - On Track for go live. Client agreed to new timeline. No Issues

06/16/2015 - At Risk for GO-Live.  Reviewing timeline with client.  Client was not reachable to get commitment.  Will follow up again today.

06/09/2015 - At risk for go live.Testing for IDZ mappings in progress.  To test new mapping with APP support on 6/10/15.

06/01/2015 - At Risk for go-live.  Testing for ID x, ID Y and ID Z will be completed on this Friday.  We will be able to move on once this has been tested.  Client is aware that this is being tested and that we require time to test.

05/26/2015 - At Risk for go-live.  Client is using the ID Z column in powerpay to maintain their departments due to the 3 digits limit imposed by the department column. Current XML can only map the departments from DF to Department column in powerpay. Technical Implementation team engaged and working on new XML codes for mapping Department from DF to the ID Z column in powerpay ECD 5/29/15.

Client has third party (Kronos) as time and attendance import provider on Powerpay and want the process to stay as is. Powerpay cannot have multiple providers hence DF cannot pass on employee data to Powerpay for payroll processing.  Sales rep engaged.', N'', N'In Progress', N'PP47622, PP2D508' UNION ALL
SELECT N'Groupe Optinursing Inc', 2527.2000, 4000.0000, 9, 2014, '20140903 00:00:00.000', N'Natasha Manick', '20150622 00:00:00.000', N'6/30/15', N'07/28/15 - On track for Go Live. Client testing in progress. Sales discussions in progress for SSO and My Path purchase.

07/22/15 - On track for Go-Live. Client testing in progress. No issues.

07/14/15 - On track for Go-Live. Sandbox testing in progress.No issues.

06/29/2015 - On track for Go-Live. Config in progress. No issues.

06/23/2015- On track for Go-Live. KOM completed, awaiting sign off. No issues.

06/15/2015- On track for Go-Live. Welcome Call completed on 6/15, prepping for KOM. No issues.

06/15/2015- Preadmin completed. KOM 6/22 w/ Natasha
04/10/2015- Prepping for preadmin. Preadmin 6/15@10:30amEST. Advised 
04/08/2015- Preadmin will need to get rescheduled as PP acct will be set up by 7/15. Asked Ankur to realign exp w/ client as they thought they would be live by June. Awaiting reply from Ankur.
03/30/2015- Prepping for preadmin. Preadmin 4/8 @2:30pmEST
03/23/2015- Prepping for preadmin. Left vm&email', N'', N'In Progress', N'PP4T298' UNION ALL
SELECT N'Greg Martineau Projects Inc.', 960.0000, 3100.0000, 4, 2015, '20150422 00:00:00.000', N'Deensha Bunhejee', '20150511 00:00:00.000', N'5/31/15', N'05/08/15:  AT Risk for Live Time Capture, to call client to discuss updte on Live Time Capture on 08/05.

07/28/15:  Delay First Time Capture from 07/17 to 08/04.  Tools, issues with configuration resolved on test environment.  To bring over to production environment and have client do a second review.

07/21/15: At Risk for live time capture, client redoing testing and to begin time capture end of July. No issues

07/15/15: At Risk for live time capture, touched base with client.  New Go-Live to be confirmed.

07/07/2015: On Track for Time Capture, uploading vacation balances on Live Environment, no issues.

07/03/2015: On Track for First Time Capture, no issues.

06/29/2015: On Track for First Time Capture, no issues.

06/24/2015: On Track for First Punch, reporting line issue fixed, no issues.

06/24/2015: At Risk for First Punch, client raised issue in regards to the organization reporting line. Will cal the client to work and fix this issue.

06/16/2015: On Track for First Punch, no issues.

06/09/2015: On Track for First Punch, no issues.

06/01/2015: On Track for Go-Live, Client doing testing, no issues.

05/26/2015: On Track for Go-Live, doing internal testing, no issues.

05/19/2015: On Track for Go-Live, started configuration today, no issues.

05/11/2015: On Track for KOM, Knowledge Transfer call done, no issues.

5/5/2015- Preadmin completed.
04/29/2015- Prepping preadmin. AEmailed everyone that May 11 is new KOM. Shane will contact Balir to find out if thats suitable. Awaiting response from Shane. NOTE: As per Dean, DO NOT put KOM date in Welcome Email, just Reps name. Dean will touch base w/ client.
4/23/2015- Prepping preadmin. Left vm&email for Blair. Awaiting repsonse.', N'', N'In Progress', N'PP4T919' UNION ALL
SELECT N'Greenland Nursery & Landscaping Ltd/Greenland Garden Centre', 4200.0000, 6440.0000, 3, 2014, '20140319 00:00:00.000', N'Nishna Issory', '20150720 00:00:00.000', N'7/31/15', N'7/29/15- At Risk for Go-Live. Client has the training and watched vidoes and now wants to add the Entitlement Module. Contacted Sales Rep to advise about the interest,he will contact the client and advise back. 

7/20/15- At Risk for Go-Live. KOM conducted, client going on vacation from 8/3/15 till 8/7/15.

7/17/15- On Track for KOM. Called client, left vm stating that waiting for completed workbook.

7/15/15- On Track for KOM. Initial call conducted today. Awaiting for completed Workbook. 

7/14/15 - On Track for KOM. No issues.

05/06/2015- Prepping preadmin. Preadmin 7/7 @11amEST.', N'', N'In Progress', N'PP2D257' UNION ALL
SELECT N'Global Mountain Solutions Inc', 2880.0000, 5500.0000, 7, 2015, '20150708 00:00:00.000', N'Tej Suroowan', '20150803 00:00:00.000', N'8/31/15', N'8/4/2015- Preadmin completed. KOM 8/7 @10amEST.
5/15/2015- Prepping preadmin. Preadmin 7/29 @11:30amEST
5/15/2015- Prepping preadmin. Left vm& emailed Barbra Moy. Advised KOM will remain 8/3 and that i can send the WB in advance.
5/11/2015- Prepping preadmin. Left vm&email advising KOM 8/3. Awaiting response.', N'', N'In Progress', N'PP1Q697 PP1J689' UNION ALL
SELECT N'Gladstone Hotel Ltd', 3360.0000, 2842.0000, 10, 2014, '20141021 00:00:00.000', N'Deensha Bunhejee', '20150817 00:00:00.000', N'8/31/15', N'7/29/2015- Prep onboarding. Emailed client to advise of earlier start of Aug 17.
7/21/2015- Preppin onboarding. Welcome call completed. 1st Checkpoint call 8/6 at 12:30pmEST
7/9/2015- Prepping onboarding. Emailed client to advise preadmin onboarding will needf to happen between July 20-27. Sent First contact email too. Awaiting reply.
5/11/2015- Prepping for preadmin. Preadmin 9/7 @2:30pmEST', N'', N'In Progress', N'PP4A082' UNION ALL
SELECT N'Gescoro Inc', 3840.0000, 4640.0000, 11, 2014, '20141106 00:00:00.000', N'Deensha Bunhejee', '20150601 00:00:00.000', N'6/30/15', N'08/04/2015: On Track for Transition to Service, working on transfer documents, no issues.

07/27/2015: On Track for First Pay, Client transmitting tomorrow, no issues.

07/22/2015: On Track for First Pay, Client Capturing time no issues.

07/14/2015: On Track for First Pay, client capturing time no issues.

07/07/2015: On Track for First Time Capture, no issues.

07/03/2015: On Track for First Punch, need to upload vacation value on live environment, no issues.

06/29/2015: On Track for Go-Live, client testing, no issues.

06/24/2015: On Track for Go-Live, doing test registry, no issues.

06/16/2015: On Track for Go-Live, client testing. no issues.

06/09/2015: On Track for Go-Live, doing internal testing, no issues.

06/01/2015: On Track for Go-Live, waiting for Workbook Sign-Off, no issues.

05/26/2015: On Track for KOM, no issues.

05/20/2015- Preadmin completed. KOM 6/2 9am-11amEST
5/15/2015- Prepping preadmin. Preadmin 5/20 @11:30amEST. Sent WB already.
5/11/2015- Prepping preadmin. Left msg w/ recp & emailed Toni', N'', N'In Progress', N'PP2C726' UNION ALL
SELECT N'Geos Language Corporation', 4080.0000, 4600.0000, 5, 2015, '20150529 00:00:00.000', N'Tej Surrowan', '20150706 00:00:00.000', N'7/31/15', N'08/03/15 - On Track for Go Live.  No Issues.

07/28/15 - On Track for Go Live.  Project was delayed due to specific setups required by the client.  Those can be implemented, no issues.

07/21/15 - At Risk for Go Live.  Premiums might not be working the way expected by client.  Waiting for client''s availability to discuss.  Might be a potential cancellation.

07/14/15 - On Track for Go Live.  No Issues.

06/16/2015- Preadmin completed. KOM 7/8 @ 2:30pmEST. Awaiting to be reassigned.
5/20/2015- Prepping preadmin. Receptionist called back and advised her that KOM will remaidn 7/6 and conv. has to be done. Theresa will call me upon her return 6/1.
5/15/2015- Prepping preadmin. Left vm&email for client. Advised cannot push up KOM.
5/11/2015- Prepping preamdin. Client was expecting to be live by July. Emailed Dean & sales. Awaiting response.', N'', N'In Progress', N'PP4U116' UNION ALL
SELECT N'Foster LLP', 2664.0000, 997.0000, 8, 2014, '20140827 00:00:00.000', N'Cindy Corriveau', '20150629 00:00:00.000', N'6/30/15', N'08/04/15- On Track for live, Audit and Test in Progress, no issues

07/27/15- On Track for live, Audit and Test in Progress, no issues

07/20/15- On Track, Client Unit Testing in Progress, no issues

07/13/15- On Track, Config and Internal testing Completed Client Testing has Started

07/06/15 - On Track for go live, Config started, no issues 

6/29/15 - On Track for go live, KOM Completed/awaiting sign off, no issues

6/23/2015 - On track for KOM on 6/29
5/29/2015- Preadmin completed. KOM 6/29 @ 10-12-pm EST.
5/25/2015- Prepping preadmin. Emailed Tyson
05/14/2015- Prepping preadmin. Left msg w/ Chris @ Resto. Also emailed Tyson advising June 29 KOM. Awaiting reply.', N'', N'In Progress', N'PP4P727' UNION ALL
SELECT N'Fort Mac All-Day Restaurant Inc', 3150.0000, 3500.0000, 5, 2015, '20150527 00:00:00.000', N'Deensha Bunhejee', '20150518 00:00:00.000', N'5/31/15', N'08/04/2015: On Track for First Pay, client capturing time, no issues.

07/27/2015: On Track for First Pay, client capturing time, no issues.

07/22/2015: On Track for Time Capture, client training the employees, no issues.

07/14/2015: At Risk for Time Capture, client has not received clocks yet. Gary Capello working on expedite

07/07/2015: On Track for Go-Live, external testing complete, need to upload employees. no issues.

07/03/2015: On Track for Go-Live, Adil needs to complete Prism conversion to PP, no issues.

06/29/2015: On Track for Go-Live, client testing, no issues.

06/24/2015: On Track for Go-Live, client testing, no issues.

06/16/2015: On Track for Go-Live, internal testing in progress, no issues.

06/09/2015: On Track for Go-Live, doing configuration, no issues.

06/01/2015: On Track for Go-Live, waiting for Workbook Sign-Off, no issues.

05/26/2015: On Track for rescheduled KOM, no issues.

5/15/2015- Preadmin completed. KOM May 22 @12noon. Order 5 HID clocks& 75 HID badges (sales needs to have client sign amendeed agreement for missing badges. Conversion for 6/25. Client in June 22 PP Webinar', N'', N'In Progress', N'PP4U148' UNION ALL
SELECT N'Flavorcan International Inc', 4680.0000, 5704.0000, 4, 2015, '20150429 00:00:00.000', N'Tej Suroowan', '20150615 00:00:00.000', N'6/30/15', N'08/03/2015 - On Track for project completion.  No issues.

07/28/2015 - On track for Go-Live, sign off already received.  Parature ticket already logged.  No Issues.

07/23/2015 - At Risk for Go-Live.  Client is away in the US.  Sales rep engaged to get sign off to move to production.

07/21/2015 - On track for Go-Live.  No Issues.

07/14/2015 - On Track for Go-Live.  No Issues.

06/29/2015 - On Track for Go Live.  Client committed for Go Live date.  No Issues.

06/23/2015 - On Track for Go Live. No Issues

06/15/2015 - On Track for Go Live, configuration started.  No Issues.

06/10/2015 - On Track for Golive.  Waiting for sign off.  No Issues.

6/2/2015- Preadmin completed. KOM 6/9 @11amEST
5/22/2015- Prepping preadmin. Emailed Ed to advise we''ll contact him of KOM date as per Dean.', N'', N'In Progress', N'PP4S873' UNION ALL
SELECT N'Fast-Sexing Technologies ULC', 7440.0000, 3810.0000, 7, 2015, '20150709 00:00:00.000', N'Deensha Bhunhejee', '20150803 00:00:00.000', N'8/31/15', N'08/04/2015: On Track for Go-Live, waiting for workbook sign-off, no issues.

7/15/2015- Preadmin completed. KOM 8/3 10-12EST. Assigned to Deensha
7/3/2015- Prepping onboarding. Left vm&emailed client to advise 8/3 KOM. Awaiting response.
5/29/2015- Prepping preadmin. Preadmin @9/1 @11amEST
5/20/2015- Prepping preadmin. Left vm&email advising 9/14 KOM.awaiting reply', N'', N'In Progress', N'PP1H197' UNION ALL
SELECT N'Family First Health Association and Family First Family Health Team', 2256.0000, 6365.0000, 6, 2014, '20140623 00:00:00.000', N'Natasha Manick', '20150615 00:00:00.000', N'6/30/15', N'7/28/15: On track for First Time Capture. Account live, web clock setup in progress on client side.7/22/15: On track for Go-Live. Prepping go live. No issues.

7/14/15: On track for Actual Go Live. Prepping go live and first pay. No issues.

7/3/15: On track for Go-Live. Client testing in progress. No issues.

6/29/2015 - On track for Go-Live. Client testing in progress. No issues.

6/15/15- On track for Go-Live. System Config completed, awaiting HR import from client. No issues.

6/11/15- On track for Go-Live. Sign-off received, config in progress. No issues.

6/4/2015- Prepping preadmin. Client did not attend preadmin meeting. Emailed Welcome Email. registered LM&MP. Left detailed vm & advised KOM June 10& Natasha will help fill out the workbook.
6/2/2015- Prepping preadmin. Client asked to call back Friday.', N'', N'In Progress', N'PP4U350' UNION ALL
SELECT N'Envision SQ Inc.', 504.0000, 699.0000, 9, 2014, '20140903 00:00:00.000', N'Tej Suroowan', '20150702 00:00:00.000', N'7/31/15', N'08/03/15 : At Risk for Go-Live.  Sick entitlement might not be implementable.  Client will not give workbook sign off if it is not implementable.

07/28/15 : At Risk for Go-Live.  All solutions that couldn''t be implemented have been cleared out with client yesterday.  Project will resume once client sends the workbook sign off.

07/21/15 : At Risk for Go-Live.  Waiting to hear back from client to decide future steps on non implementable solution (vacation in dollar amounts).  Might be a potential cancellation.

7/3/15 : At risk for Go-Live.  Potential cancellation due to non implementable solution. Client want to have vacation balances in dollars on Dayforce which is not possible.

7/3/15: On Track for KOM. No issues.

06/29/2015 : On Track for KOM, invite already sent.  No Issues.

06/12/2015- Preadmin completed. KOM 7/2
6/2/2015- Prepping preadmin. Left vm&email. Awaiting reply.', N'', N'In Progress', N'PP4T192' UNION ALL
SELECT N'Emond Harnden LLP', 360.0000, 0.0000, 12, 2014, '20141222 00:00:00.000', N'Natasha Manick', '20150709 00:00:00.000', N'7/31/15', N'7/28/15 - On track for Actual Go Live. Config in progress.

7/22/15 - On track for KOM. Awaiting client sign off. No issues.

7/14/15 - On track for KOM. Welcome call completed on 7/14. KOM scheduled on7/17. No issues.

7/9/2015- Preadmin completed. KOM July 17 1-3pmEST & assigned to Natasha.

06/08/2015-email 4 sent-PM', N'', N'In Progress', N'PP1F348 PP1F349' UNION ALL
SELECT N'Emblemtek Solutions Group Inc.', 2676.0000, 6103.0000, 1, 2014, '20140130 00:00:00.000', N'Staline Lamarque', '20150727 00:00:00.000', N'7/31/15', N'8/06/15: On Track for Go Live. No issues

7/28/15: On Track for Go Live. No issues

7/21/15- On Track for KOM, welcome call, no issues.

7/15/2015- Preadmin completed. KOM 7/27
7/13/2015- Prepping preadmin. Left vm&email', N'', N'In Progress', N'PP4U640' UNION ALL
SELECT N'Elliott Turbomachinery Canada Inc.', 4080.0000, 16915.0000, 8, 2013, '20130823 00:00:00.000', N'Tej Suroowan', '20150817 00:00:00.000', N'8/31/15', N'7/31/2015- Preadmin completed. KOM TBD by client. Advised Deensha
7/29/2015- Prep onboarding. Email client KOM 11/2. Emailed 1st contact email.', N'', N'In Progress', N'PP4V361' UNION ALL
SELECT N'Ellard Enterprises Limited O/A Perth Home Building Centre; 399328 Ontario Limited O/A Lookout Home Hardware Building Centre and 2353091 Ontario Limited', 9378.7200, 11381.2500, 10, 2014, '20141030 00:00:00.000', N'', '20151110 00:00:00.000', N'', N'8/4/15: On track for go live, client has returned workbook with parameters to be implemented', N'', N'In Progress', N'PP4R207' UNION ALL
SELECT N'Eitz Chaim Schools', 1680.0000, 2500.0000, 6, 2015, '20150617 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Earlswood Developments Inc.', 0.0000, 0.0000, 11, 2013, '20131105 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'EH Lawco Inc', 3520.0000, 870.0000, 12, 2014, '20141222 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Drake Meat Processors Inc', 2361.6000, 3680.0000, 5, 2015, '20150529 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Dr. Lawrence Cogar Dental Corp', 1836.0000, 14201.0000, 12, 2013, '20131206 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Dr. Alexander Fu Dentistry Professional Corporation', 720.0000, 3100.0000, 2, 2015, '20150217 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Dr Wayne Okamura Inc', 1080.0000, 997.0000, 11, 2014, '20141124 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Dr Piotr Francuz', 2424.0000, 798.0000, 5, 2014, '20140523 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Dorothea Knitting Mills Limited', 6720.0000, 2760.0000, 5, 2015, '20150529 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Decor Innovations / Distinctive Rail Inc.', 1188.0000, 3000.0000, 8, 2015, '20150825 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Dallan Forestry LP', 5280.0000, 2996.0000, 3, 2015, '20150326 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Daiya Foods Inc', 7200.0000, 5400.0000, 10, 2014, '20141027 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'DR. Steven V. Zizzo Medicine Professional Corporation', 7224.0000, 3100.0000, 4, 2015, '20150410 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'DR. MARIANETTE CRISOL DENTISTRY PROFESSIONAL CORPORATION', 1656.0000, 3048.0000, 2, 2014, '20140228 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'DBC Marine Safety Systems Ltd.', 3960.0000, 3247.0000, 4, 2014, '20140422 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Crawford Roofing Corporation', 2160.0000, 3836.0000, 11, 2014, '20141105 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Crane Worldwide Logistics Canada Inc', 672.0000, 2000.0000, 5, 2015, '20150506 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Cotico Inc ( Les Hotels Nouvelle-France)', 2880.0000, 5880.0000, 8, 2014, '20140826 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Confederation Chiropractic Clinic', 864.0000, 997.0000, 3, 2014, '20140310 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Comtek Advanced Structures Ltd.', 3744.0000, 3194.4000, 11, 2014, '20141130 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'College of Physiotherapists of Ontario', 1488.0000, 3800.0000, 1, 2015, '20150105 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Chip and Dale Homes Inc', 9360.0000, 9200.0000, 5, 2015, '20150520 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Chelmsford Drug Mart Ltd. O/A Chelmsford IDA Pharmacy', 2160.0000, 898.0000, 11, 2014, '20141114 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL
COMMIT;
RAISERROR (N'[dbo].[tbl_Revenue_Tracker_Data]: Insert Batch: 4.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[tbl_Revenue_Tracker_Data]([Name], [Total_Finance_PEPM_Calculated], [Total_Finance_One_Time_Calculated], [Month], [Year], [Contract_Date], [Projected_Assignment], [Projected_Project_Start_Date], [Imp_Planned_KO], [Status_Comments], [Hold_Explanation], [Status], [PSID])
SELECT N'Centre Des Services Communautaires de Vanier', 4032.0000, 6400.0000, 7, 2014, '20140727 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Centennial College Student Association Inc', 14400.0000, 16200.0000, 7, 2014, '20140728 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Caseware International Inc. and Caseware Idea Inc', 8970.0000, 4480.0000, 5, 2015, '20150529 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Capilano Students'' Union Association', 594.0000, 5880.0000, 12, 2014, '20141204 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Canadian Canola Growers Association', 1440.0000, 4800.0000, 2, 2015, '20150224 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Canadian Bumper Recycling Ltd', 2442.0000, 3700.0000, 4, 2015, '20150408 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Calibre Sales Inc', 1200.0000, 3600.0000, 2, 2015, '20150220 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Caldic Canada Inc', 5187.0000, 3328.0000, 6, 2015, '20150610 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'CaesarStone Canada Inc', 7020.0000, 7015.0000, 3, 2015, '20150312 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'CCCoppex Inc.', 546.0000, 3000.0000, 7, 2014, '20140729 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Burlington Merchandising & Fixtures Inc', 1920.0000, 4480.0000, 1, 2015, '20150113 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Buhler Canada Inc', 768.0000, 6312.0000, 6, 2014, '20140605 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Blanco Canada Inc', 6576.0000, 3200.0000, 2, 2015, '20150226 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Biggar and District Credit Union; and 101197519 Saskatchewan Ltd o/a Biggar Insurance Services', 2220.0000, 5700.0000, 5, 2015, '20150526 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Big Bear Contracting Ltd.', 2040.0000, 798.0000, 11, 2014, '20141105 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Bestcare Retirement Residency Inc', 960.0000, 2800.0000, 11, 2014, '20141124 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Best Way Stone Limited', 6768.0000, 8475.0000, 3, 2015, '20150331 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Beanfield Technologies Inc', 4968.0000, 4680.0000, 2, 2015, '20150212 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Beacon Lite Ottawa Ltd.', 3360.0000, 4600.0000, 4, 2015, '20150414 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Barton Auto Parts Limited', 3648.0000, 2828.8000, 8, 2014, '20140808 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Bankers Petroleum Ltd', 22210.0000, 3040.0000, 3, 2014, '20140318 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Bamco Custom Woodworking Inc', 3150.0000, 3450.0000, 1, 2015, '20150114 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'BETA5 Chocolates Ltd', 864.0000, 3100.0000, 6, 2015, '20150603 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Automotive Data Solutions Inc.', 3780.0000, 3350.0000, 7, 2014, '20140721 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Autocar Preference Ltee and 2423-9378 Quebec Inc', 2814.0000, 8800.0000, 3, 2015, '20150331 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Ausculsciences Canada Inc', 792.0000, 5040.0000, 6, 2015, '20150603 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Aquilini Group Properties LP dba Holiday Inn Express', 2700.0000, 8187.5000, 12, 2013, '20131214 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Andersen Pacific Forest Products Ltd', 6192.0000, 7218.4000, 6, 2014, '20140611 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Amiskwaciy Cultural Society', 1800.0000, 699.0000, 11, 2013, '20131113 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Amel Group Inc', 888.0000, 2560.0000, 6, 2015, '20150603 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'Allied Reinforcing Inc', 3360.0000, 798.0000, 4, 2014, '20140429 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL UNION ALL
SELECT N'All The Best Fine Foods Ltd', 2880.0000, 2070.0000, 8, 2015, '20150827 00:00:00.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL
COMMIT;
RAISERROR (N'[dbo].[tbl_Revenue_Tracker_Data]: Insert Batch: 5.....Done!', 10, 1) WITH NOWAIT;
GO

