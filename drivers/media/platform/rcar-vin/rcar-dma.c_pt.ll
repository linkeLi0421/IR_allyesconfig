; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rcar-vin/rcar-dma.c_pt.bc'
source_filename = "../drivers/media/platform/rcar-vin/rcar-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vin_coeff = type { i16, [24 x i32] }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rvin_dev = type { ptr, ptr, ptr, %struct.video_device, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.v4l2_async_notifier, %struct.rvin_parallel_entity, ptr, i32, %struct.media_pad, %struct.mutex, %struct.vb2_queue, ptr, i32, %struct.spinlock, [3 x %struct.anon.96], %struct.list_head, i32, i32, i8, i32, i32, %struct.v4l2_pix_format, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i64, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rvin_parallel_entity = type { ptr, ptr, i32, %struct.v4l2_fwnode_bus_parallel, i32, i32 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.96 = type { ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.97, i32, i32 }
%union.anon.97 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.rvin_video_format = type { i32, i8 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.88, i16, i16, i16, [10 x i16] }
%union.anon.88 = type { i16 }
%struct.rvin_info = type { i32, i8, i8, i8, i32, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%struct.rvin_group_route = type { i32, i32, i32, i32 }
%struct.rvin_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }

@rvin_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1375, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed stop HW, something is seriously broken\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rvin_stop_streaming\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/platform/rcar-vin/rcar-dma.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rvin_stop_streaming._entry_ptr = internal global ptr @rvin_stop_streaming._entry, section ".printk_index", align 4
@rvin_dma_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&vin->lock\00", [21 x i8] zeroinitializer }, align 32
@rvin_dma_register.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&vin->qlock\00", [20 x i8] zeroinitializer }, align 32
@rvin_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @rvin_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @rvin_buffer_prepare, ptr null, ptr null, ptr @rvin_start_streaming_vq, ptr @rvin_stop_streaming_vq, ptr @rvin_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@rvin_dma_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1461, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to initialize VB2 queue\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rvin_dma_register\00", [46 x i8] zeroinitializer }, align 32
@rvin_dma_register._entry_ptr = internal global ptr @rvin_dma_register._entry, section ".printk_index", align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rcar_vin\00", [23 x i8] zeroinitializer }, align 32
@rvin_dma_register._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.2, i32 1469, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@rvin_dma_register._entry_ptr.13 = internal global ptr @rvin_dma_register._entry.11, section ".printk_index", align 4
@rvin_set_channel_routing.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 1, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rvin_set_channel_routing\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Set IFMD 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@rvin_crop_scale_comp_gen2.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rvin_crop_scale_comp_gen2\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Pre-Clip: %ux%u@%u:%u YS: %d XS: %d Post-Clip: %ux%u@%u:%u\0A\00", [36 x i8] zeroinitializer }, align 32
@vin_coeff_set = internal constant { [31 x %struct.vin_coeff], [772 x i8] } { [31 x %struct.vin_coeff] [%struct.vin_coeff zeroinitializer, %struct.vin_coeff { i16 4096, [24 x i32] [i32 1025024, i32 1025024, i32 157440258, i32 1016, i32 1027, i32 1038146032, i32 2097133, i32 2052, i32 1019345347, i32 1049566, i32 3073, i32 1018383743, i32 2098130, i32 3072, i32 1025812781, i32 2100170, i32 3071, i32 1039532242, i32 2102220, i32 2047, i32 1054280830, i32 1052638, i32 0, i32 1065861174] }, %struct.vin_coeff { i16 4608, [24 x i32] [i32 3145713, i32 3145713, i32 44083656, i32 2098151, i32 2097146, i32 99772, i32 2099164, i32 1023, i32 1045595548, i32 2100180, i32 2, i32 1028888939, i32 1052624, i32 1027, i32 1023716653, i32 3029, i32 1027, i32 1026927847, i32 1072694244, i32 2049, i32 1036416161, i32 1073735680, i32 2048, i32 1047983201] }, %struct.vin_coeff { i16 5120, [24 x i32] [i32 1051619, i32 1051619, i32 80819610, i32 4059, i32 2098157, i32 34733459, i32 4054, i32 2098164, i32 186747, i32 2006, i32 3145723, i32 1049868630, i32 1072694234, i32 1049599, i32 1035245862, i32 1073737705, i32 1048577, i32 1030053102, i32 1073730560, i32 3, i32 1030091958, i32 1029153, i32 1026, i32 1036407934] }, %struct.vin_coeff { i16 5632, [24 x i32] [i32 3037, i32 3037, i32 106009976, i32 1072695258, i32 3043, i32 63064435, i32 1072694233, i32 3049, i32 28511583, i32 1073739743, i32 1049585, i32 247106, i32 1040364, i32 1049591, i32 1053061405, i32 1033216, i32 3145725, i32 1039467761, i32 2074650, i32 3144704, i32 1033206978, i32 3116092, i32 1048576, i32 1035323537] }, %struct.vin_coeff { i16 6144, [24 x i32] [i32 1072694236, i32 1072694236, i32 127001944, i32 1046493, i32 1072695262, i32 87197012, i32 1042403, i32 1072696290, i32 52634950, i32 1038318, i32 2025, i32 21216560, i32 2078720, i32 2030, i32 279825, i32 3121173, i32 2036, i32 1056226542, i32 3115058, i32 1049593, i32 1044714695, i32 2062419, i32 1049597, i32 1038437535] }, %struct.vin_coeff { i16 6656, [24 x i32] [i32 1044448, i32 1044448, i32 141696316, i32 2087911, i32 1047518, i32 106078521, i32 2083824, i32 991, i32 73607470, i32 3126271, i32 1072695267, i32 43231517, i32 3120146, i32 1072696295, i32 19142917, i32 2067497, i32 2029, i32 1071935723, i32 1014854, i32 2034, i32 1057274058, i32 1072658533, i32 2038, i32 1047848104] }, %struct.vin_coeff { i16 7168, [24 x i32] [i32 2085865, i32 2085865, i32 150093094, i32 3129331, i32 2089956, i32 118664483, i32 3123200, i32 1045472, i32 90381595, i32 2070544, i32 1047521, i32 62097677, i32 1018915, i32 995, i32 36956410, i32 1072661563, i32 999, i32 16003300, i32 1069515862, i32 1072696298, i32 289992, i32 1066372210, i32 1072696303, i32 1060409516] }, %struct.vin_coeff { i16 7680, [24 x i32] [i32 2079732, i32 2079732, i32 155341074, i32 2074624, i32 3131373, i32 127054096, i32 1021966, i32 2087910, i32 101912842, i32 1073712160, i32 2090979, i32 77818109, i32 1070566451, i32 1046498, i32 54769901, i32 1067420746, i32 1048547, i32 33814746, i32 1063230561, i32 998, i32 14952645, i32 1059041403, i32 1003, i32 1071923375] }, %struct.vin_coeff { i16 8192, [24 x i32] [i32 1025024, i32 1025024, i32 157440258, i32 1073715212, i32 2078709, i32 135442687, i32 1071616028, i32 2082797, i32 112393466, i32 1068470317, i32 2085864, i32 89344241, i32 1065326655, i32 2089957, i32 67341539, i32 1061135444, i32 2093027, i32 48482513, i32 1057994858, i32 2095076, i32 29616320, i32 1053808768, i32 1048550, i32 12846252] }, %struct.vin_coeff { i16 8704, [24 x i32] [i32 1071619083, i32 1071619083, i32 158489844, i32 1069520920, i32 1073718272, i32 138586353, i32 1066375207, i32 1029111, i32 117633260, i32 1063231543, i32 1033199, i32 97726692, i32 1060088905, i32 2084842, i32 77817049, i32 1056948316, i32 2087911, i32 58954954, i32 1053809775, i32 2090982, i32 41136315, i32 1050673283, i32 2093030, i32 25411753] }, %struct.vin_coeff { i16 9216, [24 x i32] [i32 1067425812, i32 1067425812, i32 159539430, i32 1065327651, i32 1070570506, i32 140680421, i32 1062183985, i32 1072669696, i32 121821409, i32 1059042368, i32 1073722360, i32 102961369, i32 1055901776, i32 1031154, i32 84099280, i32 1053810786, i32 1035244, i32 68379842, i32 1050673267, i32 2085866, i32 50560181, i32 1049632902, i32 2088936, i32 35883173] }, %struct.vin_coeff { i16 9728, [24 x i32] [i32 1063233566, i32 1063233566, i32 157440218, i32 1061137451, i32 1066378258, i32 142774488, i32 1057995832, i32 1068475400, i32 124963029, i32 1055902791, i32 1070573568, i32 108197070, i32 1053811798, i32 1072672762, i32 89332934, i32 1051721830, i32 1073724403, i32 74659003, i32 1050680439, i32 1034222, i32 59984046, i32 1050690694, i32 1037291, i32 45306017] }, %struct.vin_coeff { i16 10240, [24 x i32] [i32 1060090918, i32 1060090918, i32 155341006, i32 1057996850, i32 1062186011, i32 140674253, i32 1055903808, i32 1065330705, i32 126004425, i32 1053812812, i32 1067427847, i32 111335620, i32 1051721819, i32 1069526016, i32 95614140, i32 1051727978, i32 1071625210, i32 79890612, i32 1051738231, i32 1072675828, i32 66264232, i32 1052797060, i32 1032178, i32 50535582] }, %struct.vin_coeff { i16 10752, [24 x i32] [i32 1057997869, i32 1057997869, i32 151142596, i32 1055904825, i32 1060091938, i32 139619522, i32 1054861381, i32 1062187032, i32 125998271, i32 1052770385, i32 1064283151, i32 112374971, i32 1052776543, i32 1066380295, i32 98749620, i32 1052784747, i32 1068477440, i32 84076716, i32 1053842551, i32 1070576635, i32 70447267, i32 1055949954, i32 1071627254, i32 57866392] }, %struct.vin_coeff { i16 11264, [24 x i32] [i32 1055906865, i32 1055906865, i32 149043384, i32 1054862397, i32 1057998888, i32 136468665, i32 1053818953, i32 1059045406, i32 124942518, i32 1053824085, i32 1061140501, i32 113415346, i32 1053832288, i32 1063236621, i32 100838572, i32 1055936620, i32 1065332742, i32 88260772, i32 1058042998, i32 1067430912, i32 74631325, i32 1060150400, i32 1069529084, i32 62049428] }, %struct.vin_coeff { i16 11776, [24 x i32] [i32 1055910967, i32 1055910967, i32 142745776, i32 1054867521, i32 1056955437, i32 133317806, i32 1054872652, i32 1058000931, i32 123886765, i32 1055927383, i32 1059047450, i32 113407145, i32 1056983137, i32 1061141523, i32 100829350, i32 1059088491, i32 1063237644, i32 89300126, i32 1061194868, i32 1064286213, i32 78818454, i32 1065397374, i32 1066383360, i32 67284110] }, %struct.vin_coeff { i16 12288, [24 x i32] [i32 1055916090, i32 1055916090, i32 138547366, i32 1055920197, i32 1056959538, i32 129116327, i32 1056974926, i32 1058004009, i32 120734884, i32 1058029656, i32 1058001952, i32 111302818, i32 1060133986, i32 1060096024, i32 101869725, i32 1062240361, i32 1061142545, i32 91391126, i32 1065394290, i32 1062191114, i32 80907408, i32 1069596795, i32 1064287236, i32 71471240] }, %struct.vin_coeff { i16 12800, [24 x i32] [i32 1056968766, i32 1056968766, i32 133299358, i32 1058022471, i32 1056964661, i32 125965469, i32 1059077199, i32 1058009132, i32 118631580, i32 1061180504, i32 1058006052, i32 110248089, i32 1063284833, i32 1059050525, i32 100813975, i32 1066438760, i32 1060097046, i32 91382928, i32 1069592688, i32 1061144591, i32 82996362, i32 53367, i32 1062192137, i32 73561220] }, %struct.vin_coeff { i16 13312, [24 x i32] [i32 1059070016, i32 1059070016, i32 128051352, i32 1060123721, i32 1058016312, i32 121765016, i32 1062227024, i32 1058013231, i32 115479701, i32 1064330329, i32 1059057704, i32 108143762, i32 1067483232, i32 1059054625, i32 99759247, i32 1070636135, i32 1059052569, i32 92425353, i32 48238, i32 1060098068, i32 82989190, i32 4250740, i32 1061145613, i32 75652223] }, %struct.vin_coeff { i16 13824, [24 x i32] [i32 1061171266, i32 1061171266, i32 123852944, i32 1062225992, i32 1060117563, i32 117567632, i32 1065376848, i32 1059064883, i32 111280271, i32 1067480152, i32 1058013227, i32 106040461, i32 1070633054, i32 1059058724, i32 98705545, i32 44133, i32 1059055645, i32 92419203, i32 3198058, i32 1060101144, i32 82984065, i32 8448113, i32 1060099090, i32 75645052] }, %struct.vin_coeff { i16 14336, [24 x i32] [i32 1063272515, i32 1063272515, i32 119654538, i32 1065374794, i32 1062218812, i32 114415754, i32 1068525649, i32 1060117557, i32 109176969, i32 1070629974, i32 1060112431, i32 101842056, i32 40029, i32 1059061799, i32 97650820, i32 3192931, i32 1060107297, i32 90314880, i32 7394408, i32 1060104219, i32 84026492, i32 12643439, i32 1060102165, i32 77736055] }, %struct.vin_coeff { i16 14848, [24 x i32] [i32 1066421316, i32 1066421316, i32 115456132, i32 1068523594, i32 1064319038, i32 110217349, i32 1071674449, i32 1062218806, i32 107074691, i32 36949, i32 1061165105, i32 100789377, i32 3188827, i32 1060113450, i32 95548544, i32 7389281, i32 1060110372, i32 90309754, i32 11589735, i32 1061155870, i32 84020343, i32 15791211, i32 1060105241, i32 77730932] }, %struct.vin_coeff { i16 15360, [24 x i32] [i32 1068522563, i32 1068522563, i32 113356926, i32 1071672395, i32 1066413119, i32 109166721, i32 33871, i32 1064319032, i32 103926909, i32 3184725, i32 1063265331, i32 97637502, i32 6337625, i32 1062212654, i32 92398715, i32 10537055, i32 1061161000, i32 87158904, i32 14737508, i32 1060110369, i32 84016243, i32 11598954, i32 1061155869, i32 77727859] }, %struct.vin_coeff { i16 15872, [24 x i32] [i32 1071670340, i32 1071670340, i32 109158522, i32 30793, i32 1069568063, i32 104968314, i32 2134093, i32 1067466810, i32 99729530, i32 6333523, i32 1065365556, i32 96585848, i32 9484376, i32 1064312879, i32 91346039, i32 13684829, i32 1062213673, i32 87154803, i32 17884258, i32 1062209573, i32 81912945, i32 22085733, i32 1061158943, i32 77721709] }, %struct.vin_coeff { i16 16384, [24 x i32] [i32 28740, i32 28740, i32 106009718, i32 2131016, i32 1071668287, i32 102868086, i32 5281869, i32 1069567034, i32 98676853, i32 8432722, i32 1067465781, i32 94484597, i32 12632150, i32 1065365552, i32 90293363, i32 16831579, i32 1064312875, i32 86103151, i32 21031008, i32 1063261223, i32 80860270, i32 25231460, i32 1062209570, i32 76668011] }, %struct.vin_coeff { i16 20480, [24 x i32] [i32 17867842, i32 17867842, i32 89216094, i32 21016645, i32 14719039, i32 87119967, i32 23117895, i32 12618812, i32 85025886, i32 26266698, i32 9470009, i32 82929759, i32 29416524, i32 7369782, i32 80834654, i32 33613904, i32 5269555, i32 78739547, i32 36762707, i32 3169328, i32 76644442, i32 40960086, i32 1070125, i32 74547289] }, %struct.vin_coeff { i16 24576, [24 x i32] [i32 29408320, i32 29408320, i32 79769682, i32 31508545, i32 27309117, i32 79771729, i32 34655300, i32 25208892, i32 77673555, i32 36755525, i32 23109690, i32 76627026, i32 39903303, i32 21010488, i32 74530898, i32 42003529, i32 18910263, i32 72436816, i32 45151307, i32 16811061, i32 71388240, i32 47251532, i32 14711859, i32 70341711] }, %struct.vin_coeff { i16 28672, [24 x i32] [i32 36751422, i32 36751422, i32 74521676, i32 38850623, i32 34653244, i32 74522699, i32 40949824, i32 33601596, i32 72426571, i32 43048002, i32 31503418, i32 71377996, i32 45147203, i32 29405240, i32 71379019, i32 47246404, i32 28353592, i32 69283914, i32 49345605, i32 26255414, i32 69284937, i32 51443783, i32 24157236, i32 69285960] }, %struct.vin_coeff { i16 -32768, [24 x i32] [i32 41996349, i32 41996349, i32 70323272, i32 44094526, i32 40945724, i32 70324295, i32 45145150, i32 38848570, i32 70325319, i32 47243328, i32 37797946, i32 69276742, i32 48293952, i32 35699769, i32 68229191, i32 50391106, i32 34649144, i32 67183685, i32 51441731, i32 33599543, i32 67182661, i32 53539908, i32 31501366, i32 66135109] }, %struct.vin_coeff { i16 -4097, [24 x i32] [i32 54582330, i32 54582330, i32 61926464, i32 54583354, i32 53534777, i32 62976062, i32 55631931, i32 53533753, i32 62975038, i32 55632954, i32 52485176, i32 62977086, i32 56681531, i32 52484153, i32 61927486, i32 56682555, i32 51435576, i32 62979131, i32 57731131, i32 51434553, i32 60880957, i32 57731132, i32 50385976, i32 61930556] }], [772 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@rvin_capture_start.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rvin_capture_start\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Starting to capture\0A\00", [43 x i8] zeroinitializer }, align 32
@rvin_fill_hw_slot.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rvin_fill_hw_slot\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Filling HW slot: %d type: %d buffer: %p\0A\00", [55 x i8] zeroinitializer }, align 32
@rvin_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 793, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid pixelformat (0x%x)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rvin_setup\00", [21 x i8] zeroinitializer }, align 32
@rvin_setup._entry_ptr = internal global ptr @rvin_setup._entry, section ".printk_index", align 4
@rvin_buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1113, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buffer too small (%lu < %lu)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rvin_buffer_prepare\00", [44 x i8] zeroinitializer }, align 32
@rvin_buffer_prepare._entry_ptr = internal global ptr @rvin_buffer_prepare._entry, section ".printk_index", align 4
@rvin_irq.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rvin_irq\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IRQ while state stopped\0A\00", [39 x i8] zeroinitializer }, align 32
@rvin_irq.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.27, ptr @.str.2, ptr @.str.29, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Starting sync slot: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@rvin_irq.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.27, ptr @.str.2, ptr @.str.30, i8 1, i8 2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Capture start synced!\0A\00", [41 x i8] zeroinitializer }, align 32
@rvin_irq.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.27, ptr @.str.2, ptr @.str.31, i8 1, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dropping frame %u\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 825770306, i64 1111967570, i64 1195528775, i64 1196573255, i64 1497715271]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 5, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 5, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.34 = internal global [12 x i64] [i64 10, i64 32, i64 4106, i64 8193, i64 8198, i64 8207, i64 8209, i64 8216, i64 12289, i64 12290, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.35 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.36 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.38 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.39 = internal global [12 x i64] [i64 10, i64 32, i64 4106, i64 8193, i64 8198, i64 8207, i64 8209, i64 8216, i64 12289, i64 12290, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.40 = internal global [16 x i64] [i64 14, i64 32, i64 825770306, i64 842094158, i64 875713089, i64 875713112, i64 892424769, i64 892424792, i64 909203022, i64 1111967570, i64 1195528775, i64 1196573255, i64 1346520914, i64 1448695129, i64 1497715271, i64 1498831189]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 875713089, i64 892424769]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 842094158, i64 909203022]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1375, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1437, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1440, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [10 x i8] c"rvin_qops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1410, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1461, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1467, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1469, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1525, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 577, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"vin_coeff_set\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 169, i32 31 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 968, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 943, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 792, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1112, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1017, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1031, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1035, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [46 x i8] c"../drivers/media/platform/rcar-vin/rcar-dma.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1060, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @rvin_buffer_prepare._entry, ptr @rvin_buffer_prepare._entry_ptr, ptr @rvin_dma_register._entry, ptr @rvin_dma_register._entry.11, ptr @rvin_dma_register._entry_ptr, ptr @rvin_dma_register._entry_ptr.13, ptr @rvin_setup._entry, ptr @rvin_setup._entry_ptr, ptr @rvin_stop_streaming._entry, ptr @rvin_stop_streaming._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rvin_dma_register.__key, ptr @.str.5, ptr @rvin_dma_register.__key.6, ptr @.str.7, ptr @rvin_qops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @vin_coeff_set, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_dma_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_dma_register.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_dma_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_dma_register._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vin_coeff_set to i32), i32 3100, i32 3872, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rvin_buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rvin_crop_scale_comp(ptr noundef %vin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %crop = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 24
  %0 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crop, align 4
  %base.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !81
  %5 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %crop, align 4
  %width = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 24, i32 2
  %7 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width, align 4
  %add = add i32 %6, -1
  %sub = add i32 %add, %8
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %sub) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %11) #7, !srcloc !81
  %top = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 24, i32 1
  %12 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %top, align 4
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %16) #7, !srcloc !81
  %17 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %top, align 4
  %height = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 24, i32 3
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %add8 = add i32 %18, -1
  %sub9 = add i32 %add8, %20
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %sub9) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %23) #7, !srcloc !81
  %info = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 2
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.not = icmp eq i32 %27, 3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rvin_crop_scale_comp_gen2(ptr noundef %vin)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pixelformat = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 2
  %28 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pixelformat, align 4
  %call = tail call ptr @rvin_format_from_pixel(ptr noundef %vin, i32 noundef %29) #7
  %bytesperline = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 4
  %30 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bytesperline, align 4
  %bpp = getelementptr inbounds %struct.rvin_video_format, ptr %call, i32 0, i32 1
  %32 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bpp, align 4
  %conv = zext i8 %33 to i32
  %div = udiv i32 %31, %conv
  %34 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pixelformat, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %35, label %if.end.sw.epilog_crit_edge [
    i32 825770306, label %if.end.sw.bb_crit_edge
    i32 1196573255, label %if.end.sw.bb_crit_edge40
    i32 1195528775, label %if.end.sw.bb_crit_edge41
    i32 1111967570, label %if.end.sw.bb_crit_edge42
    i32 1497715271, label %if.end.sw.bb_crit_edge43
  ]

