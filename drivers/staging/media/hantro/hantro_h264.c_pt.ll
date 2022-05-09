; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/hantro_h264.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/hantro_h264.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hantro_ctx = type { ptr, %struct.v4l2_fh, i8, i32, i32, ptr, %struct.v4l2_pix_format_mplane, ptr, %struct.v4l2_pix_format_mplane, %struct.v4l2_ctrl_handler, i32, ptr, %struct.hantro_postproc_ctx, %union.anon.114 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hantro_postproc_ctx = type { [32 x %struct.hantro_aux_buf] }
%struct.hantro_aux_buf = type { ptr, i32, i32, i32 }
%union.anon.114 = type { %struct.hantro_vp9_dec_hw_ctx }
%struct.hantro_vp9_dec_hw_ctx = type { %struct.hantro_aux_buf, %struct.hantro_aux_buf, %struct.hantro_aux_buf, %struct.v4l2_vp9_frame_symbol_counts, %struct.v4l2_vp9_frame_context, [4 x %struct.v4l2_vp9_frame_context], %struct.hantro_vp9_frame_info, %struct.hantro_vp9_frame_info, i32, i32, i32, i32, [34 x i16], [64 x i16], i32, i32, i32, i32, i32, [8 x i8], [8 x [4 x i16]] }
%struct.v4l2_vp9_frame_symbol_counts = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [2 x [2 x [6 x [6 x ptr]]]]], [4 x [2 x [2 x [6 x [6 x [2 x ptr]]]]]] }
%struct.v4l2_vp9_frame_context = type { [2 x [1 x i8]], [2 x [2 x i8]], [2 x [3 x i8]], [4 x [2 x [2 x [6 x [6 x [3 x i8]]]]]], [3 x i8], [7 x [3 x i8]], [4 x [2 x i8]], [4 x i8], [5 x i8], [5 x [2 x i8]], [5 x i8], [4 x [9 x i8]], [10 x [9 x i8]], [16 x [3 x i8]], %struct.v4l2_vp9_frame_mv_context }
%struct.v4l2_vp9_frame_mv_context = type { [3 x i8], [2 x i8], [2 x [10 x i8]], [2 x i8], [2 x [10 x i8]], [2 x [2 x [3 x i8]]], [2 x [3 x i8]], [2 x i8], [2 x i8] }
%struct.hantro_vp9_frame_info = type { i16, i32, i64 }
%struct.v4l2_h264_dpb_entry = type { i64, i32, i16, i8, [5 x i8], i32, i32, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.v4l2_h264_reflist_builder = type { [16 x %struct.anon.121], i32, [16 x i8], i8 }
%struct.anon.121 = type { i32, i32, i32, i8 }
%struct.hantro_h264_dec_priv_tbl = type { [920 x i32], [34 x i32], [224 x i8] }
%struct.v4l2_ctrl_h264_decode_params = type { [16 x %struct.v4l2_h264_dpb_entry], i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_h264_pps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.v4l2_ctrl_h264_scaling_matrix = type { [6 x [16 x i8]], [6 x [64 x i8]] }
%struct.hantro_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.delayed_work }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/media/hantro/hantro_h264.c\00", [53 x i8] zeroinitializer }, align 32
@h264_cabac_table = internal constant { [920 x i32], [896 x i8] } { [920 x i32] [i32 351339062, i32 55186673, i32 37094218, i32 -461379224, i32 -97124554, i32 120782848, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2687039, i32 4128831, i32 -145554346, i32 6420808, i32 220791614, i32 721207, i32 4583295, i32 -211419054, i32 -112530581, i32 -444604033, i32 -394269089, i32 -444601486, i32 -494932101, i32 -193728390, i32 -176950209, i32 -29036204, i32 -211223226, i32 -128059814, i32 -494928054, i32 -94242469, i32 -327156680, i32 -78448308, i32 -360842915, i32 -178782899, i32 -79168449, i32 -62589868, i32 -113313471, i32 138216760, i32 -29228736, i32 4062798, i32 20055860, i32 170065964, i32 187040045, i32 3015980, i32 521208115, i32 120724499, i32 270601790, i32 -210964124, i32 -211422373, i32 -195103144, i32 -262867370, i32 -111938729, i32 -312606394, i32 4782922, i32 305920102, i32 -245104545, i32 -62193080, i32 -179569337, i32 254735173, i32 4063297, i32 354808136, i32 154734646, i32 4066376, i32 402657033, i32 135859474, i32 252251411, i32 170200082, i32 102568993, i32 253625389, i32 20578366, i32 121441318, i32 187502375, i32 187305260, i32 271387689, i32 170991138, i32 304745015, i32 288559406, i32 5839597, i32 384768751, i32 518462700, i32 568927717, i32 568928484, i32 653206005, i32 686893562, i32 637610257, i32 519707395, i32 437659120, i32 603727608, i32 654124291, i32 637872640, i32 588261142, i32 238033701, i32 356256836, i32 39976263, i32 -97846478, i32 -46727618, i32 3801407, i32 -28770486, i32 -144966845, i32 -82051801, i32 -30670802, i32 -264177596, i32 -162596275, i32 -162073508, i32 -247990724, i32 -96535487, i32 -196478900, i32 -112134312, i32 -277940895, i32 -329976497, i32 -95814582, i32 -212405408, i32 -178131595, i32 -129041631, i32 -63898059, i32 -46206137, i32 -162532266, i32 -212143519, i32 64093, i32 -95094705, i32 4390727, i32 4128316, i32 -29623477, i32 -46203846, i32 -146604209, i32 4653892, i32 170719550, i32 254021160, i32 270208029, i32 19665956, i32 304088362, i32 19925566, i32 288229696, i32 -194448031, i32 -262080168, i32 -128583339, i32 -145362088, i32 71499085, i32 -45286836, i32 171638604, i32 -11273885, i32 -228654497, i32 5045066, i32 4650315, i32 21233729, i32 -230096066, i32 71237444, i32 -213185737, i32 88083526, i32 252053011, i32 118492174, i32 302845195, i32 219090704, i32 202837271, i32 252972570, i32 237769000, i32 288299025, i32 353704214, i32 521868829, i32 321064498, i32 171509567, i32 -28443566, i32 -44168891, i32 -194173731, i32 618537190, i32 635579616, i32 586031857, i32 686891513, i32 603660544, i32 637673741, i32 388173114, i32 503126528, i32 371073017, i32 603005693, i32 570631423, i32 570761227, i32 587538956, i32 655040029, i32 572136743, i32 323100437, i32 522131762, i32 -277287824, i32 -294455979, i32 -245566887, i32 -431492783, i32 -229638076, i32 -230234056, i32 -381360078, i32 -179693581, i32 452143345, i32 837954563, i32 755379234, i32 557192018, i32 -45351145, i32 19005739, i32 3604023, i32 3998016, i32 4519772, i32 -227871903, i32 -245697446, i32 -296159671, i32 -145755562, i32 -162924986, i32 -163185854, i32 -146736326, i32 37426678, i32 418716920, i32 486481155, i32 487138068, i32 488902211, i32 351339062, i32 55186673, i32 37094218, i32 -461379224, i32 -97124554, i32 120788769, i32 386012416, i32 17367089, i32 -613022407, i32 -212929215, i32 20843569, i32 -62320334, i32 306186539, i32 486545987, i32 274336104, i32 -763368344, i32 21230414, i32 -180289218, i32 -94965921, i32 -96663251, i32 -45745583, i32 -178256329, i32 121895766, i32 39321658, i32 -45287842, i32 87426117, i32 -45023144, i32 -112985270, i32 -62194864, i32 -112721606, i32 2687039, i32 4128831, i32 -145554346, i32 6420808, i32 220791614, i32 3013710, i32 -43981442, i32 -463280283, i32 -381426606, i32 -329322413, i32 -361829541, i32 -295242915, i32 -478152356, i32 -77989536, i32 -210961106, i32 -12452039, i32 -144835254, i32 -144902057, i32 -377617098, i32 104597051, i32 105250608, i32 4521029, i32 -128385451, i32 -95486133, i32 -112393674, i32 87227716, i32 20055594, i32 -61800129, i32 -62521277, i32 37355084, i32 186844224, i32 20777763, i32 303631384, i32 220007716, i32 -161613495, i32 -28766930, i32 154270052, i32 154468917, i32 87424573, i32 3670072, i32 -213910724, i32 -12712903, i32 -96140231, i32 237438003, i32 222561088, i32 20777279, i32 120721447, i32 86770740, i32 187759420, i32 -12910533, i32 371262764, i32 237764430, i32 3934533, i32 186384936, i32 53215281, i32 3015212, i32 36896815, i32 69665342, i32 103678006, i32 53871162, i32 71239219, i32 104400693, i32 104072759, i32 187502116, i32 137756498, i32 121109838, i32 254678559, i32 -11265785, i32 519642115, i32 470032384, i32 587144710, i32 503717897, i32 521345563, i32 438183188, i32 471994694, i32 21169467, i32 155389982, i32 304091683, i32 371005471, i32 388370987, i32 338234175, i32 154863936, i32 -10551719, i32 -143852980, i32 -30670803, i32 3472704, i32 -29623226, i32 -62130094, i32 -278464691, i32 51904554, i32 3145783, i32 -96732857, i32 -195824297, i32 -495517382, i32 -48365788, i32 19268139, i32 -97058758, i32 4259146, i32 -161873850, i32 -65207009, i32 120193339, i32 -29688504, i32 -44960415, i32 3803141, i32 168693266, i32 219873832, i32 3865926, i32 -95422379, i32 62314, i32 -261425577, i32 -344789394, i32 -228398482, i32 -345313689, i32 -345249428, i32 -428804512, i32 -195036325, i32 -144840098, i32 -78247613, i32 -61802923, i32 -12187844, i32 154797373, i32 204607282, i32 305205558, i32 170460974, i32 -13433039, i32 137627945, i32 103744055, i32 220793388, i32 103941429, i32 221316159, i32 104922693, i32 -29686202, i32 170658079, i32 204145461, i32 237111846, i32 -46920408, i32 287311660, i32 119934258, i32 171514411, i32 235604750, i32 151720459, i32 352917502, i32 552673521, i32 585836521, i32 719268321, i32 786704116, i32 354233832, i32 903033062, i32 1104489453, i32 670440969, i32 303698971, i32 3797586, i32 -78910111, i32 -579003648, i32 469770236, i32 453386760, i32 503978006, i32 554898976, i32 438244649, i32 439097135, i32 272698951, i32 138151487, i32 289477912, i32 387193367, i32 455089175, i32 471340840, i32 404757533, i32 388633401, i32 372577853, i32 190188584, i32 187895355, i32 -61867705, i32 -79300794, i32 -129829308, i32 -313920443, i32 -263786173, i32 -331420346, i32 -264050111, i32 -331412994, i32 452403703, i32 670640638, i32 755183881, i32 756753467, i32 -96274141, i32 -114624467, i32 -80677832, i32 -96666818, i32 -129828788, i32 -78251439, i32 -162662063, i32 -279908791, i32 -62196141, i32 -146278589, i32 -12715966, i32 -230555589, i32 37426675, i32 569518073, i32 788411138, i32 1007041809, i32 924985918, i32 351339062, i32 55186673, i32 37094218, i32 -461379224, i32 -97124554, i32 120788505, i32 570429440, i32 -32963543, i32 -478805439, i32 -95947953, i32 87296306, i32 -45741514, i32 438440726, i32 671103234, i32 690231877, i32 -746589851, i32 -62064057, i32 -212925132, i32 105247578, i32 3409963, i32 -28968110, i32 -161480133, i32 38534487, i32 -43777736, i32 -45417899, i32 3931473, i32 -111740065, i32 -12386483, i32 21429846, i32 -79167427, i32 2687039, i32 4128831, i32 -145554346, i32 6420808, i32 220791614, i32 219088691, i32 38852991, i32 -295964832, i32 -430842526, i32 -395908767, i32 -445126557, i32 -345051546, i32 -595656624, i32 -77989538, i32 -61079513, i32 4321620, i32 -578814391, i32 -194447525, i32 -511769801, i32 121112375, i32 138280245, i32 4520266, i32 -145165465, i32 -212076711, i32 -228788148, i32 -195565202, i32 -395708850, i32 -328143005, i32 -1300252033, i32 -830483841, i32 -62719154, i32 -62392248, i32 37486391, i32 -112788917, i32 -128328073, i32 -45408236, i32 504812671, i32 3603261, i32 3866428, i32 -46270397, i32 -413863350, i32 -79624908, i32 37290045, i32 -146410170, i32 305658951, i32 3802941, i32 153686553, i32 153093419, i32 154075180, i32 3342894, i32 321322050, i32 254151722, i32 153223257, i32 70060572, i32 169812469, i32 886379023, i32 469771242, i32 652681728, i32 669917428, i32 1721892864, i32 955326972, i32 487204347, i32 870524919, i32 886982086, i32 1136733435, i32 537343971, i32 536936448, i32 455352807, i32 585245924, i32 652486373, i32 586032112, i32 586293496, i32 637149952, i32 503979026, i32 437853481, i32 4915784, i32 139267619, i32 304025891, i32 354292013, i32 338301485, i32 454692918, i32 121770040, i32 189336131, i32 -160110224, i32 -246941379, i32 3537730, i32 -179439792, i32 -145426857, i32 -562042011, i32 -47711435, i32 -113380021, i32 -246550693, i32 -412358801, i32 -461703860, i32 -164825548, i32 -163973318, i32 -263653051, i32 -62522550, i32 -145358270, i32 -148766432, i32 186582324, i32 -29884861, i32 4847705, i32 53741316, i32 168300808, i32 269681445, i32 -12715191, i32 -12125106, i32 60286, i32 -377688978, i32 -427890820, i32 -278272647, i32 -445255834, i32 -428481164, i32 -545589665, i32 -228263841, i32 -277879694, i32 -94765488, i32 -61671595, i32 -128843960, i32 88080707, i32 154665029, i32 21301061, i32 -112854461, i32 -263324096, i32 37616195, i32 -46136775, i32 -46006974, i32 4065587, i32 -12386745, i32 -28573882, i32 -146272708, i32 270860335, i32 304286501, i32 204016169, i32 36703273, i32 220790843, i32 53613352, i32 54661682, i32 335155962, i32 234887924, i32 535831015, i32 568993252, i32 669133538, i32 802565596, i32 836643311, i32 537478585, i32 1069630144, i32 1303787225, i32 886909430, i32 603990271, i32 504241178, i32 388303927, i32 188818911, i32 668739803, i32 652357343, i32 719464680, i32 836970228, i32 687220477, i32 788209428, i32 488511788, i32 204475185, i32 439162390, i32 387324693, i32 554965532, i32 504896290, i32 304748839, i32 305269830, i32 355864135, i32 189995296, i32 355538230, i32 -78251439, i32 -162662063, i32 -279908791, i32 -62196141, i32 -146278589, i32 -12715966, i32 -230555589, i32 37425654, i32 552807159, i32 838546688, i32 1073955850, i32 1109077817, i32 -79233000, i32 -14352854, i32 -30083271, i32 -96469951, i32 -62654126, i32 -44958388, i32 -112657842, i32 -196545980, i32 -45680052, i32 -79496386, i32 3800125, i32 -147062474, i32 37360118, i32 552807159, i32 838546688, i32 1073955850, i32 1109077817, i32 351339062, i32 55186673, i32 37094218, i32 -461379224, i32 -97124554, i32 120790288, i32 419433984, i32 -164364994, i32 -446490096, i32 -61478810, i32 87623225, i32 -280424903, i32 338170890, i32 486553088, i32 623512673, i32 -528487819, i32 -28640171, i32 -395967175, i32 -94506408, i32 -97778633, i32 -178654873, i32 -344714439, i32 339346516, i32 106955071, i32 -78253206, i32 88016459, i32 -44368027, i32 54000719, i32 -28576671, i32 -114163396, i32 2687039, i32 4128831, i32 -145554346, i32 6420808, i32 220791614, i32 119732056, i32 -327164801, i32 -279186849, i32 -413866154, i32 -195432613, i32 -511708596, i32 -295177382, i32 -612431024, i32 88867412, i32 89061943, i32 71168595, i32 -612369585, i32 -177670821, i32 -494993343, i32 -28377016, i32 -61015496, i32 54851655, i32 -211616682, i32 -195495086, i32 -45548477, i32 -129437607, i32 -146407621, i32 88212537, i32 -62390713, i32 37420874, i32 -64159931, i32 4127027, i32 -63964630, i32 -47580619, i32 139261774, i32 -179107532, i32 4455258, i32 21229896, i32 -78907312, i32 -346821824, i32 -216012992, i32 -480376501, i32 289405002, i32 -81527269, i32 224068417, i32 -112916403, i32 -163445954, i32 -45814703, i32 1966343, i32 -48764086, i32 272820604, i32 287649006, i32 853469823, i32 69664810, i32 119671581, i32 136250917, i32 120193832, i32 136383787, i32 220464175, i32 53936698, i32 104597548, i32 187436586, i32 120587320, i32 70520101, i32 154211130, i32 170921005, i32 4527137, i32 138355694, i32 568794365, i32 403315456, i32 586298580, i32 669520657, i32 521741341, i32 404824591, i32 504632905, i32 337777439, i32 455873296, i32 254021412, i32 354162965, i32 504635148, i32 454039594, i32 6098488, i32 255400486, i32 -394270605, i32 -363661506, i32 3473467, i32 -229248167, i32 -211880612, i32 -478155932, i32 -231082941, i32 -179833267, i32 -346689448, i32 -378998430, i32 -612370862, i32 -131008451, i32 -129828538, i32 -229902769, i32 -145492900, i32 -294847409, i32 -364515253, i32 -29753030, i32 -212928685, i32 -61738141, i32 -212731354, i32 -213976518, i32 -29626295, i32 -162729130, i32 -145492393, i32 60031, i32 -411048072, i32 -444600974, i32 -378149002, i32 -428480399, i32 -461971080, i32 -612567458, i32 -244910493, i32 -211104129, i32 -77852359, i32 -78187682, i32 -195297715, i32 4718409, i32 71366993, i32 88084281, i32 21168196, i32 -163380924, i32 5046848, i32 4520782, i32 121046331, i32 37817910, i32 254543164, i32 38207052, i32 -296350650, i32 88142918, i32 188155192, i32 4522561, i32 -95812298, i32 121043532, i32 -179110323, i32 -28501718, i32 301142263, i32 301210603, i32 635578840, i32 718745809, i32 669003480, i32 885862103, i32 886647789, i32 537607625, i32 953302734, i32 1371352556, i32 603855887, i32 570500865, i32 504435750, i32 304942902, i32 5186800, i32 636626415, i32 536945167, i32 487528473, i32 571875088, i32 588390172, i32 556344348, i32 456070462, i32 304026394, i32 605558807, i32 454039582, i32 521999913, i32 371855420, i32 255069756, i32 55505019, i32 355800632, i32 423433505, i32 322048317, i32 -45156278, i32 -146213304, i32 -297012153, i32 -180356282, i32 -280235448, i32 -263981003, i32 -230951116, i32 -180090370, i32 519446524, i32 570368263, i32 520889623, i32 522589248, i32 -146278107, i32 -131271375, i32 -164039621, i32 -130025661, i32 -96143793, i32 -45156278, i32 -146213304, i32 -297012153, i32 -180356282, i32 -280235448, i32 -263981003, i32 -230951116, i32 -180090370, i32 519446524, i32 570368263, i32 520889623, i32 522589248], [896 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 372, i32 6 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"h264_cabac_table\00", align 1
@___asan_gen_.5 = private constant [46 x i8] c"../drivers/staging/media/hantro/hantro_h264.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 38, i32 18 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @h264_cabac_table], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h264_cabac_table to i32), i32 3680, i32 4576, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_h264_get_ref_buf(ptr noundef %ctx, i32 noundef %dpb_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dpb1 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1
  %flags = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb1, i32 %dpb_idx, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.then4_crit_edge, label %if.end

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb1, i32 %dpb_idx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %call = tail call i32 @hantro_get_ref(ptr noundef %ctx, i64 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.if.then4_crit_edge, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %entry.if.then4_crit_edge
  %m2m_ctx.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i) #5
  %vpu_dst_fmt.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %6 = ptrtoint ptr %vpu_dst_fmt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vpu_dst_fmt.i, align 4
  %call.i = tail call zeroext i1 @hantro_needs_postproc(ptr noundef %ctx, ptr noundef %7) #5
  br i1 %call.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %postproc.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 12
  %index.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %dma.i = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc.i, i32 0, i32 %9, i32 1
  br label %hantro_get_dec_buf_addr.exit

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i14 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 0) #5
  br label %hantro_get_dec_buf_addr.exit

hantro_get_dec_buf_addr.exit:                     ; preds = %if.end.i, %if.then.i
  %retval.0.in.i = phi ptr [ %dma.i, %if.then.i ], [ %call.i.i14, %if.end.i ]
  %10 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %hantro_get_dec_buf_addr.exit, %if.end.if.end7_crit_edge
  %dma_addr.1 = phi i32 [ %call, %if.end.if.end7_crit_edge ], [ %retval.0.i, %hantro_get_dec_buf_addr.exit ]
  ret i32 %dma_addr.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_get_ref(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @hantro_h264_get_ref_nbr(ptr nocapture noundef readonly %ctx, i32 noundef %dpb_idx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dpb1 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1
  %flags = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %dpb1, i32 0, i32 %dpb_idx, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pic_num = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %dpb1, i32 0, i32 %dpb_idx, i32 1
  %2 = ptrtoint ptr %pic_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pic_num, align 8
  %conv = trunc i32 %3 to i16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %frame_num = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %dpb1, i32 0, i32 %dpb_idx, i32 2
  %4 = ptrtoint ptr %frame_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %frame_num, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %conv, %if.then5 ], [ %5, %if.end6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_h264_dec_prepare_run(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %new.i = alloca [1 x i32], align 4
  %used.i = alloca [1 x i32], align 4
  %reflist_builder = alloca %struct.v4l2_h264_reflist_builder, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls1 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %reflist_builder) #5
  %0 = call ptr @memset(ptr %reflist_builder, i32 255, i32 280)
  tail call void @hantro_start_prepare_run(ptr noundef %ctx) #5
  %call = tail call ptr @hantro_get_ctrl(ptr noundef %ctx, i32 noundef 10750212) #5
  %scaling = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 1, i32 0, i32 3
  %1 = ptrtoint ptr %scaling to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %scaling, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 372, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end25:                                         ; preds = %entry
  %call26 = tail call ptr @hantro_get_ctrl(ptr noundef %ctx, i32 noundef 10750215) #5
  %2 = ptrtoint ptr %ctrls1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call26, ptr %ctrls1, align 4
  %tobool29.not = icmp eq ptr %call26, null
  br i1 %tobool29.not, label %do.end47, label %if.end63, !prof !13

do.end47:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 377, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end63:                                         ; preds = %if.end25
  %call64 = tail call ptr @hantro_get_ctrl(ptr noundef %ctx, i32 noundef 10750210) #5
  %sps = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 1, i32 0, i32 4
  %3 = ptrtoint ptr %sps to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call64, ptr %sps, align 4
  %tobool67.not = icmp eq ptr %call64, null
  br i1 %tobool67.not, label %do.end85, label %if.end101, !prof !13

do.end85:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 382, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end101:                                        ; preds = %if.end63
  %call102 = tail call ptr @hantro_get_ctrl(ptr noundef %ctx, i32 noundef 10750211) #5
  %pps = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 1, i32 0, i32 5
  %4 = ptrtoint ptr %pps to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call102, ptr %pps, align 4
  %tobool105.not = icmp eq ptr %call102, null
  br i1 %tobool105.not, label %do.end123, label %if.end139, !prof !13

do.end123:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 387, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end139:                                        ; preds = %if.end101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new.i) #5
  %5 = ptrtoint ptr %new.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %new.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %used.i) #5
  %6 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %used.i, align 4
  %7 = ptrtoint ptr %ctrls1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrls1, align 8
  %dpb.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1
  %flags.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %10, -3
  store i32 %and.i, ptr %flags.i, align 4
  %flags.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 7
  %11 = ptrtoint ptr %flags.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.1.i, align 4
  %and.1.i = and i32 %12, -3
  store i32 %and.1.i, ptr %flags.1.i, align 4
  %flags.2.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 15
  %13 = ptrtoint ptr %flags.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.2.i, align 4
  %and.2.i = and i32 %14, -3
  store i32 %and.2.i, ptr %flags.2.i, align 4
  %flags.3.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %flags.3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.3.i, align 4
  %and.3.i = and i32 %16, -3
  store i32 %and.3.i, ptr %flags.3.i, align 4
  %flags.4.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %flags.4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.4.i, align 4
  %and.4.i = and i32 %18, -3
  store i32 %and.4.i, ptr %flags.4.i, align 4
  %flags.5.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 0, i32 2, i32 5
  %19 = ptrtoint ptr %flags.5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.5.i, align 4
  %and.5.i = and i32 %20, -3
  store i32 %and.5.i, ptr %flags.5.i, align 4
  %flags.6.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %flags.6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.6.i, align 4
  %and.6.i = and i32 %22, -3
  store i32 %and.6.i, ptr %flags.6.i, align 4
  %flags.7.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 0, i32 5, i32 3
  %23 = ptrtoint ptr %flags.7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.7.i, align 4
  %and.7.i = and i32 %24, -3
  store i32 %and.7.i, ptr %flags.7.i, align 4
  %flags.8.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %flags.8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.8.i, align 4
  %and.8.i = and i32 %26, -3
  store i32 %and.8.i, ptr %flags.8.i, align 4
  %flags.9.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 2, i32 1
  %27 = ptrtoint ptr %flags.9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.9.i, align 4
  %and.9.i = and i32 %28, -3
  store i32 %and.9.i, ptr %flags.9.i, align 4
  %flags.10.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 3, i32 3
  %29 = ptrtoint ptr %flags.10.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.10.i, align 4
  %and.10.i = and i32 %30, -3
  store i32 %and.10.i, ptr %flags.10.i, align 4
  %flags.11.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 4, i32 5
  %31 = ptrtoint ptr %flags.11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.11.i, align 4
  %and.11.i = and i32 %32, -3
  store i32 %and.11.i, ptr %flags.11.i, align 4
  %flags.12.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %flags.12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.12.i, align 4
  %and.12.i = and i32 %34, -3
  store i32 %and.12.i, ptr %flags.12.i, align 4
  %flags.13.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %flags.13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.13.i, align 4
  %and.13.i = and i32 %36, -3
  store i32 %and.13.i, ptr %flags.13.i, align 4
  %flags.14.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 2, i32 5
  %37 = ptrtoint ptr %flags.14.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.14.i, align 4
  %and.14.i = and i32 %38, -3
  store i32 %and.14.i, ptr %flags.14.i, align 4
  %flags.15.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %flags.15.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.15.i, align 4
  %and.15.i = and i32 %40, -3
  store i32 %and.15.i, ptr %flags.15.i, align 4
  br label %for.body3.i

for.body3.i:                                      ; preds = %cleanup28.i.for.body3.i_crit_edge, %if.end139
  %i.1124.i = phi i32 [ 0, %if.end139 ], [ %inc31.i, %cleanup28.i.for.body3.i_crit_edge ]
  %arrayidx5.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %8, i32 0, i32 %i.1124.i
  %flags6.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %8, i32 0, i32 %i.1124.i, i32 7
  %41 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags6.i, align 4
  %and7.i = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i, label %for.body3.i.cleanup28.i_crit_edge, label %if.end.i

for.body3.i.cleanup28.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup28.i

if.end.i:                                         ; preds = %for.body3.i
  %call.i = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %used.i, i32 noundef 16, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i)
  %cmp9121.i = icmp ult i32 %call.i, 16
  br i1 %cmp9121.i, label %for.body10.lr.ph.i, label %if.end.i.for.end23.i_crit_edge

if.end.i.for.end23.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end23.i

for.body10.lr.ph.i:                               ; preds = %if.end.i
  %top_field_order_cnt1.i.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %8, i32 0, i32 %i.1124.i, i32 5
  %bottom_field_order_cnt2.i.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %8, i32 0, i32 %i.1124.i, i32 6
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc20.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %j.0122.i = phi i32 [ %call.i, %for.body10.lr.ph.i ], [ %call22.i, %for.inc20.i.for.body10.i_crit_edge ]
  %flags13.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %dpb.i, i32 0, i32 %j.0122.i, i32 7
  %43 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags13.i, align 4
  %and14.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %lor.lhs.false.i, label %for.body10.i.for.inc20.i_crit_edge

for.body10.i.for.inc20.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc20.i

lor.lhs.false.i:                                  ; preds = %for.body10.i
  %top_field_order_cnt.i.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %dpb.i, i32 0, i32 %j.0122.i, i32 5
  %45 = ptrtoint ptr %top_field_order_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %top_field_order_cnt.i.i, align 4
  %47 = ptrtoint ptr %top_field_order_cnt1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %top_field_order_cnt1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp.i.i = icmp eq i32 %46, %48
  br i1 %cmp.i.i, label %dpb_entry_match.exit.i, label %lor.lhs.false.i.for.inc20.i_crit_edge

lor.lhs.false.i.for.inc20.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc20.i

dpb_entry_match.exit.i:                           ; preds = %lor.lhs.false.i
  %bottom_field_order_cnt.i.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %dpb.i, i32 0, i32 %j.0122.i, i32 6
  %49 = ptrtoint ptr %bottom_field_order_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bottom_field_order_cnt.i.i, align 8
  %51 = ptrtoint ptr %bottom_field_order_cnt2.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bottom_field_order_cnt2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp3.i.i = icmp eq i32 %50, %52
  br i1 %cmp3.i.i, label %for.end23.thread.i, label %dpb_entry_match.exit.i.for.inc20.i_crit_edge

dpb_entry_match.exit.i.for.inc20.i_crit_edge:     ; preds = %dpb_entry_match.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc20.i

for.end23.thread.i:                               ; preds = %dpb_entry_match.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx12.le.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %dpb.i, i32 0, i32 %j.0122.i
  %53 = call ptr @memcpy(ptr %arrayidx12.le.i, ptr %arrayidx5.i, i32 32)
  call void @_set_bit(i32 noundef %j.0122.i, ptr noundef nonnull %used.i) #5
  br label %cleanup28.i

for.inc20.i:                                      ; preds = %dpb_entry_match.exit.i.for.inc20.i_crit_edge, %lor.lhs.false.i.for.inc20.i_crit_edge, %for.body10.i.for.inc20.i_crit_edge
  %add.i = add nuw nsw i32 %j.0122.i, 1
  %call22.i = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %used.i, i32 noundef 16, i32 noundef %add.i) #5
  %cmp9.i = icmp ult i32 %call22.i, 16
  br i1 %cmp9.i, label %for.inc20.i.for.body10.i_crit_edge, label %for.inc20.i.for.end23.i_crit_edge

