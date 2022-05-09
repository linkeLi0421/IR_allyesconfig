; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/juli.c_pt.bc'
source_filename = "../sound/pci/ice1712/juli.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_akm4xxx = type { ptr, i32, i32, [64 x i8], [64 x i8], [4 x i32], [4 x ptr], i32, i32, ptr, ptr, %struct.snd_ak4xxx_ops, i32, i32, ptr }
%struct.snd_ak4xxx_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_akm4xxx_dac_channel = type { ptr, i32, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
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
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ak4114 = type { ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.mutex, %struct.spinlock, [6 x i8], [5 x i8], [15 x ptr], ptr, ptr, [4 x i32], i8, i8, %struct.delayed_work, i32, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.juli_spec = type { ptr, i8 }
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
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ESI Juli@\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"juli\00", [27 x i8] zeroinitializer }, align 32
@juli_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"+\80\F8\C3\9F\FF\7F`\00\7F\1A\00\00", [19 x i8] zeroinitializer }, align 32
@snd_vt1724_juli_cards = dso_local global { [2 x %struct.snd_ice1712_card_info], [48 x i8] } { [2 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 825250629, ptr @.str, ptr @.str.1, ptr null, ptr @juli_init, ptr null, ptr @juli_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @juli_eeprom }, %struct.snd_ice1712_card_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@juli_init.ak4114_init_vals = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0Fp\80I\00\00", [26 x i8] zeroinitializer }, align 32
@juli_init.ak4114_init_txcsb = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A\02,\00\00", [27 x i8] zeroinitializer }, align 32
@juli_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 615, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"juli@: analog I/O detected\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"juli_init\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/pci/ice1712/juli.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@juli_init._entry_ptr = internal global ptr @juli_init._entry, section ".printk_index", align 4
@akm_juli_dac = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 0, i32 8, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 4, ptr @juli_dac, ptr null, %struct.snd_ak4xxx_ops { ptr @juli_akm_lock, ptr @juli_akm_unlock, ptr @juli_akm_write, ptr @juli_akm_set_rate_val }, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@juli_rates_info = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @juli_rates, i32 11, i32 0 }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@juli_dac = internal constant { [4 x %struct.snd_akm4xxx_dac_channel], [48 x i8] } { [4 x %struct.snd_akm4xxx_dac_channel] [%struct.snd_akm4xxx_dac_channel { ptr @.str.7, i32 2, ptr null }, %struct.snd_akm4xxx_dac_channel { ptr @.str.8, i32 2, ptr null }, %struct.snd_akm4xxx_dac_channel { ptr @.str.9, i32 2, ptr null }, %struct.snd_akm4xxx_dac_channel { ptr @.str.10, i32 2, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Monitor Analog In Volume\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Monitor Digital Out Volume\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Monitor Digital In Volume\00", [38 x i8] zeroinitializer }, align 32
@juli_rates = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 176400, i32 192000], [52 x i8] zeroinitializer }, align 32
@gpio_vals = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 28, i32 29, i32 30, i32 24, i32 25, i32 26, i32 20, i32 21, i32 22, i32 17, i32 18], [52 x i8] zeroinitializer }, align 32
@juli_mute_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @juli_mute_get, ptr @juli_mute_put, %union.anon.87 zeroinitializer, i32 32768 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @juli_mute_get, ptr @juli_mute_put, %union.anon.87 zeroinitializer, i32 8192 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @juli_mute_get, ptr @juli_mute_put, %union.anon.87 zeroinitializer, i32 2048 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @juli_mute_get, ptr @juli_mute_put, %union.anon.87 zeroinitializer, i32 4096 }], [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@juli_master_db_scale = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6350, i32 65586], [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Monitor Analog In Switch\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Monitor Digital Out Switch\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Monitor Digital In Switch\00", [38 x i8] zeroinitializer }, align 32
@switch.table.juli_get_rate = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 9, i32 10, i32 0, i32 6, i32 7, i32 8, i32 0, i32 3, i32 4, i32 5, i32 0, i32 0, i32 1, i32 2], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000, i64 176400, i64 192000]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 676, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 677, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"juli_eeprom\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 654, i32 28 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"snd_vt1724_juli_cards\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 673, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"ak4114_init_vals\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 568, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"ak4114_init_txcsb\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 578, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 615, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"akm_juli_dac\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 271, i32 33 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"juli_rates_info\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 134, i32 48 }
@___asan_gen_.58 = private unnamed_addr constant [9 x i8] c"juli_dac\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 263, i32 45 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 264, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 265, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 266, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 267, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"juli_rates\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 122, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant [10 x i8] c"gpio_vals\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 128, i32 27 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"juli_mute_controls\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 346, i32 38 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 453, i32 40 }
@___asan_gen_.85 = private unnamed_addr constant [21 x i8] c"juli_master_db_scale\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 409, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 349, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 376, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 384, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [28 x i8] c"../sound/pci/ice1712/juli.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 392, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [27 x i8] c"switch.table.juli_get_rate\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @juli_init._entry, ptr @juli_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @juli_eeprom, ptr @snd_vt1724_juli_cards, ptr @juli_init.ak4114_init_vals, ptr @juli_init.ak4114_init_txcsb, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @akm_juli_dac, ptr @juli_rates_info, ptr @juli_dac, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @juli_rates, ptr @gpio_vals, ptr @juli_mute_controls, ptr @.str.11, ptr @juli_master_db_scale, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @switch.table.juli_get_rate], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @juli_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_juli_cards to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @juli_init.ak4114_init_vals to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @juli_init.ak4114_init_txcsb to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @juli_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_juli_dac to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @juli_rates_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @juli_dac to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @juli_rates to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vals to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @juli_mute_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @juli_master_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.juli_get_rate to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @juli_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %1 = ptrtoint ptr %spec1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %spec1, align 4
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call2 = tail call i32 @snd_ak4114_create(ptr noundef %3, ptr noundef nonnull @juli_ak4114_read, ptr noundef nonnull @juli_ak4114_write, ptr noundef nonnull @juli_init.ak4114_init_vals, ptr noundef nonnull @juli_init.ak4114_init_txcsb, ptr noundef %ice, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call7.i.i, align 8
  %change_callback = getelementptr inbounds %struct.ak4114, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %change_callback to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @juli_ak4114_change, ptr %change_callback, align 4
  %7 = load ptr, ptr %call7.i.i, align 8
  %change_callback_private = getelementptr inbounds %struct.ak4114, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %change_callback_private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ice, ptr %change_callback_private, align 4
  %9 = load ptr, ptr %call7.i.i, align 8
  %check_flags = getelementptr inbounds %struct.ak4114, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %check_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %check_flags, align 4
  %analog = getelementptr inbounds %struct.juli_spec, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %analog to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %analog, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %analog, align 4
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.2) #12
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %16 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %17 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %num_total_adcs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i59 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 216) #11
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %19 = ptrtoint ptr %akm to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i59, ptr %akm, align 4
  %tobool15.not = icmp eq ptr %call7.i.i59, null
  br i1 %tobool15.not, label %if.end4.cleanup_crit_edge, label %if.end17

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end4
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %20 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %akm_codecs, align 4
  %call18 = tail call i32 @snd_ice1712_akm4xxx_init(ptr noundef nonnull %call7.i.i59, ptr noundef nonnull @akm_juli_dac, ptr noundef null, ptr noundef %ice) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %hw_rates = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 38
  %21 = ptrtoint ptr %hw_rates to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @juli_rates_info, ptr %hw_rates, align 4
  %is_spdif_master = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 50
  %22 = ptrtoint ptr %is_spdif_master to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @juli_is_spdif_master, ptr %is_spdif_master, align 4
  %get_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 51
  %23 = ptrtoint ptr %get_rate to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @juli_get_rate, ptr %get_rate, align 4
  %set_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 52
  %24 = ptrtoint ptr %set_rate to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @juli_set_rate, ptr %set_rate, align 4
  %set_mclk = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 53
  %25 = ptrtoint ptr %set_mclk to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @juli_set_mclk, ptr %set_mclk, align 4
  %set_spdif_clock = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 54
  %26 = ptrtoint ptr %set_spdif_clock to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @juli_set_spdif_clock, ptr %set_spdif_clock, align 4
  %ops = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @juli_spdif_in_open, ptr %ops, align 4
  %pm_resume = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 60
  %28 = ptrtoint ptr %pm_resume to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @juli_resume, ptr %pm_resume, align 4
  %pm_suspend = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 59
  %29 = ptrtoint ptr %pm_suspend to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @juli_suspend, ptr %pm_suspend, align 4
  %pm_suspend_enabled = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 61
  %30 = ptrtoint ptr %pm_suspend_enabled to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load23 = load i8, ptr %pm_suspend_enabled, align 4
  %bf.set25 = or i8 %bf.load23, -128
  store i8 %bf.set25, ptr %pm_suspend_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end17.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @juli_add_controls(ptr noundef %ice) #0 align 64 {
