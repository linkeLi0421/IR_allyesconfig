; ModuleID = '/llk/IR_all_yes/sound/pci/mixart/mixart_mixer.c_pt.bc'
source_filename = "../sound/pci/mixart/mixart_mixer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.mixart_msg = type { i32, %struct.mixart_uid, ptr, i32 }
%struct.mixart_uid = type { i32, i32 }
%struct.mixart_set_out_stream_level_req = type <{ i32, i64, [2 x i32], i32, %struct.mixart_set_out_stream_level }>
%struct.mixart_set_out_stream_level = type { %struct.mixart_txx_stream_desc, %struct.mixart_out_stream_level_info }
%struct.mixart_txx_stream_desc = type { %struct.mixart_uid, i32, i32, [4 x %struct.mixart_fx_couple_uid] }
%struct.mixart_fx_couple_uid = type { %struct.mixart_uid, %struct.mixart_uid }
%struct.mixart_out_stream_level_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_mixart = type { ptr, ptr, i32, ptr, ptr, ptr, %struct.mixart_pipe, %struct.mixart_pipe, %struct.mixart_pipe, %struct.mixart_pipe, [2 x [4 x %struct.mixart_stream]], [2 x %struct.mixart_stream], %struct.mixart_uid, %struct.mixart_uid, [2 x i32], [2 x i32], [2 x i32], [8 x [2 x i32]], [8 x [2 x i32]], [2 x [2 x i32]], [2 x i32], [2 x i32] }
%struct.mixart_pipe = type { %struct.mixart_uid, i32, %struct.mixart_uid, %struct.mixart_uid, i32, i32, i32 }
%struct.mixart_stream = type { ptr, ptr, i32, i32, i64, i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mixart_set_in_audio_level_req = type <{ i32, i64, i32, i32, [2 x %struct.mixart_in_audio_level_info] }>
%struct.mixart_in_audio_level_info = type { %struct.mixart_uid, i32, i32, i32, i32 }
%struct.mixart_mgr = type { i32, [4 x ptr], ptr, i32, [2 x %struct.mem_area], i32, %struct.wait_queue_head, [16 x i32], i32, i32, %struct.atomic_t, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.mixart_uid, i32, i32, %struct.mutex }
%struct.mem_area = type { i32, ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.68, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.68 = type { %struct.anon.71, [40 x i8] }
%struct.anon.71 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }
%struct.mixart_io_level = type { i32, [2 x %struct.mixart_io_channel_level] }
%struct.mixart_io_channel_level = type { i32, [2 x i32] }
%struct.mixart_return_uid = type { i32, %struct.mixart_uid }
%struct.mixart_set_out_audio_level = type <{ i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>

@mixart_digital_level = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 0, i32 913185914, i32 914110560, i32 914724133, i32 915242868, i32 915792340, i32 916374370, i32 916990888, i32 917643936, i32 918335681, i32 919068413, i32 919844563, i32 920666702, i32 921537556, i32 922460012, i32 923092003, i32 923609509, i32 924157680, i32 924738331, i32 925353388, i32 926004890, i32 926694995, i32 927425992, i32 928200303, i32 929020495, i32 929889287, i32 930809557, i32 931459922, i32 931976203, i32 932523074, i32 933102350, i32 933715951, i32 934365909, i32 935054380, i32 935783645, i32 936556122, i32 937374371, i32 938241104, i32 939159195, i32 939827891, i32 940342948, i32 940888524, i32 941466428, i32 942078575, i32 942726993, i32 943413833, i32 944141371, i32 944912018, i32 945728328, i32 946593009, i32 947508924, i32 948195908, i32 948709745, i32 949254029, i32 949830564, i32 950441260, i32 951088143, i32 951773356, i32 952499170, i32 953267991, i32 954082368, i32 954945000, i32 955858746, i32 956563974, i32 957076594, i32 957619588, i32 958194757, i32 958804007, i32 959449357, i32 960132947, i32 960857042, i32 961624042, i32 962436490, i32 963297079, i32 964208660, i32 964932088, i32 965443494, i32 965985202, i32 966559009, i32 967166815, i32 967810637, i32 968492607, i32 969214987, i32 969980170, i32 970790694, i32 971649243, i32 972558665, i32 973300251, i32 973810445, i32 974350870, i32 974923318, i32 975529685, i32 976171981, i32 976852336, i32 977573004, i32 978336375, i32 979144978, i32 980001495, i32 980908762, i32 981668463, i32 982177448, i32 982716593, i32 983287684, i32 983892615, i32 984533390, i32 985212133, i32 985931094, i32 986692657, i32 987499345, i32 988353832, i32 989258950, i32 990036722, i32 990544502, i32 991082370, i32 991652109, i32 992255606, i32 992894863, i32 993571999, i32 994289257, i32 995049015, i32 995853792, i32 996706255, i32 997609230, i32 998405030, i32 998911607, i32 999448201, i32 1000016590, i32 1000618658, i32 1001256401, i32 1001931932, i32 1002647491, i32 1003405450, i32 1004208320, i32 1005058764, i32 1005959600, i32 1006773386, i32 1007278764, i32 1007814086, i32 1008381128, i32 1008981770, i32 1009618002, i32 1010291933, i32 1011005797, i32 1011761961, i32 1012562929, i32 1013411358, i32 1014310060, i32 1015141791, i32 1015645970, i32 1016180025, i32 1016745724, i32 1017344943, i32 1017979668, i32 1018652003, i32 1019364176, i32 1020118548, i32 1020917619, i32 1021764038, i32 1022660611, i32 1023510242, i32 1024013228, i32 1024546017, i32 1025110377, i32 1025708176, i32 1026341397, i32 1027012139, i32 1027722625, i32 1028475210, i32 1029272389, i32 1030116803, i32 1031011252, i32 1031878742, i32 1032380536, i32 1032912063, i32 1033475086, i32 1034071469, i32 1034703190, i32 1035372344, i32 1036081147, i32 1036831949, i32 1037627239, i32 1038469653, i32 1039361983, i32 1040247289, i32 1040747895, i32 1041278163, i32 1041839852, i32 1042434822, i32 1043065047, i32 1043732615, i32 1044439739, i32 1045188763, i32 1045982169, i32 1046822587, i32 1047712804, i32 1048615884, i32 1049115304, i32 1049644316, i32 1050204674, i32 1050798235, i32 1051426967, i32 1052092954, i32 1052798403, i32 1053545652, i32 1054337179, i32 1055175606, i32 1056063714, i32 1056984526, i32 1057482763, i32 1058010522, i32 1058569552, i32 1059161708, i32 1059788950, i32 1060453359, i32 1061157137, i32 1061902616, i32 1062692268, i32 1063528709, i32 1064414713, i32 1065353216, i32 1065850272, i32 1066376781, i32 1066934487, i32 1067525240, i32 1068150997, i32 1068813832, i32 1069515942, i32 1070259656, i32 1071047437, i32 1071881897, i32 1072765802, i32 1073702081, i32 1074217832, i32 1074743093, i32 1075299478, i32 1075888831, i32 1076513106, i32 1077174371, i32 1077874818, i32 1078616770, i32 1079402685, i32 1080235168, i32 1081116979, i32 1082051041, i32 1082585441, i32 1083109458, i32 1083664525, i32 1084252482, i32 1084875278, i32 1085534976, i32 1086233765, i32 1086973959, i32 1087758012, i32 1088588523, i32 1089468245, i32 1090400094], [256 x i8] zeroinitializer }, align 32
@mixart_update_playback_stream_level.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_mixart\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mixart_update_playback_stream_level\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/pci/mixart/mixart_mixer.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"error MSG_STREAM_SET_OUT_STREAM_LEVEL card(%d) status(%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@mixart_update_capture_stream_level.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mixart_update_capture_stream_level\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"error MSG_STREAM_SET_IN_AUDIO_LEVEL card(%d) status(%x)\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_mixart_create_mixer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mgr->mixer_mutex\00", [46 x i8] zeroinitializer }, align 32
@mixart_control_analog_level = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 19, i32 0, ptr @mixart_analog_vol_info, ptr @mixart_analog_vol_get, ptr @mixart_analog_vol_put, %union.anon.83 { ptr @db_scale_analog }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@mixart_control_output_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @mixart_audio_sw_get, ptr @mixart_audio_sw_put, %union.anon.83 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Master Capture Volume\00", [42 x i8] zeroinitializer }, align 32
@snd_mixart_pcm_vol = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 19, i32 0, ptr @mixart_digital_vol_info, ptr @mixart_pcm_vol_get, ptr @mixart_pcm_vol_put, %union.anon.83 { ptr @db_scale_digital }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCM Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AES Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AES Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@mixart_control_pcm_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 0, i32 4, ptr @snd_ctl_boolean_stereo_info, ptr @mixart_pcm_sw_get, ptr @mixart_pcm_sw_put, %union.anon.83 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AES Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@mixart_control_monitor_vol = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 19, i32 0, ptr @mixart_digital_vol_info, ptr @mixart_monitor_vol_get, ptr @mixart_monitor_vol_put, %union.anon.83 { ptr @db_scale_digital }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mixart_control_monitor_sw = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @mixart_monitor_sw_get, ptr @mixart_monitor_sw_put, %union.anon.83 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@db_scale_analog = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9600, i32 50], [16 x i8] zeroinitializer }, align 32
@mixart_analog_level = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 -1027604480, i32 -1027670016, i32 -1027735552, i32 -1027801088, i32 -1027866624, i32 -1027932160, i32 -1027997696, i32 -1028063232, i32 -1028128768, i32 -1028194304, i32 -1028259840, i32 -1028325376, i32 -1028390912, i32 -1028456448, i32 -1028521984, i32 -1028587520, i32 -1028653056, i32 -1028718592, i32 -1028784128, i32 -1028849664, i32 -1028915200, i32 -1028980736, i32 -1029046272, i32 -1029111808, i32 -1029177344, i32 -1029242880, i32 -1029308416, i32 -1029373952, i32 -1029439488, i32 -1029505024, i32 -1029570560, i32 -1029636096, i32 -1029701632, i32 -1029767168, i32 -1029832704, i32 -1029898240, i32 -1029963776, i32 -1030029312, i32 -1030094848, i32 -1030160384, i32 -1030225920, i32 -1030291456, i32 -1030356992, i32 -1030422528, i32 -1030488064, i32 -1030553600, i32 -1030619136, i32 -1030684672, i32 -1030750208, i32 -1030815744, i32 -1030881280, i32 -1030946816, i32 -1031012352, i32 -1031077888, i32 -1031143424, i32 -1031208960, i32 -1031274496, i32 -1031340032, i32 -1031405568, i32 -1031471104, i32 -1031536640, i32 -1031602176, i32 -1031667712, i32 -1031733248, i32 -1031798784, i32 -1031929856, i32 -1032060928, i32 -1032192000, i32 -1032323072, i32 -1032454144, i32 -1032585216, i32 -1032716288, i32 -1032847360, i32 -1032978432, i32 -1033109504, i32 -1033240576, i32 -1033371648, i32 -1033502720, i32 -1033633792, i32 -1033764864, i32 -1033895936, i32 -1034027008, i32 -1034158080, i32 -1034289152, i32 -1034420224, i32 -1034551296, i32 -1034682368, i32 -1034813440, i32 -1034944512, i32 -1035075584, i32 -1035206656, i32 -1035337728, i32 -1035468800, i32 -1035599872, i32 -1035730944, i32 -1035862016, i32 -1035993088, i32 -1036124160, i32 -1036255232, i32 -1036386304, i32 -1036517376, i32 -1036648448, i32 -1036779520, i32 -1036910592, i32 -1037041664, i32 -1037172736, i32 -1037303808, i32 -1037434880, i32 -1037565952, i32 -1037697024, i32 -1037828096, i32 -1037959168, i32 -1038090240, i32 -1038221312, i32 -1038352384, i32 -1038483456, i32 -1038614528, i32 -1038745600, i32 -1038876672, i32 -1039007744, i32 -1039138816, i32 -1039269888, i32 -1039400960, i32 -1039532032, i32 -1039663104, i32 -1039794176, i32 -1039925248, i32 -1040056320, i32 -1040187392, i32 -1040449536, i32 -1040711680, i32 -1040973824, i32 -1041235968, i32 -1041498112, i32 -1041760256, i32 -1042022400, i32 -1042284544, i32 -1042546688, i32 -1042808832, i32 -1043070976, i32 -1043333120, i32 -1043595264, i32 -1043857408, i32 -1044119552, i32 -1044381696, i32 -1044643840, i32 -1044905984, i32 -1045168128, i32 -1045430272, i32 -1045692416, i32 -1045954560, i32 -1046216704, i32 -1046478848, i32 -1046740992, i32 -1047003136, i32 -1047265280, i32 -1047527424, i32 -1047789568, i32 -1048051712, i32 -1048313856, i32 -1048576000, i32 -1049100288, i32 -1049624576, i32 -1050148864, i32 -1050673152, i32 -1051197440, i32 -1051721728, i32 -1052246016, i32 -1052770304, i32 -1053294592, i32 -1053818880, i32 -1054343168, i32 -1054867456, i32 -1055391744, i32 -1055916032, i32 -1056440320, i32 -1056964608, i32 -1058013184, i32 -1059061760, i32 -1060110336, i32 -1061158912, i32 -1062207488, i32 -1063256064, i32 -1064304640, i32 -1065353216, i32 -1067450368, i32 -1069547520, i32 -1071644672, i32 -1073741824, i32 -1077936128, i32 -1082130432, i32 -1090519040, i32 0, i32 1056964608, i32 1065353216, i32 1069547520, i32 1073741824, i32 1075838976, i32 1077936128, i32 1080033280, i32 1082130432, i32 1083179008, i32 1084227584, i32 1085276160, i32 1086324736, i32 1087373312, i32 1088421888, i32 1089470464, i32 1090519040, i32 1091043328, i32 1091567616, i32 1092091904, i32 1092616192, i32 1093140480, i32 1093664768, i32 1094189056, i32 1094713344, i32 1095237632, i32 1095761920, i32 1096286208, i32 1096810496, i32 1097334784, i32 1097859072, i32 1098383360, i32 1098907648, i32 1099169792, i32 1099431936, i32 1099694080, i32 1099956224, i32 1100218368, i32 1100480512, i32 1100742656, i32 1101004800, i32 1101266944, i32 1101529088, i32 1101791232, i32 1102053376, i32 1102315520, i32 1102577664, i32 1102839808, i32 1103101952, i32 1103364096, i32 1103626240, i32 1103888384, i32 1104150528, i32 1104412672, i32 1104674816, i32 1104936960, i32 1105199104, i32 1105461248, i32 1105723392, i32 1105985536, i32 1106247680, i32 1106509824, i32 1106771968, i32 1107034112], [256 x i8] zeroinitializer }, align 32
@mixart_update_analog_audio_level.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mixart_update_analog_audio_level\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"error MSG_PHYSICALIO_SET_LEVEL card(%d) is_capture(%d) error_code(%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@db_scale_digital = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10950, i32 50], [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Monitoring Volume\00", [46 x i8] zeroinitializer }, align 32
@mixart_update_monitoring.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mixart_update_monitoring\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"error MSG_CONNECTOR_SET_OUT_AUDIO_LEVEL card(%d) resp(%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Monitoring Switch\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"mixart_digital_level\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 446, i32 18 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 754, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 799, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1107, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [28 x i8] c"mixart_control_analog_level\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 394, i32 38 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1115, i32 15 }
@___asan_gen_.55 = private unnamed_addr constant [29 x i8] c"mixart_control_output_switch\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 438, i32 38 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1128, i32 16 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"snd_mixart_pcm_vol\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 887, i32 38 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1136, i32 15 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1143, i32 15 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1151, i32 16 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1158, i32 16 }
@___asan_gen_.76 = private unnamed_addr constant [26 x i8] c"mixart_control_pcm_switch\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 941, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1166, i32 15 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1173, i32 16 }
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"mixart_control_monitor_vol\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1014, i32 38 }
@___asan_gen_.88 = private unnamed_addr constant [26 x i8] c"mixart_control_monitor_sw\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1081, i32 38 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"db_scale_analog\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 392, i32 14 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"mixart_analog_level\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 23, i32 18 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 319, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 440, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"db_scale_digital\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 885, i32 14 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1018, i32 18 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 973, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [35 x i8] c"../sound/pci/mixart/mixart_mixer.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1083, i32 18 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @mixart_digital_level, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @snd_mixart_create_mixer.__key, ptr @.str.6, ptr @mixart_control_analog_level, ptr @.str.7, ptr @mixart_control_output_switch, ptr @.str.8, ptr @snd_mixart_pcm_vol, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @mixart_control_pcm_switch, ptr @.str.13, ptr @.str.14, ptr @mixart_control_monitor_vol, ptr @mixart_control_monitor_sw, ptr @db_scale_analog, ptr @mixart_analog_level, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @db_scale_digital, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_digital_level to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_create_mixer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_control_analog_level to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_control_output_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_pcm_vol to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_control_pcm_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_control_monitor_vol to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_control_monitor_sw to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_analog to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_analog_level to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_digital to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mixart_update_playback_stream_level(ptr nocapture noundef readonly %chip, i32 noundef %is_aes, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.mixart_msg, align 4
  %set_level = alloca %struct.mixart_set_out_stream_level_req, align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %request) #5
  %0 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 2
  %3 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %set_level) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %status, align 4
  %5 = call ptr @memset(ptr %set_level, i32 0, i32 144)
  %nb_of_stream = getelementptr inbounds %struct.mixart_set_out_stream_level_req, ptr %set_level, i32 0, i32 3
  %6 = ptrtoint ptr %nb_of_stream to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 1, ptr %nb_of_stream, align 1
  %stream_idx = getelementptr inbounds %struct.mixart_set_out_stream_level_req, ptr %set_level, i32 0, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %stream_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %idx, ptr %stream_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_aes)
  %tobool.not = icmp eq i32 %is_aes, 0
  %pipe_out_dig = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 9
  %add = add i32 %idx, 4
  %pipe_out_ana = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 7
  %pipe.0 = select i1 %tobool.not, ptr %pipe_out_ana, ptr %pipe_out_dig
  %idx.addr.0 = select i1 %tobool.not, i32 %idx, i32 %add
  %status1 = getelementptr inbounds %struct.mixart_pipe, ptr %pipe.0, i32 0, i32 4
  %8 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %entry
  %stream_level = getelementptr inbounds %struct.mixart_set_out_stream_level_req, ptr %set_level, i32 0, i32 4
  %10 = ptrtoint ptr %pipe.0 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %pipe.0, align 4
  %12 = ptrtoint ptr %stream_level to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %stream_level, align 1
  %arrayidx7 = getelementptr %struct.snd_mixart, ptr %chip, i32 0, i32 17, i32 %idx.addr.0, i32 0
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %if.end3.for.inc_crit_edge, label %if.then9

