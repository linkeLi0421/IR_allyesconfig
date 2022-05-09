; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-isa.c_pt.bc'
source_filename = "../drivers/media/radio/radio-isa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+radio_isa_match\22, \22a\22\09"
module asm "\09.weak\09__crc_radio_isa_match\09\09\09\09"
module asm "\09.long\09__crc_radio_isa_match\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radio_isa_match:\09\09\09\09\09"
module asm "\09.asciz \09\22radio_isa_match\22\09\09\09\09\09"
module asm "__kstrtabns_radio_isa_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+radio_isa_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_radio_isa_probe\09\09\09\09"
module asm "\09.long\09__crc_radio_isa_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radio_isa_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22radio_isa_probe\22\09\09\09\09\09"
module asm "__kstrtabns_radio_isa_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+radio_isa_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_radio_isa_remove\09\09\09\09"
module asm "\09.long\09__crc_radio_isa_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radio_isa_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22radio_isa_remove\22\09\09\09\09\09"
module asm "__kstrtabns_radio_isa_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.radio_isa_driver = type { %struct.isa_driver, ptr, ptr, ptr, i8, ptr, i32, i32, ptr, i8, i32 }
%struct.isa_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radio_isa_card = type { ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.mutex, ptr, %struct.anon.117, i32, i8, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.anon.117 = type { ptr, ptr }
%struct.radio_isa_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@__UNIQUE_ID_author292 = internal constant [30 x i8] c"radio_isa.author=Hans Verkuil\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [57 x i8] c"radio_isa.description=A framework for ISA radio drivers.\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [45 x i8] c"radio_isa.file=drivers/media/radio/radio-isa\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [22 x i8] c"radio_isa.license=GPL\00", section ".modinfo", align 1
@__kstrtab_radio_isa_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_radio_isa_match = external dso_local constant [0 x i8], align 1
@__ksymtab_radio_isa_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radio_isa_match to i32), ptr @__kstrtab_radio_isa_match, ptr @__kstrtabns_radio_isa_match }, section "___ksymtab_gpl+radio_isa_match", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@radio_isa_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: you must set an I/O address with io=0x%03x\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radio_isa_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/radio/radio-isa.c\00", [32 x i8] zeroinitializer }, align 32
@radio_isa_probe._entry_ptr = internal global ptr @radio_isa_probe._entry, section ".printk_index", align 4
@radio_isa_probe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c/0x%03x\00", [22 x i8] zeroinitializer }, align 32
@radio_isa_probe._entry_ptr.5 = internal global ptr @radio_isa_probe._entry.3, section ".printk_index", align 4
@radio_isa_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c.\0A\00", [27 x i8] zeroinitializer }, align 32
@radio_isa_probe._entry_ptr.8 = internal global ptr @radio_isa_probe._entry.6, section ".printk_index", align 4
@__kstrtab_radio_isa_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_radio_isa_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_radio_isa_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radio_isa_probe to i32), ptr @__kstrtab_radio_isa_probe, ptr @__kstrtabns_radio_isa_probe }, section "___ksymtab_gpl+radio_isa_probe", align 4
@__kstrtab_radio_isa_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_radio_isa_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_radio_isa_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radio_isa_remove to i32), ptr @__kstrtab_radio_isa_remove, ptr @__kstrtabns_radio_isa_remove }, section "___ksymtab_gpl+radio_isa_remove", align 4
@radio_isa_common_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: port 0x%x already in use\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"radio_isa_common_probe\00", [41 x i8] zeroinitializer }, align 32
@radio_isa_common_probe._entry_ptr = internal global ptr @radio_isa_common_probe._entry, section ".printk_index", align 4
@radio_isa_common_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Could not register v4l2_device\0A\00", [58 x i8] zeroinitializer }, align 32
@radio_isa_common_probe._entry_ptr.13 = internal global ptr @radio_isa_common_probe._entry.11, section ".printk_index", align 4
@radio_isa_common_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"radio_isa:216:(&isa->hdl)->_lock\00", [63 x i8] zeroinitializer }, align 32
@radio_isa_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @radio_isa_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@radio_isa_common_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Could not register controls\0A\00", [61 x i8] zeroinitializer }, align 32
@radio_isa_common_probe._entry_ptr.17 = internal global ptr @radio_isa_common_probe._entry.15, section ".printk_index", align 4
@radio_isa_common_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&isa->lock\00", [21 x i8] zeroinitializer }, align 32
@radio_isa_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_ctrl_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @v4l2_fh_open, ptr @v4l2_fh_release }, [60 x i8] zeroinitializer }, align 32
@radio_isa_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @radio_isa_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @radio_isa_g_tuner, ptr @radio_isa_s_tuner, ptr @radio_isa_g_frequency, ptr @radio_isa_s_frequency, ptr null, ptr null, ptr @radio_isa_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@radio_isa_common_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: Could not setup card\0A\00", [36 x i8] zeroinitializer }, align 32
@radio_isa_common_probe._entry_ptr.21 = internal global ptr @radio_isa_common_probe._entry.19, section ".printk_index", align 4
@radio_isa_common_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Could not register device node\0A\00", [58 x i8] zeroinitializer }, align 32
@radio_isa_common_probe._entry_ptr.24 = internal global ptr @radio_isa_common_probe._entry.22, section ".printk_index", align 4
@radio_isa_common_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.10, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s: Initialized radio card %s on port 0x%03x\0A\00", [48 x i8] zeroinitializer }, align 32
@radio_isa_common_probe._entry_ptr.27 = internal global ptr @radio_isa_common_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ISA:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FM\00", [29 x i8] zeroinitializer }, align 32
@radio_isa_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: I/O Port = 0x%03x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"radio_isa_log_status\00", [43 x i8] zeroinitializer }, align 32
@radio_isa_log_status._entry_ptr = internal global ptr @radio_isa_log_status._entry, section ".printk_index", align 4
@radio_isa_common_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Removed radio card %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"radio_isa_common_remove\00", [40 x i8] zeroinitializer }, align 32
@radio_isa_common_remove._entry_ptr = internal global ptr @radio_isa_common_remove._entry, section ".printk_index", align 4
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 326, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 329, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 330, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 205, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 212, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 216, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"radio_isa_ctrl_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 138, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 226, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 233, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"radio_isa_fops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 142, i32 42 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"radio_isa_ioctl_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 150, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 254, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 260, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 264, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 39, i32 45 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 52, i32 19 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 133, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [35 x i8] c"../drivers/media/radio/radio-isa.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 286, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_radio_isa_match, ptr @__ksymtab_radio_isa_probe, ptr @__ksymtab_radio_isa_remove, ptr @radio_isa_common_probe._entry, ptr @radio_isa_common_probe._entry.11, ptr @radio_isa_common_probe._entry.15, ptr @radio_isa_common_probe._entry.19, ptr @radio_isa_common_probe._entry.22, ptr @radio_isa_common_probe._entry.25, ptr @radio_isa_common_probe._entry_ptr, ptr @radio_isa_common_probe._entry_ptr.13, ptr @radio_isa_common_probe._entry_ptr.17, ptr @radio_isa_common_probe._entry_ptr.21, ptr @radio_isa_common_probe._entry_ptr.24, ptr @radio_isa_common_probe._entry_ptr.27, ptr @radio_isa_common_remove._entry, ptr @radio_isa_common_remove._entry_ptr, ptr @radio_isa_log_status._entry, ptr @radio_isa_log_status._entry_ptr, ptr @radio_isa_probe._entry, ptr @radio_isa_probe._entry.3, ptr @radio_isa_probe._entry.6, ptr @radio_isa_probe._entry_ptr, ptr @radio_isa_probe._entry_ptr.5, ptr @radio_isa_probe._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @radio_isa_common_probe._key, ptr @.str.14, ptr @radio_isa_ctrl_ops, ptr @.str.16, ptr @radio_isa_common_probe.__key, ptr @.str.18, ptr @radio_isa_fops, ptr @radio_isa_ioctl_ops, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_isa_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_isa_probe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_isa_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_isa_common_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_isa_common_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_isa_common_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_isa_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_isa_common_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_isa_common_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_isa_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_isa_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_isa_common_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_isa_common_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_isa_common_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_isa_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_isa_common_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @radio_isa_match(ptr nocapture noundef readonly %pdev, i32 noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %probe = getelementptr inbounds %struct.radio_isa_driver, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %probe to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %probe, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %io_params = getelementptr inbounds %struct.radio_isa_driver, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %io_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_params, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %dev
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = xor i32 %7, -1
  %.lobit.not = lshr i32 %8, 31
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %9 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %.lobit.not, %lor.rhs ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radio_isa_probe(ptr noundef %pdev, i32 noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %ops1 = getelementptr inbounds %struct.radio_isa_driver, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call ptr %5() #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup61_crit_edge, label %if.end.i

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

if.end.i:                                         ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %pdev, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %call.i, align 8
  %name.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 1, i32 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %pdev, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.end.i.if.end_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.end.i.if.end_crit_edge ]
  %call4.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef %retval.0.i.i, i32 noundef 36) #6
  %io_params = getelementptr inbounds %struct.radio_isa_driver, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %io_params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_params, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %dev
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %io = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %io, align 8
  %probe = getelementptr inbounds %struct.radio_isa_driver, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %probe to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %probe, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not = icmp eq i8 %18, 0
  br i1 %tobool3.not, label %if.end.if.end23_crit_edge, label %land.lhs.true

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %probe4 = getelementptr inbounds %struct.radio_isa_ops, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %probe4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %probe4, align 4
  %tobool5.not = icmp eq ptr %20, null
  br i1 %tobool5.not, label %land.lhs.true.if.end23thread-pre-split_crit_edge, label %for.cond.preheader

