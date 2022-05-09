; ModuleID = '/llk/IR_all_yes/net/dccp/ccids/lib/tfrc_equation.c_pt.bc'
source_filename = "../net/dccp/ccids/lib/tfrc_equation.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@tfrc_calc_x._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\012WARNING: RTT is 0, returning maximum X_calc. at %s:%d/%s()\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tfrc_calc_x\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"net/dccp/ccids/lib/tfrc_equation.c\00", [61 x i8] zeroinitializer }, align 32
@tfrc_calc_x._entry_ptr = internal global ptr @tfrc_calc_x._entry, section ".printk_index", align 4
@tfrc_calc_x._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014%s: Value of p (%d) below resolution. Substituting %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tfrc_calc_x._entry_ptr.5 = internal global ptr @tfrc_calc_x._entry.3, section ".printk_index", align 4
@tfrc_calc_x_lookup = internal constant { [500 x [2 x i32]], [992 x i8] } { [500 x [2 x i32]] [[2 x i32] [i32 37172, i32 8172], [2 x i32] [i32 53499, i32 11567], [2 x i32] [i32 66664, i32 14180], [2 x i32] [i32 78298, i32 16388], [2 x i32] [i32 89021, i32 18339], [2 x i32] [i32 99147, i32 20108], [2 x i32] [i32 108858, i32 21738], [2 x i32] [i32 118273, i32 23260], [2 x i32] [i32 127474, i32 24693], [2 x i32] [i32 136520, i32 26052], [2 x i32] [i32 145456, i32 27348], [2 x i32] [i32 154316, i32 28589], [2 x i32] [i32 163130, i32 29783], [2 x i32] [i32 171919, i32 30935], [2 x i32] [i32 180704, i32 32049], [2 x i32] [i32 189502, i32 33130], [2 x i32] [i32 198328, i32 34180], [2 x i32] [i32 207194, i32 35202], [2 x i32] [i32 216114, i32 36198], [2 x i32] [i32 225097, i32 37172], [2 x i32] [i32 234153, i32 38123], [2 x i32] [i32 243294, i32 39055], [2 x i32] [i32 252527, i32 39968], [2 x i32] [i32 261861, i32 40864], [2 x i32] [i32 271305, i32 41743], [2 x i32] [i32 280866, i32 42607], [2 x i32] [i32 290553, i32 43457], [2 x i32] [i32 300372, i32 44293], [2 x i32] [i32 310333, i32 45117], [2 x i32] [i32 320441, i32 45929], [2 x i32] [i32 330705, i32 46729], [2 x i32] [i32 341131, i32 47518], [2 x i32] [i32 351728, i32 48297], [2 x i32] [i32 362501, i32 49066], [2 x i32] [i32 373460, i32 49826], [2 x i32] [i32 384609, i32 50577], [2 x i32] [i32 395958, i32 51320], [2 x i32] [i32 407513, i32 52054], [2 x i32] [i32 419281, i32 52780], [2 x i32] [i32 431270, i32 53499], [2 x i32] [i32 443487, i32 54211], [2 x i32] [i32 455940, i32 54916], [2 x i32] [i32 468635, i32 55614], [2 x i32] [i32 481581, i32 56306], [2 x i32] [i32 494785, i32 56991], [2 x i32] [i32 508254, i32 57671], [2 x i32] [i32 521996, i32 58345], [2 x i32] [i32 536019, i32 59014], [2 x i32] [i32 550331, i32 59677], [2 x i32] [i32 564939, i32 60335], [2 x i32] [i32 579851, i32 60988], [2 x i32] [i32 595075, i32 61636], [2 x i32] [i32 610619, i32 62279], [2 x i32] [i32 626491, i32 62918], [2 x i32] [i32 642700, i32 63553], [2 x i32] [i32 659253, i32 64183], [2 x i32] [i32 676158, i32 64809], [2 x i32] [i32 693424, i32 65431], [2 x i32] [i32 711060, i32 66050], [2 x i32] [i32 729073, i32 66664], [2 x i32] [i32 747472, i32 67275], [2 x i32] [i32 766266, i32 67882], [2 x i32] [i32 785464, i32 68486], [2 x i32] [i32 805073, i32 69087], [2 x i32] [i32 825103, i32 69684], [2 x i32] [i32 845562, i32 70278], [2 x i32] [i32 866460, i32 70868], [2 x i32] [i32 887805, i32 71456], [2 x i32] [i32 909606, i32 72041], [2 x i32] [i32 931873, i32 72623], [2 x i32] [i32 954614, i32 73202], [2 x i32] [i32 977839, i32 73778], [2 x i32] [i32 1001557, i32 74352], [2 x i32] [i32 1025777, i32 74923], [2 x i32] [i32 1050508, i32 75492], [2 x i32] [i32 1075761, i32 76058], [2 x i32] [i32 1101544, i32 76621], [2 x i32] [i32 1127867, i32 77183], [2 x i32] [i32 1154739, i32 77741], [2 x i32] [i32 1182172, i32 78298], [2 x i32] [i32 1210173, i32 78852], [2 x i32] [i32 1238753, i32 79405], [2 x i32] [i32 1267922, i32 79955], [2 x i32] [i32 1297689, i32 80503], [2 x i32] [i32 1328066, i32 81049], [2 x i32] [i32 1359060, i32 81593], [2 x i32] [i32 1390684, i32 82135], [2 x i32] [i32 1422947, i32 82675], [2 x i32] [i32 1455859, i32 83213], [2 x i32] [i32 1489430, i32 83750], [2 x i32] [i32 1523671, i32 84284], [2 x i32] [i32 1558593, i32 84817], [2 x i32] [i32 1594205, i32 85348], [2 x i32] [i32 1630518, i32 85878], [2 x i32] [i32 1667543, i32 86406], [2 x i32] [i32 1705290, i32 86932], [2 x i32] [i32 1743770, i32 87457], [2 x i32] [i32 1782994, i32 87980], [2 x i32] [i32 1822973, i32 88501], [2 x i32] [i32 1863717, i32 89021], [2 x i32] [i32 1905237, i32 89540], [2 x i32] [i32 1947545, i32 90057], [2 x i32] [i32 1990650, i32 90573], [2 x i32] [i32 2034566, i32 91087], [2 x i32] [i32 2079301, i32 91600], [2 x i32] [i32 2124869, i32 92111], [2 x i32] [i32 2171279, i32 92622], [2 x i32] [i32 2218543, i32 93131], [2 x i32] [i32 2266673, i32 93639], [2 x i32] [i32 2315680, i32 94145], [2 x i32] [i32 2365575, i32 94650], [2 x i32] [i32 2416371, i32 95154], [2 x i32] [i32 2468077, i32 95657], [2 x i32] [i32 2520707, i32 96159], [2 x i32] [i32 2574271, i32 96660], [2 x i32] [i32 2628782, i32 97159], [2 x i32] [i32 2684250, i32 97658], [2 x i32] [i32 2740689, i32 98155], [2 x i32] [i32 2798110, i32 98651], [2 x i32] [i32 2856524, i32 99147], [2 x i32] [i32 2915944, i32 99641], [2 x i32] [i32 2976382, i32 100134], [2 x i32] [i32 3037850, i32 100626], [2 x i32] [i32 3100360, i32 101117], [2 x i32] [i32 3163924, i32 101608], [2 x i32] [i32 3228554, i32 102097], [2 x i32] [i32 3294263, i32 102586], [2 x i32] [i32 3361063, i32 103073], [2 x i32] [i32 3428966, i32 103560], [2 x i32] [i32 3497984, i32 104045], [2 x i32] [i32 3568131, i32 104530], [2 x i32] [i32 3639419, i32 105014], [2 x i32] [i32 3711860, i32 105498], [2 x i32] [i32 3785467, i32 105980], [2 x i32] [i32 3860253, i32 106462], [2 x i32] [i32 3936229, i32 106942], [2 x i32] [i32 4013410, i32 107422], [2 x i32] [i32 4091808, i32 107902], [2 x i32] [i32 4171435, i32 108380], [2 x i32] [i32 4252306, i32 108858], [2 x i32] [i32 4334431, i32 109335], [2 x i32] [i32 4417825, i32 109811], [2 x i32] [i32 4502501, i32 110287], [2 x i32] [i32 4588472, i32 110762], [2 x i32] [i32 4675750, i32 111236], [2 x i32] [i32 4764349, i32 111709], [2 x i32] [i32 4854283, i32 112182], [2 x i32] [i32 4945564, i32 112654], [2 x i32] [i32 5038206, i32 113126], [2 x i32] [i32 5132223, i32 113597], [2 x i32] [i32 5227627, i32 114067], [2 x i32] [i32 5324432, i32 114537], [2 x i32] [i32 5422652, i32 115006], [2 x i32] [i32 5522299, i32 115474], [2 x i32] [i32 5623389, i32 115942], [2 x i32] [i32 5725934, i32 116409], [2 x i32] [i32 5829948, i32 116876], [2 x i32] [i32 5935446, i32 117342], [2 x i32] [i32 6042439, i32 117808], [2 x i32] [i32 6150943, i32 118273], [2 x i32] [i32 6260972, i32 118738], [2 x i32] [i32 6372538, i32 119202], [2 x i32] [i32 6485657, i32 119665], [2 x i32] [i32 6600342, i32 120128], [2 x i32] [i32 6716607, i32 120591], [2 x i32] [i32 6834467, i32 121053], [2 x i32] [i32 6953935, i32 121514], [2 x i32] [i32 7075025, i32 121976], [2 x i32] [i32 7197752, i32 122436], [2 x i32] [i32 7322131, i32 122896], [2 x i32] [i32 7448175, i32 123356], [2 x i32] [i32 7575898, i32 123815], [2 x i32] [i32 7705316, i32 124274], [2 x i32] [i32 7836442, i32 124733], [2 x i32] [i32 7969291, i32 125191], [2 x i32] [i32 8103877, i32 125648], [2 x i32] [i32 8240216, i32 126105], [2 x i32] [i32 8378321, i32 126562], [2 x i32] [i32 8518208, i32 127018], [2 x i32] [i32 8659890, i32 127474], [2 x i32] [i32 8803384, i32 127930], [2 x i32] [i32 8948702, i32 128385], [2 x i32] [i32 9095861, i32 128840], [2 x i32] [i32 9244875, i32 129294], [2 x i32] [i32 9395760, i32 129748], [2 x i32] [i32 9548529, i32 130202], [2 x i32] [i32 9703198, i32 130655], [2 x i32] [i32 9859782, i32 131108], [2 x i32] [i32 10018296, i32 131561], [2 x i32] [i32 10178755, i32 132014], [2 x i32] [i32 10341174, i32 132466], [2 x i32] [i32 10505569, i32 132917], [2 x i32] [i32 10671954, i32 133369], [2 x i32] [i32 10840345, i32 133820], [2 x i32] [i32 11010757, i32 134271], [2 x i32] [i32 11183206, i32 134721], [2 x i32] [i32 11357706, i32 135171], [2 x i32] [i32 11534274, i32 135621], [2 x i32] [i32 11712924, i32 136071], [2 x i32] [i32 11893673, i32 136520], [2 x i32] [i32 12076536, i32 136969], [2 x i32] [i32 12261527, i32 137418], [2 x i32] [i32 12448664, i32 137867], [2 x i32] [i32 12637961, i32 138315], [2 x i32] [i32 12829435, i32 138763], [2 x i32] [i32 13023101, i32 139211], [2 x i32] [i32 13218974, i32 139658], [2 x i32] [i32 13417071, i32 140106], [2 x i32] [i32 13617407, i32 140553], [2 x i32] [i32 13819999, i32 140999], [2 x i32] [i32 14024862, i32 141446], [2 x i32] [i32 14232012, i32 141892], [2 x i32] [i32 14441465, i32 142339], [2 x i32] [i32 14653238, i32 142785], [2 x i32] [i32 14867346, i32 143230], [2 x i32] [i32 15083805, i32 143676], [2 x i32] [i32 15302632, i32 144121], [2 x i32] [i32 15523842, i32 144566], [2 x i32] [i32 15747453, i32 145011], [2 x i32] [i32 15973479, i32 145456], [2 x i32] [i32 16201939, i32 145900], [2 x i32] [i32 16432847, i32 146345], [2 x i32] [i32 16666221, i32 146789], [2 x i32] [i32 16902076, i32 147233], [2 x i32] [i32 17140429, i32 147677], [2 x i32] [i32 17381297, i32 148121], [2 x i32] [i32 17624696, i32 148564], [2 x i32] [i32 17870643, i32 149007], [2 x i32] [i32 18119154, i32 149451], [2 x i32] [i32 18370247, i32 149894], [2 x i32] [i32 18623936, i32 150336], [2 x i32] [i32 18880241, i32 150779], [2 x i32] [i32 19139176, i32 151222], [2 x i32] [i32 19400759, i32 151664], [2 x i32] [i32 19665007, i32 152107], [2 x i32] [i32 19931936, i32 152549], [2 x i32] [i32 20201564, i32 152991], [2 x i32] [i32 20473907, i32 153433], [2 x i32] [i32 20748982, i32 153875], [2 x i32] [i32 21026807, i32 154316], [2 x i32] [i32 21307399, i32 154758], [2 x i32] [i32 21590773, i32 155199], [2 x i32] [i32 21876949, i32 155641], [2 x i32] [i32 22165941, i32 156082], [2 x i32] [i32 22457769, i32 156523], [2 x i32] [i32 22752449, i32 156964], [2 x i32] [i32 23049999, i32 157405], [2 x i32] [i32 23350435, i32 157846], [2 x i32] [i32 23653774, i32 158287], [2 x i32] [i32 23960036, i32 158727], [2 x i32] [i32 24269236, i32 159168], [2 x i32] [i32 24581392, i32 159608], [2 x i32] [i32 24896521, i32 160049], [2 x i32] [i32 25214642, i32 160489], [2 x i32] [i32 25535772, i32 160929], [2 x i32] [i32 25859927, i32 161370], [2 x i32] [i32 26187127, i32 161810], [2 x i32] [i32 26517388, i32 162250], [2 x i32] [i32 26850728, i32 162690], [2 x i32] [i32 27187165, i32 163130], [2 x i32] [i32 27526716, i32 163569], [2 x i32] [i32 27869400, i32 164009], [2 x i32] [i32 28215234, i32 164449], [2 x i32] [i32 28564236, i32 164889], [2 x i32] [i32 28916423, i32 165328], [2 x i32] [i32 29271815, i32 165768], [2 x i32] [i32 29630428, i32 166208], [2 x i32] [i32 29992281, i32 166647], [2 x i32] [i32 30357392, i32 167087], [2 x i32] [i32 30725779, i32 167526], [2 x i32] [i32 31097459, i32 167965], [2 x i32] [i32 31472452, i32 168405], [2 x i32] [i32 31850774, i32 168844], [2 x i32] [i32 32232445, i32 169283], [2 x i32] [i32 32617482, i32 169723], [2 x i32] [i32 33005904, i32 170162], [2 x i32] [i32 33397730, i32 170601], [2 x i32] [i32 33792976, i32 171041], [2 x i32] [i32 34191663, i32 171480], [2 x i32] [i32 34593807, i32 171919], [2 x i32] [i32 34999428, i32 172358], [2 x i32] [i32 35408544, i32 172797], [2 x i32] [i32 35821174, i32 173237], [2 x i32] [i32 36237335, i32 173676], [2 x i32] [i32 36657047, i32 174115], [2 x i32] [i32 37080329, i32 174554], [2 x i32] [i32 37507197, i32 174993], [2 x i32] [i32 37937673, i32 175433], [2 x i32] [i32 38371773, i32 175872], [2 x i32] [i32 38809517, i32 176311], [2 x i32] [i32 39250924, i32 176750], [2 x i32] [i32 39696012, i32 177190], [2 x i32] [i32 40144800, i32 177629], [2 x i32] [i32 40597308, i32 178068], [2 x i32] [i32 41053553, i32 178507], [2 x i32] [i32 41513554, i32 178947], [2 x i32] [i32 41977332, i32 179386], [2 x i32] [i32 42444904, i32 179825], [2 x i32] [i32 42916290, i32 180265], [2 x i32] [i32 43391509, i32 180704], [2 x i32] [i32 43870579, i32 181144], [2 x i32] [i32 44353520, i32 181583], [2 x i32] [i32 44840352, i32 182023], [2 x i32] [i32 45331092, i32 182462], [2 x i32] [i32 45825761, i32 182902], [2 x i32] [i32 46324378, i32 183342], [2 x i32] [i32 46826961, i32 183781], [2 x i32] [i32 47333531, i32 184221], [2 x i32] [i32 47844106, i32 184661], [2 x i32] [i32 48358706, i32 185101], [2 x i32] [i32 48877350, i32 185541], [2 x i32] [i32 49400058, i32 185981], [2 x i32] [i32 49926849, i32 186421], [2 x i32] [i32 50457743, i32 186861], [2 x i32] [i32 50992759, i32 187301], [2 x i32] [i32 51531916, i32 187741], [2 x i32] [i32 52075235, i32 188181], [2 x i32] [i32 52622735, i32 188622], [2 x i32] [i32 53174435, i32 189062], [2 x i32] [i32 53730355, i32 189502], [2 x i32] [i32 54290515, i32 189943], [2 x i32] [i32 54854935, i32 190383], [2 x i32] [i32 55423634, i32 190824], [2 x i32] [i32 55996633, i32 191265], [2 x i32] [i32 56573950, i32 191706], [2 x i32] [i32 57155606, i32 192146], [2 x i32] [i32 57741621, i32 192587], [2 x i32] [i32 58332014, i32 193028], [2 x i32] [i32 58926806, i32 193470], [2 x i32] [i32 59526017, i32 193911], [2 x i32] [i32 60129666, i32 194352], [2 x i32] [i32 60737774, i32 194793], [2 x i32] [i32 61350361, i32 195235], [2 x i32] [i32 61967446, i32 195677], [2 x i32] [i32 62589050, i32 196118], [2 x i32] [i32 63215194, i32 196560], [2 x i32] [i32 63845897, i32 197002], [2 x i32] [i32 64481179, i32 197444], [2 x i32] [i32 65121061, i32 197886], [2 x i32] [i32 65765563, i32 198328], [2 x i32] [i32 66414705, i32 198770], [2 x i32] [i32 67068508, i32 199213], [2 x i32] [i32 67726992, i32 199655], [2 x i32] [i32 68390177, i32 200098], [2 x i32] [i32 69058085, i32 200540], [2 x i32] [i32 69730735, i32 200983], [2 x i32] [i32 70408147, i32 201426], [2 x i32] [i32 71090343, i32 201869], [2 x i32] [i32 71777343, i32 202312], [2 x i32] [i32 72469168, i32 202755], [2 x i32] [i32 73165837, i32 203199], [2 x i32] [i32 73867373, i32 203642], [2 x i32] [i32 74573795, i32 204086], [2 x i32] [i32 75285124, i32 204529], [2 x i32] [i32 76001380, i32 204973], [2 x i32] [i32 76722586, i32 205417], [2 x i32] [i32 77448761, i32 205861], [2 x i32] [i32 78179926, i32 206306], [2 x i32] [i32 78916102, i32 206750], [2 x i32] [i32 79657310, i32 207194], [2 x i32] [i32 80403571, i32 207639], [2 x i32] [i32 81154906, i32 208084], [2 x i32] [i32 81911335, i32 208529], [2 x i32] [i32 82672880, i32 208974], [2 x i32] [i32 83439562, i32 209419], [2 x i32] [i32 84211402, i32 209864], [2 x i32] [i32 84988421, i32 210309], [2 x i32] [i32 85770640, i32 210755], [2 x i32] [i32 86558080, i32 211201], [2 x i32] [i32 87350762, i32 211647], [2 x i32] [i32 88148708, i32 212093], [2 x i32] [i32 88951938, i32 212539], [2 x i32] [i32 89760475, i32 212985], [2 x i32] [i32 90574339, i32 213432], [2 x i32] [i32 91393551, i32 213878], [2 x i32] [i32 92218133, i32 214325], [2 x i32] [i32 93048107, i32 214772], [2 x i32] [i32 93883493, i32 215219], [2 x i32] [i32 94724314, i32 215666], [2 x i32] [i32 95570590, i32 216114], [2 x i32] [i32 96422343, i32 216561], [2 x i32] [i32 97279594, i32 217009], [2 x i32] [i32 98142366, i32 217457], [2 x i32] [i32 99010679, i32 217905], [2 x i32] [i32 99884556, i32 218353], [2 x i32] [i32 100764018, i32 218801], [2 x i32] [i32 101649086, i32 219250], [2 x i32] [i32 102539782, i32 219698], [2 x i32] [i32 103436128, i32 220147], [2 x i32] [i32 104338146, i32 220596], [2 x i32] [i32 105245857, i32 221046], [2 x i32] [i32 106159284, i32 221495], [2 x i32] [i32 107078448, i32 221945], [2 x i32] [i32 108003370, i32 222394], [2 x i32] [i32 108934074, i32 222844], [2 x i32] [i32 109870580, i32 223294], [2 x i32] [i32 110812910, i32 223745], [2 x i32] [i32 111761087, i32 224195], [2 x i32] [i32 112715133, i32 224646], [2 x i32] [i32 113675069, i32 225097], [2 x i32] [i32 114640918, i32 225548], [2 x i32] [i32 115612702, i32 225999], [2 x i32] [i32 116590442, i32 226450], [2 x i32] [i32 117574162, i32 226902], [2 x i32] [i32 118563882, i32 227353], [2 x i32] [i32 119559626, i32 227805], [2 x i32] [i32 120561415, i32 228258], [2 x i32] [i32 121569272, i32 228710], [2 x i32] [i32 122583219, i32 229162], [2 x i32] [i32 123603278, i32 229615], [2 x i32] [i32 124629471, i32 230068], [2 x i32] [i32 125661822, i32 230521], [2 x i32] [i32 126700352, i32 230974], [2 x i32] [i32 127745083, i32 231428], [2 x i32] [i32 128796039, i32 231882], [2 x i32] [i32 129853241, i32 232336], [2 x i32] [i32 130916713, i32 232790], [2 x i32] [i32 131986475, i32 233244], [2 x i32] [i32 133062553, i32 233699], [2 x i32] [i32 134144966, i32 234153], [2 x i32] [i32 135233739, i32 234608], [2 x i32] [i32 136328894, i32 235064], [2 x i32] [i32 137430453, i32 235519], [2 x i32] [i32 138538440, i32 235975], [2 x i32] [i32 139652876, i32 236430], [2 x i32] [i32 140773786, i32 236886], [2 x i32] [i32 141901190, i32 237343], [2 x i32] [i32 143035113, i32 237799], [2 x i32] [i32 144175576, i32 238256], [2 x i32] [i32 145322604, i32 238713], [2 x i32] [i32 146476218, i32 239170], [2 x i32] [i32 147636442, i32 239627], [2 x i32] [i32 148803298, i32 240085], [2 x i32] [i32 149976809, i32 240542], [2 x i32] [i32 151156999, i32 241000], [2 x i32] [i32 152343890, i32 241459], [2 x i32] [i32 153537506, i32 241917], [2 x i32] [i32 154737869, i32 242376], [2 x i32] [i32 155945002, i32 242835], [2 x i32] [i32 157158929, i32 243294], [2 x i32] [i32 158379673, i32 243753], [2 x i32] [i32 159607257, i32 244213], [2 x i32] [i32 160841704, i32 244673], [2 x i32] [i32 162083037, i32 245133], [2 x i32] [i32 163331279, i32 245593], [2 x i32] [i32 164586455, i32 246054], [2 x i32] [i32 165848586, i32 246514], [2 x i32] [i32 167117696, i32 246975], [2 x i32] [i32 168393810, i32 247437], [2 x i32] [i32 169676949, i32 247898], [2 x i32] [i32 170967138, i32 248360], [2 x i32] [i32 172264399, i32 248822], [2 x i32] [i32 173568757, i32 249284], [2 x i32] [i32 174880235, i32 249747], [2 x i32] [i32 176198856, i32 250209], [2 x i32] [i32 177524643, i32 250672], [2 x i32] [i32 178857621, i32 251136], [2 x i32] [i32 180197813, i32 251599], [2 x i32] [i32 181545242, i32 252063], [2 x i32] [i32 182899933, i32 252527], [2 x i32] [i32 184261908, i32 252991], [2 x i32] [i32 185631191, i32 253456], [2 x i32] [i32 187007807, i32 253920], [2 x i32] [i32 188391778, i32 254385], [2 x i32] [i32 189783129, i32 254851], [2 x i32] [i32 191181884, i32 255316], [2 x i32] [i32 192588065, i32 255782], [2 x i32] [i32 194001698, i32 256248], [2 x i32] [i32 195422805, i32 256714], [2 x i32] [i32 196851411, i32 257181], [2 x i32] [i32 198287540, i32 257648], [2 x i32] [i32 199731215, i32 258115], [2 x i32] [i32 201182461, i32 258582], [2 x i32] [i32 202641302, i32 259050], [2 x i32] [i32 204107760, i32 259518], [2 x i32] [i32 205581862, i32 259986], [2 x i32] [i32 207063630, i32 260454], [2 x i32] [i32 208553088, i32 260923], [2 x i32] [i32 210050262, i32 261392], [2 x i32] [i32 211555174, i32 261861], [2 x i32] [i32 213067849, i32 262331], [2 x i32] [i32 214588312, i32 262800], [2 x i32] [i32 216116586, i32 263270], [2 x i32] [i32 217652696, i32 263741], [2 x i32] [i32 219196666, i32 264211], [2 x i32] [i32 220748520, i32 264682], [2 x i32] [i32 222308282, i32 265153], [2 x i32] [i32 223875978, i32 265625], [2 x i32] [i32 225451630, i32 266097], [2 x i32] [i32 227035265, i32 266569], [2 x i32] [i32 228626905, i32 267041], [2 x i32] [i32 230226576, i32 267514], [2 x i32] [i32 231834302, i32 267986], [2 x i32] [i32 233450107, i32 268460], [2 x i32] [i32 235074016, i32 268933], [2 x i32] [i32 236706054, i32 269407], [2 x i32] [i32 238346244, i32 269881], [2 x i32] [i32 239994613, i32 270355], [2 x i32] [i32 241651183, i32 270830], [2 x i32] [i32 243315981, i32 271305]], [992 x i8] zeroinitializer }, align 32
@tfrc_calc_x_reverse_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: fvalue %u smaller than resolution\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tfrc_calc_x_reverse_lookup\00", [37 x i8] zeroinitializer }, align 32
@tfrc_calc_x_reverse_lookup._entry_ptr = internal global ptr @tfrc_calc_x_reverse_lookup._entry, section ".printk_index", align 4
@tfrc_calc_x_reverse_lookup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: fvalue %u exceeds bounds!\0A\00", [63 x i8] zeroinitializer }, align 32
@tfrc_calc_x_reverse_lookup._entry_ptr.10 = internal global ptr @tfrc_calc_x_reverse_lookup._entry.8, section ".printk_index", align 4
@scaled_div32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\012Overflow: %llu/%llu > UINT_MAX at %s:%d/%s()\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scaled_div32\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/dccp/ccids/lib/tfrc.h\00", [38 x i8] zeroinitializer }, align 32
@scaled_div32._entry_ptr = internal global ptr @scaled_div32._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 623, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 629, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"tfrc_calc_x_lookup\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 87, i32 18 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 671, i32 3 }
@___asan_gen_.48 = private constant [38 x i8] c"../net/dccp/ccids/lib/tfrc_equation.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 675, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [29 x i8] c"../net/dccp/ccids/lib/tfrc.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 38, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @scaled_div32._entry, ptr @scaled_div32._entry_ptr, ptr @tfrc_calc_x._entry, ptr @tfrc_calc_x._entry.3, ptr @tfrc_calc_x._entry_ptr, ptr @tfrc_calc_x._entry_ptr.5, ptr @tfrc_calc_x_reverse_lookup._entry, ptr @tfrc_calc_x_reverse_lookup._entry.8, ptr @tfrc_calc_x_reverse_lookup._entry_ptr, ptr @tfrc_calc_x_reverse_lookup._entry_ptr.10, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @tfrc_calc_x_lookup, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfrc_calc_x._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfrc_calc_x._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfrc_calc_x_lookup to i32), i32 4000, i32 4992, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfrc_calc_x_reverse_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfrc_calc_x_reverse_lookup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaled_div32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tfrc_calc_x(i16 noundef zeroext %s, i32 noundef %R, i32 noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %p)
  %cmp = icmp ugt i32 %p, 1000000
  br i1 %cmp, label %do.body2, label %do.body8, !prof !36

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/dccp/ccids/lib/tfrc_equation.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 620, 0\0A.popsection", ""() #4, !srcloc !37
  unreachable

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p)
  %cmp9 = icmp eq i32 %p, 0
  br i1 %cmp9, label %do.body17, label %do.end25, !prof !36

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/dccp/ccids/lib/tfrc_equation.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 621, 0\0A.popsection", ""() #4, !srcloc !38
  unreachable