entry:
  %sid.i.i = alloca %struct.snd_ctl_elem_id, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %call = tail call i32 @snd_ice1712_akm4xxx_build_controls(ptr noundef %ice) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call3 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @juli_mute_controls, ptr noundef %ice) #8
  %call4 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %for.cond.preheader.cleanup_crit_edge, label %for.cond

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.cond.preheader
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %call3.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @juli_mute_controls, i32 0, i32 1), ptr noundef %ice) #8
  %call4.1 = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef %call3.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %cmp5.1 = icmp slt i32 %call4.1, 0
  br i1 %cmp5.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %call3.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @juli_mute_controls, i32 0, i32 2), ptr noundef %ice) #8
  %call4.2 = tail call i32 @snd_ctl_add(ptr noundef %7, ptr noundef %call3.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %cmp5.2 = icmp slt i32 %call4.2, 0
  br i1 %cmp5.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %call3.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @juli_mute_controls, i32 0, i32 3), ptr noundef %ice) #8
  %call4.3 = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef %call3.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3)
  %cmp5.3 = icmp slt i32 %call4.3, 0
  br i1 %cmp5.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %call8 = tail call ptr @snd_ctl_make_virtual_master(ptr noundef nonnull @.str.11, ptr noundef nonnull @juli_master_db_scale) #8
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %for.cond.3.cleanup_crit_edge, label %if.end10

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %for.cond.3
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %name1.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i, i32 0, i32 4
  %iface.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i) #8
  %12 = call ptr @memset(ptr %sid.i.i, i32 0, i32 64)
  %call.i.i = call i32 @strscpy(ptr noundef %name1.i.i, ptr noundef nonnull @.str.7, i32 noundef 44) #8
  %13 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %iface.i.i, align 4
  %call2.i.i = call ptr @snd_ctl_find_id(ptr noundef %11, ptr noundef nonnull %sid.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i) #8
  %tobool1.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool1.not.i, label %if.end10.if.end.i_crit_edge, label %if.then.i

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call.i1.i = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call8, ptr noundef nonnull %call2.i.i, i32 noundef 0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end10.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i) #8
  %14 = call ptr @memset(ptr %sid.i.i, i32 0, i32 64)
  %call.i.1.i = call i32 @strscpy(ptr noundef %name1.i.i, ptr noundef nonnull @.str.8, i32 noundef 44) #8
  %15 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %iface.i.i, align 4
  %call2.i.1.i = call ptr @snd_ctl_find_id(ptr noundef %11, ptr noundef nonnull %sid.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i) #8
  %tobool1.not.1.i = icmp eq ptr %call2.i.1.i, null
  br i1 %tobool1.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i1.1.i = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call8, ptr noundef nonnull %call2.i.1.i, i32 noundef 0) #8
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i.if.end.1.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i) #8
  %16 = call ptr @memset(ptr %sid.i.i, i32 0, i32 64)
  %call.i.2.i = call i32 @strscpy(ptr noundef %name1.i.i, ptr noundef nonnull @.str.10, i32 noundef 44) #8
  %17 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %iface.i.i, align 4
  %call2.i.2.i = call ptr @snd_ctl_find_id(ptr noundef %11, ptr noundef nonnull %sid.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i) #8
  %tobool1.not.2.i = icmp eq ptr %call2.i.2.i, null
  br i1 %tobool1.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %if.then.2.i

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i1.2.i = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call8, ptr noundef nonnull %call2.i.2.i, i32 noundef 0) #8
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %if.end.1.i.if.end.2.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i.i) #8
  %18 = call ptr @memset(ptr %sid.i.i, i32 0, i32 64)
  %call.i.3.i = call i32 @strscpy(ptr noundef %name1.i.i, ptr noundef nonnull @.str.9, i32 noundef 44) #8
  %19 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %iface.i.i, align 4
  %call2.i.3.i = call ptr @snd_ctl_find_id(ptr noundef %11, ptr noundef nonnull %sid.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i.i) #8
  %tobool1.not.3.i = icmp eq ptr %call2.i.3.i, null
  br i1 %tobool1.not.3.i, label %if.end.2.i.add_followers.exit_crit_edge, label %if.then.3.i

