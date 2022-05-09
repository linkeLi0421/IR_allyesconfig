; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/prodigy192.c_pt.bc'
source_filename = "../sound/pci/ice1712/prodigy192.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.88, i32 }
%union.anon.88 = type { ptr }
%struct.snd_ice1712 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], ptr, ptr, ptr, i32, i32, [6 x i32], [6 x i32], i32, i32, ptr, [2 x ptr], %struct.spinlock, ptr, %struct.snd_ice1712_eeprom, ptr, [20 x i32], i16, i32, i32, i32, %struct.mutex, [4 x ptr], ptr, i32, ptr, %struct.snd_ice1712_spdif, %struct.mutex, ptr, ptr, i32, %struct.ice1712_gpio, %struct.mutex, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i8, i32, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_ice1712_eeprom = type { i32, i8, i8, [32 x i8], i32, i32, i32 }
%struct.snd_ice1712_spdif = type { i8, i8, ptr, %struct.snd_ice1712_spdif_ops }
%struct.snd_ice1712_spdif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ice1712_gpio = type { i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.prodigy192_spec = type { ptr, %struct.mutex }
%struct.ak4114 = type { ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.mutex, %struct.spinlock, [6 x i8], [5 x i8], [15 x ptr], ptr, ptr, [4 x i32], i8, i8, %struct.delayed_work, i32, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.68, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.68 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Audiotrak Prodigy 192\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"prodigy192\00", [21 x i8] zeroinitializer }, align 32
@prodigy71_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"j\80\F8\C3\FF\F7\BF\00\00\00\00\00\10", [19 x i8] zeroinitializer }, align 32
@snd_vt1724_prodigy192_cards = dso_local global { [2 x %struct.snd_ice1712_card_info], [48 x i8] } { [2 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 877220677, ptr @.str, ptr @.str.1, ptr null, ptr @prodigy192_init, ptr null, ptr @prodigy192_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @prodigy71_eeprom }, %struct.snd_ice1712_card_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@prodigy192_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&spec->mute_mutex\00", [46 x i8] zeroinitializer }, align 32
@prodigy192_init.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_ice1724\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"prodigy192_init\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/pci/ice1712/prodigy192.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AK4114 initialized with status %d\0A\00", [61 x i8] zeroinitializer }, align 32
@prodigy192_init.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AK4114 not found\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@prodigy192_ak4114_init.ak4114_init_vals = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0Fr\80H\00\00", [26 x i8] zeroinitializer }, align 32
@prodigy192_ak4114_init.ak4114_init_txcsb = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A\02,\00\00", [27 x i8] zeroinitializer }, align 32
@stac_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @stac9460_dac_mute_get, ptr @stac9460_dac_mute_put, %union.anon.88 { ptr @db_scale_dac }, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @stac9460_dac_vol_info, ptr @stac9460_dac_vol_get, ptr @stac9460_dac_vol_put, %union.anon.88 { ptr @db_scale_dac }, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 6, ptr @snd_ctl_boolean_mono_info, ptr @stac9460_dac_mute_get, ptr @stac9460_dac_mute_put, %union.anon.88 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 6, ptr @stac9460_dac_vol_info, ptr @stac9460_dac_vol_get, ptr @stac9460_dac_vol_put, %union.anon.88 { ptr @db_scale_dac }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 0, i32 1, ptr @snd_ctl_boolean_stereo_info, ptr @stac9460_adc_mute_get, ptr @stac9460_adc_mute_put, %union.anon.88 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 19, i32 1, ptr @stac9460_adc_vol_info, ptr @stac9460_adc_vol_get, ptr @stac9460_adc_vol_put, %union.anon.88 { ptr @db_scale_adc }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 0, i32 0, ptr @stac9460_mic_sw_info, ptr @stac9460_mic_sw_get, ptr @stac9460_mic_sw_put, %union.anon.88 zeroinitializer, i32 0 }], [80 x i8] zeroinitializer }, align 32
@ak4114_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @ak4114_input_sw_info, ptr @ak4114_input_sw_get, ptr @ak4114_input_sw_put, %union.anon.88 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@db_scale_dac = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -19125, i32 75], [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Switch\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Volume\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@db_scale_adc = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 150], [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Analog Capture Input\00", [43 x i8] zeroinitializer }, align 32
@stac9460_mic_sw_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.15, ptr @.str.16], [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Line In\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MIODIO IEC958 Capture Input\00", [36 x i8] zeroinitializer }, align 32
@ak4114_input_sw_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.18, ptr @.str.19], [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Toslink\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Coax\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stac9460_codec\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0x%02x = 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 783, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 784, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"prodigy71_eeprom\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 756, i32 28 }
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"snd_vt1724_prodigy192_cards\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 780, i32 30 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 728, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 742, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 745, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"ak4114_init_vals\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 595, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"ak4114_init_txcsb\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 606, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"stac_controls\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 349, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"ak4114_controls\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 581, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 352, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"db_scale_dac\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 342, i32 14 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 363, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 372, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 382, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 391, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 402, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant [13 x i8] c"db_scale_adc\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 343, i32 14 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 411, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 271, i32 28 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 271, i32 41 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 271, i32 52 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 584, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 542, i32 28 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 542, i32 41 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 542, i32 52 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 640, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [34 x i8] c"../sound/pci/ice1712/prodigy192.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 633, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @.str, ptr @.str.1, ptr @prodigy71_eeprom, ptr @snd_vt1724_prodigy192_cards, ptr @prodigy192_init.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @prodigy192_ak4114_init.ak4114_init_vals, ptr @prodigy192_ak4114_init.ak4114_init_txcsb, ptr @stac_controls, ptr @ak4114_controls, ptr @.str.8, ptr @db_scale_dac, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @db_scale_adc, ptr @.str.14, ptr @stac9460_mic_sw_info.texts, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ak4114_input_sw_info.texts, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prodigy71_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_prodigy192_cards to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prodigy192_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prodigy192_ak4114_init.ak4114_init_vals to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prodigy192_ak4114_init.ak4114_init_txcsb to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4114_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_dac to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_adc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9460_mic_sw_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4114_input_sw_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prodigy192_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %0 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 6, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %1 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %num_total_adcs, align 4
  %vt1720 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %2 = ptrtoint ptr %vt1720 to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %vt1720, align 4
  %bf.clear = and i16 %bf.load, -4097
  store i16 %bf.clear, ptr %vt1720, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 96) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %4 = ptrtoint ptr %spec1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %spec1, align 4
  %mute_mutex = getelementptr inbounds %struct.prodigy192_spec, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mute_mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @prodigy192_init.__key) #4
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 15, i8 noundef zeroext 17) #4
  %set_pro_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 9
  %5 = ptrtoint ptr %set_pro_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @stac9460_set_rate_val, ptr %set_pro_rate, align 4
  %call.i = tail call zeroext i8 @prodigy192_ak4114_read(ptr noundef %ice, i8 noundef zeroext 4) #4
  tail call void @prodigy192_ak4114_write(ptr noundef %ice, i8 noundef zeroext 4, i8 noundef zeroext -47) #4
  %call1.i = tail call zeroext i8 @prodigy192_ak4114_read(ptr noundef %ice, i8 noundef zeroext 4) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -47, i8 %call1.i)
  %cmp.i = icmp eq i8 %call1.i, -47
  br i1 %cmp.i, label %if.then8, label %do.body19

