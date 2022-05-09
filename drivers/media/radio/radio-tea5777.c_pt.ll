; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-tea5777.c_pt.bc'
source_filename = "../drivers/media/radio/radio-tea5777.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+radio_tea5777_init\22, \22a\22\09"
module asm "\09.weak\09__crc_radio_tea5777_init\09\09\09\09"
module asm "\09.long\09__crc_radio_tea5777_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radio_tea5777_init:\09\09\09\09\09"
module asm "\09.asciz \09\22radio_tea5777_init\22\09\09\09\09\09"
module asm "__kstrtabns_radio_tea5777_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+radio_tea5777_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_radio_tea5777_exit\09\09\09\09"
module asm "\09.long\09__crc_radio_tea5777_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radio_tea5777_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22radio_tea5777_exit\22\09\09\09\09\09"
module asm "__kstrtabns_radio_tea5777_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radio_tea5777 = type { ptr, %struct.v4l2_file_operations, %struct.video_device, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, %struct.mutex, ptr, ptr, [32 x i8], [32 x i8], %struct.v4l2_ctrl_handler }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.radio_tea5777_ops = type { ptr, ptr }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_hw_freq_seek = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author292 = internal constant [45 x i8] c"shark2.author=Hans de Goede <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [83 x i8] c"shark2.description=Routines for control of TEA5777 Philips AM/FM radio tuner chips\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"shark2.file=drivers/media/radio/shark2\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [19 x i8] c"shark2.license=GPL\00", section ".modinfo", align 1
@bands = internal constant { [2 x %struct.v4l2_frequency_band], [32 x i8] } { [2 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 1, i32 0, i32 3093, i32 1216000, i32 1728000, i32 4, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 1, i32 1, i32 3077, i32 8480, i32 27360, i32 8, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@radio_tea5777_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: can't set initial freq (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"radio_tea5777_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/radio/radio-tea5777.c\00", [60 x i8] zeroinitializer }, align 32
@radio_tea5777_init._entry_ptr = internal global ptr @radio_tea5777_init._entry, section ".printk_index", align 4
@tea575x_radio = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr null, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @tea575x_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@radio_tea5777_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&tea->mutex\00", [20 x i8] zeroinitializer }, align 32
@tea575x_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_ctrl_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @v4l2_fh_open, ptr @v4l2_fh_release }, [60 x i8] zeroinitializer }, align 32
@radio_tea5777_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"radio_tea5777:560:(&tea->ctrl_handler)->_lock\00", [50 x i8] zeroinitializer }, align 32
@tea575x_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @tea575x_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@radio_tea5777_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: can't initialize controls\0A\00", [63 x i8] zeroinitializer }, align 32
@radio_tea5777_init._entry_ptr.7 = internal global ptr @radio_tea5777_init._entry.5, section ".printk_index", align 4
@radio_tea5777_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: can't register video device!\0A\00", [60 x i8] zeroinitializer }, align 32
@radio_tea5777_init._entry_ptr.10 = internal global ptr @radio_tea5777_init._entry.8, section ".printk_index", align 4
@__kstrtab_radio_tea5777_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_radio_tea5777_init = external dso_local constant [0 x i8], align 1
@__ksymtab_radio_tea5777_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radio_tea5777_init to i32), ptr @__kstrtab_radio_tea5777_init, ptr @__kstrtabns_radio_tea5777_init }, section "___ksymtab_gpl+radio_tea5777_init", align 4
@__kstrtab_radio_tea5777_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_radio_tea5777_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_radio_tea5777_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radio_tea5777_exit to i32), ptr @__kstrtab_radio_tea5777_exit, ptr @__kstrtabns_radio_tea5777_exit }, section "___ksymtab_gpl+radio_tea5777_exit", align 4
@tea575x_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr @vidioc_enum_freq_bands, ptr null, ptr @v4l2_ctrl_log_status, ptr @vidioc_s_hw_freq_seek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" TEA5777\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AM/FM\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FM\00", [29 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"bands\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 138, i32 41 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 543, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"tea575x_radio\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 521, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 549, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"tea575x_fops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 501, i32 42 }
@___asan_gen_.43 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 560, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"tea575x_ctrl_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 526, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 565, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 573, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"tea575x_ioctl_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 508, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 261, i32 19 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 294, i32 20 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [39 x i8] c"../drivers/media/radio/radio-tea5777.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 296, i32 20 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_radio_tea5777_exit, ptr @__ksymtab_radio_tea5777_init, ptr @radio_tea5777_init._entry, ptr @radio_tea5777_init._entry.5, ptr @radio_tea5777_init._entry.8, ptr @radio_tea5777_init._entry_ptr, ptr @radio_tea5777_init._entry_ptr.10, ptr @radio_tea5777_init._entry_ptr.7, ptr @bands, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tea575x_radio, ptr @radio_tea5777_init.__key, ptr @.str.3, ptr @tea575x_fops, ptr @radio_tea5777_init._key, ptr @.str.4, ptr @tea575x_ctrl_ops, ptr @.str.6, ptr @.str.9, ptr @tea575x_ioctl_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bands to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_tea5777_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea575x_radio to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_tea5777_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea575x_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_tea5777_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea575x_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_tea5777_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_tea5777_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea575x_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radio_tea5777_set_freq(ptr noundef %tea) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %freq1 = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 7
  %0 = ptrtoint ptr %freq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freq1, align 8
  %band = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 6
  %2 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %band, align 4
  %rangelow = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %3, i32 4
  %4 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rangelow, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %1, i32 %5)
  %rangehigh = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %3, i32 5
  %7 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rangehigh, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %6, i32 %8)
  %add = add i32 %9, 8
  %div106 = lshr i32 %add, 4
  %10 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %write_reg = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 12
  %11 = ptrtoint ptr %write_reg to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %write_reg, align 8
  %sub = add nsw i32 %div106, -150
  %div11 = udiv i32 %sub, 50
  %and13 = and i64 %12, -105552042557441
  %conv = zext i32 %div11 to i64
  %shl = shl nuw nsw i64 %conv, 32
  %or = or i64 %and13, %shl
  store i64 %or, ptr %write_reg, align 8
  %audmode = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 8
  %13 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp21 = icmp eq i32 %14, 0
  br i1 %cmp21, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %or24 = or i64 %or, 32768
  %15 = ptrtoint ptr %write_reg to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %or24, ptr %write_reg, align 8
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %write_reg26 = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 12
  %16 = ptrtoint ptr %write_reg26 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %write_reg26, align 8
  %sub30 = add nsw i32 %div106, -21
  %or29 = and i64 %17, -105547781144577
  %conv34 = zext i32 %sub30 to i64
  %shl35 = shl i64 %conv34, 34
  %and33 = or i64 %shl35, %or29
  %or53 = or i64 %and33, 70371998957568
  store i64 %or53, ptr %write_reg26, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %freq.0 = phi i32 [ %div106, %entry.sw.epilog_crit_edge ], [ %sub30, %sw.bb25 ], [ %div11, %if.then ], [ %div11, %sw.bb.sw.epilog_crit_edge ]
  %ops = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 14
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %write_reg57 = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 12
  %22 = ptrtoint ptr %write_reg57 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %write_reg57, align 8
  %call = tail call i32 %21(ptr noundef %tea, i64 noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end59, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end59:                                         ; preds = %sw.epilog
  %needs_write = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 5
  %24 = ptrtoint ptr %needs_write to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %needs_write, align 2
  %read_reg = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 11
  %25 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %read_reg, align 8
  %26 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %band, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %27, label %if.end59.tea5777_freq_to_v4l2_freq.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

if.end59.tea5777_freq_to_v4l2_freq.exit_crit_edge: ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %tea5777_freq_to_v4l2_freq.exit

sw.bb.i:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = mul i32 %freq.0, 800
  %mul1.i = add i32 %add.i, 2400
  br label %tea5777_freq_to_v4l2_freq.exit

sw.bb2.i:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %add4.i = shl i32 %freq.0, 4
  %mul5.i = add i32 %add4.i, 336
  br label %tea5777_freq_to_v4l2_freq.exit

tea5777_freq_to_v4l2_freq.exit:                   ; preds = %sw.bb2.i, %sw.bb.i, %if.end59.tea5777_freq_to_v4l2_freq.exit_crit_edge
  %retval.0.i = phi i32 [ %mul5.i, %sw.bb2.i ], [ %mul1.i, %sw.bb.i ], [ 0, %if.end59.tea5777_freq_to_v4l2_freq.exit_crit_edge ]
  %29 = ptrtoint ptr %freq1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i, ptr %freq1, align 8
  br label %cleanup

cleanup:                                          ; preds = %tea5777_freq_to_v4l2_freq.exit, %sw.epilog.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radio_tea5777_init(ptr noundef %tea, ptr noundef %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write_reg = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 12
  %0 = ptrtoint ptr %write_reg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 822345736, ptr %write_reg, align 8
  %freq = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 7
  %1 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1448000, ptr %freq, align 8
  %audmode = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 8
  %2 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %audmode, align 4
  %call = tail call i32 @radio_tea5777_set_freq(ptr noundef %tea)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %tea to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tea, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %4, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %vd = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %vd, ptr @tea575x_radio, i32 1352)
  %driver_data.i.i = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 2, i32 5, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tea, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @radio_tea5777_init.__key) #5
  %name7 = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 2, i32 12
  %7 = ptrtoint ptr %tea to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tea, align 8
  %name10 = getelementptr inbounds %struct.v4l2_device, ptr %8, i32 0, i32 4
  %call12 = tail call i32 @strscpy(ptr noundef %name7, ptr noundef %name10, i32 noundef 32) #5
  %lock = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 2, i32 26
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mutex, ptr %lock, align 8
  %10 = ptrtoint ptr %tea to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tea, align 8
  %v4l2_dev17 = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 2, i32 7
  %12 = ptrtoint ptr %v4l2_dev17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %v4l2_dev17, align 4
  %device_caps = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 328704, ptr %device_caps, align 8
  %fops = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %fops, ptr @tea575x_fops, i32 36)
  %15 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %owner, ptr %fops, align 4
  %fops23 = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %fops23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %fops, ptr %fops23, align 4
  %ctrl_handler = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 18
  %ctrl_handler25 = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 2, i32 9
  %17 = ptrtoint ptr %ctrl_handler25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ctrl_handler, ptr %ctrl_handler25, align 4
  %call28 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 1, ptr noundef nonnull @radio_tea5777_init._key, ptr noundef nonnull @.str.4) #5
  %call30 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @tea575x_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #5
  %error = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 18, i32 9
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool32.not = icmp eq i32 %19, 0
  br i1 %tobool32.not, label %if.end43, label %do.end36

