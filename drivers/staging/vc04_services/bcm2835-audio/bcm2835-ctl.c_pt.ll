; ModuleID = '/llk/IR_all_yes/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c_pt.bc'
source_filename = "../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.82, i32 }
%union.anon.82 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.68, [64 x i8] }
%union.anon.68 = type { %struct.anon.71, [40 x i8] }
%struct.anon.71 = type { i32, i32, [64 x i8], i64, i32 }
%struct.bcm2835_chip = type { ptr, ptr, ptr, ptr, [8 x ptr], i32, i32, i32, i32, i32, %struct.mutex, ptr }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Broadcom Mixer\00", [17 x i8] zeroinitializer }, align 32
@snd_bcm2835_ctl = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.1, i32 0, i32 19, i32 0, ptr @snd_bcm2835_ctl_info, ptr @snd_bcm2835_ctl_get, ptr @snd_bcm2835_ctl_put, %union.anon.82 { ptr @snd_bcm2835_db_scale }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.2, i32 0, i32 3, i32 0, ptr @snd_bcm2835_ctl_info, ptr @snd_bcm2835_ctl_get, ptr @snd_bcm2835_ctl_put, %union.anon.82 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 3, i32 0, ptr @snd_bcm2835_ctl_info, ptr @snd_bcm2835_ctl_get, ptr @snd_bcm2835_ctl_put, %union.anon.82 zeroinitializer, i32 2 }], [48 x i8] zeroinitializer }, align 32
@snd_bcm2835_spdif = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.9, i32 0, i32 0, i32 0, ptr @snd_bcm2835_spdif_default_info, ptr @snd_bcm2835_spdif_default_get, ptr @snd_bcm2835_spdif_default_put, %union.anon.82 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.10, i32 0, i32 1, i32 0, ptr @snd_bcm2835_spdif_mask_info, ptr @snd_bcm2835_spdif_mask_get, ptr null, %union.anon.82 zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@snd_bcm2835_headphones_ctl = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 1, ptr @snd_bcm2835_ctl_info, ptr @snd_bcm2835_ctl_get, ptr @snd_bcm2835_ctl_put, %union.anon.82 { ptr @snd_bcm2835_db_scale }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 3, i32 1, ptr @snd_bcm2835_ctl_info, ptr @snd_bcm2835_ctl_get, ptr @snd_bcm2835_ctl_put, %union.anon.82 zeroinitializer, i32 1 }], [32 x i8] zeroinitializer }, align 32
@snd_bcm2835_hdmi = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 19, i32 1, ptr @snd_bcm2835_ctl_info, ptr @snd_bcm2835_ctl_get, ptr @snd_bcm2835_ctl_put, %union.anon.82 { ptr @snd_bcm2835_db_scale }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 3, i32 1, ptr @snd_bcm2835_ctl_info, ptr @snd_bcm2835_ctl_get, ptr @snd_bcm2835_ctl_put, %union.anon.82 zeroinitializer, i32 1 }], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@snd_bcm2835_db_scale = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10239, i32 65537], [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCM Playback Route\00", [45 x i8] zeroinitializer }, align 32
@snd_bcm2835_ctl_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 92, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set ALSA controls..\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_bcm2835_ctl_put\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_bcm2835_ctl_put._entry_ptr = internal global ptr @snd_bcm2835_ctl_put._entry, section ".printk_index", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Playback Con Mask\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@switch.table.snd_bcm2835_ctl_info = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@switch.table.snd_bcm2835_ctl_info.15 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -10239, i32 0, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.snd_bcm2835_ctl_info.16 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 400, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 227, i32 33 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"snd_bcm2835_ctl\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 100, i32 38 }
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"snd_bcm2835_spdif\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 193, i32 38 }
@___asan_gen_.27 = private unnamed_addr constant [27 x i8] c"snd_bcm2835_headphones_ctl\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 235, i32 38 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"snd_bcm2835_hdmi\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 269, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 103, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"snd_bcm2835_db_scale\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 98, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 113, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 122, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 92, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 196, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 204, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 238, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 251, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 272, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [61 x i8] c"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 285, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant [34 x i8] c"switch.table.snd_bcm2835_ctl_info\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [37 x i8] c"switch.table.snd_bcm2835_ctl_info.15\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [37 x i8] c"switch.table.snd_bcm2835_ctl_info.16\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @snd_bcm2835_ctl_put._entry, ptr @snd_bcm2835_ctl_put._entry_ptr, ptr @.str, ptr @snd_bcm2835_ctl, ptr @snd_bcm2835_spdif, ptr @snd_bcm2835_headphones_ctl, ptr @snd_bcm2835_hdmi, ptr @.str.1, ptr @snd_bcm2835_db_scale, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @switch.table.snd_bcm2835_ctl_info, ptr @switch.table.snd_bcm2835_ctl_info.15, ptr @switch.table.snd_bcm2835_ctl_info.16], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bcm2835_ctl to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bcm2835_spdif to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bcm2835_headphones_ctl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bcm2835_hdmi to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bcm2835_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bcm2835_ctl_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_bcm2835_ctl_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_bcm2835_ctl_info.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_bcm2835_ctl_info.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_bcm2835_new_ctl(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %mixername = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 6
  %call = tail call i32 @strscpy(ptr noundef %mixername, ptr noundef nonnull @.str, i32 noundef 80) #6
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %call.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_bcm2835_ctl, ptr noundef %chip) #6
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %entry.cleanup_crit_edge, label %for.cond.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i:                                       ; preds = %entry
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %call.i.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_bcm2835_ctl, i32 0, i32 1), ptr noundef %chip) #6
  %call1.i.1 = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef %call.i.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %cmp2.i.1 = icmp slt i32 %call1.i.1, 0
  br i1 %cmp2.i.1, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.1

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i.1:                                     ; preds = %for.cond.i
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %call.i.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_bcm2835_ctl, i32 0, i32 2), ptr noundef %chip) #6
  %call1.i.2 = tail call i32 @snd_ctl_add(ptr noundef %7, ptr noundef %call.i.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %cmp2.i.2 = icmp slt i32 %call1.i.2, 0
  br i1 %cmp2.i.2, label %for.cond.i.1.cleanup_crit_edge, label %for.cond.i.2

for.cond.i.1.cleanup_crit_edge:                   ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %call.i11 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_bcm2835_spdif, ptr noundef %chip) #6
  %call1.i12 = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef %call.i11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %cmp2.i13 = icmp slt i32 %call1.i12, 0
  br i1 %cmp2.i13, label %for.cond.i.2.cleanup_crit_edge, label %for.cond.i8