if.then8:                                         ; preds = %if.end
  tail call void @prodigy192_ak4114_write(ptr noundef %ice, i8 noundef zeroext 4, i8 noundef zeroext %call.i) #4
  %6 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec1, align 4
  %card.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %8 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card.i, align 4
  %call.i58 = tail call i32 @snd_ak4114_create(ptr noundef %9, ptr noundef nonnull @prodigy192_ak4114_read, ptr noundef nonnull @prodigy192_ak4114_write, ptr noundef nonnull @prodigy192_ak4114_init.ak4114_init_vals, ptr noundef nonnull @prodigy192_ak4114_init.ak4114_init_txcsb, ptr noundef %ice, ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp.i59 = icmp slt i32 %call.i58, 0
  br i1 %cmp.i59, label %if.then8.prodigy192_ak4114_init.exit_crit_edge, label %if.end.i

if.then8.prodigy192_ak4114_init.exit_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %prodigy192_ak4114_init.exit

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %check_flags.i = getelementptr inbounds %struct.ak4114, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %check_flags.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %check_flags.i, align 4
  br label %prodigy192_ak4114_init.exit

prodigy192_ak4114_init.exit:                      ; preds = %if.end.i, %if.then8.prodigy192_ak4114_init.exit_crit_edge
  %retval.0.i60 = phi i32 [ 0, %if.end.i ], [ %call.i58, %if.then8.prodigy192_ak4114_init.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prodigy192_init.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prodigy192_init, %if.then15)) #4
          to label %cleanup [label %if.then15], !srcloc !75

if.then15:                                        ; preds = %prodigy192_ak4114_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @prodigy192_init.__UNIQUE_ID_ddebug238, ptr noundef %16, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i60) #4
  br label %cleanup

do.body19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prodigy192_init.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prodigy192_init, %if.then31)) #4
          to label %cleanup [label %if.then31], !srcloc !75

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #6
  %card32 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %17 = ptrtoint ptr %card32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card32, align 4
  %dev33 = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev33, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @prodigy192_init.__UNIQUE_ID_ddebug239, ptr noundef %20, ptr noundef nonnull @.str.7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body19, %if.then15, %prodigy192_ak4114_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i60, %if.then15 ], [ 0, %if.then31 ], [ %retval.0.i60, %prodigy192_ak4114_init.exit ], [ 0, %do.body19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prodigy192_add_controls(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @stac_controls, ptr noundef %ice) #4
  %call2 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond:                                         ; preds = %entry
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %call.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @stac_controls, i32 0, i32 1), ptr noundef %ice) #4
  %call2.1 = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef %call.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %cmp3.1 = icmp slt i32 %call2.1, 0
  br i1 %cmp3.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %call.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @stac_controls, i32 0, i32 2), ptr noundef %ice) #4
  %call2.2 = tail call i32 @snd_ctl_add(ptr noundef %7, ptr noundef %call.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %cmp3.2 = icmp slt i32 %call2.2, 0
  br i1 %cmp3.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %call.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @stac_controls, i32 0, i32 3), ptr noundef %ice) #4
  %call2.3 = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef %call.3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3)
  %cmp3.3 = icmp slt i32 %call2.3, 0
  br i1 %cmp3.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %call.4 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @stac_controls, i32 0, i32 4), ptr noundef %ice) #4
  %call2.4 = tail call i32 @snd_ctl_add(ptr noundef %11, ptr noundef %call.4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.4)
  %cmp3.4 = icmp slt i32 %call2.4, 0
  br i1 %cmp3.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %call.5 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @stac_controls, i32 0, i32 5), ptr noundef %ice) #4
  %call2.5 = tail call i32 @snd_ctl_add(ptr noundef %13, ptr noundef %call.5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.5)
  %cmp3.5 = icmp slt i32 %call2.5, 0
  br i1 %cmp3.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %call.6 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @stac_controls, i32 0, i32 6), ptr noundef %ice) #4
  %call2.6 = tail call i32 @snd_ctl_add(ptr noundef %15, ptr noundef %call.6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.6)
  %cmp3.6 = icmp slt i32 %call2.6, 0
  br i1 %cmp3.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %for.cond.6.if.end24_crit_edge, label %for.body7

for.cond.6.if.end24_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