do.end25:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %R)
  %cmp26 = icmp eq i32 %R, 0
  br i1 %cmp26, label %do.end30, label %if.end31

do.end30:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 623, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end31:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 50001, i32 %p)
  %cmp32 = icmp ult i32 %p, 50001
  br i1 %cmp32, label %if.then33, label %if.else50

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %p)
  %cmp34 = icmp ult i32 %p, 100
  br i1 %cmp34, label %do.body36, label %if.else

do.body36:                                        ; preds = %if.then33
  %call37 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.body36.if.end48_crit_edge, label %do.end42

do.body36.if.end48_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

do.end42:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %p, i32 noundef 100) #7
  br label %if.end48

if.else:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  %div.lhs.trunc = trunc i32 %p to i16
  %div74 = udiv i16 %div.lhs.trunc, 100
  %0 = add nsw i16 %div74, -1
  %phi.cast = zext i16 %0 to i32
  br label %if.end48

if.end48:                                         ; preds = %if.else, %do.end42, %do.body36.if.end48_crit_edge
  %index.0 = phi i32 [ %phi.cast, %if.else ], [ 0, %do.end42 ], [ 0, %do.body36.if.end48_crit_edge ]
  %arrayidx49 = getelementptr [500 x [2 x i32]], ptr @tfrc_calc_x_lookup, i32 0, i32 %index.0, i32 1
  br label %scaled_div.exit

