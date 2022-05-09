; ModuleID = '/llk/IR_all_yes/sound/pci/pcxhr/pcxhr_mix22.c_pt.bc'
source_filename = "../sound/pci/pcxhr/pcxhr_mix22.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.pcxhr_mgr = type { i32, [6 x ptr], ptr, i32, i32, [3 x i32], [40 x i8], ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, %struct.snd_dma_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_pcxhr = type { ptr, ptr, i32, ptr, %struct.pcxhr_pipe, [2 x %struct.pcxhr_pipe], [4 x %struct.pcxhr_stream], [2 x %struct.pcxhr_stream], i32, i32, [2 x i32], [2 x i32], [2 x i32], [4 x [2 x i32]], [4 x [2 x i32]], [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, [5 x i8] }
%struct.pcxhr_pipe = type { i32, i32, i32 }
%struct.pcxhr_stream = type { ptr, i32, ptr, i32, i64, i32, i32, i32, i32 }
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

@hr222_sub_init.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_pcxhr\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hr222_sub_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/pci/pcxhr/pcxhr_mix22.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MIC input available = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@hr222_sub_set_clock.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hr222_sub_set_clock\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"set_clock to %dHz (realfreq=%d pllreg=%x)\0A\00", [53 x i8] zeroinitializer }, align 32
@hr222_get_external_clock.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hr222_get_external_clock\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"get_external_clock : type %d not supported\0A\00", [52 x i8] zeroinitializer }, align 32
@hr222_get_external_clock.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"get_external_clock(%d) = 0 Hz\0A\00", [33 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hr222_get_external_clock.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"External clock is at %d Hz (measured %d Hz)\0A\00", [51 x i8] zeroinitializer }, align 32
@hr222_update_analog_audio_level.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hr222_update_analog_audio_level\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"hr222_update_analog_audio_level(%s chan=%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capture\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"playback\00", [23 x i8] zeroinitializer }, align 32
@hr222_iec958_capture_byte.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hr222_iec958_capture_byte\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"read iec958 AES %d byte %d = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@hr222_control_mic_level = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 19, i32 0, ptr @hr222_mic_vol_info, ptr @hr222_mic_vol_get, ptr @hr222_mic_vol_put, %union.anon.84 { ptr @db_scale_mic_hr222 }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@hr222_control_mic_boost = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @hr222_mic_boost_info, ptr @hr222_mic_boost_get, ptr @hr222_mic_boost_put, %union.anon.84 { ptr @db_scale_micboost_hr222 }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@hr222_phantom_power_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @hr222_phantom_power_get, ptr @hr222_phantom_power_put, %union.anon.84 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@g_hr222_p_level = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\00\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\04\04\04\04\05\05\05\05\06\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0D\0E\0E\0F\10\11\12\13\14\15\17\18\1A\1B\1D\1E \22$&(+-0369<@DHLQUZ`flry\80\87\8F\98\A1\AA\B5\BF\CB\D7\E3\F1\FF", [60 x i8] zeroinitializer }, align 32
@hr222_micro_boost.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hr222_micro_boost\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hr222_micro_boost : set %x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@db_scale_mic_hr222 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9850, i32 65586], [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MicBoost Capture Volume\00", [40 x i8] zeroinitializer }, align 32
@db_scale_micboost_hr222 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 67336], [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Phantom Power Switch\00", [43 x i8] zeroinitializer }, align 32
@hr222_phantom_power.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hr222_phantom_power\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hr222_phantom_power : set %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 281, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 397, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 423, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 430, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 489, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 536, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 637, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [24 x i8] c"hr222_control_mic_level\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 734, i32 38 }
@___asan_gen_.77 = private unnamed_addr constant [24 x i8] c"hr222_control_mic_boost\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 784, i32 38 }
@___asan_gen_.80 = private unnamed_addr constant [27 x i8] c"hr222_phantom_power_switch\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 826, i32 38 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"g_hr222_p_level\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 102, i32 28 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 679, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 738, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [19 x i8] c"db_scale_mic_hr222\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 696, i32 14 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 788, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [24 x i8] c"db_scale_micboost_hr222\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 747, i32 14 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 828, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [33 x i8] c"../sound/pci/pcxhr/pcxhr_mix22.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 691, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @hr222_control_mic_level, ptr @hr222_control_mic_boost, ptr @hr222_phantom_power_switch, ptr @g_hr222_p_level, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @db_scale_mic_hr222, ptr @.str.19, ptr @db_scale_micboost_hr222, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hr222_control_mic_level to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hr222_control_mic_boost to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hr222_phantom_power_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_hr222_p_level to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_mic_hr222 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_micboost_hr222 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hr222_sub_init(ptr nocapture noundef %mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %board_has_analog = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 18
  %0 = ptrtoint ptr %board_has_analog to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %board_has_analog, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %board_has_analog, align 4
  %xlx_cfg = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 35
  %1 = ptrtoint ptr %xlx_cfg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -128, ptr %xlx_cfg, align 4
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, 48
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !66
  %6 = and i8 %5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %board_has_analog to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load4 = load i8, ptr %board_has_analog, align 4
  %bf.set6 = or i8 %bf.load4, 16
  store i8 %bf.set6, ptr %board_has_analog, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hr222_sub_init.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hr222_sub_init, %if.then12)) #3
          to label %do.body17 [label %if.then12], !srcloc !67

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %board_has_analog to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load14 = load i8, ptr %board_has_analog, align 4
  %bf.lshr = lshr i8 %bf.load14, 4
  %bf.clear15 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hr222_sub_init.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %bf.cast) #3
  br label %do.body17

do.body17:                                        ; preds = %if.then12, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !68
  tail call void @arm_heavy_mb() #3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add22 = add i32 %12, 32
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %13 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 1) #3, !srcloc !69
  tail call void @msleep(i32 noundef 5) #3
  %dsp_reset = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 37
  %14 = ptrtoint ptr %dsp_reset to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 11, ptr %dsp_reset, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !70
  tail call void @arm_heavy_mb() #3
  %15 = ptrtoint ptr %dsp_reset to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dsp_reset, align 2
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add32 = add i32 %18, 32
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %19 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %16) #3, !srcloc !69
  tail call void @msleep(i32 noundef 5) #3
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %21, 56
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %22 = inttoptr i32 %add1.i to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !71
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body17
  %mask.029.i = phi i16 [ -32768, %do.body17 ], [ %27, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !72
  tail call void @arm_heavy_mb() #3
  %and428.i = and i16 %mask.029.i, -24569
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and428.i)
  %tobool5.not.i = icmp eq i16 %and428.i, 0
  %conv6.i = select i1 %tobool5.not.i, i8 0, i8 -128
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %add9.i = add i32 %25, 44
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %26 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %conv6.i) #3, !srcloc !69
  %27 = lshr i16 %mask.029.i, 1
  %tobool.not.i = icmp ult i16 %mask.029.i, 2
  br i1 %tobool.not.i, label %hr222_config_akm.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

hr222_config_akm.exit:                            ; preds = %do.body.i
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %add18.i = add i32 %29, 40
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %30 = inttoptr i32 %add20.i to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !73
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %add.i51 = add i32 %33, 56
  %and.i52 = and i32 %add.i51, 1048575
  %add1.i53 = or i32 %and.i52, -18874368
  %34 = inttoptr i32 %add1.i53 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !71
  br label %do.body.i62