if.end3.for.inc_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx11 = getelementptr %struct.snd_mixart, ptr %chip, i32 0, i32 18, i32 %idx.addr.0, i32 0
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %if.end3.for.inc_crit_edge
  %volume.sroa.0.0 = phi i32 [ %16, %if.then9 ], [ 0, %if.end3.for.inc_crit_edge ]
  %arrayidx7.1 = getelementptr %struct.snd_mixart, ptr %chip, i32 0, i32 17, i32 %idx.addr.0, i32 1
  %17 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx7.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not.1 = icmp eq i32 %18, 0
  br i1 %tobool8.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then9.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then9.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx11.1 = getelementptr %struct.snd_mixart, ptr %chip, i32 0, i32 18, i32 %idx.addr.0, i32 1
  %19 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx11.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then9.1, %for.inc.for.inc.1_crit_edge
  %volume.sroa.6.0 = phi i32 [ %20, %if.then9.1 ], [ 0, %for.inc.for.inc.1_crit_edge ]
  %out_level = getelementptr inbounds %struct.mixart_set_out_stream_level_req, ptr %set_level, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %out_level to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 9, ptr %out_level, align 1
  %arrayidx18 = getelementptr [256 x i32], ptr @mixart_digital_level, i32 0, i32 %volume.sroa.0.0
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx18, align 4
  %left_to_out1_level = getelementptr inbounds %struct.mixart_set_out_stream_level_req, ptr %set_level, i32 0, i32 4, i32 1, i32 2
  %24 = ptrtoint ptr %left_to_out1_level to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %left_to_out1_level, align 1
  %arrayidx22 = getelementptr [256 x i32], ptr @mixart_digital_level, i32 0, i32 %volume.sroa.6.0
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx22, align 4
  %right_to_out2_level = getelementptr inbounds %struct.mixart_set_out_stream_level_req, ptr %set_level, i32 0, i32 4, i32 1, i32 5
  %27 = ptrtoint ptr %right_to_out2_level to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %right_to_out2_level, align 1
  %28 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1245207, ptr %request, align 4
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %0, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %1, align 4
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %set_level, ptr %2, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 144, ptr %3, align 4
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 1
  %33 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mgr, align 4
  %call = call i32 @snd_mixart_send_msg(ptr noundef %34, ptr noundef nonnull %request, i32 noundef 4, ptr noundef nonnull %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp26 = icmp slt i32 %call, 0
  br i1 %cmp26, label %for.inc.1.do.body_crit_edge, label %lor.lhs.false

for.inc.1.do.body_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false:                                    ; preds = %for.inc.1
  %35 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool27.not = icmp eq i32 %36, 0
  br i1 %tobool27.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %for.inc.1.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mixart_update_playback_stream_level.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mixart_update_playback_stream_level, %if.then33)) #5
          to label %cleanup [label %if.then33], !srcloc !72

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %chip_idx = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 2
  %41 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chip_idx, align 8
  %43 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mixart_update_playback_stream_level.__UNIQUE_ID_ddebug239, ptr noundef %40, ptr noundef nonnull @.str.3, i32 noundef %42, i32 noundef %44) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then33 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %set_level) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mixart_send_msg(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mixart_update_capture_stream_level(ptr nocapture noundef readonly %chip, i32 noundef %is_aes) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.mixart_msg, align 4
  %set_level = alloca %struct.mixart_set_in_audio_level_req, align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %request) #5
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %set_level) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_aes)
  %tobool.not = icmp eq i32 %is_aes, 0
  %pipe_in_dig = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 8
  %pipe_in_ana = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 6
  %pipe.0 = select i1 %tobool.not, ptr %pipe_in_ana, ptr %pipe_in_dig
  %status1 = getelementptr inbounds %struct.mixart_pipe, ptr %pipe.0, i32 0, i32 4
  %1 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 3
  %4 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 2
  %5 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1
  %not.tobool.not = xor i1 %tobool.not, true
  %idx.0 = zext i1 %not.tobool.not to i32
  %7 = call ptr @memset(ptr %set_level, i32 0, i32 68)
  %audio_count = getelementptr inbounds %struct.mixart_set_in_audio_level_req, ptr %set_level, i32 0, i32 2
  %8 = ptrtoint ptr %audio_count to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 2, ptr %audio_count, align 1
  %level = getelementptr inbounds %struct.mixart_set_in_audio_level_req, ptr %set_level, i32 0, i32 4
  %uid_left_connector = getelementptr inbounds %struct.mixart_pipe, ptr %pipe.0, i32 0, i32 2
  %9 = ptrtoint ptr %uid_left_connector to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %uid_left_connector, align 4
  %11 = ptrtoint ptr %level to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %level, align 1
  %arrayidx5 = getelementptr inbounds %struct.mixart_set_in_audio_level_req, ptr %set_level, i32 0, i32 4, i32 1
  %uid_right_connector = getelementptr inbounds %struct.mixart_pipe, ptr %pipe.0, i32 0, i32 3
  %12 = ptrtoint ptr %uid_right_connector to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %uid_right_connector, align 4
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %arrayidx5, align 1
  %valid_mask1 = getelementptr inbounds %struct.mixart_set_in_audio_level_req, ptr %set_level, i32 0, i32 4, i32 0, i32 1
  %15 = ptrtoint ptr %valid_mask1 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 2, ptr %valid_mask1, align 1
  %arrayidx11 = getelementptr %struct.snd_mixart, ptr %chip, i32 0, i32 19, i32 %idx.0, i32 0
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr [256 x i32], ptr @mixart_digital_level, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx12, align 4
  %digital_level = getelementptr inbounds %struct.mixart_set_in_audio_level_req, ptr %set_level, i32 0, i32 4, i32 0, i32 3
  %20 = ptrtoint ptr %digital_level to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %digital_level, align 1
  %valid_mask1.1 = getelementptr inbounds %struct.mixart_set_in_audio_level_req, ptr %set_level, i32 0, i32 4, i32 1, i32 1
  %21 = ptrtoint ptr %valid_mask1.1 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 2, ptr %valid_mask1.1, align 1
  %arrayidx11.1 = getelementptr %struct.snd_mixart, ptr %chip, i32 0, i32 19, i32 %idx.0, i32 1
  %22 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx11.1, align 4
  %arrayidx12.1 = getelementptr [256 x i32], ptr @mixart_digital_level, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx12.1, align 4
  %digital_level.1 = getelementptr inbounds %struct.mixart_set_in_audio_level_req, ptr %set_level, i32 0, i32 4, i32 1, i32 3
  %26 = ptrtoint ptr %digital_level.1 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %digital_level.1, align 1
  %27 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1245205, ptr %request, align 4
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %6, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %5, align 4
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %set_level, ptr %4, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 68, ptr %3, align 4
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 1
  %32 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mgr, align 4
  %call = call i32 @snd_mixart_send_msg(ptr noundef %33, ptr noundef nonnull %request, i32 noundef 4, ptr noundef nonnull %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp15 = icmp slt i32 %call, 0
  br i1 %cmp15, label %if.end3.do.body_crit_edge, label %lor.lhs.false

if.end3.do.body_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end3
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool16.not = icmp eq i32 %35, 0
  br i1 %tobool16.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end3.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mixart_update_capture_stream_level.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mixart_update_capture_stream_level, %if.then22)) #5
          to label %cleanup [label %if.then22], !srcloc !72

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  %chip_idx = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 2
  %40 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chip_idx, align 8
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mixart_update_capture_stream_level.__UNIQUE_ID_ddebug240, ptr noundef %39, ptr noundef nonnull @.str.5, i32 noundef %41, i32 noundef %43) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then22 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %set_level) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_mixart_create_mixer(ptr noundef %mgr) local_unnamed_addr #0 align 64 {
entry:
  %temp = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %mixer_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @snd_mixart_create_mixer.__key) #5
  %0 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mgr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp146.not = icmp eq i32 %1, 0
  br i1 %cmp146.not, label %entry.cleanup91_crit_edge, label %for.body.lr.ph