land.lhs.true.if.end23thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23thread-pre-split

for.cond.preheader:                               ; preds = %land.lhs.true
  %num_of_io_ports = getelementptr inbounds %struct.radio_isa_driver, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %num_of_io_ports to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_of_io_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp108 = icmp sgt i32 %22, 0
  br i1 %cmp108, label %for.body.lr.ph, label %for.cond.preheader.if.end23thread-pre-split_crit_edge

for.cond.preheader.if.end23thread-pre-split_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23thread-pre-split

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %io_ports = getelementptr inbounds %struct.radio_isa_driver, ptr %1, i32 0, i32 5
  %region_size = getelementptr inbounds %struct.radio_isa_driver, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %23 = ptrtoint ptr %io_ports to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_ports, align 4
  %arrayidx8 = getelementptr i32, ptr %24, i32 %i.0109
  %25 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx8, align 4
  %27 = ptrtoint ptr %region_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %region_size, align 4
  %call9 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %26, i32 noundef %28, ptr noundef %name.i, i32 noundef 0) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then11:                                        ; preds = %for.body
  %29 = ptrtoint ptr %probe4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %probe4, align 4
  %call13 = tail call zeroext i1 %30(ptr noundef nonnull %call.i, i32 noundef %26) #6
  %31 = ptrtoint ptr %region_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %region_size, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %26, i32 noundef %32) #6
  br i1 %call13, label %cleanup20, label %if.then11.for.inc_crit_edge

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup20:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %26, ptr %io, align 8
  br label %if.end23