do.body.i62:                                      ; preds = %do.body.i62.do.body.i62_crit_edge, %hr222_config_akm.exit
  %mask.029.i54 = phi i16 [ -32768, %hr222_config_akm.exit ], [ %39, %do.body.i62.do.body.i62_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !72
  tail call void @arm_heavy_mb() #3
  %and428.i55 = and i16 %mask.029.i54, -24000
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and428.i55)
  %tobool5.not.i56 = icmp eq i16 %and428.i55, 0
  %conv6.i57 = select i1 %tobool5.not.i56, i8 0, i8 -128
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %add9.i58 = add i32 %37, 44
  %and10.i59 = and i32 %add9.i58, 1048575
  %add11.i60 = or i32 %and10.i59, -18874368
  %38 = inttoptr i32 %add11.i60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv6.i57) #3, !srcloc !69
  %39 = lshr i16 %mask.029.i54, 1
  %tobool.not.i61 = icmp ult i16 %mask.029.i54, 2
  br i1 %tobool.not.i61, label %hr222_config_akm.exit66, label %do.body.i62.do.body.i62_crit_edge

do.body.i62.do.body.i62_crit_edge:                ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i62

hr222_config_akm.exit66:                          ; preds = %do.body.i62
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %add18.i63 = add i32 %41, 40
  %and19.i64 = and i32 %add18.i63, 1048575
  %add20.i65 = or i32 %and19.i64, -18874368
  %42 = inttoptr i32 %add20.i65 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !73
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  %add.i68 = add i32 %45, 56
  %and.i69 = and i32 %add.i68, 1048575
  %add1.i70 = or i32 %and.i69, -18874368
  %46 = inttoptr i32 %add1.i70 to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !71
  br label %do.body.i79

do.body.i79:                                      ; preds = %do.body.i79.do.body.i79_crit_edge, %hr222_config_akm.exit66
  %mask.029.i71 = phi i16 [ -32768, %hr222_config_akm.exit66 ], [ %51, %do.body.i79.do.body.i79_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !72
  tail call void @arm_heavy_mb() #3
  %and428.i72 = and i16 %mask.029.i71, -23795
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and428.i72)
  %tobool5.not.i73 = icmp eq i16 %and428.i72, 0
  %conv6.i74 = select i1 %tobool5.not.i73, i8 0, i8 -128
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx, align 4
  %add9.i75 = add i32 %49, 44
  %and10.i76 = and i32 %add9.i75, 1048575
  %add11.i77 = or i32 %and10.i76, -18874368
  %50 = inttoptr i32 %add11.i77 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %conv6.i74) #3, !srcloc !69
  %51 = lshr i16 %mask.029.i71, 1
  %tobool.not.i78 = icmp ult i16 %mask.029.i71, 2
  br i1 %tobool.not.i78, label %hr222_config_akm.exit83, label %do.body.i79.do.body.i79_crit_edge

do.body.i79.do.body.i79_crit_edge:                ; preds = %do.body.i79
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i79

hr222_config_akm.exit83:                          ; preds = %do.body.i79
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  %add18.i80 = add i32 %53, 40
  %and19.i81 = and i32 %add18.i80, 1048575
  %add20.i82 = or i32 %and19.i81, -18874368
  %54 = inttoptr i32 %add20.i82 to ptr
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %54) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !73
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx, align 4
  %add.i85 = add i32 %57, 56
  %and.i86 = and i32 %add.i85, 1048575
  %add1.i87 = or i32 %and.i86, -18874368
  %58 = inttoptr i32 %add1.i87 to ptr
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !71
  br label %do.body.i96

do.body.i96:                                      ; preds = %do.body.i96.do.body.i96_crit_edge, %hr222_config_akm.exit83
  %mask.029.i88 = phi i16 [ -32768, %hr222_config_akm.exit83 ], [ %63, %do.body.i96.do.body.i96_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !72
  tail call void @arm_heavy_mb() #3
  %and428.i89 = and i16 %mask.029.i88, -24317
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and428.i89)
  %tobool5.not.i90 = icmp eq i16 %and428.i89, 0
  %conv6.i91 = select i1 %tobool5.not.i90, i8 0, i8 -128
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx, align 4
  %add9.i92 = add i32 %61, 44
  %and10.i93 = and i32 %add9.i92, 1048575
  %add11.i94 = or i32 %and10.i93, -18874368
  %62 = inttoptr i32 %add11.i94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 %conv6.i91) #3, !srcloc !69
  %63 = lshr i16 %mask.029.i88, 1
  %tobool.not.i95 = icmp ult i16 %mask.029.i88, 2
  br i1 %tobool.not.i95, label %hr222_config_akm.exit100, label %do.body.i96.do.body.i96_crit_edge

do.body.i96.do.body.i96_crit_edge:                ; preds = %do.body.i96
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i96

hr222_config_akm.exit100:                         ; preds = %do.body.i96
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 4
  %add18.i97 = add i32 %65, 40
  %and19.i98 = and i32 %add18.i97, 1048575
  %add20.i99 = or i32 %and19.i98, -18874368
  %66 = inttoptr i32 %add20.i99 to ptr
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %66) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !73
  %xlx_selmic.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 36
  %68 = ptrtoint ptr %xlx_selmic.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %xlx_selmic.i, align 1
  %70 = and i8 %69, -13
  store i8 %70, ptr %xlx_selmic.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !74
  tail call void @arm_heavy_mb() #3
  %71 = ptrtoint ptr %xlx_selmic.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %xlx_selmic.i, align 1
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx, align 4
  %add.i102 = add i32 %74, 64
  %and10.i103 = and i32 %add.i102, 1048575
  %add11.i104 = or i32 %and10.i103, -18874368
  %75 = inttoptr i32 %add11.i104 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 %72) #3, !srcloc !69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hr222_micro_boost.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hr222_sub_init, %if.then17.i)) #3
          to label %hr222_micro_boost.exit [label %if.then17.i], !srcloc !67

if.then17.i:                                      ; preds = %hr222_config_akm.exit100
  call void @__sanitizer_cov_trace_pc() #5
  %pci.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %76 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hr222_micro_boost.__UNIQUE_ID_ddebug249, ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef 0) #3
  br label %hr222_micro_boost.exit

hr222_micro_boost.exit:                           ; preds = %if.then17.i, %hr222_config_akm.exit100
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hr222_sub_set_clock(ptr nocapture noundef %mgr, i32 noundef %rate, ptr noundef writeonly %changed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %use_clock_type = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 20
  %0 = ptrtoint ptr %use_clock_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_clock_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = add i32 %rate, -219001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -212101, i32 %3)
  %4 = icmp ult i32 %3, -212101
  br i1 %4, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %div.i = udiv i32 56448000, %rate
  %sub.i = add nsw i32 %div.i, -1
  %div249.i = lshr i32 %sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub.i)
  %cmp3.i = icmp ult i32 %sub.i, 512
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.i = add nuw nsw i32 %div249.i, 3072
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %sub.i)
  %cmp5.i = icmp ult i32 %sub.i, 1024
  br i1 %cmp5.i, label %if.then6.i, label %if.else8.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %add7.i = add nuw nsw i32 %div249.i, 2048
  br label %if.end

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %sub.i)
  %cmp9.i = icmp ult i32 %sub.i, 2048
  br i1 %cmp9.i, label %if.then10.i, label %if.else11.i

if.then10.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #5
  %and.i = and i32 %div249.i, 511
  br label %if.end

if.else11.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i)
  %cmp12.i = icmp ult i32 %sub.i, 4096
  br i1 %cmp12.i, label %if.then13.i, label %if.else17.i

if.then13.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #5
  %shr.i = lshr i32 %sub.i, 2
  %and14.i = and i32 %shr.i, 511
  %add15.i = or i32 %and14.i, 512
  %and16.i = and i32 %div249.i, 2147483646
  br label %if.end

if.else17.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #5
  %shr18.i = lshr i32 %sub.i, 3
  %and19.i = and i32 %shr18.i, 511
  %add20.i = or i32 %and19.i, 1024
  %and21.i = and i32 %div249.i, 2147483644
  br label %if.end