entry.cleanup91_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup91

for.body.lr.ph:                                   ; preds = %entry
  %name = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 3
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 11
  %count = getelementptr inbounds %struct.snd_kcontrol_new, ptr %temp, i32 0, i32 6
  %board_type = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0147 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %temp) #5
  %arrayidx = getelementptr %struct.mixart_mgr, ptr %mgr, i32 0, i32 1, i32 %i.0147
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = call ptr @memcpy(ptr %temp, ptr @mixart_control_analog_level, i32 44)
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.7, ptr %name, align 4
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %private_value, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  %call = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %3) #5
  %call2 = call i32 @snd_ctl_add(ptr noundef %8, ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %for.body.cleanup.thread_crit_edge, label %if.end

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %call5 = call ptr @snd_ctl_new1(ptr noundef nonnull @mixart_control_output_switch, ptr noundef %3) #5
  %call6 = call i32 @snd_ctl_add(ptr noundef %10, ptr noundef %call5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup.thread_crit_edge, label %if.end9

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0147)
  %cmp10 = icmp slt i32 %i.0147, 2
  br i1 %cmp10, label %if.then11, label %if.end9.if.end20_crit_edge

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then11:                                        ; preds = %if.end9
  %11 = call ptr @memcpy(ptr %temp, ptr @mixart_control_analog_level, i32 44)
  %12 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.8, ptr %name, align 4
  %13 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %private_value, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %call15 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %3) #5
  %call16 = call i32 @snd_ctl_add(ptr noundef %15, ptr noundef %call15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then11.cleanup.thread_crit_edge, label %if.then11.if.end20_crit_edge

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then11.cleanup.thread_crit_edge:               ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end20:                                         ; preds = %if.then11.if.end20_crit_edge, %if.end9.if.end20_crit_edge
  %16 = call ptr @memcpy(ptr %temp, ptr @snd_mixart_pcm_vol, i32 44)
  %17 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.9, ptr %name, align 4
  %18 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %count, align 4
  %19 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %private_value, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %call24 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %3) #5
  %call25 = call i32 @snd_ctl_add(ptr noundef %21, ptr noundef %call24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end20.cleanup.thread_crit_edge, label %if.end28

if.end20.cleanup.thread_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end28:                                         ; preds = %if.end20
  %22 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.10, ptr %name, align 4
  %23 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %count, align 4
  %24 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %private_value, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %call33 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %3) #5
  %call34 = call i32 @snd_ctl_add(ptr noundef %26, ptr noundef %call33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end28.cleanup.thread_crit_edge, label %if.end37

if.end28.cleanup.thread_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end37:                                         ; preds = %if.end28
  %27 = ptrtoint ptr %board_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %board_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %28)
  %cmp38 = icmp eq i32 %28, 14
  br i1 %cmp38, label %if.then39, label %if.end37.if.end58_crit_edge