for.inc:                                          ; preds = %if.then11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0109, 1
  %34 = ptrtoint ptr %num_of_io_ports to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_of_io_ports, align 4
  %cmp = icmp slt i32 %inc, %35
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end23thread-pre-split_crit_edge

for.inc.if.end23thread-pre-split_crit_edge:       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23thread-pre-split

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end23thread-pre-split:                         ; preds = %for.inc.if.end23thread-pre-split_crit_edge, %for.cond.preheader.if.end23thread-pre-split_crit_edge, %land.lhs.true.if.end23thread-pre-split_crit_edge
  %36 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load i32, ptr %io, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.end23thread-pre-split, %cleanup20, %if.end.if.end23_crit_edge
  %37 = phi i32 [ %.pr, %if.end23thread-pre-split ], [ %26, %cleanup20 ], [ %15, %if.end.if.end23_crit_edge ]
  %num_of_io_ports.i = getelementptr inbounds %struct.radio_isa_driver, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %num_of_io_ports.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_of_io_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp5.i = icmp sgt i32 %39, 0
  br i1 %cmp5.i, label %for.body.lr.ph.i, label %if.end23.if.then26_crit_edge

if.end23.if.then26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

for.body.lr.ph.i:                                 ; preds = %if.end23
  %io_ports.i = getelementptr inbounds %struct.radio_isa_driver, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %io_ports.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_ports.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %37)
  %cmp1.i110 = icmp eq i32 %43, %37
  br i1 %cmp1.i110, label %for.body.lr.ph.i.if.end57_crit_edge, label %for.body.lr.ph.i.for.cond.i_crit_edge

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.body.lr.ph.i.if.end57_crit_edge:              ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.06.i111 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.06.i111, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %39)
  %exitcond.not.i = icmp eq i32 %inc.i, %39
  br i1 %exitcond.not.i, label %for.cond.i.radio_isa_valid_io.exit_crit_edge, label %for.body.i

for.cond.i.radio_isa_valid_io.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radio_isa_valid_io.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr i32, ptr %41, i32 %inc.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq i32 %45, %37
  br i1 %cmp1.i, label %for.body.i.radio_isa_valid_io.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.body.i.radio_isa_valid_io.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radio_isa_valid_io.exit

radio_isa_valid_io.exit:                          ; preds = %for.body.i.radio_isa_valid_io.exit_crit_edge, %for.cond.i.radio_isa_valid_io.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %39)
  %cmp.i.le = icmp slt i32 %inc.i, %39
  br i1 %cmp.i.le, label %radio_isa_valid_io.exit.if.end57_crit_edge, label %radio_isa_valid_io.exit.if.then26_crit_edge