if.end.sw.bb_crit_edge43:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge42:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge41:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge40:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge40, %if.end.sw.bb_crit_edge41, %if.end.sw.bb_crit_edge42, %if.end.sw.bb_crit_edge43
  %div1331 = lshr i32 %div, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %stride.0 = phi i32 [ %div, %if.end.sw.epilog_crit_edge ], [ %div1331, %sw.bb ]
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %38, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %39 = tail call i32 @llvm.bswap.i32(i32 %stride.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %39) #7, !srcloc !81
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rvin_crop_scale_comp_gen2(ptr noundef readonly %vin) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %crop = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 24
  %height = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 24, i32 3
  %0 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %height, align 4
  %format = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23
  %field = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 3
  %2 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %3, label %entry.if.end_crit_edge [
    i32 4, label %entry.if.then_crit_edge
    i32 8, label %entry.if.then_crit_edge160
    i32 9, label %entry.if.then_crit_edge161
    i32 5, label %entry.if.then_crit_edge162
    i32 6, label %entry.if.then_crit_edge163
  ]

entry.if.then_crit_edge163:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge162:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge161:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge160:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge160, %entry.if.then_crit_edge161, %entry.if.then_crit_edge162, %entry.if.then_crit_edge163
  %mul = shl i32 %1, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %crop_height.0 = phi i32 [ %mul, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %height16 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 25, i32 3
  %5 = ptrtoint ptr %height16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %crop_height.0, i32 %6)
  %cmp17.not = icmp eq i32 %crop_height.0, %6
  br i1 %cmp17.not, label %if.end.if.end22_crit_edge, label %if.then18

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mul19 = shl i32 %crop_height.0, 12
  %div = udiv i32 %mul19, %6
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end.if.end22_crit_edge
  %ys.0 = phi i32 [ %div, %if.then18 ], [ 0, %if.end.if.end22_crit_edge ]
  %base.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 1
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %ys.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #7, !srcloc !81
  %width = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 24, i32 2
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  %width25 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 25, i32 2
  %12 = ptrtoint ptr %width25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp26.not = icmp eq i32 %11, %13
  br i1 %cmp26.not, label %if.end22.if.end34.thread_crit_edge, label %if.end34

if.end22.if.end34.thread_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.thread

if.end34:                                         ; preds = %if.end22
  %mul30 = shl i32 %11, 12
  %div33 = udiv i32 %mul30, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %mul30)
  %cmp35.not = icmp ugt i32 %13, %mul30
  %14 = tail call i32 @llvm.umax.i32(i32 %div33, i32 2048)
  br i1 %cmp35.not, label %if.end34.if.end34.thread_crit_edge, label %if.end34._crit_edge

if.end34._crit_edge:                              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %15

if.end34.if.end34.thread_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.thread

if.end34.thread:                                  ; preds = %if.end34.if.end34.thread_crit_edge, %if.end22.if.end34.thread_crit_edge
  br label %15