for.body7:                                        ; preds = %for.cond.6
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %call10 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @ak4114_controls, ptr noundef %ice) #4
  %call11 = tail call i32 @snd_ctl_add(ptr noundef %19, ptr noundef %call10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %for.body7.cleanup_crit_edge, label %for.end17

for.body7.cleanup_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end17:                                        ; preds = %for.body7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %pcm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 11
  %22 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcm, align 4
  %substream = getelementptr %struct.snd_pcm, ptr %23, i32 0, i32 8, i32 1, i32 4
  %24 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %substream, align 8
  %call20 = tail call i32 @snd_ak4114_build(ptr noundef %21, ptr noundef null, ptr noundef %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %for.end17.cleanup_crit_edge, label %for.end17.if.end24_crit_edge

for.end17.if.end24_crit_edge:                     ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

for.end17.cleanup_crit_edge:                      ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %for.end17.if.end24_crit_edge, %for.cond.6.if.end24_crit_edge
  %26 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card, align 4
  %call.i.i = tail call i32 @snd_card_rw_proc_new(ptr noundef %27, ptr noundef nonnull @.str.20, ptr noundef %ice, ptr noundef nonnull @stac9460_proc_regs_read, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %for.end17.cleanup_crit_edge, %for.body7.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ %call11, %for.body7.cleanup_crit_edge ], [ %call20, %for.end17.cleanup_crit_edge ], [ %call2, %entry.cleanup_crit_edge ], [ %call2.1, %for.cond.cleanup_crit_edge ], [ %call2.2, %for.cond.1.cleanup_crit_edge ], [ %call2.3, %for.cond.2.cleanup_crit_edge ], [ %call2.4, %for.cond.3.cleanup_crit_edge ], [ %call2.5, %for.cond.4.cleanup_crit_edge ], [ %call2.6, %for.cond.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac9460_set_rate_val(ptr noundef %ice, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp = icmp eq i32 %rate, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 48001, i32 %rate)
  %cmp2 = icmp ult i32 %rate, 48001
  call void @__sanitizer_cov_trace_const_cmp4(i32 96001, i32 %rate)
  %cmp5 = icmp ult i32 %rate, 96001
  %. = select i1 %cmp5, i8 17, i8 18
  %new.0 = select i1 %cmp2, i8 8, i8 %.
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 15) #4
  call void @__sanitizer_cov_trace_cmp1(i8 %call.i, i8 %new.0)
  %cmp11 = icmp eq i8 %call.i, %new.0
  br i1 %cmp11, label %if.else.cleanup_crit_edge, label %if.end14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.else
  %mute_mutex = getelementptr inbounds %struct.prodigy192_spec, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mute_mutex, i32 noundef 0) #4
  %call.i.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 2) #4
  %or.i = or i8 %call.i.i, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %or.i, i8 %call.i.i)
  %cmp.i.not = icmp eq i8 %or.i, %call.i.i
  br i1 %cmp.i.not, label %if.end14.stac9460_dac_mute.exit_crit_edge, label %if.then.i

if.end14.stac9460_dac_mute.exit_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %stac9460_dac_mute.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 2, i8 noundef zeroext %or.i) #4
  br label %stac9460_dac_mute.exit

stac9460_dac_mute.exit:                           ; preds = %if.then.i, %if.end14.stac9460_dac_mute.exit_crit_edge
  %call.i.i.1 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 3) #4
  %or.i.1 = or i8 %call.i.i.1, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %or.i.1, i8 %call.i.i.1)
  %cmp.i.1.not = icmp eq i8 %or.i.1, %call.i.i.1
  br i1 %cmp.i.1.not, label %stac9460_dac_mute.exit.stac9460_dac_mute.exit.1_crit_edge, label %if.then.i.1

stac9460_dac_mute.exit.stac9460_dac_mute.exit.1_crit_edge: ; preds = %stac9460_dac_mute.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %stac9460_dac_mute.exit.1

if.then.i.1:                                      ; preds = %stac9460_dac_mute.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 3, i8 noundef zeroext %or.i.1) #4
  br label %stac9460_dac_mute.exit.1

stac9460_dac_mute.exit.1:                         ; preds = %if.then.i.1, %stac9460_dac_mute.exit.stac9460_dac_mute.exit.1_crit_edge
  %call.i.i.2 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 4) #4
  %or.i.2 = or i8 %call.i.i.2, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %or.i.2, i8 %call.i.i.2)
  %cmp.i.2.not = icmp eq i8 %or.i.2, %call.i.i.2
  br i1 %cmp.i.2.not, label %stac9460_dac_mute.exit.1.stac9460_dac_mute.exit.2_crit_edge, label %if.then.i.2

stac9460_dac_mute.exit.1.stac9460_dac_mute.exit.2_crit_edge: ; preds = %stac9460_dac_mute.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %stac9460_dac_mute.exit.2

if.then.i.2:                                      ; preds = %stac9460_dac_mute.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 4, i8 noundef zeroext %or.i.2) #4
  br label %stac9460_dac_mute.exit.2

stac9460_dac_mute.exit.2:                         ; preds = %if.then.i.2, %stac9460_dac_mute.exit.1.stac9460_dac_mute.exit.2_crit_edge
  %call.i.i.3 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 5) #4
  %or.i.3 = or i8 %call.i.i.3, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %or.i.3, i8 %call.i.i.3)
  %cmp.i.3.not = icmp eq i8 %or.i.3, %call.i.i.3
  br i1 %cmp.i.3.not, label %stac9460_dac_mute.exit.2.stac9460_dac_mute.exit.3_crit_edge, label %if.then.i.3

stac9460_dac_mute.exit.2.stac9460_dac_mute.exit.3_crit_edge: ; preds = %stac9460_dac_mute.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %stac9460_dac_mute.exit.3

if.then.i.3:                                      ; preds = %stac9460_dac_mute.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 5, i8 noundef zeroext %or.i.3) #4
  br label %stac9460_dac_mute.exit.3

stac9460_dac_mute.exit.3:                         ; preds = %if.then.i.3, %stac9460_dac_mute.exit.2.stac9460_dac_mute.exit.3_crit_edge
  %call.i.i.4 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 6) #4
  %or.i.4 = or i8 %call.i.i.4, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %or.i.4, i8 %call.i.i.4)
  %cmp.i.4.not = icmp eq i8 %or.i.4, %call.i.i.4
  br i1 %cmp.i.4.not, label %stac9460_dac_mute.exit.3.stac9460_dac_mute.exit.4_crit_edge, label %if.then.i.4

stac9460_dac_mute.exit.3.stac9460_dac_mute.exit.4_crit_edge: ; preds = %stac9460_dac_mute.exit.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %stac9460_dac_mute.exit.4