if.end:                                           ; preds = %if.else17.i, %if.then13.i, %if.then10.i, %if.then6.i, %if.then4.i
  %pllreg.0 = phi i32 [ %add.i, %if.then4.i ], [ %add7.i, %if.then6.i ], [ %and.i, %if.then10.i ], [ %add15.i, %if.then13.i ], [ %add20.i, %if.else17.i ]
  %reg.0.i = phi i32 [ %div249.i, %if.then4.i ], [ %div249.i, %if.then6.i ], [ %div249.i, %if.then10.i ], [ %and16.i, %if.then13.i ], [ %and21.i, %if.else17.i ]
  %add27.i = add nuw nsw i32 %reg.0.i, 1
  %div28.i = udiv i32 28224000, %add27.i
  %xlx_cfg = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 35
  %5 = ptrtoint ptr %xlx_cfg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %xlx_cfg, align 4
  %7 = and i8 %6, -4
  store i8 %7, ptr %xlx_cfg, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %xlx_cfg3 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 35
  %8 = ptrtoint ptr %xlx_cfg3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %xlx_cfg3, align 4
  %10 = and i8 %9, -4
  %11 = or i8 %10, 1
  store i8 %11, ptr %xlx_cfg3, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %board_has_aes1 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 18
  %12 = ptrtoint ptr %board_has_aes1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %board_has_aes1, align 4
  %13 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %sw.bb10.cleanup_crit_edge, label %if.end13

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #5
  %xlx_cfg14 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 35
  %14 = ptrtoint ptr %xlx_cfg14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %xlx_cfg14, align 4
  %16 = or i8 %15, 3
  store i8 %16, ptr %xlx_cfg14, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13, %sw.bb2, %if.end
  %pllreg.2 = phi i32 [ 0, %if.end13 ], [ 0, %sw.bb2 ], [ %pllreg.0, %if.end ]
  %realfreq.1 = phi i32 [ %rate, %if.end13 ], [ %rate, %sw.bb2 ], [ %div28.i, %if.end ]
  %arrayidx.i = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.i102 = add i32 %18, 56
  %and.i103 = and i32 %add.i102, 1048575
  %add1.i = or i32 %and.i103, -18874368
  %19 = inttoptr i32 %add1.i to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !71
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %sw.epilog
  %mask.029.i = phi i16 [ -32768, %sw.epilog ], [ %24, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !72
  tail call void @arm_heavy_mb() #3
  %and428.i = and i16 %mask.029.i, -23667
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and428.i)
  %tobool5.not.i = icmp eq i16 %and428.i, 0
  %conv6.i = select i1 %tobool5.not.i, i8 0, i8 -128
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %add9.i = add i32 %22, 44
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %23 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv6.i) #3, !srcloc !69
  %24 = lshr i16 %mask.029.i, 1
  %tobool.not.i = icmp ult i16 %mask.029.i, 2
  br i1 %tobool.not.i, label %hr222_config_akm.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

hr222_config_akm.exit:                            ; preds = %do.body.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add18.i = add i32 %26, 40
  %and19.i104 = and i32 %add18.i, 1048575
  %add20.i105 = or i32 %and19.i104, -18874368
  %27 = inttoptr i32 %add20.i105 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !73
  %29 = ptrtoint ptr %use_clock_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %use_clock_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %do.body, label %hr222_config_akm.exit.do.body37_crit_edge

hr222_config_akm.exit.do.body37_crit_edge:        ; preds = %hr222_config_akm.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body37

do.body:                                          ; preds = %hr222_config_akm.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !75
  tail call void @arm_heavy_mb() #3
  %shr = lshr i32 %pllreg.2, 8
  %conv21 = trunc i32 %shr to i8
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %add = add i32 %32, 56
  %and22 = and i32 %add, 1048575
  %add23 = or i32 %and22, -18874368
  %33 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %conv21) #3, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !76
  tail call void @arm_heavy_mb() #3
  %conv29 = trunc i32 %pllreg.2 to i8
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %add32 = add i32 %35, 52
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %36 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %conv29) #3, !srcloc !69
  br label %do.body37

do.body37:                                        ; preds = %do.body, %hr222_config_akm.exit.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !77
  tail call void @arm_heavy_mb() #3
  %xlx_cfg40 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 35
  %37 = ptrtoint ptr %xlx_cfg40 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %xlx_cfg40, align 4
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %add43 = add i32 %40, 36
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %41 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %38) #3, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 55000, i32 %rate)
  %cmp47 = icmp ult i32 %rate, 55000
  %not.cmp47 = xor i1 %cmp47, true
  %cond = zext i1 %not.cmp47 to i32
  %codec_speed = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 29
  %42 = ptrtoint ptr %codec_speed to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %codec_speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %cond)
  %cmp49.not = icmp eq i32 %43, %cond
  br i1 %cmp49.not, label %do.body37.if.end57_crit_edge, label %if.then51

do.body37.if.end57_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

if.then51:                                        ; preds = %do.body37
  %44 = ptrtoint ptr %codec_speed to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %cond, ptr %codec_speed, align 4
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 4
  %add.i107 = add i32 %46, 56
  %and.i108 = and i32 %add.i107, 1048575
  %add1.i109 = or i32 %and.i108, -18874368
  %47 = inttoptr i32 %add1.i109 to ptr
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %47) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  br i1 %cmp47, label %if.then51.do.body.i118_crit_edge, label %if.then51.do.body.i135_crit_edge

if.then51.do.body.i135_crit_edge:                 ; preds = %if.then51
  br label %do.body.i135

if.then51.do.body.i118_crit_edge:                 ; preds = %if.then51
  br label %do.body.i118

do.body.i118:                                     ; preds = %do.body.i118.do.body.i118_crit_edge, %if.then51.do.body.i118_crit_edge
  %mask.029.i110 = phi i16 [ %52, %do.body.i118.do.body.i118_crit_edge ], [ -32768, %if.then51.do.body.i118_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !72
  tail call void @arm_heavy_mb() #3
  %and428.i111 = and i16 %mask.029.i110, -24000
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and428.i111)
  %tobool5.not.i112 = icmp eq i16 %and428.i111, 0
  %conv6.i113 = select i1 %tobool5.not.i112, i8 0, i8 -128
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  %add9.i114 = add i32 %50, 44
  %and10.i115 = and i32 %add9.i114, 1048575
  %add11.i116 = or i32 %and10.i115, -18874368
  %51 = inttoptr i32 %add11.i116 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %conv6.i113) #3, !srcloc !69
  %52 = lshr i16 %mask.029.i110, 1
  %tobool.not.i117 = icmp ult i16 %mask.029.i110, 2
  br i1 %tobool.not.i117, label %hr222_config_akm.exit122, label %do.body.i118.do.body.i118_crit_edge

do.body.i118.do.body.i118_crit_edge:              ; preds = %do.body.i118
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i118

hr222_config_akm.exit122:                         ; preds = %do.body.i118
  call void @__sanitizer_cov_trace_pc() #5
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i, align 4
  %add18.i119 = add i32 %54, 40
  %and19.i120 = and i32 %add18.i119, 1048575
  %add20.i121 = or i32 %and19.i120, -18874368
  %55 = inttoptr i32 %add20.i121 to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !73
  br label %if.end57