if.else50:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %div51 = udiv i32 %p, 2000
  %conv53 = add nuw nsw i32 %div51, 65535
  %idxprom54 = and i32 %conv53, 65535
  %arrayidx55 = getelementptr [500 x [2 x i32]], ptr @tfrc_calc_x_lookup, i32 0, i32 %idxprom54
  br label %scaled_div.exit

scaled_div.exit:                                  ; preds = %if.else50, %if.end48
  %f.0.in = phi ptr [ %arrayidx49, %if.end48 ], [ %arrayidx55, %if.else50 ]
  %1 = ptrtoint ptr %f.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %f.0 = load i32, ptr %f.0.in, align 4
  %conv58 = zext i16 %s to i64
  %conv59 = zext i32 %R to i64
  %mul.i = mul nuw nsw i64 %conv58, 1000000
  %call.i = tail call i64 @div64_u64(i64 noundef %mul.i, i64 noundef %conv59) #4
  %conv61 = zext i32 %f.0 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.0)
  %cmp.i.i = icmp eq i32 %f.0, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %scaled_div.exit.i, !prof !36

do.body2.i.i:                                     ; preds = %scaled_div.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/dccp/ccids/lib/tfrc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #4, !srcloc !39
  unreachable

scaled_div.exit.i:                                ; preds = %scaled_div.exit
  %mul.i.i = mul i64 %call.i, 1000000
  %call.i.i = tail call i64 @div64_u64(i64 noundef %mul.i.i, i64 noundef %conv61) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %call.i.i)
  %cmp.i73 = icmp ugt i64 %call.i.i, 4294967295
  br i1 %cmp.i73, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %scaled_div.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i64 noundef %call.i, i64 noundef %conv61, ptr noundef nonnull @.str.13, i32 noundef 39, ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end.i:                                         ; preds = %scaled_div.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = trunc i64 %call.i.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end.i, %do.end30
  %retval.0 = phi i32 [ -1, %do.end30 ], [ -1, %do.end.i ], [ %conv.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tfrc_calc_x_reverse_lookup(i32 noundef %fvalue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fvalue)
  %cmp = icmp eq i32 %fvalue, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8172, i32 %fvalue)
  %cmp1 = icmp ult i32 %fvalue, 8172
  br i1 %cmp1, label %do.body, label %if.end9