if.then.i.4:                                      ; preds = %stac9460_dac_mute.exit.3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 6, i8 noundef zeroext %or.i.4) #4
  br label %stac9460_dac_mute.exit.4

stac9460_dac_mute.exit.4:                         ; preds = %if.then.i.4, %stac9460_dac_mute.exit.3.stac9460_dac_mute.exit.4_crit_edge
  %call.i.i.5 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 7) #4
  %or.i.5 = or i8 %call.i.i.5, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %or.i.5, i8 %call.i.i.5)
  %cmp.i.5.not = icmp eq i8 %or.i.5, %call.i.i.5
  br i1 %cmp.i.5.not, label %stac9460_dac_mute.exit.4.stac9460_dac_mute.exit.5_crit_edge, label %if.then.i.5

stac9460_dac_mute.exit.4.stac9460_dac_mute.exit.5_crit_edge: ; preds = %stac9460_dac_mute.exit.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %stac9460_dac_mute.exit.5

if.then.i.5:                                      ; preds = %stac9460_dac_mute.exit.4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 7, i8 noundef zeroext %or.i.5) #4
  br label %stac9460_dac_mute.exit.5

stac9460_dac_mute.exit.5:                         ; preds = %if.then.i.5, %stac9460_dac_mute.exit.4.stac9460_dac_mute.exit.5_crit_edge
  %call.i.i.6 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 8) #4
  %or.i.6 = or i8 %call.i.i.6, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %or.i.6, i8 %call.i.i.6)
  %cmp.i.6.not = icmp eq i8 %or.i.6, %call.i.i.6
  br i1 %cmp.i.6.not, label %stac9460_dac_mute.exit.5.stac9460_dac_mute.exit.6_crit_edge, label %if.then.i.6

stac9460_dac_mute.exit.5.stac9460_dac_mute.exit.6_crit_edge: ; preds = %stac9460_dac_mute.exit.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %stac9460_dac_mute.exit.6

if.then.i.6:                                      ; preds = %stac9460_dac_mute.exit.5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 8, i8 noundef zeroext %or.i.6) #4
  br label %stac9460_dac_mute.exit.6

stac9460_dac_mute.exit.6:                         ; preds = %if.then.i.6, %stac9460_dac_mute.exit.5.stac9460_dac_mute.exit.6_crit_edge
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 15, i8 noundef zeroext %new.0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #4
  br i1 %cmp.i.not, label %stac9460_dac_mute.exit.6.for.inc28_crit_edge, label %if.then24

stac9460_dac_mute.exit.6.for.inc28_crit_edge:     ; preds = %stac9460_dac_mute.exit.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc28

if.then24:                                        ; preds = %stac9460_dac_mute.exit.6
  %call.i.i52 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i52)
  %3 = icmp sgt i8 %call.i.i52, -1
  br i1 %3, label %if.then24.for.inc28_crit_edge, label %if.then.i55

if.then24.for.inc28_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc28

if.then.i55:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  %and2.i53 = and i8 %call.i.i52, 127
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 2, i8 noundef zeroext %and2.i53) #4
  br label %for.inc28

for.inc28:                                        ; preds = %if.then.i55, %if.then24.for.inc28_crit_edge, %stac9460_dac_mute.exit.6.for.inc28_crit_edge
  br i1 %cmp.i.1.not, label %for.inc28.for.inc28.1_crit_edge, label %if.then24.1

for.inc28.for.inc28.1_crit_edge:                  ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc28.1

if.then24.1:                                      ; preds = %for.inc28
  %call.i.i52.1 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 3) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i52.1)
  %4 = icmp sgt i8 %call.i.i52.1, -1
  br i1 %4, label %if.then24.1.for.inc28.1_crit_edge, label %if.then.i55.1

if.then24.1.for.inc28.1_crit_edge:                ; preds = %if.then24.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc28.1

if.then.i55.1:                                    ; preds = %if.then24.1
  call void @__sanitizer_cov_trace_pc() #6
  %and2.i53.1 = and i8 %call.i.i52.1, 127
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 3, i8 noundef zeroext %and2.i53.1) #4
  br label %for.inc28.1

for.inc28.1:                                      ; preds = %if.then.i55.1, %if.then24.1.for.inc28.1_crit_edge, %for.inc28.for.inc28.1_crit_edge
  br i1 %cmp.i.2.not, label %for.inc28.1.for.inc28.2_crit_edge, label %if.then24.2

for.inc28.1.for.inc28.2_crit_edge:                ; preds = %for.inc28.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc28.2

if.then24.2:                                      ; preds = %for.inc28.1
  %call.i.i52.2 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 4) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i52.2)
  %5 = icmp sgt i8 %call.i.i52.2, -1
  br i1 %5, label %if.then24.2.for.inc28.2_crit_edge, label %if.then.i55.2

if.then24.2.for.inc28.2_crit_edge:                ; preds = %if.then24.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc28.2

if.then.i55.2:                                    ; preds = %if.then24.2
  call void @__sanitizer_cov_trace_pc() #6
  %and2.i53.2 = and i8 %call.i.i52.2, 127
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 4, i8 noundef zeroext %and2.i53.2) #4
  br label %for.inc28.2

for.inc28.2:                                      ; preds = %if.then.i55.2, %if.then24.2.for.inc28.2_crit_edge, %for.inc28.1.for.inc28.2_crit_edge
  br i1 %cmp.i.3.not, label %for.inc28.2.for.inc28.3_crit_edge, label %if.then24.3

for.inc28.2.for.inc28.3_crit_edge:                ; preds = %for.inc28.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc28.3

if.then24.3:                                      ; preds = %for.inc28.2
  %call.i.i52.3 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 5) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i52.3)
  %6 = icmp sgt i8 %call.i.i52.3, -1
  br i1 %6, label %if.then24.3.for.inc28.3_crit_edge, label %if.then.i55.3

if.then24.3.for.inc28.3_crit_edge:                ; preds = %if.then24.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc28.3