radio_isa_valid_io.exit.if.then26_crit_edge:      ; preds = %radio_isa_valid_io.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

radio_isa_valid_io.exit.if.end57_crit_edge:       ; preds = %radio_isa_valid_io.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then26:                                        ; preds = %radio_isa_valid_io.exit.if.then26_crit_edge, %if.end23.if.then26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp29 = icmp slt i32 %37, 0
  br i1 %cmp29, label %if.then26.cleanup61_crit_edge, label %do.end

if.then26.cleanup61_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

do.end:                                           ; preds = %if.then26
  %io_ports34 = getelementptr inbounds %struct.radio_isa_driver, ptr %1, i32 0, i32 5
  %46 = ptrtoint ptr %io_ports34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_ports34, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef %49) #9
  %50 = ptrtoint ptr %num_of_io_ports.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_of_io_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp39113 = icmp sgt i32 %51, 1
  br i1 %cmp39113, label %do.end.do.end43_crit_edge, label %do.end.do.end53_crit_edge

do.end.do.end53_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end53

do.end.do.end43_crit_edge:                        ; preds = %do.end
  br label %do.end43

do.end43:                                         ; preds = %do.end43.do.end43_crit_edge, %do.end.do.end43_crit_edge
  %i27.0114 = phi i32 [ %inc49, %do.end43.do.end43_crit_edge ], [ 1, %do.end.do.end43_crit_edge ]
  %52 = ptrtoint ptr %io_ports34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io_ports34, align 4
  %arrayidx46 = getelementptr i32, ptr %53, i32 %i27.0114
  %54 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx46, align 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %55) #9
  %inc49 = add nuw nsw i32 %i27.0114, 1
  %56 = ptrtoint ptr %num_of_io_ports.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_of_io_ports.i, align 4
  %cmp39 = icmp slt i32 %inc49, %57
  br i1 %cmp39, label %do.end43.do.end43_crit_edge, label %do.end43.do.end53_crit_edge

do.end43.do.end53_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end53

do.end43.do.end43_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

do.end53:                                         ; preds = %do.end43.do.end53_crit_edge, %do.end.do.end53_crit_edge
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  tail call void @kfree(ptr noundef nonnull %call.i) #6
  br label %cleanup61

if.end57:                                         ; preds = %radio_isa_valid_io.exit.if.end57_crit_edge, %for.body.lr.ph.i.if.end57_crit_edge
  %radio_nr_params = getelementptr inbounds %struct.radio_isa_driver, ptr %1, i32 0, i32 3
  %58 = ptrtoint ptr %radio_nr_params to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %radio_nr_params, align 4
  %arrayidx58 = getelementptr i32, ptr %59, i32 %dev
  %60 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx58, align 4
  %region_size59 = getelementptr inbounds %struct.radio_isa_driver, ptr %1, i32 0, i32 7
  %62 = ptrtoint ptr %region_size59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %region_size59, align 4
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 8
  %ops2.i = getelementptr inbounds %struct.radio_isa_driver, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %ops2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops2.i, align 4
  %v4l2_dev3.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 1
  %call.i100 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %37, i32 noundef %63, ptr noundef %name.i, i32 noundef 0) #6
  %tobool.not.i101 = icmp eq ptr %call.i100, null
  br i1 %tobool.not.i101, label %do.end.i, label %if.end.i103

do.end.i:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %io, align 8
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name.i, i32 noundef %69) #9
  tail call void @kfree(ptr noundef %call.i) #6
  br label %cleanup61

if.end.i103:                                      ; preds = %if.end57
  %call8.i = tail call i32 @v4l2_device_register(ptr noundef %pdev, ptr noundef %v4l2_dev3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i102 = icmp slt i32 %call8.i, 0
  br i1 %cmp.i102, label %do.end12.i, label %if.end17.i

do.end12.i:                                       ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #8
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name.i) #9
  br label %err_dev_reg.i

if.end17.i:                                       ; preds = %if.end.i103
  %hdl.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 2
  %call19.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl.i, i32 noundef 1, ptr noundef nonnull @radio_isa_common_probe._key, ptr noundef nonnull @.str.14) #6
  %call21.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl.i, ptr noundef nonnull @radio_isa_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %70 = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 6
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call21.i, ptr %70, align 8
  %max_volume.i = getelementptr inbounds %struct.radio_isa_driver, ptr %65, i32 0, i32 10
  %72 = ptrtoint ptr %max_volume.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_volume.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool22.not.i = icmp eq i32 %73, 0
  br i1 %tobool22.not.i, label %if.end17.i.if.end29.i_crit_edge, label %if.then23.i