do.end36:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %tea to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tea, align 8
  %name39 = getelementptr inbounds %struct.v4l2_device, ptr %21, i32 0, i32 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name39) #8
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #5
  br label %cleanup

if.end43:                                         ; preds = %if.end
  %call45 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #5
  %22 = ptrtoint ptr %fops23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fops23, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vd, i32 noundef 2, i32 noundef -1, i32 noundef 1, ptr noundef %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool48.not = icmp eq i32 %call.i, 0
  br i1 %tobool48.not, label %if.end43.cleanup_crit_edge, label %do.end52

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end52:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %tea to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tea, align 8
  %name55 = getelementptr inbounds %struct.v4l2_device, ptr %27, i32 0, i32 4
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name55) #8
  %28 = ptrtoint ptr %ctrl_handler25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctrl_handler25, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %29) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.end43.cleanup_crit_edge, %do.end36, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %19, %do.end36 ], [ %call.i, %do.end52 ], [ 0, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radio_tea5777_exit(ptr noundef %tea) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vd = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 2
  tail call void @video_unregister_device(ptr noundef %vd) #5
  %ctrl_handler = getelementptr inbounds %struct.radio_tea5777, ptr %tea, i32 0, i32 2, i32 9
  %0 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #5
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %call2 = tail call i32 @strscpy(ptr noundef %v, ptr noundef %name, i32 noundef 16) #5
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 1
  %card4 = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 16
  %call6 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %card4, i32 noundef 32) #5
  %call9 = tail call i32 @strlcat(ptr noundef %card, ptr noundef nonnull @.str.11, i32 noundef 32) #5
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 2
  %bus_info11 = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 17
  %call13 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef %bus_info11, i32 noundef 32) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #5
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_reg.i = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_reg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not.i = icmp eq i32 %5, -1
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  %write_before_read.i = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %write_before_read.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_before_read.i, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i.if.end6.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %needs_write.i = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %needs_write.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %needs_write.i, align 2, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end6.i_crit_edge, label %if.then2.i

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then2.i:                                       ; preds = %land.lhs.true.i
  %call.i43 = tail call i32 @radio_tea5777_set_freq(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool3.not.i = icmp eq i32 %call.i43, 0
  br i1 %tobool3.not.i, label %if.then2.i.if.end6.i_crit_edge, label %if.then2.i.cleanup_crit_edge

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i.if.end6.i_crit_edge, %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %ops.i = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %read_reg15.i = getelementptr inbounds %struct.radio_tea5777_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %read_reg15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg15.i, align 4
  %call17.i = tail call i32 %13(ptr noundef %1, ptr noundef %read_reg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %needs_write21.i = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %needs_write21.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %needs_write21.i, align 2
  br label %if.end3

if.end3:                                          ; preds = %if.end20.i, %if.end.if.end3_crit_edge
  %15 = call ptr @memset(ptr %v, i32 0, i32 84)
  %has_am = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %has_am to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_am, align 8, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not = icmp eq i8 %17, 0
  %name7 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 1
  %.str.13..str.12 = select i1 %tobool4.not, ptr @.str.13, ptr @.str.12
  %call9 = tail call i32 @strscpy(ptr noundef %name7, ptr noundef nonnull %.str.13..str.12, i32 noundef 32) #5
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 2
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 3
  %19 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3093, ptr %capability, align 4
  %20 = ptrtoint ptr %has_am to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %has_am, align 8, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool12.not = icmp eq i8 %21, 0
  %. = select i1 %tobool12.not, i32 1216000, i32 8480
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 4
  %22 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %., ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 5
  %23 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1728000, ptr %rangehigh, align 4
  %band = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp13 = icmp eq i32 %25, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end3.if.else16_crit_edge

if.end3.if.else16_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else16

land.lhs.true:                                    ; preds = %if.end3
  %26 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %read_reg.i, align 8
  %and = and i32 %27, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %land.lhs.true.if.else16_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true.if.else16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else16

if.else16:                                        ; preds = %land.lhs.true.if.else16_crit_edge, %if.end3.if.else16_crit_edge
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %land.lhs.true.if.end18_crit_edge
  %.sink = phi i32 [ 1, %if.else16 ], [ 2, %land.lhs.true.if.end18_crit_edge ]
  %rxsubchans17 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 6
  %28 = ptrtoint ptr %rxsubchans17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %rxsubchans17, align 4
  %audmode = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %audmode, align 4
  %audmode19 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 7
  %31 = ptrtoint ptr %audmode19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %audmode19, align 4
  %32 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %read_reg.i, align 8
  %and21 = lshr i32 %33, 5
  %shr = and i32 %and21, 61440
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 8
  %34 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr, ptr %signal, align 4
  store i32 -1, ptr %read_reg.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end6.i.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i43, %if.then2.i.cleanup_crit_edge ], [ %call17.i, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #5
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %audmode = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audmode, align 4
  %audmode1 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 7
  %6 = ptrtoint ptr %audmode1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audmode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp8.not = icmp eq i32 %5, %9
  br i1 %cmp8.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %band = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9 = icmp eq i32 %12, 0
  br i1 %cmp9, label %if.then10, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 @radio_tea5777_set_freq(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then10 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #5
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %freq = getelementptr inbounds %struct.radio_tea5777, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %freq, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %7 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #5
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.not = icmp eq i32 %5, 1
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %has_am = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %has_am to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_am, align 8, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %8 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320000, i32 %9)
  %cmp2 = icmp ult i32 %9, 320000
  br i1 %cmp2, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %if.end5

if.end5:                                          ; preds = %if.else, %land.lhs.true.if.end5_crit_edge
  %.sink = phi i32 [ 0, %if.else ], [ 1, %land.lhs.true.if.end5_crit_edge ]
  %band4 = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %band4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %band4, align 4
  %frequency6 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %11 = ptrtoint ptr %frequency6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frequency6, align 4
  %freq = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %freq, align 8
  %call7 = tail call i32 @radio_tea5777_set_freq(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_freq_bands(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %band) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #5
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp ugt i32 %5, 1
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %has_am = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %has_am to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_am, align 8, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp4 = icmp eq i32 %5, 1
  %or.cond = select i1 %tobool.not, i1 %cmp4, i1 false
  br i1 %or.cond, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %5
  %8 = call ptr @memcpy(ptr %band, ptr %arrayidx, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_hw_freq_seek(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #5
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %rangelow1 = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %a, i32 0, i32 5
  %2 = ptrtoint ptr %rangelow1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rangelow1, align 4
  %rangehigh2 = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %a, i32 0, i32 6
  %4 = ptrtoint ptr %rangehigh2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rangehigh2, align 4
  %6 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %wrap_around = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %a, i32 0, i32 3
  %8 = ptrtoint ptr %wrap_around to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wrap_around, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %10 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_flags, align 4
  %and = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  %or.cond = select i1 %tobool7.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %if.else, label %if.end14

if.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1216000, i32 %3)
  %cmp16.not = icmp ugt i32 %3, 1216000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1728000, i32 %5)
  %cmp20.not = icmp ult i32 %5, 1728000
  %or.cond239 = select i1 %cmp16.not, i1 true, i1 %cmp20.not
  br i1 %or.cond239, label %land.lhs.true.1, label %if.end14.if.end25_crit_edge

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

land.lhs.true.1:                                  ; preds = %if.end14
  %has_am = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %has_am to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_am, align 8, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not.1 = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8480, i32 %3)
  %cmp16.not.1 = icmp ugt i32 %3, 8480
  %or.cond240 = select i1 %tobool12.not.1, i1 true, i1 %cmp16.not.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 27360, i32 %5)
  %cmp20.not.1 = icmp ult i32 %5, 27360
  %or.cond241 = select i1 %or.cond240, i1 true, i1 %cmp20.not.1
  br i1 %or.cond241, label %land.lhs.true.1.cleanup_crit_edge, label %land.lhs.true.1.if.end25_crit_edge

land.lhs.true.1.if.end25_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.1.if.end25_crit_edge, %if.end14.if.end25_crit_edge
  %i.0229.lcssa = phi i32 [ 0, %if.end14.if.end25_crit_edge ], [ 1, %land.lhs.true.1.if.end25_crit_edge ]
  %band = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i.0229.lcssa, ptr %band, align 4
  %freq = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %freq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %3)
  %cmp26 = icmp ult i32 %16, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %5)
  %cmp29 = icmp ugt i32 %16, %5
  %or.cond221 = select i1 %cmp26, i1 true, i1 %cmp29
  br i1 %or.cond221, label %if.then30, label %if.end25.if.end51_crit_edge