do.body.i135:                                     ; preds = %do.body.i135.do.body.i135_crit_edge, %if.then51.do.body.i135_crit_edge
  %mask.029.i127 = phi i16 [ %60, %do.body.i135.do.body.i135_crit_edge ], [ -32768, %if.then51.do.body.i135_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !72
  tail call void @arm_heavy_mb() #3
  %and428.i128 = and i16 %mask.029.i127, -23987
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and428.i128)
  %tobool5.not.i129 = icmp eq i16 %and428.i128, 0
  %conv6.i130 = select i1 %tobool5.not.i129, i8 0, i8 -128
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i, align 4
  %add9.i131 = add i32 %58, 44
  %and10.i132 = and i32 %add9.i131, 1048575
  %add11.i133 = or i32 %and10.i132, -18874368
  %59 = inttoptr i32 %add11.i133 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %conv6.i130) #3, !srcloc !69
  %60 = lshr i16 %mask.029.i127, 1
  %tobool.not.i134 = icmp ult i16 %mask.029.i127, 2
  br i1 %tobool.not.i134, label %hr222_config_akm.exit139, label %do.body.i135.do.body.i135_crit_edge

do.body.i135.do.body.i135_crit_edge:              ; preds = %do.body.i135
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i135

hr222_config_akm.exit139:                         ; preds = %do.body.i135
  call void @__sanitizer_cov_trace_pc() #5
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i, align 4
  %add18.i136 = add i32 %62, 40
  %and19.i137 = and i32 %add18.i136, 1048575
  %add20.i138 = or i32 %and19.i137, -18874368
  %63 = inttoptr i32 %add20.i138 to ptr
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %63) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !73
  br label %if.end57

if.end57:                                         ; preds = %hr222_config_akm.exit139, %hr222_config_akm.exit122, %do.body37.if.end57_crit_edge
  %sample_rate_real = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 30
  %65 = ptrtoint ptr %sample_rate_real to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %realfreq.1, ptr %sample_rate_real, align 4
  %66 = ptrtoint ptr %use_clock_type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %use_clock_type, align 4
  %cur_clock_type = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 21
  %68 = ptrtoint ptr %cur_clock_type to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %cur_clock_type, align 4
  %tobool59.not = icmp eq ptr %changed, null
  br i1 %tobool59.not, label %if.end57.if.end61_crit_edge, label %if.then60

if.end57.if.end61_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  %69 = ptrtoint ptr %changed to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %changed, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end57.if.end61_crit_edge
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i, align 4
  %add.i141 = add i32 %71, 56
  %and.i142 = and i32 %add.i141, 1048575
  %add1.i143 = or i32 %and.i142, -18874368
  %72 = inttoptr i32 %add1.i143 to ptr
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %72) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !71
  br label %do.body.i152

do.body.i152:                                     ; preds = %do.body.i152.do.body.i152_crit_edge, %if.end61
  %mask.029.i144 = phi i16 [ -32768, %if.end61 ], [ %77, %do.body.i152.do.body.i152_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !72
  tail call void @arm_heavy_mb() #3
  %and428.i145 = and i16 %mask.029.i144, -23795
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and428.i145)
  %tobool5.not.i146 = icmp eq i16 %and428.i145, 0
  %conv6.i147 = select i1 %tobool5.not.i146, i8 0, i8 -128
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i, align 4
  %add9.i148 = add i32 %75, 44
  %and10.i149 = and i32 %add9.i148, 1048575
  %add11.i150 = or i32 %and10.i149, -18874368
  %76 = inttoptr i32 %add11.i150 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 %conv6.i147) #3, !srcloc !69
  %77 = lshr i16 %mask.029.i144, 1
  %tobool.not.i151 = icmp ult i16 %mask.029.i144, 2
  br i1 %tobool.not.i151, label %hr222_config_akm.exit156, label %do.body.i152.do.body.i152_crit_edge

do.body.i152.do.body.i152_crit_edge:              ; preds = %do.body.i152
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i152

hr222_config_akm.exit156:                         ; preds = %do.body.i152
  call void @__sanitizer_cov_trace_pc() #5
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i, align 4
  %add18.i153 = add i32 %79, 40
  %and19.i154 = and i32 %add18.i153, 1048575
  %add20.i155 = or i32 %and19.i154, -18874368
  %80 = inttoptr i32 %add20.i155 to ptr
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %80) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hr222_sub_set_clock.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hr222_sub_set_clock, %if.then67)) #3
          to label %cleanup [label %if.then67], !srcloc !67

if.then67:                                        ; preds = %hr222_config_akm.exit156
  call void @__sanitizer_cov_trace_pc() #5
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %82 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hr222_sub_set_clock.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %rate, i32 noundef %realfreq.1, i32 noundef %pllreg.2) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %hr222_config_akm.exit156, %sw.bb10.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb10.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then67 ], [ -22, %sw.bb.cleanup_crit_edge ], [ 0, %hr222_config_akm.exit156 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hr222_get_external_clock(ptr nocapture noundef %mgr, i32 noundef %clock_type, ptr nocapture noundef writeonly %sample_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %clock_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %clock_type, label %entry.do.body_crit_edge [
    i32 1, label %entry.if.end9_crit_edge
    i32 2, label %land.lhs.true
  ]

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %board_has_aes1 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 18
  %1 = ptrtoint ptr %board_has_aes1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %board_has_aes1, align 4
  %2 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hr222_get_external_clock.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hr222_get_external_clock, %if.then7)) #3
          to label %cleanup [label %if.then7], !srcloc !67

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %3 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hr222_get_external_clock.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %clock_type) #3
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %reg.0 = phi i8 [ 1, %entry.if.end9_crit_edge ], [ 2, %land.lhs.true.if.end9_crit_edge ]
  %mask.0 = phi i32 [ 3, %entry.if.end9_crit_edge ], [ 48, %land.lhs.true.if.end9_crit_edge ]
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, 60
  %and = and i32 %add, 1048575
  %add10 = or i32 %and, -18874368
  %7 = inttoptr i32 %add10 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !78
  %conv = zext i8 %8 to i32
  %and15 = and i32 %mask.0, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %and15, i32 %mask.0)
  %cmp17.not = icmp eq i32 %and15, %mask.0
  br i1 %cmp17.not, label %do.body39, label %do.body20

do.body20:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hr222_get_external_clock.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hr222_get_external_clock, %if.then32)) #3
          to label %do.end37 [label %if.then32], !srcloc !67

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #5
  %pci33 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %9 = ptrtoint ptr %pci33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci33, align 4
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hr222_get_external_clock.__UNIQUE_ID_ddebug245, ptr noundef %dev34, ptr noundef nonnull @.str.8, i32 noundef %clock_type) #3
  br label %do.end37

do.end37:                                         ; preds = %if.then32, %do.body20
  %11 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sample_rate, align 4
  br label %cleanup

do.body39:                                        ; preds = %if.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !79
  tail call void @arm_heavy_mb() #3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add44 = add i32 %13, 48
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %14 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %reg.0) #3, !srcloc !69
  %15 = or i8 %reg.0, -128
  %last_reg_stat = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 31
  %16 = ptrtoint ptr %last_reg_stat to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_reg_stat, align 4
  %conv50 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv50)
  %cmp51.not = icmp eq i32 %17, %conv50
  br i1 %cmp51.not, label %do.body39.do.body57_crit_edge, label %if.then53

do.body39.do.body57_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body57

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 107374000) #3
  %19 = ptrtoint ptr %last_reg_stat to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv50, ptr %last_reg_stat, align 4
  br label %do.body57

do.body57:                                        ; preds = %if.then53, %do.body39.do.body57_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !80
  tail call void @arm_heavy_mb() #3
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %add62 = add i32 %21, 48
  %and63 = and i32 %add62, 1048575
  %add64 = or i32 %and63, -18874368
  %22 = inttoptr i32 %add64 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %15) #3, !srcloc !69
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %add69 = add i32 %24, 36
  %and70 = and i32 %add69, 1048575
  %add71 = or i32 %and70, -18874368
  %25 = inttoptr i32 %add71 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !81
  %27 = and i8 %26, 3
  %and76 = zext i8 %27 to i32
  %shl = shl nuw nsw i32 %and76, 8
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %add80 = add i32 %29, 32
  %and81 = and i32 %add80, 1048575
  %add82 = or i32 %and81, -18874368
  %30 = inttoptr i32 %add82 to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !82
  %conv86 = zext i8 %31 to i32
  %or87 = or i32 %shl, %conv86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or87)
  %cmp88.not = icmp eq i32 %or87, 0
  br i1 %cmp88.not, label %do.body57.do.body167_crit_edge, label %if.end91