if.end17.i.if.end29.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then23.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = sext i32 %73 to i64
  %call28.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl.i, ptr noundef nonnull @radio_isa_ctrl_ops, i32 noundef 9963781, i64 noundef 0, i64 noundef %conv.i, i64 noundef 1, i64 noundef %conv.i) #6
  %volume.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 6, i32 1
  %74 = ptrtoint ptr %volume.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call28.i, ptr %volume.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then23.i, %if.end17.i.if.end29.i_crit_edge
  %ctrl_handler.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 1, i32 6
  %75 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %hdl.i, ptr %ctrl_handler.i, align 4
  %error.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 2, i32 9
  %76 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool32.not.i = icmp eq i32 %77, 0
  br i1 %tobool32.not.i, label %if.end43.i, label %if.end29.i.err_hdl.i_crit_edge

if.end29.i.err_hdl.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hdl.i

if.end43.i:                                       ; preds = %if.end29.i
  %78 = ptrtoint ptr %max_volume.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_volume.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool45.not.i = icmp eq i32 %79, 0
  br i1 %tobool45.not.i, label %if.end43.i.if.end48.i_crit_edge, label %if.then46.i

if.end43.i.if.end48.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %70) #6
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then46.i, %if.end43.i.if.end48.i_crit_edge
  %80 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %hdl.i, ptr %ctrl_handler.i, align 4
  %lock.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @radio_isa_common_probe.__key) #6
  %vdev.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 3
  %lock55.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 3, i32 26
  %81 = ptrtoint ptr %lock55.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %lock.i, ptr %lock55.i, align 8
  %name57.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 3, i32 12
  %call61.i = tail call i32 @strscpy(ptr noundef %name57.i, ptr noundef %name.i, i32 noundef 32) #6
  %v4l2_dev63.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 3, i32 7
  %82 = ptrtoint ptr %v4l2_dev63.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %v4l2_dev3.i, ptr %v4l2_dev63.i, align 4
  %fops.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 3, i32 3
  %83 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @radio_isa_fops, ptr %fops.i, align 4
  %ioctl_ops.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 3, i32 24
  %84 = ptrtoint ptr %ioctl_ops.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @radio_isa_ioctl_ops, ptr %ioctl_ops.i, align 4
  %release.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 3, i32 23
  %85 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @video_device_release_empty, ptr %release.i, align 8
  %device_caps.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 3, i32 4
  %86 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 327680, ptr %device_caps.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 3, i32 5, i32 8
  %87 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  %freq.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 9
  %88 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1392000, ptr %freq.i, align 8
  %has_stereo.i = getelementptr inbounds %struct.radio_isa_driver, ptr %65, i32 0, i32 9
  %89 = ptrtoint ptr %has_stereo.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %has_stereo.i, align 4, !range !87
  %stereo.i = getelementptr inbounds %struct.radio_isa_card, ptr %call.i, i32 0, i32 8
  %91 = ptrtoint ptr %stereo.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %stereo.i, align 4
  %init.i = getelementptr inbounds %struct.radio_isa_ops, ptr %67, i32 0, i32 2
  %92 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %init.i, align 4
  %tobool70.not.i = icmp eq ptr %93, null
  br i1 %tobool70.not.i, label %if.end48.i.if.end74.i_crit_edge, label %if.then71.i

if.end48.i.if.end74.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.i

if.then71.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  %call73.i = tail call i32 %93(ptr noundef %call.i) #6
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then71.i, %if.end48.i.if.end74.i_crit_edge
  %res.0.i = phi i32 [ %call73.i, %if.then71.i ], [ %call8.i, %if.end48.i.if.end74.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i)
  %tobool75.not.i = icmp eq i32 %res.0.i, 0
  br i1 %tobool75.not.i, label %if.end79.i, label %if.end74.i.if.end92.i_crit_edge

if.end74.i.if.end92.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92.i

if.end79.i:                                       ; preds = %if.end74.i
  %call78.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool80.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool80.not.i, label %if.end84.i, label %if.end79.i.if.end92.i_crit_edge

if.end79.i.if.end92.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92.i

if.end84.i:                                       ; preds = %if.end79.i
  %s_frequency.i = getelementptr inbounds %struct.radio_isa_ops, ptr %67, i32 0, i32 4
  %94 = ptrtoint ptr %s_frequency.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_frequency.i, align 4
  %96 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %freq.i, align 8
  %call83.i = tail call i32 %95(ptr noundef %call.i, i32 noundef %97) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool85.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool85.not.i, label %land.lhs.true.i, label %if.end84.i.if.end92.i_crit_edge

if.end84.i.if.end92.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92.i