for.cond.i.2.cleanup_crit_edge:                   ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i8:                                      ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %call.i11.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @snd_bcm2835_spdif, i32 0, i32 1), ptr noundef %chip) #6
  %call1.i12.1 = tail call i32 @snd_ctl_add(ptr noundef %11, ptr noundef %call.i11.1) #6
  %12 = call i32 @llvm.smin.i32(i32 %call1.i12.1, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.i8, %for.cond.i.2.cleanup_crit_edge, %for.cond.i.1.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i12, %for.cond.i.2.cleanup_crit_edge ], [ %call1.i, %entry.cleanup_crit_edge ], [ %call1.i.1, %for.cond.i.cleanup_crit_edge ], [ %call1.i.2, %for.cond.i.1.cleanup_crit_edge ], [ %12, %for.cond.i8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_bcm2835_new_headphones_ctl(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %mixername = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 6
  %call = tail call i32 @strscpy(ptr noundef %mixername, ptr noundef nonnull @.str, i32 noundef 80) #6
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %call.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_bcm2835_headphones_ctl, ptr noundef %chip) #6
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %entry.create_ctls.exit_crit_edge, label %for.cond.i

entry.create_ctls.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_ctls.exit

for.cond.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %call.i.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @snd_bcm2835_headphones_ctl, i32 0, i32 1), ptr noundef %chip) #6
  %call1.i.1 = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef %call.i.1) #6
  %6 = call i32 @llvm.smin.i32(i32 %call1.i.1, i32 0)
  br label %create_ctls.exit

create_ctls.exit:                                 ; preds = %for.cond.i, %entry.create_ctls.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %entry.create_ctls.exit_crit_edge ], [ %6, %for.cond.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_bcm2835_new_hdmi_ctl(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %mixername = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 6
  %call = tail call i32 @strscpy(ptr noundef %mixername, ptr noundef nonnull @.str, i32 noundef 80) #6
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %call.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_bcm2835_hdmi, ptr noundef %chip) #6
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %entry.create_ctls.exit_crit_edge, label %for.cond.i

entry.create_ctls.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_ctls.exit

for.cond.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %call.i.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @snd_bcm2835_hdmi, i32 0, i32 1), ptr noundef %chip) #6
  %call1.i.1 = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef %call.i.1) #6
  %6 = call i32 @llvm.smin.i32(i32 %call1.i.1, i32 0)
  br label %create_ctls.exit