do.body:                                          ; preds = %if.end
  %call = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %fvalue) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 243315981, i32 %fvalue)
  %cmp10 = icmp ugt i32 %fvalue, 243315981
  br i1 %cmp10, label %do.body12, label %if.end24

do.body12:                                        ; preds = %if.end9
  %call13 = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %do.end18

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %fvalue) #7
  br label %cleanup

if.end24:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 271306, i32 %fvalue)
  %cmp25 = icmp ult i32 %fvalue, 271306
  br i1 %cmp25, label %if.end24.while.body.i_crit_edge, label %if.end24.while.body.i51_crit_edge

if.end24.while.body.i51_crit_edge:                ; preds = %if.end24
  br label %while.body.i51

if.end24.while.body.i_crit_edge:                  ; preds = %if.end24
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end24.while.body.i_crit_edge
  %high.011.i = phi i32 [ %high.1.i, %while.body.i.while.body.i_crit_edge ], [ 499, %if.end24.while.body.i_crit_edge ]
  %low.010.i = phi i32 [ %low.1.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end24.while.body.i_crit_edge ]
  %add.i = add i32 %low.010.i, %high.011.i
  %div9.i = lshr i32 %add.i, 1
  %arrayidx1.i = getelementptr [500 x [2 x i32]], ptr @tfrc_calc_x_lookup, i32 0, i32 %div9.i, i32 1
  %0 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %fvalue)
  %cmp2.not.i = icmp ult i32 %1, %fvalue
  %add3.i = add nuw i32 %div9.i, 1
  %low.1.i = select i1 %cmp2.not.i, i32 %add3.i, i32 %low.010.i
  %high.1.i = select i1 %cmp2.not.i, i32 %high.011.i, i32 %div9.i
  %cmp.i = icmp ult i32 %low.1.i, %high.1.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %tfrc_binsearch.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

