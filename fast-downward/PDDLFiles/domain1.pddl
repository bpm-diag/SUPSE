(define (domain Mining)
(:requirements :typing :equality)
(:types place event)

(:predicates
(token ?p - place)
(tracePointer ?e - event)
(allowed)
)

(:functions
(total-cost)
)

(:action moveSync#activitybl#ev1
:precondition (and (token 1178) (tracePointer ev1))
:effect (and (allowed) (not (token 1178)) (token 1188) (not (tracePointer ev1)) (tracePointer ev2))
)

(:action moveSync#activitybl#ev17
:precondition (and (token 1178) (tracePointer ev17))
:effect (and (allowed) (not (token 1178)) (token 1188) (not (tracePointer ev17)) (tracePointer ev18))
)

(:action moveSync#activitybl#ev46
:precondition (and (token 1178) (tracePointer ev46))
:effect (and (allowed) (not (token 1178)) (token 1188) (not (tracePointer ev46)) (tracePointer ev47))
)

(:action moveSync#activitybl#ev96
:precondition (and (token 1178) (tracePointer ev96))
:effect (and (allowed) (not (token 1178)) (token 1188) (not (tracePointer ev96)) (tracePointer ev97))
)

(:action moveSync#activitybl#ev199
:precondition (and (token 1178) (tracePointer ev199))
:effect (and (allowed) (not (token 1178)) (token 1188) (not (tracePointer ev199)) (tracePointer ev200))
)

(:action moveSync#activitybl#ev301
:precondition (and (token 1178) (tracePointer ev301))
:effect (and (allowed) (not (token 1178)) (token 1188) (not (tracePointer ev301)) (tracePointer ev302))
)

(:action moveSync#activitybl#ev405
:precondition (and (token 1178) (tracePointer ev405))
:effect (and (allowed) (not (token 1178)) (token 1188) (not (tracePointer ev405)) (tracePointer ev406))
)

(:action moveInTheModel#activitybl
:precondition (token 1178)
:effect (and (not (allowed)) (not (token 1178)) (token 1188) (increase (total-cost) 1)
)
)

(:action moveSync#activityan#ev403
:precondition (and (token 1168) (tracePointer ev403))
:effect (and (allowed) (not (token 1168)) (token 1222) (not (tracePointer ev403)) (tracePointer ev404))
)

(:action moveInTheModel#activityan
:precondition (token 1168)
:effect (and (not (allowed)) (not (token 1168)) (token 1222) (increase (total-cost) 1)
)
)

(:action moveInTheModel#generatedinv0
:precondition (and (token 1224) (token 1226) (token 1228))
:effect (and (not (allowed)) (not (token 1224)) (not (token 1226)) (not (token 1228)) (token 1230) (increase (total-cost) 0)
)
)

(:action moveSync#activitycl#ev45
:precondition (and (token 1186) (tracePointer ev45))
:effect (and (allowed) (not (token 1186)) (token 1160) (not (tracePointer ev45)) (tracePointer ev46))
)

(:action moveSync#activitycl#ev66
:precondition (and (token 1186) (tracePointer ev66))
:effect (and (allowed) (not (token 1186)) (token 1160) (not (tracePointer ev66)) (tracePointer ev67))
)

(:action moveSync#activitycl#ev119
:precondition (and (token 1186) (tracePointer ev119))
:effect (and (allowed) (not (token 1186)) (token 1160) (not (tracePointer ev119)) (tracePointer ev120))
)

(:action moveSync#activitycl#ev154
:precondition (and (token 1186) (tracePointer ev154))
:effect (and (allowed) (not (token 1186)) (token 1160) (not (tracePointer ev154)) (tracePointer ev155))
)

(:action moveSync#activitycl#ev169
:precondition (and (token 1186) (tracePointer ev169))
:effect (and (allowed) (not (token 1186)) (token 1160) (not (tracePointer ev169)) (tracePointer ev170))
)

(:action moveSync#activitycl#ev198
:precondition (and (token 1186) (tracePointer ev198))
:effect (and (allowed) (not (token 1186)) (token 1160) (not (tracePointer ev198)) (tracePointer ev199))
)

(:action moveSync#activitycl#ev232
:precondition (and (token 1186) (tracePointer ev232))
:effect (and (allowed) (not (token 1186)) (token 1160) (not (tracePointer ev232)) (tracePointer ev233))
)

(:action moveSync#activitycl#ev261
:precondition (and (token 1186) (tracePointer ev261))
:effect (and (allowed) (not (token 1186)) (token 1160) (not (tracePointer ev261)) (tracePointer ev262))
)

(:action moveSync#activitycl#ev324
:precondition (and (token 1186) (tracePointer ev324))
:effect (and (allowed) (not (token 1186)) (token 1160) (not (tracePointer ev324)) (tracePointer ev325))
)

(:action moveSync#activitycl#ev348
:precondition (and (token 1186) (tracePointer ev348))
:effect (and (allowed) (not (token 1186)) (token 1160) (not (tracePointer ev348)) (tracePointer ev349))
)

(:action moveSync#activitycl#ev372
:precondition (and (token 1186) (tracePointer ev372))
:effect (and (allowed) (not (token 1186)) (token 1160) (not (tracePointer ev372)) (tracePointer ev373))
)

(:action moveSync#activitycl#ev404
:precondition (and (token 1186) (tracePointer ev404))
:effect (and (allowed) (not (token 1186)) (token 1160) (not (tracePointer ev404)) (tracePointer ev405))
)

(:action moveInTheModel#activitycl
:precondition (token 1186)
:effect (and (not (allowed)) (not (token 1186)) (token 1160) (increase (total-cost) 1)
)
)

(:action moveSync#activitybj#ev77
:precondition (and (token 1242) (tracePointer ev77))
:effect (and (allowed) (not (token 1242)) (token 1241) (not (tracePointer ev77)) (tracePointer ev78))
)

(:action moveSync#activitybj#ev282
:precondition (and (token 1242) (tracePointer ev282))
:effect (and (allowed) (not (token 1242)) (token 1241) (not (tracePointer ev282)) (tracePointer ev283))
)

(:action moveSync#activitybj#ev328
:precondition (and (token 1242) (tracePointer ev328))
:effect (and (allowed) (not (token 1242)) (token 1241) (not (tracePointer ev328)) (tracePointer ev329))
)

(:action moveInTheModel#activitybj
:precondition (token 1242)
:effect (and (not (allowed)) (not (token 1242)) (token 1241) (increase (total-cost) 1)
)
)

(:action moveSync#activitycd#ev15
:precondition (and (token 1211) (tracePointer ev15))
:effect (and (allowed) (not (token 1211)) (token 1186) (not (tracePointer ev15)) (tracePointer ev16))
)

(:action moveSync#activitycd#ev64
:precondition (and (token 1211) (tracePointer ev64))
:effect (and (allowed) (not (token 1211)) (token 1186) (not (tracePointer ev64)) (tracePointer ev65))
)

(:action moveSync#activitycd#ev93
:precondition (and (token 1211) (tracePointer ev93))
:effect (and (allowed) (not (token 1211)) (token 1186) (not (tracePointer ev93)) (tracePointer ev94))
)

(:action moveSync#activitycd#ev117
:precondition (and (token 1211) (tracePointer ev117))
:effect (and (allowed) (not (token 1211)) (token 1186) (not (tracePointer ev117)) (tracePointer ev118))
)

(:action moveSync#activitycd#ev134
:precondition (and (token 1211) (tracePointer ev134))
:effect (and (allowed) (not (token 1211)) (token 1186) (not (tracePointer ev134)) (tracePointer ev135))
)

(:action moveSync#activitycd#ev166
:precondition (and (token 1211) (tracePointer ev166))
:effect (and (allowed) (not (token 1211)) (token 1186) (not (tracePointer ev166)) (tracePointer ev167))
)

(:action moveSync#activitycd#ev195
:precondition (and (token 1211) (tracePointer ev195))
:effect (and (allowed) (not (token 1211)) (token 1186) (not (tracePointer ev195)) (tracePointer ev196))
)

(:action moveSync#activitycd#ev229
:precondition (and (token 1211) (tracePointer ev229))
:effect (and (allowed) (not (token 1211)) (token 1186) (not (tracePointer ev229)) (tracePointer ev230))
)

(:action moveSync#activitycd#ev258
:precondition (and (token 1211) (tracePointer ev258))
:effect (and (allowed) (not (token 1211)) (token 1186) (not (tracePointer ev258)) (tracePointer ev259))
)

(:action moveSync#activitycd#ev299
:precondition (and (token 1211) (tracePointer ev299))
:effect (and (allowed) (not (token 1211)) (token 1186) (not (tracePointer ev299)) (tracePointer ev300))
)

(:action moveSync#activitycd#ev321
:precondition (and (token 1211) (tracePointer ev321))
:effect (and (allowed) (not (token 1211)) (token 1186) (not (tracePointer ev321)) (tracePointer ev322))
)

(:action moveSync#activitycd#ev346
:precondition (and (token 1211) (tracePointer ev346))
:effect (and (allowed) (not (token 1211)) (token 1186) (not (tracePointer ev346)) (tracePointer ev347))
)

(:action moveSync#activitycd#ev369
:precondition (and (token 1211) (tracePointer ev369))
:effect (and (allowed) (not (token 1211)) (token 1186) (not (tracePointer ev369)) (tracePointer ev370))
)

(:action moveSync#activitycd#ev401
:precondition (and (token 1211) (tracePointer ev401))
:effect (and (allowed) (not (token 1211)) (token 1186) (not (tracePointer ev401)) (tracePointer ev402))
)

(:action moveInTheModel#activitycd
:precondition (token 1211)
:effect (and (not (allowed)) (not (token 1211)) (token 1186) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activityc
:precondition (token 1150)
:effect (and (not (allowed)) (not (token 1150)) (token 1192) (increase (total-cost) 1)
)
)

(:action moveInTheModel#generatedinv1
:precondition (and (token 1258) (token 1256) (token 1261))
:effect (and (not (allowed)) (not (token 1258)) (not (token 1256)) (not (token 1261)) (token 1263) (increase (total-cost) 0)
)
)

(:action moveSync#activityw#ev111
:precondition (and (token 1215) (tracePointer ev111))
:effect (and (allowed) (not (token 1215)) (token 1218) (not (tracePointer ev111)) (tracePointer ev112))
)

(:action moveSync#activityw#ev128
:precondition (and (token 1215) (tracePointer ev128))
:effect (and (allowed) (not (token 1215)) (token 1218) (not (tracePointer ev128)) (tracePointer ev129))
)

(:action moveSync#activityw#ev189
:precondition (and (token 1215) (tracePointer ev189))
:effect (and (allowed) (not (token 1215)) (token 1218) (not (tracePointer ev189)) (tracePointer ev190))
)

(:action moveSync#activityw#ev222
:precondition (and (token 1215) (tracePointer ev222))
:effect (and (allowed) (not (token 1215)) (token 1218) (not (tracePointer ev222)) (tracePointer ev223))
)

(:action moveSync#activityw#ev252
:precondition (and (token 1215) (tracePointer ev252))
:effect (and (allowed) (not (token 1215)) (token 1218) (not (tracePointer ev252)) (tracePointer ev253))
)

(:action moveSync#activityw#ev314
:precondition (and (token 1215) (tracePointer ev314))
:effect (and (allowed) (not (token 1215)) (token 1218) (not (tracePointer ev314)) (tracePointer ev315))
)

(:action moveSync#activityw#ev364
:precondition (and (token 1215) (tracePointer ev364))
:effect (and (allowed) (not (token 1215)) (token 1218) (not (tracePointer ev364)) (tracePointer ev365))
)

(:action moveSync#activityw#ev395
:precondition (and (token 1215) (tracePointer ev395))
:effect (and (allowed) (not (token 1215)) (token 1218) (not (tracePointer ev395)) (tracePointer ev396))
)

(:action moveInTheModel#activityw
:precondition (token 1215)
:effect (and (not (allowed)) (not (token 1215)) (token 1218) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activitycq
:precondition (token 1203)
:effect (and (not (allowed)) (not (token 1203)) (token 1204) (increase (total-cost) 1)
)
)

(:action moveSync#activityab#ev87
:precondition (and (token 1154) (tracePointer ev87))
:effect (and (allowed) (not (token 1154)) (token 1155) (not (tracePointer ev87)) (tracePointer ev88))
)

(:action moveSync#activityab#ev275
:precondition (and (token 1154) (tracePointer ev275))
:effect (and (allowed) (not (token 1154)) (token 1155) (not (tracePointer ev275)) (tracePointer ev276))
)

(:action moveSync#activityab#ev292
:precondition (and (token 1154) (tracePointer ev292))
:effect (and (allowed) (not (token 1154)) (token 1155) (not (tracePointer ev292)) (tracePointer ev293))
)

(:action moveInTheModel#activityab
:precondition (token 1154)
:effect (and (not (allowed)) (not (token 1154)) (token 1155) (increase (total-cost) 1)
)
)

(:action moveSync#activitycg#ev32
:precondition (and (token 1199) (tracePointer ev32))
:effect (and (allowed) (not (token 1199)) (token 1187) (not (tracePointer ev32)) (tracePointer ev33))
)

(:action moveSync#activitycg#ev147
:precondition (and (token 1199) (tracePointer ev147))
:effect (and (allowed) (not (token 1199)) (token 1187) (not (tracePointer ev147)) (tracePointer ev148))
)

(:action moveInTheModel#activitycg
:precondition (token 1199)
:effect (and (not (allowed)) (not (token 1199)) (token 1187) (increase (total-cost) 1)
)
)

(:action moveSync#activityah#ev13
:precondition (and (token 1239) (tracePointer ev13))
:effect (and (allowed) (not (token 1239)) (token 1168) (not (tracePointer ev13)) (tracePointer ev14))
)

(:action moveSync#activityah#ev62
:precondition (and (token 1239) (tracePointer ev62))
:effect (and (allowed) (not (token 1239)) (token 1168) (not (tracePointer ev62)) (tracePointer ev63))
)

(:action moveSync#activityah#ev94
:precondition (and (token 1239) (tracePointer ev94))
:effect (and (allowed) (not (token 1239)) (token 1168) (not (tracePointer ev94)) (tracePointer ev95))
)

(:action moveSync#activityah#ev118
:precondition (and (token 1239) (tracePointer ev118))
:effect (and (allowed) (not (token 1239)) (token 1168) (not (tracePointer ev118)) (tracePointer ev119))
)

(:action moveSync#activityah#ev133
:precondition (and (token 1239) (tracePointer ev133))
:effect (and (allowed) (not (token 1239)) (token 1168) (not (tracePointer ev133)) (tracePointer ev134))
)

(:action moveSync#activityah#ev167
:precondition (and (token 1239) (tracePointer ev167))
:effect (and (allowed) (not (token 1239)) (token 1168) (not (tracePointer ev167)) (tracePointer ev168))
)

(:action moveSync#activityah#ev194
:precondition (and (token 1239) (tracePointer ev194))
:effect (and (allowed) (not (token 1239)) (token 1168) (not (tracePointer ev194)) (tracePointer ev195))
)

(:action moveSync#activityah#ev227
:precondition (and (token 1239) (tracePointer ev227))
:effect (and (allowed) (not (token 1239)) (token 1168) (not (tracePointer ev227)) (tracePointer ev228))
)

(:action moveSync#activityah#ev259
:precondition (and (token 1239) (tracePointer ev259))
:effect (and (allowed) (not (token 1239)) (token 1168) (not (tracePointer ev259)) (tracePointer ev260))
)

(:action moveSync#activityah#ev300
:precondition (and (token 1239) (tracePointer ev300))
:effect (and (allowed) (not (token 1239)) (token 1168) (not (tracePointer ev300)) (tracePointer ev301))
)

(:action moveSync#activityah#ev320
:precondition (and (token 1239) (tracePointer ev320))
:effect (and (allowed) (not (token 1239)) (token 1168) (not (tracePointer ev320)) (tracePointer ev321))
)

(:action moveSync#activityah#ev344
:precondition (and (token 1239) (tracePointer ev344))
:effect (and (allowed) (not (token 1239)) (token 1168) (not (tracePointer ev344)) (tracePointer ev345))
)

(:action moveSync#activityah#ev370
:precondition (and (token 1239) (tracePointer ev370))
:effect (and (allowed) (not (token 1239)) (token 1168) (not (tracePointer ev370)) (tracePointer ev371))
)

(:action moveSync#activityah#ev400
:precondition (and (token 1239) (tracePointer ev400))
:effect (and (allowed) (not (token 1239)) (token 1168) (not (tracePointer ev400)) (tracePointer ev401))
)

(:action moveInTheModel#activityah
:precondition (token 1239)
:effect (and (not (allowed)) (not (token 1239)) (token 1168) (increase (total-cost) 1)
)
)

(:action moveSync#activityq#ev309
:precondition (and (token 1210) (tracePointer ev309))
:effect (and (allowed) (not (token 1210)) (token 1175) (not (tracePointer ev309)) (tracePointer ev310))
)

(:action moveSync#activityq#ev359
:precondition (and (token 1210) (tracePointer ev359))
:effect (and (allowed) (not (token 1210)) (token 1175) (not (tracePointer ev359)) (tracePointer ev360))
)

(:action moveInTheModel#activityq
:precondition (token 1210)
:effect (and (not (allowed)) (not (token 1210)) (token 1175) (increase (total-cost) 1)
)
)

(:action moveSync#activityak#ev33
:precondition (and (token 1172) (tracePointer ev33))
:effect (and (allowed) (not (token 1172)) (token 1169) (not (tracePointer ev33)) (tracePointer ev34))
)

(:action moveSync#activityak#ev98
:precondition (and (token 1172) (tracePointer ev98))
:effect (and (allowed) (not (token 1172)) (token 1169) (not (tracePointer ev98)) (tracePointer ev99))
)

(:action moveSync#activityak#ev143
:precondition (and (token 1172) (tracePointer ev143))
:effect (and (allowed) (not (token 1172)) (token 1169) (not (tracePointer ev143)) (tracePointer ev144))
)

(:action moveSync#activityak#ev237
:precondition (and (token 1172) (tracePointer ev237))
:effect (and (allowed) (not (token 1172)) (token 1169) (not (tracePointer ev237)) (tracePointer ev238))
)

(:action moveSync#activityak#ev350
:precondition (and (token 1172) (tracePointer ev350))
:effect (and (allowed) (not (token 1172)) (token 1169) (not (tracePointer ev350)) (tracePointer ev351))
)

(:action moveInTheModel#activityak
:precondition (token 1172)
:effect (and (not (allowed)) (not (token 1172)) (token 1169) (increase (total-cost) 1)
)
)

(:action moveSync#activitybf#ev138
:precondition (and (token 1178) (tracePointer ev138))
:effect (and (allowed) (not (token 1178)) (token 1180) (not (tracePointer ev138)) (tracePointer ev139))
)

(:action moveSync#activitybf#ev277
:precondition (and (token 1178) (tracePointer ev277))
:effect (and (allowed) (not (token 1178)) (token 1180) (not (tracePointer ev277)) (tracePointer ev278))
)

(:action moveSync#activitybf#ev322
:precondition (and (token 1178) (tracePointer ev322))
:effect (and (allowed) (not (token 1178)) (token 1180) (not (tracePointer ev322)) (tracePointer ev323))
)

(:action moveInTheModel#activitybf
:precondition (token 1178)
:effect (and (not (allowed)) (not (token 1178)) (token 1180) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activityay
:precondition (token 1236)
:effect (and (not (allowed)) (not (token 1236)) (token 1157) (increase (total-cost) 1)
)
)

(:action moveSync#activityci#ev29
:precondition (and (token 1189) (tracePointer ev29))
:effect (and (allowed) (not (token 1189)) (token 1191) (not (tracePointer ev29)) (tracePointer ev30))
)

(:action moveSync#activityci#ev145
:precondition (and (token 1189) (tracePointer ev145))
:effect (and (allowed) (not (token 1189)) (token 1191) (not (tracePointer ev145)) (tracePointer ev146))
)

(:action moveInTheModel#activityci
:precondition (token 1189)
:effect (and (not (allowed)) (not (token 1189)) (token 1191) (increase (total-cost) 1)
)
)

(:action moveSync#activityg#ev41
:precondition (and (token 1150) (tracePointer ev41))
:effect (and (allowed) (not (token 1150)) (token 1152) (not (tracePointer ev41)) (tracePointer ev42))
)

(:action moveSync#activityg#ev83
:precondition (and (token 1150) (tracePointer ev83))
:effect (and (allowed) (not (token 1150)) (token 1152) (not (tracePointer ev83)) (tracePointer ev84))
)

(:action moveSync#activityg#ev185
:precondition (and (token 1150) (tracePointer ev185))
:effect (and (allowed) (not (token 1150)) (token 1152) (not (tracePointer ev185)) (tracePointer ev186))
)

(:action moveSync#activityg#ev218
:precondition (and (token 1150) (tracePointer ev218))
:effect (and (allowed) (not (token 1150)) (token 1152) (not (tracePointer ev218)) (tracePointer ev219))
)

(:action moveSync#activityg#ev248
:precondition (and (token 1150) (tracePointer ev248))
:effect (and (allowed) (not (token 1150)) (token 1152) (not (tracePointer ev248)) (tracePointer ev249))
)

(:action moveSync#activityg#ev271
:precondition (and (token 1150) (tracePointer ev271))
:effect (and (allowed) (not (token 1150)) (token 1152) (not (tracePointer ev271)) (tracePointer ev272))
)

(:action moveSync#activityg#ev288
:precondition (and (token 1150) (tracePointer ev288))
:effect (and (allowed) (not (token 1150)) (token 1152) (not (tracePointer ev288)) (tracePointer ev289))
)

(:action moveInTheModel#activityg
:precondition (token 1150)
:effect (and (not (allowed)) (not (token 1150)) (token 1152) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activitycr
:precondition (token 1205)
:effect (and (not (allowed)) (not (token 1205)) (token 1207) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activityac
:precondition (token 1155)
:effect (and (not (allowed)) (not (token 1155)) (token 1154) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activityba
:precondition (token 1233)
:effect (and (not (allowed)) (not (token 1233)) (token 1234) (increase (total-cost) 1)
)
)

(:action moveSync#activityca#ev174
:precondition (and (token 1257) (tracePointer ev174))
:effect (and (allowed) (not (token 1257)) (token 1258) (not (tracePointer ev174)) (tracePointer ev175))
)

(:action moveSync#activityca#ev236
:precondition (and (token 1257) (tracePointer ev236))
:effect (and (allowed) (not (token 1257)) (token 1258) (not (tracePointer ev236)) (tracePointer ev237))
)

(:action moveSync#activityca#ev262
:precondition (and (token 1257) (tracePointer ev262))
:effect (and (allowed) (not (token 1257)) (token 1258) (not (tracePointer ev262)) (tracePointer ev263))
)

(:action moveSync#activityca#ev377
:precondition (and (token 1257) (tracePointer ev377))
:effect (and (allowed) (not (token 1257)) (token 1258) (not (tracePointer ev377)) (tracePointer ev378))
)

(:action moveInTheModel#activityca
:precondition (token 1257)
:effect (and (not (allowed)) (not (token 1257)) (token 1258) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activityct
:precondition (token 1177)
:effect (and (not (allowed)) (not (token 1177)) (token 1160) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activitycn
:precondition (token 1160)
:effect (and (not (allowed)) (not (token 1160)) (token 1208) (increase (total-cost) 1)
)
)

(:action moveSync#activityo#ev107
:precondition (and (token 1175) (tracePointer ev107))
:effect (and (allowed) (not (token 1175)) (token 1152) (not (tracePointer ev107)) (tracePointer ev108))
)

(:action moveSync#activityo#ev124
:precondition (and (token 1175) (tracePointer ev124))
:effect (and (allowed) (not (token 1175)) (token 1152) (not (tracePointer ev124)) (tracePointer ev125))
)

(:action moveSync#activityo#ev160
:precondition (and (token 1175) (tracePointer ev160))
:effect (and (allowed) (not (token 1175)) (token 1152) (not (tracePointer ev160)) (tracePointer ev161))
)

(:action moveSync#activityo#ev310
:precondition (and (token 1175) (tracePointer ev310))
:effect (and (allowed) (not (token 1175)) (token 1152) (not (tracePointer ev310)) (tracePointer ev311))
)

(:action moveSync#activityo#ev360
:precondition (and (token 1175) (tracePointer ev360))
:effect (and (allowed) (not (token 1175)) (token 1152) (not (tracePointer ev360)) (tracePointer ev361))
)

(:action moveInTheModel#activityo
:precondition (token 1175)
:effect (and (not (allowed)) (not (token 1175)) (token 1152) (increase (total-cost) 1)
)
)

(:action moveSync#activityb#ev42
:precondition (and (token 1152) (tracePointer ev42))
:effect (and (allowed) (not (token 1152)) (token 1221) (not (tracePointer ev42)) (tracePointer ev43))
)

(:action moveSync#activityb#ev84
:precondition (and (token 1152) (tracePointer ev84))
:effect (and (allowed) (not (token 1152)) (token 1221) (not (tracePointer ev84)) (tracePointer ev85))
)

(:action moveSync#activityb#ev108
:precondition (and (token 1152) (tracePointer ev108))
:effect (and (allowed) (not (token 1152)) (token 1221) (not (tracePointer ev108)) (tracePointer ev109))
)

(:action moveSync#activityb#ev125
:precondition (and (token 1152) (tracePointer ev125))
:effect (and (allowed) (not (token 1152)) (token 1221) (not (tracePointer ev125)) (tracePointer ev126))
)

(:action moveSync#activityb#ev161
:precondition (and (token 1152) (tracePointer ev161))
:effect (and (allowed) (not (token 1152)) (token 1221) (not (tracePointer ev161)) (tracePointer ev162))
)

(:action moveSync#activityb#ev186
:precondition (and (token 1152) (tracePointer ev186))
:effect (and (allowed) (not (token 1152)) (token 1221) (not (tracePointer ev186)) (tracePointer ev187))
)

(:action moveSync#activityb#ev219
:precondition (and (token 1152) (tracePointer ev219))
:effect (and (allowed) (not (token 1152)) (token 1221) (not (tracePointer ev219)) (tracePointer ev220))
)

(:action moveSync#activityb#ev249
:precondition (and (token 1152) (tracePointer ev249))
:effect (and (allowed) (not (token 1152)) (token 1221) (not (tracePointer ev249)) (tracePointer ev250))
)

(:action moveSync#activityb#ev272
:precondition (and (token 1152) (tracePointer ev272))
:effect (and (allowed) (not (token 1152)) (token 1221) (not (tracePointer ev272)) (tracePointer ev273))
)

(:action moveSync#activityb#ev289
:precondition (and (token 1152) (tracePointer ev289))
:effect (and (allowed) (not (token 1152)) (token 1221) (not (tracePointer ev289)) (tracePointer ev290))
)

(:action moveSync#activityb#ev311
:precondition (and (token 1152) (tracePointer ev311))
:effect (and (allowed) (not (token 1152)) (token 1221) (not (tracePointer ev311)) (tracePointer ev312))
)

(:action moveSync#activityb#ev339
:precondition (and (token 1152) (tracePointer ev339))
:effect (and (allowed) (not (token 1152)) (token 1221) (not (tracePointer ev339)) (tracePointer ev340))
)

(:action moveSync#activityb#ev361
:precondition (and (token 1152) (tracePointer ev361))
:effect (and (allowed) (not (token 1152)) (token 1221) (not (tracePointer ev361)) (tracePointer ev362))
)

(:action moveSync#activityb#ev392
:precondition (and (token 1152) (tracePointer ev392))
:effect (and (allowed) (not (token 1152)) (token 1221) (not (tracePointer ev392)) (tracePointer ev393))
)

(:action moveInTheModel#activityb
:precondition (token 1152)
:effect (and (not (allowed)) (not (token 1152)) (token 1221) (increase (total-cost) 1)
)
)

(:action moveInTheModel#generatedinv2
:precondition (and (token 1207) (token 1204) (token 1202))
:effect (and (not (allowed)) (not (token 1207)) (not (token 1204)) (not (token 1202)) (token 1209) (increase (total-cost) 0)
)
)

(:action moveSync#activityy#ev113
:precondition (and (token 1217) (tracePointer ev113))
:effect (and (allowed) (not (token 1217)) (token 1184) (not (tracePointer ev113)) (tracePointer ev114))
)

(:action moveSync#activityy#ev130
:precondition (and (token 1217) (tracePointer ev130))
:effect (and (allowed) (not (token 1217)) (token 1184) (not (tracePointer ev130)) (tracePointer ev131))
)

(:action moveSync#activityy#ev191
:precondition (and (token 1217) (tracePointer ev191))
:effect (and (allowed) (not (token 1217)) (token 1184) (not (tracePointer ev191)) (tracePointer ev192))
)

(:action moveSync#activityy#ev224
:precondition (and (token 1217) (tracePointer ev224))
:effect (and (allowed) (not (token 1217)) (token 1184) (not (tracePointer ev224)) (tracePointer ev225))
)

(:action moveSync#activityy#ev254
:precondition (and (token 1217) (tracePointer ev254))
:effect (and (allowed) (not (token 1217)) (token 1184) (not (tracePointer ev254)) (tracePointer ev255))
)

(:action moveSync#activityy#ev316
:precondition (and (token 1217) (tracePointer ev316))
:effect (and (allowed) (not (token 1217)) (token 1184) (not (tracePointer ev316)) (tracePointer ev317))
)

(:action moveSync#activityy#ev366
:precondition (and (token 1217) (tracePointer ev366))
:effect (and (allowed) (not (token 1217)) (token 1184) (not (tracePointer ev366)) (tracePointer ev367))
)

(:action moveSync#activityy#ev397
:precondition (and (token 1217) (tracePointer ev397))
:effect (and (allowed) (not (token 1217)) (token 1184) (not (tracePointer ev397)) (tracePointer ev398))
)

(:action moveInTheModel#activityy
:precondition (token 1217)
:effect (and (not (allowed)) (not (token 1217)) (token 1184) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activityat
:precondition (token 1227)
:effect (and (not (allowed)) (not (token 1227)) (token 1228) (increase (total-cost) 1)
)
)

(:action moveSync#activityaa#ev57
:precondition (and (token 1155) (tracePointer ev57))
:effect (and (allowed) (not (token 1155)) (token 1220) (not (tracePointer ev57)) (tracePointer ev58))
)

(:action moveSync#activityaa#ev88
:precondition (and (token 1155) (tracePointer ev88))
:effect (and (allowed) (not (token 1155)) (token 1220) (not (tracePointer ev88)) (tracePointer ev89))
)

(:action moveSync#activityaa#ev293
:precondition (and (token 1155) (tracePointer ev293))
:effect (and (allowed) (not (token 1155)) (token 1220) (not (tracePointer ev293)) (tracePointer ev294))
)

(:action moveInTheModel#activityaa
:precondition (token 1155)
:effect (and (not (allowed)) (not (token 1155)) (token 1220) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activitybb
:precondition (token 1157)
:effect (and (not (allowed)) (not (token 1157)) (token 1237) (increase (total-cost) 1)
)
)

(:action moveSync#activityae#ev59
:precondition (and (token 1219) (tracePointer ev59))
:effect (and (allowed) (not (token 1219)) (token 1184) (not (tracePointer ev59)) (tracePointer ev60))
)

(:action moveSync#activityae#ev90
:precondition (and (token 1219) (tracePointer ev90))
:effect (and (allowed) (not (token 1219)) (token 1184) (not (tracePointer ev90)) (tracePointer ev91))
)

(:action moveSync#activityae#ev295
:precondition (and (token 1219) (tracePointer ev295))
:effect (and (allowed) (not (token 1219)) (token 1184) (not (tracePointer ev295)) (tracePointer ev296))
)

(:action moveInTheModel#activityae
:precondition (token 1219)
:effect (and (not (allowed)) (not (token 1219)) (token 1184) (increase (total-cost) 1)
)
)

(:action moveSync#activityh#ev334
:precondition (and (token 1150) (tracePointer ev334))
:effect (and (allowed) (not (token 1150)) (token 1200) (not (tracePointer ev334)) (tracePointer ev335))
)

(:action moveSync#activityh#ev387
:precondition (and (token 1150) (tracePointer ev387))
:effect (and (allowed) (not (token 1150)) (token 1200) (not (tracePointer ev387)) (tracePointer ev388))
)

(:action moveInTheModel#activityh
:precondition (token 1150)
:effect (and (not (allowed)) (not (token 1150)) (token 1200) (increase (total-cost) 1)
)
)

(:action moveSync#activityaj#ev16
:precondition (and (token 1168) (tracePointer ev16))
:effect (and (allowed) (not (token 1168)) (token 1170) (not (tracePointer ev16)) (tracePointer ev17))
)

(:action moveSync#activityaj#ev136
:precondition (and (token 1168) (tracePointer ev136))
:effect (and (allowed) (not (token 1168)) (token 1170) (not (tracePointer ev136)) (tracePointer ev137))
)

(:action moveSync#activityaj#ev230
:precondition (and (token 1168) (tracePointer ev230))
:effect (and (allowed) (not (token 1168)) (token 1170) (not (tracePointer ev230)) (tracePointer ev231))
)

(:action moveSync#activityaj#ev323
:precondition (and (token 1168) (tracePointer ev323))
:effect (and (allowed) (not (token 1168)) (token 1170) (not (tracePointer ev323)) (tracePointer ev324))
)

(:action moveSync#activityaj#ev347
:precondition (and (token 1168) (tracePointer ev347))
:effect (and (allowed) (not (token 1168)) (token 1170) (not (tracePointer ev347)) (tracePointer ev348))
)

(:action moveInTheModel#activityaj
:precondition (token 1168)
:effect (and (not (allowed)) (not (token 1168)) (token 1170) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activitye
:precondition (token 1196)
:effect (and (not (allowed)) (not (token 1196)) (token 1194) (increase (total-cost) 1)
)
)

(:action moveSync#activityau#ev44
:precondition (and (token 1168) (tracePointer ev44))
:effect (and (allowed) (not (token 1168)) (token 1169) (not (tracePointer ev44)) (tracePointer ev45))
)

(:action moveSync#activityau#ev65
:precondition (and (token 1168) (tracePointer ev65))
:effect (and (allowed) (not (token 1168)) (token 1169) (not (tracePointer ev65)) (tracePointer ev66))
)

(:action moveSync#activityau#ev73
:precondition (and (token 1168) (tracePointer ev73))
:effect (and (allowed) (not (token 1168)) (token 1169) (not (tracePointer ev73)) (tracePointer ev74))
)

(:action moveSync#activityau#ev170
:precondition (and (token 1168) (tracePointer ev170))
:effect (and (allowed) (not (token 1168)) (token 1169) (not (tracePointer ev170)) (tracePointer ev171))
)

(:action moveSync#activityau#ev197
:precondition (and (token 1168) (tracePointer ev197))
:effect (and (allowed) (not (token 1168)) (token 1169) (not (tracePointer ev197)) (tracePointer ev198))
)

(:action moveSync#activityau#ev212
:precondition (and (token 1168) (tracePointer ev212))
:effect (and (allowed) (not (token 1168)) (token 1169) (not (tracePointer ev212)) (tracePointer ev213))
)

(:action moveSync#activityau#ev276
:precondition (and (token 1168) (tracePointer ev276))
:effect (and (allowed) (not (token 1168)) (token 1169) (not (tracePointer ev276)) (tracePointer ev277))
)

(:action moveSync#activityau#ev373
:precondition (and (token 1168) (tracePointer ev373))
:effect (and (allowed) (not (token 1168)) (token 1169) (not (tracePointer ev373)) (tracePointer ev374))
)

(:action moveInTheModel#activityau
:precondition (token 1168)
:effect (and (not (allowed)) (not (token 1168)) (token 1169) (increase (total-cost) 1)
)
)

(:action moveSync#activityai#ev36
:precondition (and (token 1169) (tracePointer ev36))
:effect (and (allowed) (not (token 1169)) (token 1238) (not (tracePointer ev36)) (tracePointer ev37))
)

(:action moveSync#activityai#ev47
:precondition (and (token 1169) (tracePointer ev47))
:effect (and (allowed) (not (token 1169)) (token 1238) (not (tracePointer ev47)) (tracePointer ev48))
)

(:action moveSync#activityai#ev67
:precondition (and (token 1169) (tracePointer ev67))
:effect (and (allowed) (not (token 1169)) (token 1238) (not (tracePointer ev67)) (tracePointer ev68))
)

(:action moveSync#activityai#ev74
:precondition (and (token 1169) (tracePointer ev74))
:effect (and (allowed) (not (token 1169)) (token 1238) (not (tracePointer ev74)) (tracePointer ev75))
)

(:action moveSync#activityai#ev100
:precondition (and (token 1169) (tracePointer ev100))
:effect (and (allowed) (not (token 1169)) (token 1238) (not (tracePointer ev100)) (tracePointer ev101))
)

(:action moveSync#activityai#ev146
:precondition (and (token 1169) (tracePointer ev146))
:effect (and (allowed) (not (token 1169)) (token 1238) (not (tracePointer ev146)) (tracePointer ev147))
)

(:action moveSync#activityai#ev172
:precondition (and (token 1169) (tracePointer ev172))
:effect (and (allowed) (not (token 1169)) (token 1238) (not (tracePointer ev172)) (tracePointer ev173))
)

(:action moveSync#activityai#ev200
:precondition (and (token 1169) (tracePointer ev200))
:effect (and (allowed) (not (token 1169)) (token 1238) (not (tracePointer ev200)) (tracePointer ev201))
)

(:action moveSync#activityai#ev213
:precondition (and (token 1169) (tracePointer ev213))
:effect (and (allowed) (not (token 1169)) (token 1238) (not (tracePointer ev213)) (tracePointer ev214))
)

(:action moveSync#activityai#ev239
:precondition (and (token 1169) (tracePointer ev239))
:effect (and (allowed) (not (token 1169)) (token 1238) (not (tracePointer ev239)) (tracePointer ev240))
)

(:action moveSync#activityai#ev278
:precondition (and (token 1169) (tracePointer ev278))
:effect (and (allowed) (not (token 1169)) (token 1238) (not (tracePointer ev278)) (tracePointer ev279))
)

(:action moveSync#activityai#ev351
:precondition (and (token 1169) (tracePointer ev351))
:effect (and (allowed) (not (token 1169)) (token 1238) (not (tracePointer ev351)) (tracePointer ev352))
)

(:action moveSync#activityai#ev375
:precondition (and (token 1169) (tracePointer ev375))
:effect (and (allowed) (not (token 1169)) (token 1238) (not (tracePointer ev375)) (tracePointer ev376))
)

(:action moveSync#activityai#ev408
:precondition (and (token 1169) (tracePointer ev408))
:effect (and (allowed) (not (token 1169)) (token 1238) (not (tracePointer ev408)) (tracePointer ev409))
)

(:action moveInTheModel#activityai
:precondition (token 1169)
:effect (and (not (allowed)) (not (token 1169)) (token 1238) (increase (total-cost) 1)
)
)

(:action moveSync#activitybn#ev20
:precondition (and (token 1188) (tracePointer ev20))
:effect (and (allowed) (not (token 1188)) (token 1251) (not (tracePointer ev20)) (tracePointer ev21))
)

(:action moveInTheModel#activitybn
:precondition (token 1188)
:effect (and (not (allowed)) (not (token 1188)) (token 1251) (increase (total-cost) 1)
)
)

(:action moveSync#activitycf#ev18
:precondition (and (token 1186) (tracePointer ev18))
:effect (and (allowed) (not (token 1186)) (token 1198) (not (tracePointer ev18)) (tracePointer ev19))
)

(:action moveSync#activitycf#ev137
:precondition (and (token 1186) (tracePointer ev137))
:effect (and (allowed) (not (token 1186)) (token 1198) (not (tracePointer ev137)) (tracePointer ev138))
)

(:action moveInTheModel#activitycf
:precondition (token 1186)
:effect (and (not (allowed)) (not (token 1186)) (token 1198) (increase (total-cost) 1)
)
)

(:action moveSync#activitybh#ev142
:precondition (and (token 1180) (tracePointer ev142))
:effect (and (allowed) (not (token 1180)) (token 1181) (not (tracePointer ev142)) (tracePointer ev143))
)

(:action moveSync#activitybh#ev279
:precondition (and (token 1180) (tracePointer ev279))
:effect (and (allowed) (not (token 1180)) (token 1181) (not (tracePointer ev279)) (tracePointer ev280))
)

(:action moveSync#activitybh#ev325
:precondition (and (token 1180) (tracePointer ev325))
:effect (and (allowed) (not (token 1180)) (token 1181) (not (tracePointer ev325)) (tracePointer ev326))
)

(:action moveInTheModel#activitybh
:precondition (token 1180)
:effect (and (not (allowed)) (not (token 1180)) (token 1181) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activityas
:precondition (token 1225)
:effect (and (not (allowed)) (not (token 1225)) (token 1226) (increase (total-cost) 1)
)
)

(:action moveInTheModel#generatedinv3
:precondition (token 1213)
:effect (and (not (allowed)) (not (token 1213)) (token 1239) (token 1211) (token 1264) (increase (total-cost) 0)
)
)

(:action moveSync#activitybs#ev27
:precondition (and (token 1249) (tracePointer ev27))
:effect (and (allowed) (not (token 1249)) (token 1250) (not (tracePointer ev27)) (tracePointer ev28))
)

(:action moveInTheModel#activitybs
:precondition (token 1249)
:effect (and (not (allowed)) (not (token 1249)) (token 1250) (increase (total-cost) 1)
)
)

(:action moveSync#activityaw#ev8
:precondition (and (token 1157) (tracePointer ev8))
:effect (and (allowed) (not (token 1157)) (token 1240) (not (tracePointer ev8)) (tracePointer ev9))
)

(:action moveSync#activityaw#ev39
:precondition (and (token 1157) (tracePointer ev39))
:effect (and (allowed) (not (token 1157)) (token 1240) (not (tracePointer ev39)) (tracePointer ev40))
)

(:action moveSync#activityaw#ev55
:precondition (and (token 1157) (tracePointer ev55))
:effect (and (allowed) (not (token 1157)) (token 1240) (not (tracePointer ev55)) (tracePointer ev56))
)

(:action moveSync#activityaw#ev69
:precondition (and (token 1157) (tracePointer ev69))
:effect (and (allowed) (not (token 1157)) (token 1240) (not (tracePointer ev69)) (tracePointer ev70))
)

(:action moveSync#activityaw#ev78
:precondition (and (token 1157) (tracePointer ev78))
:effect (and (allowed) (not (token 1157)) (token 1240) (not (tracePointer ev78)) (tracePointer ev79))
)

(:action moveSync#activityaw#ev104
:precondition (and (token 1157) (tracePointer ev104))
:effect (and (allowed) (not (token 1157)) (token 1240) (not (tracePointer ev104)) (tracePointer ev105))
)

(:action moveSync#activityaw#ev151
:precondition (and (token 1157) (tracePointer ev151))
:effect (and (allowed) (not (token 1157)) (token 1240) (not (tracePointer ev151)) (tracePointer ev152))
)

(:action moveSync#activityaw#ev182
:precondition (and (token 1157) (tracePointer ev182))
:effect (and (allowed) (not (token 1157)) (token 1240) (not (tracePointer ev182)) (tracePointer ev183))
)

(:action moveSync#activityaw#ev207
:precondition (and (token 1157) (tracePointer ev207))
:effect (and (allowed) (not (token 1157)) (token 1240) (not (tracePointer ev207)) (tracePointer ev208))
)

(:action moveSync#activityaw#ev215
:precondition (and (token 1157) (tracePointer ev215))
:effect (and (allowed) (not (token 1157)) (token 1240) (not (tracePointer ev215)) (tracePointer ev216))
)

(:action moveSync#activityaw#ev245
:precondition (and (token 1157) (tracePointer ev245))
:effect (and (allowed) (not (token 1157)) (token 1240) (not (tracePointer ev245)) (tracePointer ev246))
)

(:action moveSync#activityaw#ev285
:precondition (and (token 1157) (tracePointer ev285))
:effect (and (allowed) (not (token 1157)) (token 1240) (not (tracePointer ev285)) (tracePointer ev286))
)

(:action moveSync#activityaw#ev355
:precondition (and (token 1157) (tracePointer ev355))
:effect (and (allowed) (not (token 1157)) (token 1240) (not (tracePointer ev355)) (tracePointer ev356))
)

(:action moveSync#activityaw#ev384
:precondition (and (token 1157) (tracePointer ev384))
:effect (and (allowed) (not (token 1157)) (token 1240) (not (tracePointer ev384)) (tracePointer ev385))
)

(:action moveInTheModel#activityaw
:precondition (token 1157)
:effect (and (not (allowed)) (not (token 1157)) (token 1240) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activityaz
:precondition (token 1231)
:effect (and (not (allowed)) (not (token 1231)) (token 1232) (increase (total-cost) 1)
)
)

(:action moveSync#activityj#ev336
:precondition (and (token 1206) (tracePointer ev336))
:effect (and (allowed) (not (token 1206)) (token 1162) (not (tracePointer ev336)) (tracePointer ev337))
)

(:action moveSync#activityj#ev389
:precondition (and (token 1206) (tracePointer ev389))
:effect (and (allowed) (not (token 1206)) (token 1162) (not (tracePointer ev389)) (tracePointer ev390))
)

(:action moveInTheModel#activityj
:precondition (token 1206)
:effect (and (not (allowed)) (not (token 1206)) (token 1162) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activityco
:precondition (token 1209)
:effect (and (not (allowed)) (not (token 1209)) (token 1161) (increase (total-cost) 1)
)
)

(:action moveSync#activityad#ev58
:precondition (and (token 1220) (tracePointer ev58))
:effect (and (allowed) (not (token 1220)) (token 1219) (not (tracePointer ev58)) (tracePointer ev59))
)

(:action moveSync#activityad#ev89
:precondition (and (token 1220) (tracePointer ev89))
:effect (and (allowed) (not (token 1220)) (token 1219) (not (tracePointer ev89)) (tracePointer ev90))
)

(:action moveSync#activityad#ev294
:precondition (and (token 1220) (tracePointer ev294))
:effect (and (allowed) (not (token 1220)) (token 1219) (not (tracePointer ev294)) (tracePointer ev295))
)

(:action moveInTheModel#activityad
:precondition (token 1220)
:effect (and (not (allowed)) (not (token 1220)) (token 1219) (increase (total-cost) 1)
)
)

(:action moveSync#activityag#ev9
:precondition (and (token 1214) (tracePointer ev9))
:effect (and (allowed) (not (token 1214)) (token 1046) (not (tracePointer ev9)) (tracePointer ev10))
)

(:action moveSync#activityag#ev40
:precondition (and (token 1214) (tracePointer ev40))
:effect (and (allowed) (not (token 1214)) (token 1046) (not (tracePointer ev40)) (tracePointer ev41))
)

(:action moveSync#activityag#ev56
:precondition (and (token 1214) (tracePointer ev56))
:effect (and (allowed) (not (token 1214)) (token 1046) (not (tracePointer ev56)) (tracePointer ev57))
)

(:action moveSync#activityag#ev72
:precondition (and (token 1214) (tracePointer ev72))
:effect (and (allowed) (not (token 1214)) (token 1046) (not (tracePointer ev72)) (tracePointer ev73))
)

(:action moveSync#activityag#ev81
:precondition (and (token 1214) (tracePointer ev81))
:effect (and (allowed) (not (token 1214)) (token 1046) (not (tracePointer ev81)) (tracePointer ev82))
)

(:action moveSync#activityag#ev105
:precondition (and (token 1214) (tracePointer ev105))
:effect (and (allowed) (not (token 1214)) (token 1046) (not (tracePointer ev105)) (tracePointer ev106))
)

(:action moveSync#activityag#ev152
:precondition (and (token 1214) (tracePointer ev152))
:effect (and (allowed) (not (token 1214)) (token 1046) (not (tracePointer ev152)) (tracePointer ev153))
)

(:action moveSync#activityag#ev157
:precondition (and (token 1214) (tracePointer ev157))
:effect (and (allowed) (not (token 1214)) (token 1046) (not (tracePointer ev157)) (tracePointer ev158))
)

(:action moveSync#activityag#ev183
:precondition (and (token 1214) (tracePointer ev183))
:effect (and (allowed) (not (token 1214)) (token 1046) (not (tracePointer ev183)) (tracePointer ev184))
)

(:action moveSync#activityag#ev209
:precondition (and (token 1214) (tracePointer ev209))
:effect (and (allowed) (not (token 1214)) (token 1046) (not (tracePointer ev209)) (tracePointer ev210))
)

(:action moveSync#activityag#ev216
:precondition (and (token 1214) (tracePointer ev216))
:effect (and (allowed) (not (token 1214)) (token 1046) (not (tracePointer ev216)) (tracePointer ev217))
)

(:action moveSync#activityag#ev246
:precondition (and (token 1214) (tracePointer ev246))
:effect (and (allowed) (not (token 1214)) (token 1046) (not (tracePointer ev246)) (tracePointer ev247))
)

(:action moveSync#activityag#ev286
:precondition (and (token 1214) (tracePointer ev286))
:effect (and (allowed) (not (token 1214)) (token 1046) (not (tracePointer ev286)) (tracePointer ev287))
)

(:action moveSync#activityag#ev385
:precondition (and (token 1214) (tracePointer ev385))
:effect (and (allowed) (not (token 1214)) (token 1046) (not (tracePointer ev385)) (tracePointer ev386))
)

(:action moveInTheModel#activityag
:precondition (token 1214)
:effect (and (not (allowed)) (not (token 1214)) (token 1046) (increase (total-cost) 1)
)
)

(:action moveSync#activitybw#ev203
:precondition (and (token 1254) (tracePointer ev203))
:effect (and (allowed) (not (token 1254)) (token 1147) (not (tracePointer ev203)) (tracePointer ev204))
)

(:action moveInTheModel#activitybw
:precondition (token 1254)
:effect (and (not (allowed)) (not (token 1254)) (token 1147) (increase (total-cost) 1)
)
)

(:action moveSync#activityu#ev10
:precondition (and (token 1182) (tracePointer ev10))
:effect (and (allowed) (not (token 1182)) (token 1184) (not (tracePointer ev10)) (tracePointer ev11))
)

(:action moveSync#activityu#ev163
:precondition (and (token 1182) (tracePointer ev163))
:effect (and (allowed) (not (token 1182)) (token 1184) (not (tracePointer ev163)) (tracePointer ev164))
)

(:action moveSync#activityu#ev341
:precondition (and (token 1182) (tracePointer ev341))
:effect (and (allowed) (not (token 1182)) (token 1184) (not (tracePointer ev341)) (tracePointer ev342))
)

(:action moveInTheModel#activityu
:precondition (token 1182)
:effect (and (not (allowed)) (not (token 1182)) (token 1184) (increase (total-cost) 1)
)
)

(:action moveSync#activityal#ev19
:precondition (and (token 1170) (tracePointer ev19))
:effect (and (allowed) (not (token 1170)) (token 1172) (not (tracePointer ev19)) (tracePointer ev20))
)

(:action moveSync#activityal#ev30
:precondition (and (token 1170) (tracePointer ev30))
:effect (and (allowed) (not (token 1170)) (token 1172) (not (tracePointer ev30)) (tracePointer ev31))
)

(:action moveSync#activityal#ev139
:precondition (and (token 1170) (tracePointer ev139))
:effect (and (allowed) (not (token 1170)) (token 1172) (not (tracePointer ev139)) (tracePointer ev140))
)

(:action moveSync#activityal#ev233
:precondition (and (token 1170) (tracePointer ev233))
:effect (and (allowed) (not (token 1170)) (token 1172) (not (tracePointer ev233)) (tracePointer ev234))
)

(:action moveSync#activityal#ev326
:precondition (and (token 1170) (tracePointer ev326))
:effect (and (allowed) (not (token 1170)) (token 1172) (not (tracePointer ev326)) (tracePointer ev327))
)

(:action moveSync#activityal#ev349
:precondition (and (token 1170) (tracePointer ev349))
:effect (and (allowed) (not (token 1170)) (token 1172) (not (tracePointer ev349)) (tracePointer ev350))
)

(:action moveInTheModel#activityal
:precondition (token 1170)
:effect (and (not (allowed)) (not (token 1170)) (token 1172) (increase (total-cost) 1)
)
)

(:action moveSync#activitya#ev82
:precondition (and (token 1045) (tracePointer ev82))
:effect (and (allowed) (not (token 1045)) (token 1150) (not (tracePointer ev82)) (tracePointer ev83))
)

(:action moveSync#activitya#ev106
:precondition (and (token 1045) (tracePointer ev106))
:effect (and (allowed) (not (token 1045)) (token 1150) (not (tracePointer ev106)) (tracePointer ev107))
)

(:action moveSync#activitya#ev122
:precondition (and (token 1045) (tracePointer ev122))
:effect (and (allowed) (not (token 1045)) (token 1150) (not (tracePointer ev122)) (tracePointer ev123))
)

(:action moveSync#activitya#ev153
:precondition (and (token 1045) (tracePointer ev153))
:effect (and (allowed) (not (token 1045)) (token 1150) (not (tracePointer ev153)) (tracePointer ev154))
)

(:action moveSync#activitya#ev158
:precondition (and (token 1045) (tracePointer ev158))
:effect (and (allowed) (not (token 1045)) (token 1150) (not (tracePointer ev158)) (tracePointer ev159))
)

(:action moveSync#activitya#ev184
:precondition (and (token 1045) (tracePointer ev184))
:effect (and (allowed) (not (token 1045)) (token 1150) (not (tracePointer ev184)) (tracePointer ev185))
)

(:action moveSync#activitya#ev210
:precondition (and (token 1045) (tracePointer ev210))
:effect (and (allowed) (not (token 1045)) (token 1150) (not (tracePointer ev210)) (tracePointer ev211))
)

(:action moveSync#activitya#ev217
:precondition (and (token 1045) (tracePointer ev217))
:effect (and (allowed) (not (token 1045)) (token 1150) (not (tracePointer ev217)) (tracePointer ev218))
)

(:action moveSync#activitya#ev247
:precondition (and (token 1045) (tracePointer ev247))
:effect (and (allowed) (not (token 1045)) (token 1150) (not (tracePointer ev247)) (tracePointer ev248))
)

(:action moveSync#activitya#ev270
:precondition (and (token 1045) (tracePointer ev270))
:effect (and (allowed) (not (token 1045)) (token 1150) (not (tracePointer ev270)) (tracePointer ev271))
)

(:action moveSync#activitya#ev287
:precondition (and (token 1045) (tracePointer ev287))
:effect (and (allowed) (not (token 1045)) (token 1150) (not (tracePointer ev287)) (tracePointer ev288))
)

(:action moveSync#activitya#ev306
:precondition (and (token 1045) (tracePointer ev306))
:effect (and (allowed) (not (token 1045)) (token 1150) (not (tracePointer ev306)) (tracePointer ev307))
)

(:action moveSync#activitya#ev333
:precondition (and (token 1045) (tracePointer ev333))
:effect (and (allowed) (not (token 1045)) (token 1150) (not (tracePointer ev333)) (tracePointer ev334))
)

(:action moveSync#activitya#ev356
:precondition (and (token 1045) (tracePointer ev356))
:effect (and (allowed) (not (token 1045)) (token 1150) (not (tracePointer ev356)) (tracePointer ev357))
)

(:action moveSync#activitya#ev386
:precondition (and (token 1045) (tracePointer ev386))
:effect (and (allowed) (not (token 1045)) (token 1150) (not (tracePointer ev386)) (tracePointer ev387))
)

(:action moveInTheModel#activitya
:precondition (token 1045)
:effect (and (not (allowed)) (not (token 1045)) (token 1150) (increase (total-cost) 1)
)
)

(:action moveSync#activitycb#ev173
:precondition (and (token 1260) (tracePointer ev173))
:effect (and (allowed) (not (token 1260)) (token 1259) (not (tracePointer ev173)) (tracePointer ev174))
)

(:action moveSync#activitycb#ev235
:precondition (and (token 1260) (tracePointer ev235))
:effect (and (allowed) (not (token 1260)) (token 1259) (not (tracePointer ev235)) (tracePointer ev236))
)

(:action moveSync#activitycb#ev264
:precondition (and (token 1260) (tracePointer ev264))
:effect (and (allowed) (not (token 1260)) (token 1259) (not (tracePointer ev264)) (tracePointer ev265))
)

(:action moveSync#activitycb#ev376
:precondition (and (token 1260) (tracePointer ev376))
:effect (and (allowed) (not (token 1260)) (token 1259) (not (tracePointer ev376)) (tracePointer ev377))
)

(:action moveInTheModel#activitycb
:precondition (token 1260)
:effect (and (not (allowed)) (not (token 1260)) (token 1259) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activityf
:precondition (token 1194)
:effect (and (not (allowed)) (not (token 1194)) (token 1152) (increase (total-cost) 1)
)
)

(:action moveSync#activitybe#ev5
:precondition (and (token 1179) (tracePointer ev5))
:effect (and (allowed) (not (token 1179)) (token 1265) (not (tracePointer ev5)) (tracePointer ev6))
)

(:action moveSync#activitybe#ev37
:precondition (and (token 1179) (tracePointer ev37))
:effect (and (allowed) (not (token 1179)) (token 1265) (not (tracePointer ev37)) (tracePointer ev38))
)

(:action moveSync#activitybe#ev53
:precondition (and (token 1179) (tracePointer ev53))
:effect (and (allowed) (not (token 1179)) (token 1265) (not (tracePointer ev53)) (tracePointer ev54))
)

(:action moveSync#activitybe#ev80
:precondition (and (token 1179) (tracePointer ev80))
:effect (and (allowed) (not (token 1179)) (token 1265) (not (tracePointer ev80)) (tracePointer ev81))
)

(:action moveSync#activitybe#ev103
:precondition (and (token 1179) (tracePointer ev103))
:effect (and (allowed) (not (token 1179)) (token 1265) (not (tracePointer ev103)) (tracePointer ev104))
)

(:action moveSync#activitybe#ev150
:precondition (and (token 1179) (tracePointer ev150))
:effect (and (allowed) (not (token 1179)) (token 1265) (not (tracePointer ev150)) (tracePointer ev151))
)

(:action moveSync#activitybe#ev180
:precondition (and (token 1179) (tracePointer ev180))
:effect (and (allowed) (not (token 1179)) (token 1265) (not (tracePointer ev180)) (tracePointer ev181))
)

(:action moveSync#activitybe#ev205
:precondition (and (token 1179) (tracePointer ev205))
:effect (and (allowed) (not (token 1179)) (token 1265) (not (tracePointer ev205)) (tracePointer ev206))
)

(:action moveSync#activitybe#ev242
:precondition (and (token 1179) (tracePointer ev242))
:effect (and (allowed) (not (token 1179)) (token 1265) (not (tracePointer ev242)) (tracePointer ev243))
)

(:action moveSync#activitybe#ev267
:precondition (and (token 1179) (tracePointer ev267))
:effect (and (allowed) (not (token 1179)) (token 1265) (not (tracePointer ev267)) (tracePointer ev268))
)

(:action moveSync#activitybe#ev284
:precondition (and (token 1179) (tracePointer ev284))
:effect (and (allowed) (not (token 1179)) (token 1265) (not (tracePointer ev284)) (tracePointer ev285))
)

(:action moveSync#activitybe#ev305
:precondition (and (token 1179) (tracePointer ev305))
:effect (and (allowed) (not (token 1179)) (token 1265) (not (tracePointer ev305)) (tracePointer ev306))
)

(:action moveSync#activitybe#ev331
:precondition (and (token 1179) (tracePointer ev331))
:effect (and (allowed) (not (token 1179)) (token 1265) (not (tracePointer ev331)) (tracePointer ev332))
)

(:action moveSync#activitybe#ev412
:precondition (and (token 1179) (tracePointer ev412))
:effect (and (allowed) (not (token 1179)) (token 1265) (not (tracePointer ev412)) (tracePointer evEND))
)

(:action moveInTheModel#activitybe
:precondition (token 1179)
:effect (and (not (allowed)) (not (token 1179)) (token 1265) (increase (total-cost) 1)
)
)

(:action moveInTheModel#generatedinv4
:precondition (and (token 1240) (token 1212) (token 1265))
:effect (and (not (allowed)) (not (token 1240)) (not (token 1212)) (not (token 1265)) (token 1214) (increase (total-cost) 0)
)
)

(:action moveSync#activityx#ev112
:precondition (and (token 1218) (tracePointer ev112))
:effect (and (allowed) (not (token 1218)) (token 1217) (not (tracePointer ev112)) (tracePointer ev113))
)

(:action moveSync#activityx#ev129
:precondition (and (token 1218) (tracePointer ev129))
:effect (and (allowed) (not (token 1218)) (token 1217) (not (tracePointer ev129)) (tracePointer ev130))
)

(:action moveSync#activityx#ev190
:precondition (and (token 1218) (tracePointer ev190))
:effect (and (allowed) (not (token 1218)) (token 1217) (not (tracePointer ev190)) (tracePointer ev191))
)

(:action moveSync#activityx#ev223
:precondition (and (token 1218) (tracePointer ev223))
:effect (and (allowed) (not (token 1218)) (token 1217) (not (tracePointer ev223)) (tracePointer ev224))
)

(:action moveSync#activityx#ev253
:precondition (and (token 1218) (tracePointer ev253))
:effect (and (allowed) (not (token 1218)) (token 1217) (not (tracePointer ev253)) (tracePointer ev254))
)

(:action moveSync#activityx#ev315
:precondition (and (token 1218) (tracePointer ev315))
:effect (and (allowed) (not (token 1218)) (token 1217) (not (tracePointer ev315)) (tracePointer ev316))
)

(:action moveSync#activityx#ev365
:precondition (and (token 1218) (tracePointer ev365))
:effect (and (allowed) (not (token 1218)) (token 1217) (not (tracePointer ev365)) (tracePointer ev366))
)

(:action moveSync#activityx#ev396
:precondition (and (token 1218) (tracePointer ev396))
:effect (and (allowed) (not (token 1218)) (token 1217) (not (tracePointer ev396)) (tracePointer ev397))
)

(:action moveInTheModel#activityx
:precondition (token 1218)
:effect (and (not (allowed)) (not (token 1218)) (token 1217) (increase (total-cost) 1)
)
)

(:action moveSync#activitycm#ev6
:precondition (and (token 1161) (tracePointer ev6))
:effect (and (allowed) (not (token 1161)) (token 1187) (not (tracePointer ev6)) (tracePointer ev7))
)

(:action moveSync#activitycm#ev52
:precondition (and (token 1161) (tracePointer ev52))
:effect (and (allowed) (not (token 1161)) (token 1187) (not (tracePointer ev52)) (tracePointer ev53))
)

(:action moveSync#activitycm#ev70
:precondition (and (token 1161) (tracePointer ev70))
:effect (and (allowed) (not (token 1161)) (token 1187) (not (tracePointer ev70)) (tracePointer ev71))
)

(:action moveSync#activitycm#ev120
:precondition (and (token 1161) (tracePointer ev120))
:effect (and (allowed) (not (token 1161)) (token 1187) (not (tracePointer ev120)) (tracePointer ev121))
)

(:action moveSync#activitycm#ev155
:precondition (and (token 1161) (tracePointer ev155))
:effect (and (allowed) (not (token 1161)) (token 1187) (not (tracePointer ev155)) (tracePointer ev156))
)

(:action moveSync#activitycm#ev179
:precondition (and (token 1161) (tracePointer ev179))
:effect (and (allowed) (not (token 1161)) (token 1187) (not (tracePointer ev179)) (tracePointer ev180))
)

(:action moveSync#activitycm#ev206
:precondition (and (token 1161) (tracePointer ev206))
:effect (and (allowed) (not (token 1161)) (token 1187) (not (tracePointer ev206)) (tracePointer ev207))
)

(:action moveSync#activitycm#ev243
:precondition (and (token 1161) (tracePointer ev243))
:effect (and (allowed) (not (token 1161)) (token 1187) (not (tracePointer ev243)) (tracePointer ev244))
)

(:action moveSync#activitycm#ev268
:precondition (and (token 1161) (tracePointer ev268))
:effect (and (allowed) (not (token 1161)) (token 1187) (not (tracePointer ev268)) (tracePointer ev269))
)

(:action moveSync#activitycm#ev330
:precondition (and (token 1161) (tracePointer ev330))
:effect (and (allowed) (not (token 1161)) (token 1187) (not (tracePointer ev330)) (tracePointer ev331))
)

(:action moveSync#activitycm#ev353
:precondition (and (token 1161) (tracePointer ev353))
:effect (and (allowed) (not (token 1161)) (token 1187) (not (tracePointer ev353)) (tracePointer ev354))
)

(:action moveSync#activitycm#ev382
:precondition (and (token 1161) (tracePointer ev382))
:effect (and (allowed) (not (token 1161)) (token 1187) (not (tracePointer ev382)) (tracePointer ev383))
)

(:action moveInTheModel#activitycm
:precondition (token 1161)
:effect (and (not (allowed)) (not (token 1161)) (token 1187) (increase (total-cost) 1)
)
)

(:action moveSync#activitybg#ev76
:precondition (and (token 1181) (tracePointer ev76))
:effect (and (allowed) (not (token 1181)) (token 1242) (not (tracePointer ev76)) (tracePointer ev77))
)

(:action moveSync#activitybg#ev281
:precondition (and (token 1181) (tracePointer ev281))
:effect (and (allowed) (not (token 1181)) (token 1242) (not (tracePointer ev281)) (tracePointer ev282))
)

(:action moveSync#activitybg#ev327
:precondition (and (token 1181) (tracePointer ev327))
:effect (and (allowed) (not (token 1181)) (token 1242) (not (tracePointer ev327)) (tracePointer ev328))
)

(:action moveInTheModel#activitybg
:precondition (token 1181)
:effect (and (not (allowed)) (not (token 1181)) (token 1242) (increase (total-cost) 1)
)
)

(:action moveSync#activityce#ev7
:precondition (and (token 1187) (tracePointer ev7))
:effect (and (allowed) (not (token 1187)) (token 1212) (not (tracePointer ev7)) (tracePointer ev8))
)

(:action moveSync#activityce#ev35
:precondition (and (token 1187) (tracePointer ev35))
:effect (and (allowed) (not (token 1187)) (token 1212) (not (tracePointer ev35)) (tracePointer ev36))
)

(:action moveSync#activityce#ev54
:precondition (and (token 1187) (tracePointer ev54))
:effect (and (allowed) (not (token 1187)) (token 1212) (not (tracePointer ev54)) (tracePointer ev55))
)

(:action moveSync#activityce#ev71
:precondition (and (token 1187) (tracePointer ev71))
:effect (and (allowed) (not (token 1187)) (token 1212) (not (tracePointer ev71)) (tracePointer ev72))
)

(:action moveSync#activityce#ev121
:precondition (and (token 1187) (tracePointer ev121))
:effect (and (allowed) (not (token 1187)) (token 1212) (not (tracePointer ev121)) (tracePointer ev122))
)

(:action moveSync#activityce#ev149
:precondition (and (token 1187) (tracePointer ev149))
:effect (and (allowed) (not (token 1187)) (token 1212) (not (tracePointer ev149)) (tracePointer ev150))
)

(:action moveSync#activityce#ev156
:precondition (and (token 1187) (tracePointer ev156))
:effect (and (allowed) (not (token 1187)) (token 1212) (not (tracePointer ev156)) (tracePointer ev157))
)

(:action moveSync#activityce#ev181
:precondition (and (token 1187) (tracePointer ev181))
:effect (and (allowed) (not (token 1187)) (token 1212) (not (tracePointer ev181)) (tracePointer ev182))
)

(:action moveSync#activityce#ev208
:precondition (and (token 1187) (tracePointer ev208))
:effect (and (allowed) (not (token 1187)) (token 1212) (not (tracePointer ev208)) (tracePointer ev209))
)

(:action moveSync#activityce#ev244
:precondition (and (token 1187) (tracePointer ev244))
:effect (and (allowed) (not (token 1187)) (token 1212) (not (tracePointer ev244)) (tracePointer ev245))
)

(:action moveSync#activityce#ev269
:precondition (and (token 1187) (tracePointer ev269))
:effect (and (allowed) (not (token 1187)) (token 1212) (not (tracePointer ev269)) (tracePointer ev270))
)

(:action moveSync#activityce#ev332
:precondition (and (token 1187) (tracePointer ev332))
:effect (and (allowed) (not (token 1187)) (token 1212) (not (tracePointer ev332)) (tracePointer ev333))
)

(:action moveSync#activityce#ev354
:precondition (and (token 1187) (tracePointer ev354))
:effect (and (allowed) (not (token 1187)) (token 1212) (not (tracePointer ev354)) (tracePointer ev355))
)

(:action moveSync#activityce#ev383
:precondition (and (token 1187) (tracePointer ev383))
:effect (and (allowed) (not (token 1187)) (token 1212) (not (tracePointer ev383)) (tracePointer ev384))
)

(:action moveInTheModel#activityce
:precondition (token 1187)
:effect (and (not (allowed)) (not (token 1187)) (token 1212) (increase (total-cost) 1)
)
)

(:action moveSync#activitybr#ev24
:precondition (and (token 1247) (tracePointer ev24))
:effect (and (allowed) (not (token 1247)) (token 1248) (not (tracePointer ev24)) (tracePointer ev25))
)

(:action moveInTheModel#activitybr
:precondition (token 1247)
:effect (and (not (allowed)) (not (token 1247)) (token 1248) (increase (total-cost) 1)
)
)

(:action moveSync#activitys#ev43
:precondition (and (token 1221) (tracePointer ev43))
:effect (and (allowed) (not (token 1221)) (token 1182) (not (tracePointer ev43)) (tracePointer ev44))
)

(:action moveSync#activitys#ev85
:precondition (and (token 1221) (tracePointer ev85))
:effect (and (allowed) (not (token 1221)) (token 1182) (not (tracePointer ev85)) (tracePointer ev86))
)

(:action moveSync#activitys#ev109
:precondition (and (token 1221) (tracePointer ev109))
:effect (and (allowed) (not (token 1221)) (token 1182) (not (tracePointer ev109)) (tracePointer ev110))
)

(:action moveSync#activitys#ev126
:precondition (and (token 1221) (tracePointer ev126))
:effect (and (allowed) (not (token 1221)) (token 1182) (not (tracePointer ev126)) (tracePointer ev127))
)

(:action moveSync#activitys#ev162
:precondition (and (token 1221) (tracePointer ev162))
:effect (and (allowed) (not (token 1221)) (token 1182) (not (tracePointer ev162)) (tracePointer ev163))
)

(:action moveSync#activitys#ev187
:precondition (and (token 1221) (tracePointer ev187))
:effect (and (allowed) (not (token 1221)) (token 1182) (not (tracePointer ev187)) (tracePointer ev188))
)

(:action moveSync#activitys#ev220
:precondition (and (token 1221) (tracePointer ev220))
:effect (and (allowed) (not (token 1221)) (token 1182) (not (tracePointer ev220)) (tracePointer ev221))
)

(:action moveSync#activitys#ev250
:precondition (and (token 1221) (tracePointer ev250))
:effect (and (allowed) (not (token 1221)) (token 1182) (not (tracePointer ev250)) (tracePointer ev251))
)

(:action moveSync#activitys#ev273
:precondition (and (token 1221) (tracePointer ev273))
:effect (and (allowed) (not (token 1221)) (token 1182) (not (tracePointer ev273)) (tracePointer ev274))
)

(:action moveSync#activitys#ev290
:precondition (and (token 1221) (tracePointer ev290))
:effect (and (allowed) (not (token 1221)) (token 1182) (not (tracePointer ev290)) (tracePointer ev291))
)

(:action moveSync#activitys#ev312
:precondition (and (token 1221) (tracePointer ev312))
:effect (and (allowed) (not (token 1221)) (token 1182) (not (tracePointer ev312)) (tracePointer ev313))
)

(:action moveSync#activitys#ev340
:precondition (and (token 1221) (tracePointer ev340))
:effect (and (allowed) (not (token 1221)) (token 1182) (not (tracePointer ev340)) (tracePointer ev341))
)

(:action moveSync#activitys#ev362
:precondition (and (token 1221) (tracePointer ev362))
:effect (and (allowed) (not (token 1221)) (token 1182) (not (tracePointer ev362)) (tracePointer ev363))
)

(:action moveSync#activitys#ev393
:precondition (and (token 1221) (tracePointer ev393))
:effect (and (allowed) (not (token 1221)) (token 1182) (not (tracePointer ev393)) (tracePointer ev394))
)

(:action moveInTheModel#activitys
:precondition (token 1221)
:effect (and (not (allowed)) (not (token 1221)) (token 1182) (increase (total-cost) 1)
)
)

(:action moveSync#activitych#ev22
:precondition (and (token 1190) (tracePointer ev22))
:effect (and (allowed) (not (token 1190)) (token 1189) (not (tracePointer ev22)) (tracePointer ev23))
)

(:action moveSync#activitych#ev141
:precondition (and (token 1190) (tracePointer ev141))
:effect (and (allowed) (not (token 1190)) (token 1189) (not (tracePointer ev141)) (tracePointer ev142))
)

(:action moveInTheModel#activitych
:precondition (token 1190)
:effect (and (not (allowed)) (not (token 1190)) (token 1189) (increase (total-cost) 1)
)
)

(:action moveSync#activitybt#ev2
:precondition (and (token 1188) (tracePointer ev2))
:effect (and (allowed) (not (token 1188)) (token 1253) (not (tracePointer ev2)) (tracePointer ev3))
)

(:action moveSync#activitybt#ev48
:precondition (and (token 1188) (tracePointer ev48))
:effect (and (allowed) (not (token 1188)) (token 1253) (not (tracePointer ev48)) (tracePointer ev49))
)

(:action moveSync#activitybt#ev97
:precondition (and (token 1188) (tracePointer ev97))
:effect (and (allowed) (not (token 1188)) (token 1253) (not (tracePointer ev97)) (tracePointer ev98))
)

(:action moveSync#activitybt#ev302
:precondition (and (token 1188) (tracePointer ev302))
:effect (and (allowed) (not (token 1188)) (token 1253) (not (tracePointer ev302)) (tracePointer ev303))
)

(:action moveSync#activitybt#ev407
:precondition (and (token 1188) (tracePointer ev407))
:effect (and (allowed) (not (token 1188)) (token 1253) (not (tracePointer ev407)) (tracePointer ev408))
)

(:action moveInTheModel#activitybt
:precondition (token 1188)
:effect (and (not (allowed)) (not (token 1188)) (token 1253) (increase (total-cost) 1)
)
)

(:action moveSync#activitybq#ev26
:precondition (and (token 1245) (tracePointer ev26))
:effect (and (allowed) (not (token 1245)) (token 1246) (not (tracePointer ev26)) (tracePointer ev27))
)

(:action moveInTheModel#activitybq
:precondition (token 1245)
:effect (and (not (allowed)) (not (token 1245)) (token 1246) (increase (total-cost) 1)
)
)

(:action moveSync#activityp#ev308
:precondition (and (token 1171) (tracePointer ev308))
:effect (and (allowed) (not (token 1171)) (token 1210) (not (tracePointer ev308)) (tracePointer ev309))
)

(:action moveSync#activityp#ev358
:precondition (and (token 1171) (tracePointer ev358))
:effect (and (allowed) (not (token 1171)) (token 1210) (not (tracePointer ev358)) (tracePointer ev359))
)

(:action moveInTheModel#activityp
:precondition (token 1171)
:effect (and (not (allowed)) (not (token 1171)) (token 1210) (increase (total-cost) 1)
)
)

(:action moveInTheModel#generatedinv5
:precondition (token 1174)
:effect (and (not (allowed)) (not (token 1174)) (token 1177) (increase (total-cost) 0)
)
)

(:action moveSync#activityk#ev338
:precondition (and (token 1164) (tracePointer ev338))
:effect (and (allowed) (not (token 1164)) (token 1152) (not (tracePointer ev338)) (tracePointer ev339))
)

(:action moveSync#activityk#ev391
:precondition (and (token 1164) (tracePointer ev391))
:effect (and (allowed) (not (token 1164)) (token 1152) (not (tracePointer ev391)) (tracePointer ev392))
)

(:action moveInTheModel#activityk
:precondition (token 1164)
:effect (and (not (allowed)) (not (token 1164)) (token 1152) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activitycs
:precondition (token 1161)
:effect (and (not (allowed)) (not (token 1161)) (token 1174) (increase (total-cost) 1)
)
)

(:action moveSync#activitybo#ev31
:precondition (and (token 1252) (tracePointer ev31))
:effect (and (allowed) (not (token 1252)) (token 1147) (not (tracePointer ev31)) (tracePointer ev32))
)

(:action moveInTheModel#activitybo
:precondition (token 1252)
:effect (and (not (allowed)) (not (token 1252)) (token 1147) (increase (total-cost) 1)
)
)

(:action moveInTheModel#generatedinv6
:precondition (and (token 1234) (token 1232))
:effect (and (not (allowed)) (not (token 1234)) (not (token 1232)) (token 1236) (increase (total-cost) 0)
)
)

(:action moveSync#activityav#ev38
:precondition (and (token 1238) (tracePointer ev38))
:effect (and (allowed) (not (token 1238)) (token 1156) (not (tracePointer ev38)) (tracePointer ev39))
)

(:action moveSync#activityav#ev49
:precondition (and (token 1238) (tracePointer ev49))
:effect (and (allowed) (not (token 1238)) (token 1156) (not (tracePointer ev49)) (tracePointer ev50))
)

(:action moveSync#activityav#ev68
:precondition (and (token 1238) (tracePointer ev68))
:effect (and (allowed) (not (token 1238)) (token 1156) (not (tracePointer ev68)) (tracePointer ev69))
)

(:action moveSync#activityav#ev75
:precondition (and (token 1238) (tracePointer ev75))
:effect (and (allowed) (not (token 1238)) (token 1156) (not (tracePointer ev75)) (tracePointer ev76))
)

(:action moveSync#activityav#ev102
:precondition (and (token 1238) (tracePointer ev102))
:effect (and (allowed) (not (token 1238)) (token 1156) (not (tracePointer ev102)) (tracePointer ev103))
)

(:action moveSync#activityav#ev148
:precondition (and (token 1238) (tracePointer ev148))
:effect (and (allowed) (not (token 1238)) (token 1156) (not (tracePointer ev148)) (tracePointer ev149))
)

(:action moveSync#activityav#ev176
:precondition (and (token 1238) (tracePointer ev176))
:effect (and (allowed) (not (token 1238)) (token 1156) (not (tracePointer ev176)) (tracePointer ev177))
)

(:action moveSync#activityav#ev202
:precondition (and (token 1238) (tracePointer ev202))
:effect (and (allowed) (not (token 1238)) (token 1156) (not (tracePointer ev202)) (tracePointer ev203))
)

(:action moveSync#activityav#ev214
:precondition (and (token 1238) (tracePointer ev214))
:effect (and (allowed) (not (token 1238)) (token 1156) (not (tracePointer ev214)) (tracePointer ev215))
)

(:action moveSync#activityav#ev241
:precondition (and (token 1238) (tracePointer ev241))
:effect (and (allowed) (not (token 1238)) (token 1156) (not (tracePointer ev241)) (tracePointer ev242))
)

(:action moveSync#activityav#ev280
:precondition (and (token 1238) (tracePointer ev280))
:effect (and (allowed) (not (token 1238)) (token 1156) (not (tracePointer ev280)) (tracePointer ev281))
)

(:action moveSync#activityav#ev352
:precondition (and (token 1238) (tracePointer ev352))
:effect (and (allowed) (not (token 1238)) (token 1156) (not (tracePointer ev352)) (tracePointer ev353))
)

(:action moveSync#activityav#ev379
:precondition (and (token 1238) (tracePointer ev379))
:effect (and (allowed) (not (token 1238)) (token 1156) (not (tracePointer ev379)) (tracePointer ev380))
)

(:action moveSync#activityav#ev410
:precondition (and (token 1238) (tracePointer ev410))
:effect (and (allowed) (not (token 1238)) (token 1156) (not (tracePointer ev410)) (tracePointer ev411))
)

(:action moveInTheModel#activityav
:precondition (token 1238)
:effect (and (not (allowed)) (not (token 1238)) (token 1156) (increase (total-cost) 1)
)
)

(:action moveInTheModel#generatedinv7
:precondition (token 1235)
:effect (and (not (allowed)) (not (token 1235)) (token 1231) (token 1233) (increase (total-cost) 0)
)
)

(:action moveSync#activityi#ev335
:precondition (and (token 1200) (tracePointer ev335))
:effect (and (allowed) (not (token 1200)) (token 1206) (not (tracePointer ev335)) (tracePointer ev336))
)

(:action moveSync#activityi#ev388
:precondition (and (token 1200) (tracePointer ev388))
:effect (and (allowed) (not (token 1200)) (token 1206) (not (tracePointer ev388)) (tracePointer ev389))
)

(:action moveInTheModel#activityi
:precondition (token 1200)
:effect (and (not (allowed)) (not (token 1200)) (token 1206) (increase (total-cost) 1)
)
)

(:action moveSync#activityt#ev11
:precondition (and (token 1184) (tracePointer ev11))
:effect (and (allowed) (not (token 1184)) (token 1216) (not (tracePointer ev11)) (tracePointer ev12))
)

(:action moveSync#activityt#ev60
:precondition (and (token 1184) (tracePointer ev60))
:effect (and (allowed) (not (token 1184)) (token 1216) (not (tracePointer ev60)) (tracePointer ev61))
)

(:action moveSync#activityt#ev91
:precondition (and (token 1184) (tracePointer ev91))
:effect (and (allowed) (not (token 1184)) (token 1216) (not (tracePointer ev91)) (tracePointer ev92))
)

(:action moveSync#activityt#ev114
:precondition (and (token 1184) (tracePointer ev114))
:effect (and (allowed) (not (token 1184)) (token 1216) (not (tracePointer ev114)) (tracePointer ev115))
)

(:action moveSync#activityt#ev131
:precondition (and (token 1184) (tracePointer ev131))
:effect (and (allowed) (not (token 1184)) (token 1216) (not (tracePointer ev131)) (tracePointer ev132))
)

(:action moveSync#activityt#ev164
:precondition (and (token 1184) (tracePointer ev164))
:effect (and (allowed) (not (token 1184)) (token 1216) (not (tracePointer ev164)) (tracePointer ev165))
)

(:action moveSync#activityt#ev192
:precondition (and (token 1184) (tracePointer ev192))
:effect (and (allowed) (not (token 1184)) (token 1216) (not (tracePointer ev192)) (tracePointer ev193))
)

(:action moveSync#activityt#ev225
:precondition (and (token 1184) (tracePointer ev225))
:effect (and (allowed) (not (token 1184)) (token 1216) (not (tracePointer ev225)) (tracePointer ev226))
)

(:action moveSync#activityt#ev255
:precondition (and (token 1184) (tracePointer ev255))
:effect (and (allowed) (not (token 1184)) (token 1216) (not (tracePointer ev255)) (tracePointer ev256))
)

(:action moveSync#activityt#ev296
:precondition (and (token 1184) (tracePointer ev296))
:effect (and (allowed) (not (token 1184)) (token 1216) (not (tracePointer ev296)) (tracePointer ev297))
)

(:action moveSync#activityt#ev317
:precondition (and (token 1184) (tracePointer ev317))
:effect (and (allowed) (not (token 1184)) (token 1216) (not (tracePointer ev317)) (tracePointer ev318))
)

(:action moveSync#activityt#ev342
:precondition (and (token 1184) (tracePointer ev342))
:effect (and (allowed) (not (token 1184)) (token 1216) (not (tracePointer ev342)) (tracePointer ev343))
)

(:action moveSync#activityt#ev367
:precondition (and (token 1184) (tracePointer ev367))
:effect (and (allowed) (not (token 1184)) (token 1216) (not (tracePointer ev367)) (tracePointer ev368))
)

(:action moveSync#activityt#ev398
:precondition (and (token 1184) (tracePointer ev398))
:effect (and (allowed) (not (token 1184)) (token 1216) (not (tracePointer ev398)) (tracePointer ev399))
)

(:action moveInTheModel#activityt
:precondition (token 1184)
:effect (and (not (allowed)) (not (token 1184)) (token 1216) (increase (total-cost) 1)
)
)

(:action moveSync#activitybz#ev175
:precondition (and (token 1255) (tracePointer ev175))
:effect (and (allowed) (not (token 1255)) (token 1256) (not (tracePointer ev175)) (tracePointer ev176))
)

(:action moveSync#activitybz#ev234
:precondition (and (token 1255) (tracePointer ev234))
:effect (and (allowed) (not (token 1255)) (token 1256) (not (tracePointer ev234)) (tracePointer ev235))
)

(:action moveSync#activitybz#ev263
:precondition (and (token 1255) (tracePointer ev263))
:effect (and (allowed) (not (token 1255)) (token 1256) (not (tracePointer ev263)) (tracePointer ev264))
)

(:action moveSync#activitybz#ev378
:precondition (and (token 1255) (tracePointer ev378))
:effect (and (allowed) (not (token 1255)) (token 1256) (not (tracePointer ev378)) (tracePointer ev379))
)

(:action moveInTheModel#activitybz
:precondition (token 1255)
:effect (and (not (allowed)) (not (token 1255)) (token 1256) (increase (total-cost) 1)
)
)

(:action moveSync#activitybp#ev25
:precondition (and (token 1243) (tracePointer ev25))
:effect (and (allowed) (not (token 1243)) (token 1244) (not (tracePointer ev25)) (tracePointer ev26))
)

(:action moveInTheModel#activitybp
:precondition (token 1243)
:effect (and (not (allowed)) (not (token 1243)) (token 1244) (increase (total-cost) 1)
)
)

(:action moveSync#activityby#ev178
:precondition (and (token 1263) (tracePointer ev178))
:effect (and (allowed) (not (token 1263)) (token 1179) (not (tracePointer ev178)) (tracePointer ev179))
)

(:action moveSync#activityby#ev240
:precondition (and (token 1263) (tracePointer ev240))
:effect (and (allowed) (not (token 1263)) (token 1179) (not (tracePointer ev240)) (tracePointer ev241))
)

(:action moveSync#activityby#ev266
:precondition (and (token 1263) (tracePointer ev266))
:effect (and (allowed) (not (token 1263)) (token 1179) (not (tracePointer ev266)) (tracePointer ev267))
)

(:action moveSync#activityby#ev381
:precondition (and (token 1263) (tracePointer ev381))
:effect (and (allowed) (not (token 1263)) (token 1179) (not (tracePointer ev381)) (tracePointer ev382))
)

(:action moveInTheModel#activityby
:precondition (token 1263)
:effect (and (not (allowed)) (not (token 1263)) (token 1179) (increase (total-cost) 1)
)
)

(:action moveSync#activityv#ev110
:precondition (and (token 1182) (tracePointer ev110))
:effect (and (allowed) (not (token 1182)) (token 1215) (not (tracePointer ev110)) (tracePointer ev111))
)

(:action moveSync#activityv#ev127
:precondition (and (token 1182) (tracePointer ev127))
:effect (and (allowed) (not (token 1182)) (token 1215) (not (tracePointer ev127)) (tracePointer ev128))
)

(:action moveSync#activityv#ev188
:precondition (and (token 1182) (tracePointer ev188))
:effect (and (allowed) (not (token 1182)) (token 1215) (not (tracePointer ev188)) (tracePointer ev189))
)

(:action moveSync#activityv#ev221
:precondition (and (token 1182) (tracePointer ev221))
:effect (and (allowed) (not (token 1182)) (token 1215) (not (tracePointer ev221)) (tracePointer ev222))
)

(:action moveSync#activityv#ev251
:precondition (and (token 1182) (tracePointer ev251))
:effect (and (allowed) (not (token 1182)) (token 1215) (not (tracePointer ev251)) (tracePointer ev252))
)

(:action moveSync#activityv#ev313
:precondition (and (token 1182) (tracePointer ev313))
:effect (and (allowed) (not (token 1182)) (token 1215) (not (tracePointer ev313)) (tracePointer ev314))
)

(:action moveSync#activityv#ev363
:precondition (and (token 1182) (tracePointer ev363))
:effect (and (allowed) (not (token 1182)) (token 1215) (not (tracePointer ev363)) (tracePointer ev364))
)

(:action moveSync#activityv#ev394
:precondition (and (token 1182) (tracePointer ev394))
:effect (and (allowed) (not (token 1182)) (token 1215) (not (tracePointer ev394)) (tracePointer ev395))
)

(:action moveInTheModel#activityv
:precondition (token 1182)
:effect (and (not (allowed)) (not (token 1182)) (token 1215) (increase (total-cost) 1)
)
)

(:action moveSync#activitybd#ev14
:precondition (and (token 1264) (tracePointer ev14))
:effect (and (allowed) (not (token 1264)) (token 1178) (not (tracePointer ev14)) (tracePointer ev15))
)

(:action moveSync#activitybd#ev63
:precondition (and (token 1264) (tracePointer ev63))
:effect (and (allowed) (not (token 1264)) (token 1178) (not (tracePointer ev63)) (tracePointer ev64))
)

(:action moveSync#activitybd#ev95
:precondition (and (token 1264) (tracePointer ev95))
:effect (and (allowed) (not (token 1264)) (token 1178) (not (tracePointer ev95)) (tracePointer ev96))
)

(:action moveSync#activitybd#ev116
:precondition (and (token 1264) (tracePointer ev116))
:effect (and (allowed) (not (token 1264)) (token 1178) (not (tracePointer ev116)) (tracePointer ev117))
)

(:action moveSync#activitybd#ev135
:precondition (and (token 1264) (tracePointer ev135))
:effect (and (allowed) (not (token 1264)) (token 1178) (not (tracePointer ev135)) (tracePointer ev136))
)

(:action moveSync#activitybd#ev168
:precondition (and (token 1264) (tracePointer ev168))
:effect (and (allowed) (not (token 1264)) (token 1178) (not (tracePointer ev168)) (tracePointer ev169))
)

(:action moveSync#activitybd#ev196
:precondition (and (token 1264) (tracePointer ev196))
:effect (and (allowed) (not (token 1264)) (token 1178) (not (tracePointer ev196)) (tracePointer ev197))
)

(:action moveSync#activitybd#ev228
:precondition (and (token 1264) (tracePointer ev228))
:effect (and (allowed) (not (token 1264)) (token 1178) (not (tracePointer ev228)) (tracePointer ev229))
)

(:action moveSync#activitybd#ev257
:precondition (and (token 1264) (tracePointer ev257))
:effect (and (allowed) (not (token 1264)) (token 1178) (not (tracePointer ev257)) (tracePointer ev258))
)

(:action moveSync#activitybd#ev298
:precondition (and (token 1264) (tracePointer ev298))
:effect (and (allowed) (not (token 1264)) (token 1178) (not (tracePointer ev298)) (tracePointer ev299))
)

(:action moveSync#activitybd#ev319
:precondition (and (token 1264) (tracePointer ev319))
:effect (and (allowed) (not (token 1264)) (token 1178) (not (tracePointer ev319)) (tracePointer ev320))
)

(:action moveSync#activitybd#ev345
:precondition (and (token 1264) (tracePointer ev345))
:effect (and (allowed) (not (token 1264)) (token 1178) (not (tracePointer ev345)) (tracePointer ev346))
)

(:action moveSync#activitybd#ev371
:precondition (and (token 1264) (tracePointer ev371))
:effect (and (allowed) (not (token 1264)) (token 1178) (not (tracePointer ev371)) (tracePointer ev372))
)

(:action moveSync#activitybd#ev402
:precondition (and (token 1264) (tracePointer ev402))
:effect (and (allowed) (not (token 1264)) (token 1178) (not (tracePointer ev402)) (tracePointer ev403))
)

(:action moveInTheModel#activitybd
:precondition (token 1264)
:effect (and (not (allowed)) (not (token 1264)) (token 1178) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activityap
:precondition (token 1168)
:effect (and (not (allowed)) (not (token 1168)) (token 1229) (increase (total-cost) 1)
)
)

(:action moveInTheModel#generatedinv8
:precondition (token 1208)
:effect (and (not (allowed)) (not (token 1208)) (token 1201) (token 1205) (token 1203) (increase (total-cost) 0)
)
)

(:action moveInTheModel#activitycu
:precondition (token 1174)
:effect (and (not (allowed)) (not (token 1174)) (token 1177) (increase (total-cost) 1)
)
)

(:action moveSync#activitybv#ev201
:precondition (and (token 1188) (tracePointer ev201))
:effect (and (allowed) (not (token 1188)) (token 1254) (not (tracePointer ev201)) (tracePointer ev202))
)

(:action moveInTheModel#activitybv
:precondition (token 1188)
:effect (and (not (allowed)) (not (token 1188)) (token 1254) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activityr
:precondition (token 1175)
:effect (and (not (allowed)) (not (token 1175)) (token 1171) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activityax
:precondition (token 1156)
:effect (and (not (allowed)) (not (token 1156)) (token 1235) (increase (total-cost) 1)
)
)

(:action moveInTheModel#generatedinv9
:precondition (and (token 1197) (token 1191))
:effect (and (not (allowed)) (not (token 1197)) (not (token 1191)) (token 1199) (increase (total-cost) 0)
)
)

(:action moveInTheModel#generatedinv10
:precondition (token 1229)
:effect (and (not (allowed)) (not (token 1229)) (token 1225) (token 1227) (token 1223) (increase (total-cost) 0)
)
)

(:action moveInTheModel#generatedinv11
:precondition (token 1251)
:effect (and (not (allowed)) (not (token 1251)) (token 1247) (token 1249) (token 1243) (token 1245) (increase (total-cost) 0)
)
)

(:action moveSync#activitybk#ev79
:precondition (and (token 1241) (tracePointer ev79))
:effect (and (allowed) (not (token 1241)) (token 1179) (not (tracePointer ev79)) (tracePointer ev80))
)

(:action moveSync#activitybk#ev283
:precondition (and (token 1241) (tracePointer ev283))
:effect (and (allowed) (not (token 1241)) (token 1179) (not (tracePointer ev283)) (tracePointer ev284))
)

(:action moveSync#activitybk#ev329
:precondition (and (token 1241) (tracePointer ev329))
:effect (and (allowed) (not (token 1241)) (token 1179) (not (tracePointer ev329)) (tracePointer ev330))
)

(:action moveInTheModel#activitybk
:precondition (token 1241)
:effect (and (not (allowed)) (not (token 1241)) (token 1179) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activitybc
:precondition (token 1237)
:effect (and (not (allowed)) (not (token 1237)) (token 1156) (increase (total-cost) 1)
)
)

(:action moveSync#activityao#ev406
:precondition (and (token 1222) (tracePointer ev406))
:effect (and (allowed) (not (token 1222)) (token 1169) (not (tracePointer ev406)) (tracePointer ev407))
)

(:action moveInTheModel#activityao
:precondition (token 1222)
:effect (and (not (allowed)) (not (token 1222)) (token 1169) (increase (total-cost) 1)
)
)

(:action moveSync#activityck#ev28
:precondition (and (token 1193) (tracePointer ev28))
:effect (and (allowed) (not (token 1193)) (token 1197) (not (tracePointer ev28)) (tracePointer ev29))
)

(:action moveSync#activityck#ev144
:precondition (and (token 1193) (tracePointer ev144))
:effect (and (allowed) (not (token 1193)) (token 1197) (not (tracePointer ev144)) (tracePointer ev145))
)

(:action moveInTheModel#activityck
:precondition (token 1193)
:effect (and (not (allowed)) (not (token 1193)) (token 1197) (increase (total-cost) 1)
)
)

(:action moveSync#activityaf#ev12
:precondition (and (token 1216) (tracePointer ev12))
:effect (and (allowed) (not (token 1216)) (token 1213) (not (tracePointer ev12)) (tracePointer ev13))
)

(:action moveSync#activityaf#ev61
:precondition (and (token 1216) (tracePointer ev61))
:effect (and (allowed) (not (token 1216)) (token 1213) (not (tracePointer ev61)) (tracePointer ev62))
)

(:action moveSync#activityaf#ev92
:precondition (and (token 1216) (tracePointer ev92))
:effect (and (allowed) (not (token 1216)) (token 1213) (not (tracePointer ev92)) (tracePointer ev93))
)

(:action moveSync#activityaf#ev115
:precondition (and (token 1216) (tracePointer ev115))
:effect (and (allowed) (not (token 1216)) (token 1213) (not (tracePointer ev115)) (tracePointer ev116))
)

(:action moveSync#activityaf#ev132
:precondition (and (token 1216) (tracePointer ev132))
:effect (and (allowed) (not (token 1216)) (token 1213) (not (tracePointer ev132)) (tracePointer ev133))
)

(:action moveSync#activityaf#ev165
:precondition (and (token 1216) (tracePointer ev165))
:effect (and (allowed) (not (token 1216)) (token 1213) (not (tracePointer ev165)) (tracePointer ev166))
)

(:action moveSync#activityaf#ev193
:precondition (and (token 1216) (tracePointer ev193))
:effect (and (allowed) (not (token 1216)) (token 1213) (not (tracePointer ev193)) (tracePointer ev194))
)

(:action moveSync#activityaf#ev226
:precondition (and (token 1216) (tracePointer ev226))
:effect (and (allowed) (not (token 1216)) (token 1213) (not (tracePointer ev226)) (tracePointer ev227))
)

(:action moveSync#activityaf#ev256
:precondition (and (token 1216) (tracePointer ev256))
:effect (and (allowed) (not (token 1216)) (token 1213) (not (tracePointer ev256)) (tracePointer ev257))
)

(:action moveSync#activityaf#ev297
:precondition (and (token 1216) (tracePointer ev297))
:effect (and (allowed) (not (token 1216)) (token 1213) (not (tracePointer ev297)) (tracePointer ev298))
)

(:action moveSync#activityaf#ev318
:precondition (and (token 1216) (tracePointer ev318))
:effect (and (allowed) (not (token 1216)) (token 1213) (not (tracePointer ev318)) (tracePointer ev319))
)

(:action moveSync#activityaf#ev343
:precondition (and (token 1216) (tracePointer ev343))
:effect (and (allowed) (not (token 1216)) (token 1213) (not (tracePointer ev343)) (tracePointer ev344))
)

(:action moveSync#activityaf#ev368
:precondition (and (token 1216) (tracePointer ev368))
:effect (and (allowed) (not (token 1216)) (token 1213) (not (tracePointer ev368)) (tracePointer ev369))
)

(:action moveSync#activityaf#ev399
:precondition (and (token 1216) (tracePointer ev399))
:effect (and (allowed) (not (token 1216)) (token 1213) (not (tracePointer ev399)) (tracePointer ev400))
)

(:action moveInTheModel#activityaf
:precondition (token 1216)
:effect (and (not (allowed)) (not (token 1216)) (token 1213) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activityaq
:precondition (token 1230)
:effect (and (not (allowed)) (not (token 1230)) (token 1169) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activitycv
:precondition (token 1174)
:effect (and (not (allowed)) (not (token 1174)) (token 1177) (increase (total-cost) 1)
)
)

(:action moveInTheModel#generatedinv12
:precondition (and (token 1250) (token 1244) (token 1246) (token 1248))
:effect (and (not (allowed)) (not (token 1250)) (not (token 1244)) (not (token 1246)) (not (token 1248)) (token 1252) (increase (total-cost) 0)
)
)

(:action moveInTheModel#activityar
:precondition (token 1223)
:effect (and (not (allowed)) (not (token 1223)) (token 1224) (increase (total-cost) 1)
)
)

(:action moveSync#activitybx#ev171
:precondition (and (token 1178) (tracePointer ev171))
:effect (and (allowed) (not (token 1178)) (token 1262) (not (tracePointer ev171)) (tracePointer ev172))
)

(:action moveSync#activitybx#ev231
:precondition (and (token 1178) (tracePointer ev231))
:effect (and (allowed) (not (token 1178)) (token 1262) (not (tracePointer ev231)) (tracePointer ev232))
)

(:action moveSync#activitybx#ev260
:precondition (and (token 1178) (tracePointer ev260))
:effect (and (allowed) (not (token 1178)) (token 1262) (not (tracePointer ev260)) (tracePointer ev261))
)

(:action moveSync#activitybx#ev374
:precondition (and (token 1178) (tracePointer ev374))
:effect (and (allowed) (not (token 1178)) (token 1262) (not (tracePointer ev374)) (tracePointer ev375))
)

(:action moveInTheModel#activitybx
:precondition (token 1178)
:effect (and (not (allowed)) (not (token 1178)) (token 1262) (increase (total-cost) 1)
)
)

(:action moveSync#activityz#ev86
:precondition (and (token 1182) (tracePointer ev86))
:effect (and (allowed) (not (token 1182)) (token 1154) (not (tracePointer ev86)) (tracePointer ev87))
)

(:action moveSync#activityz#ev274
:precondition (and (token 1182) (tracePointer ev274))
:effect (and (allowed) (not (token 1182)) (token 1154) (not (tracePointer ev274)) (tracePointer ev275))
)

(:action moveSync#activityz#ev291
:precondition (and (token 1182) (tracePointer ev291))
:effect (and (allowed) (not (token 1182)) (token 1154) (not (tracePointer ev291)) (tracePointer ev292))
)

(:action moveInTheModel#activityz
:precondition (token 1182)
:effect (and (not (allowed)) (not (token 1182)) (token 1154) (increase (total-cost) 1)
)
)

(:action moveInTheModel#generatedinv13
:precondition (token 1262)
:effect (and (not (allowed)) (not (token 1262)) (token 1257) (token 1260) (token 1255) (increase (total-cost) 0)
)
)

(:action moveInTheModel#activitycp
:precondition (token 1201)
:effect (and (not (allowed)) (not (token 1201)) (token 1202) (increase (total-cost) 1)
)
)

(:action moveSync#activitybu#ev3
:precondition (and (token 1253) (tracePointer ev3))
:effect (and (allowed) (not (token 1253)) (token 1147) (not (tracePointer ev3)) (tracePointer ev4))
)

(:action moveSync#activitybu#ev50
:precondition (and (token 1253) (tracePointer ev50))
:effect (and (allowed) (not (token 1253)) (token 1147) (not (tracePointer ev50)) (tracePointer ev51))
)

(:action moveSync#activitybu#ev99
:precondition (and (token 1253) (tracePointer ev99))
:effect (and (allowed) (not (token 1253)) (token 1147) (not (tracePointer ev99)) (tracePointer ev100))
)

(:action moveSync#activitybu#ev303
:precondition (and (token 1253) (tracePointer ev303))
:effect (and (allowed) (not (token 1253)) (token 1147) (not (tracePointer ev303)) (tracePointer ev304))
)

(:action moveSync#activitybu#ev409
:precondition (and (token 1253) (tracePointer ev409))
:effect (and (allowed) (not (token 1253)) (token 1147) (not (tracePointer ev409)) (tracePointer ev410))
)

(:action moveInTheModel#activitybu
:precondition (token 1253)
:effect (and (not (allowed)) (not (token 1253)) (token 1147) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activityd
:precondition (token 1192)
:effect (and (not (allowed)) (not (token 1192)) (token 1196) (increase (total-cost) 1)
)
)

(:action moveSync#activitycj#ev21
:precondition (and (token 1195) (tracePointer ev21))
:effect (and (allowed) (not (token 1195)) (token 1193) (not (tracePointer ev21)) (tracePointer ev22))
)

(:action moveSync#activitycj#ev140
:precondition (and (token 1195) (tracePointer ev140))
:effect (and (allowed) (not (token 1195)) (token 1193) (not (tracePointer ev140)) (tracePointer ev141))
)

(:action moveInTheModel#activitycj
:precondition (token 1195)
:effect (and (not (allowed)) (not (token 1195)) (token 1193) (increase (total-cost) 1)
)
)

(:action moveSync#activitycc#ev177
:precondition (and (token 1259) (tracePointer ev177))
:effect (and (allowed) (not (token 1259)) (token 1261) (not (tracePointer ev177)) (tracePointer ev178))
)

(:action moveSync#activitycc#ev238
:precondition (and (token 1259) (tracePointer ev238))
:effect (and (allowed) (not (token 1259)) (token 1261) (not (tracePointer ev238)) (tracePointer ev239))
)

(:action moveSync#activitycc#ev265
:precondition (and (token 1259) (tracePointer ev265))
:effect (and (allowed) (not (token 1259)) (token 1261) (not (tracePointer ev265)) (tracePointer ev266))
)

(:action moveSync#activitycc#ev380
:precondition (and (token 1259) (tracePointer ev380))
:effect (and (allowed) (not (token 1259)) (token 1261) (not (tracePointer ev380)) (tracePointer ev381))
)

(:action moveInTheModel#activitycc
:precondition (token 1259)
:effect (and (not (allowed)) (not (token 1259)) (token 1261) (increase (total-cost) 1)
)
)

(:action moveSync#activityam#ev23
:precondition (and (token 1172) (tracePointer ev23))
:effect (and (allowed) (not (token 1172)) (token 1170) (not (tracePointer ev23)) (tracePointer ev24))
)

(:action moveInTheModel#activityam
:precondition (token 1172)
:effect (and (not (allowed)) (not (token 1172)) (token 1170) (increase (total-cost) 1)
)
)

(:action moveInTheModel#generatedinv14
:precondition (token 1198)
:effect (and (not (allowed)) (not (token 1198)) (token 1195) (token 1190) (increase (total-cost) 0)
)
)

(:action moveSync#activityl#ev337
:precondition (and (token 1162) (tracePointer ev337))
:effect (and (allowed) (not (token 1162)) (token 1164) (not (tracePointer ev337)) (tracePointer ev338))
)

(:action moveInTheModel#activityl
:precondition (token 1162)
:effect (and (not (allowed)) (not (token 1162)) (token 1164) (increase (total-cost) 1)
)
)

(:action moveSync#activitym#ev390
:precondition (and (token 1162) (tracePointer ev390))
:effect (and (allowed) (not (token 1162)) (token 1164) (not (tracePointer ev390)) (tracePointer ev391))
)

(:action moveInTheModel#activitym
:precondition (token 1162)
:effect (and (not (allowed)) (not (token 1162)) (token 1164) (increase (total-cost) 1)
)
)

(:action moveSync#activitybm#ev4
:precondition (and (token 1147) (tracePointer ev4))
:effect (and (allowed) (not (token 1147)) (token 1179) (not (tracePointer ev4)) (tracePointer ev5))
)

(:action moveSync#activitybm#ev34
:precondition (and (token 1147) (tracePointer ev34))
:effect (and (allowed) (not (token 1147)) (token 1179) (not (tracePointer ev34)) (tracePointer ev35))
)

(:action moveSync#activitybm#ev51
:precondition (and (token 1147) (tracePointer ev51))
:effect (and (allowed) (not (token 1147)) (token 1179) (not (tracePointer ev51)) (tracePointer ev52))
)

(:action moveSync#activitybm#ev101
:precondition (and (token 1147) (tracePointer ev101))
:effect (and (allowed) (not (token 1147)) (token 1179) (not (tracePointer ev101)) (tracePointer ev102))
)

(:action moveSync#activitybm#ev204
:precondition (and (token 1147) (tracePointer ev204))
:effect (and (allowed) (not (token 1147)) (token 1179) (not (tracePointer ev204)) (tracePointer ev205))
)

(:action moveSync#activitybm#ev304
:precondition (and (token 1147) (tracePointer ev304))
:effect (and (allowed) (not (token 1147)) (token 1179) (not (tracePointer ev304)) (tracePointer ev305))
)

(:action moveSync#activitybm#ev411
:precondition (and (token 1147) (tracePointer ev411))
:effect (and (allowed) (not (token 1147)) (token 1179) (not (tracePointer ev411)) (tracePointer ev412))
)

(:action moveInTheModel#activitybm
:precondition (token 1147)
:effect (and (not (allowed)) (not (token 1147)) (token 1179) (increase (total-cost) 1)
)
)

(:action moveInTheModel#activitybi
:precondition (token 1181)
:effect (and (not (allowed)) (not (token 1181)) (token 1180) (increase (total-cost) 1)
)
)

(:action moveSync#activityn#ev123
:precondition (and (token 1150) (tracePointer ev123))
:effect (and (allowed) (not (token 1150)) (token 1171) (not (tracePointer ev123)) (tracePointer ev124))
)

(:action moveSync#activityn#ev159
:precondition (and (token 1150) (tracePointer ev159))
:effect (and (allowed) (not (token 1150)) (token 1171) (not (tracePointer ev159)) (tracePointer ev160))
)

(:action moveSync#activityn#ev211
:precondition (and (token 1150) (tracePointer ev211))
:effect (and (allowed) (not (token 1150)) (token 1171) (not (tracePointer ev211)) (tracePointer ev212))
)

(:action moveSync#activityn#ev307
:precondition (and (token 1150) (tracePointer ev307))
:effect (and (allowed) (not (token 1150)) (token 1171) (not (tracePointer ev307)) (tracePointer ev308))
)

(:action moveSync#activityn#ev357
:precondition (and (token 1150) (tracePointer ev357))
:effect (and (allowed) (not (token 1150)) (token 1171) (not (tracePointer ev357)) (tracePointer ev358))
)

(:action moveInTheModel#activityn
:precondition (token 1150)
:effect (and (not (allowed)) (not (token 1150)) (token 1171) (increase (total-cost) 1)
)
)

(:action moveInTheLog#activitybl#ev1-ev2
:precondition (and (tracePointer ev1) (allowed))
:effect (and (not (tracePointer ev1)) (tracePointer ev2) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybt#ev2-ev3
:precondition (and (tracePointer ev2) (allowed))
:effect (and (not (tracePointer ev2)) (tracePointer ev3) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybu#ev3-ev4
:precondition (and (tracePointer ev3) (allowed))
:effect (and (not (tracePointer ev3)) (tracePointer ev4) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybm#ev4-ev5
:precondition (and (tracePointer ev4) (allowed))
:effect (and (not (tracePointer ev4)) (tracePointer ev5) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybe#ev5-ev6
:precondition (and (tracePointer ev5) (allowed))
:effect (and (not (tracePointer ev5)) (tracePointer ev6) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycm#ev6-ev7
:precondition (and (tracePointer ev6) (allowed))
:effect (and (not (tracePointer ev6)) (tracePointer ev7) (increase (total-cost) 1)
))

(:action moveInTheLog#activityce#ev7-ev8
:precondition (and (tracePointer ev7) (allowed))
:effect (and (not (tracePointer ev7)) (tracePointer ev8) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaw#ev8-ev9
:precondition (and (tracePointer ev8) (allowed))
:effect (and (not (tracePointer ev8)) (tracePointer ev9) (increase (total-cost) 1)
))

(:action moveInTheLog#activityag#ev9-ev10
:precondition (and (tracePointer ev9) (allowed))
:effect (and (not (tracePointer ev9)) (tracePointer ev10) (increase (total-cost) 1)
))

(:action moveInTheLog#activityu#ev10-ev11
:precondition (and (tracePointer ev10) (allowed))
:effect (and (not (tracePointer ev10)) (tracePointer ev11) (increase (total-cost) 1)
))

(:action moveInTheLog#activityt#ev11-ev12
:precondition (and (tracePointer ev11) (allowed))
:effect (and (not (tracePointer ev11)) (tracePointer ev12) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaf#ev12-ev13
:precondition (and (tracePointer ev12) (allowed))
:effect (and (not (tracePointer ev12)) (tracePointer ev13) (increase (total-cost) 1)
))

(:action moveInTheLog#activityah#ev13-ev14
:precondition (and (tracePointer ev13) (allowed))
:effect (and (not (tracePointer ev13)) (tracePointer ev14) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybd#ev14-ev15
:precondition (and (tracePointer ev14) (allowed))
:effect (and (not (tracePointer ev14)) (tracePointer ev15) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycd#ev15-ev16
:precondition (and (tracePointer ev15) (allowed))
:effect (and (not (tracePointer ev15)) (tracePointer ev16) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaj#ev16-ev17
:precondition (and (tracePointer ev16) (allowed))
:effect (and (not (tracePointer ev16)) (tracePointer ev17) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybl#ev17-ev18
:precondition (and (tracePointer ev17) (allowed))
:effect (and (not (tracePointer ev17)) (tracePointer ev18) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycf#ev18-ev19
:precondition (and (tracePointer ev18) (allowed))
:effect (and (not (tracePointer ev18)) (tracePointer ev19) (increase (total-cost) 1)
))

(:action moveInTheLog#activityal#ev19-ev20
:precondition (and (tracePointer ev19) (allowed))
:effect (and (not (tracePointer ev19)) (tracePointer ev20) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybn#ev20-ev21
:precondition (and (tracePointer ev20) (allowed))
:effect (and (not (tracePointer ev20)) (tracePointer ev21) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycj#ev21-ev22
:precondition (and (tracePointer ev21) (allowed))
:effect (and (not (tracePointer ev21)) (tracePointer ev22) (increase (total-cost) 1)
))

(:action moveInTheLog#activitych#ev22-ev23
:precondition (and (tracePointer ev22) (allowed))
:effect (and (not (tracePointer ev22)) (tracePointer ev23) (increase (total-cost) 1)
))

(:action moveInTheLog#activityam#ev23-ev24
:precondition (and (tracePointer ev23) (allowed))
:effect (and (not (tracePointer ev23)) (tracePointer ev24) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybr#ev24-ev25
:precondition (and (tracePointer ev24) (allowed))
:effect (and (not (tracePointer ev24)) (tracePointer ev25) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybp#ev25-ev26
:precondition (and (tracePointer ev25) (allowed))
:effect (and (not (tracePointer ev25)) (tracePointer ev26) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybq#ev26-ev27
:precondition (and (tracePointer ev26) (allowed))
:effect (and (not (tracePointer ev26)) (tracePointer ev27) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybs#ev27-ev28
:precondition (and (tracePointer ev27) (allowed))
:effect (and (not (tracePointer ev27)) (tracePointer ev28) (increase (total-cost) 1)
))

(:action moveInTheLog#activityck#ev28-ev29
:precondition (and (tracePointer ev28) (allowed))
:effect (and (not (tracePointer ev28)) (tracePointer ev29) (increase (total-cost) 1)
))

(:action moveInTheLog#activityci#ev29-ev30
:precondition (and (tracePointer ev29) (allowed))
:effect (and (not (tracePointer ev29)) (tracePointer ev30) (increase (total-cost) 1)
))

(:action moveInTheLog#activityal#ev30-ev31
:precondition (and (tracePointer ev30) (allowed))
:effect (and (not (tracePointer ev30)) (tracePointer ev31) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybo#ev31-ev32
:precondition (and (tracePointer ev31) (allowed))
:effect (and (not (tracePointer ev31)) (tracePointer ev32) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycg#ev32-ev33
:precondition (and (tracePointer ev32) (allowed))
:effect (and (not (tracePointer ev32)) (tracePointer ev33) (increase (total-cost) 1)
))

(:action moveInTheLog#activityak#ev33-ev34
:precondition (and (tracePointer ev33) (allowed))
:effect (and (not (tracePointer ev33)) (tracePointer ev34) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybm#ev34-ev35
:precondition (and (tracePointer ev34) (allowed))
:effect (and (not (tracePointer ev34)) (tracePointer ev35) (increase (total-cost) 1)
))

(:action moveInTheLog#activityce#ev35-ev36
:precondition (and (tracePointer ev35) (allowed))
:effect (and (not (tracePointer ev35)) (tracePointer ev36) (increase (total-cost) 1)
))

(:action moveInTheLog#activityai#ev36-ev37
:precondition (and (tracePointer ev36) (allowed))
:effect (and (not (tracePointer ev36)) (tracePointer ev37) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybe#ev37-ev38
:precondition (and (tracePointer ev37) (allowed))
:effect (and (not (tracePointer ev37)) (tracePointer ev38) (increase (total-cost) 1)
))

(:action moveInTheLog#activityav#ev38-ev39
:precondition (and (tracePointer ev38) (allowed))
:effect (and (not (tracePointer ev38)) (tracePointer ev39) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaw#ev39-ev40
:precondition (and (tracePointer ev39) (allowed))
:effect (and (not (tracePointer ev39)) (tracePointer ev40) (increase (total-cost) 1)
))

(:action moveInTheLog#activityag#ev40-ev41
:precondition (and (tracePointer ev40) (allowed))
:effect (and (not (tracePointer ev40)) (tracePointer ev41) (increase (total-cost) 1)
))

(:action moveInTheLog#activityg#ev41-ev42
:precondition (and (tracePointer ev41) (allowed))
:effect (and (not (tracePointer ev41)) (tracePointer ev42) (increase (total-cost) 1)
))

(:action moveInTheLog#activityb#ev42-ev43
:precondition (and (tracePointer ev42) (allowed))
:effect (and (not (tracePointer ev42)) (tracePointer ev43) (increase (total-cost) 1)
))

(:action moveInTheLog#activitys#ev43-ev44
:precondition (and (tracePointer ev43) (allowed))
:effect (and (not (tracePointer ev43)) (tracePointer ev44) (increase (total-cost) 1)
))

(:action moveInTheLog#activityau#ev44-ev45
:precondition (and (tracePointer ev44) (allowed))
:effect (and (not (tracePointer ev44)) (tracePointer ev45) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycl#ev45-ev46
:precondition (and (tracePointer ev45) (allowed))
:effect (and (not (tracePointer ev45)) (tracePointer ev46) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybl#ev46-ev47
:precondition (and (tracePointer ev46) (allowed))
:effect (and (not (tracePointer ev46)) (tracePointer ev47) (increase (total-cost) 1)
))

(:action moveInTheLog#activityai#ev47-ev48
:precondition (and (tracePointer ev47) (allowed))
:effect (and (not (tracePointer ev47)) (tracePointer ev48) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybt#ev48-ev49
:precondition (and (tracePointer ev48) (allowed))
:effect (and (not (tracePointer ev48)) (tracePointer ev49) (increase (total-cost) 1)
))

(:action moveInTheLog#activityav#ev49-ev50
:precondition (and (tracePointer ev49) (allowed))
:effect (and (not (tracePointer ev49)) (tracePointer ev50) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybu#ev50-ev51
:precondition (and (tracePointer ev50) (allowed))
:effect (and (not (tracePointer ev50)) (tracePointer ev51) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybm#ev51-ev52
:precondition (and (tracePointer ev51) (allowed))
:effect (and (not (tracePointer ev51)) (tracePointer ev52) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycm#ev52-ev53
:precondition (and (tracePointer ev52) (allowed))
:effect (and (not (tracePointer ev52)) (tracePointer ev53) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybe#ev53-ev54
:precondition (and (tracePointer ev53) (allowed))
:effect (and (not (tracePointer ev53)) (tracePointer ev54) (increase (total-cost) 1)
))

(:action moveInTheLog#activityce#ev54-ev55
:precondition (and (tracePointer ev54) (allowed))
:effect (and (not (tracePointer ev54)) (tracePointer ev55) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaw#ev55-ev56
:precondition (and (tracePointer ev55) (allowed))
:effect (and (not (tracePointer ev55)) (tracePointer ev56) (increase (total-cost) 1)
))

(:action moveInTheLog#activityag#ev56-ev57
:precondition (and (tracePointer ev56) (allowed))
:effect (and (not (tracePointer ev56)) (tracePointer ev57) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaa#ev57-ev58
:precondition (and (tracePointer ev57) (allowed))
:effect (and (not (tracePointer ev57)) (tracePointer ev58) (increase (total-cost) 1)
))

(:action moveInTheLog#activityad#ev58-ev59
:precondition (and (tracePointer ev58) (allowed))
:effect (and (not (tracePointer ev58)) (tracePointer ev59) (increase (total-cost) 1)
))

(:action moveInTheLog#activityae#ev59-ev60
:precondition (and (tracePointer ev59) (allowed))
:effect (and (not (tracePointer ev59)) (tracePointer ev60) (increase (total-cost) 1)
))

(:action moveInTheLog#activityt#ev60-ev61
:precondition (and (tracePointer ev60) (allowed))
:effect (and (not (tracePointer ev60)) (tracePointer ev61) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaf#ev61-ev62
:precondition (and (tracePointer ev61) (allowed))
:effect (and (not (tracePointer ev61)) (tracePointer ev62) (increase (total-cost) 1)
))

(:action moveInTheLog#activityah#ev62-ev63
:precondition (and (tracePointer ev62) (allowed))
:effect (and (not (tracePointer ev62)) (tracePointer ev63) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybd#ev63-ev64
:precondition (and (tracePointer ev63) (allowed))
:effect (and (not (tracePointer ev63)) (tracePointer ev64) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycd#ev64-ev65
:precondition (and (tracePointer ev64) (allowed))
:effect (and (not (tracePointer ev64)) (tracePointer ev65) (increase (total-cost) 1)
))

(:action moveInTheLog#activityau#ev65-ev66
:precondition (and (tracePointer ev65) (allowed))
:effect (and (not (tracePointer ev65)) (tracePointer ev66) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycl#ev66-ev67
:precondition (and (tracePointer ev66) (allowed))
:effect (and (not (tracePointer ev66)) (tracePointer ev67) (increase (total-cost) 1)
))

(:action moveInTheLog#activityai#ev67-ev68
:precondition (and (tracePointer ev67) (allowed))
:effect (and (not (tracePointer ev67)) (tracePointer ev68) (increase (total-cost) 1)
))

(:action moveInTheLog#activityav#ev68-ev69
:precondition (and (tracePointer ev68) (allowed))
:effect (and (not (tracePointer ev68)) (tracePointer ev69) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaw#ev69-ev70
:precondition (and (tracePointer ev69) (allowed))
:effect (and (not (tracePointer ev69)) (tracePointer ev70) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycm#ev70-ev71
:precondition (and (tracePointer ev70) (allowed))
:effect (and (not (tracePointer ev70)) (tracePointer ev71) (increase (total-cost) 1)
))

(:action moveInTheLog#activityce#ev71-ev72
:precondition (and (tracePointer ev71) (allowed))
:effect (and (not (tracePointer ev71)) (tracePointer ev72) (increase (total-cost) 1)
))

(:action moveInTheLog#activityag#ev72-ev73
:precondition (and (tracePointer ev72) (allowed))
:effect (and (not (tracePointer ev72)) (tracePointer ev73) (increase (total-cost) 1)
))

(:action moveInTheLog#activityau#ev73-ev74
:precondition (and (tracePointer ev73) (allowed))
:effect (and (not (tracePointer ev73)) (tracePointer ev74) (increase (total-cost) 1)
))

(:action moveInTheLog#activityai#ev74-ev75
:precondition (and (tracePointer ev74) (allowed))
:effect (and (not (tracePointer ev74)) (tracePointer ev75) (increase (total-cost) 1)
))

(:action moveInTheLog#activityav#ev75-ev76
:precondition (and (tracePointer ev75) (allowed))
:effect (and (not (tracePointer ev75)) (tracePointer ev76) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybg#ev76-ev77
:precondition (and (tracePointer ev76) (allowed))
:effect (and (not (tracePointer ev76)) (tracePointer ev77) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybj#ev77-ev78
:precondition (and (tracePointer ev77) (allowed))
:effect (and (not (tracePointer ev77)) (tracePointer ev78) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaw#ev78-ev79
:precondition (and (tracePointer ev78) (allowed))
:effect (and (not (tracePointer ev78)) (tracePointer ev79) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybk#ev79-ev80
:precondition (and (tracePointer ev79) (allowed))
:effect (and (not (tracePointer ev79)) (tracePointer ev80) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybe#ev80-ev81
:precondition (and (tracePointer ev80) (allowed))
:effect (and (not (tracePointer ev80)) (tracePointer ev81) (increase (total-cost) 1)
))

(:action moveInTheLog#activityag#ev81-ev82
:precondition (and (tracePointer ev81) (allowed))
:effect (and (not (tracePointer ev81)) (tracePointer ev82) (increase (total-cost) 1)
))

(:action moveInTheLog#activitya#ev82-ev83
:precondition (and (tracePointer ev82) (allowed))
:effect (and (not (tracePointer ev82)) (tracePointer ev83) (increase (total-cost) 1)
))

(:action moveInTheLog#activityg#ev83-ev84
:precondition (and (tracePointer ev83) (allowed))
:effect (and (not (tracePointer ev83)) (tracePointer ev84) (increase (total-cost) 1)
))

(:action moveInTheLog#activityb#ev84-ev85
:precondition (and (tracePointer ev84) (allowed))
:effect (and (not (tracePointer ev84)) (tracePointer ev85) (increase (total-cost) 1)
))

(:action moveInTheLog#activitys#ev85-ev86
:precondition (and (tracePointer ev85) (allowed))
:effect (and (not (tracePointer ev85)) (tracePointer ev86) (increase (total-cost) 1)
))

(:action moveInTheLog#activityz#ev86-ev87
:precondition (and (tracePointer ev86) (allowed))
:effect (and (not (tracePointer ev86)) (tracePointer ev87) (increase (total-cost) 1)
))

(:action moveInTheLog#activityab#ev87-ev88
:precondition (and (tracePointer ev87) (allowed))
:effect (and (not (tracePointer ev87)) (tracePointer ev88) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaa#ev88-ev89
:precondition (and (tracePointer ev88) (allowed))
:effect (and (not (tracePointer ev88)) (tracePointer ev89) (increase (total-cost) 1)
))

(:action moveInTheLog#activityad#ev89-ev90
:precondition (and (tracePointer ev89) (allowed))
:effect (and (not (tracePointer ev89)) (tracePointer ev90) (increase (total-cost) 1)
))

(:action moveInTheLog#activityae#ev90-ev91
:precondition (and (tracePointer ev90) (allowed))
:effect (and (not (tracePointer ev90)) (tracePointer ev91) (increase (total-cost) 1)
))

(:action moveInTheLog#activityt#ev91-ev92
:precondition (and (tracePointer ev91) (allowed))
:effect (and (not (tracePointer ev91)) (tracePointer ev92) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaf#ev92-ev93
:precondition (and (tracePointer ev92) (allowed))
:effect (and (not (tracePointer ev92)) (tracePointer ev93) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycd#ev93-ev94
:precondition (and (tracePointer ev93) (allowed))
:effect (and (not (tracePointer ev93)) (tracePointer ev94) (increase (total-cost) 1)
))

(:action moveInTheLog#activityah#ev94-ev95
:precondition (and (tracePointer ev94) (allowed))
:effect (and (not (tracePointer ev94)) (tracePointer ev95) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybd#ev95-ev96
:precondition (and (tracePointer ev95) (allowed))
:effect (and (not (tracePointer ev95)) (tracePointer ev96) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybl#ev96-ev97
:precondition (and (tracePointer ev96) (allowed))
:effect (and (not (tracePointer ev96)) (tracePointer ev97) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybt#ev97-ev98
:precondition (and (tracePointer ev97) (allowed))
:effect (and (not (tracePointer ev97)) (tracePointer ev98) (increase (total-cost) 1)
))

(:action moveInTheLog#activityak#ev98-ev99
:precondition (and (tracePointer ev98) (allowed))
:effect (and (not (tracePointer ev98)) (tracePointer ev99) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybu#ev99-ev100
:precondition (and (tracePointer ev99) (allowed))
:effect (and (not (tracePointer ev99)) (tracePointer ev100) (increase (total-cost) 1)
))

(:action moveInTheLog#activityai#ev100-ev101
:precondition (and (tracePointer ev100) (allowed))
:effect (and (not (tracePointer ev100)) (tracePointer ev101) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybm#ev101-ev102
:precondition (and (tracePointer ev101) (allowed))
:effect (and (not (tracePointer ev101)) (tracePointer ev102) (increase (total-cost) 1)
))

(:action moveInTheLog#activityav#ev102-ev103
:precondition (and (tracePointer ev102) (allowed))
:effect (and (not (tracePointer ev102)) (tracePointer ev103) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybe#ev103-ev104
:precondition (and (tracePointer ev103) (allowed))
:effect (and (not (tracePointer ev103)) (tracePointer ev104) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaw#ev104-ev105
:precondition (and (tracePointer ev104) (allowed))
:effect (and (not (tracePointer ev104)) (tracePointer ev105) (increase (total-cost) 1)
))

(:action moveInTheLog#activityag#ev105-ev106
:precondition (and (tracePointer ev105) (allowed))
:effect (and (not (tracePointer ev105)) (tracePointer ev106) (increase (total-cost) 1)
))

(:action moveInTheLog#activitya#ev106-ev107
:precondition (and (tracePointer ev106) (allowed))
:effect (and (not (tracePointer ev106)) (tracePointer ev107) (increase (total-cost) 1)
))

(:action moveInTheLog#activityo#ev107-ev108
:precondition (and (tracePointer ev107) (allowed))
:effect (and (not (tracePointer ev107)) (tracePointer ev108) (increase (total-cost) 1)
))

(:action moveInTheLog#activityb#ev108-ev109
:precondition (and (tracePointer ev108) (allowed))
:effect (and (not (tracePointer ev108)) (tracePointer ev109) (increase (total-cost) 1)
))

(:action moveInTheLog#activitys#ev109-ev110
:precondition (and (tracePointer ev109) (allowed))
:effect (and (not (tracePointer ev109)) (tracePointer ev110) (increase (total-cost) 1)
))

(:action moveInTheLog#activityv#ev110-ev111
:precondition (and (tracePointer ev110) (allowed))
:effect (and (not (tracePointer ev110)) (tracePointer ev111) (increase (total-cost) 1)
))

(:action moveInTheLog#activityw#ev111-ev112
:precondition (and (tracePointer ev111) (allowed))
:effect (and (not (tracePointer ev111)) (tracePointer ev112) (increase (total-cost) 1)
))

(:action moveInTheLog#activityx#ev112-ev113
:precondition (and (tracePointer ev112) (allowed))
:effect (and (not (tracePointer ev112)) (tracePointer ev113) (increase (total-cost) 1)
))

(:action moveInTheLog#activityy#ev113-ev114
:precondition (and (tracePointer ev113) (allowed))
:effect (and (not (tracePointer ev113)) (tracePointer ev114) (increase (total-cost) 1)
))

(:action moveInTheLog#activityt#ev114-ev115
:precondition (and (tracePointer ev114) (allowed))
:effect (and (not (tracePointer ev114)) (tracePointer ev115) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaf#ev115-ev116
:precondition (and (tracePointer ev115) (allowed))
:effect (and (not (tracePointer ev115)) (tracePointer ev116) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybd#ev116-ev117
:precondition (and (tracePointer ev116) (allowed))
:effect (and (not (tracePointer ev116)) (tracePointer ev117) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycd#ev117-ev118
:precondition (and (tracePointer ev117) (allowed))
:effect (and (not (tracePointer ev117)) (tracePointer ev118) (increase (total-cost) 1)
))

(:action moveInTheLog#activityah#ev118-ev119
:precondition (and (tracePointer ev118) (allowed))
:effect (and (not (tracePointer ev118)) (tracePointer ev119) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycl#ev119-ev120
:precondition (and (tracePointer ev119) (allowed))
:effect (and (not (tracePointer ev119)) (tracePointer ev120) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycm#ev120-ev121
:precondition (and (tracePointer ev120) (allowed))
:effect (and (not (tracePointer ev120)) (tracePointer ev121) (increase (total-cost) 1)
))

(:action moveInTheLog#activityce#ev121-ev122
:precondition (and (tracePointer ev121) (allowed))
:effect (and (not (tracePointer ev121)) (tracePointer ev122) (increase (total-cost) 1)
))

(:action moveInTheLog#activitya#ev122-ev123
:precondition (and (tracePointer ev122) (allowed))
:effect (and (not (tracePointer ev122)) (tracePointer ev123) (increase (total-cost) 1)
))

(:action moveInTheLog#activityn#ev123-ev124
:precondition (and (tracePointer ev123) (allowed))
:effect (and (not (tracePointer ev123)) (tracePointer ev124) (increase (total-cost) 1)
))

(:action moveInTheLog#activityo#ev124-ev125
:precondition (and (tracePointer ev124) (allowed))
:effect (and (not (tracePointer ev124)) (tracePointer ev125) (increase (total-cost) 1)
))

(:action moveInTheLog#activityb#ev125-ev126
:precondition (and (tracePointer ev125) (allowed))
:effect (and (not (tracePointer ev125)) (tracePointer ev126) (increase (total-cost) 1)
))

(:action moveInTheLog#activitys#ev126-ev127
:precondition (and (tracePointer ev126) (allowed))
:effect (and (not (tracePointer ev126)) (tracePointer ev127) (increase (total-cost) 1)
))

(:action moveInTheLog#activityv#ev127-ev128
:precondition (and (tracePointer ev127) (allowed))
:effect (and (not (tracePointer ev127)) (tracePointer ev128) (increase (total-cost) 1)
))

(:action moveInTheLog#activityw#ev128-ev129
:precondition (and (tracePointer ev128) (allowed))
:effect (and (not (tracePointer ev128)) (tracePointer ev129) (increase (total-cost) 1)
))

(:action moveInTheLog#activityx#ev129-ev130
:precondition (and (tracePointer ev129) (allowed))
:effect (and (not (tracePointer ev129)) (tracePointer ev130) (increase (total-cost) 1)
))

(:action moveInTheLog#activityy#ev130-ev131
:precondition (and (tracePointer ev130) (allowed))
:effect (and (not (tracePointer ev130)) (tracePointer ev131) (increase (total-cost) 1)
))

(:action moveInTheLog#activityt#ev131-ev132
:precondition (and (tracePointer ev131) (allowed))
:effect (and (not (tracePointer ev131)) (tracePointer ev132) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaf#ev132-ev133
:precondition (and (tracePointer ev132) (allowed))
:effect (and (not (tracePointer ev132)) (tracePointer ev133) (increase (total-cost) 1)
))

(:action moveInTheLog#activityah#ev133-ev134
:precondition (and (tracePointer ev133) (allowed))
:effect (and (not (tracePointer ev133)) (tracePointer ev134) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycd#ev134-ev135
:precondition (and (tracePointer ev134) (allowed))
:effect (and (not (tracePointer ev134)) (tracePointer ev135) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybd#ev135-ev136
:precondition (and (tracePointer ev135) (allowed))
:effect (and (not (tracePointer ev135)) (tracePointer ev136) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaj#ev136-ev137
:precondition (and (tracePointer ev136) (allowed))
:effect (and (not (tracePointer ev136)) (tracePointer ev137) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycf#ev137-ev138
:precondition (and (tracePointer ev137) (allowed))
:effect (and (not (tracePointer ev137)) (tracePointer ev138) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybf#ev138-ev139
:precondition (and (tracePointer ev138) (allowed))
:effect (and (not (tracePointer ev138)) (tracePointer ev139) (increase (total-cost) 1)
))

(:action moveInTheLog#activityal#ev139-ev140
:precondition (and (tracePointer ev139) (allowed))
:effect (and (not (tracePointer ev139)) (tracePointer ev140) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycj#ev140-ev141
:precondition (and (tracePointer ev140) (allowed))
:effect (and (not (tracePointer ev140)) (tracePointer ev141) (increase (total-cost) 1)
))

(:action moveInTheLog#activitych#ev141-ev142
:precondition (and (tracePointer ev141) (allowed))
:effect (and (not (tracePointer ev141)) (tracePointer ev142) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybh#ev142-ev143
:precondition (and (tracePointer ev142) (allowed))
:effect (and (not (tracePointer ev142)) (tracePointer ev143) (increase (total-cost) 1)
))

(:action moveInTheLog#activityak#ev143-ev144
:precondition (and (tracePointer ev143) (allowed))
:effect (and (not (tracePointer ev143)) (tracePointer ev144) (increase (total-cost) 1)
))

(:action moveInTheLog#activityck#ev144-ev145
:precondition (and (tracePointer ev144) (allowed))
:effect (and (not (tracePointer ev144)) (tracePointer ev145) (increase (total-cost) 1)
))

(:action moveInTheLog#activityci#ev145-ev146
:precondition (and (tracePointer ev145) (allowed))
:effect (and (not (tracePointer ev145)) (tracePointer ev146) (increase (total-cost) 1)
))

(:action moveInTheLog#activityai#ev146-ev147
:precondition (and (tracePointer ev146) (allowed))
:effect (and (not (tracePointer ev146)) (tracePointer ev147) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycg#ev147-ev148
:precondition (and (tracePointer ev147) (allowed))
:effect (and (not (tracePointer ev147)) (tracePointer ev148) (increase (total-cost) 1)
))

(:action moveInTheLog#activityav#ev148-ev149
:precondition (and (tracePointer ev148) (allowed))
:effect (and (not (tracePointer ev148)) (tracePointer ev149) (increase (total-cost) 1)
))

(:action moveInTheLog#activityce#ev149-ev150
:precondition (and (tracePointer ev149) (allowed))
:effect (and (not (tracePointer ev149)) (tracePointer ev150) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybe#ev150-ev151
:precondition (and (tracePointer ev150) (allowed))
:effect (and (not (tracePointer ev150)) (tracePointer ev151) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaw#ev151-ev152
:precondition (and (tracePointer ev151) (allowed))
:effect (and (not (tracePointer ev151)) (tracePointer ev152) (increase (total-cost) 1)
))

(:action moveInTheLog#activityag#ev152-ev153
:precondition (and (tracePointer ev152) (allowed))
:effect (and (not (tracePointer ev152)) (tracePointer ev153) (increase (total-cost) 1)
))

(:action moveInTheLog#activitya#ev153-ev154
:precondition (and (tracePointer ev153) (allowed))
:effect (and (not (tracePointer ev153)) (tracePointer ev154) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycl#ev154-ev155
:precondition (and (tracePointer ev154) (allowed))
:effect (and (not (tracePointer ev154)) (tracePointer ev155) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycm#ev155-ev156
:precondition (and (tracePointer ev155) (allowed))
:effect (and (not (tracePointer ev155)) (tracePointer ev156) (increase (total-cost) 1)
))

(:action moveInTheLog#activityce#ev156-ev157
:precondition (and (tracePointer ev156) (allowed))
:effect (and (not (tracePointer ev156)) (tracePointer ev157) (increase (total-cost) 1)
))

(:action moveInTheLog#activityag#ev157-ev158
:precondition (and (tracePointer ev157) (allowed))
:effect (and (not (tracePointer ev157)) (tracePointer ev158) (increase (total-cost) 1)
))

(:action moveInTheLog#activitya#ev158-ev159
:precondition (and (tracePointer ev158) (allowed))
:effect (and (not (tracePointer ev158)) (tracePointer ev159) (increase (total-cost) 1)
))

(:action moveInTheLog#activityn#ev159-ev160
:precondition (and (tracePointer ev159) (allowed))
:effect (and (not (tracePointer ev159)) (tracePointer ev160) (increase (total-cost) 1)
))

(:action moveInTheLog#activityo#ev160-ev161
:precondition (and (tracePointer ev160) (allowed))
:effect (and (not (tracePointer ev160)) (tracePointer ev161) (increase (total-cost) 1)
))

(:action moveInTheLog#activityb#ev161-ev162
:precondition (and (tracePointer ev161) (allowed))
:effect (and (not (tracePointer ev161)) (tracePointer ev162) (increase (total-cost) 1)
))

(:action moveInTheLog#activitys#ev162-ev163
:precondition (and (tracePointer ev162) (allowed))
:effect (and (not (tracePointer ev162)) (tracePointer ev163) (increase (total-cost) 1)
))

(:action moveInTheLog#activityu#ev163-ev164
:precondition (and (tracePointer ev163) (allowed))
:effect (and (not (tracePointer ev163)) (tracePointer ev164) (increase (total-cost) 1)
))

(:action moveInTheLog#activityt#ev164-ev165
:precondition (and (tracePointer ev164) (allowed))
:effect (and (not (tracePointer ev164)) (tracePointer ev165) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaf#ev165-ev166
:precondition (and (tracePointer ev165) (allowed))
:effect (and (not (tracePointer ev165)) (tracePointer ev166) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycd#ev166-ev167
:precondition (and (tracePointer ev166) (allowed))
:effect (and (not (tracePointer ev166)) (tracePointer ev167) (increase (total-cost) 1)
))

(:action moveInTheLog#activityah#ev167-ev168
:precondition (and (tracePointer ev167) (allowed))
:effect (and (not (tracePointer ev167)) (tracePointer ev168) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybd#ev168-ev169
:precondition (and (tracePointer ev168) (allowed))
:effect (and (not (tracePointer ev168)) (tracePointer ev169) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycl#ev169-ev170
:precondition (and (tracePointer ev169) (allowed))
:effect (and (not (tracePointer ev169)) (tracePointer ev170) (increase (total-cost) 1)
))

(:action moveInTheLog#activityau#ev170-ev171
:precondition (and (tracePointer ev170) (allowed))
:effect (and (not (tracePointer ev170)) (tracePointer ev171) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybx#ev171-ev172
:precondition (and (tracePointer ev171) (allowed))
:effect (and (not (tracePointer ev171)) (tracePointer ev172) (increase (total-cost) 1)
))

(:action moveInTheLog#activityai#ev172-ev173
:precondition (and (tracePointer ev172) (allowed))
:effect (and (not (tracePointer ev172)) (tracePointer ev173) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycb#ev173-ev174
:precondition (and (tracePointer ev173) (allowed))
:effect (and (not (tracePointer ev173)) (tracePointer ev174) (increase (total-cost) 1)
))

(:action moveInTheLog#activityca#ev174-ev175
:precondition (and (tracePointer ev174) (allowed))
:effect (and (not (tracePointer ev174)) (tracePointer ev175) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybz#ev175-ev176
:precondition (and (tracePointer ev175) (allowed))
:effect (and (not (tracePointer ev175)) (tracePointer ev176) (increase (total-cost) 1)
))

(:action moveInTheLog#activityav#ev176-ev177
:precondition (and (tracePointer ev176) (allowed))
:effect (and (not (tracePointer ev176)) (tracePointer ev177) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycc#ev177-ev178
:precondition (and (tracePointer ev177) (allowed))
:effect (and (not (tracePointer ev177)) (tracePointer ev178) (increase (total-cost) 1)
))

(:action moveInTheLog#activityby#ev178-ev179
:precondition (and (tracePointer ev178) (allowed))
:effect (and (not (tracePointer ev178)) (tracePointer ev179) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycm#ev179-ev180
:precondition (and (tracePointer ev179) (allowed))
:effect (and (not (tracePointer ev179)) (tracePointer ev180) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybe#ev180-ev181
:precondition (and (tracePointer ev180) (allowed))
:effect (and (not (tracePointer ev180)) (tracePointer ev181) (increase (total-cost) 1)
))

(:action moveInTheLog#activityce#ev181-ev182
:precondition (and (tracePointer ev181) (allowed))
:effect (and (not (tracePointer ev181)) (tracePointer ev182) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaw#ev182-ev183
:precondition (and (tracePointer ev182) (allowed))
:effect (and (not (tracePointer ev182)) (tracePointer ev183) (increase (total-cost) 1)
))

(:action moveInTheLog#activityag#ev183-ev184
:precondition (and (tracePointer ev183) (allowed))
:effect (and (not (tracePointer ev183)) (tracePointer ev184) (increase (total-cost) 1)
))

(:action moveInTheLog#activitya#ev184-ev185
:precondition (and (tracePointer ev184) (allowed))
:effect (and (not (tracePointer ev184)) (tracePointer ev185) (increase (total-cost) 1)
))

(:action moveInTheLog#activityg#ev185-ev186
:precondition (and (tracePointer ev185) (allowed))
:effect (and (not (tracePointer ev185)) (tracePointer ev186) (increase (total-cost) 1)
))

(:action moveInTheLog#activityb#ev186-ev187
:precondition (and (tracePointer ev186) (allowed))
:effect (and (not (tracePointer ev186)) (tracePointer ev187) (increase (total-cost) 1)
))

(:action moveInTheLog#activitys#ev187-ev188
:precondition (and (tracePointer ev187) (allowed))
:effect (and (not (tracePointer ev187)) (tracePointer ev188) (increase (total-cost) 1)
))

(:action moveInTheLog#activityv#ev188-ev189
:precondition (and (tracePointer ev188) (allowed))
:effect (and (not (tracePointer ev188)) (tracePointer ev189) (increase (total-cost) 1)
))

(:action moveInTheLog#activityw#ev189-ev190
:precondition (and (tracePointer ev189) (allowed))
:effect (and (not (tracePointer ev189)) (tracePointer ev190) (increase (total-cost) 1)
))

(:action moveInTheLog#activityx#ev190-ev191
:precondition (and (tracePointer ev190) (allowed))
:effect (and (not (tracePointer ev190)) (tracePointer ev191) (increase (total-cost) 1)
))

(:action moveInTheLog#activityy#ev191-ev192
:precondition (and (tracePointer ev191) (allowed))
:effect (and (not (tracePointer ev191)) (tracePointer ev192) (increase (total-cost) 1)
))

(:action moveInTheLog#activityt#ev192-ev193
:precondition (and (tracePointer ev192) (allowed))
:effect (and (not (tracePointer ev192)) (tracePointer ev193) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaf#ev193-ev194
:precondition (and (tracePointer ev193) (allowed))
:effect (and (not (tracePointer ev193)) (tracePointer ev194) (increase (total-cost) 1)
))

(:action moveInTheLog#activityah#ev194-ev195
:precondition (and (tracePointer ev194) (allowed))
:effect (and (not (tracePointer ev194)) (tracePointer ev195) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycd#ev195-ev196
:precondition (and (tracePointer ev195) (allowed))
:effect (and (not (tracePointer ev195)) (tracePointer ev196) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybd#ev196-ev197
:precondition (and (tracePointer ev196) (allowed))
:effect (and (not (tracePointer ev196)) (tracePointer ev197) (increase (total-cost) 1)
))

(:action moveInTheLog#activityau#ev197-ev198
:precondition (and (tracePointer ev197) (allowed))
:effect (and (not (tracePointer ev197)) (tracePointer ev198) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycl#ev198-ev199
:precondition (and (tracePointer ev198) (allowed))
:effect (and (not (tracePointer ev198)) (tracePointer ev199) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybl#ev199-ev200
:precondition (and (tracePointer ev199) (allowed))
:effect (and (not (tracePointer ev199)) (tracePointer ev200) (increase (total-cost) 1)
))

(:action moveInTheLog#activityai#ev200-ev201
:precondition (and (tracePointer ev200) (allowed))
:effect (and (not (tracePointer ev200)) (tracePointer ev201) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybv#ev201-ev202
:precondition (and (tracePointer ev201) (allowed))
:effect (and (not (tracePointer ev201)) (tracePointer ev202) (increase (total-cost) 1)
))

(:action moveInTheLog#activityav#ev202-ev203
:precondition (and (tracePointer ev202) (allowed))
:effect (and (not (tracePointer ev202)) (tracePointer ev203) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybw#ev203-ev204
:precondition (and (tracePointer ev203) (allowed))
:effect (and (not (tracePointer ev203)) (tracePointer ev204) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybm#ev204-ev205
:precondition (and (tracePointer ev204) (allowed))
:effect (and (not (tracePointer ev204)) (tracePointer ev205) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybe#ev205-ev206
:precondition (and (tracePointer ev205) (allowed))
:effect (and (not (tracePointer ev205)) (tracePointer ev206) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycm#ev206-ev207
:precondition (and (tracePointer ev206) (allowed))
:effect (and (not (tracePointer ev206)) (tracePointer ev207) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaw#ev207-ev208
:precondition (and (tracePointer ev207) (allowed))
:effect (and (not (tracePointer ev207)) (tracePointer ev208) (increase (total-cost) 1)
))

(:action moveInTheLog#activityce#ev208-ev209
:precondition (and (tracePointer ev208) (allowed))
:effect (and (not (tracePointer ev208)) (tracePointer ev209) (increase (total-cost) 1)
))

(:action moveInTheLog#activityag#ev209-ev210
:precondition (and (tracePointer ev209) (allowed))
:effect (and (not (tracePointer ev209)) (tracePointer ev210) (increase (total-cost) 1)
))

(:action moveInTheLog#activitya#ev210-ev211
:precondition (and (tracePointer ev210) (allowed))
:effect (and (not (tracePointer ev210)) (tracePointer ev211) (increase (total-cost) 1)
))

(:action moveInTheLog#activityn#ev211-ev212
:precondition (and (tracePointer ev211) (allowed))
:effect (and (not (tracePointer ev211)) (tracePointer ev212) (increase (total-cost) 1)
))

(:action moveInTheLog#activityau#ev212-ev213
:precondition (and (tracePointer ev212) (allowed))
:effect (and (not (tracePointer ev212)) (tracePointer ev213) (increase (total-cost) 1)
))

(:action moveInTheLog#activityai#ev213-ev214
:precondition (and (tracePointer ev213) (allowed))
:effect (and (not (tracePointer ev213)) (tracePointer ev214) (increase (total-cost) 1)
))

(:action moveInTheLog#activityav#ev214-ev215
:precondition (and (tracePointer ev214) (allowed))
:effect (and (not (tracePointer ev214)) (tracePointer ev215) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaw#ev215-ev216
:precondition (and (tracePointer ev215) (allowed))
:effect (and (not (tracePointer ev215)) (tracePointer ev216) (increase (total-cost) 1)
))

(:action moveInTheLog#activityag#ev216-ev217
:precondition (and (tracePointer ev216) (allowed))
:effect (and (not (tracePointer ev216)) (tracePointer ev217) (increase (total-cost) 1)
))

(:action moveInTheLog#activitya#ev217-ev218
:precondition (and (tracePointer ev217) (allowed))
:effect (and (not (tracePointer ev217)) (tracePointer ev218) (increase (total-cost) 1)
))

(:action moveInTheLog#activityg#ev218-ev219
:precondition (and (tracePointer ev218) (allowed))
:effect (and (not (tracePointer ev218)) (tracePointer ev219) (increase (total-cost) 1)
))

(:action moveInTheLog#activityb#ev219-ev220
:precondition (and (tracePointer ev219) (allowed))
:effect (and (not (tracePointer ev219)) (tracePointer ev220) (increase (total-cost) 1)
))

(:action moveInTheLog#activitys#ev220-ev221
:precondition (and (tracePointer ev220) (allowed))
:effect (and (not (tracePointer ev220)) (tracePointer ev221) (increase (total-cost) 1)
))

(:action moveInTheLog#activityv#ev221-ev222
:precondition (and (tracePointer ev221) (allowed))
:effect (and (not (tracePointer ev221)) (tracePointer ev222) (increase (total-cost) 1)
))

(:action moveInTheLog#activityw#ev222-ev223
:precondition (and (tracePointer ev222) (allowed))
:effect (and (not (tracePointer ev222)) (tracePointer ev223) (increase (total-cost) 1)
))

(:action moveInTheLog#activityx#ev223-ev224
:precondition (and (tracePointer ev223) (allowed))
:effect (and (not (tracePointer ev223)) (tracePointer ev224) (increase (total-cost) 1)
))

(:action moveInTheLog#activityy#ev224-ev225
:precondition (and (tracePointer ev224) (allowed))
:effect (and (not (tracePointer ev224)) (tracePointer ev225) (increase (total-cost) 1)
))

(:action moveInTheLog#activityt#ev225-ev226
:precondition (and (tracePointer ev225) (allowed))
:effect (and (not (tracePointer ev225)) (tracePointer ev226) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaf#ev226-ev227
:precondition (and (tracePointer ev226) (allowed))
:effect (and (not (tracePointer ev226)) (tracePointer ev227) (increase (total-cost) 1)
))

(:action moveInTheLog#activityah#ev227-ev228
:precondition (and (tracePointer ev227) (allowed))
:effect (and (not (tracePointer ev227)) (tracePointer ev228) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybd#ev228-ev229
:precondition (and (tracePointer ev228) (allowed))
:effect (and (not (tracePointer ev228)) (tracePointer ev229) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycd#ev229-ev230
:precondition (and (tracePointer ev229) (allowed))
:effect (and (not (tracePointer ev229)) (tracePointer ev230) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaj#ev230-ev231
:precondition (and (tracePointer ev230) (allowed))
:effect (and (not (tracePointer ev230)) (tracePointer ev231) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybx#ev231-ev232
:precondition (and (tracePointer ev231) (allowed))
:effect (and (not (tracePointer ev231)) (tracePointer ev232) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycl#ev232-ev233
:precondition (and (tracePointer ev232) (allowed))
:effect (and (not (tracePointer ev232)) (tracePointer ev233) (increase (total-cost) 1)
))

(:action moveInTheLog#activityal#ev233-ev234
:precondition (and (tracePointer ev233) (allowed))
:effect (and (not (tracePointer ev233)) (tracePointer ev234) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybz#ev234-ev235
:precondition (and (tracePointer ev234) (allowed))
:effect (and (not (tracePointer ev234)) (tracePointer ev235) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycb#ev235-ev236
:precondition (and (tracePointer ev235) (allowed))
:effect (and (not (tracePointer ev235)) (tracePointer ev236) (increase (total-cost) 1)
))

(:action moveInTheLog#activityca#ev236-ev237
:precondition (and (tracePointer ev236) (allowed))
:effect (and (not (tracePointer ev236)) (tracePointer ev237) (increase (total-cost) 1)
))

(:action moveInTheLog#activityak#ev237-ev238
:precondition (and (tracePointer ev237) (allowed))
:effect (and (not (tracePointer ev237)) (tracePointer ev238) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycc#ev238-ev239
:precondition (and (tracePointer ev238) (allowed))
:effect (and (not (tracePointer ev238)) (tracePointer ev239) (increase (total-cost) 1)
))

(:action moveInTheLog#activityai#ev239-ev240
:precondition (and (tracePointer ev239) (allowed))
:effect (and (not (tracePointer ev239)) (tracePointer ev240) (increase (total-cost) 1)
))

(:action moveInTheLog#activityby#ev240-ev241
:precondition (and (tracePointer ev240) (allowed))
:effect (and (not (tracePointer ev240)) (tracePointer ev241) (increase (total-cost) 1)
))

(:action moveInTheLog#activityav#ev241-ev242
:precondition (and (tracePointer ev241) (allowed))
:effect (and (not (tracePointer ev241)) (tracePointer ev242) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybe#ev242-ev243
:precondition (and (tracePointer ev242) (allowed))
:effect (and (not (tracePointer ev242)) (tracePointer ev243) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycm#ev243-ev244
:precondition (and (tracePointer ev243) (allowed))
:effect (and (not (tracePointer ev243)) (tracePointer ev244) (increase (total-cost) 1)
))

(:action moveInTheLog#activityce#ev244-ev245
:precondition (and (tracePointer ev244) (allowed))
:effect (and (not (tracePointer ev244)) (tracePointer ev245) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaw#ev245-ev246
:precondition (and (tracePointer ev245) (allowed))
:effect (and (not (tracePointer ev245)) (tracePointer ev246) (increase (total-cost) 1)
))

(:action moveInTheLog#activityag#ev246-ev247
:precondition (and (tracePointer ev246) (allowed))
:effect (and (not (tracePointer ev246)) (tracePointer ev247) (increase (total-cost) 1)
))

(:action moveInTheLog#activitya#ev247-ev248
:precondition (and (tracePointer ev247) (allowed))
:effect (and (not (tracePointer ev247)) (tracePointer ev248) (increase (total-cost) 1)
))

(:action moveInTheLog#activityg#ev248-ev249
:precondition (and (tracePointer ev248) (allowed))
:effect (and (not (tracePointer ev248)) (tracePointer ev249) (increase (total-cost) 1)
))

(:action moveInTheLog#activityb#ev249-ev250
:precondition (and (tracePointer ev249) (allowed))
:effect (and (not (tracePointer ev249)) (tracePointer ev250) (increase (total-cost) 1)
))

(:action moveInTheLog#activitys#ev250-ev251
:precondition (and (tracePointer ev250) (allowed))
:effect (and (not (tracePointer ev250)) (tracePointer ev251) (increase (total-cost) 1)
))

(:action moveInTheLog#activityv#ev251-ev252
:precondition (and (tracePointer ev251) (allowed))
:effect (and (not (tracePointer ev251)) (tracePointer ev252) (increase (total-cost) 1)
))

(:action moveInTheLog#activityw#ev252-ev253
:precondition (and (tracePointer ev252) (allowed))
:effect (and (not (tracePointer ev252)) (tracePointer ev253) (increase (total-cost) 1)
))

(:action moveInTheLog#activityx#ev253-ev254
:precondition (and (tracePointer ev253) (allowed))
:effect (and (not (tracePointer ev253)) (tracePointer ev254) (increase (total-cost) 1)
))

(:action moveInTheLog#activityy#ev254-ev255
:precondition (and (tracePointer ev254) (allowed))
:effect (and (not (tracePointer ev254)) (tracePointer ev255) (increase (total-cost) 1)
))

(:action moveInTheLog#activityt#ev255-ev256
:precondition (and (tracePointer ev255) (allowed))
:effect (and (not (tracePointer ev255)) (tracePointer ev256) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaf#ev256-ev257
:precondition (and (tracePointer ev256) (allowed))
:effect (and (not (tracePointer ev256)) (tracePointer ev257) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybd#ev257-ev258
:precondition (and (tracePointer ev257) (allowed))
:effect (and (not (tracePointer ev257)) (tracePointer ev258) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycd#ev258-ev259
:precondition (and (tracePointer ev258) (allowed))
:effect (and (not (tracePointer ev258)) (tracePointer ev259) (increase (total-cost) 1)
))

(:action moveInTheLog#activityah#ev259-ev260
:precondition (and (tracePointer ev259) (allowed))
:effect (and (not (tracePointer ev259)) (tracePointer ev260) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybx#ev260-ev261
:precondition (and (tracePointer ev260) (allowed))
:effect (and (not (tracePointer ev260)) (tracePointer ev261) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycl#ev261-ev262
:precondition (and (tracePointer ev261) (allowed))
:effect (and (not (tracePointer ev261)) (tracePointer ev262) (increase (total-cost) 1)
))

(:action moveInTheLog#activityca#ev262-ev263
:precondition (and (tracePointer ev262) (allowed))
:effect (and (not (tracePointer ev262)) (tracePointer ev263) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybz#ev263-ev264
:precondition (and (tracePointer ev263) (allowed))
:effect (and (not (tracePointer ev263)) (tracePointer ev264) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycb#ev264-ev265
:precondition (and (tracePointer ev264) (allowed))
:effect (and (not (tracePointer ev264)) (tracePointer ev265) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycc#ev265-ev266
:precondition (and (tracePointer ev265) (allowed))
:effect (and (not (tracePointer ev265)) (tracePointer ev266) (increase (total-cost) 1)
))

(:action moveInTheLog#activityby#ev266-ev267
:precondition (and (tracePointer ev266) (allowed))
:effect (and (not (tracePointer ev266)) (tracePointer ev267) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybe#ev267-ev268
:precondition (and (tracePointer ev267) (allowed))
:effect (and (not (tracePointer ev267)) (tracePointer ev268) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycm#ev268-ev269
:precondition (and (tracePointer ev268) (allowed))
:effect (and (not (tracePointer ev268)) (tracePointer ev269) (increase (total-cost) 1)
))

(:action moveInTheLog#activityce#ev269-ev270
:precondition (and (tracePointer ev269) (allowed))
:effect (and (not (tracePointer ev269)) (tracePointer ev270) (increase (total-cost) 1)
))

(:action moveInTheLog#activitya#ev270-ev271
:precondition (and (tracePointer ev270) (allowed))
:effect (and (not (tracePointer ev270)) (tracePointer ev271) (increase (total-cost) 1)
))

(:action moveInTheLog#activityg#ev271-ev272
:precondition (and (tracePointer ev271) (allowed))
:effect (and (not (tracePointer ev271)) (tracePointer ev272) (increase (total-cost) 1)
))

(:action moveInTheLog#activityb#ev272-ev273
:precondition (and (tracePointer ev272) (allowed))
:effect (and (not (tracePointer ev272)) (tracePointer ev273) (increase (total-cost) 1)
))

(:action moveInTheLog#activitys#ev273-ev274
:precondition (and (tracePointer ev273) (allowed))
:effect (and (not (tracePointer ev273)) (tracePointer ev274) (increase (total-cost) 1)
))

(:action moveInTheLog#activityz#ev274-ev275
:precondition (and (tracePointer ev274) (allowed))
:effect (and (not (tracePointer ev274)) (tracePointer ev275) (increase (total-cost) 1)
))

(:action moveInTheLog#activityab#ev275-ev276
:precondition (and (tracePointer ev275) (allowed))
:effect (and (not (tracePointer ev275)) (tracePointer ev276) (increase (total-cost) 1)
))

(:action moveInTheLog#activityau#ev276-ev277
:precondition (and (tracePointer ev276) (allowed))
:effect (and (not (tracePointer ev276)) (tracePointer ev277) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybf#ev277-ev278
:precondition (and (tracePointer ev277) (allowed))
:effect (and (not (tracePointer ev277)) (tracePointer ev278) (increase (total-cost) 1)
))

(:action moveInTheLog#activityai#ev278-ev279
:precondition (and (tracePointer ev278) (allowed))
:effect (and (not (tracePointer ev278)) (tracePointer ev279) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybh#ev279-ev280
:precondition (and (tracePointer ev279) (allowed))
:effect (and (not (tracePointer ev279)) (tracePointer ev280) (increase (total-cost) 1)
))

(:action moveInTheLog#activityav#ev280-ev281
:precondition (and (tracePointer ev280) (allowed))
:effect (and (not (tracePointer ev280)) (tracePointer ev281) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybg#ev281-ev282
:precondition (and (tracePointer ev281) (allowed))
:effect (and (not (tracePointer ev281)) (tracePointer ev282) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybj#ev282-ev283
:precondition (and (tracePointer ev282) (allowed))
:effect (and (not (tracePointer ev282)) (tracePointer ev283) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybk#ev283-ev284
:precondition (and (tracePointer ev283) (allowed))
:effect (and (not (tracePointer ev283)) (tracePointer ev284) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybe#ev284-ev285
:precondition (and (tracePointer ev284) (allowed))
:effect (and (not (tracePointer ev284)) (tracePointer ev285) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaw#ev285-ev286
:precondition (and (tracePointer ev285) (allowed))
:effect (and (not (tracePointer ev285)) (tracePointer ev286) (increase (total-cost) 1)
))

(:action moveInTheLog#activityag#ev286-ev287
:precondition (and (tracePointer ev286) (allowed))
:effect (and (not (tracePointer ev286)) (tracePointer ev287) (increase (total-cost) 1)
))

(:action moveInTheLog#activitya#ev287-ev288
:precondition (and (tracePointer ev287) (allowed))
:effect (and (not (tracePointer ev287)) (tracePointer ev288) (increase (total-cost) 1)
))

(:action moveInTheLog#activityg#ev288-ev289
:precondition (and (tracePointer ev288) (allowed))
:effect (and (not (tracePointer ev288)) (tracePointer ev289) (increase (total-cost) 1)
))

(:action moveInTheLog#activityb#ev289-ev290
:precondition (and (tracePointer ev289) (allowed))
:effect (and (not (tracePointer ev289)) (tracePointer ev290) (increase (total-cost) 1)
))

(:action moveInTheLog#activitys#ev290-ev291
:precondition (and (tracePointer ev290) (allowed))
:effect (and (not (tracePointer ev290)) (tracePointer ev291) (increase (total-cost) 1)
))

(:action moveInTheLog#activityz#ev291-ev292
:precondition (and (tracePointer ev291) (allowed))
:effect (and (not (tracePointer ev291)) (tracePointer ev292) (increase (total-cost) 1)
))

(:action moveInTheLog#activityab#ev292-ev293
:precondition (and (tracePointer ev292) (allowed))
:effect (and (not (tracePointer ev292)) (tracePointer ev293) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaa#ev293-ev294
:precondition (and (tracePointer ev293) (allowed))
:effect (and (not (tracePointer ev293)) (tracePointer ev294) (increase (total-cost) 1)
))

(:action moveInTheLog#activityad#ev294-ev295
:precondition (and (tracePointer ev294) (allowed))
:effect (and (not (tracePointer ev294)) (tracePointer ev295) (increase (total-cost) 1)
))

(:action moveInTheLog#activityae#ev295-ev296
:precondition (and (tracePointer ev295) (allowed))
:effect (and (not (tracePointer ev295)) (tracePointer ev296) (increase (total-cost) 1)
))

(:action moveInTheLog#activityt#ev296-ev297
:precondition (and (tracePointer ev296) (allowed))
:effect (and (not (tracePointer ev296)) (tracePointer ev297) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaf#ev297-ev298
:precondition (and (tracePointer ev297) (allowed))
:effect (and (not (tracePointer ev297)) (tracePointer ev298) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybd#ev298-ev299
:precondition (and (tracePointer ev298) (allowed))
:effect (and (not (tracePointer ev298)) (tracePointer ev299) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycd#ev299-ev300
:precondition (and (tracePointer ev299) (allowed))
:effect (and (not (tracePointer ev299)) (tracePointer ev300) (increase (total-cost) 1)
))

(:action moveInTheLog#activityah#ev300-ev301
:precondition (and (tracePointer ev300) (allowed))
:effect (and (not (tracePointer ev300)) (tracePointer ev301) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybl#ev301-ev302
:precondition (and (tracePointer ev301) (allowed))
:effect (and (not (tracePointer ev301)) (tracePointer ev302) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybt#ev302-ev303
:precondition (and (tracePointer ev302) (allowed))
:effect (and (not (tracePointer ev302)) (tracePointer ev303) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybu#ev303-ev304
:precondition (and (tracePointer ev303) (allowed))
:effect (and (not (tracePointer ev303)) (tracePointer ev304) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybm#ev304-ev305
:precondition (and (tracePointer ev304) (allowed))
:effect (and (not (tracePointer ev304)) (tracePointer ev305) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybe#ev305-ev306
:precondition (and (tracePointer ev305) (allowed))
:effect (and (not (tracePointer ev305)) (tracePointer ev306) (increase (total-cost) 1)
))

(:action moveInTheLog#activitya#ev306-ev307
:precondition (and (tracePointer ev306) (allowed))
:effect (and (not (tracePointer ev306)) (tracePointer ev307) (increase (total-cost) 1)
))

(:action moveInTheLog#activityn#ev307-ev308
:precondition (and (tracePointer ev307) (allowed))
:effect (and (not (tracePointer ev307)) (tracePointer ev308) (increase (total-cost) 1)
))

(:action moveInTheLog#activityp#ev308-ev309
:precondition (and (tracePointer ev308) (allowed))
:effect (and (not (tracePointer ev308)) (tracePointer ev309) (increase (total-cost) 1)
))

(:action moveInTheLog#activityq#ev309-ev310
:precondition (and (tracePointer ev309) (allowed))
:effect (and (not (tracePointer ev309)) (tracePointer ev310) (increase (total-cost) 1)
))

(:action moveInTheLog#activityo#ev310-ev311
:precondition (and (tracePointer ev310) (allowed))
:effect (and (not (tracePointer ev310)) (tracePointer ev311) (increase (total-cost) 1)
))

(:action moveInTheLog#activityb#ev311-ev312
:precondition (and (tracePointer ev311) (allowed))
:effect (and (not (tracePointer ev311)) (tracePointer ev312) (increase (total-cost) 1)
))

(:action moveInTheLog#activitys#ev312-ev313
:precondition (and (tracePointer ev312) (allowed))
:effect (and (not (tracePointer ev312)) (tracePointer ev313) (increase (total-cost) 1)
))

(:action moveInTheLog#activityv#ev313-ev314
:precondition (and (tracePointer ev313) (allowed))
:effect (and (not (tracePointer ev313)) (tracePointer ev314) (increase (total-cost) 1)
))

(:action moveInTheLog#activityw#ev314-ev315
:precondition (and (tracePointer ev314) (allowed))
:effect (and (not (tracePointer ev314)) (tracePointer ev315) (increase (total-cost) 1)
))

(:action moveInTheLog#activityx#ev315-ev316
:precondition (and (tracePointer ev315) (allowed))
:effect (and (not (tracePointer ev315)) (tracePointer ev316) (increase (total-cost) 1)
))

(:action moveInTheLog#activityy#ev316-ev317
:precondition (and (tracePointer ev316) (allowed))
:effect (and (not (tracePointer ev316)) (tracePointer ev317) (increase (total-cost) 1)
))

(:action moveInTheLog#activityt#ev317-ev318
:precondition (and (tracePointer ev317) (allowed))
:effect (and (not (tracePointer ev317)) (tracePointer ev318) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaf#ev318-ev319
:precondition (and (tracePointer ev318) (allowed))
:effect (and (not (tracePointer ev318)) (tracePointer ev319) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybd#ev319-ev320
:precondition (and (tracePointer ev319) (allowed))
:effect (and (not (tracePointer ev319)) (tracePointer ev320) (increase (total-cost) 1)
))

(:action moveInTheLog#activityah#ev320-ev321
:precondition (and (tracePointer ev320) (allowed))
:effect (and (not (tracePointer ev320)) (tracePointer ev321) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycd#ev321-ev322
:precondition (and (tracePointer ev321) (allowed))
:effect (and (not (tracePointer ev321)) (tracePointer ev322) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybf#ev322-ev323
:precondition (and (tracePointer ev322) (allowed))
:effect (and (not (tracePointer ev322)) (tracePointer ev323) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaj#ev323-ev324
:precondition (and (tracePointer ev323) (allowed))
:effect (and (not (tracePointer ev323)) (tracePointer ev324) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycl#ev324-ev325
:precondition (and (tracePointer ev324) (allowed))
:effect (and (not (tracePointer ev324)) (tracePointer ev325) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybh#ev325-ev326
:precondition (and (tracePointer ev325) (allowed))
:effect (and (not (tracePointer ev325)) (tracePointer ev326) (increase (total-cost) 1)
))

(:action moveInTheLog#activityal#ev326-ev327
:precondition (and (tracePointer ev326) (allowed))
:effect (and (not (tracePointer ev326)) (tracePointer ev327) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybg#ev327-ev328
:precondition (and (tracePointer ev327) (allowed))
:effect (and (not (tracePointer ev327)) (tracePointer ev328) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybj#ev328-ev329
:precondition (and (tracePointer ev328) (allowed))
:effect (and (not (tracePointer ev328)) (tracePointer ev329) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybk#ev329-ev330
:precondition (and (tracePointer ev329) (allowed))
:effect (and (not (tracePointer ev329)) (tracePointer ev330) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycm#ev330-ev331
:precondition (and (tracePointer ev330) (allowed))
:effect (and (not (tracePointer ev330)) (tracePointer ev331) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybe#ev331-ev332
:precondition (and (tracePointer ev331) (allowed))
:effect (and (not (tracePointer ev331)) (tracePointer ev332) (increase (total-cost) 1)
))

(:action moveInTheLog#activityce#ev332-ev333
:precondition (and (tracePointer ev332) (allowed))
:effect (and (not (tracePointer ev332)) (tracePointer ev333) (increase (total-cost) 1)
))

(:action moveInTheLog#activitya#ev333-ev334
:precondition (and (tracePointer ev333) (allowed))
:effect (and (not (tracePointer ev333)) (tracePointer ev334) (increase (total-cost) 1)
))

(:action moveInTheLog#activityh#ev334-ev335
:precondition (and (tracePointer ev334) (allowed))
:effect (and (not (tracePointer ev334)) (tracePointer ev335) (increase (total-cost) 1)
))

(:action moveInTheLog#activityi#ev335-ev336
:precondition (and (tracePointer ev335) (allowed))
:effect (and (not (tracePointer ev335)) (tracePointer ev336) (increase (total-cost) 1)
))

(:action moveInTheLog#activityj#ev336-ev337
:precondition (and (tracePointer ev336) (allowed))
:effect (and (not (tracePointer ev336)) (tracePointer ev337) (increase (total-cost) 1)
))

(:action moveInTheLog#activityl#ev337-ev338
:precondition (and (tracePointer ev337) (allowed))
:effect (and (not (tracePointer ev337)) (tracePointer ev338) (increase (total-cost) 1)
))

(:action moveInTheLog#activityk#ev338-ev339
:precondition (and (tracePointer ev338) (allowed))
:effect (and (not (tracePointer ev338)) (tracePointer ev339) (increase (total-cost) 1)
))

(:action moveInTheLog#activityb#ev339-ev340
:precondition (and (tracePointer ev339) (allowed))
:effect (and (not (tracePointer ev339)) (tracePointer ev340) (increase (total-cost) 1)
))

(:action moveInTheLog#activitys#ev340-ev341
:precondition (and (tracePointer ev340) (allowed))
:effect (and (not (tracePointer ev340)) (tracePointer ev341) (increase (total-cost) 1)
))

(:action moveInTheLog#activityu#ev341-ev342
:precondition (and (tracePointer ev341) (allowed))
:effect (and (not (tracePointer ev341)) (tracePointer ev342) (increase (total-cost) 1)
))

(:action moveInTheLog#activityt#ev342-ev343
:precondition (and (tracePointer ev342) (allowed))
:effect (and (not (tracePointer ev342)) (tracePointer ev343) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaf#ev343-ev344
:precondition (and (tracePointer ev343) (allowed))
:effect (and (not (tracePointer ev343)) (tracePointer ev344) (increase (total-cost) 1)
))

(:action moveInTheLog#activityah#ev344-ev345
:precondition (and (tracePointer ev344) (allowed))
:effect (and (not (tracePointer ev344)) (tracePointer ev345) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybd#ev345-ev346
:precondition (and (tracePointer ev345) (allowed))
:effect (and (not (tracePointer ev345)) (tracePointer ev346) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycd#ev346-ev347
:precondition (and (tracePointer ev346) (allowed))
:effect (and (not (tracePointer ev346)) (tracePointer ev347) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaj#ev347-ev348
:precondition (and (tracePointer ev347) (allowed))
:effect (and (not (tracePointer ev347)) (tracePointer ev348) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycl#ev348-ev349
:precondition (and (tracePointer ev348) (allowed))
:effect (and (not (tracePointer ev348)) (tracePointer ev349) (increase (total-cost) 1)
))

(:action moveInTheLog#activityal#ev349-ev350
:precondition (and (tracePointer ev349) (allowed))
:effect (and (not (tracePointer ev349)) (tracePointer ev350) (increase (total-cost) 1)
))

(:action moveInTheLog#activityak#ev350-ev351
:precondition (and (tracePointer ev350) (allowed))
:effect (and (not (tracePointer ev350)) (tracePointer ev351) (increase (total-cost) 1)
))

(:action moveInTheLog#activityai#ev351-ev352
:precondition (and (tracePointer ev351) (allowed))
:effect (and (not (tracePointer ev351)) (tracePointer ev352) (increase (total-cost) 1)
))

(:action moveInTheLog#activityav#ev352-ev353
:precondition (and (tracePointer ev352) (allowed))
:effect (and (not (tracePointer ev352)) (tracePointer ev353) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycm#ev353-ev354
:precondition (and (tracePointer ev353) (allowed))
:effect (and (not (tracePointer ev353)) (tracePointer ev354) (increase (total-cost) 1)
))

(:action moveInTheLog#activityce#ev354-ev355
:precondition (and (tracePointer ev354) (allowed))
:effect (and (not (tracePointer ev354)) (tracePointer ev355) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaw#ev355-ev356
:precondition (and (tracePointer ev355) (allowed))
:effect (and (not (tracePointer ev355)) (tracePointer ev356) (increase (total-cost) 1)
))

(:action moveInTheLog#activitya#ev356-ev357
:precondition (and (tracePointer ev356) (allowed))
:effect (and (not (tracePointer ev356)) (tracePointer ev357) (increase (total-cost) 1)
))

(:action moveInTheLog#activityn#ev357-ev358
:precondition (and (tracePointer ev357) (allowed))
:effect (and (not (tracePointer ev357)) (tracePointer ev358) (increase (total-cost) 1)
))

(:action moveInTheLog#activityp#ev358-ev359
:precondition (and (tracePointer ev358) (allowed))
:effect (and (not (tracePointer ev358)) (tracePointer ev359) (increase (total-cost) 1)
))

(:action moveInTheLog#activityq#ev359-ev360
:precondition (and (tracePointer ev359) (allowed))
:effect (and (not (tracePointer ev359)) (tracePointer ev360) (increase (total-cost) 1)
))

(:action moveInTheLog#activityo#ev360-ev361
:precondition (and (tracePointer ev360) (allowed))
:effect (and (not (tracePointer ev360)) (tracePointer ev361) (increase (total-cost) 1)
))

(:action moveInTheLog#activityb#ev361-ev362
:precondition (and (tracePointer ev361) (allowed))
:effect (and (not (tracePointer ev361)) (tracePointer ev362) (increase (total-cost) 1)
))

(:action moveInTheLog#activitys#ev362-ev363
:precondition (and (tracePointer ev362) (allowed))
:effect (and (not (tracePointer ev362)) (tracePointer ev363) (increase (total-cost) 1)
))

(:action moveInTheLog#activityv#ev363-ev364
:precondition (and (tracePointer ev363) (allowed))
:effect (and (not (tracePointer ev363)) (tracePointer ev364) (increase (total-cost) 1)
))

(:action moveInTheLog#activityw#ev364-ev365
:precondition (and (tracePointer ev364) (allowed))
:effect (and (not (tracePointer ev364)) (tracePointer ev365) (increase (total-cost) 1)
))

(:action moveInTheLog#activityx#ev365-ev366
:precondition (and (tracePointer ev365) (allowed))
:effect (and (not (tracePointer ev365)) (tracePointer ev366) (increase (total-cost) 1)
))

(:action moveInTheLog#activityy#ev366-ev367
:precondition (and (tracePointer ev366) (allowed))
:effect (and (not (tracePointer ev366)) (tracePointer ev367) (increase (total-cost) 1)
))

(:action moveInTheLog#activityt#ev367-ev368
:precondition (and (tracePointer ev367) (allowed))
:effect (and (not (tracePointer ev367)) (tracePointer ev368) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaf#ev368-ev369
:precondition (and (tracePointer ev368) (allowed))
:effect (and (not (tracePointer ev368)) (tracePointer ev369) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycd#ev369-ev370
:precondition (and (tracePointer ev369) (allowed))
:effect (and (not (tracePointer ev369)) (tracePointer ev370) (increase (total-cost) 1)
))

(:action moveInTheLog#activityah#ev370-ev371
:precondition (and (tracePointer ev370) (allowed))
:effect (and (not (tracePointer ev370)) (tracePointer ev371) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybd#ev371-ev372
:precondition (and (tracePointer ev371) (allowed))
:effect (and (not (tracePointer ev371)) (tracePointer ev372) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycl#ev372-ev373
:precondition (and (tracePointer ev372) (allowed))
:effect (and (not (tracePointer ev372)) (tracePointer ev373) (increase (total-cost) 1)
))

(:action moveInTheLog#activityau#ev373-ev374
:precondition (and (tracePointer ev373) (allowed))
:effect (and (not (tracePointer ev373)) (tracePointer ev374) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybx#ev374-ev375
:precondition (and (tracePointer ev374) (allowed))
:effect (and (not (tracePointer ev374)) (tracePointer ev375) (increase (total-cost) 1)
))

(:action moveInTheLog#activityai#ev375-ev376
:precondition (and (tracePointer ev375) (allowed))
:effect (and (not (tracePointer ev375)) (tracePointer ev376) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycb#ev376-ev377
:precondition (and (tracePointer ev376) (allowed))
:effect (and (not (tracePointer ev376)) (tracePointer ev377) (increase (total-cost) 1)
))

(:action moveInTheLog#activityca#ev377-ev378
:precondition (and (tracePointer ev377) (allowed))
:effect (and (not (tracePointer ev377)) (tracePointer ev378) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybz#ev378-ev379
:precondition (and (tracePointer ev378) (allowed))
:effect (and (not (tracePointer ev378)) (tracePointer ev379) (increase (total-cost) 1)
))

(:action moveInTheLog#activityav#ev379-ev380
:precondition (and (tracePointer ev379) (allowed))
:effect (and (not (tracePointer ev379)) (tracePointer ev380) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycc#ev380-ev381
:precondition (and (tracePointer ev380) (allowed))
:effect (and (not (tracePointer ev380)) (tracePointer ev381) (increase (total-cost) 1)
))

(:action moveInTheLog#activityby#ev381-ev382
:precondition (and (tracePointer ev381) (allowed))
:effect (and (not (tracePointer ev381)) (tracePointer ev382) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycm#ev382-ev383
:precondition (and (tracePointer ev382) (allowed))
:effect (and (not (tracePointer ev382)) (tracePointer ev383) (increase (total-cost) 1)
))

(:action moveInTheLog#activityce#ev383-ev384
:precondition (and (tracePointer ev383) (allowed))
:effect (and (not (tracePointer ev383)) (tracePointer ev384) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaw#ev384-ev385
:precondition (and (tracePointer ev384) (allowed))
:effect (and (not (tracePointer ev384)) (tracePointer ev385) (increase (total-cost) 1)
))

(:action moveInTheLog#activityag#ev385-ev386
:precondition (and (tracePointer ev385) (allowed))
:effect (and (not (tracePointer ev385)) (tracePointer ev386) (increase (total-cost) 1)
))

(:action moveInTheLog#activitya#ev386-ev387
:precondition (and (tracePointer ev386) (allowed))
:effect (and (not (tracePointer ev386)) (tracePointer ev387) (increase (total-cost) 1)
))

(:action moveInTheLog#activityh#ev387-ev388
:precondition (and (tracePointer ev387) (allowed))
:effect (and (not (tracePointer ev387)) (tracePointer ev388) (increase (total-cost) 1)
))

(:action moveInTheLog#activityi#ev388-ev389
:precondition (and (tracePointer ev388) (allowed))
:effect (and (not (tracePointer ev388)) (tracePointer ev389) (increase (total-cost) 1)
))

(:action moveInTheLog#activityj#ev389-ev390
:precondition (and (tracePointer ev389) (allowed))
:effect (and (not (tracePointer ev389)) (tracePointer ev390) (increase (total-cost) 1)
))

(:action moveInTheLog#activitym#ev390-ev391
:precondition (and (tracePointer ev390) (allowed))
:effect (and (not (tracePointer ev390)) (tracePointer ev391) (increase (total-cost) 1)
))

(:action moveInTheLog#activityk#ev391-ev392
:precondition (and (tracePointer ev391) (allowed))
:effect (and (not (tracePointer ev391)) (tracePointer ev392) (increase (total-cost) 1)
))

(:action moveInTheLog#activityb#ev392-ev393
:precondition (and (tracePointer ev392) (allowed))
:effect (and (not (tracePointer ev392)) (tracePointer ev393) (increase (total-cost) 1)
))

(:action moveInTheLog#activitys#ev393-ev394
:precondition (and (tracePointer ev393) (allowed))
:effect (and (not (tracePointer ev393)) (tracePointer ev394) (increase (total-cost) 1)
))

(:action moveInTheLog#activityv#ev394-ev395
:precondition (and (tracePointer ev394) (allowed))
:effect (and (not (tracePointer ev394)) (tracePointer ev395) (increase (total-cost) 1)
))

(:action moveInTheLog#activityw#ev395-ev396
:precondition (and (tracePointer ev395) (allowed))
:effect (and (not (tracePointer ev395)) (tracePointer ev396) (increase (total-cost) 1)
))

(:action moveInTheLog#activityx#ev396-ev397
:precondition (and (tracePointer ev396) (allowed))
:effect (and (not (tracePointer ev396)) (tracePointer ev397) (increase (total-cost) 1)
))

(:action moveInTheLog#activityy#ev397-ev398
:precondition (and (tracePointer ev397) (allowed))
:effect (and (not (tracePointer ev397)) (tracePointer ev398) (increase (total-cost) 1)
))

(:action moveInTheLog#activityt#ev398-ev399
:precondition (and (tracePointer ev398) (allowed))
:effect (and (not (tracePointer ev398)) (tracePointer ev399) (increase (total-cost) 1)
))

(:action moveInTheLog#activityaf#ev399-ev400
:precondition (and (tracePointer ev399) (allowed))
:effect (and (not (tracePointer ev399)) (tracePointer ev400) (increase (total-cost) 1)
))

(:action moveInTheLog#activityah#ev400-ev401
:precondition (and (tracePointer ev400) (allowed))
:effect (and (not (tracePointer ev400)) (tracePointer ev401) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycd#ev401-ev402
:precondition (and (tracePointer ev401) (allowed))
:effect (and (not (tracePointer ev401)) (tracePointer ev402) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybd#ev402-ev403
:precondition (and (tracePointer ev402) (allowed))
:effect (and (not (tracePointer ev402)) (tracePointer ev403) (increase (total-cost) 1)
))

(:action moveInTheLog#activityan#ev403-ev404
:precondition (and (tracePointer ev403) (allowed))
:effect (and (not (tracePointer ev403)) (tracePointer ev404) (increase (total-cost) 1)
))

(:action moveInTheLog#activitycl#ev404-ev405
:precondition (and (tracePointer ev404) (allowed))
:effect (and (not (tracePointer ev404)) (tracePointer ev405) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybl#ev405-ev406
:precondition (and (tracePointer ev405) (allowed))
:effect (and (not (tracePointer ev405)) (tracePointer ev406) (increase (total-cost) 1)
))

(:action moveInTheLog#activityao#ev406-ev407
:precondition (and (tracePointer ev406) (allowed))
:effect (and (not (tracePointer ev406)) (tracePointer ev407) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybt#ev407-ev408
:precondition (and (tracePointer ev407) (allowed))
:effect (and (not (tracePointer ev407)) (tracePointer ev408) (increase (total-cost) 1)
))

(:action moveInTheLog#activityai#ev408-ev409
:precondition (and (tracePointer ev408) (allowed))
:effect (and (not (tracePointer ev408)) (tracePointer ev409) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybu#ev409-ev410
:precondition (and (tracePointer ev409) (allowed))
:effect (and (not (tracePointer ev409)) (tracePointer ev410) (increase (total-cost) 1)
))

(:action moveInTheLog#activityav#ev410-ev411
:precondition (and (tracePointer ev410) (allowed))
:effect (and (not (tracePointer ev410)) (tracePointer ev411) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybm#ev411-ev412
:precondition (and (tracePointer ev411) (allowed))
:effect (and (not (tracePointer ev411)) (tracePointer ev412) (increase (total-cost) 1)
))

(:action moveInTheLog#activitybe#ev412-evEND
:precondition (and (tracePointer ev412) (allowed))
:effect (and (not (tracePointer ev412)) (tracePointer evEND) (increase (total-cost) 1)
))

)