15:                                               ; preds = %if.end34.thread, %if.end34._crit_edge
  %16 = phi i32 [ 0, %if.end34.thread ], [ %14, %if.end34._crit_edge ]
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i141 = getelementptr i8, ptr %18, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %19) #7, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %16)
  %cmp39 = icmp ult i32 %16, 4096
  %mul41 = zext i1 %cmp39 to i32
  %spec.select = shl i32 %16, %mul41
  %conv = trunc i32 %spec.select to i16
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %inc.i159, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 31
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %15
  %inc.i159 = phi i32 [ 1, %15 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i157158 = phi ptr [ @vin_coeff_set, %15 ], [ %arrayidx.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [31 x %struct.vin_coeff], ptr @vin_coeff_set, i32 0, i32 %inc.i159
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %conv)
  %cmp2.i = icmp ugt i16 %21, %conv
  br i1 %cmp2.i, label %for.body.i.for.end.i_crit_edge, label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %arrayidx.lcssa.i = phi ptr [ %arrayidx.i, %for.body.i.for.end.i_crit_edge ], [ getelementptr inbounds ([31 x %struct.vin_coeff], ptr @vin_coeff_set, i32 0, i32 30, i32 0), %for.cond.i.for.end.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %arrayidx.i157158, null
  br i1 %tobool.not.i, label %for.end.i.rvin_set_coeff.exit_crit_edge, label %land.lhs.true.i

for.end.i.rvin_set_coeff.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rvin_set_coeff.exit

land.lhs.true.i:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i = and i32 %spec.select, 65535
  %22 = ptrtoint ptr %arrayidx.i157158 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i157158, align 4
  %conv6.i = zext i16 %23 to i32
  %sub.i = sub nsw i32 %conv4.i, %conv6.i
  %24 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.lcssa.i, align 4
  %conv8.i = zext i16 %25 to i32
  %sub10.i = sub nsw i32 %conv8.i, %conv4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub10.i)
  %cmp11.i = icmp slt i32 %sub.i, %sub10.i
  %spec.select.i = select i1 %cmp11.i, ptr %arrayidx.i157158, ptr %arrayidx.lcssa.i
  br label %rvin_set_coeff.exit

rvin_set_coeff.exit:                              ; preds = %land.lhs.true.i, %for.end.i.rvin_set_coeff.exit_crit_edge
  %p_set.2.i = phi ptr [ %arrayidx.lcssa.i, %for.end.i.rvin_set_coeff.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %coeff_set.i = getelementptr inbounds %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1
  %26 = ptrtoint ptr %coeff_set.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %coeff_set.i, align 4
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %30) #7, !srcloc !81
  %arrayidx17.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx17.i, align 4
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr.i118.i = getelementptr i8, ptr %34, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118.i, i32 %35) #7, !srcloc !81
  %arrayidx19.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx19.i, align 4
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %add.ptr.i120.i = getelementptr i8, ptr %39, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120.i, i32 %40) #7, !srcloc !81
  %arrayidx21.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx21.i, align 4
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %add.ptr.i122.i = getelementptr i8, ptr %44, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122.i, i32 %45) #7, !srcloc !81
  %arrayidx23.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 4
  %46 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx23.i, align 4
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr.i124.i = getelementptr i8, ptr %49, i32 148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %50 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124.i, i32 %50) #7, !srcloc !81
  %arrayidx25.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 5
  %51 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx25.i, align 4
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr.i126.i = getelementptr i8, ptr %54, i32 152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126.i, i32 %55) #7, !srcloc !81
  %arrayidx27.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 6
  %56 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx27.i, align 4
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr.i128.i = getelementptr i8, ptr %59, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %60 = tail call i32 @llvm.bswap.i32(i32 %57) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.i, i32 %60) #7, !srcloc !81
  %arrayidx29.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 7
  %61 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx29.i, align 4
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %add.ptr.i130.i = getelementptr i8, ptr %64, i32 164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %65 = tail call i32 @llvm.bswap.i32(i32 %62) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130.i, i32 %65) #7, !srcloc !81
  %arrayidx31.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 8
  %66 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx31.i, align 4
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i, align 4
  %add.ptr.i132.i = getelementptr i8, ptr %69, i32 168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %70 = tail call i32 @llvm.bswap.i32(i32 %67) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132.i, i32 %70) #7, !srcloc !81
  %arrayidx33.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 9
  %71 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx33.i, align 4
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i, align 4
  %add.ptr.i134.i = getelementptr i8, ptr %74, i32 176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %75 = tail call i32 @llvm.bswap.i32(i32 %72) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134.i, i32 %75) #7, !srcloc !81
  %arrayidx35.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 10
  %76 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx35.i, align 4
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 4
  %add.ptr.i136.i = getelementptr i8, ptr %79, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %77) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136.i, i32 %80) #7, !srcloc !81
  %arrayidx37.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 11
  %81 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx37.i, align 4
  %83 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i, align 4
  %add.ptr.i138.i = getelementptr i8, ptr %84, i32 184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %85 = tail call i32 @llvm.bswap.i32(i32 %82) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138.i, i32 %85) #7, !srcloc !81
  %arrayidx39.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 12
  %86 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx39.i, align 4
  %88 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i, align 4
  %add.ptr.i140.i = getelementptr i8, ptr %89, i32 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %90 = tail call i32 @llvm.bswap.i32(i32 %87) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140.i, i32 %90) #7, !srcloc !81
  %arrayidx41.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 13
  %91 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx41.i, align 4
  %93 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base.i, align 4
  %add.ptr.i142.i = getelementptr i8, ptr %94, i32 196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %95 = tail call i32 @llvm.bswap.i32(i32 %92) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142.i, i32 %95) #7, !srcloc !81
  %arrayidx43.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 14
  %96 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx43.i, align 4
  %98 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i, align 4
  %add.ptr.i144.i = getelementptr i8, ptr %99, i32 200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %100 = tail call i32 @llvm.bswap.i32(i32 %97) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144.i, i32 %100) #7, !srcloc !81
  %arrayidx45.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 15
  %101 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx45.i, align 4
  %103 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i, align 4
  %add.ptr.i146.i = getelementptr i8, ptr %104, i32 208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %105 = tail call i32 @llvm.bswap.i32(i32 %102) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146.i, i32 %105) #7, !srcloc !81
  %arrayidx47.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 16
  %106 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx47.i, align 4
  %108 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base.i, align 4
  %add.ptr.i148.i = getelementptr i8, ptr %109, i32 212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %110 = tail call i32 @llvm.bswap.i32(i32 %107) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148.i, i32 %110) #7, !srcloc !81
  %arrayidx49.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 17
  %111 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx49.i, align 4
  %113 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i, align 4
  %add.ptr.i150.i = getelementptr i8, ptr %114, i32 216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %115 = tail call i32 @llvm.bswap.i32(i32 %112) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150.i, i32 %115) #7, !srcloc !81
  %arrayidx51.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 18
  %116 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx51.i, align 4
  %118 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i, align 4
  %add.ptr.i152.i = getelementptr i8, ptr %119, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %120 = tail call i32 @llvm.bswap.i32(i32 %117) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152.i, i32 %120) #7, !srcloc !81
  %arrayidx53.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 19
  %121 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx53.i, align 4
  %123 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base.i, align 4
  %add.ptr.i154.i = getelementptr i8, ptr %124, i32 228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %125 = tail call i32 @llvm.bswap.i32(i32 %122) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154.i, i32 %125) #7, !srcloc !81
  %arrayidx55.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 20
  %126 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx55.i, align 4
  %128 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %base.i, align 4
  %add.ptr.i156.i = getelementptr i8, ptr %129, i32 232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %130 = tail call i32 @llvm.bswap.i32(i32 %127) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156.i, i32 %130) #7, !srcloc !81
  %arrayidx57.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 21
  %131 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx57.i, align 4
  %133 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base.i, align 4
  %add.ptr.i158.i = getelementptr i8, ptr %134, i32 240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %135 = tail call i32 @llvm.bswap.i32(i32 %132) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158.i, i32 %135) #7, !srcloc !81
  %arrayidx59.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 22
  %136 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx59.i, align 4
  %138 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i, align 4
  %add.ptr.i160.i = getelementptr i8, ptr %139, i32 244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %140 = tail call i32 @llvm.bswap.i32(i32 %137) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160.i, i32 %140) #7, !srcloc !81
  %arrayidx61.i = getelementptr %struct.vin_coeff, ptr %p_set.2.i, i32 0, i32 1, i32 23
  %141 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx61.i, align 4
  %143 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %base.i, align 4
  %add.ptr.i162.i = getelementptr i8, ptr %144, i32 248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %145 = tail call i32 @llvm.bswap.i32(i32 %142) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162.i, i32 %145) #7, !srcloc !81
  %146 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %147, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 0) #7, !srcloc !81
  %148 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %base.i, align 4
  %add.ptr.i145 = getelementptr i8, ptr %149, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 0) #7, !srcloc !81
  %150 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %format, align 4
  %sub = add i32 %151, -1
  %152 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base.i, align 4
  %add.ptr.i147 = getelementptr i8, ptr %153, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %154 = tail call i32 @llvm.bswap.i32(i32 %sub) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %154) #7, !srcloc !81
  %155 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %field, align 4
  %157 = zext i32 %156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %156, label %if.else [
    i32 4, label %rvin_set_coeff.exit.if.then69_crit_edge
    i32 8, label %rvin_set_coeff.exit.if.then69_crit_edge164
    i32 9, label %rvin_set_coeff.exit.if.then69_crit_edge165
    i32 5, label %rvin_set_coeff.exit.if.then69_crit_edge166
    i32 6, label %rvin_set_coeff.exit.if.then69_crit_edge167
  ]

rvin_set_coeff.exit.if.then69_crit_edge167:       ; preds = %rvin_set_coeff.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then69

rvin_set_coeff.exit.if.then69_crit_edge166:       ; preds = %rvin_set_coeff.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then69

rvin_set_coeff.exit.if.then69_crit_edge165:       ; preds = %rvin_set_coeff.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then69

rvin_set_coeff.exit.if.then69_crit_edge164:       ; preds = %rvin_set_coeff.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then69

rvin_set_coeff.exit.if.then69_crit_edge:          ; preds = %rvin_set_coeff.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then69

if.then69:                                        ; preds = %rvin_set_coeff.exit.if.then69_crit_edge, %rvin_set_coeff.exit.if.then69_crit_edge164, %rvin_set_coeff.exit.if.then69_crit_edge165, %rvin_set_coeff.exit.if.then69_crit_edge166, %rvin_set_coeff.exit.if.then69_crit_edge167
  %height71 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 1
  %158 = ptrtoint ptr %height71 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %height71, align 4
  %div72139 = lshr i32 %159, 1
  %sub73 = add nsw i32 %div72139, -1
  %160 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %base.i, align 4
  %add.ptr.i149 = getelementptr i8, ptr %161, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %162 = tail call i32 @llvm.bswap.i32(i32 %sub73) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 %162) #7, !srcloc !81
  br label %do.body

if.else:                                          ; preds = %rvin_set_coeff.exit
  call void @__sanitizer_cov_trace_pc() #9
  %height75 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 1
  %163 = ptrtoint ptr %height75 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %height75, align 4
  %sub76 = add i32 %164, -1
  %165 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base.i, align 4
  %add.ptr.i151 = getelementptr i8, ptr %166, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %167 = tail call i32 @llvm.bswap.i32(i32 %sub76) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 %167) #7, !srcloc !81
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_crop_scale_comp_gen2.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_crop_scale_comp_gen2, %if.then80)) #7
          to label %do.end [label %if.then80], !srcloc !82

if.then80:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %168 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %vin, align 8
  %170 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %width, align 4
  %172 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %height, align 4
  %174 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %crop, align 4
  %top = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 24, i32 1
  %176 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %top, align 4
  %178 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %format, align 4
  %height90 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 1
  %180 = ptrtoint ptr %height90 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %height90, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_crop_scale_comp_gen2.__UNIQUE_ID_ddebug299, ptr noundef %169, ptr noundef nonnull @.str.17, i32 noundef %171, i32 noundef %173, i32 noundef %175, i32 noundef %177, i32 noundef %ys.0, i32 noundef %spec.select, i32 noundef %179, i32 noundef %181, i32 noundef 0, i32 noundef 0) #7
  br label %do.end

do.end:                                           ; preds = %if.then80, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rvin_format_from_pixel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rvin_start_streaming(ptr noundef %vin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rvin_set_stream(ptr noundef %vin, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1:                                         ; preds = %entry
  %qlock = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 15
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #7
  %sequence = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 18
  %0 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sequence, align 8
  %call6 = tail call fastcc i32 @rvin_capture_start(ptr noundef %vin)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body1.if.end10_crit_edge, label %if.then8

do.body1.if.end10_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call fastcc i32 @rvin_set_stream(ptr noundef %vin, i32 noundef 0)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body1.if.end10_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end10 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rvin_set_stream(ptr noundef %vin, i32 noundef %on) unnamed_addr #0 align 64 {
entry:
  %fmt.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %use_mc = getelementptr inbounds %struct.rvin_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %use_mc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_mc, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %subdev = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subdev, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.else

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.then
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %video, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.else.if.end21.thread_crit_edge, label %land.lhs.true

if.else.if.end21.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.thread

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_stream, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %land.lhs.true.if.end21.thread_crit_edge, label %if.else8

land.lhs.true.if.end21.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.thread

if.else8:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.else8.if.else15_crit_edge, label %land.lhs.true10

if.else8.if.else15_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15

land.lhs.true10:                                  ; preds = %if.else8
  %s_stream11 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_stream11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_stream11, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %land.lhs.true10.if.else15_crit_edge, label %land.lhs.true10.if.end21_crit_edge

land.lhs.true10.if.end21_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true10.if.else15_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true10.if.else15_crit_edge, %if.else8.if.else15_crit_edge
  br label %if.end21

if.end21:                                         ; preds = %if.else15, %land.lhs.true10.if.end21_crit_edge
  %.sink = phi ptr [ %11, %if.else15 ], [ %14, %land.lhs.true10.if.end21_crit_edge ]
  %call19 = tail call i32 %.sink(ptr noundef nonnull %5, i32 noundef %on) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call19)
  %cmp = icmp eq i32 %call19, -515
  br i1 %cmp, label %if.end21.if.end21.thread_crit_edge, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21.if.end21.thread_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.thread

if.end21.thread:                                  ; preds = %if.end21.if.end21.thread_crit_edge, %land.lhs.true.if.end21.thread_crit_edge, %if.else.if.end21.thread_crit_edge
  br label %cleanup

if.end22:                                         ; preds = %entry
  %pad23 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 10
  %call24 = tail call ptr @media_entity_remote_pad(ptr noundef %pad23) #7
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %entity = getelementptr inbounds %struct.media_pad, ptr %call24, i32 0, i32 1
  %15 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entity, align 4
  %tobool29.not = icmp eq ptr %16, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool35.not = icmp eq i32 %on, 0
  br i1 %tobool35.not, label %if.then36, label %if.end69

if.then36:                                        ; preds = %if.end27
  %vdev = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3
  tail call void @media_pipeline_stop(ptr noundef %vdev) #7
  br i1 %tobool29.not, label %if.then36.cleanup_crit_edge, label %if.else42

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else42:                                        ; preds = %if.then36
  %ops43 = getelementptr inbounds %struct.v4l2_subdev, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %ops43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops43, align 4
  %video44 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %video44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %video44, align 4
  %tobool45.not = icmp eq ptr %20, null
  br i1 %tobool45.not, label %if.else42.cleanup_crit_edge, label %land.lhs.true46

if.else42.cleanup_crit_edge:                      ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true46:                                  ; preds = %if.else42
  %s_stream49 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %s_stream49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_stream49, align 4
  %tobool50.not = icmp eq ptr %22, null
  br i1 %tobool50.not, label %land.lhs.true46.cleanup_crit_edge, label %if.else52

land.lhs.true46.cleanup_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else52:                                        ; preds = %land.lhs.true46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool53.not = icmp eq ptr %23, null
  br i1 %tobool53.not, label %if.else52.if.else60_crit_edge, label %land.lhs.true54

if.else52.if.else60_crit_edge:                    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else60

land.lhs.true54:                                  ; preds = %if.else52
  %s_stream55 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %s_stream55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_stream55, align 4
  %tobool56.not = icmp eq ptr %25, null
  br i1 %tobool56.not, label %land.lhs.true54.if.else60_crit_edge, label %if.then57

land.lhs.true54.if.else60_crit_edge:              ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else60

if.then57:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #9
  %call59 = tail call i32 %25(ptr noundef nonnull %16, i32 noundef 0) #7
  br label %cleanup

if.else60:                                        ; preds = %land.lhs.true54.if.else60_crit_edge, %if.else52.if.else60_crit_edge
  %call64 = tail call i32 %22(ptr noundef nonnull %16, i32 noundef 0) #7
  br label %cleanup

if.end69:                                         ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt.i) #7
  %26 = getelementptr inbounds i8, ptr %fmt.i, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 80)
  %28 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %fmt.i, align 4
  %index.i = getelementptr inbounds %struct.media_pad, ptr %call24, i32 0, i32 2
  %29 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %index.i, align 4
  %conv.i = zext i16 %30 to i32
  %pad1.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 1
  %31 = ptrtoint ptr %pad1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.i, ptr %pad1.i, align 4
  br i1 %tobool29.not, label %if.end69.rvin_mc_validate_format.exit.thread_crit_edge, label %if.else.i