for.inc20.i.for.end23.i_crit_edge:                ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end23.i

for.inc20.i.for.body10.i_crit_edge:               ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10.i

for.end23.i:                                      ; preds = %for.inc20.i.for.end23.i_crit_edge, %if.end.i.for.end23.i_crit_edge
  %j.0.lcssa.i = phi i32 [ %call.i, %if.end.i.for.end23.i_crit_edge ], [ %call22.i, %for.inc20.i.for.end23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.0.lcssa.i)
  %cmp24.i = icmp eq i32 %j.0.lcssa.i, 16
  br i1 %cmp24.i, label %if.then25.i, label %for.end23.i.cleanup28.i_crit_edge

for.end23.i.cleanup28.i_crit_edge:                ; preds = %for.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup28.i

if.then25.i:                                      ; preds = %for.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @_set_bit(i32 noundef %i.1124.i, ptr noundef nonnull %new.i) #5
  br label %cleanup28.i

cleanup28.i:                                      ; preds = %if.then25.i, %for.end23.i.cleanup28.i_crit_edge, %for.end23.thread.i, %for.body3.i.cleanup28.i_crit_edge
  %inc31.i = add nuw nsw i32 %i.1124.i, 1
  %exitcond.not.i = icmp eq i32 %inc31.i, 16
  br i1 %exitcond.not.i, label %for.end32.i, label %cleanup28.i.for.body3.i_crit_edge