create_ctls.exit:                                 ; preds = %for.cond.i, %entry.create_ctls.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %entry.create_ctls.exit_crit_edge ], [ %6, %for.cond.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_bcm2835_ctl_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %switch.lookup, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.snd_bcm2835_ctl_info, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep38 = getelementptr inbounds [3 x i32], ptr @switch.table.snd_bcm2835_ctl_info.15, i32 0, i32 %1
  %4 = ptrtoint ptr %switch.gep38 to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load39 = load i32, ptr %switch.gep38, align 4
  %switch.gep40 = getelementptr inbounds [3 x i32], ptr @switch.table.snd_bcm2835_ctl_info.16, i32 0, i32 %1
  %5 = ptrtoint ptr %switch.gep40 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load41 = load i32, ptr %switch.gep40, align 4
  %type5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %6 = ptrtoint ptr %type5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %switch.load, ptr %type5, align 8
  %count6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %7 = ptrtoint ptr %count6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %count6, align 8
  %value7 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %8 = ptrtoint ptr %value7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %switch.load39, ptr %value7, align 8
  %max10 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %max10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %switch.load41, ptr %max10, align 4
  br label %if.end22

if.end22:                                         ; preds = %switch.lookup, %entry.if.end22_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bcm2835_ctl_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audio_mutex = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %audio_mutex, i32 noundef 0) #6
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.end13_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then3
    i32 2, label %if.then9
  ]

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %volume = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 5
  br label %if.end13.sink.split

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mute = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 7
  br label %if.end13.sink.split

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dest = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 6
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.then9, %if.then3, %if.then
  %mute.sink = phi ptr [ %mute, %if.then3 ], [ %dest, %if.then9 ], [ %volume, %if.then ]
  %5 = ptrtoint ptr %mute.sink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mute.sink, align 4
  %value4 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value4, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %entry.if.end13_crit_edge
  tail call void @mutex_unlock(ptr noundef %audio_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bcm2835_ctl_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then3
    i32 2, label %if.then7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %volume = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 5
  br label %if.end10

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mute = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 7
  br label %if.end10

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dest = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 6
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then3, %if.then
  %valp.0 = phi ptr [ %volume, %if.then ], [ %mute, %if.then3 ], [ %dest, %if.then7 ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 8
  %audio_mutex = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %audio_mutex, i32 noundef 0) #6
  %7 = ptrtoint ptr %valp.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %valp.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp11.not = icmp eq i32 %6, %8
  br i1 %cmp11.not, label %if.end10.if.end15_crit_edge, label %if.then12

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  %9 = ptrtoint ptr %valp.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %valp.0, align 4
  %arrayidx.i = getelementptr %struct.bcm2835_chip, ptr %1, i32 0, i32 4, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then12.for.inc.i_crit_edge, label %if.then.i

if.then12.for.inc.i_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %if.then12
  %call.i = tail call i32 @bcm2835_audio_set_ctls(ptr noundef nonnull %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then.i.do.end_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %if.then12.for.inc.i_crit_edge
  %err.1.i = phi i32 [ %call.i, %if.then.i.for.inc.i_crit_edge ], [ 0, %if.then12.for.inc.i_crit_edge ]
  %arrayidx.1.i = getelementptr %struct.bcm2835_chip, ptr %1, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %13, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  %call.1.i = tail call i32 @bcm2835_audio_set_ctls(ptr noundef nonnull %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp3.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp3.1.i, label %if.then.1.i.do.end_crit_edge, label %if.then.1.i.for.inc.1.i_crit_edge

if.then.1.i.for.inc.1.i_crit_edge:                ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.then.1.i.do.end_crit_edge:                     ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.1.i:                                      ; preds = %if.then.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %err.1.1.i = phi i32 [ %call.1.i, %if.then.1.i.for.inc.1.i_crit_edge ], [ %err.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %arrayidx.2.i = getelementptr %struct.bcm2835_chip, ptr %1, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %15, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  %call.2.i = tail call i32 @bcm2835_audio_set_ctls(ptr noundef nonnull %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp3.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp3.2.i, label %if.then.2.i.do.end_crit_edge, label %if.then.2.i.for.inc.2.i_crit_edge

if.then.2.i.for.inc.2.i_crit_edge:                ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.then.2.i.do.end_crit_edge:                     ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.2.i:                                      ; preds = %if.then.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %err.1.2.i = phi i32 [ %call.2.i, %if.then.2.i.for.inc.2.i_crit_edge ], [ %err.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %arrayidx.3.i = getelementptr %struct.bcm2835_chip, ptr %1, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %17, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  %call.3.i = tail call i32 @bcm2835_audio_set_ctls(ptr noundef nonnull %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp3.3.i = icmp slt i32 %call.3.i, 0
  br i1 %cmp3.3.i, label %if.then.3.i.do.end_crit_edge, label %if.then.3.i.for.inc.3.i_crit_edge

if.then.3.i.for.inc.3.i_crit_edge:                ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

if.then.3.i.do.end_crit_edge:                     ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.3.i:                                      ; preds = %if.then.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %err.1.3.i = phi i32 [ %call.3.i, %if.then.3.i.for.inc.3.i_crit_edge ], [ %err.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %arrayidx.4.i = getelementptr %struct.bcm2835_chip, ptr %1, i32 0, i32 4, i32 4
  %18 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %19, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  %call.4.i = tail call i32 @bcm2835_audio_set_ctls(ptr noundef nonnull %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp3.4.i = icmp slt i32 %call.4.i, 0
  br i1 %cmp3.4.i, label %if.then.4.i.do.end_crit_edge, label %if.then.4.i.for.inc.4.i_crit_edge

if.then.4.i.for.inc.4.i_crit_edge:                ; preds = %if.then.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4.i

if.then.4.i.do.end_crit_edge:                     ; preds = %if.then.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.4.i:                                      ; preds = %if.then.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %err.1.4.i = phi i32 [ %call.4.i, %if.then.4.i.for.inc.4.i_crit_edge ], [ %err.1.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %arrayidx.5.i = getelementptr %struct.bcm2835_chip, ptr %1, i32 0, i32 4, i32 5
  %20 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.5.i, align 4
  %tobool.not.5.i = icmp eq ptr %21, null
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  %call.5.i = tail call i32 @bcm2835_audio_set_ctls(ptr noundef nonnull %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp3.5.i = icmp slt i32 %call.5.i, 0
  br i1 %cmp3.5.i, label %if.then.5.i.do.end_crit_edge, label %if.then.5.i.for.inc.5.i_crit_edge

if.then.5.i.for.inc.5.i_crit_edge:                ; preds = %if.then.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5.i

if.then.5.i.do.end_crit_edge:                     ; preds = %if.then.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.5.i:                                      ; preds = %if.then.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %err.1.5.i = phi i32 [ %call.5.i, %if.then.5.i.for.inc.5.i_crit_edge ], [ %err.1.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %arrayidx.6.i = getelementptr %struct.bcm2835_chip, ptr %1, i32 0, i32 4, i32 6
  %22 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.6.i, align 4
  %tobool.not.6.i = icmp eq ptr %23, null
  br i1 %tobool.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6.i

if.then.6.i:                                      ; preds = %for.inc.5.i
  %call.6.i = tail call i32 @bcm2835_audio_set_ctls(ptr noundef nonnull %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %cmp3.6.i = icmp slt i32 %call.6.i, 0
  br i1 %cmp3.6.i, label %if.then.6.i.do.end_crit_edge, label %if.then.6.i.for.inc.6.i_crit_edge

if.then.6.i.for.inc.6.i_crit_edge:                ; preds = %if.then.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6.i

if.then.6.i.do.end_crit_edge:                     ; preds = %if.then.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.6.i:                                      ; preds = %if.then.6.i.for.inc.6.i_crit_edge, %for.inc.5.i.for.inc.6.i_crit_edge
  %err.1.6.i = phi i32 [ %call.6.i, %if.then.6.i.for.inc.6.i_crit_edge ], [ %err.1.5.i, %for.inc.5.i.for.inc.6.i_crit_edge ]
  %arrayidx.7.i = getelementptr %struct.bcm2835_chip, ptr %1, i32 0, i32 4, i32 7
  %24 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.7.i, align 4
  %tobool.not.7.i = icmp eq ptr %25, null
  br i1 %tobool.not.7.i, label %for.inc.6.i.bcm2835_audio_set_chip_ctls.exit_crit_edge, label %if.then.7.i

for.inc.6.i.bcm2835_audio_set_chip_ctls.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm2835_audio_set_chip_ctls.exit

if.then.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.7.i = tail call i32 @bcm2835_audio_set_ctls(ptr noundef nonnull %25) #6
  br label %bcm2835_audio_set_chip_ctls.exit

bcm2835_audio_set_chip_ctls.exit:                 ; preds = %if.then.7.i, %for.inc.6.i.bcm2835_audio_set_chip_ctls.exit_crit_edge
  %err.2.i = phi i32 [ %call.7.i, %if.then.7.i ], [ %err.1.6.i, %for.inc.6.i.bcm2835_audio_set_chip_ctls.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %tobool.not = icmp eq i32 %err.2.i, 0
  br i1 %tobool.not, label %bcm2835_audio_set_chip_ctls.exit.if.end15_crit_edge, label %bcm2835_audio_set_chip_ctls.exit.do.end_crit_edge

bcm2835_audio_set_chip_ctls.exit.do.end_crit_edge: ; preds = %bcm2835_audio_set_chip_ctls.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

bcm2835_audio_set_chip_ctls.exit.if.end15_crit_edge: ; preds = %bcm2835_audio_set_chip_ctls.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end:                                           ; preds = %bcm2835_audio_set_chip_ctls.exit.do.end_crit_edge, %if.then.6.i.do.end_crit_edge, %if.then.5.i.do.end_crit_edge, %if.then.4.i.do.end_crit_edge, %if.then.3.i.do.end_crit_edge, %if.then.2.i.do.end_crit_edge, %if.then.1.i.do.end_crit_edge, %if.then.i.do.end_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.4) #9
  br label %if.end15

if.end15:                                         ; preds = %do.end, %bcm2835_audio_set_chip_ctls.exit.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  %changed.0 = phi i32 [ 1, %do.end ], [ 1, %bcm2835_audio_set_chip_ctls.exit.if.end15_crit_edge ], [ 0, %if.end10.if.end15_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %audio_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %changed.0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm2835_audio_set_ctls(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_bcm2835_spdif_default_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bcm2835_spdif_default_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audio_mutex = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %audio_mutex, i32 noundef 0) #6
  %spdif_status = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 9
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %spdif_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spdif_status, align 4
  %conv = trunc i32 %3 to i8
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %value, align 1
  %5 = load i32, ptr %spdif_status, align 4
  %shr.1 = lshr i32 %5, 8
  %conv.1 = trunc i32 %shr.1 to i8
  %arrayidx.1 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.1, ptr %arrayidx.1, align 1
  %7 = load i32, ptr %spdif_status, align 4
  %shr.2 = lshr i32 %7, 16
  %conv.2 = trunc i32 %shr.2 to i8
  %arrayidx.2 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.2, ptr %arrayidx.2, align 1
  %9 = load i32, ptr %spdif_status, align 4
  %shr.3 = lshr i32 %9, 24
  %conv.3 = trunc i32 %shr.3 to i8
  %arrayidx.3 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.3, ptr %arrayidx.3, align 1
  tail call void @mutex_unlock(ptr noundef %audio_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bcm2835_spdif_default_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audio_mutex = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %audio_mutex, i32 noundef 0) #6
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 1
  %conv = zext i8 %3 to i32
  %arrayidx.1 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %5 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, 8
  %or.1 = or i32 %shl.1, %conv
  %arrayidx.2 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %7 to i32
  %shl.2 = shl nuw nsw i32 %conv.2, 16
  %or.2 = or i32 %shl.2, %or.1
  %arrayidx.3 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %9 to i32
  %shl.3 = shl nuw i32 %conv.3, 24
  %or.3 = or i32 %shl.3, %or.2
  %spdif_status = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %spdif_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spdif_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or.3, i32 %11)
  %cmp1 = icmp ne i32 %or.3, %11
  %conv2 = zext i1 %cmp1 to i32
  %12 = ptrtoint ptr %spdif_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.3, ptr %spdif_status, align 4
  tail call void @mutex_unlock(ptr noundef %audio_mutex) #6
  ret i32 %conv2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_bcm2835_spdif_mask_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_bcm2835_spdif_mask_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c", i32 227, i32 33}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c", i32 103, i32 11}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c", i32 113, i32 11}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c", i32 122, i32 11}
!8 = !{ptr @snd_bcm2835_ctl, !9, !"snd_bcm2835_ctl", i1 false, i1 false}
!9 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c", i32 100, i32 38}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c", i32 92, i32 4}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @snd_bcm2835_ctl_put._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @snd_bcm2835_ctl_put._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @snd_bcm2835_db_scale, !19, !"snd_bcm2835_db_scale", i1 false, i1 false}
!19 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c", i32 98, i32 8}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c", i32 196, i32 11}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c", i32 204, i32 11}
!24 = !{ptr @snd_bcm2835_spdif, !25, !"snd_bcm2835_spdif", i1 false, i1 false}
!25 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c", i32 193, i32 38}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c", i32 238, i32 11}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c", i32 251, i32 11}
!30 = !{ptr @snd_bcm2835_headphones_ctl, !31, !"snd_bcm2835_headphones_ctl", i1 false, i1 false}
!31 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c", i32 235, i32 38}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c", i32 272, i32 11}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c", i32 285, i32 11}
!36 = !{ptr @snd_bcm2835_hdmi, !37, !"snd_bcm2835_hdmi", i1 false, i1 false}
!37 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c", i32 269, i32 38}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