if.end37.if.end58_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then39:                                        ; preds = %if.end37
  %29 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.11, ptr %name, align 4
  %30 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %count, align 4
  %31 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %private_value, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 8
  %call44 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %3) #5
  %call45 = call i32 @snd_ctl_add(ptr noundef %33, ptr noundef %call44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then39.cleanup.thread_crit_edge, label %if.end48

if.then39.cleanup.thread_crit_edge:               ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end48:                                         ; preds = %if.then39
  %34 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.12, ptr %name, align 4
  %35 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %count, align 4
  %36 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %private_value, align 4
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 8
  %call53 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %3) #5
  %call54 = call i32 @snd_ctl_add(ptr noundef %38, ptr noundef %call53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end48.cleanup.thread_crit_edge, label %if.end48.if.end58_crit_edge

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.end48.cleanup.thread_crit_edge:                ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end58:                                         ; preds = %if.end48.if.end58_crit_edge, %if.end37.if.end58_crit_edge
  %39 = call ptr @memcpy(ptr %temp, ptr @mixart_control_pcm_switch, i32 44)
  %40 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.13, ptr %name, align 4
  %41 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %private_value, align 4
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 8
  %call62 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %3) #5
  %call63 = call i32 @snd_ctl_add(ptr noundef %43, ptr noundef %call62) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end58.cleanup.thread_crit_edge, label %if.end66

if.end58.cleanup.thread_crit_edge:                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end66:                                         ; preds = %if.end58
  %44 = ptrtoint ptr %board_type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %board_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %45)
  %cmp68 = icmp eq i32 %45, 14
  br i1 %cmp68, label %if.then69, label %if.end66.if.end78_crit_edge

if.end66.if.end78_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then69:                                        ; preds = %if.end66
  %46 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.14, ptr %name, align 4
  %47 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %private_value, align 4
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 8
  %call73 = call ptr @snd_ctl_new1(ptr noundef nonnull %temp, ptr noundef %3) #5
  %call74 = call i32 @snd_ctl_add(ptr noundef %49, ptr noundef %call73) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.then69.cleanup.thread_crit_edge, label %if.then69.if.end78_crit_edge

if.then69.if.end78_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then69.cleanup.thread_crit_edge:               ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end78:                                         ; preds = %if.then69.if.end78_crit_edge, %if.end66.if.end78_crit_edge
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 8
  %call80 = call ptr @snd_ctl_new1(ptr noundef nonnull @mixart_control_monitor_vol, ptr noundef %3) #5
  %call81 = call i32 @snd_ctl_add(ptr noundef %51, ptr noundef %call80) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end78.cleanup.thread_crit_edge, label %if.end84