if.end69.rvin_mc_validate_format.exit.thread_crit_edge: ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %rvin_mc_validate_format.exit.thread

if.else.i:                                        ; preds = %if.end69
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %16, i32 0, i32 6
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  %pad2.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %pad2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pad2.i, align 4
  %tobool3.not.i = icmp eq ptr %35, null
  br i1 %tobool3.not.i, label %if.else.i.rvin_mc_validate_format.exit.thread_crit_edge, label %land.lhs.true.i

if.else.i.rvin_mc_validate_format.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rvin_mc_validate_format.exit.thread

land.lhs.true.i:                                  ; preds = %if.else.i
  %get_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %get_fmt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_fmt.i, align 4
  %tobool6.not.i = icmp eq ptr %37, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.rvin_mc_validate_format.exit.thread_crit_edge, label %if.else8.i

land.lhs.true.i.rvin_mc_validate_format.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rvin_mc_validate_format.exit.thread

if.else8.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool9.not.i = icmp eq ptr %38, null
  br i1 %tobool9.not.i, label %if.else8.i.if.else15.i_crit_edge, label %land.lhs.true10.i

if.else8.i.if.else15.i_crit_edge:                 ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15.i

land.lhs.true10.i:                                ; preds = %if.else8.i
  %get_fmt11.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %get_fmt11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_fmt11.i, align 4
  %tobool12.not.i = icmp eq ptr %40, null
  br i1 %tobool12.not.i, label %land.lhs.true10.i.if.else15.i_crit_edge, label %land.lhs.true10.i.if.end21.i_crit_edge

land.lhs.true10.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

land.lhs.true10.i.if.else15.i_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15.i

if.else15.i:                                      ; preds = %land.lhs.true10.i.if.else15.i_crit_edge, %if.else8.i.if.else15.i_crit_edge
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else15.i, %land.lhs.true10.i.if.end21.i_crit_edge
  %.sink.i = phi ptr [ %37, %if.else15.i ], [ %40, %land.lhs.true10.i.if.end21.i_crit_edge ]
  %call19.i = call i32 %.sink.i(ptr noundef nonnull %16, ptr noundef null, ptr noundef nonnull %fmt.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool22.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end21.i.rvin_mc_validate_format.exit.thread_crit_edge

if.end21.i.rvin_mc_validate_format.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rvin_mc_validate_format.exit.thread

if.end24.i:                                       ; preds = %if.end21.i
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 2
  %41 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %code.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %42, label %if.end24.i.rvin_mc_validate_format.exit.thread_crit_edge [
    i32 8209, label %if.end24.i.sw.epilog.i_crit_edge
    i32 8207, label %if.end24.i.sw.epilog.i_crit_edge202
    i32 8198, label %if.end24.i.sw.epilog.i_crit_edge203
    i32 8216, label %if.end24.i.sw.epilog.i_crit_edge204
    i32 4106, label %if.end24.i.sw.epilog.i_crit_edge205
    i32 12289, label %sw.bb25.i
    i32 12307, label %sw.bb30.i
    i32 12290, label %sw.bb37.i
    i32 12308, label %sw.bb44.i
    i32 8193, label %sw.bb51.i
  ]

if.end24.i.sw.epilog.i_crit_edge205:              ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end24.i.sw.epilog.i_crit_edge204:              ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end24.i.sw.epilog.i_crit_edge203:              ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end24.i.sw.epilog.i_crit_edge202:              ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end24.i.sw.epilog.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end24.i.rvin_mc_validate_format.exit.thread_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rvin_mc_validate_format.exit.thread

sw.bb25.i:                                        ; preds = %if.end24.i
  %pixelformat.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 2
  %44 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825770306, i32 %45)
  %cmp.not.i = icmp eq i32 %45, 825770306
  br i1 %cmp.not.i, label %sw.bb25.i.sw.epilog.i_crit_edge, label %sw.bb25.i.rvin_mc_validate_format.exit.thread_crit_edge

sw.bb25.i.rvin_mc_validate_format.exit.thread_crit_edge: ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rvin_mc_validate_format.exit.thread

sw.bb25.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb30.i:                                        ; preds = %if.end24.i
  %pixelformat32.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 2
  %46 = ptrtoint ptr %pixelformat32.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pixelformat32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1196573255, i32 %47)
  %cmp33.not.i = icmp eq i32 %47, 1196573255
  br i1 %cmp33.not.i, label %sw.bb30.i.sw.epilog.i_crit_edge, label %sw.bb30.i.rvin_mc_validate_format.exit.thread_crit_edge

sw.bb30.i.rvin_mc_validate_format.exit.thread_crit_edge: ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rvin_mc_validate_format.exit.thread

sw.bb30.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb37.i:                                        ; preds = %if.end24.i
  %pixelformat39.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 2
  %48 = ptrtoint ptr %pixelformat39.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pixelformat39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195528775, i32 %49)
  %cmp40.not.i = icmp eq i32 %49, 1195528775
  br i1 %cmp40.not.i, label %sw.bb37.i.sw.epilog.i_crit_edge, label %sw.bb37.i.rvin_mc_validate_format.exit.thread_crit_edge

sw.bb37.i.rvin_mc_validate_format.exit.thread_crit_edge: ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rvin_mc_validate_format.exit.thread

sw.bb37.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb44.i:                                        ; preds = %if.end24.i
  %pixelformat46.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 2
  %50 = ptrtoint ptr %pixelformat46.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pixelformat46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111967570, i32 %51)
  %cmp47.not.i = icmp eq i32 %51, 1111967570
  br i1 %cmp47.not.i, label %sw.bb44.i.sw.epilog.i_crit_edge, label %sw.bb44.i.rvin_mc_validate_format.exit.thread_crit_edge

sw.bb44.i.rvin_mc_validate_format.exit.thread_crit_edge: ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rvin_mc_validate_format.exit.thread

sw.bb44.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb51.i:                                        ; preds = %if.end24.i
  %pixelformat53.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 2
  %52 = ptrtoint ptr %pixelformat53.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pixelformat53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1497715271, i32 %53)
  %cmp54.not.i = icmp eq i32 %53, 1497715271
  br i1 %cmp54.not.i, label %sw.bb51.i.sw.epilog.i_crit_edge, label %sw.bb51.i.rvin_mc_validate_format.exit.thread_crit_edge

sw.bb51.i.rvin_mc_validate_format.exit.thread_crit_edge: ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rvin_mc_validate_format.exit.thread

sw.bb51.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb51.i.sw.epilog.i_crit_edge, %sw.bb44.i.sw.epilog.i_crit_edge, %sw.bb37.i.sw.epilog.i_crit_edge, %sw.bb30.i.sw.epilog.i_crit_edge, %sw.bb25.i.sw.epilog.i_crit_edge, %if.end24.i.sw.epilog.i_crit_edge, %if.end24.i.sw.epilog.i_crit_edge202, %if.end24.i.sw.epilog.i_crit_edge203, %if.end24.i.sw.epilog.i_crit_edge204, %if.end24.i.sw.epilog.i_crit_edge205
  %mbus_code.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 22
  %54 = ptrtoint ptr %mbus_code.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %42, ptr %mbus_code.i, align 8
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 3
  %55 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %field.i, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %56, label %sw.epilog.i.rvin_mc_validate_format.exit.thread_crit_edge [
    i32 2, label %sw.epilog.i.sw.epilog71.i_crit_edge
    i32 3, label %sw.epilog.i.sw.epilog71.i_crit_edge206
    i32 1, label %sw.epilog.i.sw.epilog71.i_crit_edge207
    i32 8, label %sw.epilog.i.sw.epilog71.i_crit_edge208
    i32 9, label %sw.epilog.i.sw.epilog71.i_crit_edge209
    i32 4, label %sw.epilog.i.sw.epilog71.i_crit_edge210
    i32 5, label %sw.epilog.i.sw.epilog71.i_crit_edge211
    i32 6, label %sw.epilog.i.sw.epilog71.i_crit_edge212
    i32 7, label %sw.bb62.i
  ]

sw.epilog.i.sw.epilog71.i_crit_edge212:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog71.i

sw.epilog.i.sw.epilog71.i_crit_edge211:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog71.i

sw.epilog.i.sw.epilog71.i_crit_edge210:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog71.i

sw.epilog.i.sw.epilog71.i_crit_edge209:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog71.i

sw.epilog.i.sw.epilog71.i_crit_edge208:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog71.i

sw.epilog.i.sw.epilog71.i_crit_edge207:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog71.i

sw.epilog.i.sw.epilog71.i_crit_edge206:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog71.i

sw.epilog.i.sw.epilog71.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog71.i

sw.epilog.i.rvin_mc_validate_format.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rvin_mc_validate_format.exit.thread

sw.bb62.i:                                        ; preds = %sw.epilog.i
  %field64.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 3
  %58 = ptrtoint ptr %field64.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %field64.i, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %59, label %sw.bb62.i.rvin_mc_validate_format.exit.thread_crit_edge [
    i32 2, label %sw.bb62.i.sw.epilog71.i_crit_edge
    i32 3, label %sw.bb62.i.sw.epilog71.i_crit_edge213
    i32 1, label %sw.bb62.i.sw.epilog71.i_crit_edge214
    i32 7, label %sw.bb62.i.sw.epilog71.i_crit_edge215
    i32 8, label %sw.bb62.i.sw.bb66.i_crit_edge
    i32 9, label %sw.bb62.i.sw.bb66.i_crit_edge216
    i32 4, label %sw.bb62.i.sw.bb66.i_crit_edge217
    i32 5, label %sw.bb62.i.sw.bb66.i_crit_edge218
    i32 6, label %sw.bb62.i.sw.bb66.i_crit_edge219
  ]

sw.bb62.i.sw.bb66.i_crit_edge219:                 ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb66.i

sw.bb62.i.sw.bb66.i_crit_edge218:                 ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb66.i

sw.bb62.i.sw.bb66.i_crit_edge217:                 ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb66.i

sw.bb62.i.sw.bb66.i_crit_edge216:                 ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb66.i

sw.bb62.i.sw.bb66.i_crit_edge:                    ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb66.i

sw.bb62.i.sw.epilog71.i_crit_edge215:             ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog71.i

sw.bb62.i.sw.epilog71.i_crit_edge214:             ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog71.i

sw.bb62.i.sw.epilog71.i_crit_edge213:             ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog71.i

sw.bb62.i.sw.epilog71.i_crit_edge:                ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog71.i

sw.bb62.i.rvin_mc_validate_format.exit.thread_crit_edge: ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rvin_mc_validate_format.exit.thread

sw.bb66.i:                                        ; preds = %sw.bb62.i.sw.bb66.i_crit_edge, %sw.bb62.i.sw.bb66.i_crit_edge216, %sw.bb62.i.sw.bb66.i_crit_edge217, %sw.bb62.i.sw.bb66.i_crit_edge218, %sw.bb62.i.sw.bb66.i_crit_edge219
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height.i, align 4
  %mul.i = shl i32 %62, 1
  store i32 %mul.i, ptr %height.i, align 4
  br label %sw.epilog71.i

sw.epilog71.i:                                    ; preds = %sw.bb66.i, %sw.bb62.i.sw.epilog71.i_crit_edge, %sw.bb62.i.sw.epilog71.i_crit_edge213, %sw.bb62.i.sw.epilog71.i_crit_edge214, %sw.bb62.i.sw.epilog71.i_crit_edge215, %sw.epilog.i.sw.epilog71.i_crit_edge, %sw.epilog.i.sw.epilog71.i_crit_edge206, %sw.epilog.i.sw.epilog71.i_crit_edge207, %sw.epilog.i.sw.epilog71.i_crit_edge208, %sw.epilog.i.sw.epilog71.i_crit_edge209, %sw.epilog.i.sw.epilog71.i_crit_edge210, %sw.epilog.i.sw.epilog71.i_crit_edge211, %sw.epilog.i.sw.epilog71.i_crit_edge212
  %63 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %26, align 4
  %format73.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23
  %65 = ptrtoint ptr %format73.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %format73.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp75.not.i = icmp eq i32 %64, %66
  br i1 %cmp75.not.i, label %lor.lhs.false.i, label %sw.epilog71.i.rvin_mc_validate_format.exit.thread_crit_edge

sw.epilog71.i.rvin_mc_validate_format.exit.thread_crit_edge: ; preds = %sw.epilog71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rvin_mc_validate_format.exit.thread

lor.lhs.false.i:                                  ; preds = %sw.epilog71.i
  %height78.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 1
  %67 = ptrtoint ptr %height78.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %height78.i, align 4
  %height80.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 1
  %69 = ptrtoint ptr %height80.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %height80.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp81.not.i = icmp eq i32 %68, %70
  br i1 %cmp81.not.i, label %if.end73, label %lor.lhs.false.i.rvin_mc_validate_format.exit.thread_crit_edge

lor.lhs.false.i.rvin_mc_validate_format.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rvin_mc_validate_format.exit.thread