if.then.i55.3:                                    ; preds = %if.then24.3
  call void @__sanitizer_cov_trace_pc() #6
  %and2.i53.3 = and i8 %call.i.i52.3, 127
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 5, i8 noundef zeroext %and2.i53.3) #4
  br label %for.inc28.3

for.inc28.3:                                      ; preds = %if.then.i55.3, %if.then24.3.for.inc28.3_crit_edge, %for.inc28.2.for.inc28.3_crit_edge
  br i1 %cmp.i.4.not, label %for.inc28.3.for.inc28.4_crit_edge, label %if.then24.4

for.inc28.3.for.inc28.4_crit_edge:                ; preds = %for.inc28.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc28.4

if.then24.4:                                      ; preds = %for.inc28.3
  %call.i.i52.4 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 6) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i52.4)
  %7 = icmp sgt i8 %call.i.i52.4, -1
  br i1 %7, label %if.then24.4.for.inc28.4_crit_edge, label %if.then.i55.4

if.then24.4.for.inc28.4_crit_edge:                ; preds = %if.then24.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc28.4

if.then.i55.4:                                    ; preds = %if.then24.4
  call void @__sanitizer_cov_trace_pc() #6
  %and2.i53.4 = and i8 %call.i.i52.4, 127
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 6, i8 noundef zeroext %and2.i53.4) #4
  br label %for.inc28.4

for.inc28.4:                                      ; preds = %if.then.i55.4, %if.then24.4.for.inc28.4_crit_edge, %for.inc28.3.for.inc28.4_crit_edge
  br i1 %cmp.i.5.not, label %for.inc28.4.for.inc28.5_crit_edge, label %if.then24.5

for.inc28.4.for.inc28.5_crit_edge:                ; preds = %for.inc28.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc28.5

if.then24.5:                                      ; preds = %for.inc28.4
  %call.i.i52.5 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i52.5)
  %8 = icmp sgt i8 %call.i.i52.5, -1
  br i1 %8, label %if.then24.5.for.inc28.5_crit_edge, label %if.then.i55.5

if.then24.5.for.inc28.5_crit_edge:                ; preds = %if.then24.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc28.5

if.then.i55.5:                                    ; preds = %if.then24.5
  call void @__sanitizer_cov_trace_pc() #6
  %and2.i53.5 = and i8 %call.i.i52.5, 127
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 7, i8 noundef zeroext %and2.i53.5) #4
  br label %for.inc28.5

for.inc28.5:                                      ; preds = %if.then.i55.5, %if.then24.5.for.inc28.5_crit_edge, %for.inc28.4.for.inc28.5_crit_edge
  br i1 %cmp.i.6.not, label %for.inc28.5.for.inc28.6_crit_edge, label %if.then24.6

for.inc28.5.for.inc28.6_crit_edge:                ; preds = %for.inc28.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc28.6

if.then24.6:                                      ; preds = %for.inc28.5
  %call.i.i52.6 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 8) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i52.6)
  %9 = icmp sgt i8 %call.i.i52.6, -1
  br i1 %9, label %if.then24.6.for.inc28.6_crit_edge, label %if.then.i55.6

if.then24.6.for.inc28.6_crit_edge:                ; preds = %if.then24.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc28.6

if.then.i55.6:                                    ; preds = %if.then24.6
  call void @__sanitizer_cov_trace_pc() #6
  %and2.i53.6 = and i8 %call.i.i52.6, 127
  tail call void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext 84, i8 noundef zeroext 8, i8 noundef zeroext %and2.i53.6) #4
  br label %for.inc28.6

