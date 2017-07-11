//
//  NSString+RN.m
//  bzbyTeacher
//
//  Created by BZBY on 15/4/8.
//  Copyright (c) 2015年 bzby. All rights reserved.
//

#import "NSString+RN.h"
#define NAMES @"含蕊、亦玉、靖荷、碧萱、寒云、向南、书雁、怀薇、思菱、忆文、翠巧、怀山、若山、向秋、凡白、绮烟、从蕾、天曼、又亦、依琴、曼彤、沛槐、又槐、元绿、安珊、夏之、易槐、宛亦、白翠、丹云、问寒、易文、傲易、青旋、思真、妙之、半双、若翠、初兰、怀曼、惜萍、初之、宛丝、寄南、小萍、幻儿、千风、天蓉、雅青、寄文、代天、春海、惜珊、向薇、冬灵、惜芹、凌青、谷芹、香巧、雁桃、映雁、书兰、盼香、向山、寄风、访烟、绮晴、傲柔、寄容、以珊、紫雪、芷容、书琴、寻桃、涵阳、怀寒、易云、采蓝、代秋、惜梦、尔烟、谷槐、怀莲、涵菱、水蓝、访冬、半兰、又柔、冬卉、安双、冰岚、香薇、语芹、静珊、幻露、访天、静柏、凌丝、小翠、雁卉、访文、凌文、芷云、思柔、巧凡、慕山、依云、千柳、从凝、安梦、香旋、凡巧、映天、安柏、平萱、以筠、忆曼、新竹、绮露、觅儿、碧蓉、白竹、飞兰、曼雁、雁露、凝冬、含灵、初阳、海秋、香天、夏容。傲冬、谷翠、冰双、绿兰、盼易、思松、梦山、友灵、绿竹、灵安、凌柏、秋柔、又蓝、尔竹、香天、天蓝、青枫、问芙、语海、灵珊、凝丹、小蕾、迎夏、水之、飞珍、冰夏、亦竹、飞莲、海白、元蝶、春蕾、芷天、怀绿、尔容、元芹、若云、寒烟、听筠、采梦、凝莲、元彤、觅山、痴瑶、代桃、冷之、盼秋、秋寒、慕蕊、巧夏、海亦、初晴、巧蕊、听安、芷雪、以松、梦槐、寒梅、香岚、寄柔、映冬、孤容、晓蕾、安萱、听枫、夜绿、雪莲、从丹、碧蓉、绮琴、雨文、幼荷、青柏、痴凝、初蓝、忆安、盼晴、寻冬、雪珊、梦寒、迎南、巧香、采南、如彤、春竹、采枫、若雁、翠阳、沛容、幻翠、山兰、芷波、雪瑶、代巧、寄云、慕卉、冷松、涵梅、书白、乐天、雁卉、宛秋、傲旋、新之、凡儿、夏真、静枫、痴柏、恨蕊、乐双、白玉、问玉、寄松、丹蝶、元瑶、冰蝶、访曼、代灵、芷烟、白易、尔阳、怜烟、平卉、丹寒、访梦、绿凝、冰菱、语蕊、痴梅、思烟、忆枫、映菱、访儿、凌兰、曼岚、若枫、傲薇、凡灵、乐蕊、秋灵、谷槐、觅云 以寒、寒香、小凡、代亦、梦露、映波、友蕊、寄凡、怜蕾、雁枫、水绿、曼荷、笑珊、寒珊、谷南、慕儿、夏岚、友儿、小萱、紫青、妙菱、冬寒、曼柔、语蝶、青筠、夜安、觅海、问安、晓槐、雅山、访云、翠容、寒凡、晓绿、以菱、冬云、含玉、访枫、含卉、夜白、冷安、灵竹、醉薇、元珊、幻波、盼夏、元瑶、迎曼、水云、访琴、谷波、乐之、笑白、之山、妙海、紫霜、平夏、凌旋、孤丝、怜寒、向萍、凡松、青丝、翠安、如天、凌雪、绮菱、代云、南莲、寻南、春文、香薇、冬灵、凌珍、采绿、天春、沛文、紫槐、幻柏、采文、春梅、雪旋、盼海、映梦、安雁、映容、凝阳、访风、天亦、平绿、盼香、觅风、小霜、雪萍、半雪、山柳、谷雪、靖易、白薇、梦菡、飞绿、如波、又晴、友易、香菱、冬亦、问雁、妙春、海冬、半安、平春、幼柏、秋灵、凝芙、念烟、白山、从灵、尔芙、迎蓉、念寒、翠绿、翠芙、靖儿、妙柏、千凝、小珍、天巧。妙旋、雪枫、夏菡、元绿、痴灵、绮琴、雨双、听枫、觅荷、凡之、晓凡、雅彤、香薇、孤风、从安、绮彤、之玉、雨珍、幻丝、代梅、香波、青亦、元菱、海瑶、飞槐、听露、梦岚、幻竹、新冬、盼翠、谷云、忆霜、水瑶、慕晴、秋双、雨真、觅珍、丹雪、从阳、元枫、痴香、思天、如松、妙晴、谷秋、妙松、晓夏、香柏、巧绿、宛筠、碧琴、盼兰、小夏、安容、青曼、千儿、香春、寻双、涵瑶、冷梅、秋柔、思菱、醉波、醉柳、以寒、迎夏、向雪、香莲、以丹、依凝、如柏、雁菱、凝竹、宛白、初柔、南蕾、书萱、梦槐、香芹、南琴、绿海、沛儿、晓瑶、听春、凝蝶、紫雪、念双、念真、曼寒、凡霜、飞雪、雪兰、雅霜、从蓉、冷雪、靖巧、翠丝、觅翠、凡白、乐蓉、迎波、丹烟、梦旋、书双、念桃、夜天、海桃、青香、恨风、安筠、觅柔、初南、秋蝶、千易、安露、诗蕊、山雁、友菱、香露、晓兰、白卉、语山、冷珍、秋翠、夏柳、如之、忆南、书易、翠桃、寄瑶、如曼、问柳、香梅、幻桃、又菡、春绿、醉蝶、亦绿、诗珊、听芹、新之、易巧、念云、晓灵、静枫、夏蓉、如南、幼丝、秋白、冰安、秋白、南风、醉山、初彤、凝海、紫文、凌晴、香卉、雅琴、傲安、傲之、初蝶、寻桃、代芹、诗霜、春柏、绿夏、碧灵、诗柳、夏柳、采白、慕梅、乐安、冬菱、紫安、宛凝、雨雪、易真、安荷、静竹、代柔、丹秋、绮梅、依白、凝荷 冰巧、之槐、香柳、问春、夏寒、半香、诗筠、新梅、白曼、安波、从阳、含桃、曼卉、笑萍、碧巧、晓露、寻菡、沛白、平灵、水彤、安彤、涵易、乐巧、依风、紫南、亦丝、易蓉、紫萍、惜萱、诗蕾、寻绿、诗双、寻云、孤丹、谷蓝、惜香、谷枫、山灵、幻丝、友梅、从云、雁丝、盼旋、幼旋、尔蓝、沛山、代丝、痴梅、觅松、冰香、依玉、冰之、妙梦、以冬、碧春、曼青、冷菱、雪曼、安白、香桃、安春、千亦、凌蝶、又夏、南烟。靖易、沛凝、翠梅、书文、雪卉、乐儿、傲丝、安青、初蝶、寄灵、惜寒、雨竹、冬莲、绮南、翠柏、平凡、亦玉、孤兰、秋珊、新筠、半芹、夏瑶、念文、晓丝、涵蕾、雁凡、谷兰、灵凡、凝云、曼云、丹彤、南霜、夜梦、从筠、雁芙、语蝶、依波、晓旋、念之、盼芙、曼安、采珊、盼夏、初柳、迎天、曼安、南珍、妙芙、语柳、含莲、晓筠、夏山、尔容、采春、念梦、傲南、问薇、雨灵、凝安、冰海、初珍、宛菡、冬卉、盼晴、冷荷、寄翠、幻梅、如凡、语梦、易梦、千柔、向露、梦玉、傲霜、依霜、灵松、诗桃、书蝶、恨真、冰蝶、山槐、以晴、友易、梦桃、香菱、孤云、水蓉、雅容、飞烟、雁荷、代芙、醉易、夏烟、山梅、若南、恨桃、依秋、依波、香巧、紫萱、涵易、忆之、幻巧、水风、安寒、白亦、惜玉、碧春、怜雪、听南、念蕾、梦竹、千凡、寄琴、采波、元冬、思菱、平卉、笑柳、雪卉、南蓉、谷梦、巧兰、绿蝶、飞荷、平安、孤晴、芷荷、曼冬、寻巧、寄波、尔槐、以旋、绿蕊、初夏、依丝、怜南、千山、雨安、水风、寄柔、念巧、幼枫、凡桃、新儿、春翠、夏波、雨琴、静槐、元槐、映阳、飞薇、小凝、映寒、傲菡、谷蕊、笑槐、飞兰、笑卉、迎荷、元冬、书竹、半烟、绮波、小之、觅露、夜雪、春柔、寒梦、尔风、白梅、雨旋、芷珊、山彤、尔柳、沛柔、灵萱、沛凝、白容、乐蓉、映安、依云、映冬、凡雁、梦秋、醉柳、梦凡、秋巧、若云、元容、怀蕾、灵寒、天薇、白风、访波、亦凝、易绿、夜南、曼凡、亦巧、青易。冰真、白萱、友安、诗翠、雪珍、海之、小蕊、又琴、香彤、语梦、惜蕊、迎彤、沛白、雁山、易蓉、雪晴、诗珊、春冬、又绿、冰绿、半梅、笑容、沛凝、念瑶、天真、含巧、如冬、向真、从蓉、春柔、亦云、向雁、尔蝶、冬易、丹亦、夏山、醉香、盼夏、孤菱、安莲、问凝、冬萱、晓山、雁蓉、梦蕊、山菡、南莲、飞双、凝丝、思萱、怀梦、雨梅、冷霜、向松、迎丝、迎梅、听双、山蝶、夜梅、醉冬、巧云、雨筠、平文、青文、半蕾 碧萱、寒云、向南、书雁、怀薇、思菱、忆文、翠巧、怀山、若山、向秋、凡白、绮烟、从蕾、天曼、又亦、依琴、曼彤、沛槐、又槐、元绿、安珊、夏之、易槐、宛亦、白翠、丹云、问寒、易文、傲易、青旋、思真、妙之、半双、若翠、初兰、怀曼、惜萍、初之、宛丝、寄南、小萍、幻儿、千风、天蓉、雅青、寄文、代天、春海、惜珊、向薇、冬灵、惜芹、凌青、谷芹、香巧、雁桃、映雁、书兰、盼香、向山、寄风、访烟、绮晴、傲柔、寄容、以珊、紫雪、芷容、书琴、寻桃、涵阳、怀寒、易云、采蓝、代秋、惜梦、尔烟、谷槐、怀莲、涵菱、水蓝、访冬、半兰、又柔、冬卉、安双、冰岚、香薇、语芹、静珊、幻露、访天、静柏、凌丝、小翠、雁卉、访文、凌文、芷云、思柔、巧凡、慕山、依云、千柳、从凝、安梦、香旋、凡巧、映天、安柏、平萱、以筠、忆曼、新竹、绮露、觅儿、碧蓉、白竹、飞兰、曼雁、雁露、凝冬、含灵、初阳、海秋、香天、夏容。傲冬、谷翠、冰双、绿兰、盼易、思松、梦山、友灵、绿竹、灵安、凌柏、秋柔、又蓝、尔竹、香天、天蓝、青枫、问芙、语海、灵珊、凝丹、小蕾、迎夏、水之、飞珍、冰夏、亦竹、飞莲、海白、元蝶、春蕾、芷天、怀绿、尔容、元芹、若云、寒烟、听筠、采梦、凝莲、元彤、觅山、痴瑶、代桃、冷之、盼秋、秋寒、慕蕊、巧夏、海亦、初晴、巧蕊、听安、芷雪、以松、梦槐、寒梅、香岚、寄柔、映冬、孤容、晓蕾、安萱、听枫、夜绿、雪莲、从丹、碧蓉、绮琴、雨文、幼荷、青柏、痴凝、初蓝、忆安、盼晴、寻冬、雪珊、梦寒、迎南、巧香、采南、如彤、春竹、采枫、若雁、翠阳、沛容、幻翠、山兰、芷波、雪瑶、代巧、寄云、慕卉、冷松、涵梅、书白、乐天、雁卉、宛秋、傲旋、新之、凡儿、夏真、静枫、痴柏、恨蕊、乐双、白玉、问玉、寄松、丹蝶、元瑶、冰蝶、访曼、代灵、芷烟、白易、尔阳、怜烟、平卉、丹寒、访梦、绿凝、冰菱、语蕊、痴梅、思烟、忆枫、映菱、访儿、凌兰、曼岚、若枫、傲薇、凡灵、乐蕊、秋灵、谷槐、觅云 幼珊、忆彤、凌青、之桃、芷荷、听荷、代玉、念珍、梦菲、夜春、千秋、白秋、谷菱、飞松、初瑶、惜灵、恨瑶、梦易、新瑶、曼梅、碧曼、友瑶、雨兰、夜柳、香蝶、盼巧、芷珍、香卉、含芙、夜云、依萱、凝雁、以莲、易容、元柳、安南、幼晴、尔琴、飞阳、白凡、沛萍、雪瑶、向卉、采文、乐珍、寒荷、觅双、白桃、安卉、迎曼、盼雁、乐松、涵山、恨寒、问枫、以柳、含海、秋春、翠曼、忆梅、涵柳、梦香、海蓝、晓曼、代珊、春冬、恨荷、忆丹、静芙、绮兰、梦安、紫丝、千雁、凝珍、香萱、梦容、冷雁、飞柏、天真、翠琴、寄真、秋荷、代珊、初雪、雅柏、怜容、如风、南露、紫易、冰凡、海雪、语蓉、碧玉、翠岚、语风、盼丹、痴旋、凝梦、从雪、白枫、傲云、白梅、念露、慕凝、雅柔、盼柳、半青、从霜、怀柔、怜晴、夜蓉、代双、以南、若菱、芷文、寄春、南晴、恨之、梦寒、初翠、灵波、巧春、问夏、凌春、惜海、亦旋、沛芹、幼萱、白凝、初露、迎海、绮玉、凌香、寻芹、秋柳、尔白、映真、含雁、寒松、友珊、寻雪、忆柏、秋柏、巧风、恨蝶、青烟、问蕊、灵阳、春枫、又儿、雪巧、丹萱、凡双、孤萍、紫菱、寻凝、傲柏、傲儿、友容、灵枫、尔丝、曼凝、若蕊、问丝、思枫、水卉、问梅、念寒、诗双、翠霜、夜香、寒蕾、凡阳、冷玉、平彤、语薇、幻珊、紫夏、凌波、芷蝶、丹南、之双、凡波、思雁、白莲、从菡、如容、采柳、沛岚、惜儿、夜玉、水儿、半凡、语海、听莲、幻枫、念柏、冰珍、思山、凝蕊、天玉、问香、思萱、向梦、笑南、夏旋、之槐、元灵、以彤、采萱、巧曼、绿兰、平蓝、问萍、绿蓉、靖柏。迎蕾、碧曼、思卉、白柏、妙菡、怜阳、雨柏、雁菡、梦之、又莲、乐荷、寒天、凝琴、书南、映天、白梦、初瑶、恨竹、平露、含巧、慕蕊、半莲、醉卉、天菱、青雪、雅旋、巧荷、飞丹、恨云、若灵、尔云、幻天、诗兰、青梦、海菡、灵槐、忆秋、寒凝、凝芙、绮山、静白、尔蓉、尔冬、映萱、白筠、冰双、访彤、绿柏、夏云、笑翠、晓灵、含双、盼波、以云、怜翠、雁风、之卉、平松、问儿、绿柳、如蓉、曼容、天晴、丹琴、惜天、寻琴、痴春、依瑶、涵易、忆灵、从波、依柔、问兰、山晴、怜珊、之云、飞双、傲白、沛春、雨南、梦之、笑阳、代容、友琴、雁梅、友桃、从露、语柔、傲玉、觅夏、晓蓝、新晴、雨莲、凝旋、绿旋、幻香、觅双、冷亦、忆雪、友卉、幻翠、靖柔、寻菱、丹翠、安阳、雅寒、惜筠、尔安、雁易、飞瑶、夏兰、沛蓝、静丹、山芙、笑晴、新烟、笑旋、雁兰、凌翠、秋莲、书桃、傲松、语儿、映菡、初曼、听云、孤松、初夏、雅香、语雪、初珍、白安、冰薇、诗槐、冷玉 梦琪、忆柳、之桃、慕青、问兰、尔岚、元香、初夏、沛菡、傲珊、曼文、乐菱、痴珊、恨玉、惜文、香寒、新柔、语蓉、海安、夜蓉、涵柏、水桃、醉蓝、春儿、语琴、从彤、傲晴、语兰、又菱、碧彤、元霜、怜梦、紫寒、妙彤、曼易、南莲、紫翠、雨寒、易烟、如萱、若南、寻真、晓亦、向珊、慕灵、以蕊、寻雁、映易、雪柳、孤岚、笑霜、海云、凝天、沛珊、寒云、冰旋、宛儿、绿真、盼儿、晓霜、碧凡、夏菡、曼香、若烟、半梦、雅绿、冰蓝、灵槐、平安、书翠、翠风、香巧、代云、梦曼、幼翠、友巧、听寒、梦柏、醉易、访旋、亦玉、凌萱、访卉、怀亦、笑蓝、春翠、靖柏、夜蕾、冰夏、梦松、书雪、乐枫、念薇、靖雁、寻春、恨山、从寒、忆香、觅波、静曼、凡旋、以亦、念露、芷蕾、千兰、新波、代真、新蕾、雁玉、冷卉、紫山、千琴、恨天、傲芙、盼山、怀蝶、冰兰、山柏、翠萱、恨松、问旋、从南、白易、问筠、如霜、半芹、丹珍、冰彤、亦寒、寒雁、怜云、寻文、乐丹、翠柔、谷山、之瑶、冰露、尔珍、谷雪、乐萱、涵菡、海莲、傲蕾、青槐、冬儿、易梦、惜雪、宛海、之柔、夏青、亦瑶、妙菡、春竹、痴梦、紫蓝、晓巧、幻柏、元风、冰枫、访蕊、南春、芷蕊、凡蕾、凡柔、安蕾、天荷、含玉、书兰、雅琴、书瑶、春雁、从安、夏槐、念芹、怀萍、代曼、幻珊、谷丝、秋翠、白晴、海露、代荷、含玉、书蕾、听白、访琴、灵雁、秋春、雪青、乐瑶、含烟、涵双、平蝶、雅蕊、傲之、灵薇、绿春、含蕾、从梦、从蓉、初丹。听兰、听蓉、语芙、夏彤、凌瑶、忆翠、幻灵、怜菡、紫南、依珊、妙竹、访烟、怜蕾、映寒、友绿、冰萍、惜霜、凌香、芷蕾、雁卉、迎梦、元柏、代萱、紫真、千青、凌寒、紫安、寒安、怀蕊、秋荷、涵雁、以山、凡梅、盼曼、翠彤、谷冬、新巧、冷安、千萍、冰烟、雅阳、友绿、南松、诗云、飞风、寄灵、书芹、幼蓉、以蓝、笑寒、忆寒、秋烟、芷巧、水香、映之、醉波、幻莲、夜山、芷卉、向彤、小玉、幼南、凡梦、尔曼、念波、迎松、青寒、笑天、涵蕾、碧菡、映秋、盼烟、忆山"