rvin_mc_validate_format.exit.thread:              ; preds = %lor.lhs.false.i.rvin_mc_validate_format.exit.thread_crit_edge, %sw.epilog71.i.rvin_mc_validate_format.exit.thread_crit_edge, %sw.bb62.i.rvin_mc_validate_format.exit.thread_crit_edge, %sw.epilog.i.rvin_mc_validate_format.exit.thread_crit_edge, %sw.bb51.i.rvin_mc_validate_format.exit.thread_crit_edge, %sw.bb44.i.rvin_mc_validate_format.exit.thread_crit_edge, %sw.bb37.i.rvin_mc_validate_format.exit.thread_crit_edge, %sw.bb30.i.rvin_mc_validate_format.exit.thread_crit_edge, %sw.bb25.i.rvin_mc_validate_format.exit.thread_crit_edge, %if.end24.i.rvin_mc_validate_format.exit.thread_crit_edge, %if.end21.i.rvin_mc_validate_format.exit.thread_crit_edge, %land.lhs.true.i.rvin_mc_validate_format.exit.thread_crit_edge, %if.else.i.rvin_mc_validate_format.exit.thread_crit_edge, %if.end69.rvin_mc_validate_format.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i) #7
  br label %cleanup

if.end73:                                         ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i) #7
  %vdev74 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3
  %71 = ptrtoint ptr %vdev74 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vdev74, align 8
  %graph_mutex = getelementptr inbounds %struct.media_device, ptr %72, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %graph_mutex, i32 noundef 0) #7
  %pipe78 = getelementptr inbounds %struct.media_entity, ptr %16, i32 0, i32 14
  %73 = ptrtoint ptr %pipe78 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pipe78, align 4
  %tobool79.not = icmp eq ptr %74, null
  %pipe85 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 3, i32 2
  %cond87 = select i1 %tobool79.not, ptr %pipe85, ptr %74
  %call90 = call i32 @__media_pipeline_start(ptr noundef %vdev74, ptr noundef %cond87) #7
  call void @mutex_unlock(ptr noundef %graph_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool92.not = icmp eq i32 %call90, 0
  br i1 %tobool92.not, label %if.else99, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else99:                                        ; preds = %if.end73
  %75 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i, align 4
  %video101 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %video101 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %video101, align 4
  %tobool102.not = icmp eq ptr %78, null
  br i1 %tobool102.not, label %if.else99.cleanup_crit_edge, label %land.lhs.true103

if.else99.cleanup_crit_edge:                      ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true103:                                 ; preds = %if.else99
  %s_stream106 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %78, i32 0, i32 10
  %79 = ptrtoint ptr %s_stream106 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_stream106, align 4
  %tobool107.not = icmp eq ptr %80, null
  br i1 %tobool107.not, label %land.lhs.true103.cleanup_crit_edge, label %if.else109

land.lhs.true103.cleanup_crit_edge:               ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else109:                                       ; preds = %land.lhs.true103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool110.not = icmp eq ptr %81, null
  br i1 %tobool110.not, label %if.else109.if.else117_crit_edge, label %land.lhs.true111

if.else109.if.else117_crit_edge:                  ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else117

land.lhs.true111:                                 ; preds = %if.else109
  %s_stream112 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %81, i32 0, i32 10
  %82 = ptrtoint ptr %s_stream112 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_stream112, align 4
  %tobool113.not = icmp eq ptr %83, null
  br i1 %tobool113.not, label %land.lhs.true111.if.else117_crit_edge, label %land.lhs.true111.if.end124_crit_edge

land.lhs.true111.if.end124_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

land.lhs.true111.if.else117_crit_edge:            ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else117

if.else117:                                       ; preds = %land.lhs.true111.if.else117_crit_edge, %if.else109.if.else117_crit_edge
  br label %if.end124

if.end124:                                        ; preds = %if.else117, %land.lhs.true111.if.end124_crit_edge
  %.sink201 = phi ptr [ %80, %if.else117 ], [ %83, %land.lhs.true111.if.end124_crit_edge ]
  %call121 = call i32 %.sink201(ptr noundef nonnull %16, i32 noundef 1) #7
  %84 = zext i32 %call121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call121, label %if.then130 [
    i32 -515, label %if.end124.cleanup_crit_edge
    i32 0, label %if.end124.cleanup_crit_edge220
  ]

if.end124.cleanup_crit_edge220:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then130:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  call void @media_pipeline_stop(ptr noundef %vdev74) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then130, %if.end124.cleanup_crit_edge, %if.end124.cleanup_crit_edge220, %land.lhs.true103.cleanup_crit_edge, %if.else99.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %rvin_mc_validate_format.exit.thread, %if.else60, %if.then57, %land.lhs.true46.cleanup_crit_edge, %if.else42.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end21.thread, %if.end21.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %if.end22.cleanup_crit_edge ], [ %call59, %if.then57 ], [ %call64, %if.else60 ], [ -19, %if.then36.cleanup_crit_edge ], [ -515, %land.lhs.true46.cleanup_crit_edge ], [ -515, %if.else42.cleanup_crit_edge ], [ %call90, %if.end73.cleanup_crit_edge ], [ %call121, %if.then130 ], [ 0, %if.end21.thread ], [ %call19, %if.end21.cleanup_crit_edge ], [ -32, %rvin_mc_validate_format.exit.thread ], [ -19, %if.then.cleanup_crit_edge ], [ 0, %if.end124.cleanup_crit_edge ], [ 0, %land.lhs.true103.cleanup_crit_edge ], [ 0, %if.else99.cleanup_crit_edge ], [ 0, %if.end124.cleanup_crit_edge220 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rvin_capture_start(ptr noundef %vin) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %arrayidx, align 4
  %type = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 4
  %arrayidx.1 = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx.1, align 4
  %type.1 = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 1, i32 1
  %3 = ptrtoint ptr %type.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type.1, align 4
  %arrayidx.2 = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx.2, align 4
  %type.2 = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 2, i32 1
  %5 = ptrtoint ptr %type.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %type.2, align 4
  tail call fastcc void @rvin_fill_hw_slot(ptr noundef %vin, i32 noundef 0)
  tail call fastcc void @rvin_fill_hw_slot(ptr noundef %vin, i32 noundef 1)
  tail call fastcc void @rvin_fill_hw_slot(ptr noundef %vin, i32 noundef 2)
  tail call void @rvin_crop_scale_comp(ptr noundef %vin)
  %field.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 3
  %6 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %7, label %entry.sw.epilog.i_crit_edge [
    i32 7, label %sw.bb7.i
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb2.i
    i32 8, label %sw.bb4.i
    i32 9, label %sw.bb5.i
    i32 5, label %entry.sw.bb6.i_crit_edge
    i32 6, label %entry.sw.bb6.i_crit_edge36
    i32 1, label %entry.sw.bb6.i_crit_edge37
  ]

entry.sw.bb6.i_crit_edge37:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

entry.sw.bb6.i_crit_edge36:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

entry.sw.bb6.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry
  %info.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 2
  %9 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info.i, align 8
  %use_mc.i = getelementptr inbounds %struct.rvin_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %use_mc.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %use_mc.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %sw.bb2.i.sw.epilog.i_crit_edge

sw.bb2.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

land.lhs.true.i:                                  ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  %std.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 27
  %13 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %std.i, align 8
  %and.i = and i64 %14, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool3.not.i = icmp eq i64 %and.i, 0
  %spec.select.i = select i1 %tobool3.not.i, i32 24, i32 2097176
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %entry.sw.bb6.i_crit_edge, %entry.sw.bb6.i_crit_edge36, %entry.sw.bb6.i_crit_edge37
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %land.lhs.true.i, %sw.bb2.i.sw.epilog.i_crit_edge, %sw.bb1.i, %entry.sw.epilog.i_crit_edge
  %vnmc.0.i = phi i32 [ 8, %sw.bb7.i ], [ 8, %sw.bb6.i ], [ 2097176, %sw.bb5.i ], [ 24, %sw.bb4.i ], [ 24, %sw.bb2.i.sw.epilog.i_crit_edge ], [ 16, %sw.bb1.i ], [ %spec.select.i, %land.lhs.true.i ], [ 0, %entry.sw.epilog.i_crit_edge ]
  %progressive.0.off0.i = phi i32 [ 33554432, %sw.bb7.i ], [ 268435456, %sw.bb6.i ], [ 33554432, %sw.bb5.i ], [ 33554432, %sw.bb4.i ], [ 33554432, %sw.bb2.i.sw.epilog.i_crit_edge ], [ 33554432, %sw.bb1.i ], [ 33554432, %land.lhs.true.i ], [ 33554432, %entry.sw.epilog.i_crit_edge ]
  %mbus_code.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 22
  %15 = ptrtoint ptr %mbus_code.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mbus_code.i, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %16, label %sw.epilog.i.sw.epilog35.i_crit_edge [
    i32 8209, label %sw.bb8.i
    i32 8207, label %sw.bb9.i
    i32 8198, label %sw.bb11.i
    i32 4106, label %sw.bb18.i
    i32 8216, label %sw.bb20.i
    i32 12289, label %sw.epilog.i.sw.bb32.i_crit_edge
    i32 12307, label %sw.epilog.i.sw.bb32.i_crit_edge38
    i32 12290, label %sw.epilog.i.sw.bb32.i_crit_edge39
    i32 12308, label %sw.epilog.i.sw.bb32.i_crit_edge40
    i32 8193, label %sw.epilog.i.sw.bb32.i_crit_edge41
  ]

sw.epilog.i.sw.bb32.i_crit_edge41:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32.i

sw.epilog.i.sw.bb32.i_crit_edge40:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32.i

sw.epilog.i.sw.bb32.i_crit_edge39:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32.i

sw.epilog.i.sw.bb32.i_crit_edge38:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32.i

sw.epilog.i.sw.bb32.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32.i

sw.epilog.i.sw.epilog35.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog35.i

sw.bb8.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %vnmc.0.i, 327680
  br label %sw.epilog35.i

sw.bb9.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %or10.i = or i32 %vnmc.0.i, 851968
  br label %sw.epilog35.i

sw.bb11.i:                                        ; preds = %sw.epilog.i
  %is_csi.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 20
  %18 = ptrtoint ptr %is_csi.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_csi.i, align 8, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool12.not.i = icmp eq i8 %19, 0
  br i1 %tobool12.not.i, label %land.lhs.true13.i, label %sw.bb11.i.if.else.i_crit_edge

sw.bb11.i.if.else.i_crit_edge:                    ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true13.i:                                ; preds = %sw.bb11.i
  %mbus_type.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %mbus_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mbus_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i = icmp eq i32 %21, 2
  br i1 %cmp.i, label %land.lhs.true13.i.sw.epilog35.i_crit_edge, label %land.lhs.true13.i.if.else.i_crit_edge

land.lhs.true13.i.if.else.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true13.i.sw.epilog35.i_crit_edge:        ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog35.i

if.else.i:                                        ; preds = %land.lhs.true13.i.if.else.i_crit_edge, %sw.bb11.i.if.else.i_crit_edge
  %or16.i = or i32 %vnmc.0.i, 65536
  br label %sw.epilog35.i

sw.bb18.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %or19.i = or i32 %vnmc.0.i, 393216
  br label %sw.epilog35.i

sw.bb20.i:                                        ; preds = %sw.epilog.i
  %is_csi21.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 20
  %22 = ptrtoint ptr %is_csi21.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_csi21.i, align 8, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool22.not.i = icmp eq i8 %23, 0
  br i1 %tobool22.not.i, label %land.lhs.true23.i, label %sw.bb20.i.if.else29.i_crit_edge

sw.bb20.i.if.else29.i_crit_edge:                  ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else29.i

land.lhs.true23.i:                                ; preds = %sw.bb20.i
  %mbus_type25.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %mbus_type25.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mbus_type25.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp26.i = icmp eq i32 %25, 2
  br i1 %cmp26.i, label %if.then27.i, label %land.lhs.true23.i.if.else29.i_crit_edge

land.lhs.true23.i.if.else29.i_crit_edge:          ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else29.i

if.then27.i:                                      ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #9
  %or28.i = or i32 %vnmc.0.i, 131072
  br label %sw.epilog35.i

if.else29.i:                                      ; preds = %land.lhs.true23.i.if.else29.i_crit_edge, %sw.bb20.i.if.else29.i_crit_edge
  %or30.i = or i32 %vnmc.0.i, 196608
  br label %sw.epilog35.i

sw.bb32.i:                                        ; preds = %sw.epilog.i.sw.bb32.i_crit_edge, %sw.epilog.i.sw.bb32.i_crit_edge38, %sw.epilog.i.sw.bb32.i_crit_edge39, %sw.epilog.i.sw.bb32.i_crit_edge40, %sw.epilog.i.sw.bb32.i_crit_edge41
  %or33.i = or i32 %vnmc.0.i, 262144
  br label %sw.epilog35.i

sw.epilog35.i:                                    ; preds = %sw.bb32.i, %if.else29.i, %if.then27.i, %sw.bb18.i, %if.else.i, %land.lhs.true13.i.sw.epilog35.i_crit_edge, %sw.bb9.i, %sw.bb8.i, %sw.epilog.i.sw.epilog35.i_crit_edge
  %vnmc.3.i = phi i32 [ %vnmc.0.i, %sw.epilog.i.sw.epilog35.i_crit_edge ], [ %or33.i, %sw.bb32.i ], [ %or19.i, %sw.bb18.i ], [ %or10.i, %sw.bb9.i ], [ %or.i, %sw.bb8.i ], [ %or16.i, %if.else.i ], [ %vnmc.0.i, %land.lhs.true13.i.sw.epilog35.i_crit_edge ], [ %or30.i, %if.else29.i ], [ %or28.i, %if.then27.i ]
  %input_is_yuv.0.off0.i = phi i1 [ false, %sw.epilog.i.sw.epilog35.i_crit_edge ], [ false, %sw.bb32.i ], [ false, %sw.bb18.i ], [ true, %sw.bb9.i ], [ true, %sw.bb8.i ], [ true, %if.else.i ], [ true, %land.lhs.true13.i.sw.epilog35.i_crit_edge ], [ true, %if.else29.i ], [ true, %if.then27.i ]
  %info36.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 2
  %26 = ptrtoint ptr %info36.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info36.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp37.i = icmp eq i32 %29, 3
  %..i = select i1 %cmp37.i, i32 131072, i32 135168
  %is_csi41.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 20
  %30 = ptrtoint ptr %is_csi41.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_csi41.i, align 8, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool42.not.i = icmp eq i8 %31, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %sw.epilog35.i.if.end83.i_crit_edge

sw.epilog35.i.if.end83.i_crit_edge:               ; preds = %sw.epilog35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

if.then43.i:                                      ; preds = %sw.epilog35.i
  %bus.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 3
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bus.i, align 4
  %and45.i = shl i32 %33, 26
  %34 = and i32 %and45.i, 536870912
  %35 = or i32 %34, %..i
  %and53.i = shl i32 %33, 25
  %36 = and i32 %and53.i, 1073741824
  %37 = or i32 %35, %36
  %and61.i = shl i32 %33, 13
  %38 = and i32 %and61.i, 268435456
  %39 = or i32 %37, %38
  %40 = xor i32 %39, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 8198, i32 %16)
  %cond154.i = icmp eq i32 %16, 8198
  br i1 %cond154.i, label %sw.bb67.i, label %if.then43.i.if.end83.i_crit_edge