for.inc28.6:                                      ; preds = %if.then.i55.6, %if.then24.6.for.inc28.6_crit_edge, %for.inc28.5.for.inc28.6_crit_edge
  tail call void @mutex_unlock(ptr noundef %mute_mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %for.inc28.6, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_vt1724_write_i2c(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @snd_vt1724_read_i2c(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @prodigy192_ak4114_read(ptr noundef %private_data, i8 noundef zeroext %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_mutex.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i, i32 noundef 0) #4
  %gpio.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46
  %0 = ptrtoint ptr %gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio.i.i, align 4
  %saved.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 2
  %2 = ptrtoint ptr %saved.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %saved.i.i, align 4
  %write_mask.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 1
  %3 = ptrtoint ptr %write_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %write_mask.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx5.i.i, align 4
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 8
  %6 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %private_data) #4
  %or.i = and i32 %call.i.i, -769
  %and.i = or i32 %or.i, 512
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 7
  %8 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_data.i.i, align 4
  tail call void %9(ptr noundef %private_data, i32 noundef %and.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #4
  %11 = and i8 %addr, 31
  %and = zext i8 %11 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %idx.addr.018.i = phi i32 [ 7, %entry ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %gpio.addr.017.i = phi i32 [ %and.i, %entry ], [ %or3.i, %for.body.i.for.body.i_crit_edge ]
  %and.i8 = and i32 %gpio.addr.017.i, -513
  %12 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_data.i.i, align 4
  tail call void %13(ptr noundef %private_data, i32 noundef %and.i8) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #4
  %shl.i = shl nuw i32 1, %idx.addr.018.i
  %and1.i = and i32 %shl.i, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %or.i9 = or i32 %and.i8, 1024
  %and2.i = and i32 %gpio.addr.017.i, -1537
  %gpio.addr.1.i = select i1 %tobool.not.i, i32 %and2.i, i32 %or.i9
  %15 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_data.i.i, align 4
  tail call void %16(ptr noundef %private_data, i32 noundef %gpio.addr.1.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #4
  %or3.i = or i32 %gpio.addr.1.i, 512
  %18 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_data.i.i, align 4
  tail call void %19(ptr noundef %private_data, i32 noundef %or3.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #4
  %dec.i = add nsw i32 %idx.addr.018.i, -1
  %cmp.not.i = icmp eq i32 %idx.addr.018.i, 0
  br i1 %cmp.not.i, label %write_data.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

write_data.exit:                                  ; preds = %for.body.i
  %21 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_data.i.i, align 4
  tail call void %22(ptr noundef %private_data, i32 noundef %or.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #4
  %24 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_data.i.i, align 4
  %call.i.peel.i = tail call i32 %25(ptr noundef %private_data) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #4
  %27 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_data.i.i, align 4
  tail call void %28(ptr noundef %private_data, i32 noundef %and.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #4
  %and1.peel.i = lshr i32 %call.i.peel.i, 4
  %30 = trunc i32 %and1.peel.i to i8
  %31 = and i8 %30, -128
  br label %for.body.i18

for.body.i18:                                     ; preds = %for.body.i18.for.body.i18_crit_edge, %write_data.exit
  %data.04.i = phi i8 [ %31, %write_data.exit ], [ %data.1.i, %for.body.i18.for.body.i18_crit_edge ]
  %idx.addr.03.i = phi i32 [ 6, %write_data.exit ], [ %dec.i16, %for.body.i18.for.body.i18_crit_edge ]
  %32 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_data.i.i, align 4
  tail call void %33(ptr noundef %private_data, i32 noundef %or.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #4
  %35 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i12 = tail call i32 %36(ptr noundef %private_data) #4
  %and1.i13 = and i32 %call.i.i12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i13)
  %tobool.not.i14 = icmp eq i32 %and1.i13, 0
  %shl.i15 = shl nuw i32 1, %idx.addr.03.i
  %37 = trunc i32 %shl.i15 to i8
  %conv2.i = select i1 %tobool.not.i14, i8 0, i8 %37
  %data.1.i = or i8 %conv2.i, %data.04.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #4
  %39 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_data.i.i, align 4
  tail call void %40(ptr noundef %private_data, i32 noundef %and.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #4
  %dec.i16 = add nsw i32 %idx.addr.03.i, -1
  %cmp.not.i17 = icmp eq i32 %idx.addr.03.i, 0
  br i1 %cmp.not.i17, label %read_data.exit, label %for.body.i18.for.body.i18_crit_edge, !llvm.loop !76

for.body.i18.for.body.i18_crit_edge:              ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i18

read_data.exit:                                   ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #6
  %or.i19 = or i32 %call.i.i, 768
  %42 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_data.i.i, align 4
  tail call void %43(ptr noundef %private_data, i32 noundef %or.i19) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #4
  %set_dir.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 5
  %45 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_dir.i.i, align 4
  %47 = ptrtoint ptr %saved.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %saved.i.i, align 4
  tail call void %46(ptr noundef %private_data, i32 noundef %48) #4
  %set_mask.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 3
  %49 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_mask.i.i, align 4
  %51 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx5.i.i, align 4
  tail call void %50(ptr noundef %private_data, i32 noundef %52) #4
  %53 = ptrtoint ptr %saved.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %saved.i.i, align 4
  %55 = ptrtoint ptr %gpio.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %gpio.i.i, align 4
  %56 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx5.i.i, align 4
  %58 = ptrtoint ptr %write_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %write_mask.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i) #4
  ret i8 %data.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prodigy192_ak4114_write(ptr noundef %private_data, i8 noundef zeroext %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_mutex.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i, i32 noundef 0) #4
  %gpio.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46
  %0 = ptrtoint ptr %gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio.i.i, align 4
  %saved.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 2
  %2 = ptrtoint ptr %saved.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %saved.i.i, align 4
  %write_mask.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 1
  %3 = ptrtoint ptr %write_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %write_mask.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx5.i.i, align 4
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 8
  %6 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %private_data) #4
  %or.i = and i32 %call.i.i, -769
  %and.i = or i32 %or.i, 512
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 7
  %8 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_data.i.i, align 4
  tail call void %9(ptr noundef %private_data, i32 noundef %and.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #4
  %11 = and i8 %addr, 31
  %12 = or i8 %11, 32
  %or = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %or, 8
  %conv1 = zext i8 %data to i32
  %or2 = or i32 %shl, %conv1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %idx.addr.018.i = phi i32 [ 15, %entry ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %gpio.addr.017.i = phi i32 [ %and.i, %entry ], [ %or3.i, %for.body.i.for.body.i_crit_edge ]
  %and.i8 = and i32 %gpio.addr.017.i, -513
  %13 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_data.i.i, align 4
  tail call void %14(ptr noundef %private_data, i32 noundef %and.i8) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #4
  %shl.i = shl nuw i32 1, %idx.addr.018.i
  %and1.i = and i32 %shl.i, %or2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %or.i9 = or i32 %and.i8, 1024
  %and2.i = and i32 %gpio.addr.017.i, -1537
  %gpio.addr.1.i = select i1 %tobool.not.i, i32 %and2.i, i32 %or.i9
  %16 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_data.i.i, align 4
  tail call void %17(ptr noundef %private_data, i32 noundef %gpio.addr.1.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #4
  %or3.i = or i32 %gpio.addr.1.i, 512
  %19 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_data.i.i, align 4
  tail call void %20(ptr noundef %private_data, i32 noundef %or3.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #4
  %dec.i = add nsw i32 %idx.addr.018.i, -1
  %cmp.not.i = icmp eq i32 %idx.addr.018.i, 0
  br i1 %cmp.not.i, label %write_data.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

write_data.exit:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %or.i10 = or i32 %call.i.i, 768
  %22 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_data.i.i, align 4
  tail call void %23(ptr noundef %private_data, i32 noundef %or.i10) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #4
  %set_dir.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 5
  %25 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_dir.i.i, align 4
  %27 = ptrtoint ptr %saved.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %saved.i.i, align 4
  tail call void %26(ptr noundef %private_data, i32 noundef %28) #4
  %set_mask.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 3
  %29 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_mask.i.i, align 4
  %31 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx5.i.i, align 4
  tail call void %30(ptr noundef %private_data, i32 noundef %32) #4
  %33 = ptrtoint ptr %saved.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %saved.i.i, align 4
  %35 = ptrtoint ptr %gpio.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %gpio.i.i, align 4
  %36 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx5.i.i, align 4
  %38 = ptrtoint ptr %write_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %write_mask.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ak4114_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ak4114_build(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_dac_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  %10 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %9) #4, !srcloc !78
  %and.i = and i32 %10, %sub.i
  %11 = trunc i32 %and.i to i8
  %phi.cast = add i8 %11, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %idx.0 = phi i8 [ %phi.cast, %if.else ], [ 2, %entry.if.end_crit_edge ]
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %idx.0) #4
  %12 = xor i8 %call.i, -1
  %13 = lshr i8 %12, 7
  %and = zext i8 %13 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_dac_mute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %7, %9
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 4
  %12 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %11) #4, !srcloc !78
  %and.i = and i32 %12, %sub.i
  %13 = trunc i32 %and.i to i8
  %phi.cast = add i8 %13, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %idx.0 = phi i8 [ %phi.cast, %if.else ], [ 2, %entry.if.end_crit_edge ]
  %mute_mutex = getelementptr inbounds %struct.prodigy192_spec, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mute_mutex, i32 noundef 0) #4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 8
  %conv = trunc i32 %15 to i8
  %call.i.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %idx.0) #4
  %neg.i = xor i8 %conv, -1
  %shl.i = shl i8 %neg.i, 7
  %and2.i = and i8 %call.i.i, 127
  %or.i = or i8 %and2.i, %shl.i
  call void @__sanitizer_cov_trace_cmp1(i8 %or.i, i8 %call.i.i)
  %cmp.i = icmp ne i8 %or.i, %call.i.i
  br i1 %cmp.i, label %if.then.i, label %if.end.stac9460_dac_mute.exit_crit_edge

if.end.stac9460_dac_mute.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %stac9460_dac_mute.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %idx.0, i8 noundef zeroext %or.i) #4
  br label %stac9460_dac_mute.exit

stac9460_dac_mute.exit:                           ; preds = %if.then.i, %if.end.stac9460_dac_mute.exit_crit_edge
  %conv6.i = zext i1 %cmp.i to i32
  tail call void @mutex_unlock(ptr noundef %mute_mutex) #4
  ret i32 %conv6.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stac9460_dac_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  store i32 127, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_dac_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  %10 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %9) #4, !srcloc !78
  %and.i = and i32 %10, %sub.i
  %11 = trunc i32 %and.i to i8
  %phi.cast = add i8 %11, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %idx.0 = phi i8 [ %phi.cast, %if.else ], [ 2, %entry.if.end_crit_edge ]
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %idx.0) #4
  %12 = and i8 %call.i, 127
  %13 = xor i8 %12, 127
  %sub = zext i8 %13 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_dac_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  %10 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %9) #4, !srcloc !78
  %and.i = and i32 %10, %sub.i
  %11 = trunc i32 %and.i to i8
  %phi.cast = add i8 %11, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %idx.0 = phi i8 [ %phi.cast, %if.else ], [ 2, %entry.if.end_crit_edge ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 8
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %idx.0) #4
  %and = and i8 %call.i, 127
  %sub = xor i8 %and, 127
  %14 = trunc i32 %13 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %sub, i8 %14)
  %cmp = icmp ne i8 %sub, %14
  br i1 %cmp, label %if.then8, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %15 = and i8 %call.i, -128
  %16 = sub i8 127, %14
  %conv19 = or i8 %16, %15
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %idx.0, i8 noundef zeroext %conv19) #4
  br label %if.end20

if.end20:                                         ; preds = %if.then8, %if.end.if.end20_crit_edge
  %conv6 = zext i1 %cmp to i32
  ret i32 %conv6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_stereo_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_adc_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 9) #4
  %2 = xor i8 %call.i, -1
  %3 = lshr i8 %2, 7
  %and = zext i8 %3 to i32
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %value, align 4
  %call.i.1 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 10) #4
  %5 = xor i8 %call.i.1, -1
  %6 = lshr i8 %5, 7
  %and.1 = zext i8 %6 to i32
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and.1, ptr %arrayidx.1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_adc_mute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 9) #4
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  %neg = xor i32 %3, -1
  %shl = shl i32 %neg, 7
  %conv = zext i8 %call.i to i32
  %and1 = and i32 %conv, 127
  %or = or i32 %shl, %and1
  %conv3 = and i32 %or, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv)
  %cmp5.not = icmp eq i32 %conv3, %conv
  br i1 %cmp5.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv2 = trunc i32 %or to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 9, i8 noundef zeroext %conv2) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %call.i.1 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 10) #4
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  %neg.1 = xor i32 %5, -1
  %shl.1 = shl i32 %neg.1, 7
  %conv.1 = zext i8 %call.i.1 to i32
  %and1.1 = and i32 %conv.1, 127
  %or.1 = or i32 %shl.1, %and1.1
  %conv3.1 = and i32 %or.1, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.1, i32 %conv.1)
  %cmp5.1 = icmp ne i32 %conv3.1, %conv.1
  br i1 %cmp5.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %conv2.1 = trunc i32 %or.1 to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 10, i8 noundef zeroext %conv2.1) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %conv6.le = zext i1 %cmp5.1 to i32
  ret i32 %conv6.le
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stac9460_adc_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  store i32 15, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_adc_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 9) #4
  %2 = and i8 %call.i, 15
  %3 = xor i8 %2, 15
  %sub = zext i8 %3 to i32
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %value, align 4
  %call.i.1 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 10) #4
  %5 = and i8 %call.i.1, 15
  %6 = xor i8 %5, 15
  %sub.1 = zext i8 %6 to i32
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.1, ptr %arrayidx.1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_adc_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  %conv = and i32 %3, 15
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 9) #4
  %sub = sub i8 15, %call.i
  %conv3 = zext i8 %sub to i32
  %and4 = and i32 %conv3, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4, i32 %conv)
  %cmp6.not = icmp eq i32 %and4, %conv
  br i1 %cmp6.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and11 = and i32 %conv3, 240
  %4 = or i32 %and11, %conv
  %5 = trunc i32 %4 to i8
  %conv12 = xor i8 %5, 15
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 9, i8 noundef zeroext %conv12) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 4
  %conv.1 = and i32 %7, 15
  %call.i.1 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 10) #4
  %sub.1 = sub i8 15, %call.i.1
  %conv3.1 = zext i8 %sub.1 to i32
  %and4.1 = and i32 %conv3.1, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.1, i32 %conv.1)
  %cmp6.1 = icmp ne i32 %and4.1, %conv.1
  br i1 %cmp6.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %and11.1 = and i32 %conv3.1, 240
  %8 = or i32 %and11.1, %conv.1
  %9 = trunc i32 %8 to i8
  %conv12.1 = xor i8 %9, 15
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 10, i8 noundef zeroext %conv12.1) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %conv7.le = zext i1 %cmp6.1 to i32
  ret i32 %conv7.le
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_mic_sw_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @stac9460_mic_sw_info.texts) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_mic_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 13) #4
  %2 = lshr i8 %call.i, 7
  %3 = zext i8 %2 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9460_mic_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 13) #4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %shl = shl i32 %3, 7
  %conv = zext i8 %call.i to i32
  %and1 = and i32 %conv, 127
  %or = or i32 %shl, %and1
  %conv3 = and i32 %or, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv)
  %cmp = icmp ne i32 %conv3, %conv
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv2 = trunc i32 %or to i8
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 13, i8 noundef zeroext %conv2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv5 = zext i1 %cmp to i32
  ret i32 %conv5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4114_input_sw_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @ak4114_input_sw_info.texts) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4114_input_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call zeroext i8 @prodigy192_ak4114_read(ptr noundef %1, i8 noundef zeroext 3)
  %2 = and i8 %call, 1
  %3 = zext i8 %2 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4114_input_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call zeroext i8 @prodigy192_ak4114_read(ptr noundef %1, i8 noundef zeroext 3)
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp ne i32 %3, 0
  %conv1 = zext i1 %tobool.not.not to i8
  %and3 = and i8 %call, -2
  %or = or i8 %and3, %conv1
  call void @__sanitizer_cov_trace_cmp1(i8 %or, i8 %call)
  %cmp = icmp ne i8 %or, %call
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @prodigy192_ak4114_write(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %or)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv7 = zext i1 %cmp to i32
  ret i32 %conv7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac9460_proc_regs_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %reg.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %conv.i = trunc i32 %reg.06 to i8
  %call.i = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %conv.i) #4
  %conv = zext i8 %call.i to i32
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %reg.06, i32 noundef %conv) #4
  %inc = add nuw nsw i32 %reg.06, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/prodigy192.c", i32 783, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/prodigy192.c", i32 784, i32 12}