do.body57.do.body167_crit_edge:                   ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body167

if.end91:                                         ; preds = %do.body57
  %div = udiv i32 28224000, %or87
  call void @__sanitizer_cov_trace_const_cmp4(i32 154, i32 %or87)
  %cmp92 = icmp ult i32 %or87, 154
  br i1 %cmp92, label %if.end91.do.body167_crit_edge, label %if.else95

if.end91.do.body167_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body167

if.else95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_const_cmp4(i32 186, i32 %or87)
  %cmp96 = icmp ult i32 %or87, 186
  br i1 %cmp96, label %if.else95.do.body167_crit_edge, label %if.else99

if.else95.do.body167_crit_edge:                   ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body167

if.else99:                                        ; preds = %if.else95
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %or87)
  %cmp100 = icmp ult i32 %or87, 252
  br i1 %cmp100, label %if.else99.do.body167_crit_edge, label %if.else103

if.else99.do.body167_crit_edge:                   ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body167

if.else103:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_const_cmp4(i32 307, i32 %or87)
  %cmp104 = icmp ult i32 %or87, 307
  br i1 %cmp104, label %if.else103.do.body167_crit_edge, label %if.else107

if.else103.do.body167_crit_edge:                  ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body167

if.else107:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_const_cmp4(i32 371, i32 %or87)
  %cmp108 = icmp ult i32 %or87, 371
  br i1 %cmp108, label %if.else107.do.body167_crit_edge, label %if.else111

if.else107.do.body167_crit_edge:                  ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body167

if.else111:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_const_cmp4(i32 504, i32 %or87)
  %cmp112 = icmp ult i32 %or87, 504
  br i1 %cmp112, label %if.else111.do.body167_crit_edge, label %if.else115

if.else111.do.body167_crit_edge:                  ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body167

if.else115:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_const_cmp4(i32 613, i32 %or87)
  %cmp116 = icmp ult i32 %or87, 613
  br i1 %cmp116, label %if.else115.do.body167_crit_edge, label %if.else119

if.else115.do.body167_crit_edge:                  ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body167

if.else119:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_const_cmp4(i32 742, i32 %or87)
  %cmp120 = icmp ult i32 %or87, 742
  br i1 %cmp120, label %if.else119.do.body167_crit_edge, label %if.else123

if.else119.do.body167_crit_edge:                  ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body167

if.else123:                                       ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1008, i32 %or87)
  %cmp124 = icmp ult i32 %or87, 1008
  %spec.select = select i1 %cmp124, i32 32000, i32 24000
  br label %do.body167

do.body167:                                       ; preds = %if.else123, %if.else119.do.body167_crit_edge, %if.else115.do.body167_crit_edge, %if.else111.do.body167_crit_edge, %if.else107.do.body167_crit_edge, %if.else103.do.body167_crit_edge, %if.else99.do.body167_crit_edge, %if.else95.do.body167_crit_edge, %if.end91.do.body167_crit_edge, %do.body57.do.body167_crit_edge
  %calc_rate.0238 = phi i32 [ %div, %if.end91.do.body167_crit_edge ], [ %div, %if.else95.do.body167_crit_edge ], [ %div, %if.else99.do.body167_crit_edge ], [ %div, %if.else103.do.body167_crit_edge ], [ %div, %if.else107.do.body167_crit_edge ], [ %div, %if.else111.do.body167_crit_edge ], [ %div, %if.else115.do.body167_crit_edge ], [ %div, %if.else119.do.body167_crit_edge ], [ 0, %do.body57.do.body167_crit_edge ], [ %div, %if.else123 ]
  %rate.0 = phi i32 [ 192000, %if.end91.do.body167_crit_edge ], [ 176400, %if.else95.do.body167_crit_edge ], [ 128000, %if.else99.do.body167_crit_edge ], [ 96000, %if.else103.do.body167_crit_edge ], [ 88200, %if.else107.do.body167_crit_edge ], [ 64000, %if.else111.do.body167_crit_edge ], [ 48000, %if.else115.do.body167_crit_edge ], [ 44100, %if.else119.do.body167_crit_edge ], [ 0, %do.body57.do.body167_crit_edge ], [ %spec.select, %if.else123 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hr222_get_external_clock.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hr222_get_external_clock, %if.then179)) #3
          to label %do.end184 [label %if.then179], !srcloc !67

if.then179:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #5
  %pci180 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %32 = ptrtoint ptr %pci180 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci180, align 4
  %dev181 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hr222_get_external_clock.__UNIQUE_ID_ddebug246, ptr noundef %dev181, ptr noundef nonnull @.str.9, i32 noundef %rate.0, i32 noundef %calc_rate.0238) #3
  br label %do.end184

do.end184:                                        ; preds = %if.then179, %do.body167
  %34 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %rate.0, ptr %sample_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end184, %do.end37, %if.then7, %do.body
  %retval.0 = phi i32 [ 0, %do.end37 ], [ 0, %do.end184 ], [ -22, %if.then7 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hr222_read_gpio(ptr nocapture noundef readonly %mgr, i32 noundef %is_gpi, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_gpi)
  %tobool.not = icmp eq i32 %is_gpi, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, 48
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  %4 = lshr i8 %3, 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dsp_reset = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 37
  %5 = ptrtoint ptr %dsp_reset to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dsp_reset, align 2
  %7 = lshr i8 %6, 5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge.in.in = phi i8 [ %7, %if.else ], [ %4, %if.then ]
  %storemerge.in = and i8 %storemerge.in.in, 3
  %storemerge = zext i8 %storemerge.in to i32
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge, ptr %value, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hr222_write_gpo(ptr nocapture noundef %mgr, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_reset = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 37
  %0 = ptrtoint ptr %dsp_reset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dsp_reset, align 2
  %2 = and i8 %1, -97
  %value.tr = trunc i32 %value to i8
  %3 = shl i8 %value.tr, 5
  %4 = and i8 %3, 96
  %conv6 = or i8 %2, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !84
  tail call void @arm_heavy_mb() #3
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, 32
  %and7 = and i32 %add, 1048575
  %add8 = or i32 %and7, -18874368
  %7 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv6) #3, !srcloc !69
  %8 = ptrtoint ptr %dsp_reset to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv6, ptr %dsp_reset, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hr222_manage_timecode(ptr nocapture noundef %mgr, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %dsp_reset2 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 37
  %0 = ptrtoint ptr %dsp_reset2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dsp_reset2, align 2
  %2 = and i8 %1, -17
  %masksel = select i1 %tobool.not, i8 0, i8 16
  %.sink = or i8 %2, %masksel
  store i8 %.sink, ptr %dsp_reset2, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !85
  tail call void @arm_heavy_mb() #3
  %dsp_reset5 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 37
  %3 = ptrtoint ptr %dsp_reset5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dsp_reset5, align 2
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, 32
  %and6 = and i32 %add, 1048575
  %add7 = or i32 %and6, -18874368
  %7 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %4) #3, !srcloc !69
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hr222_update_analog_audio_level(ptr nocapture noundef readonly %chip, i32 noundef %is_capture, i32 noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hr222_update_analog_audio_level.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hr222_update_analog_audio_level, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_capture)
  %tobool3.not = icmp eq i32 %is_capture, 0
  %cond = select i1 %tobool3.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hr222_update_analog_audio_level.__UNIQUE_ID_ddebug247, ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond, i32 noundef %channel) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_capture)
  %tobool4.not = icmp eq i32 %is_capture, 0
  br i1 %tobool4.not, label %if.else16, label %if.then5