if.end.2.i.add_followers.exit_crit_edge:          ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_followers.exit

if.then.3.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i1.3.i = call i32 @_snd_ctl_add_follower(ptr noundef nonnull %call8, ptr noundef nonnull %call2.i.3.i, i32 noundef 0) #8
  br label %add_followers.exit

add_followers.exit:                               ; preds = %if.then.3.i, %if.end.2.i.add_followers.exit_crit_edge
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %call13 = call i32 @snd_ctl_add(ptr noundef %21, ptr noundef nonnull %call8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %add_followers.exit.cleanup_crit_edge, label %if.end16

add_followers.exit.cleanup_crit_edge:             ; preds = %add_followers.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %add_followers.exit
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %pcm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 11
  %24 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcm, align 4
  %substream = getelementptr %struct.snd_pcm, ptr %25, i32 0, i32 8, i32 1, i32 4
  %26 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %substream, align 8
  %call18 = call i32 @snd_ak4114_build(ptr noundef %23, ptr noundef null, ptr noundef %27) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %add_followers.exit.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end16 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %for.cond.3.cleanup_crit_edge ], [ %call13, %add_followers.exit.cleanup_crit_edge ], [ %call4, %for.cond.preheader.cleanup_crit_edge ], [ %call4.1, %for.cond.cleanup_crit_edge ], [ %call4.2, %for.cond.1.cleanup_crit_edge ], [ %call4.3, %for.cond.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ak4114_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @juli_ak4114_read(ptr noundef %private_data, i8 noundef zeroext %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %private_data, i8 noundef zeroext 32, i8 noundef zeroext %reg) #8
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @juli_ak4114_write(ptr noundef %private_data, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @snd_vt1724_write_i2c(ptr noundef %private_data, i8 noundef zeroext 32, i8 noundef zeroext %reg, i8 noundef zeroext %val) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @juli_ak4114_change(ptr noundef %ak4114, i8 noundef zeroext %c0, i8 noundef zeroext %c1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %change_callback_private = getelementptr inbounds %struct.ak4114, ptr %ak4114, i32 0, i32 17
  %0 = ptrtoint ptr %change_callback_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %change_callback_private, align 4
  %is_spdif_master = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %is_spdif_master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %is_spdif_master, align 4
  %call = tail call i32 %3(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %c1)
  %tobool1.not = icmp eq i8 %c1, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @snd_ak4114_external_rate(ptr noundef %ak4114) #8
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %akm, align 4
  tail call void @juli_akm_set_rate_val(ptr noundef %5, i32 noundef %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_akm4xxx_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @juli_is_spdif_master(ptr noundef %ice) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %get_data = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %0 = ptrtoint ptr %get_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_data, align 4
  %call = tail call i32 %1(ptr noundef %ice) #8
  %and = lshr i32 %call, 4
  %and.lobit = and i32 %and, 1
  %2 = xor i32 %and.lobit, 1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @juli_get_rate(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %get_data = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %0 = ptrtoint ptr %get_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_data, align 4
  %call = tail call i32 %1(ptr noundef %ice) #8
  %conv = and i32 %call, 31
  %switch.tableidx = add nsw i32 %conv, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 14
  br i1 %2, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 15291, %switch.maskindex
  %3 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %switch.lobit.not = icmp eq i16 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.juli_get_rate, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx5 = getelementptr [11 x i32], ptr @juli_rates, i32 0, i32 %switch.load
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %switch.lookup ], [ 0, %entry.cleanup_crit_edge ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @juli_set_rate(ptr noundef %ice, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %get_data = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %0 = ptrtoint ptr %get_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_data, align 4
  %call = tail call i32 %1(ptr noundef %ice) #8
  %2 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %entry.get_gpio_val.exit_crit_edge [
    i32 16000, label %entry.if.then.i_crit_edge
    i32 22050, label %if.then.fold.split.i
    i32 24000, label %if.then.fold.split9.i
    i32 32000, label %if.then.fold.split10.i
    i32 44100, label %if.then.fold.split11.i
    i32 48000, label %if.then.fold.split12.i
    i32 64000, label %if.then.fold.split13.i
    i32 88200, label %if.then.fold.split14.i
    i32 96000, label %if.then.fold.split15.i
    i32 176400, label %if.then.fold.split16.i
    i32 192000, label %if.then.fold.split17.i
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.get_gpio_val.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_gpio_val.exit

if.then.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split14.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split15.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split16.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split17.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %entry.if.then.i_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ], [ 6, %if.then.fold.split13.i ], [ 7, %if.then.fold.split14.i ], [ 8, %if.then.fold.split15.i ], [ 9, %if.then.fold.split16.i ], [ 10, %if.then.fold.split17.i ]
  %arrayidx2.i = getelementptr [11 x i32], ptr @gpio_vals, i32 0, i32 %i.07.lcssa.i
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2.i, align 4
  br label %get_gpio_val.exit

get_gpio_val.exit:                                ; preds = %if.then.i, %entry.get_gpio_val.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ 0, %entry.get_gpio_val.exit_crit_edge ]
  %and = and i32 %call, -32
  %or = or i32 %retval.0.i, %and
  %set_data = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %5 = ptrtoint ptr %set_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_data, align 4
  tail call void %6(ptr noundef %ice, i32 noundef %or) #8
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %7 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %profi_port, align 4
  %add = add i32 %8, 1
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %9 = inttoptr i32 %add4 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #8, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %11 = or i8 %10, 16
  %12 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %profi_port, align 4
  %add10 = add i32 %13, 1
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %14 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %11) #8, !srcloc !66
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @juli_set_mclk(ptr nocapture noundef readnone %ice, i32 noundef %rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  ret i8 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @juli_set_spdif_clock(ptr noundef %ice, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %get_data = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %0 = ptrtoint ptr %get_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_data, align 4
  %call = tail call i32 %1(ptr noundef %ice) #8
  %set_data = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %2 = ptrtoint ptr %set_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_data, align 4
  %and = and i32 %call, -32
  %or2 = or i32 %and, 10
  tail call void %3(ptr noundef %ice, i32 noundef %or2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @juli_spdif_in_open(ptr noundef %ice, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %is_spdif_master = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 50
  %6 = ptrtoint ptr %is_spdif_master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %is_spdif_master, align 4
  %call = tail call i32 %7(ptr noundef %ice) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @snd_ak4114_external_rate(ptr noundef %9) #8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %10 = ptrtoint ptr %rate_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %11)
  %cmp4.not = icmp ult i32 %call3, %11
  br i1 %cmp4.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %12 = ptrtoint ptr %rate_max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate_max, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %13)
  %cmp6.not = icmp ugt i32 %call3, %13
  br i1 %cmp6.not, label %land.lhs.true.cleanup_crit_edge, label %if.then7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call3, ptr %rate_min, align 4
  %15 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call3, ptr %rate_max, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @juli_resume(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %0 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %akm, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  tail call void @snd_akm4xxx_reset(ptr noundef %1, i32 noundef 0) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @snd_ak4114_resume(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @juli_suspend(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %0 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %akm, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  tail call void @snd_akm4xxx_reset(ptr noundef %1, i32 noundef 1) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @snd_ak4114_suspend(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @snd_vt1724_read_i2c(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_vt1724_write_i2c(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ak4114_external_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @juli_akm_set_rate_val(ptr noundef %ak, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp = icmp eq i32 %rate, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %rate)
  %cmp2 = icmp ugt i32 %rate, 96000
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %cmp4 = icmp ugt i32 %rate, 48000
  %. = select i1 %cmp4, i8 16, i8 0
  %.69 = select i1 %cmp4, i32 1024, i32 0
  %ak4358_dfs.0 = select i1 %cmp2, i8 32, i8 %.
  %ak5385_pins.0 = select i1 %cmp2, i32 768, i32 %.69
  %get_data = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %4 = ptrtoint ptr %get_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_data, align 4
  %call = tail call i32 %5(ptr noundef %1) #8
  %and = and i32 %call, -18177
  %or = or i32 %and, %ak5385_pins.0
  %set_data = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 7
  %6 = ptrtoint ptr %set_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_data, align 4
  tail call void %7(ptr noundef %1, i32 noundef %or) #8
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %profi_port, align 4
  %add = add i32 %9, 5
  %and10 = and i32 %add, 1048575
  %add11 = or i32 %and10, -18874368
  %10 = inttoptr i32 %add11 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #8, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  %or15 = or i8 %11, -128
  %12 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %profi_port, align 4
  %add18 = add i32 %13, 5
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %14 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %or15) #8, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %16 = and i8 %11, 127
  %17 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %profi_port, align 4
  %add29 = add i32 %18, 5
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %19 = inttoptr i32 %add31 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %16) #8, !srcloc !66
  %arrayidx33 = getelementptr %struct.snd_akm4xxx, ptr %ak, i32 0, i32 3, i32 2
  tail call void @snd_akm4xxx_reset(ptr noundef %ak, i32 noundef 1) #8
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx33, align 2
  %22 = and i8 %21, -49
  %or41 = or i8 %22, %ak4358_dfs.0
  store i8 %or41, ptr %arrayidx33, align 2
  tail call void @snd_akm4xxx_reset(ptr noundef %ak, i32 noundef 0) #8
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  tail call void @snd_ak4114_reinit(ptr noundef %24) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_akm4xxx_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ak4114_reinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @juli_akm_lock(ptr nocapture noundef %ak, i32 noundef %chip) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @juli_akm_unlock(ptr nocapture noundef %ak, i32 noundef %chip) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @juli_akm_write(ptr nocapture noundef readonly %ak, i32 noundef %chip, i8 noundef zeroext %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chip)
  %tobool.not = icmp eq i32 %chip, 0
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !70

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 200, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @snd_vt1724_write_i2c(ptr noundef %1, i8 noundef zeroext 34, i8 noundef zeroext %addr, i8 noundef zeroext %data) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ak4114_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ak4114_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_akm4xxx_build_controls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_make_virtual_master(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ak4114_build(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @juli_mute_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %get_data = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %2 = ptrtoint ptr %get_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_data, align 4
  %call = tail call i32 %3(ptr noundef %1) #8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %and = and i32 %5, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %5)
  %cmp = icmp eq i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp ne i32 %and, 0
  %cond3.sink.in = select i1 %cmp, i1 %tobool.not, i1 %tobool2.not
  %cond3.sink = zext i1 %cond3.sink.in to i32
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond3.sink, ptr %6, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @juli_mute_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %get_data = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %2 = ptrtoint ptr %get_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_data, align 4
  %call = tail call i32 %3(ptr noundef %1) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %private_value4 = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %7)
  %cmp5 = icmp eq i32 %7, 32768
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp5, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %call, -32769
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %8 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %akm, align 4
  tail call void @snd_akm4xxx_write(ptr noundef %9, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %if.end13

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %7, %call
  br label %if.end13

if.else3:                                         ; preds = %entry
  br i1 %cmp5, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #10
  %or7 = or i32 %call, 32768
  %akm8 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  %10 = ptrtoint ptr %akm8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %akm8, align 4
  tail call void @snd_akm4xxx_write(ptr noundef %11, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 3) #8
  br label %if.end13

if.else9:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %7, -1
  %and11 = and i32 %call, %neg
  br label %if.end13

if.end13:                                         ; preds = %if.else9, %if.then6, %if.else, %if.then1
  %new_gpio.0 = phi i32 [ %and, %if.then1 ], [ %or, %if.else ], [ %or7, %if.then6 ], [ %and11, %if.else9 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %new_gpio.0)
  %cmp14.not = icmp eq i32 %call, %new_gpio.0
  br i1 %cmp14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %set_data = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 7
  %12 = ptrtoint ptr %set_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_data, align 4
  tail call void %13(ptr noundef %1, i32 noundef %new_gpio.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then15 ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_akm4xxx_write(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_find_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_ctl_add_follower(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/juli.c", i32 676, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/juli.c", i32 677, i32 12}
!4 = !{ptr @snd_vt1724_juli_cards, !5, !"snd_vt1724_juli_cards", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/juli.c", i32 673, i32 30}
!6 = !{ptr @juli_init.ak4114_init_vals, !7, !"ak4114_init_vals", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/juli.c", i32 568, i32 29}
!8 = !{ptr @juli_init.ak4114_init_txcsb, !9, !"ak4114_init_txcsb", i1 false, i1 false}
!9 = !{!"../sound/pci/ice1712/juli.c", i32 578, i32 29}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/ice1712/juli.c", i32 615, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @juli_init._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @juli_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @akm_juli_dac, !19, !"akm_juli_dac", i1 false, i1 false}
!19 = !{!"../sound/pci/ice1712/juli.c", i32 271, i32 33}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ice1712/juli.c", i32 264, i32 2}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/ice1712/juli.c", i32 265, i32 2}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/ice1712/juli.c", i32 266, i32 2}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/ice1712/juli.c", i32 267, i32 2}
!28 = !{ptr @juli_dac, !29, !"juli_dac", i1 false, i1 false}
!29 = !{!"../sound/pci/ice1712/juli.c", i32 263, i32 45}
!30 = !{ptr @juli_rates_info, !31, !"juli_rates_info", i1 false, i1 false}
!31 = !{!"../sound/pci/ice1712/juli.c", i32 134, i32 48}
!32 = !{ptr @juli_rates, !33, !"juli_rates", i1 false, i1 false}
!33 = !{!"../sound/pci/ice1712/juli.c", i32 122, i32 27}
!34 = !{ptr @gpio_vals, !35, !"gpio_vals", i1 false, i1 false}
!35 = !{!"../sound/pci/ice1712/juli.c", i32 128, i32 27}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/ice1712/juli.c", i32 453, i32 40}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/pci/ice1712/juli.c", i32 349, i32 11}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/ice1712/juli.c", i32 376, i32 11}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/ice1712/juli.c", i32 384, i32 11}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/ice1712/juli.c", i32 392, i32 11}
!46 = !{ptr @juli_mute_controls, !47, !"juli_mute_controls", i1 false, i1 false}
!47 = !{!"../sound/pci/ice1712/juli.c", i32 346, i32 38}
!48 = !{ptr @juli_master_db_scale, !49, !"juli_master_db_scale", i1 false, i1 false}
!49 = !{!"../sound/pci/ice1712/juli.c", i32 409, i32 1}
!50 = distinct !{null, !51, !"follower_vols", i1 false, i1 false}
!51 = !{!"../sound/pci/ice1712/juli.c", i32 400, i32 27}
!52 = !{ptr @juli_eeprom, !53, !"juli_eeprom", i1 false, i1 false}
!53 = !{!"../sound/pci/ice1712/juli.c", i32 654, i32 28}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 4223659}
!64 = !{i64 2154385865}
!65 = !{i64 2154386172}
!66 = !{i64 4223264}
!67 = !{i64 2154381159}
!68 = !{i64 2154381474}
!69 = !{i64 2154382465}
!70 = !{!"branch_weights", i32 2000, i32 1}