if.end78.cleanup.thread_crit_edge:                ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end84:                                         ; preds = %if.end78
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 8
  %call86 = call ptr @snd_ctl_new1(ptr noundef nonnull @mixart_control_monitor_sw, ptr noundef %3) #5
  %call87 = call i32 @snd_ctl_add(ptr noundef %53, ptr noundef %call86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.end84.cleanup.thread_crit_edge, label %if.end90

if.end84.cleanup.thread_crit_edge:                ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end90:                                         ; preds = %if.end84
  call fastcc void @mixart_update_analog_audio_level(ptr noundef %3, i32 noundef 0) #5
  %chip_idx.i = getelementptr inbounds %struct.snd_mixart, ptr %3, i32 0, i32 2
  %54 = ptrtoint ptr %chip_idx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %chip_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp.i = icmp slt i32 %55, 2
  br i1 %cmp.i, label %if.then.i, label %if.end90.for.inc_crit_edge

if.end90.for.inc_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then.i:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @mixart_update_analog_audio_level(ptr noundef %3, i32 noundef 1) #5
  br label %for.inc

cleanup.thread:                                   ; preds = %if.end84.cleanup.thread_crit_edge, %if.end78.cleanup.thread_crit_edge, %if.then69.cleanup.thread_crit_edge, %if.end58.cleanup.thread_crit_edge, %if.end48.cleanup.thread_crit_edge, %if.then39.cleanup.thread_crit_edge, %if.end28.cleanup.thread_crit_edge, %if.end20.cleanup.thread_crit_edge, %if.then11.cleanup.thread_crit_edge, %if.end.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %call87, %if.end84.cleanup.thread_crit_edge ], [ %call81, %if.end78.cleanup.thread_crit_edge ], [ %call74, %if.then69.cleanup.thread_crit_edge ], [ %call63, %if.end58.cleanup.thread_crit_edge ], [ %call54, %if.end48.cleanup.thread_crit_edge ], [ %call45, %if.then39.cleanup.thread_crit_edge ], [ %call34, %if.end28.cleanup.thread_crit_edge ], [ %call25, %if.end20.cleanup.thread_crit_edge ], [ %call16, %if.then11.cleanup.thread_crit_edge ], [ %call6, %if.end.cleanup.thread_crit_edge ], [ %call2, %for.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %temp) #5
  br label %cleanup91

for.inc:                                          ; preds = %if.then.i, %if.end90.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %temp) #5
  %inc = add nuw i32 %i.0147, 1
  %56 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mgr, align 4
  %cmp = icmp ult i32 %inc, %57
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup91_crit_edge

for.inc.cleanup91_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup91

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup91:                                        ; preds = %for.inc.cleanup91_crit_edge, %cleanup.thread, %entry.cleanup91_crit_edge
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ 0, %entry.cleanup91_crit_edge ], [ 0, %for.inc.cleanup91_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mixart_analog_vol_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %spec.select = select i1 %cmp, i32 192, i32 255
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixart_analog_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #5
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %analog_playback_volume = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %analog_playback_volume to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %analog_playback_volume, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  %arrayidx3 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 15, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %analog_capture_volume = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %analog_capture_volume to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %analog_capture_volume, align 8
  %value7 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %value7, align 8
  %arrayidx10 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 16, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx10.sink = phi ptr [ %arrayidx10, %if.else ], [ %arrayidx3, %if.then ]
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx10.sink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx10.sink, align 4
  %arrayidx12 = getelementptr [128 x i32], ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx12, align 4
  %16 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mgr, align 4
  %mixer_mutex14 = getelementptr inbounds %struct.mixart_mgr, ptr %17, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %mixer_mutex14) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixart_analog_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #5
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp ne i32 %5, 0
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  %arrayidx3 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 16, i32 0
  %arrayidx4 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 15, i32 0
  %cond = select i1 %cmp, ptr %arrayidx3, ptr %arrayidx4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %8 = icmp ugt i32 %7, 255
  br i1 %8, label %cleanup.thread, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.155 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.155 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.155, align 4
  br label %if.then.1

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %7)
  %11 = icmp ugt i32 %7, 192
  br i1 %11, label %cleanup.thread63, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

cleanup.thread63:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.165 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.165 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.165, align 4
  br label %if.else.1

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %if.then.if.end18_crit_edge
  %14 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp19.not = icmp eq i32 %15, %7
  br i1 %cmp19.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %7, ptr %cond, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end18.cleanup_crit_edge
  %changed.2 = phi i32 [ 1, %if.then21 ], [ 0, %if.end18.cleanup_crit_edge ]
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1, align 4
  br i1 %cmp, label %cleanup.if.then.1_crit_edge, label %cleanup.if.else.1_crit_edge

cleanup.if.else.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.1

cleanup.if.then.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.1

if.else.1:                                        ; preds = %cleanup.if.else.1_crit_edge, %cleanup.thread63
  %19 = phi i32 [ %13, %cleanup.thread63 ], [ %18, %cleanup.if.else.1_crit_edge ]
  %changed.269 = phi i32 [ 0, %cleanup.thread63 ], [ %changed.2, %cleanup.if.else.1_crit_edge ]
  %cond.170 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 15, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %19)
  %20 = icmp ugt i32 %19, 192
  br i1 %20, label %if.else.1.cleanup.1_crit_edge, label %if.else.1.if.end18.1_crit_edge

if.else.1.if.end18.1_crit_edge:                   ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.1

if.else.1.cleanup.1_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.1

if.then.1:                                        ; preds = %cleanup.if.then.1_crit_edge, %cleanup.thread
  %21 = phi i32 [ %10, %cleanup.thread ], [ %18, %cleanup.if.then.1_crit_edge ]
  %changed.259 = phi i32 [ 0, %cleanup.thread ], [ %changed.2, %cleanup.if.then.1_crit_edge ]
  %cond.162 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 16, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %21)
  %22 = icmp ugt i32 %21, 255
  br i1 %22, label %if.then.1.cleanup.1_crit_edge, label %if.then.1.if.end18.1_crit_edge

if.then.1.if.end18.1_crit_edge:                   ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.1

if.then.1.cleanup.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.1

if.end18.1:                                       ; preds = %if.then.1.if.end18.1_crit_edge, %if.else.1.if.end18.1_crit_edge
  %cond.161 = phi ptr [ %cond.162, %if.then.1.if.end18.1_crit_edge ], [ %cond.170, %if.else.1.if.end18.1_crit_edge ]
  %23 = phi i32 [ %21, %if.then.1.if.end18.1_crit_edge ], [ %19, %if.else.1.if.end18.1_crit_edge ]
  %changed.260 = phi i32 [ %changed.259, %if.then.1.if.end18.1_crit_edge ], [ %changed.269, %if.else.1.if.end18.1_crit_edge ]
  %24 = ptrtoint ptr %cond.161 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cond.161, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp19.not.1 = icmp eq i32 %25, %23
  br i1 %cmp19.not.1, label %if.end18.1.cleanup.1_crit_edge, label %cleanup.1.thread

if.end18.1.cleanup.1_crit_edge:                   ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.1

cleanup.1.thread:                                 ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %cond.161 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %cond.161, align 4
  br label %if.then25

cleanup.1:                                        ; preds = %if.end18.1.cleanup.1_crit_edge, %if.then.1.cleanup.1_crit_edge, %if.else.1.cleanup.1_crit_edge
  %changed.2.1 = phi i32 [ %changed.259, %if.then.1.cleanup.1_crit_edge ], [ %changed.269, %if.else.1.cleanup.1_crit_edge ], [ %changed.260, %if.end18.1.cleanup.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.2.1)
  %tobool24.not = icmp eq i32 %changed.2.1, 0
  br i1 %tobool24.not, label %cleanup.1.if.end26_crit_edge, label %cleanup.1.if.then25_crit_edge

cleanup.1.if.then25_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25

cleanup.1.if.end26_crit_edge:                     ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then25:                                        ; preds = %cleanup.1.if.then25_crit_edge, %cleanup.1.thread
  %conv = zext i1 %cmp to i32
  tail call fastcc void @mixart_update_analog_audio_level(ptr noundef %1, i32 noundef %conv)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %cleanup.1.if.end26_crit_edge
  %changed.2.174 = phi i32 [ 1, %if.then25 ], [ 0, %cleanup.1.if.end26_crit_edge ]
  %27 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mgr, align 4
  %mixer_mutex28 = getelementptr inbounds %struct.mixart_mgr, ptr %28, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %mixer_mutex28) #5
  ret i32 %changed.2.174
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mixart_update_analog_audio_level(ptr nocapture noundef readonly %chip, i32 noundef %is_capture) unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.mixart_msg, align 4
  %io_level = alloca %struct.mixart_io_level, align 4
  %resp = alloca %struct.mixart_return_uid, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %request) #5
  %0 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %io_level) #5
  %3 = getelementptr inbounds %struct.mixart_io_level, ptr %io_level, i32 0, i32 1
  %4 = getelementptr inbounds %struct.mixart_io_level, ptr %io_level, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resp) #5
  %5 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %resp, align 4, !annotation !73
  %6 = getelementptr inbounds %struct.mixart_return_uid, ptr %resp, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !73
  %8 = getelementptr inbounds %struct.mixart_return_uid, ptr %resp, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !73
  %10 = getelementptr inbounds i8, ptr %io_level, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 24)
  %12 = ptrtoint ptr %io_level to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %io_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_capture)
  %tobool.not = icmp eq i32 %is_capture, 0
  br i1 %tobool.not, label %if.else, label %if.then.1