if.then43.i.if.end83.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

sw.bb67.i:                                        ; preds = %if.then43.i
  %bus_width.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 3, i32 1
  %41 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bus_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %42)
  %cmp70.i = icmp eq i8 %42, 8
  br i1 %cmp70.i, label %land.lhs.true72.i, label %sw.bb67.i.if.end83.i_crit_edge

sw.bb67.i.if.end83.i_crit_edge:                   ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

land.lhs.true72.i:                                ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #9
  %data_shift.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 7, i32 3, i32 2
  %43 = ptrtoint ptr %data_shift.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data_shift.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %44)
  %cmp76.i = icmp eq i8 %44, 8
  %or79.i = or i32 %40, 4194304
  %spec.select206.i = select i1 %cmp76.i, i32 %or79.i, i32 %40
  br label %if.end83.i

if.end83.i:                                       ; preds = %land.lhs.true72.i, %sw.bb67.i.if.end83.i_crit_edge, %if.then43.i.if.end83.i_crit_edge, %sw.epilog35.i.if.end83.i_crit_edge
  %dmr2.4.i = phi i32 [ %..i, %sw.epilog35.i.if.end83.i_crit_edge ], [ %40, %sw.bb67.i.if.end83.i_crit_edge ], [ %40, %if.then43.i.if.end83.i_crit_edge ], [ %spec.select206.i, %land.lhs.true72.i ]
  %pixelformat.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 2
  %45 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pixelformat.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %46, label %rvin_setup.exit [
    i32 842094158, label %if.end83.i.sw.bb85.i_crit_edge
    i32 909203022, label %if.end83.i.sw.bb85.i_crit_edge42
    i32 1448695129, label %if.end83.i.sw.epilog116.i_crit_edge
    i32 1498831189, label %sw.bb94.i
    i32 892424792, label %sw.bb95.i
    i32 1346520914, label %sw.bb96.i
    i32 875713112, label %sw.bb97.i
    i32 892424769, label %sw.bb98.i
    i32 875713089, label %sw.bb102.i
    i32 825770306, label %if.end83.i.sw.bb107.i_crit_edge
    i32 1196573255, label %if.end83.i.sw.bb107.i_crit_edge43
    i32 1195528775, label %if.end83.i.sw.bb107.i_crit_edge44
    i32 1111967570, label %if.end83.i.sw.bb107.i_crit_edge45
    i32 1497715271, label %sw.bb108.i
  ]

if.end83.i.sw.bb107.i_crit_edge45:                ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb107.i

if.end83.i.sw.bb107.i_crit_edge44:                ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb107.i

if.end83.i.sw.bb107.i_crit_edge43:                ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb107.i

if.end83.i.sw.bb107.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb107.i

if.end83.i.sw.epilog116.i_crit_edge:              ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog116.i

if.end83.i.sw.bb85.i_crit_edge42:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb85.i

if.end83.i.sw.bb85.i_crit_edge:                   ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb85.i

sw.bb85.i:                                        ; preds = %if.end83.i.sw.bb85.i_crit_edge, %if.end83.i.sw.bb85.i_crit_edge42
  %bytesperline.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 4
  %48 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bytesperline.i, align 4
  %height.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 1
  %50 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height.i, align 4
  %mul.i = mul i32 %51, %49
  %add.i = add i32 %mul.i, 127
  %and88.i = and i32 %add.i, -128
  %base.i.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 1
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %and88.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %54) #7, !srcloc !81
  %55 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %56)
  %cmp91.i = icmp eq i32 %56, 842094158
  %cond.i = select i1 %cmp91.i, i32 3, i32 2
  br label %sw.epilog116.i

sw.bb94.i:                                        ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog116.i

sw.bb95.i:                                        ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog116.i

sw.bb96.i:                                        ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog116.i

sw.bb97.i:                                        ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog116.i

sw.bb98.i:                                        ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  %alpha.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 28
  %57 = ptrtoint ptr %alpha.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %alpha.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool99.not.i = icmp eq i32 %58, 0
  %or101.i = select i1 %tobool99.not.i, i32 1, i32 5
  br label %sw.epilog116.i

sw.bb102.i:                                       ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  %alpha103.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 28
  %59 = ptrtoint ptr %alpha103.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %alpha103.i, align 8
  %shl.i = shl i32 %60, 24
  %or106.i = or i32 %shl.i, 257
  br label %sw.epilog116.i

sw.bb107.i:                                       ; preds = %if.end83.i.sw.bb107.i_crit_edge, %if.end83.i.sw.bb107.i_crit_edge43, %if.end83.i.sw.bb107.i_crit_edge44, %if.end83.i.sw.bb107.i_crit_edge45
  br label %sw.epilog116.i

sw.bb108.i:                                       ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  %.207.i = select i1 %input_is_yuv.0.off0.i, i32 4098, i32 0
  %.208.i = zext i1 %input_is_yuv.0.off0.i to i32
  br label %sw.epilog116.i

sw.epilog116.i:                                   ; preds = %sw.bb108.i, %sw.bb107.i, %sw.bb102.i, %sw.bb98.i, %sw.bb97.i, %sw.bb96.i, %sw.bb95.i, %sw.bb94.i, %sw.bb85.i, %if.end83.i.sw.epilog116.i_crit_edge
  %dmr.0.i = phi i32 [ 0, %sw.bb107.i ], [ %or106.i, %sw.bb102.i ], [ %or101.i, %sw.bb98.i ], [ 256, %sw.bb97.i ], [ 0, %sw.bb96.i ], [ 1, %sw.bb95.i ], [ 0, %sw.bb94.i ], [ %cond.i, %sw.bb85.i ], [ 16, %if.end83.i.sw.epilog116.i_crit_edge ], [ %.207.i, %sw.bb108.i ]
  %output_is_yuv.0.off0.i = phi i32 [ 0, %sw.bb107.i ], [ 0, %sw.bb102.i ], [ 0, %sw.bb98.i ], [ 0, %sw.bb97.i ], [ 0, %sw.bb96.i ], [ 0, %sw.bb95.i ], [ 1, %sw.bb94.i ], [ 1, %sw.bb85.i ], [ 1, %if.end83.i.sw.epilog116.i_crit_edge ], [ %.208.i, %sw.bb108.i ]
  %or117.i = or i32 %vnmc.3.i, 1024
  %61 = ptrtoint ptr %info36.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %info36.i, align 8
  %use_isp.i = getelementptr inbounds %struct.rvin_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %use_isp.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %use_isp.i, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool119.not.i = icmp eq i8 %64, 0
  br i1 %tobool119.not.i, label %if.then120.i, label %sw.epilog116.i.do.body_crit_edge

sw.epilog116.i.do.body_crit_edge:                 ; preds = %sw.epilog116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then120.i:                                     ; preds = %sw.epilog116.i
  %conv122.i = zext i1 %input_is_yuv.0.off0.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %output_is_yuv.0.off0.i, i32 %conv122.i)
  %cmp125.i = icmp eq i32 %output_is_yuv.0.off0.i, %conv122.i
  %or128.i = or i32 %vnmc.3.i, 1026
  %spec.select209.i = select i1 %cmp125.i, i32 %or128.i, i32 %or117.i
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp132.i = icmp eq i32 %66, 3
  br i1 %cmp132.i, label %if.then134.i, label %if.then120.i.do.body_crit_edge

if.then120.i.do.body_crit_edge:                   ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then134.i:                                     ; preds = %if.then120.i
  %67 = ptrtoint ptr %is_csi41.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_csi41.i, align 8, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool136.not.i = icmp eq i8 %68, 0
  br i1 %tobool136.not.i, label %if.else139.i, label %if.then137.i

if.then137.i:                                     ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #9
  %and138.i = and i32 %spec.select209.i, -134217729
  br label %do.body

if.else139.i:                                     ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #9
  %or140.i = or i32 %spec.select209.i, 134217728
  br label %do.body

rvin_setup.exit:                                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vin, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.22, i32 noundef %46) #10
  br label %cleanup

do.body:                                          ; preds = %if.else139.i, %if.then137.i, %if.then120.i.do.body_crit_edge, %sw.epilog116.i.do.body_crit_edge
  %vnmc.5.i = phi i32 [ %or117.i, %sw.epilog116.i.do.body_crit_edge ], [ %and138.i, %if.then137.i ], [ %or140.i, %if.else139.i ], [ %spec.select209.i, %if.then120.i.do.body_crit_edge ]
  %base.i210.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 1
  %71 = ptrtoint ptr %base.i210.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i210.i, align 4
  %add.ptr.i211.i = getelementptr i8, ptr %72, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211.i, i32 %progressive.0.off0.i) #7, !srcloc !81
  %73 = ptrtoint ptr %base.i210.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i210.i, align 4
  %add.ptr.i213.i = getelementptr i8, ptr %74, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213.i, i32 %progressive.0.off0.i) #7, !srcloc !81
  %75 = ptrtoint ptr %base.i210.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i210.i, align 4
  %add.ptr.i215.i = getelementptr i8, ptr %76, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %77 = tail call i32 @llvm.bswap.i32(i32 %dmr.0.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215.i, i32 %77) #7, !srcloc !81
  %78 = ptrtoint ptr %base.i210.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i210.i, align 4
  %add.ptr.i217.i = getelementptr i8, ptr %79, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %dmr2.4.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i217.i, i32 %80) #7, !srcloc !81
  %or147.i = or i32 %vnmc.5.i, 1
  %81 = ptrtoint ptr %base.i210.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i210.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %83 = tail call i32 @llvm.bswap.i32(i32 %or147.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %83) #7, !srcloc !81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_capture_start.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_capture_start, %if.then13)) #7
          to label %do.end [label %if.then13], !srcloc !82

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vin, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_capture_start.__UNIQUE_ID_ddebug301, ptr noundef %85, ptr noundef nonnull @.str.19) #7
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %86 = ptrtoint ptr %base.i210.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i210.i, align 4
  %add.ptr.i = getelementptr i8, ptr %87, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #7, !srcloc !81
  %state = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 19
  %88 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %rvin_setup.exit
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %rvin_setup.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rvin_stop_streaming(ptr noundef %vin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qlock = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #7
  %state = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp eq i32 %1, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %state, align 4
  %arrayidx = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 0
  %arrayidx.1 = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 1
  %arrayidx.2 = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 2
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end18.for.cond.preheader_crit_edge, %if.end
  %inc137 = phi i32 [ 1, %if.end ], [ %inc, %if.end18.for.cond.preheader_crit_edge ]
  %flags.0136 = phi i32 [ %call2, %if.end ], [ %call29, %if.end18.for.cond.preheader_crit_edge ]
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %6, null
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %8, null
  %9 = select i1 %tobool.not.2, i1 %tobool.not.1, i1 false
  %narrow144 = select i1 %9, i1 %tobool.not, i1 false
  br i1 %narrow144, label %for.cond.preheader.while.end_crit_edge, label %if.end18

for.cond.preheader.while.end_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end18:                                         ; preds = %for.cond.preheader
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %flags.0136) #7
  tail call void @msleep(i32 noundef 100) #7
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #7
  %inc = add nuw nsw i32 %inc137, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %if.end18.while.end_crit_edge, label %if.end18.for.cond.preheader_crit_edge

if.end18.for.cond.preheader_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end18.while.end_crit_edge, %for.cond.preheader.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %flags.0136, %for.cond.preheader.while.end_crit_edge ], [ %call29, %if.end18.while.end_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 1
  br label %while.body38

while.body38:                                     ; preds = %if.end42.while.body38_crit_edge, %while.end
  %inc35139 = phi i32 [ 1, %while.end ], [ %inc35, %if.end42.while.body38_crit_edge ]
  %flags.1138 = phi i32 [ %flags.0.lcssa, %while.end ], [ %call53, %if.end42.while.body38_crit_edge ]
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !81
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %15 = and i32 %14, -16777217
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !81
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i129 = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i129) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.not, label %if.then40, label %if.end42

if.then40:                                        ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %state, align 4
  br label %while.end58

if.end42:                                         ; preds = %while.body38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %flags.1138) #7
  tail call void @msleep(i32 noundef 100) #7
  %call53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #7
  %inc35 = add nuw nsw i32 %inc35139, 1
  %exitcond142.not = icmp eq i32 %inc35, 11
  br i1 %exitcond142.not, label %if.end42.while.end58_crit_edge, label %if.end42.while.body38_crit_edge

if.end42.while.body38_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body38

if.end42.while.end58_crit_edge:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end58

while.end58:                                      ; preds = %if.end42.while.end58_crit_edge, %if.then40
  %flags.1133 = phi i32 [ %flags.1138, %if.then40 ], [ %call53, %if.end42.while.end58_crit_edge ]
  br i1 %narrow144, label %lor.lhs.false, label %if.then71.critedge

lor.lhs.false:                                    ; preds = %while.end58
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp61.not = icmp eq i32 %24, 0
  br i1 %cmp61.not, label %if.end88.critedge, label %if.end88.critedge127