land.lhs.true.i:                                  ; preds = %if.end84.i
  %s_stereo.i = getelementptr inbounds %struct.radio_isa_ops, ptr %67, i32 0, i32 5
  %98 = ptrtoint ptr %s_stereo.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %s_stereo.i, align 4
  %tobool86.not.i = icmp eq ptr %99, null
  br i1 %tobool86.not.i, label %land.lhs.true.i.if.end103.i_crit_edge, label %if.then87.i

land.lhs.true.i.if.end103.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103.i

if.then87.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %stereo.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %stereo.i, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool90.i = icmp ne i8 %101, 0
  %call91.i = tail call i32 %99(ptr noundef %call.i, i1 noundef zeroext %tobool90.i) #6
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then87.i, %if.end84.i.if.end92.i_crit_edge, %if.end79.i.if.end92.i_crit_edge, %if.end74.i.if.end92.i_crit_edge
  %res.3.i = phi i32 [ %call83.i, %if.end84.i.if.end92.i_crit_edge ], [ %call91.i, %if.then87.i ], [ %call78.i, %if.end79.i.if.end92.i_crit_edge ], [ %res.0.i, %if.end74.i.if.end92.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.3.i)
  %cmp93.i = icmp slt i32 %res.3.i, 0
  br i1 %cmp93.i, label %if.end92.i.err_hdl.i_crit_edge, label %if.end92.i.if.end103.i_crit_edge

if.end92.i.if.end103.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103.i

if.end92.i.err_hdl.i_crit_edge:                   ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hdl.i

if.end103.i:                                      ; preds = %if.end92.i.if.end103.i_crit_edge, %land.lhs.true.i.if.end103.i_crit_edge
  %102 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fops.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %call.i.i = tail call i32 @__video_register_device(ptr noundef %vdev.i, i32 noundef 2, i32 noundef %61, i32 noundef 1, ptr noundef %105) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp106.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp106.i, label %if.end103.i.err_hdl.i_crit_edge, label %do.end119.i

if.end103.i.err_hdl.i_crit_edge:                  ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hdl.i

do.end119.i:                                      ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #8
  %card.i = getelementptr inbounds %struct.radio_isa_driver, ptr %65, i32 0, i32 8
  %106 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %card.i, align 4
  %108 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %io, align 8
  %call124.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i, ptr noundef %107, i32 noundef %109) #9
  br label %cleanup61

err_hdl.i:                                        ; preds = %if.end103.i.err_hdl.i_crit_edge, %if.end92.i.err_hdl.i_crit_edge, %if.end29.i.err_hdl.i_crit_edge
  %.str.23.sink.i = phi ptr [ @.str.16, %if.end29.i.err_hdl.i_crit_edge ], [ @.str.20, %if.end92.i.err_hdl.i_crit_edge ], [ @.str.23, %if.end103.i.err_hdl.i_crit_edge ]
  %res.4.i = phi i32 [ %77, %if.end29.i.err_hdl.i_crit_edge ], [ %res.3.i, %if.end92.i.err_hdl.i_crit_edge ], [ %call.i.i, %if.end103.i.err_hdl.i_crit_edge ]
  %call115.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.23.sink.i, ptr noundef %name.i) #9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl.i) #6
  br label %err_dev_reg.i

err_dev_reg.i:                                    ; preds = %err_hdl.i, %do.end12.i
  %res.5.i = phi i32 [ %call8.i, %do.end12.i ], [ %res.4.i, %err_hdl.i ]
  %110 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %io, align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %111, i32 noundef %63) #6
  tail call void @kfree(ptr noundef %call.i) #6
  br label %cleanup61