if.end25.if.end51_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then30:                                        ; preds = %if.end25
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 %3)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %5)
  %19 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %freq, align 8
  %call40 = tail call i32 @radio_tea5777_set_freq(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then30.if.end51_crit_edge, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then30.if.end51_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %band45 = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %band45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %band45, align 4
  %rangelow47 = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %21, i32 4
  %22 = ptrtoint ptr %rangelow47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rangelow47, align 4
  %rangehigh50 = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %21, i32 5
  %24 = ptrtoint ptr %rangehigh50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rangehigh50, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then30.if.end51_crit_edge, %if.end25.if.end51_crit_edge
  %rangelow.0 = phi i32 [ %3, %if.then30.if.end51_crit_edge ], [ %23, %if.else ], [ %3, %if.end25.if.end51_crit_edge ]
  %rangehigh.0 = phi i32 [ %5, %if.then30.if.end51_crit_edge ], [ %25, %if.else ], [ %5, %if.end25.if.end51_crit_edge ]
  %band52 = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %band52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %band52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp53 = icmp eq i32 %27, 1
  %cond54 = select i1 %cmp53, i32 80, i32 3200
  %freq55 = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %freq55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %freq55, align 8
  %write_reg = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %write_reg to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %write_reg, align 8
  %or = or i64 %31, 64
  store i64 %or, ptr %write_reg, align 8
  %seek_rangelow = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %seek_rangelow to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %seek_rangelow, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %rangelow.0)
  %cmp56.not = icmp eq i32 %33, %rangelow.0
  br i1 %cmp56.not, label %if.end51.if.end66_crit_edge, label %if.then57