!4 = !{ptr @snd_vt1724_prodigy192_cards, !5, !"snd_vt1724_prodigy192_cards", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/prodigy192.c", i32 780, i32 30}
!6 = distinct !{null, !7, !"stac_inits_prodigy", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/prodigy192.c", i32 703, i32 30}
!8 = !{ptr @prodigy192_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../sound/pci/ice1712/prodigy192.c", i32 728, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/pci/ice1712/prodigy192.c", i32 742, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @prodigy192_init.__UNIQUE_ID_ddebug238, !12, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/ice1712/prodigy192.c", i32 745, i32 3}
!19 = !{ptr @prodigy192_init.__UNIQUE_ID_ddebug239, !18, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!20 = !{ptr @prodigy192_ak4114_init.ak4114_init_vals, !21, !"ak4114_init_vals", i1 false, i1 false}
!21 = !{!"../sound/pci/ice1712/prodigy192.c", i32 595, i32 29}
!22 = !{ptr @prodigy192_ak4114_init.ak4114_init_txcsb, !23, !"ak4114_init_txcsb", i1 false, i1 false}
!23 = !{!"../sound/pci/ice1712/prodigy192.c", i32 606, i32 29}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/ice1712/prodigy192.c", i32 352, i32 11}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/ice1712/prodigy192.c", i32 363, i32 11}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/ice1712/prodigy192.c", i32 372, i32 11}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/ice1712/prodigy192.c", i32 382, i32 11}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/ice1712/prodigy192.c", i32 391, i32 11}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/ice1712/prodigy192.c", i32 402, i32 11}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/ice1712/prodigy192.c", i32 411, i32 11}
!38 = !{ptr @stac_controls, !39, !"stac_controls", i1 false, i1 false}
!39 = !{!"../sound/pci/ice1712/prodigy192.c", i32 349, i32 38}
!40 = !{ptr @db_scale_dac, !41, !"db_scale_dac", i1 false, i1 false}
!41 = !{!"../sound/pci/ice1712/prodigy192.c", i32 342, i32 14}
!42 = !{ptr @db_scale_adc, !43, !"db_scale_adc", i1 false, i1 false}
!43 = !{!"../sound/pci/ice1712/prodigy192.c", i32 343, i32 14}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/ice1712/prodigy192.c", i32 271, i32 41}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/ice1712/prodigy192.c", i32 271, i32 52}
!48 = !{ptr @stac9460_mic_sw_info.texts, !49, !"texts", i1 false, i1 false}
!49 = !{!"../sound/pci/ice1712/prodigy192.c", i32 271, i32 28}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/ice1712/prodigy192.c", i32 584, i32 11}
!52 = !{ptr @ak4114_controls, !53, !"ak4114_controls", i1 false, i1 false}
!53 = !{!"../sound/pci/ice1712/prodigy192.c", i32 581, i32 38}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/ice1712/prodigy192.c", i32 542, i32 41}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/ice1712/prodigy192.c", i32 542, i32 52}
!58 = !{ptr @ak4114_input_sw_info.texts, !59, !"texts", i1 false, i1 false}
!59 = !{!"../sound/pci/ice1712/prodigy192.c", i32 542, i32 28}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/ice1712/prodigy192.c", i32 640, i32 34}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/ice1712/prodigy192.c", i32 633, i32 3}
!64 = !{ptr @prodigy71_eeprom, !65, !"prodigy71_eeprom", i1 false, i1 false}
!65 = !{!"../sound/pci/ice1712/prodigy192.c", i32 756, i32 28}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 2148776054, i64 2148776059, i64 2148776072, i64 2148776116, i64 2148776150, i64 2148776171}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.peeled.count", i32 1}
!78 = !{i64 656394, i64 656411}