tfrc_binsearch.exit:                              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %2 = mul i32 %high.1.i, 50000
  %mul = add i32 %2, 50000
  %div = sdiv i32 %mul, 500
  br label %cleanup

while.body.i51:                                   ; preds = %while.body.i51.while.body.i51_crit_edge, %if.end24.while.body.i51_crit_edge
  %high.011.i41 = phi i32 [ %high.1.i49, %while.body.i51.while.body.i51_crit_edge ], [ 499, %if.end24.while.body.i51_crit_edge ]
  %low.010.i42 = phi i32 [ %low.1.i48, %while.body.i51.while.body.i51_crit_edge ], [ 0, %if.end24.while.body.i51_crit_edge ]
  %add.i43 = add i32 %low.010.i42, %high.011.i41
  %div9.i44 = lshr i32 %add.i43, 1
  %arrayidx1.i45 = getelementptr [500 x [2 x i32]], ptr @tfrc_calc_x_lookup, i32 0, i32 %div9.i44, i32 0
  %3 = ptrtoint ptr %arrayidx1.i45 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1.i45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %fvalue)
  %cmp2.not.i46 = icmp ult i32 %4, %fvalue
  %add3.i47 = add nuw i32 %div9.i44, 1
  %low.1.i48 = select i1 %cmp2.not.i46, i32 %add3.i47, i32 %low.010.i42
  %high.1.i49 = select i1 %cmp2.not.i46, i32 %high.011.i41, i32 %div9.i44
  %cmp.i50 = icmp ult i32 %low.1.i48, %high.1.i49
  br i1 %cmp.i50, label %while.body.i51.while.body.i51_crit_edge, label %tfrc_binsearch.exit52