if.end51.if.end66_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then57:                                        ; preds = %if.end51
  %and59 = and i64 %or, -33
  %34 = ptrtoint ptr %write_reg to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %and59, ptr %write_reg, align 8
  %35 = ptrtoint ptr %freq55 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %rangelow.0, ptr %freq55, align 8
  %call61 = tail call i32 @radio_tea5777_set_freq(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.then57.leave_crit_edge

if.then57.leave_crit_edge:                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave

if.end64:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %seek_rangelow to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %rangelow.0, ptr %seek_rangelow, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.end64, %if.end51.if.end66_crit_edge
  %seek_rangehigh = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 10
  %37 = ptrtoint ptr %seek_rangehigh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %seek_rangehigh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %rangehigh.0)
  %cmp67.not = icmp eq i32 %38, %rangehigh.0
  br i1 %cmp67.not, label %if.end66.if.end77_crit_edge, label %if.then68

if.end66.if.end77_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.then68:                                        ; preds = %if.end66
  %39 = ptrtoint ptr %write_reg to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %write_reg, align 8
  %or70 = or i64 %40, 32
  store i64 %or70, ptr %write_reg, align 8
  %41 = ptrtoint ptr %freq55 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %rangehigh.0, ptr %freq55, align 8
  %call72 = tail call i32 @radio_tea5777_set_freq(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.then68.leave_crit_edge

if.then68.leave_crit_edge:                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave

if.end75:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %seek_rangehigh to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %rangehigh.0, ptr %seek_rangehigh, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end75, %if.end66.if.end77_crit_edge
  %43 = ptrtoint ptr %write_reg to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %write_reg, align 8
  %and79 = and i64 %44, -193
  %or81 = or i64 %and79, 128
  store i64 %or81, ptr %write_reg, align 8
  %seek_upward = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %a, i32 0, i32 2
  %45 = ptrtoint ptr %seek_upward to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %seek_upward, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool82.not = icmp eq i32 %46, 0
  br i1 %tobool82.not, label %if.else87, label %if.then83

if.then83:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %or85 = or i64 %and79, 160
  %47 = ptrtoint ptr %write_reg to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %or85, ptr %write_reg, align 8
  %add = add i32 %cond54, %29
  br label %if.end91

if.else87:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %and89 = and i64 %or81, -97
  %48 = ptrtoint ptr %write_reg to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %and89, ptr %write_reg, align 8
  %sub = sub i32 %29, %cond54
  br label %if.end91

if.end91:                                         ; preds = %if.else87, %if.then83
  %storemerge = phi i32 [ %sub, %if.else87 ], [ %add, %if.then83 ]
  %49 = ptrtoint ptr %freq55 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %storemerge, ptr %freq55, align 8
  %call92 = tail call i32 @radio_tea5777_set_freq(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end91.leave_crit_edge

if.end91.leave_crit_edge:                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave

if.end95:                                         ; preds = %if.end91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %add97 = add i32 %50, 500
  %51 = load volatile i32, ptr @jiffies, align 128
  %sub99232 = sub i32 %add97, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub99232)
  %cmp100233 = icmp slt i32 %sub99232, 0
  br i1 %cmp100233, label %if.end95.leave_crit_edge, label %if.end102.lr.ph

if.end95.leave_crit_edge:                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave

if.end102.lr.ph:                                  ; preds = %if.end95
  %read_reg.i = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 11
  %write_before_read.i = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 4
  %needs_write.i = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 5
  %ops.i = getelementptr inbounds %struct.radio_tea5777, ptr %1, i32 0, i32 14
  %52 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr = load i32, ptr %read_reg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %phi.cmp = icmp eq i32 %.pr, -1
  br i1 %phi.cmp, label %if.end102.lr.ph.if.end.i_crit_edge, label %if.end102.lr.ph.if.end106_crit_edge

if.end102.lr.ph.if.end106_crit_edge:              ; preds = %if.end102.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

if.end102.lr.ph.if.end.i_crit_edge:               ; preds = %if.end102.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.end123.if.end.i_crit_edge, %if.end102.lr.ph.if.end.i_crit_edge
  %53 = ptrtoint ptr %write_before_read.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %write_before_read.i, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i, label %if.end.i.if.end6.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %55 = ptrtoint ptr %needs_write.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %needs_write.i, align 2, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool1.not.i = icmp eq i8 %56, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end6.i_crit_edge, label %if.then2.i

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then2.i:                                       ; preds = %land.lhs.true.i
  %call.i222 = tail call i32 @radio_tea5777_set_freq(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %tobool3.not.i = icmp eq i32 %call.i222, 0
  br i1 %tobool3.not.i, label %if.then2.i.if.end6.i_crit_edge, label %if.then2.i.leave_crit_edge

if.then2.i.leave_crit_edge:                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i.if.end6.i_crit_edge, %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %call10.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end14.i, label %if.end6.i.leave_crit_edge

if.end6.i.leave_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave

if.end14.i:                                       ; preds = %if.end6.i
  %57 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i, align 4
  %read_reg15.i = getelementptr inbounds %struct.radio_tea5777_ops, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %read_reg15.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_reg15.i, align 4
  %call17.i = tail call i32 %60(ptr noundef %1, ptr noundef %read_reg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.leave_crit_edge

if.end14.i.leave_crit_edge:                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave

if.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %needs_write.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %needs_write.i, align 2
  br label %if.end106

if.end106:                                        ; preds = %if.end20.i, %if.end102.lr.ph.if.end106_crit_edge
  %62 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %read_reg.i, align 8
  %and107 = and i32 %63, 8191
  %64 = ptrtoint ptr %band52 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %band52, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %65, label %if.end106.tea5777_freq_to_v4l2_freq.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

if.end106.tea5777_freq_to_v4l2_freq.exit_crit_edge: ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %tea5777_freq_to_v4l2_freq.exit

sw.bb.i:                                          ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = mul nuw nsw i32 %and107, 800
  %mul1.i = add nuw nsw i32 %add.i, 2400
  br label %tea5777_freq_to_v4l2_freq.exit

sw.bb2.i:                                         ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  %add4.i = shl nuw nsw i32 %and107, 4
  %mul5.i = add nuw nsw i32 %add4.i, 336
  br label %tea5777_freq_to_v4l2_freq.exit

tea5777_freq_to_v4l2_freq.exit:                   ; preds = %sw.bb2.i, %sw.bb.i, %if.end106.tea5777_freq_to_v4l2_freq.exit_crit_edge
  %retval.0.i223 = phi i32 [ %mul5.i, %sw.bb2.i ], [ %mul1.i, %sw.bb.i ], [ 0, %if.end106.tea5777_freq_to_v4l2_freq.exit_crit_edge ]
  %67 = ptrtoint ptr %freq55 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %retval.0.i223, ptr %freq55, align 8
  %and113 = and i32 %63, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end118, label %if.then115

if.then115:                                       ; preds = %tea5777_freq_to_v4l2_freq.exit
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %write_reg to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %write_reg, align 8
  %and117 = and i64 %69, -129
  store i64 %and117, ptr %write_reg, align 8
  br label %cleanup

if.end118:                                        ; preds = %tea5777_freq_to_v4l2_freq.exit
  %and120 = and i32 %63, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end123, label %if.end118.leave_crit_edge

if.end118.leave_crit_edge:                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave

if.end123:                                        ; preds = %if.end118
  %70 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %read_reg.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %sub99 = sub i32 %add97, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub99)
  %cmp100 = icmp slt i32 %sub99, 0
  br i1 %cmp100, label %if.end123.leave_crit_edge, label %if.end123.if.end.i_crit_edge

if.end123.if.end.i_crit_edge:                     ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end123.leave_crit_edge:                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave

leave:                                            ; preds = %if.end123.leave_crit_edge, %if.end118.leave_crit_edge, %if.end14.i.leave_crit_edge, %if.end6.i.leave_crit_edge, %if.then2.i.leave_crit_edge, %if.end95.leave_crit_edge, %if.end91.leave_crit_edge, %if.then68.leave_crit_edge, %if.then57.leave_crit_edge
  %res.0 = phi i32 [ %call61, %if.then57.leave_crit_edge ], [ %call72, %if.then68.leave_crit_edge ], [ %call92, %if.end91.leave_crit_edge ], [ -61, %if.end95.leave_crit_edge ], [ %call17.i, %if.end14.i.leave_crit_edge ], [ -512, %if.end6.i.leave_crit_edge ], [ %call.i222, %if.then2.i.leave_crit_edge ], [ -61, %if.end118.leave_crit_edge ], [ -61, %if.end123.leave_crit_edge ]
  %72 = ptrtoint ptr %write_reg to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %write_reg, align 8
  %and129 = and i64 %73, -193
  store i64 %and129, ptr %write_reg, align 8
  %74 = ptrtoint ptr %freq55 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %29, ptr %freq55, align 8
  %call131 = tail call i32 @radio_tea5777_set_freq(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %leave, %if.then115, %if.then30.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %leave ], [ 0, %if.then115 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ], [ %call40, %if.then30.cleanup_crit_edge ], [ -22, %land.lhs.true.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tea575x_s_ctrl(ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963785, i32 %1)
  %cond = icmp eq i32 %1, 9963785
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -1596
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %c, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %write_reg1 = getelementptr i8, ptr %3, i32 -172
  %6 = ptrtoint ptr %write_reg1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %write_reg1, align 8
  %and = and i64 %7, -140737488355329
  %masksel = select i1 %tobool.not, i64 0, i64 140737488355328
  %and.sink = or i64 %and, %masksel
  store i64 %and.sink, ptr %write_reg1, align 8
  %call = tail call i32 @radio_tea5777_set_freq(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__UNIQUE_ID_author292, !1, !"__UNIQUE_ID_author292", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-tea5777.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_description293, !3, !"__UNIQUE_ID_description293", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-tea5777.c", i32 25, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/radio-tea5777.c", i32 26, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-tea5777.c", i32 543, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @radio_tea5777_init._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @radio_tea5777_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @radio_tea5777_init.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/radio-tea5777.c", i32 549, i32 2}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @radio_tea5777_init._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/media/radio/radio-tea5777.c", i32 560, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/radio/radio-tea5777.c", i32 565, i32 3}
!21 = !{ptr @radio_tea5777_init._entry.5, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @radio_tea5777_init._entry_ptr.7, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/radio/radio-tea5777.c", i32 573, i32 3}
!25 = !{ptr @radio_tea5777_init._entry.8, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @radio_tea5777_init._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_radio_tea5777_init, !28, !"__ksymtab_radio_tea5777_init", i1 false, i1 false}
!28 = !{!"../drivers/media/radio/radio-tea5777.c", i32 580, i32 1}
!29 = !{ptr @__ksymtab_radio_tea5777_exit, !30, !"__ksymtab_radio_tea5777_exit", i1 false, i1 false}
!30 = !{!"../drivers/media/radio/radio-tea5777.c", i32 587, i32 1}
!31 = !{ptr @bands, !32, !"bands", i1 false, i1 false}
!32 = !{!"../drivers/media/radio/radio-tea5777.c", i32 138, i32 41}
!33 = !{ptr @tea575x_radio, !34, !"tea575x_radio", i1 false, i1 false}
!34 = !{!"../drivers/media/radio/radio-tea5777.c", i32 521, i32 34}
!35 = !{ptr @tea575x_ioctl_ops, !36, !"tea575x_ioctl_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/radio/radio-tea5777.c", i32 508, i32 36}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/radio/radio-tea5777.c", i32 261, i32 19}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/radio/radio-tea5777.c", i32 294, i32 20}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/radio/radio-tea5777.c", i32 296, i32 20}
!43 = !{ptr @tea575x_fops, !44, !"tea575x_fops", i1 false, i1 false}
!44 = !{!"../drivers/media/radio/radio-tea5777.c", i32 501, i32 42}
!45 = !{ptr @tea575x_ctrl_ops, !46, !"tea575x_ctrl_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/radio/radio-tea5777.c", i32 526, i32 35}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i8 0, i8 2}