if.then5:                                         ; preds = %do.end
  %analog_capture_active = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 22
  %4 = ptrtoint ptr %analog_capture_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %analog_capture_active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.then5.if.end10_crit_edge, label %if.then7

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  %analog_capture_volume = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 12
  %6 = ptrtoint ptr %analog_capture_volume to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %analog_capture_volume, align 8
  %arrayidx9 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9, align 4
  %phi.bo = shl i32 %9, 8
  %phi.bo45 = and i32 %phi.bo, 65280
  %phi.bo46 = and i32 %7, 255
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then5.if.end10_crit_edge
  %level_l.0 = phi i32 [ %phi.bo46, %if.then7 ], [ 0, %if.then5.if.end10_crit_edge ]
  %level_r.0 = phi i32 [ %phi.bo45, %if.then7 ], [ 0, %if.then5.if.end10_crit_edge ]
  %mic_active = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 21
  %10 = ptrtoint ptr %mic_active to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mic_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %mic_volume = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 19
  %12 = ptrtoint ptr %mic_volume to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mic_volume, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %level_mic.0 = phi i32 [ %13, %if.then12 ], [ 0, %if.end10.if.end14_crit_edge ]
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 1
  %14 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mgr, align 4
  %capture_chips.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %capture_chips.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %capture_chips.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end14.return_crit_edge, label %if.end.i

if.end14.return_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i:                                         ; preds = %if.end14
  %shl.i = shl i32 %level_mic.0, 24
  %and.i = shl i32 %level_mic.0, 16
  %shl2.i = and i32 %and.i, 16711680
  %or.i = or i32 %shl2.i, %shl.i
  %or5.i = or i32 %or.i, %level_r.0
  %or7.i = or i32 %or5.i, %level_l.0
  %arrayidx.i = getelementptr %struct.pcxhr_mgr, ptr %15, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, 44
  %and8.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %20 = inttoptr i32 %add9.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !86
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end.i
  %data.040.i = phi i32 [ %or7.i, %if.end.i ], [ %shl19.i, %do.body.i.do.body.i_crit_edge ]
  %i.039.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !87
  tail call void @arm_heavy_mb() #3
  %22 = lshr i32 %data.040.i, 24
  %23 = trunc i32 %22 to i8
  %conv.i = and i8 %23, -128
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %add15.i = add i32 %25, 44
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %26 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %conv.i) #3, !srcloc !69
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %shl19.i = shl i32 %data.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

for.end.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %add23.i = add i32 %28, 40
  %and24.i = and i32 %add23.i, 1048575
  %add25.i = or i32 %and24.i, -18874368
  %29 = inttoptr i32 %add25.i to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !88
  br label %return

if.else16:                                        ; preds = %do.end
  %arrayidx17 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 10, i32 %channel
  %31 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool18.not = icmp eq i32 %32, 0
  br i1 %tobool18.not, label %if.else16.if.end22_crit_edge, label %if.then19

if.else16.if.end22_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx20 = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 11, i32 %channel
  %33 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx20, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.else16.if.end22_crit_edge
  %vol.0 = phi i32 [ %34, %if.then19 ], [ 0, %if.else16.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp.i = icmp sgt i32 %channel, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %vol.0)
  %cmp3.i = icmp ugt i32 %vol.0, 99
  %or.cond13.i = or i1 %cmp.i, %cmp3.i
  br i1 %or.cond13.i, label %if.end22.return_crit_edge, label %if.end.i42

if.end22.return_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i42:                                       ; preds = %if.end22
  %mgr23 = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 1
  %35 = ptrtoint ptr %mgr23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mgr23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp4.i = icmp eq i32 %channel, 0
  %..i = select i1 %cmp4.i, i16 -23040, i16 -22784
  %arrayidx.i39 = getelementptr [100 x i8], ptr @g_hr222_p_level, i32 0, i32 %vol.0
  %37 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i39, align 1
  %conv.i40 = zext i8 %38 to i16
  %add.i41 = or i16 %..i, %conv.i40
  %arrayidx.i.i = getelementptr %struct.pcxhr_mgr, ptr %36, i32 0, i32 5, i32 2
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %40, 56
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %41 = inttoptr i32 %add1.i.i to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !71
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end.i42
  %mask.029.i.i = phi i16 [ -32768, %if.end.i42 ], [ %46, %do.body.i.i.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !72
  tail call void @arm_heavy_mb() #3
  %and428.i.i = and i16 %mask.029.i.i, %add.i41
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and428.i.i)
  %tobool5.not.i.i = icmp eq i16 %and428.i.i, 0
  %conv6.i.i = select i1 %tobool5.not.i.i, i8 0, i8 -128
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i, align 4
  %add9.i.i = add i32 %44, 44
  %and10.i.i = and i32 %add9.i.i, 1048575
  %add11.i.i = or i32 %and10.i.i, -18874368
  %45 = inttoptr i32 %add11.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 %conv6.i.i) #3, !srcloc !69
  %46 = lshr i16 %mask.029.i.i, 1
  %tobool.not.i.i = icmp ult i16 %mask.029.i.i, 2
  br i1 %tobool.not.i.i, label %hr222_config_akm.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i

hr222_config_akm.exit.i:                          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i, align 4
  %add18.i.i = add i32 %48, 40
  %and19.i.i = and i32 %add18.i.i, 1048575
  %add20.i.i = or i32 %and19.i.i, -18874368
  %49 = inttoptr i32 %add20.i.i to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !73
  br label %return