while.body.i51.while.body.i51_crit_edge:          ; preds = %while.body.i51
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i51

tfrc_binsearch.exit52:                            ; preds = %while.body.i51
  call void @__sanitizer_cov_trace_pc() #6
  %5 = mul i32 %high.1.i49, 1000000
  %mul31 = add i32 %5, 1000000
  %div32 = sdiv i32 %mul31, 500
  br label %cleanup

cleanup:                                          ; preds = %tfrc_binsearch.exit52, %tfrc_binsearch.exit, %do.end18, %do.body12.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %tfrc_binsearch.exit ], [ %div32, %tfrc_binsearch.exit52 ], [ 0, %entry.cleanup_crit_edge ], [ 100, %do.end ], [ 100, %do.body.cleanup_crit_edge ], [ 1000000, %do.end18 ], [ 1000000, %do.body12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tfrc_invert_loss_event_rate(i32 noundef %loss_event_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %loss_event_rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %loss_event_rate, label %if.end4 [
    i32 -1, label %entry.return_crit_edge
    i32 0, label %if.then3
  ], !prof !40

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i32 %loss_event_rate to i64
  %call.i = tail call i64 @div64_u64(i64 noundef 1000000, i64 noundef %conv) #4
  %conv5 = trunc i64 %call.i to i32
  %1 = tail call i32 @llvm.umax.i32(i32 %conv5, i32 100)
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1000000, %if.then3 ], [ %1, %if.end4 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !23, !24, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/dccp/ccids/lib/tfrc_equation.c", i32 623, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tfrc_calc_x._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tfrc_calc_x._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/dccp/ccids/lib/tfrc_equation.c", i32 629, i32 4}
!8 = !{ptr @tfrc_calc_x._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @tfrc_calc_x._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/dccp/ccids/lib/tfrc_equation.c", i32 671, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tfrc_calc_x_reverse_lookup._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @tfrc_calc_x_reverse_lookup._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/dccp/ccids/lib/tfrc_equation.c", i32 675, i32 3}
!17 = !{ptr @tfrc_calc_x_reverse_lookup._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @tfrc_calc_x_reverse_lookup._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @tfrc_calc_x_lookup, !20, !"tfrc_calc_x_lookup", i1 false, i1 false}
!20 = !{!"../net/dccp/ccids/lib/tfrc_equation.c", i32 87, i32 18}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/dccp/ccids/lib/tfrc.h", i32 38, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @scaled_div32._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @scaled_div32._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 2158660369, i64 2158660868, i64 2158660406, i64 2158660462, i64 2158660496, i64 2158660520, i64 2158660561, i64 2158660582, i64 2158660610, i64 2158660644}
!38 = !{i64 2158661982, i64 2158662481, i64 2158662019, i64 2158662075, i64 2158662109, i64 2158662133, i64 2158662174, i64 2158662195, i64 2158662223, i64 2158662257}
!39 = !{i64 2158656307, i64 2158656796, i64 2158656344, i64 2158656400, i64 2158656434, i64 2158656458, i64 2158656499, i64 2158656520, i64 2158656548, i64 2158656582}
!40 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