if.else:                                          ; preds = %entry
  %arrayidx3 = getelementptr %struct.snd_mixart, ptr %chip, i32 0, i32 14, i32 0
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.else.if.else.1_crit_edge, label %if.then5

if.else.if.else.1_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.1

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6 = getelementptr %struct.snd_mixart, ptr %chip, i32 0, i32 15, i32 0
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr [256 x i32], ptr @mixart_analog_level, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx7, align 4
  br label %if.else.1

if.then.1:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.snd_mixart, ptr %chip, i32 0, i32 16, i32 0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [256 x i32], ptr @mixart_analog_level, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx1, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %3, align 4
  %arrayidx.1 = getelementptr %struct.snd_mixart, ptr %chip, i32 0, i32 16, i32 1
  br label %for.inc.1.sink.split

if.else.1:                                        ; preds = %if.then5, %if.else.if.else.1_crit_edge
  %.sink = phi i32 [ %18, %if.then5 ], [ -1027604480, %if.else.if.else.1_crit_edge ]
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %3, align 4
  %arrayidx3.1 = getelementptr %struct.snd_mixart, ptr %chip, i32 0, i32 14, i32 1
  %25 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx3.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool4.not.1 = icmp eq i32 %26, 0
  br i1 %tobool4.not.1, label %if.else.1.for.inc.1_crit_edge, label %if.then5.1

if.else.1.for.inc.1_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then5.1:                                       ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6.1 = getelementptr %struct.snd_mixart, ptr %chip, i32 0, i32 15, i32 1
  br label %for.inc.1.sink.split

for.inc.1.sink.split:                             ; preds = %if.then5.1, %if.then.1
  %arrayidx6.1.sink = phi ptr [ %arrayidx6.1, %if.then5.1 ], [ %arrayidx.1, %if.then.1 ]
  %27 = ptrtoint ptr %arrayidx6.1.sink to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx6.1.sink, align 4
  %arrayidx7.1 = getelementptr [256 x i32], ptr @mixart_analog_level, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx7.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.1.sink.split, %if.else.1.for.inc.1_crit_edge
  %.sink4 = phi i32 [ -1027604480, %if.else.1.for.inc.1_crit_edge ], [ %30, %for.inc.1.sink.split ]
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink4, ptr %4, align 4
  %uid_in_analog_physio = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 13
  %uid_out_analog_physio = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 12
  %storemerge.in = select i1 %tobool.not, ptr %uid_out_analog_physio, ptr %uid_in_analog_physio
  %32 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load8_noabort(i32 %32)
  %storemerge = load i64, ptr %storemerge.in, align 8
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %storemerge, ptr %0, align 4
  %34 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 983048, ptr %request, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %io_level, ptr %1, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 28, ptr %2, align 4
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 1
  %37 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mgr, align 4
  %call = call i32 @snd_mixart_send_msg(ptr noundef %38, ptr noundef nonnull %request, i32 noundef 12, ptr noundef nonnull %resp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp21 = icmp slt i32 %call, 0
  br i1 %cmp21, label %for.inc.1.do.body_crit_edge, label %lor.lhs.false

for.inc.1.do.body_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false:                                    ; preds = %for.inc.1
  %39 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool22.not = icmp eq i32 %40, 0
  br i1 %tobool22.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %for.inc.1.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mixart_update_analog_audio_level.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mixart_update_analog_audio_level, %if.then28)) #5
          to label %cleanup [label %if.then28], !srcloc !72

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %42, i32 0, i32 27
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 8
  %chip_idx = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 2
  %45 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chip_idx, align 8
  %47 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %resp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mixart_update_analog_audio_level.__UNIQUE_ID_ddebug238, ptr noundef %44, ptr noundef nonnull @.str.16, i32 noundef %46, i32 noundef %is_capture, i32 noundef %48) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %do.body, %lor.lhs.false.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %io_level) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_stereo_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixart_audio_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #5
  %analog_playback_active = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %analog_playback_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %analog_playback_active, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %arrayidx3 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 14, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx5, align 4
  %10 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mgr, align 4
  %mixer_mutex7 = getelementptr inbounds %struct.mixart_mgr, ptr %11, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %mixer_mutex7) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixart_audio_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #5
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 14, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2.not = icmp eq i32 %5, %7
  br i1 %cmp2.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  %lnot.ext = zext i1 %tobool to i32
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lnot.ext, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 14, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp2.not.1 = icmp eq i32 %10, %12
  br i1 %cmp2.not.1, label %for.inc.1, label %for.inc.1.thread

for.inc.1.thread:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.1 = icmp ne i32 %12, 0
  %lnot.ext.1 = zext i1 %tobool.1 to i32
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %lnot.ext.1, ptr %arrayidx.1, align 4
  br label %if.then9

for.inc.1:                                        ; preds = %for.inc
  br i1 %cmp2.not, label %for.inc.1.if.end10_crit_edge, label %for.inc.1.if.then9_crit_edge

for.inc.1.if.then9_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

for.inc.1.if.end10_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %for.inc.1.if.then9_crit_edge, %for.inc.1.thread
  tail call fastcc void @mixart_update_analog_audio_level(ptr noundef %1, i32 noundef 0)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.inc.1.if.end10_crit_edge
  %changed.1.129 = phi i32 [ 1, %if.then9 ], [ 0, %for.inc.1.if.end10_crit_edge ]
  %14 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mgr, align 4
  %mixer_mutex12 = getelementptr inbounds %struct.mixart_mgr, ptr %15, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %mixer_mutex12) #5
  ret i32 %changed.1.129
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mixart_digital_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixart_pcm_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #5, !srcloc !74
  %and.i = and i32 %8, %sub.i
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %9 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %private_value, align 4
  %and = and i32 %10, 1
  %and2 = and i32 %10, 2
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %12, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else8, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 19, i32 1
  br label %if.end39

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %digital_capture_volume5 = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 19
  br label %if.end39

if.else8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp = icmp sgt i32 %and.i, 3
  br i1 %cmp, label %do.end, label %if.else8.if.end23_crit_edge, !prof !75

if.else8.if.end23_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end:                                           ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 833, i32 noundef 9, ptr noundef null) #5
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.else8.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool30.not = icmp eq i32 %and2, 0
  br i1 %tobool30.not, label %if.else34, label %if.then31

if.then31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %and.i, 4
  %arrayidx32 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 18, i32 %add
  br label %if.end39

if.else34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx36 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 18, i32 %and.i
  br label %if.end39

if.end39:                                         ; preds = %if.else34, %if.then31, %if.else, %if.then4
  %stored_volume.0 = phi ptr [ %arrayidx, %if.then4 ], [ %digital_capture_volume5, %if.else ], [ %arrayidx32, %if.then31 ], [ %arrayidx36, %if.else34 ]
  %13 = ptrtoint ptr %stored_volume.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stored_volume.0, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %value, align 8
  %arrayidx42 = getelementptr i32, ptr %stored_volume.0, i32 1
  %16 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx42, align 4
  %arrayidx44 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx44, align 4
  %19 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mgr, align 4
  %mixer_mutex46 = getelementptr inbounds %struct.mixart_mgr, ptr %20, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %mixer_mutex46) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixart_pcm_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #5, !srcloc !74
  %and.i = and i32 %8, %sub.i
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %9 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %private_value, align 4
  %and = and i32 %10, 1
  %and2 = and i32 %10, 2
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %12, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else8, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 19, i32 1
  br label %if.end39

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %digital_capture_volume5 = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 19
  br label %if.end39

if.else8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp = icmp sgt i32 %and.i, 3
  br i1 %cmp, label %do.end, label %if.else8.if.end23_crit_edge, !prof !75