cleanup28.i.for.body3.i_crit_edge:                ; preds = %cleanup28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i

for.end32.i:                                      ; preds = %cleanup28.i
  %call34.i = call i32 @_find_next_bit_be(ptr noundef nonnull %new.i, i32 noundef 16, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call34.i)
  %cmp36127.i = icmp ult i32 %call34.i, 16
  br i1 %cmp36127.i, label %for.end32.i.for.body37.i_crit_edge, label %for.end32.i.update_dpb.exit_crit_edge

for.end32.i.update_dpb.exit_crit_edge:            ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %update_dpb.exit

for.end32.i.for.body37.i_crit_edge:               ; preds = %for.end32.i
  br label %for.body37.i

for.body37.i:                                     ; preds = %if.end68.i.for.body37.i_crit_edge, %for.end32.i.for.body37.i_crit_edge
  %i.2128.i = phi i32 [ %call79.i, %if.end68.i.for.body37.i_crit_edge ], [ %call34.i, %for.end32.i.for.body37.i_crit_edge ]
  %call43.i = call i32 @_find_first_zero_bit_be(ptr noundef nonnull %used.i, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call43.i)
  %cmp44.i = icmp ugt i32 %call43.i, 15
  br i1 %cmp44.i, label %do.end.i, label %if.end68.i, !prof !13