return:                                           ; preds = %hr222_config_akm.exit.i, %if.end22.return_crit_edge, %for.end.i, %if.end14.return_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.i ], [ -22, %if.end14.return_crit_edge ], [ 0, %hr222_config_akm.exit.i ], [ -22, %if.end22.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hr222_set_audio_source(ptr nocapture noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mgr, align 4
  %xlx_cfg = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %xlx_cfg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %xlx_cfg, align 4
  %4 = and i8 %3, -29
  store i8 %4, ptr %xlx_cfg, align 4
  %audio_capture_source = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 18
  %5 = ptrtoint ptr %audio_capture_source to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %audio_capture_source, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %6, label %if.else27 [
    i32 2, label %if.then
    i32 1, label %entry.if.then12_crit_edge
  ]

entry.if.then12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mgr, align 4
  %xlx_cfg4 = getelementptr inbounds %struct.pcxhr_mgr, ptr %9, i32 0, i32 35
  %10 = ptrtoint ptr %xlx_cfg4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %xlx_cfg4, align 4
  %12 = or i8 %11, 4
  store i8 %12, ptr %xlx_cfg4, align 4
  br label %if.then12

if.then12:                                        ; preds = %if.then, %entry.if.then12_crit_edge
  %13 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mgr, align 4
  %xlx_cfg14 = getelementptr inbounds %struct.pcxhr_mgr, ptr %14, i32 0, i32 35
  %15 = ptrtoint ptr %xlx_cfg14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %xlx_cfg14, align 4
  %17 = or i8 %16, 8
  store i8 %17, ptr %xlx_cfg14, align 4
  %18 = load ptr, ptr %mgr, align 4
  %board_has_aes1 = getelementptr inbounds %struct.pcxhr_mgr, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %board_has_aes1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %board_has_aes1, align 4
  %20 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool19.not = icmp eq i8 %20, 0
  br i1 %tobool19.not, label %if.then12.do.body_crit_edge, label %if.then20

if.then12.do.body_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then20:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  %xlx_cfg22 = getelementptr inbounds %struct.pcxhr_mgr, ptr %18, i32 0, i32 35
  %21 = ptrtoint ptr %xlx_cfg22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %xlx_cfg22, align 4
  %23 = or i8 %22, 16
  store i8 %23, ptr %xlx_cfg22, align 4
  br label %do.body

if.else27:                                        ; preds = %entry
  %analog_capture_active = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 22
  %24 = ptrtoint ptr %analog_capture_active to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %analog_capture_active, align 8
  %mic_active = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 21
  %25 = ptrtoint ptr %mic_active to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %mic_active, align 4
  %26 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %6, label %if.end41 [
    i32 0, label %if.else27.if.end41.thread_crit_edge
    i32 4, label %if.else27.if.end41.thread_crit_edge98
  ]

if.else27.if.end41.thread_crit_edge98:            ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41.thread

if.else27.if.end41.thread_crit_edge:              ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41.thread

if.end41:                                         ; preds = %if.else27
  %.off = add i32 %6, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end41.if.end56.thread_crit_edge, label %if.end41.do.body_crit_edge

if.end41.do.body_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.end41.if.end56.thread_crit_edge:               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end56.thread

if.end41.thread:                                  ; preds = %if.else27.if.end41.thread_crit_edge, %if.else27.if.end41.thread_crit_edge98
  %27 = ptrtoint ptr %analog_capture_active to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %analog_capture_active, align 8
  %.off93 = add nsw i32 %6, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off93)
  %switch94 = icmp ult i32 %.off93, 2
  br i1 %switch94, label %if.end41.thread.if.end56.thread_crit_edge, label %if.end41.thread.if.then58_crit_edge

if.end41.thread.if.then58_crit_edge:              ; preds = %if.end41.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then58

if.end41.thread.if.end56.thread_crit_edge:        ; preds = %if.end41.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end56.thread

if.end56.thread:                                  ; preds = %if.end41.thread.if.end56.thread_crit_edge, %if.end41.if.end56.thread_crit_edge
  %28 = ptrtoint ptr %mic_active to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %mic_active, align 4
  br label %if.then58

if.then58:                                        ; preds = %if.end56.thread, %if.end41.thread.if.then58_crit_edge
  %call = tail call i32 @hr222_update_analog_audio_level(ptr noundef %chip, i32 noundef 1, i32 noundef 0)
  br label %do.body

do.body:                                          ; preds = %if.then58, %if.end41.do.body_crit_edge, %if.then20, %if.then12.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !89
  tail call void @arm_heavy_mb() #3
  %29 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mgr, align 4
  %xlx_cfg62 = getelementptr inbounds %struct.pcxhr_mgr, ptr %30, i32 0, i32 35
  %31 = ptrtoint ptr %xlx_cfg62 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %xlx_cfg62, align 4
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %30, i32 0, i32 5, i32 2
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %add = add i32 %34, 36
  %and64 = and i32 %add, 1048575
  %add65 = or i32 %and64, -18874368
  %35 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %32) #3, !srcloc !69
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hr222_iec958_capture_byte(ptr nocapture noundef readonly %chip, i32 noundef %aes_idx, ptr nocapture noundef writeonly %aes_bits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %aes_idx.tr = trunc i32 %aes_idx to i8
  %conv = shl i8 %aes_idx.tr, 3
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mgr, align 4
  %board_has_aes1 = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %board_has_aes1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %board_has_aes1, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %conv1 = select i1 %tobool.not, i32 4, i32 64
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %idx.045 = phi i8 [ %conv, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %temp.044 = phi i8 [ 0, %entry ], [ %spec.select, %do.body.do.body_crit_edge ]
  %i.043 = phi i32 [ 0, %entry ], [ %inc21, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !90
  tail call void @arm_heavy_mb() #3
  %inc = add i8 %idx.045, 1
  %4 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mgr, align 4
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %5, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, 40
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %8 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %idx.045) #3, !srcloc !69
  %shl = shl i8 %temp.044, 1
  %9 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mgr, align 4
  %arrayidx9 = getelementptr %struct.pcxhr_mgr, ptr %10, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9, align 4
  %add10 = add i32 %12, 60
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %13 = inttoptr i32 %add12 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !91
  %conv15 = zext i8 %14 to i32
  %and17 = and i32 %conv1, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp ne i32 %and17, 0
  %15 = zext i1 %tobool18.not to i8
  %spec.select = or i8 %shl, %15
  %inc21 = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc21, 8
  br i1 %exitcond.not, label %do.body22, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body22:                                        ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hr222_iec958_capture_byte.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hr222_iec958_capture_byte, %if.then28)) #3
          to label %do.end32 [label %if.then28], !srcloc !67

if.then28:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %chip_idx = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 2
  %20 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chip_idx, align 8
  %conv29 = zext i8 %spec.select to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hr222_iec958_capture_byte.__UNIQUE_ID_ddebug248, ptr noundef %19, ptr noundef nonnull @.str.15, i32 noundef %21, i32 noundef %aes_idx, i32 noundef %conv29) #3
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %do.body22
  %22 = ptrtoint ptr %aes_bits to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %spec.select, ptr %aes_bits, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hr222_iec958_update_byte(ptr nocapture noundef %chip, i32 noundef %aes_idx, i8 noundef zeroext %aes_bits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_pcxhr, ptr %chip, i32 0, i32 24, i32 %aes_idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %aes_idx.tr = trunc i32 %aes_idx to i8
  %conv = shl i8 %aes_idx.tr, 3
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %idx.046 = phi i8 [ %conv, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %old_bits.045 = phi i8 [ %1, %entry ], [ %14, %if.end.for.body_crit_edge ]
  %new_bits.044 = phi i8 [ %aes_bits, %entry ], [ %15, %if.end.for.body_crit_edge ]
  %i.043 = phi i32 [ 0, %entry ], [ %inc29, %if.end.for.body_crit_edge ]
  %2 = and i8 %old_bits.045, 1
  %3 = and i8 %new_bits.044, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %3)
  %cmp6.not = icmp eq i8 %2, %3
  br i1 %cmp6.not, label %for.body.if.end_crit_edge, label %do.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !92
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mgr, align 4
  %arrayidx8 = getelementptr %struct.pcxhr_mgr, ptr %5, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8, align 4
  %add = add i32 %7, 40
  %and9 = and i32 %add, 1048575
  %add10 = or i32 %and9, -18874368
  %8 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %idx.046) #3, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !93
  tail call void @arm_heavy_mb() #3
  %9 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mgr, align 4
  %arrayidx19 = getelementptr %struct.pcxhr_mgr, ptr %10, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx19, align 4
  %add20 = add i32 %12, 60
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %13 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %3) #3, !srcloc !69
  br label %if.end