if.else8.if.end23_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end:                                           ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 859, i32 noundef 9, ptr noundef null) #5
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.else8.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool30.not = icmp eq i32 %and2, 0
  br i1 %tobool30.not, label %if.else34, label %if.then31

if.then31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %and.i, 4
  %arrayidx32 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 18, i32 %add
  br label %if.end39

if.else34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx36 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 18, i32 %and.i
  br label %if.end39

if.end39:                                         ; preds = %if.else34, %if.then31, %if.else, %if.then4
  %stored_volume.0 = phi ptr [ %arrayidx, %if.then4 ], [ %digital_capture_volume5, %if.else ], [ %arrayidx32, %if.then31 ], [ %arrayidx36, %if.else34 ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %14)
  %15 = icmp ugt i32 %14, 255
  br i1 %15, label %if.end39.cleanup_crit_edge, label %if.end45

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  %16 = ptrtoint ptr %stored_volume.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stored_volume.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %14)
  %cmp47.not = icmp eq i32 %17, %14
  br i1 %cmp47.not, label %if.end45.cleanup_crit_edge, label %if.then48

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %stored_volume.0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %14, ptr %stored_volume.0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end45.cleanup_crit_edge, %if.end39.cleanup_crit_edge
  %tobool51.not = phi i1 [ true, %if.end45.cleanup_crit_edge ], [ false, %if.then48 ], [ true, %if.end39.cleanup_crit_edge ]
  %arrayidx41.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx41.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %20)
  %21 = icmp ugt i32 %20, 255
  br i1 %21, label %cleanup.cleanup.1_crit_edge, label %if.end45.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.1

if.end45.1:                                       ; preds = %cleanup
  %arrayidx46.1 = getelementptr i32, ptr %stored_volume.0, i32 1
  %22 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx46.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %20)
  %cmp47.not.1 = icmp eq i32 %23, %20
  br i1 %cmp47.not.1, label %if.end45.1.cleanup.1_crit_edge, label %cleanup.1.thread

if.end45.1.cleanup.1_crit_edge:                   ; preds = %if.end45.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.1

cleanup.1.thread:                                 ; preds = %if.end45.1
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %20, ptr %arrayidx46.1, align 4
  br label %if.then52

cleanup.1:                                        ; preds = %if.end45.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  br i1 %tobool51.not, label %cleanup.1.if.end59_crit_edge, label %cleanup.1.if.then52_crit_edge

cleanup.1.if.then52_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then52

cleanup.1.if.end59_crit_edge:                     ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then52:                                        ; preds = %cleanup.1.if.then52_crit_edge, %cleanup.1.thread
  br i1 %tobool.not, label %if.else56, label %if.then54

if.then54:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  %call55 = tail call i32 @mixart_update_capture_stream_level(ptr noundef %1, i32 noundef %and2)
  br label %if.end59

if.else56:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  %call57 = tail call i32 @mixart_update_playback_stream_level(ptr noundef %1, i32 noundef %and2, i32 noundef %and.i)
  br label %if.end59

if.end59:                                         ; preds = %if.else56, %if.then54, %cleanup.1.if.end59_crit_edge
  %changed.2.1102 = phi i32 [ 1, %if.then54 ], [ 1, %if.else56 ], [ 0, %cleanup.1.if.end59_crit_edge ]
  %25 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mgr, align 4
  %mixer_mutex61 = getelementptr inbounds %struct.mixart_mgr, ptr %26, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %mixer_mutex61) #5
  ret i32 %changed.2.1102
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixart_pcm_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #5, !srcloc !74
  %and.i = and i32 %8, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp = icmp sgt i32 %and.i, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !75

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 905, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %10, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #5
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %11 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %private_value, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  %add = add i32 %and.i, 4
  %spec.select = select i1 %tobool19.not, i32 %and.i, i32 %add
  %arrayidx = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 17, i32 %spec.select
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %value, align 8
  %arrayidx26 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 17, i32 %spec.select, i32 1
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx28, align 4
  %19 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mgr, align 4
  %mixer_mutex30 = getelementptr inbounds %struct.mixart_mgr, ptr %20, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %mixer_mutex30) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixart_pcm_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 2
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %5, %7
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 4
  %10 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %9) #5, !srcloc !74
  %and.i = and i32 %10, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp = icmp sgt i32 %and.i, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !75

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 922, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %12, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  %add = add i32 %and.i, 4
  %spec.select = select i1 %tobool19.not, i32 %and.i, i32 %add
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx23 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 17, i32 %spec.select, i32 0
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx23, align 4
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp25.not = icmp eq i32 %14, %16
  br i1 %cmp25.not, label %if.end.for.inc_crit_edge, label %if.then26

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool29 = icmp ne i32 %16, 0
  %lnot.ext33 = zext i1 %tobool29 to i32
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %lnot.ext33, ptr %arrayidx23, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %if.end.for.inc_crit_edge
  %arrayidx23.1 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 17, i32 %spec.select, i32 1
  %18 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx23.1, align 4
  %arrayidx24.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx24.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp25.not.1 = icmp eq i32 %19, %21
  br i1 %cmp25.not.1, label %for.inc.1, label %for.inc.1.thread

for.inc.1.thread:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool29.1 = icmp ne i32 %21, 0
  %lnot.ext33.1 = zext i1 %tobool29.1 to i32
  %22 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %lnot.ext33.1, ptr %arrayidx23.1, align 4
  br label %if.then39

for.inc.1:                                        ; preds = %for.inc
  br i1 %cmp25.not, label %for.inc.1.if.end41_crit_edge, label %for.inc.1.if.then39_crit_edge

for.inc.1.if.then39_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