if.then71.critedge:                               ; preds = %while.end58
  %25 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vin, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str) #10
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %flags.1133) #7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #7
  %buf_list.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 17
  %28 = ptrtoint ptr %buf_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf_list.i, align 8
  %cmp12.not29.i = icmp eq ptr %29, %buf_list.i
  br i1 %cmp12.not29.i, label %if.then71.critedge.return_unused_buffers.exit_crit_edge, label %if.then71.critedge.for.body.i_crit_edge

if.then71.critedge.for.body.i_crit_edge:          ; preds = %if.then71.critedge
  br label %for.body.i

if.then71.critedge.return_unused_buffers.exit_crit_edge: ; preds = %if.then71.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %return_unused_buffers.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then71.critedge.for.body.i_crit_edge
  %.pn.in30.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %29, %if.then71.critedge.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn.in30.i, i32 -736
  %30 = ptrtoint ptr %.pn.in30.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i = load ptr, ptr %.pn.in30.i, align 8
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 6) #7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in30.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in30.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %.pn.in30.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %.pn.in30.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %37 = ptrtoint ptr %.pn.in30.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in30.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in30.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp12.not.i = icmp eq ptr %.pn.i, %buf_list.i
  br i1 %cmp12.not.i, label %list_del.exit.i.return_unused_buffers.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del.exit.i.return_unused_buffers.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return_unused_buffers.exit

return_unused_buffers.exit:                       ; preds = %list_del.exit.i.return_unused_buffers.exit_crit_edge, %if.then71.critedge.return_unused_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call2.i) #7
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %tobool79.not = icmp eq ptr %40, null
  br i1 %tobool79.not, label %return_unused_buffers.exit.for.inc85_crit_edge, label %if.then80

return_unused_buffers.exit.for.inc85_crit_edge:   ; preds = %return_unused_buffers.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc85

if.then80:                                        ; preds = %return_unused_buffers.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @vb2_buffer_done(ptr noundef nonnull %40, i32 noundef 6) #7
  br label %for.inc85

for.inc85:                                        ; preds = %if.then80, %return_unused_buffers.exit.for.inc85_crit_edge
  %41 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.1, align 4
  %tobool79.not.1 = icmp eq ptr %42, null
  br i1 %tobool79.not.1, label %for.inc85.for.inc85.1_crit_edge, label %if.then80.1

for.inc85.for.inc85.1_crit_edge:                  ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc85.1

if.then80.1:                                      ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @vb2_buffer_done(ptr noundef nonnull %42, i32 noundef 6) #7
  br label %for.inc85.1

for.inc85.1:                                      ; preds = %if.then80.1, %for.inc85.for.inc85.1_crit_edge
  %43 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.2, align 4
  %tobool79.not.2 = icmp eq ptr %44, null
  br i1 %tobool79.not.2, label %for.inc85.1.if.end88_crit_edge, label %if.then80.2

for.inc85.1.if.end88_crit_edge:                   ; preds = %for.inc85.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then80.2:                                      ; preds = %for.inc85.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @vb2_buffer_done(ptr noundef nonnull %44, i32 noundef 6) #7
  br label %if.end88

if.end88.critedge:                                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %flags.1133) #7
  br label %if.end88

if.end88.critedge127:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vin, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str) #10
  %47 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %flags.1133) #7
  br label %if.end88

if.end88:                                         ; preds = %if.end88.critedge127, %if.end88.critedge, %if.then80.2, %for.inc85.1.if.end88_crit_edge
  %call89 = tail call fastcc i32 @rvin_set_stream(ptr noundef %vin, i32 noundef 0)
  %48 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i131 = getelementptr i8, ptr %49, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i131, i32 0) #7, !srcloc !81
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rvin_dma_unregister(ptr noundef %vin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 11
  tail call void @mutex_destroy(ptr noundef %lock) #7
  %v4l2_dev = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 4
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rvin_dma_register(ptr noundef %vin, i32 noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vin, align 8
  %v4l2_dev = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 4
  %call = tail call i32 @v4l2_device_register(ptr noundef %1, ptr noundef %v4l2_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %queue = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 12
  %lock = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @rvin_dma_register.__key) #7
  %buf_list = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 17
  %2 = ptrtoint ptr %buf_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %buf_list, ptr %buf_list, align 4
  %prev.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 17, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %buf_list, ptr %prev.i, align 4
  %qlock = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %qlock, ptr noundef nonnull @.str.7, ptr noundef nonnull @rvin_dma_register.__key.6, i16 noundef signext 3) #7
  %state = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 19
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  %arrayidx = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 2
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx.2, align 4
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %queue, align 4
  %io_modes = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 21, ptr %io_modes, align 4
  %lock6 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 12, i32 5
  %10 = ptrtoint ptr %lock6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %lock, ptr %lock6, align 4
  %drv_priv = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 12, i32 10
  %11 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vin, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 12, i32 12
  %12 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 744, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 12, i32 7
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rvin_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 12, i32 8
  %14 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 12, i32 13
  %15 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8192, ptr %timestamp_flags, align 4
  %min_buffers_needed = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 12, i32 15
  %16 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %min_buffers_needed, align 4
  %17 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vin, align 8
  %dev8 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 12, i32 2
  %19 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %dev8, align 4
  %call9 = tail call i32 @vb2_queue_init(ptr noundef %queue) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  %20 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vin, align 8
  br i1 %cmp10, label %do.end14, label %if.end16

do.end14:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.8) #10
  br label %error

if.end16:                                         ; preds = %do.body
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %21, i32 noundef %irq, ptr noundef nonnull @rvin_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.10, ptr noundef %vin) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %do.end23

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vin, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.12) #10
  br label %error

error:                                            ; preds = %do.end23, %do.end14
  %ret.0 = phi i32 [ %call9, %do.end14 ], [ %call.i, %do.end23 ]
  tail call void @mutex_destroy(ptr noundef %lock) #7
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qlock = getelementptr inbounds %struct.rvin_dev, ptr %data, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #7
  %base.i.i = getelementptr inbounds %struct.rvin_dev, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i169 = getelementptr i8, ptr %4, i32 68
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i169) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %7, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %5) #7, !srcloc !81
  %8 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %if.end.done_crit_edge, label %if.end8

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end8:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.rvin_dev, ptr %data, i32 0, i32 19
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %do.body12, label %if.end22

do.body12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_irq.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_irq, %if.then18)) #7
          to label %done [label %if.then18], !srcloc !82

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_irq.__UNIQUE_ID_ddebug302, ptr noundef %12, ptr noundef nonnull @.str.28) #7
  br label %done

if.end22:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !84
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %and24 = lshr i32 %16, 3
  %shr = and i32 %and24, 3
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp26 = icmp eq i32 %18, 1
  br i1 %cmp26, label %if.then28, label %if.end22.if.end68_crit_edge

if.end22.if.end68_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp29.not = icmp eq i32 %shr, 0
  br i1 %cmp29.not, label %do.body50, label %do.body32

do.body32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_irq.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_irq, %if.then44)) #7
          to label %done [label %if.then44], !srcloc !82

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_irq.__UNIQUE_ID_ddebug303, ptr noundef %20, ptr noundef nonnull @.str.29, i32 noundef %shr) #7
  br label %done

do.body50:                                        ; preds = %if.then28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_irq.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_irq, %if.then62)) #7
          to label %do.end66 [label %if.then62], !srcloc !82

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_irq.__UNIQUE_ID_ddebug304, ptr noundef %22, ptr noundef nonnull @.str.30) #7
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %do.body50
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %state, align 4
  br label %if.end68

if.end68:                                         ; preds = %do.end66, %if.end22.if.end68_crit_edge
  %arrayidx = getelementptr %struct.rvin_dev, ptr %data, i32 0, i32 16, i32 %shr
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %tobool69.not = icmp eq ptr %25, null
  br i1 %tobool69.not, label %do.body99, label %if.then70

if.then70:                                        ; preds = %if.end68
  %type = getelementptr %struct.rvin_dev, ptr %data, i32 0, i32 16, i32 %shr, i32 1
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp73 = icmp eq i32 %27, 1
  br i1 %cmp73, label %if.then75, label %if.end79

if.then75:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx, align 4
  tail call fastcc void @rvin_fill_hw_slot(ptr noundef %data, i32 noundef %shr)
  br label %done

if.end79:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  %field.i = getelementptr inbounds %struct.rvin_dev, ptr %data, i32 0, i32 23, i32 3
  %29 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %field.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %30)
  %cmp.i = icmp eq i32 %30, 7
  %and.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 2, i32 3
  %retval.0.i170 = select i1 %cmp.i, i32 %..i, i32 %30
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %25, i32 0, i32 2
  %31 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i170, ptr %field, align 4
  %sequence = getelementptr inbounds %struct.rvin_dev, ptr %data, i32 0, i32 18
  %32 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sequence, align 8
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %sequence87 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %sequence87 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %sequence87, align 8
  %call.i = tail call i64 @ktime_get() #7
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %call.i, ptr %timestamp, align 8
  %40 = load ptr, ptr %arrayidx, align 4
  tail call void @vb2_buffer_done(ptr noundef %40, i32 noundef 5) #7
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end117

do.body99:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_irq.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_irq, %if.then111)) #7
          to label %if.end117 [label %if.then111], !srcloc !82

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 8
  %sequence113 = getelementptr inbounds %struct.rvin_dev, ptr %data, i32 0, i32 18
  %44 = ptrtoint ptr %sequence113 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sequence113, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_irq.__UNIQUE_ID_ddebug305, ptr noundef %43, ptr noundef nonnull @.str.31, i32 noundef %45) #7
  br label %if.end117

if.end117:                                        ; preds = %if.then111, %do.body99, %if.end79
  %sequence118 = getelementptr inbounds %struct.rvin_dev, ptr %data, i32 0, i32 18
  %46 = ptrtoint ptr %sequence118 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sequence118, align 8
  %inc = add i32 %47, 1
  store i32 %inc, ptr %sequence118, align 8
  tail call fastcc void @rvin_fill_hw_slot(ptr noundef %data, i32 noundef %shr)
  br label %done

done:                                             ; preds = %if.end117, %if.then75, %if.then44, %do.body32, %if.then18, %do.body12, %if.end.done_crit_edge, %entry.done_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call2) #7
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rvin_set_channel_routing(ptr nocapture noundef %vin, i8 noundef zeroext %chsel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vin, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !87
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !88
  br label %cleanup

if.end:                                           ; preds = %entry
  %base.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %6 = and i32 %5, -262145
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !81
  %info = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 2
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 8
  %routes = getelementptr inbounds %struct.rvin_info, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %routes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %routes, align 4
  %mask62 = getelementptr inbounds %struct.rvin_group_route, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %mask62 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not63 = icmp eq i32 %14, 0
  br i1 %tobool.not63, label %if.end.do.body_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.rvin_group_route, ptr %route.065, i32 1
  %mask = getelementptr %struct.rvin_group_route, ptr %route.065, i32 1, i32 3
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %for.cond.if.then12_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.if.then12_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %route.065 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ %12, %if.end.for.body_crit_edge ]
  %ifmd.064 = phi i32 [ %ifmd.1, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %17 = ptrtoint ptr %route.065 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %route.065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %switch = icmp ult i32 %18, 2
  %ifmd.1.v = select i1 %switch, i32 67108864, i32 33554432
  %ifmd.1 = or i32 %ifmd.1.v, %ifmd.064
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %ifmd.1)
  %cmp8 = icmp eq i32 %ifmd.1, 100663296
  br i1 %cmp8, label %for.body.if.then12_crit_edge, label %for.cond

for.body.if.then12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.then12:                                        ; preds = %for.body.if.then12_crit_edge, %for.cond.if.then12_crit_edge
  %19 = and i8 %chsel, 15
  %and13 = zext i8 %19 to i32
  %or14 = or i32 %ifmd.1, %and13
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %or14) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #7, !srcloc !81
  br label %do.body