do.end.i:                                         ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 317, i32 noundef 9, ptr noundef null) #5
  br label %update_dpb.exit

if.end68.i:                                       ; preds = %for.body37.i
  %arrayidx40.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %8, i32 0, i32 %i.2128.i
  %arrayidx70.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %dpb.i, i32 0, i32 %call43.i
  %54 = call ptr @memcpy(ptr %arrayidx70.i, ptr %arrayidx40.i, i32 32)
  call void @_set_bit(i32 noundef %call43.i, ptr noundef nonnull %used.i) #5
  %add78.i = add nuw nsw i32 %i.2128.i, 1
  %call79.i = call i32 @_find_next_bit_be(ptr noundef nonnull %new.i, i32 noundef 16, i32 noundef %add78.i) #5
  %cmp36.i = icmp ult i32 %call79.i, 16
  br i1 %cmp36.i, label %if.end68.i.for.body37.i_crit_edge, label %if.end68.i.update_dpb.exit_crit_edge

if.end68.i.update_dpb.exit_crit_edge:             ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %update_dpb.exit

if.end68.i.for.body37.i_crit_edge:                ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body37.i

update_dpb.exit:                                  ; preds = %if.end68.i.update_dpb.exit_crit_edge, %do.end.i, %for.end32.i.update_dpb.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %used.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new.i) #5
  %55 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %56 = ptrtoint ptr %ctrls1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctrls1, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %update_dpb.exit
  %i.053.i = phi i32 [ 0, %update_dpb.exit ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %dpb_valid.052.i = phi i32 [ 0, %update_dpb.exit ], [ %dpb_valid.1.i, %for.body.i.for.body.i_crit_edge ]
  %dpb_longterm.051.i = phi i32 [ 0, %update_dpb.exit ], [ %dpb_longterm.1.i, %for.body.i.for.body.i_crit_edge ]
  %top_field_order_cnt.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb.i, i32 %i.053.i, i32 5
  %60 = ptrtoint ptr %top_field_order_cnt.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %top_field_order_cnt.i, align 4
  %mul.i = shl nuw i32 %i.053.i, 1
  %arrayidx3.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %59, i32 0, i32 1, i32 %mul.i
  %62 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx3.i, align 4
  %bottom_field_order_cnt.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb.i, i32 %i.053.i, i32 6
  %63 = ptrtoint ptr %bottom_field_order_cnt.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bottom_field_order_cnt.i, align 8
  %add.i173 = or i32 %mul.i, 1
  %arrayidx7.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %59, i32 0, i32 1, i32 %add.i173
  %65 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx7.i, align 4
  %flags.i174 = getelementptr %struct.v4l2_h264_dpb_entry, ptr %dpb.i, i32 %i.053.i, i32 7
  %66 = ptrtoint ptr %flags.i174 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i174, align 4
  %and.i175 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i175)
  %tobool.not.i176 = icmp eq i32 %and.i175, 0
  %sub.i = sub nuw nsw i32 15, %i.053.i
  %shl.i = shl nuw nsw i32 1, %sub.i
  %or.i = select i1 %tobool.not.i176, i32 0, i32 %shl.i
  %dpb_valid.1.i = or i32 %or.i, %dpb_valid.052.i
  %and11.i = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %or16.i = select i1 %tobool12.not.i, i32 0, i32 %shl.i
  %dpb_longterm.1.i = or i32 %or16.i, %dpb_longterm.051.i
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i177 = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i177, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %shl18.i = shl i32 %dpb_valid.1.i, 16
  %dpb_valid19.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 1, i32 1, i32 1
  %68 = ptrtoint ptr %dpb_valid19.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shl18.i, ptr %dpb_valid19.i, align 4
  %shl20.i = shl i32 %dpb_longterm.1.i, 16
  %dpb_longterm21.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 1, i32 1
  %69 = ptrtoint ptr %dpb_longterm21.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %shl20.i, ptr %dpb_longterm21.i, align 8
  %top_field_order_cnt22.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %57, i32 0, i32 3
  %70 = ptrtoint ptr %top_field_order_cnt22.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %top_field_order_cnt22.i, align 4
  %arrayidx24.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %59, i32 0, i32 1, i32 32
  %72 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx24.i, align 4
  %bottom_field_order_cnt25.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %57, i32 0, i32 4
  %73 = ptrtoint ptr %bottom_field_order_cnt25.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bottom_field_order_cnt25.i, align 8
  %arrayidx27.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %59, i32 0, i32 1, i32 33
  %75 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx27.i, align 4
  %76 = ptrtoint ptr %pps to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pps, align 4
  %flags.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %77, i32 0, i32 10
  %78 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %flags.i.i, align 2
  %80 = and i16 %79, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool.not.i.i = icmp eq i16 %80, 0
  br i1 %tobool.not.i.i, label %for.end.i.prepare_table.exit_crit_edge, label %if.end.i.i