for.inc.1.if.end41_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then39:                                        ; preds = %for.inc.1.if.then39_crit_edge, %for.inc.1.thread
  %call40 = tail call i32 @mixart_update_playback_stream_level(ptr noundef %1, i32 noundef %and, i32 noundef %and.i)
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %for.inc.1.if.end41_crit_edge
  %changed.1.169 = phi i32 [ 1, %if.then39 ], [ 0, %for.inc.1.if.end41_crit_edge ]
  %23 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mgr, align 4
  %mixer_mutex43 = getelementptr inbounds %struct.mixart_mgr, ptr %24, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %mixer_mutex43) #5
  ret i32 %changed.1.169
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixart_monitor_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #5
  %monitoring_volume = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %monitoring_volume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %monitoring_volume, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %arrayidx3 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 21, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx5, align 4
  %10 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mgr, align 4
  %mixer_mutex7 = getelementptr inbounds %struct.mixart_mgr, ptr %11, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %mixer_mutex7) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixart_monitor_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #5
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 21, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2.not = icmp eq i32 %5, %7
  br i1 %cmp2.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  %lnot.ext = zext i1 %tobool to i32
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lnot.ext, ptr %arrayidx, align 4
  tail call fastcc void @mixart_update_monitoring(ptr noundef %1, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %changed.1 = phi i32 [ 1, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 21, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp2.not.1 = icmp eq i32 %10, %12
  br i1 %cmp2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.1 = icmp ne i32 %12, 0
  %lnot.ext.1 = zext i1 %tobool.1 to i32
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %lnot.ext.1, ptr %arrayidx.1, align 4
  tail call fastcc void @mixart_update_monitoring(ptr noundef %1, i32 noundef 1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %changed.1.1 = phi i32 [ 1, %if.then.1 ], [ %changed.1, %for.inc.for.inc.1_crit_edge ]
  %14 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mgr, align 4
  %mixer_mutex9 = getelementptr inbounds %struct.mixart_mgr, ptr %15, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %mixer_mutex9) #5
  ret i32 %changed.1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mixart_update_monitoring(ptr nocapture noundef readonly %chip, i32 noundef %channel) unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.mixart_msg, align 4
  %audio_level = alloca %struct.mixart_set_out_audio_level, align 1
  %resp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %request) #5
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %audio_level) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #5
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %resp, align 4
  %status = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 7, i32 4
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 3
  %4 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 2
  %5 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool = icmp ne i32 %channel, 0
  %uid_right_connector = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 7, i32 3
  %uid_left_connector = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 7, i32 2
  %storemerge.in = select i1 %tobool, ptr %uid_right_connector, ptr %uid_left_connector
  %6 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %storemerge = load i64, ptr %storemerge.in, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %storemerge, ptr %5, align 4
  %8 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 327690, ptr %request, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %audio_level, ptr %4, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 48, ptr %3, align 4
  %11 = call ptr @memset(ptr %audio_level, i32 0, i32 48)
  %valid_mask1 = getelementptr inbounds %struct.mixart_set_out_audio_level, ptr %audio_level, i32 0, i32 2
  %12 = ptrtoint ptr %valid_mask1 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 20, ptr %valid_mask1, align 1
  %conv = zext i1 %tobool to i32
  %arrayidx = getelementptr %struct.snd_mixart, ptr %chip, i32 0, i32 21, i32 %conv
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr [256 x i32], ptr @mixart_digital_level, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7, align 4
  %monitor_level = getelementptr inbounds %struct.mixart_set_out_audio_level, ptr %audio_level, i32 0, i32 6
  %17 = ptrtoint ptr %monitor_level to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %monitor_level, align 1
  %arrayidx10 = getelementptr %struct.snd_mixart, ptr %chip, i32 0, i32 20, i32 %conv
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not = icmp eq i32 %19, 0
  %lnot.ext = zext i1 %tobool11.not to i32
  %monitor_mute1 = getelementptr inbounds %struct.mixart_set_out_audio_level, ptr %audio_level, i32 0, i32 8
  %20 = ptrtoint ptr %monitor_mute1 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %lnot.ext, ptr %monitor_mute1, align 1
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 1
  %21 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mgr, align 4
  %call = call i32 @snd_mixart_send_msg(ptr noundef %22, ptr noundef nonnull %request, i32 noundef 4, ptr noundef nonnull %resp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp slt i32 %call, 0
  br i1 %cmp12, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %23 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool14.not = icmp eq i32 %24, 0
  br i1 %tobool14.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mixart_update_monitoring.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mixart_update_monitoring, %if.then23)) #5
          to label %cleanup [label %if.then23], !srcloc !72

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %chip_idx = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 2
  %29 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chip_idx, align 8
  %31 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %resp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mixart_update_monitoring.__UNIQUE_ID_ddebug241, ptr noundef %28, ptr noundef nonnull @.str.20, i32 noundef %30, i32 noundef %32) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %audio_level) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixart_monitor_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #5
  %monitoring_active = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %monitoring_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %monitoring_active, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %arrayidx3 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 20, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx5, align 4
  %10 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mgr, align 4
  %mixer_mutex7 = getelementptr inbounds %struct.mixart_mgr, ptr %11, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %mixer_mutex7) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixart_monitor_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #5
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 20, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2.not = icmp eq i32 %5, %7
  br i1 %cmp2.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  %lnot.ext = zext i1 %tobool to i32
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lnot.ext, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %changed.1 = phi i32 [ 3, %if.then ], [ 2, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 20, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp2.not.1 = icmp eq i32 %10, %12
  br i1 %cmp2.not.1, label %for.inc.1, label %for.inc.1.thread

for.inc.1.thread:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.1 = icmp ne i32 %12, 0
  %lnot.ext.1 = zext i1 %tobool.1 to i32
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %lnot.ext.1, ptr %arrayidx.1, align 4
  br label %if.then9

for.inc.1:                                        ; preds = %for.inc
  br i1 %cmp2.not, label %for.inc.1.if.end36_crit_edge, label %for.inc.1.if.then9_crit_edge

for.inc.1.if.then9_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

for.inc.1.if.end36_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then9:                                         ; preds = %for.inc.1.if.then9_crit_edge, %for.inc.1.thread
  %changed.1.170 = phi i32 [ %changed.1, %for.inc.1.thread ], [ 1, %for.inc.1.if.then9_crit_edge ]
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %lor.end, label %if.then9.if.then17_crit_edge

if.then9.if.then17_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.end:                                          ; preds = %if.then9
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %lor.end.if.end19_crit_edge, label %lor.end.if.then17_crit_edge

lor.end.if.then17_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.end.if.end19_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then17:                                        ; preds = %lor.end.if.then17_crit_edge, %if.then9.if.then17_crit_edge
  %call = tail call ptr @snd_mixart_add_ref_pipe(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 1) #5
  %call18 = tail call ptr @snd_mixart_add_ref_pipe(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 1) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %lor.end.if.end19_crit_edge
  %18 = phi i1 [ true, %if.then17 ], [ false, %lor.end.if.end19_crit_edge ]
  %and = and i32 %changed.1.170, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mixart_update_monitoring(ptr noundef %1, i32 noundef 0)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %and24 = and i32 %changed.1.170, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end28_crit_edge, label %if.then26

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mixart_update_monitoring(ptr noundef %1, i32 noundef 1)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  br i1 %18, label %if.end28.if.end36_crit_edge, label %if.then30

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mgr, align 4
  %pipe_in_ana = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 6
  %call32 = tail call i32 @snd_mixart_kill_ref_pipe(ptr noundef %20, ptr noundef %pipe_in_ana, i32 noundef 1) #5
  %21 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mgr, align 4
  %pipe_out_ana = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 7
  %call34 = tail call i32 @snd_mixart_kill_ref_pipe(ptr noundef %22, ptr noundef %pipe_out_ana, i32 noundef 1) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.end28.if.end36_crit_edge, %for.inc.1.if.end36_crit_edge
  %tobool871 = phi i32 [ 1, %if.end28.if.end36_crit_edge ], [ 1, %if.then30 ], [ 0, %for.inc.1.if.end36_crit_edge ]
  %23 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mgr, align 4
  %mixer_mutex38 = getelementptr inbounds %struct.mixart_mgr, ptr %24, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %mixer_mutex38) #5
  ret i32 %tobool871
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_mixart_add_ref_pipe(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mixart_kill_ref_pipe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 754, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mixart_update_playback_stream_level.__UNIQUE_ID_ddebug239, !1, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 799, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mixart_update_capture_stream_level.__UNIQUE_ID_ddebug240, !7, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!10 = !{ptr @snd_mixart_create_mixer.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 1107, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 1115, i32 15}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 1128, i32 16}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 1136, i32 15}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 1143, i32 15}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 1151, i32 16}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 1158, i32 16}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 1166, i32 15}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 1173, i32 16}
!29 = !{ptr @mixart_digital_level, !30, !"mixart_digital_level", i1 false, i1 false}
!30 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 446, i32 18}
!31 = !{ptr @mixart_control_analog_level, !32, !"mixart_control_analog_level", i1 false, i1 false}
!32 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 394, i32 38}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 319, i32 3}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mixart_update_analog_audio_level.__UNIQUE_ID_ddebug238, !34, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!37 = !{ptr @mixart_analog_level, !38, !"mixart_analog_level", i1 false, i1 false}
!38 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 23, i32 18}
!39 = !{ptr @db_scale_analog, !40, !"db_scale_analog", i1 false, i1 false}
!40 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 392, i32 14}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 440, i32 18}
!43 = !{ptr @mixart_control_output_switch, !44, !"mixart_control_output_switch", i1 false, i1 false}
!44 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 438, i32 38}
!45 = !{ptr @snd_mixart_pcm_vol, !46, !"snd_mixart_pcm_vol", i1 false, i1 false}
!46 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 887, i32 38}
!47 = !{ptr @db_scale_digital, !48, !"db_scale_digital", i1 false, i1 false}
!48 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 885, i32 14}
!49 = !{ptr @mixart_control_pcm_switch, !50, !"mixart_control_pcm_switch", i1 false, i1 false}
!50 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 941, i32 38}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 1018, i32 18}
!53 = !{ptr @mixart_control_monitor_vol, !54, !"mixart_control_monitor_vol", i1 false, i1 false}
!54 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 1014, i32 38}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 973, i32 3}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mixart_update_monitoring.__UNIQUE_ID_ddebug241, !56, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 1083, i32 18}
!61 = !{ptr @mixart_control_monitor_sw, !62, !"mixart_control_monitor_sw", i1 false, i1 false}
!62 = !{!"../sound/pci/mixart/mixart_mixer.c", i32 1081, i32 38}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2148825581, i64 2148825586, i64 2148825599, i64 2148825643, i64 2148825677, i64 2148825698}
!73 = !{!"auto-init"}
!74 = !{i64 694053, i64 694070}
!75 = !{!"branch_weights", i32 1, i32 2000}
