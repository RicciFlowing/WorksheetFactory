[33mcommit 6746ad337b7631589b3037eb6943e27afa7bab45[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Feb 28 11:18:36 2016 +0100

    Renamed groups.show route to group to flatten route hierachy

[33mcommit 6e7e349033a0c2895c470347d626f5123128d14d[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Feb 28 11:06:31 2016 +0100

    Separeted worksheet rendering in seperate index route to replace part of the template when changing to results

[33mcommit 7ffaa7f74e8f989cd6cd0b65c8a79bda63aed4cd[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Feb 28 10:30:36 2016 +0100

    Added basics statistics per worksheet_set

[33mcommit 5cc5c2dbdfaa1b86fed47b2378ae1a968c6edae9[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Feb 27 11:52:07 2016 +0100

    Finished the result creation page. Also fixed issues in the backend caused by serializing has_many and belongs_to relations both way

[33mcommit fec2884c307c09117067f4abfff52c983bd82bf6[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Fri Feb 26 10:48:18 2016 +0100

    Refactored the backend results plays now the role aof association from question to worksheet

[33mcommit 78b9524cb550a528614ae01e1c83614d921a8746[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Fri Feb 26 10:38:25 2016 +0100

    Removed groups from results

[33mcommit 97e45ccf0e40f7c2355ec4565fcdf55aec007aa9[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Feb 25 22:13:20 2016 +0100

    Added a custom number input component

[33mcommit becafd5993250654b1db78d389e5543bf1e0e36f[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Feb 25 20:51:30 2016 +0100

    Restructered the result creation to its own route directly under groups show

[33mcommit 91af1bd9c8da35d929c48016ba7322272a25ba9f[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Feb 25 12:21:06 2016 +0100

    Reddesigned the worksheet-ste_tag

[33mcommit b6d56bbc03bbadc70868e69709df4fc34254e520[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Feb 25 11:21:09 2016 +0100

    Removed debug log messages

[33mcommit 7b73e29652ea0e01f0c7e137a46cfbfd69a58f7e[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Feb 25 10:48:18 2016 +0100

    Added some bootstrap styling

[33mcommit fe6d22cd91c11e957d871e22123e6fc52616991a[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 23 20:33:33 2016 +0100

    begin switching to bootstrap elements

[33mcommit ace80228e8555787eba519a338932cf025f0702f[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Feb 22 15:31:10 2016 +0100

    Added a k-tex element to render text inline

[33mcommit 267b5e64910eb20d36bcf4e4c570d07636957e87[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Feb 21 15:58:24 2016 +0100

    Added a linkt to result creation to the archive button

[33mcommit 38d64bf99e4af75fbe982093e1585a1f151dafcc[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Feb 21 13:44:24 2016 +0100

    Added results creation

[33mcommit 98d9eeab7062c6b1a06b3fe9286b78d3f275d410[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Feb 21 11:59:58 2016 +0100

    Added frontend result resource

[33mcommit 376d8a32844cfc85466e1cb94de742a3d54b8f43[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Feb 21 11:59:08 2016 +0100

    Added controller actions [show, create, destroy] to ResultsController

[33mcommit d298b6c52f97b8a3b63504901a05ccfe4e91bb12[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Feb 21 11:53:29 2016 +0100

    Added result resource

[33mcommit 4061e12ce7f5cca3ff5d0a6b5aa09c20d29157c0[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Fri Feb 19 16:59:35 2016 +0100

    Fixed indention for database.yml

[33mcommit b5f2ffa51f0dad11905ad448022e28d440c6c643[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Fri Feb 19 16:59:03 2016 +0100

    More styling

[33mcommit d525eb0b140a1961b8718aa6aed5b60db325d4b9[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Fri Feb 19 16:48:14 2016 +0100

    Styled sector listing on factory creation page

[33mcommit 30daccc478c024db4d23e0aeaf0807f30b3f7b5f[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Fri Feb 19 16:04:58 2016 +0100

    Added a seperate remove skills drop area in factory creation

[33mcommit 196b16be4f6e869739ad2f40de856d6a5d2dbb53[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Fri Feb 19 15:56:35 2016 +0100

    Switched db to pg. Also fixed a bug related to migration order

[33mcommit 12df08435d11005e6f5b7165165cd69afe09258a[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Feb 18 20:18:14 2016 +0100

    Added current dir to load path in seeds.rb

[33mcommit 89db673c2c34ffd5e11237b6907390a501c742af[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Feb 17 21:47:43 2016 +0100

    Added a basic file change survelance

[33mcommit 5973d60fad39f36c3508cc498be2e071385291cd[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 16 18:03:06 2016 +0100

    Fixed a bug in automatic settitles. Now the name is based on the factory and the group

[33mcommit ca1ae56a1666edcb5b529eaf2246ea220069cd74[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 16 18:01:02 2016 +0100

    Added automatic WorksheetSetTitle

[33mcommit 6216dacd677e85bcfd6a32378e8b319a8c991d29[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 16 16:55:15 2016 +0100

    Added index and show action on sectors controller

[33mcommit 7c3956ead53f10bd45453f7a5d57098e131caed4[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 16 16:54:24 2016 +0100

    Made skill selection un factory creation easier as it is now sorted by sector

[33mcommit 6104c5471ada24cf2d2cf201c49317c6a895dec8[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 16 16:24:19 2016 +0100

    Added validation for skill.name

[33mcommit 83aca9713402a1bbbadaac7d54b13505184b00e6[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Feb 15 17:03:21 2016 +0100

    Completed creation of seeding dsl

[33mcommit f65e5b48b776ed52cb2a75170380f036aaa6acfb[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Feb 14 13:06:38 2016 +0100

    Fixed a spelling bug

[33mcommit da9fdb9bcc31d434ca63d748c6115fd5b2e01383[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Feb 14 13:04:32 2016 +0100

    Basics of a seeds_dsl. WIP commit

[33mcommit 3e6c472437616d5eb34fabae0f88ee806232ac68[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Feb 13 12:43:19 2016 +0100

    Added sector_id to skill table

[33mcommit 4342d4cd5fb5cc8fc2a17db965ffe75c1f4ab765[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Feb 13 12:40:55 2016 +0100

    Added a sector resource

[33mcommit 3f4c759e4ee5ce13c4ec3d22ab6dcc53af135441[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Feb 13 12:34:34 2016 +0100

    Added subtraction and division to Basics::Fraction

[33mcommit 2b253b7ecf3180198f902cee8004172bfc0335a0[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Fri Feb 12 12:52:41 2016 +0100

    Structed basics module

[33mcommit d65b8193a3ea06c486c24e5c1a0fb6ead87efac5[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Feb 11 19:00:57 2016 +0100

    Begin building a basic variables suply

[33mcommit a80033dc2d4c88c94241f0d2a4020317dedb7df2[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Feb 11 18:49:11 2016 +0100

    Moved seeds to seperate files

[33mcommit 7173df2b9213ea9c58afa8b11e4428a454c859fd[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Feb 11 16:59:06 2016 +0100

    Added seeds_dir to .gitignore

[33mcommit 933199e2d64d71650cb05c2bc5af703eb59a21bd[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 9 12:31:32 2016 +0100

    Fixed link on worksheet.show

[33mcommit 0582d3884f4c8cf9c130017f7c69f4964d039526[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 9 12:24:45 2016 +0100

    Added transistion to created set after nestes create_set route

[33mcommit dbdd732740167a39693844b58889d43830949825[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 9 12:18:05 2016 +0100

    Added a set deletion button

[33mcommit 2e3d3d3d788cd40f4b5effa8c213747fed542ede[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 9 12:09:37 2016 +0100

    Removed unused code

[33mcommit 81fb1b447ec56cd6257a50a7fe397df5e5ca07f3[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 9 12:06:07 2016 +0100

    Added grade to group-item

[33mcommit a4e21e5eaac4a626f87d9e9b67b1ef6b88b1304b[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 9 12:00:43 2016 +0100

    Add some styling

[33mcommit b8d91cd128d503ba5a47153672d7a903e943021b[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 9 11:39:02 2016 +0100

    Hide Archive if there are no archive worksheets

[33mcommit 503db046846e1d62a0e1dc61710a4bd95cf10e72[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 9 10:57:37 2016 +0100

    Moved set rendering in own nested route under groups.show

[33mcommit b35c6544c3c951a3476e7680cec0ddd9d8ea4a09[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 9 09:38:00 2016 +0100

    Added hide archive action to worksheet-set-tag

[33mcommit 68065c742bf62c3cde2f2f8f5c975e369bc9b8d5[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Feb 8 18:31:27 2016 +0100

    Removed IvyTabs as is caused a bug when transitioning

[33mcommit 30db71b3d031ba30f2d0ab201629324acc1f7384[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Feb 8 18:06:53 2016 +0100

    Added tabs for the worksheet_sets

[33mcommit aa6296eb9c36ffdc5f60170b5fe019dfb7715938[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Feb 8 17:10:28 2016 +0100

    Added a link to the worksheets_new route from groups.show

[33mcommit d7b1f5ef886ca3803a35226e3143360a56aedcba[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Feb 8 17:01:47 2016 +0100

    Adapted backend serializers to load associations correctly

[33mcommit 163ce80ec74d282e55f4d33e59f74e0cb67896a3[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Feb 8 16:53:48 2016 +0100

    Created WorksheetSet bew route

[33mcommit 0318a925612dc8c77dffc9cf7a323151c2a50b64[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Feb 8 16:01:23 2016 +0100

    Added worksheet-sets to groups show template

[33mcommit 6c6b563bd8e4e467d3ccbf60a2e72ed34c025a08[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Feb 8 15:58:34 2016 +0100

    Removed some old and unused code from groups.show controller

[33mcommit fb58c865e4257ff99158744d56991cab4879ede3[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Feb 8 15:56:58 2016 +0100

    Fixed worksheet creation

[33mcommit 0d255cbbfd9ab29bb1289af5078854fe4dfcfd90[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Feb 8 15:27:10 2016 +0100

    Moved refershing and archiving worksheets in the worksheet-short component to make it more self contained

[33mcommit 0ef740ff7e46f5782c1c06878fe50ed8ed6a68eb[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Feb 8 15:18:21 2016 +0100

    Crafted a first version of a worksheet-set component

[33mcommit 24a737f79f067fe735ebc0bbe3b08322739bea2a[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Feb 8 14:10:20 2016 +0100

    Added controller actions for WorksheetSetController

[33mcommit fa9f8f5b206055fc4c53e366df26d380f44593a0[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Feb 8 14:03:22 2016 +0100

    Fixed casing of multi word model names

[33mcommit b28076c4451956d083620e5fe53e6110b28271c9[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Feb 7 20:45:12 2016 +0100

    Added sets resource to frontend

[33mcommit 2d98595c86464dabe7cb59960959ad256f46a359[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Feb 7 20:43:07 2016 +0100

    Fixed group creation

[33mcommit 0d612d5c34f630def1c8100364da1cd122242a7d[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Feb 7 20:23:22 2016 +0100

    Added association between worksheet and worksheet_set

[33mcommit f981f93122a64a693efb4b8a74f8635e22c7bd24[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Feb 7 20:21:22 2016 +0100

    Fixed association between group and worksheet_sets

[33mcommit 89e161270ffeeb8dbc29a39c59e409c5cf2c3a69[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Feb 7 20:19:13 2016 +0100

    Removed factory from groups

[33mcommit 5bf9051c947d23714cb7e015256fac2aeb9577b3[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Feb 7 20:17:42 2016 +0100

    Added WorksheetSet resource

[33mcommit 7fd3ae33ff4840b9b9e885373607f556728e805e[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Feb 6 15:25:28 2016 +0100

    Installed ember-cli-chart

[33mcommit d33a483882f3c06fe1213b0ed64509d8d24e467e[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Feb 6 15:23:53 2016 +0100

    Added more seeds

[33mcommit 523dd6120af82bc58fe2b62db0ba8f77e6aeda12[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 2 13:19:40 2016 +0100

    Removed temp. logging message

[33mcommit 6a03d96255d886d8855656cb6c2074d8ba818703[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 2 12:48:01 2016 +0100

    Added some styling and fixed a bug in the factory creation fomr

[33mcommit dd6248ada93b6b4e365f8b659fa379901c05bf77[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 2 12:10:25 2016 +0100

    Added drag and drop skill selection to factory creation

[33mcommit 0757b94c60298963383bd84d53a8250281ff6b19[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 2 11:05:34 2016 +0100

    Fixed bugs in tex rendering. Now Rendering takes place per question

[33mcommit a8870313195a59df53f54d9b6e66654be75c65fd[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Feb 2 09:57:07 2016 +0100

    Added katex for rendering formulas

[33mcommit 5315cc14f6719f8253bd1ff09d50236350f94888[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Feb 1 12:09:31 2016 +0100

    Added more skills to the seeds file

[33mcommit b5c624a602d55a1e0267184850cf7919b91b138d[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Jan 31 12:33:51 2016 +0100

    Partially used now seeder in seed file

[33mcommit 668a76bddc02f2e63f78a3c10757dc2cda579c71[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Jan 31 12:30:09 2016 +0100

    Added a new seeder implementation

[33mcommit aed027424789290b6b30777088b0864838b5d29d[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Jan 28 16:57:42 2016 +0100

    Removed a bug in the worksheet new route causing to fast transitioning to a new route

[33mcommit 02341f6c6c2a7cf4726809bd7e15fe97bd07248c[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Jan 27 20:28:04 2016 +0100

    Fixed a bug in the action handling of the group-item

[33mcommit 46288151706da90f6063ad92585f0cfb305a16c9[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Jan 27 18:37:33 2016 +0100

    Fixed a bug that caused an error on group creation

[33mcommit ab723a743a88f67bdd773f586f7724a5596b593f[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Jan 26 20:02:06 2016 +0100

    Added a Seeder module

[33mcommit 81ed7793f5914c772330558cc3c61883cbf338f8[m
Merge: 474cf20 30a84d2
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Jan 25 16:13:16 2016 +0100

    Merge branch 'Archive'

[33mcommit 30a84d2ec94c071606d0fb9d1a46e8e981415f2a[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Jan 25 16:12:32 2016 +0100

    Added a button to toggle the worksheet archive

[33mcommit 9719a9466e13ef54b4f784af28068c74b314e90b[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Jan 25 13:29:34 2016 +0100

    Added a worksheet archive to the groups

[33mcommit e5a4f454ea2f08f565c473e1ccdf9749236aff12[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Jan 24 13:30:53 2016 +0100

    fixed strong parameter check

[33mcommit ca5c9ceb805b72b6ef28ca0f90aae1e419476eeb[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Jan 24 12:41:13 2016 +0100

    Fixed backend worksheet update ethod

[33mcommit 474cf200e93ec4238f56019f467421d9fb652a47[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Jan 23 20:58:22 2016 +0100

    Fixed empty factory creation bug

[33mcommit 5b43080925dde2f796183f415e7f2b96c76c8033[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Jan 23 20:46:35 2016 +0100

    Added worksheet update to archive worksheets

[33mcommit ef267c56ee930e23468545280f5a418760a480b8[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Jan 20 19:13:01 2016 +0100

    Added archived to worksheet in backend

[33mcommit 69e1655c989e46e378a63bc3d53330b8dfec1a8a[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Jan 19 17:42:37 2016 +0100

    Fixed problem of showing n+1 unsaved groups

[33mcommit abb19808e1939b1973952b441d298ffd76544272[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Jan 19 17:35:53 2016 +0100

    extended the highlighting to the groups.new route

[33mcommit c0579f597d262db90dad02e59074a7ecefad585b[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Jan 19 17:22:02 2016 +0100

    Changed worksheet creation to automatically assign an worksheet title

[33mcommit ffb125ed6514cb7133c4779aa818908a41748f36[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Jan 19 16:48:25 2016 +0100

    Refactored the group highlighting to be consistent after reload and route changes

[33mcommit 254c07ede09862b7496549bb1a0fd364f26c0f5d[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Jan 19 09:45:24 2016 +0100

    Added basic support for groups highlighting

[33mcommit 22a99e4046744c6370355ca1d3849d0fbb112bf7[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Jan 19 09:05:03 2016 +0100

    Removed unnessary if statement in the grouo-item component

[33mcommit bbc757eb2213fa66667eb01201c04111b0fe8797[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Jan 18 16:05:20 2016 +0100

    Changed the behavier of group item to transition if clicked

[33mcommit 8219b222419d251a8043fbbe9584a622852adff7[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Jan 18 15:44:17 2016 +0100

    Refactored group-item  in a component

[33mcommit 592cb2a7ae485d1bbc907ebcd4a1387d6476e26e[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Jan 17 15:16:47 2016 +0100

    Moved groups creation to own route

[33mcommit 0f8f996f44fc234e785af7734db0339f6cbc1e63[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Jan 17 13:29:59 2016 +0100

    Changed groups show page to use outlet rendering

[33mcommit baad905421451bfc1c4fe940fa9cd541396d8928[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Jan 17 13:18:13 2016 +0100

    Added a back button to groups show page

[33mcommit 0036398313b19d512e9dd9fca57da7ffccfbd4c1[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Jan 17 13:06:44 2016 +0100

    Fixed the behavior of the worksheet form to not trigger a reload on pressing enter in an input field

[33mcommit 9dc81861c1f64d6c77bd4534bdd777722f7f2dbf[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Jan 17 12:57:53 2016 +0100

    Added delete actions on worksheets

[33mcommit b15a27d7cc4f4f165b1581a77ce1f9a756dd505f[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Jan 17 11:58:06 2016 +0100

    Fixed a bug in the groups show note. Which causes loading all groups

[33mcommit 855a7eebe79bece68ff96a2718b82cbaa74a6e9c[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Jan 12 16:31:34 2016 +0100

    Refactored worksheet lsiting on groups show page to use a component

[33mcommit b1fec60184ba604e17369d7688cc90148f6c5f85[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Jan 11 17:38:57 2016 +0100

    Updated a computedProperty to using Ember.computed.alias

[33mcommit a43b974c51aa4223a02ad0f3d38bdcc6c5945888[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Jan 11 16:55:38 2016 +0100

    Chanfged link-to to use group.id. This way the group model is loaded async

[33mcommit c7d8af3829db00294864f790cbb43869e83f6be1[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Jan 10 12:08:59 2016 +0100

    First part of changing to ascync resourfce loading

[33mcommit ffe28e9da60ba56fd01bd1a8b923d307d0dbda41[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Jan 9 16:54:45 2016 +0100

    Extended worksheet creation

[33mcommit efbc61053175e99b540900553120b9536c33d97b[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Jan 9 12:03:05 2016 +0100

    Added first flashmessages

[33mcommit 4957a73e2a792145e4433123f57a8ae8596c114d[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Jan 9 11:57:08 2016 +0100

    Added rollback of unsaved groups. The previous behavior caused the duplication of unsaved worksheets afte transisitions

[33mcommit a18f32a2107eb6726a68ecc6d5b067c9f740d6c9[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Fri Jan 8 20:28:25 2016 +0100

    Added ember-cli-flash

[33mcommit 903a83df634a6c42ff3952e5e071ebe796fc713a[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Fri Jan 8 20:11:45 2016 +0100

    Added emmber-validations

[33mcommit bc685d4b157956c57ab2aaf1688938fbc3bb7f81[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Fri Jan 8 20:06:02 2016 +0100

    Added validation in the backend

[33mcommit 046ed7712ed52d21eca55ba73d3d3d15ef485cbd[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Fri Jan 8 19:35:52 2016 +0100

    Added some styling

[33mcommit e779a34647cde928c05f2746f7c69f962e1a67e7[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Jan 7 18:38:29 2016 +0100

    Added delete operation on groups

[33mcommit 0000f6eb3741c3e071bb5f64c4020d4afc5692e2[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Jan 6 19:33:52 2016 +0100

    Fixed form labels on groups form

[33mcommit 83008ddc11b5ed6290d5555496b0b4582762c0b9[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Jan 6 19:32:46 2016 +0100

    Hide the form on the groups page and added an show button

[33mcommit 153353eb450c16392f33f9cb126fb546eaaf78c2[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Jan 6 17:03:24 2016 +0100

    Added new properties to group. Changed the implementation of creating groups to use meber input helpers

[33mcommit 7d4c5f231d672255a2258aa8dfa1f81110463091[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Jan 4 20:43:14 2016 +0100

    Completed factory creation by creating factory_skill_association in parallel

[33mcommit a0732a776a0a8d30ed5d995307ef7a16e98dbb3e[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Jan 4 17:59:51 2016 +0100

    Added Factory_Skill_assocation create endpoint to api

[33mcommit 820d0467f2f5ebfc2a338c48df91f94c65bcd642[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Jan 3 12:34:53 2016 +0100

    Added factory new route (association of skills currently not working)

[33mcommit 79c3eecb3516a1e27a58e8763262eb9ed2623aa6[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Jan 2 21:24:20 2016 +0100

    Changed worksheets show page to use a table

[33mcommit 22a9f38eed727b412151f0c0ec82d1ae47fc672a[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Jan 2 19:41:39 2016 +0100

    Added a index page

[33mcommit 782792bb322fa572fa6e60946a01ebb6d6a19e2b[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Jan 2 19:25:30 2016 +0100

    Fixed seeds

[33mcommit 5d57c638e880294e144a20bff219c58b88af96bf[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Jan 2 19:24:05 2016 +0100

    Added more seeds

[33mcommit b4057102d93b278666501c5da3d76a5bda094a50[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Jan 2 18:57:18 2016 +0100

    Added form-control classes to worksheet form

[33mcommit a18584d6a164f6ada8cf442e0a592d56ffa73002[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Jan 2 18:16:57 2016 +0100

    Added link from worksheets show to groups show

[33mcommit eb2f54082e2fad640b02cf649cf7161ca06a5a5e[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Jan 2 12:05:14 2016 +0100

    Fixed many-to-many realtion between worksheets and questions

[33mcommit fc14620ec3027594d4dc3489d3daf9ce9c4dac19[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Jan 2 12:02:56 2016 +0100

    Added group creation

[33mcommit 9bf03988da83a21898f5ba8e2c61d022cac2666f[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Jan 2 11:20:47 2016 +0100

    Fixed nout up to date specs

[33mcommit 88968e548e9224ab2bedfd80fb30ed3581a64328[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Dec 31 17:14:33 2015 +0100

    removed not used collection resoruce

[33mcommit b27ec0222e9cb8906c48ddf8424ee010192a92fa[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Dec 31 16:58:21 2015 +0100

    Added includes in group controller

[33mcommit 00603efa0ca55d3e2332662a5e688a96420f9e4b[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Dec 31 16:54:22 2015 +0100

    Fixed group index route

[33mcommit b27de01e4aed06fc94a8b93c36728ffdca18cd04[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Dec 31 16:45:38 2015 +0100

    Added worksheet creation form on groups/show

[33mcommit c419eaaa5c557530f8261731e8320dd6814be7d7[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Dec 30 14:33:26 2015 +0100

    Renamed worksheet_set in group

[33mcommit 935b0da0e204d540babde42835bf1f7438e6e88f[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Dec 30 11:23:31 2015 +0100

    Added sets show page

[33mcommit c423accfa4e213ff4ec181a0858f7c832f74abed[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Dec 30 11:05:09 2015 +0100

    Added worksheet show endpoint

[33mcommit 1d538623b98fb5e6c46b23eeaa949b87438e73f0[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Dec 30 11:04:11 2015 +0100

    Added worksheet sets index route

[33mcommit 57865add1b60dee8e2f9d5b2819e79b40f509136[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Dec 30 10:36:25 2015 +0100

    Changed associations on worksheets ans sets

[33mcommit ba9cf3bfd102670751a89b2fe225a72e0ecbdd0a[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Dec 30 10:26:40 2015 +0100

    Added WorksheetSets to frontend

[33mcommit 931c6d8fb4f7b8835e7cced7ed5b10c0db95eb52[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Dec 30 10:16:17 2015 +0100

    Temp. remove collection from frontend

[33mcommit 327b8697fe6b7db0420c7bd6820fb53c3d6e23b9[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Dec 30 10:12:12 2015 +0100

    Added worksheet set resource

[33mcommit ee61bc368a700b395db7038b3d8968d502e88655[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Dec 30 10:06:23 2015 +0100

    Removed minitest tests as rspec is in use

[33mcommit c72f56028681f49d484ea68757c28c9d8b7a7d61[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Dec 30 10:05:54 2015 +0100

    Removed category model

[33mcommit 3cacc1c4c431b904970b0984b8f3c37093cea90a[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Dec 29 19:22:30 2015 +0100

    Added collections to nav-bar

[33mcommit 14b854fe16649ea9ad79ab816ade032b548e0747[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Dec 29 19:22:13 2015 +0100

    Reversed direction of collection factory association

[33mcommit a46f29e3fdc1725534a984ea8084d575fca6b7fa[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Dec 29 19:21:11 2015 +0100

    Reversed collection factory association

[33mcommit 3f24d75e382fe620ed9052045c47394bdb5d71a4[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Dec 28 20:18:57 2015 +0100

    Added worksheet form compenent

[33mcommit 6880dfa69aa1718aa3abc8c3fa06fc2cecc559c8[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Dec 28 20:18:36 2015 +0100

    Added show action for controller

[33mcommit f4468aea3ec683f4c2857e06b4e48717b343def4[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Dec 28 19:56:17 2015 +0100

    Added a collection show route

[33mcommit 1053f9ebea945737dda73c2067b0d83f5933d46c[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Dec 28 19:38:46 2015 +0100

    Added the collection resource

[33mcommit db2e876adb21d67686c60348b6d4056c9d867ff8[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Dec 28 19:38:22 2015 +0100

    Added the collection model + route + template

[33mcommit 7c6b7009b721f1dfac5e93af48b501c3d70253f4[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Dec 28 17:46:36 2015 +0100

    Added collection resource in the backend

[33mcommit 39b2058481f99c3d7bef255a6291c91ca19d6056[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Dec 28 14:31:18 2015 +0100

    Removed unused navbar items

[33mcommit 2281c4a4c1e23e52c8acb33c5e79c7e41c7b5a80[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Dec 28 11:05:08 2015 +0100

    Added navbar

[33mcommit d113281b21edee4c65d62d46de2055d1f319c232[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Dec 28 10:30:06 2015 +0100

    moved depreacted serializer option in aplliction config

[33mcommit ea9b0c4bafcced71222e18c15e8e393e0d84929e[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Dec 27 11:01:46 2015 +0100

    Added inclusion of question in the worksheets show route to prevent n+1 queries

[33mcommit f0829e60f2941ead490830d7c5d3603bc56765ca[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Dec 27 10:58:46 2015 +0100

    Corrected the spelling of the seeds

[33mcommit 5c53885f650b20eb4071c5d554acafba54a6ad2f[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Dec 27 10:55:09 2015 +0100

    Fixed questions not showing bug

[33mcommit 4455ea85880c37876a581816a5638ca4c3acfcec[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Dec 27 10:50:59 2015 +0100

    Connected the frontend ember app witj rails using ember-cli-rails

[33mcommit f9bb22552751639d70bd91af73b1147d37011797[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Dec 26 10:46:39 2015 +0100

    Added ember-bootstrap

[33mcommit e3afd9e2bb17ca0fbb2c39406f7b166d818da556[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Dec 24 11:48:28 2015 +0100

    Added controller and setuoController for the worksheets/show route

[33mcommit cb9175f1559cbfa1cd8dd87d1d6a29791ddf436a[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Dec 24 11:45:02 2015 +0100

    Changed the worksheet serializer to embed ids properly

[33mcommit 538e851a8bc4a2540cfbae42a9dcb571bb855d4b[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Dec 23 14:17:18 2015 +0100

    Added link to worksheet new route

[33mcommit bb9eb9eca1bbbfc986ab8f85e66c0eba542de378[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Dec 20 21:17:54 2015 +0100

    Dummy Readme

[33mcommit c7620e4387875b80a9cbdb7d7fef3866ebc494ca[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Dec 20 21:15:51 2015 +0100

    reshaped the seeds file

[33mcommit d376287e1ab3c97a05d48a2642c6a1ee7daedc08[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Dec 20 21:15:12 2015 +0100

    Removed bug do to none selected option in worksheet form

[33mcommit 76145814c9cde04fbb5697252ba469197b1c94f6[m
Merge: b546c34 9612184
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Dec 20 20:28:24 2015 +0100

    Merge branch 'frontend'

[33mcommit b546c34939360277d571fbef6a7ef56ab7f71532[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Dec 20 12:06:07 2015 +0100

    Added questions seeds

[33mcommit 961218408e956c335be4da5b7d8983d26ea33720[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Dec 20 11:57:07 2015 +0100

    Added questions list to worksheets showpage

[33mcommit 4a9766940a35cdbb98d93c99cf8c50d386337631[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sun Dec 20 11:49:46 2015 +0100

    Added worksheet creation

[33mcommit 041a8155e14602b61d36ca7258aa54ccb1a22bf2[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Fri Dec 18 17:10:52 2015 +0100

    Added existing frontend code

[33mcommit 8d91c9758b6bdfb2903ec0931c69c19bf6260596[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Fri Dec 18 16:57:54 2015 +0100

    Removed unused code

[33mcommit 0e455761ba4dc25c8ec37df3ee392d3a5e8ae398[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Wed Dec 16 19:51:29 2015 +0100

    Fixed a bug in the faxtory model

[33mcommit 5003631d897998b538f4e34599d033c367f70761[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Dec 15 20:42:26 2015 +0100

    Deletedt unused model specs

[33mcommit 78d35064da0532fd2d40642ba0f6ff55a00e075f[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Dec 14 20:42:05 2015 +0100

    Added new implementation for skill.get_question

[33mcommit 036c4516cdf11d1e41ca8662312c1475aaed002e[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Mon Dec 14 20:23:41 2015 +0100

    Added get_question to skill

[33mcommit 0a7095477379ac63874fdc4e2e167fcfe96ec1aa[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Dec 12 14:44:41 2015 +0100

    Added index action for worksheet controller

[33mcommit 90619dd08f2164b52c8748057b37591ec5930fe4[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Dec 12 11:44:40 2015 +0100

    Added worksheet question association

[33mcommit c4347e7a0a718e541f0bded8af58a57203157407[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Dec 12 11:28:57 2015 +0100

    Added worksheet resource

[33mcommit e190190c8b673e64112310bd1904e4ded95e7d24[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Dec 12 11:15:35 2015 +0100

    Updated factory_serializer

[33mcommit 5efe251bc2090b9e7feef2e134b1a49bdb17cee7[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Dec 12 10:52:23 2015 +0100

    Added qeustions to seeds

[33mcommit 6dafa3f6b6209971f61f6d23fc2da2967d1fd8dd[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Dec 12 10:47:03 2015 +0100

    Added first seed and fixed factory skills associations

[33mcommit 4af8909c29d38934c148c5027815450a600942e1[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Sat Dec 12 10:36:39 2015 +0100

    Added question resource and setup relations

[33mcommit 0e66837671aca5d16647ff0cd316581ec6fd2f5e[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Fri Dec 11 19:59:12 2015 +0100

    Added factory and factory-skill-association

[33mcommit 43ad190fa94719d9ba826edf43762bb6fe909f1a[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Dec 10 19:25:16 2015 +0100

    Added a skill resource

[33mcommit 07062a3eef08cf03e764da4fdbcfa8e07c25a9de[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Thu Dec 10 15:43:50 2015 +0100

    Added seeds

[33mcommit 13ceee41362cbaf68d4456751dc12fc1a8614cb8[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Dec 8 20:01:52 2015 +0100

    Added categories resource with an index endpoint

[33mcommit 561919b5e208d7d6ee673f80656eb929bfdab469[m
Author: RicciFlowing <benjamin@mathe-sellin.de>
Date:   Tue Dec 8 19:54:01 2015 +0100

    Initial Commit Rails 4.2.0