for.end.i.prepare_table.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %prepare_table.exit

if.end.i.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %scaling to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %scaling, align 4
  %83 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %55, align 8
  %scaling_list.i.i = getelementptr inbounds %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %82, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86) #5
  %incdec.ptr.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 4
  %88 = ptrtoint ptr %scaling_list.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %scaling_list.i.i, align 4
  %arrayidx9.1.i.i = getelementptr i32, ptr %82, i32 1
  %89 = ptrtoint ptr %arrayidx9.1.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx9.1.i.i, align 4
  %91 = call i32 @llvm.bswap.i32(i32 %90) #5
  %incdec.ptr.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 8
  %92 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %incdec.ptr.i.i, align 4
  %arrayidx9.2.i.i = getelementptr i32, ptr %82, i32 2
  %93 = ptrtoint ptr %arrayidx9.2.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx9.2.i.i, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94) #5
  %incdec.ptr.2.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 12
  %96 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %incdec.ptr.1.i.i, align 4
  %arrayidx9.3.i.i = getelementptr i32, ptr %82, i32 3
  %97 = ptrtoint ptr %arrayidx9.3.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx9.3.i.i, align 4
  %99 = call i32 @llvm.bswap.i32(i32 %98) #5
  %incdec.ptr.3.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 16
  %100 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %incdec.ptr.2.i.i, align 4
  %arrayidx.1.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 1
  %101 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.1.i.i, align 4
  %103 = call i32 @llvm.bswap.i32(i32 %102) #5
  %incdec.ptr.163.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 20
  %104 = ptrtoint ptr %incdec.ptr.3.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %incdec.ptr.3.i.i, align 4
  %arrayidx9.1.1.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 1, i32 4
  %105 = ptrtoint ptr %arrayidx9.1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx9.1.1.i.i, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106) #5
  %incdec.ptr.1.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 24
  %108 = ptrtoint ptr %incdec.ptr.163.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %incdec.ptr.163.i.i, align 4
  %arrayidx9.2.1.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 1, i32 8
  %109 = ptrtoint ptr %arrayidx9.2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx9.2.1.i.i, align 4
  %111 = call i32 @llvm.bswap.i32(i32 %110) #5
  %incdec.ptr.2.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 28
  %112 = ptrtoint ptr %incdec.ptr.1.1.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %incdec.ptr.1.1.i.i, align 4
  %arrayidx9.3.1.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 1, i32 12
  %113 = ptrtoint ptr %arrayidx9.3.1.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx9.3.1.i.i, align 4
  %115 = call i32 @llvm.bswap.i32(i32 %114) #5
  %incdec.ptr.3.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 32
  %116 = ptrtoint ptr %incdec.ptr.2.1.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %incdec.ptr.2.1.i.i, align 4
  %arrayidx.2.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 2
  %117 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx.2.i.i, align 4
  %119 = call i32 @llvm.bswap.i32(i32 %118) #5
  %incdec.ptr.264.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 36
  %120 = ptrtoint ptr %incdec.ptr.3.1.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %incdec.ptr.3.1.i.i, align 4
  %arrayidx9.1.2.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 2, i32 4
  %121 = ptrtoint ptr %arrayidx9.1.2.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx9.1.2.i.i, align 4
  %123 = call i32 @llvm.bswap.i32(i32 %122) #5
  %incdec.ptr.1.2.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 40
  %124 = ptrtoint ptr %incdec.ptr.264.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %incdec.ptr.264.i.i, align 4
  %arrayidx9.2.2.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 2, i32 8
  %125 = ptrtoint ptr %arrayidx9.2.2.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx9.2.2.i.i, align 4
  %127 = call i32 @llvm.bswap.i32(i32 %126) #5
  %incdec.ptr.2.2.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 44
  %128 = ptrtoint ptr %incdec.ptr.1.2.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %incdec.ptr.1.2.i.i, align 4
  %arrayidx9.3.2.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 2, i32 12
  %129 = ptrtoint ptr %arrayidx9.3.2.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx9.3.2.i.i, align 4
  %131 = call i32 @llvm.bswap.i32(i32 %130) #5
  %incdec.ptr.3.2.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 48
  %132 = ptrtoint ptr %incdec.ptr.2.2.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %incdec.ptr.2.2.i.i, align 4
  %arrayidx.3.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 3
  %133 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx.3.i.i, align 4
  %135 = call i32 @llvm.bswap.i32(i32 %134) #5
  %incdec.ptr.365.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 52
  %136 = ptrtoint ptr %incdec.ptr.3.2.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %incdec.ptr.3.2.i.i, align 4
  %arrayidx9.1.3.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 3, i32 4
  %137 = ptrtoint ptr %arrayidx9.1.3.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx9.1.3.i.i, align 4
  %139 = call i32 @llvm.bswap.i32(i32 %138) #5
  %incdec.ptr.1.3.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 56
  %140 = ptrtoint ptr %incdec.ptr.365.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %incdec.ptr.365.i.i, align 4
  %arrayidx9.2.3.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 3, i32 8
  %141 = ptrtoint ptr %arrayidx9.2.3.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx9.2.3.i.i, align 4
  %143 = call i32 @llvm.bswap.i32(i32 %142) #5
  %incdec.ptr.2.3.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 60
  %144 = ptrtoint ptr %incdec.ptr.1.3.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %incdec.ptr.1.3.i.i, align 4
  %arrayidx9.3.3.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 3, i32 12
  %145 = ptrtoint ptr %arrayidx9.3.3.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx9.3.3.i.i, align 4
  %147 = call i32 @llvm.bswap.i32(i32 %146) #5
  %incdec.ptr.3.3.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 64
  %148 = ptrtoint ptr %incdec.ptr.2.3.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %incdec.ptr.2.3.i.i, align 4
  %arrayidx.4.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 4
  %149 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx.4.i.i, align 4
  %151 = call i32 @llvm.bswap.i32(i32 %150) #5
  %incdec.ptr.4.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 68
  %152 = ptrtoint ptr %incdec.ptr.3.3.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %incdec.ptr.3.3.i.i, align 4
  %arrayidx9.1.4.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 4, i32 4
  %153 = ptrtoint ptr %arrayidx9.1.4.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx9.1.4.i.i, align 4
  %155 = call i32 @llvm.bswap.i32(i32 %154) #5
  %incdec.ptr.1.4.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 72
  %156 = ptrtoint ptr %incdec.ptr.4.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %incdec.ptr.4.i.i, align 4
  %arrayidx9.2.4.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 4, i32 8
  %157 = ptrtoint ptr %arrayidx9.2.4.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx9.2.4.i.i, align 4
  %159 = call i32 @llvm.bswap.i32(i32 %158) #5
  %incdec.ptr.2.4.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 76
  %160 = ptrtoint ptr %incdec.ptr.1.4.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %incdec.ptr.1.4.i.i, align 4
  %arrayidx9.3.4.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 4, i32 12
  %161 = ptrtoint ptr %arrayidx9.3.4.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx9.3.4.i.i, align 4
  %163 = call i32 @llvm.bswap.i32(i32 %162) #5
  %incdec.ptr.3.4.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 80
  %164 = ptrtoint ptr %incdec.ptr.2.4.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %incdec.ptr.2.4.i.i, align 4
  %arrayidx.5.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 5
  %165 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx.5.i.i, align 4
  %167 = call i32 @llvm.bswap.i32(i32 %166) #5
  %incdec.ptr.5.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 84
  %168 = ptrtoint ptr %incdec.ptr.3.4.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %incdec.ptr.3.4.i.i, align 4
  %arrayidx9.1.5.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 5, i32 4
  %169 = ptrtoint ptr %arrayidx9.1.5.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx9.1.5.i.i, align 4
  %171 = call i32 @llvm.bswap.i32(i32 %170) #5
  %incdec.ptr.1.5.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 88
  %172 = ptrtoint ptr %incdec.ptr.5.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %incdec.ptr.5.i.i, align 4
  %arrayidx9.2.5.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 5, i32 8
  %173 = ptrtoint ptr %arrayidx9.2.5.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx9.2.5.i.i, align 4
  %175 = call i32 @llvm.bswap.i32(i32 %174) #5
  %incdec.ptr.2.5.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 92
  %176 = ptrtoint ptr %incdec.ptr.1.5.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %incdec.ptr.1.5.i.i, align 4
  %arrayidx9.3.5.i.i = getelementptr [6 x [16 x i8]], ptr %82, i32 0, i32 5, i32 12
  %177 = ptrtoint ptr %arrayidx9.3.5.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx9.3.5.i.i, align 4
  %179 = call i32 @llvm.bswap.i32(i32 %178) #5
  %incdec.ptr.3.5.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 96
  %180 = ptrtoint ptr %incdec.ptr.2.5.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %incdec.ptr.2.5.i.i, align 4
  %arrayidx17.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 0
  %181 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx17.i.i, align 4
  %183 = call i32 @llvm.bswap.i32(i32 %182) #5
  %incdec.ptr23.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 100
  %184 = ptrtoint ptr %incdec.ptr.3.5.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %incdec.ptr.3.5.i.i, align 4
  %arrayidx22.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 0, i32 4
  %185 = ptrtoint ptr %arrayidx22.1.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx22.1.i.i, align 4
  %187 = call i32 @llvm.bswap.i32(i32 %186) #5
  %incdec.ptr23.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 104
  %188 = ptrtoint ptr %incdec.ptr23.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %incdec.ptr23.i.i, align 4
  %arrayidx22.2.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 0, i32 8
  %189 = ptrtoint ptr %arrayidx22.2.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx22.2.i.i, align 4
  %191 = call i32 @llvm.bswap.i32(i32 %190) #5
  %incdec.ptr23.2.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 108
  %192 = ptrtoint ptr %incdec.ptr23.1.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %incdec.ptr23.1.i.i, align 4
  %arrayidx22.3.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 0, i32 12
  %193 = ptrtoint ptr %arrayidx22.3.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx22.3.i.i, align 4
  %195 = call i32 @llvm.bswap.i32(i32 %194) #5
  %incdec.ptr23.3.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 112
  %196 = ptrtoint ptr %incdec.ptr23.2.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %incdec.ptr23.2.i.i, align 4
  %arrayidx22.4.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 0, i32 16
  %197 = ptrtoint ptr %arrayidx22.4.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx22.4.i.i, align 4
  %199 = call i32 @llvm.bswap.i32(i32 %198) #5
  %incdec.ptr23.4.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 116
  %200 = ptrtoint ptr %incdec.ptr23.3.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %incdec.ptr23.3.i.i, align 4
  %arrayidx22.5.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 0, i32 20
  %201 = ptrtoint ptr %arrayidx22.5.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx22.5.i.i, align 4
  %203 = call i32 @llvm.bswap.i32(i32 %202) #5
  %incdec.ptr23.5.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 120
  %204 = ptrtoint ptr %incdec.ptr23.4.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %incdec.ptr23.4.i.i, align 4
  %arrayidx22.6.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 0, i32 24
  %205 = ptrtoint ptr %arrayidx22.6.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx22.6.i.i, align 4
  %207 = call i32 @llvm.bswap.i32(i32 %206) #5
  %incdec.ptr23.6.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 124
  %208 = ptrtoint ptr %incdec.ptr23.5.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %incdec.ptr23.5.i.i, align 4
  %arrayidx22.7.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 0, i32 28
  %209 = ptrtoint ptr %arrayidx22.7.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx22.7.i.i, align 4
  %211 = call i32 @llvm.bswap.i32(i32 %210) #5
  %incdec.ptr23.7.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 128
  %212 = ptrtoint ptr %incdec.ptr23.6.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %incdec.ptr23.6.i.i, align 4
  %arrayidx22.8.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 0, i32 32
  %213 = ptrtoint ptr %arrayidx22.8.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx22.8.i.i, align 4
  %215 = call i32 @llvm.bswap.i32(i32 %214) #5
  %incdec.ptr23.8.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 132
  %216 = ptrtoint ptr %incdec.ptr23.7.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %incdec.ptr23.7.i.i, align 4
  %arrayidx22.9.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 0, i32 36
  %217 = ptrtoint ptr %arrayidx22.9.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx22.9.i.i, align 4
  %219 = call i32 @llvm.bswap.i32(i32 %218) #5
  %incdec.ptr23.9.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 136
  %220 = ptrtoint ptr %incdec.ptr23.8.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %incdec.ptr23.8.i.i, align 4
  %arrayidx22.10.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 0, i32 40
  %221 = ptrtoint ptr %arrayidx22.10.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx22.10.i.i, align 4
  %223 = call i32 @llvm.bswap.i32(i32 %222) #5
  %incdec.ptr23.10.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 140
  %224 = ptrtoint ptr %incdec.ptr23.9.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %incdec.ptr23.9.i.i, align 4
  %arrayidx22.11.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 0, i32 44
  %225 = ptrtoint ptr %arrayidx22.11.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx22.11.i.i, align 4
  %227 = call i32 @llvm.bswap.i32(i32 %226) #5
  %incdec.ptr23.11.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 144
  %228 = ptrtoint ptr %incdec.ptr23.10.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %incdec.ptr23.10.i.i, align 4
  %arrayidx22.12.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 0, i32 48
  %229 = ptrtoint ptr %arrayidx22.12.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx22.12.i.i, align 4
  %231 = call i32 @llvm.bswap.i32(i32 %230) #5
  %incdec.ptr23.12.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 148
  %232 = ptrtoint ptr %incdec.ptr23.11.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %incdec.ptr23.11.i.i, align 4
  %arrayidx22.13.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 0, i32 52
  %233 = ptrtoint ptr %arrayidx22.13.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx22.13.i.i, align 4
  %235 = call i32 @llvm.bswap.i32(i32 %234) #5
  %incdec.ptr23.13.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 152
  %236 = ptrtoint ptr %incdec.ptr23.12.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %incdec.ptr23.12.i.i, align 4
  %arrayidx22.14.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 0, i32 56
  %237 = ptrtoint ptr %arrayidx22.14.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx22.14.i.i, align 4
  %239 = call i32 @llvm.bswap.i32(i32 %238) #5
  %incdec.ptr23.14.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 156
  %240 = ptrtoint ptr %incdec.ptr23.13.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %incdec.ptr23.13.i.i, align 4
  %arrayidx22.15.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 0, i32 60
  %241 = ptrtoint ptr %arrayidx22.15.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx22.15.i.i, align 4
  %243 = call i32 @llvm.bswap.i32(i32 %242) #5
  %incdec.ptr23.15.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 160
  %244 = ptrtoint ptr %incdec.ptr23.14.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %243, ptr %incdec.ptr23.14.i.i, align 4
  %arrayidx17.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 1
  %245 = ptrtoint ptr %arrayidx17.1.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx17.1.i.i, align 4
  %247 = call i32 @llvm.bswap.i32(i32 %246) #5
  %incdec.ptr23.166.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 164
  %248 = ptrtoint ptr %incdec.ptr23.15.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %incdec.ptr23.15.i.i, align 4
  %arrayidx22.1.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 1, i32 4
  %249 = ptrtoint ptr %arrayidx22.1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx22.1.1.i.i, align 4
  %251 = call i32 @llvm.bswap.i32(i32 %250) #5
  %incdec.ptr23.1.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 168
  %252 = ptrtoint ptr %incdec.ptr23.166.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %incdec.ptr23.166.i.i, align 4
  %arrayidx22.2.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 1, i32 8
  %253 = ptrtoint ptr %arrayidx22.2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx22.2.1.i.i, align 4
  %255 = call i32 @llvm.bswap.i32(i32 %254) #5
  %incdec.ptr23.2.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 172
  %256 = ptrtoint ptr %incdec.ptr23.1.1.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %incdec.ptr23.1.1.i.i, align 4
  %arrayidx22.3.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 1, i32 12
  %257 = ptrtoint ptr %arrayidx22.3.1.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx22.3.1.i.i, align 4
  %259 = call i32 @llvm.bswap.i32(i32 %258) #5
  %incdec.ptr23.3.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 176
  %260 = ptrtoint ptr %incdec.ptr23.2.1.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %259, ptr %incdec.ptr23.2.1.i.i, align 4
  %arrayidx22.4.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 1, i32 16
  %261 = ptrtoint ptr %arrayidx22.4.1.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx22.4.1.i.i, align 4
  %263 = call i32 @llvm.bswap.i32(i32 %262) #5
  %incdec.ptr23.4.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 180
  %264 = ptrtoint ptr %incdec.ptr23.3.1.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %263, ptr %incdec.ptr23.3.1.i.i, align 4
  %arrayidx22.5.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 1, i32 20
  %265 = ptrtoint ptr %arrayidx22.5.1.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx22.5.1.i.i, align 4
  %267 = call i32 @llvm.bswap.i32(i32 %266) #5
  %incdec.ptr23.5.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 184
  %268 = ptrtoint ptr %incdec.ptr23.4.1.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %incdec.ptr23.4.1.i.i, align 4
  %arrayidx22.6.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 1, i32 24
  %269 = ptrtoint ptr %arrayidx22.6.1.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %arrayidx22.6.1.i.i, align 4
  %271 = call i32 @llvm.bswap.i32(i32 %270) #5
  %incdec.ptr23.6.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 188
  %272 = ptrtoint ptr %incdec.ptr23.5.1.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %271, ptr %incdec.ptr23.5.1.i.i, align 4
  %arrayidx22.7.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 1, i32 28
  %273 = ptrtoint ptr %arrayidx22.7.1.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %arrayidx22.7.1.i.i, align 4
  %275 = call i32 @llvm.bswap.i32(i32 %274) #5
  %incdec.ptr23.7.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 192
  %276 = ptrtoint ptr %incdec.ptr23.6.1.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %275, ptr %incdec.ptr23.6.1.i.i, align 4
  %arrayidx22.8.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 1, i32 32
  %277 = ptrtoint ptr %arrayidx22.8.1.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %arrayidx22.8.1.i.i, align 4
  %279 = call i32 @llvm.bswap.i32(i32 %278) #5
  %incdec.ptr23.8.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 196
  %280 = ptrtoint ptr %incdec.ptr23.7.1.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %279, ptr %incdec.ptr23.7.1.i.i, align 4
  %arrayidx22.9.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 1, i32 36
  %281 = ptrtoint ptr %arrayidx22.9.1.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %arrayidx22.9.1.i.i, align 4
  %283 = call i32 @llvm.bswap.i32(i32 %282) #5
  %incdec.ptr23.9.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 200
  %284 = ptrtoint ptr %incdec.ptr23.8.1.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %283, ptr %incdec.ptr23.8.1.i.i, align 4
  %arrayidx22.10.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 1, i32 40
  %285 = ptrtoint ptr %arrayidx22.10.1.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %arrayidx22.10.1.i.i, align 4
  %287 = call i32 @llvm.bswap.i32(i32 %286) #5
  %incdec.ptr23.10.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 204
  %288 = ptrtoint ptr %incdec.ptr23.9.1.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %287, ptr %incdec.ptr23.9.1.i.i, align 4
  %arrayidx22.11.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 1, i32 44
  %289 = ptrtoint ptr %arrayidx22.11.1.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx22.11.1.i.i, align 4
  %291 = call i32 @llvm.bswap.i32(i32 %290) #5
  %incdec.ptr23.11.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 208
  %292 = ptrtoint ptr %incdec.ptr23.10.1.i.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %291, ptr %incdec.ptr23.10.1.i.i, align 4
  %arrayidx22.12.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 1, i32 48
  %293 = ptrtoint ptr %arrayidx22.12.1.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %arrayidx22.12.1.i.i, align 4
  %295 = call i32 @llvm.bswap.i32(i32 %294) #5
  %incdec.ptr23.12.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 212
  %296 = ptrtoint ptr %incdec.ptr23.11.1.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %295, ptr %incdec.ptr23.11.1.i.i, align 4
  %arrayidx22.13.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 1, i32 52
  %297 = ptrtoint ptr %arrayidx22.13.1.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %arrayidx22.13.1.i.i, align 4
  %299 = call i32 @llvm.bswap.i32(i32 %298) #5
  %incdec.ptr23.13.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 216
  %300 = ptrtoint ptr %incdec.ptr23.12.1.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %299, ptr %incdec.ptr23.12.1.i.i, align 4
  %arrayidx22.14.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 1, i32 56
  %301 = ptrtoint ptr %arrayidx22.14.1.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx22.14.1.i.i, align 4
  %303 = call i32 @llvm.bswap.i32(i32 %302) #5
  %incdec.ptr23.14.1.i.i = getelementptr %struct.hantro_h264_dec_priv_tbl, ptr %84, i32 0, i32 2, i32 220
  %304 = ptrtoint ptr %incdec.ptr23.13.1.i.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %303, ptr %incdec.ptr23.13.1.i.i, align 4
  %arrayidx22.15.1.i.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %82, i32 0, i32 1, i32 1, i32 60
  %305 = ptrtoint ptr %arrayidx22.15.1.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx22.15.1.i.i, align 4
  %307 = call i32 @llvm.bswap.i32(i32 %306) #5
  %308 = ptrtoint ptr %incdec.ptr23.14.1.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %307, ptr %incdec.ptr23.14.1.i.i, align 4
  br label %prepare_table.exit