if.end:                                           ; preds = %do.body, %for.body.if.end_crit_edge
  %inc = add i8 %idx.046, 1
  %14 = lshr i8 %old_bits.045, 1
  %15 = lshr i8 %new_bits.044, 1
  %inc29 = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc29, 8
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %aes_bits, ptr %arrayidx, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hr222_add_mic_controls(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mgr, align 4
  %board_has_mic = getelementptr inbounds %struct.pcxhr_mgr, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %board_has_mic to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %board_has_mic, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @hr222_control_mic_level, ptr noundef %chip) #3
  %call1 = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef %call) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 8
  %call5 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @hr222_control_mic_boost, ptr noundef %chip) #3
  %call6 = tail call i32 @snd_ctl_add(ptr noundef %7, ptr noundef %call5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %call11 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @hr222_phantom_power_switch, ptr noundef %chip) #3
  %call12 = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef %call11) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call6, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hr222_mic_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 210, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hr222_mic_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #3
  %mic_volume = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %mic_volume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mic_volume, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %7 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mgr, align 4
  %mixer_mutex2 = getelementptr inbounds %struct.pcxhr_mgr, ptr %8, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex2) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hr222_mic_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #3
  %mic_volume = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %mic_volume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mic_volume, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %mic_volume to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mic_volume, align 4
  %call = tail call i32 @hr222_update_analog_audio_level(ptr noundef %1, i32 noundef 1, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %changed.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %9 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mgr, align 4
  %mixer_mutex5 = getelementptr inbounds %struct.pcxhr_mgr, ptr %10, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex5) #3
  ret i32 %changed.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hr222_mic_boost_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hr222_mic_boost_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #3
  %mic_boost = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %mic_boost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mic_boost, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %7 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mgr, align 4
  %mixer_mutex2 = getelementptr inbounds %struct.pcxhr_mgr, ptr %8, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex2) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hr222_mic_boost_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #3
  %mic_boost = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %mic_boost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mic_boost, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %mic_boost to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mic_boost, align 8
  %9 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mgr, align 4
  %conv.i = shl i32 %7, 2
  %conv1.i = and i32 %conv.i, 252
  %11 = and i32 %7, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %xlx_selmic.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %10, i32 0, i32 36
  %12 = ptrtoint ptr %xlx_selmic.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %xlx_selmic.i, align 1
  %14 = and i8 %13, -13
  %15 = trunc i32 %conv.i to i8
  %conv8.i = or i8 %14, %15
  store i8 %conv8.i, ptr %xlx_selmic.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !74
  tail call void @arm_heavy_mb() #3
  %16 = ptrtoint ptr %xlx_selmic.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %xlx_selmic.i, align 1
  %arrayidx.i = getelementptr %struct.pcxhr_mgr, ptr %10, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, 64
  %and10.i = and i32 %add.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %20 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %17) #3, !srcloc !69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hr222_micro_boost.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hr222_mic_boost_put, %if.then17.i)) #3
          to label %if.end [label %if.then17.i], !srcloc !67

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %pci.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %10, i32 0, i32 2
  %21 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hr222_micro_boost.__UNIQUE_ID_ddebug249, ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef %conv1.i) #3
  br label %if.end

if.end:                                           ; preds = %if.then17.i, %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %changed.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then.if.end_crit_edge ], [ 1, %if.end.i ], [ 1, %if.then17.i ]
  %23 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mgr, align 4
  %mixer_mutex7 = getelementptr inbounds %struct.pcxhr_mgr, ptr %24, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex7) #3
  ret i32 %changed.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hr222_phantom_power_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #3
  %phantom_power = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %phantom_power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phantom_power, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %7 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mgr, align 4
  %mixer_mutex2 = getelementptr inbounds %struct.pcxhr_mgr, ptr %8, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex2) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hr222_phantom_power_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  %mixer_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  %lnot.ext = zext i1 %tobool to i32
  %phantom_power = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %phantom_power to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phantom_power, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %lnot.ext)
  %cmp.not = icmp eq i32 %7, %lnot.ext
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mgr, align 4
  %xlx_selmic2.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %9, i32 0, i32 36
  %10 = ptrtoint ptr %xlx_selmic2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %xlx_selmic2.i, align 1
  %12 = and i8 %11, 127
  %masksel.i = select i1 %tobool, i8 -128, i8 0
  %.sink.i = or i8 %12, %masksel.i
  store i8 %.sink.i, ptr %xlx_selmic2.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !94
  tail call void @arm_heavy_mb() #3
  %13 = ptrtoint ptr %xlx_selmic2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %xlx_selmic2.i, align 1
  %arrayidx.i = getelementptr %struct.pcxhr_mgr, ptr %9, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, 64
  %and6.i = and i32 %add.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %17 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %14) #3, !srcloc !69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hr222_phantom_power.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hr222_phantom_power_put, %if.then13.i)) #3
          to label %hr222_phantom_power.exit [label %if.then13.i], !srcloc !67

if.then13.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %pci.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hr222_phantom_power.__UNIQUE_ID_ddebug250, ptr noundef %dev.i, ptr noundef nonnull @.str.22, i32 noundef %lnot.ext) #3
  br label %hr222_phantom_power.exit

hr222_phantom_power.exit:                         ; preds = %if.then13.i, %if.then
  %20 = ptrtoint ptr %phantom_power to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %lnot.ext, ptr %phantom_power, align 4
  br label %if.end

if.end:                                           ; preds = %hr222_phantom_power.exit, %entry.if.end_crit_edge
  %changed.0 = phi i32 [ 1, %hr222_phantom_power.exit ], [ 0, %entry.if.end_crit_edge ]
  %21 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mgr, align 4
  %mixer_mutex5 = getelementptr inbounds %struct.pcxhr_mgr, ptr %22, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %mixer_mutex5) #3
  ret i32 %changed.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 281, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @hr222_sub_init.__UNIQUE_ID_ddebug242, !1, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 397, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hr222_sub_set_clock.__UNIQUE_ID_ddebug243, !7, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 423, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hr222_get_external_clock.__UNIQUE_ID_ddebug244, !11, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 430, i32 3}
!16 = !{ptr @hr222_get_external_clock.__UNIQUE_ID_ddebug245, !15, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 489, i32 2}
!19 = !{ptr @hr222_get_external_clock.__UNIQUE_ID_ddebug246, !18, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 536, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @hr222_update_analog_audio_level.__UNIQUE_ID_ddebug247, !21, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!24 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 637, i32 2}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hr222_iec958_capture_byte.__UNIQUE_ID_ddebug248, !27, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!30 = !{ptr @g_hr222_p_level, !31, !"g_hr222_p_level", i1 false, i1 false}
!31 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 102, i32 28}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 679, i32 2}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hr222_micro_boost.__UNIQUE_ID_ddebug249, !33, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 738, i32 11}
!38 = !{ptr @hr222_control_mic_level, !39, !"hr222_control_mic_level", i1 false, i1 false}
!39 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 734, i32 38}
!40 = !{ptr @db_scale_mic_hr222, !41, !"db_scale_mic_hr222", i1 false, i1 false}
!41 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 696, i32 14}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 788, i32 11}
!44 = !{ptr @hr222_control_mic_boost, !45, !"hr222_control_mic_boost", i1 false, i1 false}
!45 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 784, i32 38}
!46 = !{ptr @db_scale_micboost_hr222, !47, !"db_scale_micboost_hr222", i1 false, i1 false}
!47 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 747, i32 14}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 828, i32 10}
!50 = !{ptr @hr222_phantom_power_switch, !51, !"hr222_phantom_power_switch", i1 false, i1 false}
!51 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 826, i32 38}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/pcxhr/pcxhr_mix22.c", i32 691, i32 2}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @hr222_phantom_power.__UNIQUE_ID_ddebug250, !53, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 3002052}
!66 = !{i64 2154695376}
!67 = !{i64 2148782597, i64 2148782602, i64 2148782615, i64 2148782659, i64 2148782693, i64 2148782714}
!68 = !{i64 2154698057}
!69 = !{i64 3001657}
!70 = !{i64 2154698529}
!71 = !{i64 2154692490}
!72 = !{i64 2154692830}
!73 = !{i64 2154693337}
!74 = !{i64 2154721765}
!75 = !{i64 2154699054}
!76 = !{i64 2154699509}
!77 = !{i64 2154699962}
!78 = !{i64 2154705566}
!79 = !{i64 2154708248}
!80 = !{i64 2154709236}
!81 = !{i64 2154709743}
!82 = !{i64 2154710112}
!83 = !{i64 2154713012}
!84 = !{i64 2154713335}
!85 = !{i64 2154713802}
!86 = !{i64 2154694139}
!87 = !{i64 2154694495}
!88 = !{i64 2154695002}
!89 = !{i64 2154716980}
!90 = !{i64 2154717447}
!91 = !{i64 2154717978}
!92 = !{i64 2154720788}
!93 = !{i64 2154721288}
!94 = !{i64 2154724592}