cleanup61:                                        ; preds = %err_dev_reg.i, %do.end119.i, %do.end.i, %do.end53, %if.then26.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.1 = phi i32 [ -22, %do.end53 ], [ -19, %if.then26.cleanup61_crit_edge ], [ %res.5.i, %err_dev_reg.i ], [ 0, %do.end119.i ], [ -16, %do.end.i ], [ -12, %entry.cleanup61_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radio_isa_remove(ptr nocapture noundef readonly %pdev, i32 %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %region_size = getelementptr inbounds %struct.radio_isa_driver, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %region_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %region_size, align 4
  %ops1.i = getelementptr inbounds %struct.radio_isa_driver, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops1.i, align 4
  %s_mute_volume.i = getelementptr inbounds %struct.radio_isa_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %s_mute_volume.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_mute_volume.i, align 4
  %volume.i = getelementptr inbounds %struct.radio_isa_card, ptr %1, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %volume.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %volume.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.radio_isa_common_remove.exit_crit_edge, label %cond.true.i

entry.radio_isa_common_remove.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %radio_isa_common_remove.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cur.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur.i, align 8
  br label %radio_isa_common_remove.exit

radio_isa_common_remove.exit:                     ; preds = %cond.true.i, %entry.radio_isa_common_remove.exit_crit_edge
  %cond.i = phi i32 [ %13, %cond.true.i ], [ 0, %entry.radio_isa_common_remove.exit_crit_edge ]
  %call.i = tail call i32 %9(ptr noundef %1, i1 noundef zeroext true, i32 noundef %cond.i) #6
  %vdev.i = getelementptr inbounds %struct.radio_isa_card, ptr %1, i32 0, i32 3
  tail call void @video_unregister_device(ptr noundef %vdev.i) #6
  %hdl.i = getelementptr inbounds %struct.radio_isa_card, ptr %1, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl.i) #6
  %v4l2_dev.i = getelementptr inbounds %struct.radio_isa_card, ptr %1, i32 0, i32 1
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev.i) #6
  %io.i = getelementptr inbounds %struct.radio_isa_card, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io.i, align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %15, i32 noundef %5) #6
  %name.i = getelementptr inbounds %struct.radio_isa_card, ptr %1, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %card.i = getelementptr inbounds %struct.radio_isa_driver, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name.i, ptr noundef %19) #9
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radio_isa_s_ctrl(ptr nocapture noundef readonly %ctrl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -132
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963785, i32 %3)
  %cond4 = icmp eq i32 %3, 9963785
  br i1 %cond4, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %ops = getelementptr inbounds %struct.radio_isa_driver, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %s_mute_volume = getelementptr inbounds %struct.radio_isa_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %s_mute_volume to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_mute_volume, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool = icmp ne i32 %11, 0
  %volume = getelementptr i8, ptr %1, i32 1640
  %12 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %volume, align 4
  %tobool1.not = icmp eq ptr %13, null
  br i1 %tobool1.not, label %sw.bb.cond.end_crit_edge, label %cond.true

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.bb.cond.end_crit_edge
  %cond = phi i32 [ %15, %cond.true ], [ 0, %sw.bb.cond.end_crit_edge ]
  %call = tail call i32 %9(ptr noundef %add.ptr, i1 noundef zeroext %tobool, i32 noundef %cond) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %cond.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radio_isa_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver2 = getelementptr inbounds %struct.isa_driver, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver2, align 4
  %call3 = tail call i32 @strscpy(ptr noundef %v, ptr noundef %5, i32 noundef 16) #6
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %card6 = getelementptr inbounds %struct.radio_isa_driver, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card6, align 4
  %call7 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %9, i32 noundef 32) #6
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 2
  %name9 = getelementptr inbounds %struct.radio_isa_card, ptr %1, i32 0, i32 1, i32 4
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.28, ptr noundef %name9)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radio_isa_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops1 = getelementptr inbounds %struct.radio_isa_driver, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops1, align 4
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.29, i32 noundef 32) #6
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %type, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 4
  %9 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1392000, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 5
  %10 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1728000, ptr %rangehigh, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 3
  %11 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %capability, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %has_stereo = getelementptr inbounds %struct.radio_isa_driver, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %has_stereo to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_stereo, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 17
  %16 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.store.select, ptr %capability, align 4
  %g_rxsubchans = getelementptr inbounds %struct.radio_isa_ops, ptr %5, i32 0, i32 6
  %17 = ptrtoint ptr %g_rxsubchans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %g_rxsubchans, align 4
  %tobool7.not = icmp eq ptr %18, null
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 %18(ptr noundef %1) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  %call10.sink = phi i32 [ %call10, %if.then8 ], [ 3, %if.end.if.end12_crit_edge ]
  %19 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 6
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call10.sink, ptr %19, align 4
  %stereo = getelementptr inbounds %struct.radio_isa_card, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %stereo to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %stereo, align 4, !range !87
  %23 = zext i8 %22 to i32
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 7
  %24 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %audmode, align 4
  %g_signal = getelementptr inbounds %struct.radio_isa_ops, ptr %5, i32 0, i32 7
  %25 = ptrtoint ptr %g_signal to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %g_signal, align 4
  %tobool14.not = icmp eq ptr %26, null
  br i1 %tobool14.not, label %if.else18, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 %26(ptr noundef %1) #6
  br label %cleanup.sink.split