prepare_table.exit:                               ; preds = %if.end.i.i, %for.end.i.prepare_table.exit_crit_edge
  %309 = ptrtoint ptr %ctrls1 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %ctrls1, align 4
  %311 = ptrtoint ptr %sps to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %sps, align 4
  call void @v4l2_h264_init_reflist_builder(ptr noundef nonnull %reflist_builder, ptr noundef %310, ptr noundef %312, ptr noundef %dpb.i) #5
  %reflists = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 4, i32 2
  call void @v4l2_h264_build_p_ref_list(ptr noundef nonnull %reflist_builder, ptr noundef %reflists) #5
  %b0 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 5
  %b1 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 5, i32 4
  call void @v4l2_h264_build_b_ref_lists(ptr noundef nonnull %reflist_builder, ptr noundef %b0, ptr noundef %b1) #5
  br label %cleanup

cleanup:                                          ; preds = %prepare_table.exit, %do.end123, %do.end85, %do.end47, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end47 ], [ -22, %do.end85 ], [ -22, %do.end123 ], [ 0, %prepare_table.exit ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %reflist_builder) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_start_prepare_run(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hantro_get_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_h264_init_reflist_builder(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_h264_build_p_ref_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_h264_build_b_ref_lists(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_h264_dec_exit(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %2 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %dev2 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  %size = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %dma = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %4, i32 noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_h264_dec_init(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %2 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %dev2 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  %dma = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef 4040, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #5
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %2, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %size = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4040, ptr %size, align 4
  %7 = call ptr @memcpy(ptr %call.i, ptr @h264_cabac_table, i32 3680)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hantro_needs_postproc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/hantro_h264.c", i32 372, i32 6}
!2 = !{ptr @h264_cabac_table, !3, !"h264_cabac_table", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/hantro/hantro_h264.c", i32 38, i32 18}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 1, i32 2000}