do.body:                                          ; preds = %if.then12, %if.end.do.body_crit_edge
  %ifmd.3 = phi i32 [ %or14, %if.then12 ], [ 0, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_set_channel_routing.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_set_channel_routing, %if.then20)) #7
          to label %do.end [label %if.then20], !srcloc !82

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vin, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_set_channel_routing.__UNIQUE_ID_ddebug306, ptr noundef %24, ptr noundef nonnull @.str.15, i32 noundef %ifmd.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  %conv23 = zext i8 %chsel to i32
  %chsel24 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 21
  %25 = ptrtoint ptr %chsel24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv23, ptr %chsel24, align 4
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %5) #7, !srcloc !81
  %28 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vin, align 8
  %call.i54 = tail call i32 @__pm_runtime_idle(ptr noundef %29, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rvin_set_alpha(ptr noundef %vin, i32 noundef %alpha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qlock = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #7
  %alpha5 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 28
  %0 = ptrtoint ptr %alpha5 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %alpha, ptr %alpha5, align 8
  %state = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 19
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp6 = icmp eq i32 %2, 0
  br i1 %cmp6, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %pixelformat = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 2
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pixelformat, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %4, label %if.end.out_crit_edge [
    i32 892424769, label %sw.bb
    i32 875713089, label %sw.bb12
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %base.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 88
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %9 = and i32 %8, -67108865
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %alpha5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %alpha5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %masksel = select i1 %tobool.not, i32 0, i32 4
  %spec.select = or i32 %masksel, %10
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %base.i30 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 1
  %13 = ptrtoint ptr %base.i30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i30, align 4
  %add.ptr.i31 = getelementptr i8, ptr %14, i32 88
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %16 = and i32 %15, -256
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %alpha5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alpha5, align 8
  %shl = shl i32 %19, 24
  %or17 = or i32 %shl, %17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb
  %dmr.0 = phi i32 [ %or17, %sw.bb12 ], [ %spec.select, %sw.bb ]
  %base.i32 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 1
  %20 = ptrtoint ptr %base.i32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i32, align 4
  %add.ptr.i33 = getelementptr i8, ptr %21, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %dmr.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %22) #7, !srcloc !81
  br label %out

out:                                              ; preds = %sw.epilog, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rvin_fill_hw_slot(ptr noundef %vin, i32 noundef %slot) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 %slot
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !89

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 903, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp = icmp eq i32 %slot, 0
  %phi.bo = add i32 %slot, -1
  %spec.select = select i1 %cmp, i32 2, i32 %phi.bo
  %type = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 %spec.select, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp25 = icmp eq i32 %3, 1
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end22
  %arrayidx24 = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 %spec.select
  %4 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx24, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %arrayidx, align 4
  %type35 = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 %slot, i32 1
  %7 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %type35, align 4
  %pixelformat = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 2
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %9, label %sw.default [
    i32 842094158, label %if.then26.sw.bb_crit_edge
    i32 909203022, label %if.then26.sw.bb_crit_edge156
  ]

if.then26.sw.bb_crit_edge156:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then26.sw.bb_crit_edge:                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.then26.sw.bb_crit_edge, %if.then26.sw.bb_crit_edge156
  %phys = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 %spec.select, i32 2
  %11 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phys, align 4
  %sizeimage = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 5
  %13 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sizeimage, align 4
  %div151 = lshr i32 %14, 2
  %add = add i32 %div151, %12
  br label %do.body78

sw.default:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %phys41 = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 %spec.select, i32 2
  %15 = ptrtoint ptr %phys41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phys41, align 4
  %sizeimage43 = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 5
  %17 = ptrtoint ptr %sizeimage43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sizeimage43, align 4
  %div44152 = lshr i32 %18, 1
  %add45 = add i32 %div44152, %16
  br label %do.body78

if.else:                                          ; preds = %if.end22
  %state = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 19
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %20, label %if.else.if.then50_crit_edge [
    i32 0, label %if.else.lor.lhs.false_crit_edge
    i32 2, label %if.else.lor.lhs.false_crit_edge157
  ]

if.else.lor.lhs.false_crit_edge157:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.else.lor.lhs.false_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.else.if.then50_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

lor.lhs.false:                                    ; preds = %if.else.lor.lhs.false_crit_edge, %if.else.lor.lhs.false_crit_edge157
  %buf_list = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 17
  %22 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %buf_list, align 4
  %cmp.i.not = icmp eq ptr %23, %buf_list
  br i1 %cmp.i.not, label %lor.lhs.false.if.then50_crit_edge, label %if.else57

lor.lhs.false.if.then50_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

if.then50:                                        ; preds = %lor.lhs.false.if.then50_crit_edge, %if.else.if.then50_crit_edge
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx, align 4
  %type56 = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 %slot, i32 1
  %25 = ptrtoint ptr %type56 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %type56, align 4
  %scratch_phys = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 14
  %26 = ptrtoint ptr %scratch_phys to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scratch_phys, align 4
  br label %do.body78

if.else57:                                        ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %23, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.else57.list_del_init.exit_crit_edge

if.else57.list_del_init.exit_crit_edge:           ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %23, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.else57.list_del_init.exit_crit_edge
  %34 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %23, ptr %23, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %23, ptr %prev.i3.i, align 4
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr, ptr %arrayidx, align 4
  %field = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 3
  %37 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %field, align 4
  %39 = add i32 %38, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %40 = icmp ult i32 %39, 2
  %41 = zext i1 %40 to i32
  %type74 = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 %slot, i32 1
  %42 = ptrtoint ptr %type74 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %type74, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %add.ptr, i32 noundef 0) #7
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call.i, align 4
  br label %do.body78

do.body78:                                        ; preds = %list_del_init.exit, %if.then50, %sw.default, %sw.bb
  %phys_addr.0 = phi i32 [ %add45, %sw.default ], [ %add, %sw.bb ], [ %27, %if.then50 ], [ %44, %list_del_init.exit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rvin_fill_hw_slot.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rvin_fill_hw_slot, %if.then88)) #7
          to label %do.end97 [label %if.then88], !srcloc !82

if.then88:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vin, align 8
  %type91 = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 %slot, i32 1
  %47 = ptrtoint ptr %type91 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type91, align 4
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rvin_fill_hw_slot.__UNIQUE_ID_ddebug300, ptr noundef %46, ptr noundef nonnull @.str.21, i32 noundef %slot, i32 noundef %48, ptr noundef %50) #7
  br label %do.end97

do.end97:                                         ; preds = %if.then88, %do.body78
  %phys100 = getelementptr %struct.rvin_dev, ptr %vin, i32 0, i32 16, i32 %slot, i32 2
  %51 = ptrtoint ptr %phys100 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %phys_addr.0, ptr %phys100, align 4
  %pixelformat.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 2
  %52 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pixelformat.i, align 4
  %call.i153 = tail call ptr @rvin_format_from_pixel(ptr noundef %vin, i32 noundef %53) #7
  %compose.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 25
  %54 = ptrtoint ptr %compose.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %compose.i, align 4
  %bpp.i = getelementptr inbounds %struct.rvin_video_format, ptr %call.i153, i32 0, i32 1
  %56 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bpp.i, align 4
  %conv.i154 = zext i8 %57 to i32
  %mul.i = mul i32 %55, %conv.i154
  %top.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 25, i32 1
  %58 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %top.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 23, i32 4
  %60 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bytesperline.i, align 4
  %mul3.i = mul i32 %61, %59
  %add.i = add i32 %mul.i, %phys_addr.0
  %add4.i = add i32 %add.i, %mul3.i
  %or.i = or i32 %mul3.i, %mul.i
  %or5.i = or i32 %or.i, %add4.i
  %and.i = and i32 %or5.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end27.i, label %do.end.i, !prof !89

do.end.i:                                         ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 883, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end27.i:                                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl i32 %slot, 2
  %add28.i = add i32 %shl.i, 48
  %base.i.i = getelementptr inbounds %struct.rvin_dev, ptr %vin, i32 0, i32 1
  %62 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 %add28.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %64 = tail call i32 @llvm.bswap.i32(i32 %add4.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %64) #7, !srcloc !81
  br label %cleanup

cleanup:                                          ; preds = %if.end27.i, %do.end.i, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rvin_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizes, align 4
  %sizeimage = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 23, i32 5
  %6 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ult i32 %5, %7
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %nplanes, align 4
  %sizeimage2 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 23, i32 5
  %9 = ptrtoint ptr %sizeimage2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizeimage2, align 4
  %11 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_buffer_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %sizeimage = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 23, i32 5
  %4 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizeimage, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit15_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit15_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_plane_size.exit15

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp21 = icmp ult i32 %9, %5
  br i1 %cmp21, label %vb2_plane_size.exit.thread.vb2_plane_size.exit15_crit_edge, label %if.end42.i

vb2_plane_size.exit.thread.vb2_plane_size.exit15_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_plane_size.exit15

vb2_plane_size.exit15:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit15_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit15_crit_edge
  %retval.0.i14 = phi i32 [ 0, %vb2_plane_size.exit.vb2_plane_size.exit15_crit_edge ], [ %9, %vb2_plane_size.exit.thread.vb2_plane_size.exit15_crit_edge ]
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i14, i32 noundef %5) #10
  br label %cleanup

if.end42.i:                                       ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %12 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit15, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit15 ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rvin_start_streaming_vq(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %sizeimage = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 23, i32 5
  %4 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizeimage, align 4
  %scratch_phys = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 14
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %5, ptr noundef %scratch_phys, i32 noundef 3264, i32 noundef 0) #7
  %scratch = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %scratch to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %scratch, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.err_scratch_crit_edge, label %if.end

entry.err_scratch_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_scratch

if.end:                                           ; preds = %entry
  %call.i24 = tail call fastcc i32 @rvin_set_stream(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i, label %do.body1.i, label %if.end.err_start_crit_edge

if.end.err_start_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_start

do.body1.i:                                       ; preds = %if.end
  %qlock.i = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 15
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #7
  %sequence.i = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sequence.i, align 8
  %call6.i = tail call fastcc i32 @rvin_capture_start(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %rvin_start_streaming.exit.thread29, label %rvin_start_streaming.exit

rvin_start_streaming.exit.thread29:               ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call3.i) #7
  br label %cleanup

rvin_start_streaming.exit:                        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call fastcc i32 @rvin_set_stream(ptr noundef %1, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call3.i) #7
  br label %err_start

err_start:                                        ; preds = %rvin_start_streaming.exit, %if.end.err_start_crit_edge
  %retval.0.i28 = phi i32 [ %call6.i, %rvin_start_streaming.exit ], [ %call.i24, %if.end.err_start_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sizeimage, align 4
  %12 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scratch, align 8
  %14 = ptrtoint ptr %scratch_phys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scratch_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef 0) #7
  br label %err_scratch

err_scratch:                                      ; preds = %err_start, %entry.err_scratch_crit_edge
  %ret.0 = phi i32 [ %retval.0.i28, %err_start ], [ -12, %entry.err_scratch_crit_edge ]
  %qlock.i25 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i25) #7
  %buf_list.i = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %buf_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf_list.i, align 8
  %cmp12.not29.i = icmp eq ptr %17, %buf_list.i
  br i1 %cmp12.not29.i, label %err_scratch.return_unused_buffers.exit_crit_edge, label %err_scratch.for.body.i_crit_edge

err_scratch.for.body.i_crit_edge:                 ; preds = %err_scratch
  br label %for.body.i

err_scratch.return_unused_buffers.exit_crit_edge: ; preds = %err_scratch
  call void @__sanitizer_cov_trace_pc() #9
  br label %return_unused_buffers.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %err_scratch.for.body.i_crit_edge
  %.pn.in30.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %17, %err_scratch.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn.in30.i, i32 -736
  %18 = ptrtoint ptr %.pn.in30.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn.in30.i, align 8
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 3) #7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in30.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in30.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %.pn.in30.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn.in30.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %25 = ptrtoint ptr %.pn.in30.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in30.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in30.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp12.not.i = icmp eq ptr %.pn.i, %buf_list.i
  br i1 %cmp12.not.i, label %list_del.exit.i.return_unused_buffers.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del.exit.i.return_unused_buffers.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return_unused_buffers.exit

return_unused_buffers.exit:                       ; preds = %list_del.exit.i.return_unused_buffers.exit_crit_edge, %err_scratch.return_unused_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i25, i32 noundef %call2.i) #7
  br label %cleanup

cleanup:                                          ; preds = %return_unused_buffers.exit, %rvin_start_streaming.exit.thread29
  %retval.0 = phi i32 [ %ret.0, %return_unused_buffers.exit ], [ 0, %rvin_start_streaming.exit.thread29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rvin_stop_streaming_vq(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  tail call void @rvin_stop_streaming(ptr noundef %1)
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %sizeimage = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 23, i32 5
  %4 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizeimage, align 4
  %scratch = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scratch, align 8
  %scratch_phys = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %scratch_phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scratch_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 0) #7
  %qlock.i = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #7
  %buf_list.i = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %buf_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf_list.i, align 8
  %cmp12.not29.i = icmp eq ptr %11, %buf_list.i
  br i1 %cmp12.not29.i, label %entry.return_unused_buffers.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.return_unused_buffers.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return_unused_buffers.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in30.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %11, %entry.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn.in30.i, i32 -736
  %12 = ptrtoint ptr %.pn.in30.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in30.i, align 8
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 6) #7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in30.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in30.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %.pn.in30.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in30.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %.pn.in30.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in30.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in30.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp12.not.i = icmp eq ptr %.pn.i, %buf_list.i
  br i1 %cmp12.not.i, label %list_del.exit.i.return_unused_buffers.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del.exit.i.return_unused_buffers.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return_unused_buffers.exit

return_unused_buffers.exit:                       ; preds = %list_del.exit.i.return_unused_buffers.exit_crit_edge, %entry.return_unused_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rvin_buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %qlock = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 15
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #7
  %list = getelementptr inbounds %struct.rvin_buffer, ptr %vb, i32 0, i32 1
  %buf_list = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 17
  %prev.i = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %buf_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.rvin_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !18, !19, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !67, !68, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 1375, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rvin_stop_streaming._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rvin_stop_streaming._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @rvin_dma_register.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 1437, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rvin_dma_register.__key.6, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 1440, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 1461, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rvin_dma_register._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @rvin_dma_register._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 1467, i32 11}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 1469, i32 3}
!23 = !{ptr @rvin_dma_register._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @rvin_dma_register._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 1525, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rvin_set_channel_routing.__UNIQUE_ID_ddebug306, !26, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 577, i32 2}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rvin_crop_scale_comp_gen2.__UNIQUE_ID_ddebug299, !30, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!33 = !{ptr @vin_coeff_set, !34, !"vin_coeff_set", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 169, i32 31}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 968, i32 2}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rvin_capture_start.__UNIQUE_ID_ddebug301, !36, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 943, i32 2}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rvin_fill_hw_slot.__UNIQUE_ID_ddebug300, !40, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 792, i32 3}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rvin_setup._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @rvin_setup._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @rvin_qops, !49, !"rvin_qops", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 1410, i32 29}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 1112, i32 3}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rvin_buffer_prepare._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @rvin_buffer_prepare._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!57 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 1017, i32 3}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rvin_irq.__UNIQUE_ID_ddebug302, !59, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 1031, i32 4}
!64 = !{ptr @rvin_irq.__UNIQUE_ID_ddebug303, !63, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 1035, i32 3}
!67 = !{ptr @rvin_irq.__UNIQUE_ID_ddebug304, !66, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/rcar-vin/rcar-dma.c", i32 1060, i32 3}
!70 = !{ptr @rvin_irq.__UNIQUE_ID_ddebug305, !69, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 2151789249}
!81 = !{i64 4247127}
!82 = !{i64 2148798018, i64 2148798023, i64 2148798036, i64 2148798080, i64 2148798114, i64 2148798135}
!83 = !{i8 0, i8 2}
!84 = !{i64 4247545}
!85 = !{i64 2151787894}
!86 = !{i64 2148229772}
!87 = !{i64 714595, i64 714620, i64 714642, i64 714658, i64 714670, i64 714690, i64 714714, i64 714730, i64 714742}
!88 = !{i64 2148229960}
!89 = !{!"branch_weights", i32 2000, i32 1}