if.else18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %19, align 4
  %and = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  %cond21 = select i1 %tobool20.not, i32 0, i32 65535
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else18, %if.then15
  %call17.sink = phi i32 [ %call17, %if.then15 ], [ %cond21, %if.else18 ]
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 8
  %29 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call17.sink, ptr %signal, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radio_isa_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %ops1 = getelementptr inbounds %struct.radio_isa_driver, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops1, align 4
  %s_stereo = getelementptr inbounds %struct.radio_isa_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %s_stereo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_stereo, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 7
  %10 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  %stereo = getelementptr inbounds %struct.radio_isa_card, ptr %1, i32 0, i32 8
  %frombool = zext i1 %cmp to i8
  %12 = ptrtoint ptr %stereo to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %stereo, align 4
  %13 = ptrtoint ptr %s_stereo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_stereo, align 4
  %call7 = tail call i32 %14(ptr noundef %1, i1 noundef zeroext %cmp) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then3 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radio_isa_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %freq = getelementptr inbounds %struct.radio_isa_card, ptr %3, i32 0, i32 9
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
define internal i32 @radio_isa_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %2 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.not = icmp eq i32 %7, 1
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = tail call i32 @llvm.umax.i32(i32 %3, i32 1392000)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 1728000)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %ops = getelementptr inbounds %struct.radio_isa_driver, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %s_frequency = getelementptr inbounds %struct.radio_isa_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_frequency, align 4
  %call9 = tail call i32 %15(ptr noundef %1, i32 noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %freq12 = getelementptr inbounds %struct.radio_isa_card, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %freq12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %9, ptr %freq12, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then11 ], [ %call9, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radio_isa_log_status(ptr noundef %file, ptr nocapture noundef readnone %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %name = getelementptr inbounds %struct.radio_isa_card, ptr %1, i32 0, i32 1, i32 4
  %io = getelementptr inbounds %struct.radio_isa_card, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef %3) #9
  %hdl = getelementptr inbounds %struct.radio_isa_card, ptr %1, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef %name) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__UNIQUE_ID_author292, !1, !"__UNIQUE_ID_author292", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-isa.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description293, !3, !"__UNIQUE_ID_description293", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-isa.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/radio-isa.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__ksymtab_radio_isa_match, !8, !"__ksymtab_radio_isa_match", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-isa.c", i32 167, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/radio/radio-isa.c", i32 326, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @radio_isa_probe._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @radio_isa_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/radio/radio-isa.c", i32 329, i32 4}
!17 = !{ptr @radio_isa_probe._entry.3, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @radio_isa_probe._entry_ptr.5, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/radio/radio-isa.c", i32 330, i32 3}
!21 = !{ptr @radio_isa_probe._entry.6, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @radio_isa_probe._entry_ptr.8, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_radio_isa_probe, !24, !"__ksymtab_radio_isa_probe", i1 false, i1 false}
!24 = !{!"../drivers/media/radio/radio-isa.c", i32 338, i32 1}
!25 = !{ptr @__ksymtab_radio_isa_remove, !26, !"__ksymtab_radio_isa_remove", i1 false, i1 false}
!26 = !{!"../drivers/media/radio/radio-isa.c", i32 346, i32 1}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/radio/radio-isa.c", i32 205, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @radio_isa_common_probe._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @radio_isa_common_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/radio/radio-isa.c", i32 212, i32 3}
!34 = !{ptr @radio_isa_common_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @radio_isa_common_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @radio_isa_common_probe._key, !37, !"_key", i1 false, i1 false}
!37 = !{!"../drivers/media/radio/radio-isa.c", i32 216, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/radio/radio-isa.c", i32 226, i32 3}
!41 = !{ptr @radio_isa_common_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @radio_isa_common_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @radio_isa_common_probe.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/media/radio/radio-isa.c", i32 233, i32 2}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/radio/radio-isa.c", i32 254, i32 3}
!48 = !{ptr @radio_isa_common_probe._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @radio_isa_common_probe._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/radio/radio-isa.c", i32 260, i32 3}
!52 = !{ptr @radio_isa_common_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @radio_isa_common_probe._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/radio/radio-isa.c", i32 264, i32 2}
!56 = !{ptr @radio_isa_common_probe._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @radio_isa_common_probe._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @radio_isa_ctrl_ops, !59, !"radio_isa_ctrl_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/radio/radio-isa.c", i32 138, i32 35}
!60 = !{ptr @radio_isa_fops, !61, !"radio_isa_fops", i1 false, i1 false}
!61 = !{!"../drivers/media/radio/radio-isa.c", i32 142, i32 42}
!62 = !{ptr @radio_isa_ioctl_ops, !63, !"radio_isa_ioctl_ops", i1 false, i1 false}
!63 = !{!"../drivers/media/radio/radio-isa.c", i32 150, i32 36}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/radio/radio-isa.c", i32 39, i32 45}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/radio/radio-isa.c", i32 52, i32 19}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/radio/radio-isa.c", i32 133, i32 2}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @radio_isa_log_status._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @radio_isa_log_status._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/radio/radio-isa.c", i32 286, i32 2}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @radio_isa_common_remove._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @radio_isa_common_remove._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i8 0, i8 2}