#define XS @"赵钱孙李周吴郑王冯陈诸卫蒋沈韩杨朱秦尤许何吕施张孔曹严华金魏陶姜戚谢邹喻柏水窦章云苏潘葛奚范彭郎鲁韦昌马苗凤花方俞任袁柳酆鲍史唐费廉岑薛雷贺倪汤滕殷罗毕郝邬安常乐于时傅皮卡齐康伍余元卜顾孟平黄和穆萧尹姚邵堪汪祁毛禹狄米贝明臧计伏成戴谈宋茅庞熊纪舒屈项祝董粱杜阮蓝闵席季麻强贾路娄危江童颜郭梅盛林刁钟徐邱骆高夏蔡田樊胡凌霍虞万支柯咎管卢莫经房裘缪干解应丁宣贲邓郁单杭洪包诸左石崔吉钮龚程嵇邢滑裴陆荣翁荀羊於惠甄魏家封芮羿储靳汲邴糜松井段富巫乌焦巴弓牧隗谷车侯宓蓬全郗班仰秋仲伊宫"


#define OSTR @"在红楼梦中，史湘云颇具男孩子的性格特征，是个个性比较随，天真烂漫、活力四射的少女。她无一处不显示出她对生活的热爱。她心直口快，无所顾忌，不拘小节，说话从不转弯抹角，喜欢直来直去，任意高谈阔论，想说什么就说什么，心里想什么就说什么，快人快语，从不藏着掩着。她无拘无束，心胸开阔，生性豪放，具有鲜活靓丽的生命力和豪爽不羁的潇洒风度，是个无忧无虑，是个活泼快乐，充满青春气息，很阳光，很乐观的女孩。她不象林黛玉那样的敏感多疑，也不象薛宝钗的工于心计。她没有林黛玉的忧郁，也没有薛宝钗的深沉。她不清高，也不媚俗，她自尊但不自卑，她不象林黛玉的目无下尘，也不似宝钗的刻意去迎合。每次由于她的到来，大观园便增添了几多的欢声笑语和无穷的情趣。她自幼父母双亡，命运多舛，但是由于从小没有得过父母的疼爱，所以不幸的身世并没有在她心灵深处留下的多少生活的阴影。史湘云的诗词比较散淡，也比较随意，介于林黛玉与薛宝钗之间。史湘云的诗词豪爽不拘，完全是以一个男儿的口吻来写的，调子轻快而活泼，具有一种男子的潇洒风流，俏丽妩媚中尽显男儿风采。她锦心绣口，才思敏锐，诗意怡然 ，诗情潇洒飘逸，随意性很强。她的性格特征，她的思想倾向在她的咏海棠和咏菊花中都一一表现了出来"




static const NSString * videoSuffixs = @"avi,rmvb,rm,asf,divx,mpg,mpeg,mpe,wmv,mp4,mkv,vob,3gp";

static const NSString * audioSuffixs = @"mp3,wma,ogg,aac,wav,pcm,tta,flac,au,ape,tak,wv,m4a";

static const NSString * pictureSuffixs = @"bmp,jpg,png,tif,tiff,gif,jpeg,ico";

static const NSString * documentSuffixs = @"txt,doc,docx,xls,xlsx,ppt,pptx,pdf,zip,rar,java,js,html,bat,m,h";

@implementation NSString (RN)

static NSArray * nArray;
+(NSString*)randomName{
    NSString * randomName = nil;
    if(nil == nArray){
        nArray = [NAMES componentsSeparatedByString:@"、"];
    }
    NSInteger xIndex = (NSInteger)arc4random_uniform((u_int32_t)XS.length-1)+1;
    NSInteger mIndex = (NSInteger)arc4random_uniform((u_int32_t)nArray.count-1);
    NSString * x = [XS substringWithRange:NSMakeRange(xIndex,1)];
    NSString * m = nArray[mIndex];
    randomName = [NSString stringWithFormat:@"%@%@",x,m];
    return randomName;
}
+(NSString*)randomPhoneNumber{
    NSString * randomPhoneNumber = @"1";
    NSArray * array2 = @[@"3",@"5",@"7",@"8"];
    NSArray * array =  @[@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9"];
    NSInteger index = arc4random_uniform((int)array2.count);
    randomPhoneNumber = [randomPhoneNumber stringByAppendingFormat:@"%@",array2[index]];
    for(NSInteger i = 0;i<9;i++){
        index = arc4random_uniform((int)array.count);
        randomPhoneNumber = [randomPhoneNumber stringByAppendingFormat:@"%@",array[index]];
    }
    return randomPhoneNumber;
}

+(NSString*)randomDigitalLetter{
    NSString * randomDigitalLetter = nil;
    NSString * letterStr = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    NSString * digitalStr = @"1234567890";
    NSInteger loc1 = arc4random_uniform((int)letterStr.length-2);
    NSInteger len1 = 2;
    NSRange range1 = NSMakeRange(loc1, len1);
    
    NSInteger loc2 = arc4random_uniform((int)digitalStr.length-2);
    NSInteger len2 = 2;
    NSRange range2 = NSMakeRange(loc2, len2);
    
    randomDigitalLetter = [NSString stringWithFormat:@"%@-%@",[letterStr substringWithRange:range1],[digitalStr substringWithRange:range2]];
                           
    return randomDigitalLetter;
}
+(NSString*)randomStr{
    NSInteger location = (NSInteger)arc4random_uniform((u_int32_t)OSTR.length-1);
    NSInteger length = (NSInteger)arc4random_uniform((u_int32_t)(OSTR.length-location));
    NSRange range = NSMakeRange(location, length>200?200:length);
    return [OSTR substringWithRange:range];
}
+(NSString*)randomStrWithMaxLength:(NSInteger)maxLength{
    NSInteger location = (NSInteger)arc4random_uniform((u_int32_t)OSTR.length-1);
    NSInteger length = (NSInteger)arc4random_uniform((u_int32_t)(OSTR.length-location));
    NSRange range = NSMakeRange(location, length>maxLength?maxLength:length);
    return [OSTR substringWithRange:range];
}
+(NSString *)randomImageUrl{
    NSArray * array = @[
                        @"http://h.hiphotos.baidu.com/image/w%3D400/sign=e9d4bc7593529822053338c3e7cb7b3b/b3119313b07eca80cacfb955922397dda04483be.jpg",
                        @"http://d.hiphotos.baidu.com/image/w%3D400/sign=66fe39e3d739b6004dce0eb7d9503526/37d12f2eb9389b503cf2da528735e5dde7116ea4.jpg",
                        @"http://d.hiphotos.baidu.com/image/w%3D400/sign=f0c605ea3a12b31bc76ccc29b6193674/a1ec08fa513d2697daa591f056fbb2fb4316d82d.jpg",
                        @"http://b.hiphotos.baidu.com/image/w%3D400/sign=3f39af08b4003af34dbadd60052bc619/2e2eb9389b504fc2dc88ff04e7dde71191ef6ddf.jpg",
                        @"http://h.hiphotos.baidu.com/image/w%3D400/sign=676cba4c249759ee4a5061cb82fa434e/37d3d539b6003af355110221372ac65c1138b6cc.jpg",
                        @"http://e.hiphotos.baidu.com/image/w%3D400/sign=3603c4d40ff431adbcd242397b37ac0f/e1fe9925bc315c60b01c4aa98eb1cb13485477ee.jpg",
                        @"http://c.hiphotos.baidu.com/image/w%3D400/sign=60752862b37eca80120538e7a1229712/cf1b9d16fdfaaf5121ba0ffe8f5494eef01f7a12.jpg",
                        @"http://c.hiphotos.baidu.com/image/w%3D400/sign=29763de45bafa40f3cc6cfdd9b65038c/9f2f070828381f30b3a2077fa8014c086f06f0a9.jpg",
                        @"http://f.hiphotos.baidu.com/image/w%3D400/sign=f04304ccf0deb48ffb69a0dec01e3aef/94cad1c8a786c9177287cc94ca3d70cf3ac75792.jpg",
                        @"http://c.hiphotos.baidu.com/image/w%3D400/sign=b338613a6c061d957d4636384bf40a5d/6a63f6246b600c339d7dc6ca184c510fd9f9a1af.jpg",
                        @"http://c.hiphotos.baidu.com/image/w%3D400/sign=768d60c61f950a7b75354fc43ad0625c/f7246b600c338744d17d148c530fd9f9d62aa081.jpg",
                        @"http://www.33.la/uploads/20140403sj/6275.jpg",
                        @"http://www.33.la/uploads/20140403sj/7198.jpg",
                        @"http://d.3987.com/xllq_140102/009.jpg",
                        @"http://d.3987.com/wzbz_140702/001.jpg"
                        ];
    NSInteger index = (NSInteger)arc4random_uniform((u_int32_t)(array.count-1))+1;
    return array[index];
}
-(FileSuffixType)getFileType{
    FileSuffixType type = FileSuffixTypeNuknow;
    NSArray * videoSuffixArray = [videoSuffixs componentsSeparatedByString:@","];
    NSArray * audioSuffixArray = [audioSuffixs componentsSeparatedByString:@","];
    NSArray * pictureSuffixArray = [pictureSuffixs componentsSeparatedByString:@","];
    NSArray * documentSuffixArray = [documentSuffixs componentsSeparatedByString:@","];
    if([videoSuffixArray containsObject:[self lowercaseString]]){
        type = FileSuffixTypeVideo;
    }else if([audioSuffixArray containsObject:[self lowercaseString]]){
        type = FileSuffixTypeAudio;
    }else if([pictureSuffixArray containsObject:[self lowercaseString]]){
        type = FileSuffixTypePicture;
    }else if([documentSuffixArray containsObject:[self lowercaseString]]){
        type = FileSuffixTypeDocument;
    }
    return type;
}

@end



































