; ModuleID = '/llk/IR_all_yes/drivers/media/v4l2-core/v4l2-ctrls-request.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/v4l2-ctrls-request.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+v4l2_ctrl_request_hdl_find\22, \22a\22\09"
module asm "\09.weak\09__crc_v4l2_ctrl_request_hdl_find\09\09\09\09"
module asm "\09.long\09__crc_v4l2_ctrl_request_hdl_find\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_request_hdl_find:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_request_hdl_find\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_request_hdl_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+v4l2_ctrl_request_hdl_ctrl_find\22, \22a\22\09"
module asm "\09.weak\09__crc_v4l2_ctrl_request_hdl_ctrl_find\09\09\09\09"
module asm "\09.long\09__crc_v4l2_ctrl_request_hdl_ctrl_find\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_request_hdl_ctrl_find:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_request_hdl_ctrl_find\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_request_hdl_ctrl_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+v4l2_ctrl_request_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_v4l2_ctrl_request_complete\09\09\09\09"
module asm "\09.long\09__crc_v4l2_ctrl_request_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_request_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_request_complete\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_request_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+v4l2_ctrl_request_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_v4l2_ctrl_request_setup\09\09\09\09"
module asm "\09.long\09__crc_v4l2_ctrl_request_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_request_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_request_setup\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_request_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.media_request_object_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_request = type { ptr, %struct.kref, [27 x i8], i32, i32, i32, %struct.list_head, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.v4l2_ctrl_ref = type { %struct.list_head, ptr, ptr, ptr, i8, i8, i8, %union.v4l2_ctrl_ptr }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ext_controls = type { %union.anon.83, i32, i32, i32, [1 x i32], ptr }
%union.anon.83 = type { i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.70 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.67], %struct.media_entity_enum, i32 }
%struct.anon.67 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.1, %union.anon.2, i32, ptr, i32, %struct.anon, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.1 = type { i64 }
%union.anon.2 = type { ptr }
%struct.anon = type { i32 }

@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/v4l2-core/v4l2-ctrls-request.c\00", [51 x i8] zeroinitializer }, align 32
@req_ops = internal constant { %struct.media_request_object_ops, [44 x i8] } { %struct.media_request_object_ops { ptr null, ptr null, ptr @v4l2_ctrl_request_queue, ptr @v4l2_ctrl_request_unbind, ptr @v4l2_ctrl_request_release }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_v4l2_ctrl_request_hdl_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_request_hdl_find = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_request_hdl_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_request_hdl_find to i32), ptr @__kstrtab_v4l2_ctrl_request_hdl_find, ptr @__kstrtabns_v4l2_ctrl_request_hdl_find }, section "___ksymtab_gpl+v4l2_ctrl_request_hdl_find", align 4
@__kstrtab_v4l2_ctrl_request_hdl_ctrl_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_request_hdl_ctrl_find = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_request_hdl_ctrl_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_request_hdl_ctrl_find to i32), ptr @__kstrtab_v4l2_ctrl_request_hdl_ctrl_find, ptr @__kstrtabns_v4l2_ctrl_request_hdl_ctrl_find }, section "___ksymtab_gpl+v4l2_ctrl_request_hdl_ctrl_find", align 4
@try_set_ext_ctrls_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017v4l2-ctrls: %s: %s: %s: missing media device\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"try_set_ext_ctrls_request\00", [38 x i8] zeroinitializer }, align 32
@try_set_ext_ctrls_request._entry_ptr = internal global ptr @try_set_ext_ctrls_request._entry, section ".printk_index", align 4
@try_set_ext_ctrls_request._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017v4l2-ctrls: %s: %s: %s: invalid request fd %d\0A\00", [47 x i8] zeroinitializer }, align 32
@try_set_ext_ctrls_request._entry_ptr.5 = internal global ptr @try_set_ext_ctrls_request._entry.3, section ".printk_index", align 4
@try_set_ext_ctrls_request._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017v4l2-ctrls: %s: %s: %s: cannot find request fd %d\0A\00", [43 x i8] zeroinitializer }, align 32
@try_set_ext_ctrls_request._entry_ptr.8 = internal global ptr @try_set_ext_ctrls_request._entry.6, section ".printk_index", align 4
@try_set_ext_ctrls_request._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017v4l2-ctrls: %s: %s: %s: cannot lock request fd %d\0A\00", [43 x i8] zeroinitializer }, align 32
@try_set_ext_ctrls_request._entry_ptr.11 = internal global ptr @try_set_ext_ctrls_request._entry.9, section ".printk_index", align 4
@try_set_ext_ctrls_request._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017v4l2-ctrls: %s: %s: %s: cannot find request object for request fd %d\0A\00", [56 x i8] zeroinitializer }, align 32
@try_set_ext_ctrls_request._entry_ptr.14 = internal global ptr @try_set_ext_ctrls_request._entry.12, section ".printk_index", align 4
@try_set_ext_ctrls_request._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017v4l2-ctrls: %s: %s: %s: try_set_ext_ctrls_common failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@try_set_ext_ctrls_request._entry_ptr.17 = internal global ptr @try_set_ext_ctrls_request._entry.15, section ".printk_index", align 4
@v4l2_ctrl_request_complete._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"v4l2_ctrls_request:348:(hdl)->_lock\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_v4l2_ctrl_request_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_request_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_request_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_request_complete to i32), ptr @__kstrtab_v4l2_ctrl_request_complete, ptr @__kstrtabns_v4l2_ctrl_request_complete }, section "___ksymtab+v4l2_ctrl_request_complete", align 4
@__kstrtab_v4l2_ctrl_request_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_request_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_request_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_request_setup to i32), ptr @__kstrtab_v4l2_ctrl_request_setup, ptr @__kstrtabns_v4l2_ctrl_request_setup }, section "___ksymtab+v4l2_ctrl_request_setup", align 4
@v4l2_ctrls_find_req_obj._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"v4l2_ctrls_request:206:(new_hdl)->_lock\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/media/media-request.h\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 130, i32 6 }
@___asan_gen_.24 = private unnamed_addr constant [8 x i8] c"req_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 119, i32 46 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 272, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 278, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 285, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 292, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 300, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 313, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 348, i32 9 }
@___asan_gen_.72 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.76 = private constant [48 x i8] c"../drivers/media/v4l2-core/v4l2-ctrls-request.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 206, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [33 x i8] c"../include/media/media-request.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 116, i32 7 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab_v4l2_ctrl_request_complete, ptr @__ksymtab_v4l2_ctrl_request_hdl_ctrl_find, ptr @__ksymtab_v4l2_ctrl_request_hdl_find, ptr @__ksymtab_v4l2_ctrl_request_setup, ptr @try_set_ext_ctrls_request._entry, ptr @try_set_ext_ctrls_request._entry.12, ptr @try_set_ext_ctrls_request._entry.15, ptr @try_set_ext_ctrls_request._entry.3, ptr @try_set_ext_ctrls_request._entry.6, ptr @try_set_ext_ctrls_request._entry.9, ptr @try_set_ext_ctrls_request._entry_ptr, ptr @try_set_ext_ctrls_request._entry_ptr.11, ptr @try_set_ext_ctrls_request._entry_ptr.14, ptr @try_set_ext_ctrls_request._entry_ptr.17, ptr @try_set_ext_ctrls_request._entry_ptr.5, ptr @try_set_ext_ctrls_request._entry_ptr.8, ptr @.str, ptr @req_ops, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @v4l2_ctrl_request_complete._key, ptr @.str.18, ptr @v4l2_ctrls_find_req_obj._key, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @req_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_set_ext_ctrls_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_set_ext_ctrls_request._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_set_ext_ctrls_request._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_set_ext_ctrls_request._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_set_ext_ctrls_request._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_set_ext_ctrls_request._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_ctrl_request_complete._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_ctrls_find_req_obj._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v4l2_ctrl_handler_init_request(ptr noundef %hdl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %requests = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %hdl, i32 0, i32 11
  %0 = ptrtoint ptr %requests to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %requests, ptr %requests, align 4
  %prev.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %hdl, i32 0, i32 11, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %requests, ptr %prev.i, align 4
  %requests_queued = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %hdl, i32 0, i32 12
  %2 = ptrtoint ptr %requests_queued to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %requests_queued, ptr %requests_queued, align 4
  %prev.i4 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %hdl, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %prev.i4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %requests_queued, ptr %prev.i4, align 4
  %request_is_queued = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %hdl, i32 0, i32 10
  %4 = ptrtoint ptr %request_is_queued to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %request_is_queued, align 4
  %req_obj = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %hdl, i32 0, i32 13
  tail call void @media_request_object_init(ptr noundef %req_obj) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_request_object_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v4l2_ctrl_handler_free_request(ptr noundef %hdl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %req_obj = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %hdl, i32 0, i32 13
  %0 = ptrtoint ptr %req_obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req_obj, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %requests = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %hdl, i32 0, i32 11
  %2 = ptrtoint ptr %requests to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %requests, align 4
  %cmp.i.not = icmp eq ptr %3, %requests
  %req.026 = getelementptr i8, ptr %3, i32 -140
  %cmp.not27 = icmp eq ptr %req.026, %hdl
  %or.cond = or i1 %cmp.i.not, %cmp.not27
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.body_crit_edge

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge
  %.pn.in28 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %3, %lor.lhs.false.for.body_crit_edge ]
  %4 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in28, align 4
  %req_obj10 = getelementptr i8, ptr %.pn.in28, i32 16
  tail call void @media_request_object_unbind(ptr noundef %req_obj10) #6
  tail call void @media_request_object_put(ptr noundef %req_obj10) #6
  %req.0 = getelementptr i8, ptr %.pn, i32 -140
  %cmp.not = icmp eq ptr %req.0, %hdl
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_request_object_unbind(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_request_object_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v4l2_ctrl_request_hdl_find(ptr noundef %req, ptr noundef %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.media_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %2)
  %3 = icmp ult i32 %2, -2
  br i1 %3, label %do.end, label %if.end23, !prof !54

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 131, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @media_request_object_find(ptr noundef %req, ptr noundef nonnull @req_ops, ptr noundef %parent) #6
  %tobool24.not = icmp eq ptr %call, null
  %add.ptr = getelementptr i8, ptr %call, i32 -156
  %spec.select32 = select i1 %tobool24.not, ptr null, ptr %add.ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %spec.select32, %if.end23 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_request_object_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v4l2_ctrl_request_hdl_ctrl_find(ptr noundef %hdl, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @find_ref_lock(ptr noundef %hdl, i32 noundef %id) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.lhs.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %valid_p_req = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %valid_p_req to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid_p_req, align 2, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %land.lhs.true.cond.end_crit_edge ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_ref_lock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v4l2_g_ext_ctrls_request(ptr noundef %hdl, ptr noundef %vdev, ptr noundef %mdev, ptr noundef %cs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %request_fd = getelementptr inbounds %struct.v4l2_ext_controls, ptr %cs, i32 0, i32 3
  %0 = ptrtoint ptr %request_fd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %request_fd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @media_request_get_by_fd(ptr noundef nonnull %mdev, i32 noundef %1) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.media_request, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp6.not = icmp eq i32 %4, 3
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @media_request_put(ptr noundef %call) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %lock.i = getelementptr inbounds %struct.media_request, ptr %call, i32 0, i32 9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp5.i = icmp eq i32 %6, 3
  br i1 %cmp5.i, label %v4l2_ctrls_find_req_obj.exit, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  tail call void @media_request_put(ptr noundef %call) #6
  br label %cleanup

v4l2_ctrls_find_req_obj.exit:                     ; preds = %if.end8
  %access_count.i = getelementptr inbounds %struct.media_request, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %access_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %access_count.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %access_count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  %call2770.i = tail call ptr @media_request_object_find(ptr noundef %call, ptr noundef nonnull @req_ops, ptr noundef %hdl) #6
  %tobool28.not71.i = icmp eq ptr %call2770.i, null
  %spec.select.i = select i1 %tobool28.not71.i, ptr inttoptr (i32 -12 to ptr), ptr %call2770.i
  %cmp.i40 = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %if.then15, label %if.end17

if.then15:                                        ; preds = %v4l2_ctrls_find_req_obj.exit
  %call2.i42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %9 = ptrtoint ptr %access_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %access_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.end16.i, label %if.then30.critedge.i, !prof !54

do.end16.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 116, i32 noundef 9, ptr noundef null) #6
  br label %media_request_unlock_for_access.exit

if.then30.critedge.i:                             ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add i32 %10, -1
  %11 = ptrtoint ptr %access_count.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dec.i, ptr %access_count.i, align 4
  br label %media_request_unlock_for_access.exit

media_request_unlock_for_access.exit:             ; preds = %if.then30.critedge.i, %do.end16.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i42) #6
  tail call void @media_request_put(ptr noundef %call) #6
  %12 = ptrtoint ptr %spec.select.i to i32
  br label %cleanup

if.end17:                                         ; preds = %v4l2_ctrls_find_req_obj.exit
  %add.ptr = getelementptr i8, ptr %spec.select.i, i32 -156
  %call18 = tail call i32 @v4l2_g_ext_ctrls_common(ptr noundef %add.ptr, ptr noundef %cs, ptr noundef %vdev) #6
  %call2.i45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %13 = ptrtoint ptr %access_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %access_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i47 = icmp eq i32 %14, 0
  br i1 %tobool.not.i47, label %do.end16.i48, label %if.then30.critedge.i50, !prof !54

do.end16.i48:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 116, i32 noundef 9, ptr noundef null) #6
  br label %media_request_unlock_for_access.exit51

if.then30.critedge.i50:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i49 = add i32 %14, -1
  %15 = ptrtoint ptr %access_count.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dec.i49, ptr %access_count.i, align 4
  br label %media_request_unlock_for_access.exit51

media_request_unlock_for_access.exit51:           ; preds = %if.then30.critedge.i50, %do.end16.i48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i45) #6
  tail call void @media_request_object_put(ptr noundef %spec.select.i) #6
  tail call void @media_request_put(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %media_request_unlock_for_access.exit51, %media_request_unlock_for_access.exit, %if.then11, %if.then7, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then3 ], [ -13, %if.then7 ], [ -16, %if.then11 ], [ %12, %media_request_unlock_for_access.exit ], [ %call18, %media_request_unlock_for_access.exit51 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_request_get_by_fd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_request_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_ext_ctrls_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @try_set_ext_ctrls_request(ptr noundef %fh, ptr noundef %hdl, ptr noundef %vdev, ptr noundef %mdev, ptr noundef %cs, i1 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mdev, null
  br i1 %tobool.not, label %do.body, label %if.end36

do.body:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %vdev, null
  br i1 %tobool1.not, label %do.end, label %land.lhs.true.critedge, !prof !54

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

land.lhs.true.critedge:                           ; preds = %do.body
  %dev_debug = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 21
  %0 = ptrtoint ptr %dev_debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_debug, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %land.lhs.true.critedge.cleanup_crit_edge, label %do.end29

land.lhs.true.critedge.cleanup_crit_edge:         ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end29:                                         ; preds = %land.lhs.true.critedge
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i374, label %do.end29.video_device_node_name.exit376_crit_edge

do.end29.video_device_node_name.exit376_crit_edge: ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %video_device_node_name.exit376

if.end.i.i374:                                    ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit376

video_device_node_name.exit376:                   ; preds = %if.end.i.i374, %do.end29.video_device_node_name.exit376_crit_edge
  %retval.0.i.i456 = phi ptr [ %5, %if.end.i.i374 ], [ %3, %do.end29.video_device_node_name.exit376_crit_edge ]
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i456, ptr noundef %retval.0.i.i456) #9
  br label %cleanup

if.end36:                                         ; preds = %entry
  %request_fd = getelementptr inbounds %struct.v4l2_ext_controls, ptr %cs, i32 0, i32 3
  %6 = ptrtoint ptr %request_fd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %request_fd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %do.body38, label %if.end89

do.body38:                                        ; preds = %if.end36
  %tobool40.not = icmp eq ptr %vdev, null
  br i1 %tobool40.not, label %do.end58, label %land.lhs.true73.critedge, !prof !54

do.end58:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

land.lhs.true73.critedge:                         ; preds = %do.body38
  %dev_debug74 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 21
  %8 = ptrtoint ptr %dev_debug74 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_debug74, align 4
  %and75 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %land.lhs.true73.critedge.cleanup_crit_edge, label %do.end80

land.lhs.true73.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true73.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end80:                                         ; preds = %land.lhs.true73.critedge
  %init_name.i.i377 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %init_name.i.i377 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i377, align 8
  %tobool.not.i.i378 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i378, label %if.end.i.i386, label %do.end80.video_device_node_name.exit388_crit_edge

do.end80.video_device_node_name.exit388_crit_edge: ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %video_device_node_name.exit388

if.end.i.i386:                                    ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i379 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5
  %12 = ptrtoint ptr %dev.i379 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i379, align 4
  br label %video_device_node_name.exit388

video_device_node_name.exit388:                   ; preds = %if.end.i.i386, %do.end80.video_device_node_name.exit388_crit_edge
  %retval.0.i.i381459 = phi ptr [ %13, %if.end.i.i386 ], [ %11, %do.end80.video_device_node_name.exit388_crit_edge ]
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i381459, ptr noundef %retval.0.i.i381459, i32 noundef %7) #9
  br label %cleanup

if.end89:                                         ; preds = %if.end36
  %call91 = tail call ptr @media_request_get_by_fd(ptr noundef nonnull %mdev, i32 noundef %7) #6
  %cmp.i = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body94, label %if.end146

do.body94:                                        ; preds = %if.end89
  %tobool96.not = icmp eq ptr %vdev, null
  br i1 %tobool96.not, label %do.end114, label %land.lhs.true129.critedge, !prof !54

do.end114:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 286, i32 noundef 9, ptr noundef null) #6
  br label %do.end144

land.lhs.true129.critedge:                        ; preds = %do.body94
  %dev_debug130 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 21
  %14 = ptrtoint ptr %dev_debug130 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_debug130, align 4
  %and131 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %land.lhs.true129.critedge.do.end144_crit_edge, label %do.end136

land.lhs.true129.critedge.do.end144_crit_edge:    ; preds = %land.lhs.true129.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end144

do.end136:                                        ; preds = %land.lhs.true129.critedge
  %init_name.i.i389 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %init_name.i.i389 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i389, align 8
  %tobool.not.i.i390 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i390, label %if.end.i.i398, label %do.end136.video_device_node_name.exit400_crit_edge

do.end136.video_device_node_name.exit400_crit_edge: ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %video_device_node_name.exit400

if.end.i.i398:                                    ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i391 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5
  %18 = ptrtoint ptr %dev.i391 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i391, align 4
  br label %video_device_node_name.exit400

video_device_node_name.exit400:                   ; preds = %if.end.i.i398, %do.end136.video_device_node_name.exit400_crit_edge
  %retval.0.i.i393462 = phi ptr [ %19, %if.end.i.i398 ], [ %17, %do.end136.video_device_node_name.exit400_crit_edge ]
  %20 = ptrtoint ptr %request_fd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %request_fd, align 4
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i393462, ptr noundef %retval.0.i.i393462, i32 noundef %21) #9
  br label %do.end144

do.end144:                                        ; preds = %video_device_node_name.exit400, %land.lhs.true129.critedge.do.end144_crit_edge, %do.end114
  %22 = ptrtoint ptr %call91 to i32
  br label %cleanup

if.end146:                                        ; preds = %if.end89
  %lock.i = getelementptr inbounds %struct.media_request, ptr %call91, i32 0, i32 9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %state.i = getelementptr inbounds %struct.media_request, ptr %call91, i32 0, i32 3
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %do.body150 [
    i32 0, label %if.end146.if.end.i_crit_edge
    i32 5, label %if.end146.if.end.i_crit_edge478
  ]

if.end146.if.end.i_crit_edge478:                  ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end146.if.end.i_crit_edge:                     ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.body150:                                       ; preds = %if.end146
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  %tobool152.not = icmp eq ptr %vdev, null
  br i1 %tobool152.not, label %do.end170, label %land.lhs.true185.critedge, !prof !54

do.end170:                                        ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef null) #6
  br label %do.end200

land.lhs.true185.critedge:                        ; preds = %do.body150
  %dev_debug186 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 21
  %26 = ptrtoint ptr %dev_debug186 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dev_debug186, align 4
  %and187 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %land.lhs.true185.critedge.do.end200_crit_edge, label %do.end192

land.lhs.true185.critedge.do.end200_crit_edge:    ; preds = %land.lhs.true185.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end200

do.end192:                                        ; preds = %land.lhs.true185.critedge
  %init_name.i.i401 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5, i32 3
  %28 = ptrtoint ptr %init_name.i.i401 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i401, align 8
  %tobool.not.i.i402 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i402, label %if.end.i.i410, label %do.end192.video_device_node_name.exit412_crit_edge

do.end192.video_device_node_name.exit412_crit_edge: ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #8
  br label %video_device_node_name.exit412

if.end.i.i410:                                    ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i403 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5
  %30 = ptrtoint ptr %dev.i403 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i403, align 4
  br label %video_device_node_name.exit412

video_device_node_name.exit412:                   ; preds = %if.end.i.i410, %do.end192.video_device_node_name.exit412_crit_edge
  %retval.0.i.i405467 = phi ptr [ %31, %if.end.i.i410 ], [ %29, %do.end192.video_device_node_name.exit412_crit_edge ]
  %32 = ptrtoint ptr %request_fd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %request_fd, align 4
  %call197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i405467, ptr noundef %retval.0.i.i405467, i32 noundef %33) #9
  br label %do.end200

do.end200:                                        ; preds = %video_device_node_name.exit412, %land.lhs.true185.critedge.do.end200_crit_edge, %do.end170
  tail call void @media_request_put(ptr noundef %call91) #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end146.if.end.i_crit_edge, %if.end146.if.end.i_crit_edge478
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 5, ptr %state.i, align 4
  %updating_count.i = getelementptr inbounds %struct.media_request, ptr %call91, i32 0, i32 4
  %35 = ptrtoint ptr %updating_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %updating_count.i, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr %updating_count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  br i1 %set, label %land.lhs.true.i, label %if.end26.thread.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %37 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %38)
  %cmp.not.i = icmp eq i32 %38, 5
  br i1 %cmp.not.i, label %if.end26.i, label %do.end.i, !prof !56

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef null) #6
  br label %do.body206

if.end26.i:                                       ; preds = %land.lhs.true.i
  %call27.i = tail call ptr @media_request_object_find(ptr noundef %call91, ptr noundef nonnull @req_ops, ptr noundef %hdl) #6
  %tobool28.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool28.not.i, label %if.end34.critedge.i, label %if.end26.i.v4l2_ctrls_find_req_obj.exit_crit_edge

if.end26.i.v4l2_ctrls_find_req_obj.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_ctrls_find_req_obj.exit

if.end26.thread.i:                                ; preds = %if.end.i
  %call2770.i = tail call ptr @media_request_object_find(ptr noundef %call91, ptr noundef nonnull @req_ops, ptr noundef %hdl) #6
  %tobool28.not71.i = icmp eq ptr %call2770.i, null
  br i1 %tobool28.not71.i, label %if.end26.thread.i.do.body206_crit_edge, label %if.end26.thread.i.v4l2_ctrls_find_req_obj.exit_crit_edge

if.end26.thread.i.v4l2_ctrls_find_req_obj.exit_crit_edge: ; preds = %if.end26.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_ctrls_find_req_obj.exit

if.end26.thread.i.do.body206_crit_edge:           ; preds = %if.end26.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body206

if.end34.critedge.i:                              ; preds = %if.end26.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 184) #10
  %tobool36.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool36.not.i, label %if.end34.critedge.i.do.body206_crit_edge, label %if.end39.i

if.end34.critedge.i.do.body206_crit_edge:         ; preds = %if.end34.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body206

if.end39.i:                                       ; preds = %if.end34.critedge.i
  %req_obj.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %call7.i.i.i, i32 0, i32 13
  %nr_of_buckets.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %hdl, i32 0, i32 8
  %40 = ptrtoint ptr %nr_of_buckets.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nr_of_buckets.i, align 4
  %conv.i = zext i16 %41 to i32
  %sub.i = shl nuw nsw i32 %conv.i, 3
  %mul.i = add nsw i32 %sub.i, -8
  %call41.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef nonnull %call7.i.i.i, i32 noundef %mul.i, ptr noundef nonnull @v4l2_ctrls_find_req_obj._key, ptr noundef nonnull @.str.19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end45.i, label %if.end39.i.if.then47.i_crit_edge

if.end39.i.if.then47.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47.i

if.end45.i:                                       ; preds = %if.end39.i
  %call44.i = tail call fastcc i32 @v4l2_ctrl_request_bind(ptr noundef %call91, ptr noundef nonnull %call7.i.i.i, ptr noundef %hdl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool46.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool46.not.i, label %if.end49.i, label %if.end45.i.if.then47.i_crit_edge

if.end45.i.if.then47.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47.i

if.then47.i:                                      ; preds = %if.end45.i.if.then47.i_crit_edge, %if.end39.i.if.then47.i_crit_edge
  %ret.074.i = phi i32 [ %call44.i, %if.end45.i.if.then47.i_crit_edge ], [ %call41.i, %if.end39.i.if.then47.i_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef nonnull %call7.i.i.i) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  %42 = inttoptr i32 %ret.074.i to ptr
  br label %v4l2_ctrls_find_req_obj.exit

if.end49.i:                                       ; preds = %if.end45.i
  %kref.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %call7.i.i.i, i32 0, i32 13, i32 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #6
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #6, !srcloc !57
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end49.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !54

if.end49.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end49.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %44 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %.not.i.i.i.i.i.i = icmp sgt i32 %44, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.v4l2_ctrls_find_req_obj.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !56

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.v4l2_ctrls_find_req_obj.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_ctrls_find_req_obj.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end49.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end49.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #6
  br label %v4l2_ctrls_find_req_obj.exit

v4l2_ctrls_find_req_obj.exit:                     ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.v4l2_ctrls_find_req_obj.exit_crit_edge, %if.then47.i, %if.end26.thread.i.v4l2_ctrls_find_req_obj.exit_crit_edge, %if.end26.i.v4l2_ctrls_find_req_obj.exit_crit_edge
  %retval.0.i = phi ptr [ %42, %if.then47.i ], [ %call27.i, %if.end26.i.v4l2_ctrls_find_req_obj.exit_crit_edge ], [ %req_obj.i, %if.else.i.i.i.i.i.i.v4l2_ctrls_find_req_obj.exit_crit_edge ], [ %req_obj.i, %if.end15.sink.split.i.i.i.i.i.i ], [ %call2770.i, %if.end26.thread.i.v4l2_ctrls_find_req_obj.exit_crit_edge ]
  %cmp.i414 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i414, label %v4l2_ctrls_find_req_obj.exit.do.body206_crit_edge, label %if.end258

v4l2_ctrls_find_req_obj.exit.do.body206_crit_edge: ; preds = %v4l2_ctrls_find_req_obj.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body206

do.body206:                                       ; preds = %v4l2_ctrls_find_req_obj.exit.do.body206_crit_edge, %if.end34.critedge.i.do.body206_crit_edge, %if.end26.thread.i.do.body206_crit_edge, %do.end.i
  %retval.0.i471 = phi ptr [ %retval.0.i, %v4l2_ctrls_find_req_obj.exit.do.body206_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end34.critedge.i.do.body206_crit_edge ], [ inttoptr (i32 -16 to ptr), %do.end.i ], [ inttoptr (i32 -12 to ptr), %if.end26.thread.i.do.body206_crit_edge ]
  %tobool208.not = icmp eq ptr %vdev, null
  br i1 %tobool208.not, label %do.end226, label %land.lhs.true241.critedge, !prof !54

do.end226:                                        ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 303, i32 noundef 9, ptr noundef null) #6
  br label %do.end256

land.lhs.true241.critedge:                        ; preds = %do.body206
  %dev_debug242 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 21
  %45 = ptrtoint ptr %dev_debug242 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dev_debug242, align 4
  %and243 = and i32 %46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and243)
  %tobool244.not = icmp eq i32 %and243, 0
  br i1 %tobool244.not, label %land.lhs.true241.critedge.do.end256_crit_edge, label %do.end248

land.lhs.true241.critedge.do.end256_crit_edge:    ; preds = %land.lhs.true241.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end256

do.end248:                                        ; preds = %land.lhs.true241.critedge
  %init_name.i.i415 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5, i32 3
  %47 = ptrtoint ptr %init_name.i.i415 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i.i415, align 8
  %tobool.not.i.i416 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i416, label %if.end.i.i424, label %do.end248.video_device_node_name.exit426_crit_edge

do.end248.video_device_node_name.exit426_crit_edge: ; preds = %do.end248
  call void @__sanitizer_cov_trace_pc() #8
  br label %video_device_node_name.exit426

if.end.i.i424:                                    ; preds = %do.end248
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i417 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5
  %49 = ptrtoint ptr %dev.i417 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i417, align 4
  br label %video_device_node_name.exit426

video_device_node_name.exit426:                   ; preds = %if.end.i.i424, %do.end248.video_device_node_name.exit426_crit_edge
  %retval.0.i.i419473 = phi ptr [ %50, %if.end.i.i424 ], [ %48, %do.end248.video_device_node_name.exit426_crit_edge ]
  %51 = ptrtoint ptr %request_fd to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %request_fd, align 4
  %call253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i419473, ptr noundef %retval.0.i.i419473, i32 noundef %52) #9
  br label %do.end256

do.end256:                                        ; preds = %video_device_node_name.exit426, %land.lhs.true241.critedge.do.end256_crit_edge, %do.end226
  %call2.i428 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %53 = ptrtoint ptr %updating_count.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %updating_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp5.i = icmp eq i32 %54, 0
  br i1 %cmp5.i, label %do.end16.i, label %do.end256.if.end.i430_crit_edge, !prof !54

do.end256.if.end.i430_crit_edge:                  ; preds = %do.end256
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i430

do.end16.i:                                       ; preds = %do.end256
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 164, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i430

if.end.i430:                                      ; preds = %do.end16.i, %do.end256.if.end.i430_crit_edge
  %55 = ptrtoint ptr %updating_count.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %updating_count.i, align 4
  %dec.i = add i32 %56, -1
  store i32 %dec.i, ptr %updating_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool30.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end.i430.media_request_unlock_for_update.exit_crit_edge

if.end.i430.media_request_unlock_for_update.exit_crit_edge: ; preds = %if.end.i430
  call void @__sanitizer_cov_trace_pc() #8
  br label %media_request_unlock_for_update.exit

if.then31.i:                                      ; preds = %if.end.i430
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %state.i, align 4
  br label %media_request_unlock_for_update.exit

media_request_unlock_for_update.exit:             ; preds = %if.then31.i, %if.end.i430.media_request_unlock_for_update.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i428) #6
  tail call void @media_request_put(ptr noundef %call91) #6
  %58 = ptrtoint ptr %retval.0.i471 to i32
  br label %cleanup

if.end258:                                        ; preds = %v4l2_ctrls_find_req_obj.exit
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 -156
  %call261 = tail call i32 @try_set_ext_ctrls_common(ptr noundef %fh, ptr noundef %add.ptr, ptr noundef %cs, ptr noundef %vdev, i1 noundef zeroext %set) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.end258.if.end314_crit_edge, label %do.body264

if.end258.if.end314_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end314

do.body264:                                       ; preds = %if.end258
  %tobool266.not = icmp eq ptr %vdev, null
  br i1 %tobool266.not, label %do.end284, label %land.lhs.true299.critedge, !prof !54

do.end284:                                        ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 315, i32 noundef 9, ptr noundef null) #6
  br label %if.end314

land.lhs.true299.critedge:                        ; preds = %do.body264
  %dev_debug300 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 21
  %59 = ptrtoint ptr %dev_debug300 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dev_debug300, align 4
  %and301 = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and301)
  %tobool302.not = icmp eq i32 %and301, 0
  br i1 %tobool302.not, label %land.lhs.true299.critedge.if.end314_crit_edge, label %do.end306

land.lhs.true299.critedge.if.end314_crit_edge:    ; preds = %land.lhs.true299.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end314

do.end306:                                        ; preds = %land.lhs.true299.critedge
  %init_name.i.i432 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5, i32 3
  %61 = ptrtoint ptr %init_name.i.i432 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init_name.i.i432, align 8
  %tobool.not.i.i433 = icmp eq ptr %62, null
  br i1 %tobool.not.i.i433, label %if.end.i.i441, label %do.end306.video_device_node_name.exit443_crit_edge

do.end306.video_device_node_name.exit443_crit_edge: ; preds = %do.end306
  call void @__sanitizer_cov_trace_pc() #8
  br label %video_device_node_name.exit443

if.end.i.i441:                                    ; preds = %do.end306
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i434 = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5
  %63 = ptrtoint ptr %dev.i434 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i434, align 4
  br label %video_device_node_name.exit443

video_device_node_name.exit443:                   ; preds = %if.end.i.i441, %do.end306.video_device_node_name.exit443_crit_edge
  %retval.0.i.i436476 = phi ptr [ %64, %if.end.i.i441 ], [ %62, %do.end306.video_device_node_name.exit443_crit_edge ]
  %call310 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i436476, ptr noundef %retval.0.i.i436476, i32 noundef %call261) #9
  br label %if.end314

if.end314:                                        ; preds = %video_device_node_name.exit443, %land.lhs.true299.critedge.if.end314_crit_edge, %do.end284, %if.end258.if.end314_crit_edge
  %call2.i445 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %65 = ptrtoint ptr %updating_count.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %updating_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp5.i447 = icmp eq i32 %66, 0
  br i1 %cmp5.i447, label %do.end16.i448, label %if.end314.if.end.i451_crit_edge, !prof !54

if.end314.if.end.i451_crit_edge:                  ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i451

do.end16.i448:                                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 164, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i451

if.end.i451:                                      ; preds = %do.end16.i448, %if.end314.if.end.i451_crit_edge
  %67 = ptrtoint ptr %updating_count.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %updating_count.i, align 4
  %dec.i449 = add i32 %68, -1
  store i32 %dec.i449, ptr %updating_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i449)
  %tobool30.not.i450 = icmp eq i32 %dec.i449, 0
  br i1 %tobool30.not.i450, label %if.then31.i453, label %if.end.i451.media_request_unlock_for_update.exit454_crit_edge

if.end.i451.media_request_unlock_for_update.exit454_crit_edge: ; preds = %if.end.i451
  call void @__sanitizer_cov_trace_pc() #8
  br label %media_request_unlock_for_update.exit454

if.then31.i453:                                   ; preds = %if.end.i451
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %state.i, align 4
  br label %media_request_unlock_for_update.exit454

media_request_unlock_for_update.exit454:          ; preds = %if.then31.i453, %if.end.i451.media_request_unlock_for_update.exit454_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i445) #6
  tail call void @media_request_object_put(ptr noundef %retval.0.i) #6
  tail call void @media_request_put(ptr noundef %call91) #6
  br label %cleanup

cleanup:                                          ; preds = %media_request_unlock_for_update.exit454, %media_request_unlock_for_update.exit, %do.end200, %do.end144, %video_device_node_name.exit388, %land.lhs.true73.critedge.cleanup_crit_edge, %do.end58, %video_device_node_name.exit376, %land.lhs.true.critedge.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %22, %do.end144 ], [ -16, %do.end200 ], [ %58, %media_request_unlock_for_update.exit ], [ %call261, %media_request_unlock_for_update.exit454 ], [ -22, %do.end ], [ -22, %video_device_node_name.exit376 ], [ -22, %land.lhs.true.critedge.cleanup_crit_edge ], [ -22, %do.end58 ], [ -22, %video_device_node_name.exit388 ], [ -22, %land.lhs.true73.critedge.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_set_ext_ctrls_common(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v4l2_ctrl_request_complete(ptr noundef %req, ptr noundef %main_hdl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  %tobool1.not = icmp eq ptr %main_hdl, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup83_crit_edge, label %if.end

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup83

if.end:                                           ; preds = %entry
  %call = tail call ptr @media_request_object_find(ptr noundef nonnull %req, ptr noundef nonnull @req_ops, ptr noundef nonnull %main_hdl) #6
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 184) #10
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.then3.cleanup83_crit_edge, label %if.end7

if.then3.cleanup83_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup83

if.end7:                                          ; preds = %if.then3
  %nr_of_buckets = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %main_hdl, i32 0, i32 8
  %1 = ptrtoint ptr %nr_of_buckets to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %nr_of_buckets, align 4
  %conv = zext i16 %2 to i32
  %sub = shl nuw nsw i32 %conv, 3
  %mul = add nsw i32 %sub, -8
  %call8 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef nonnull %call7.i.i, i32 noundef %mul, ptr noundef nonnull @v4l2_ctrl_request_complete._key, ptr noundef nonnull @.str.18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.end7.if.then14_crit_edge

if.end7.if.then14_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.end12:                                         ; preds = %if.end7
  %call11 = tail call fastcc i32 @v4l2_ctrl_request_bind(ptr noundef nonnull %req, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %main_hdl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %cleanup, label %if.end12.if.then14_crit_edge

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %if.end12.if.then14_crit_edge, %if.end7.if.then14_crit_edge
  tail call void @v4l2_ctrl_handler_free(ptr noundef nonnull %call7.i.i) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup83

cleanup:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %request_is_queued = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %call7.i.i, i32 0, i32 10
  %3 = ptrtoint ptr %request_is_queued to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %request_is_queued, align 8
  %call16 = tail call ptr @media_request_object_find(ptr noundef nonnull %req, ptr noundef nonnull @req_ops, ptr noundef nonnull %main_hdl) #6
  br label %if.end17

if.end17:                                         ; preds = %cleanup, %if.end.if.end17_crit_edge
  %obj.1 = phi ptr [ %call, %if.end.if.end17_crit_edge ], [ %call16, %cleanup ]
  %ctrl_refs = getelementptr i8, ptr %obj.1, i32 -52
  %4 = ptrtoint ptr %ctrl_refs to i32
  call void @__asan_load4_noabort(i32 %4)
  %ref.0143 = load ptr, ptr %ctrl_refs, align 4
  %cmp.not144 = icmp eq ptr %ref.0143, %ctrl_refs
  br i1 %cmp.not144, label %if.end17.for.end54_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  br label %for.body

if.end17.for.end54_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end54

for.body:                                         ; preds = %cleanup43.for.body_crit_edge, %if.end17.for.body_crit_edge
  %ref.0145 = phi ptr [ %ref.0, %cleanup43.for.body_crit_edge ], [ %ref.0143, %if.end17.for.body_crit_edge ]
  %ctrl24 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %ref.0145, i32 0, i32 2
  %5 = ptrtoint ptr %ctrl24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl24, align 4
  %cluster = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cluster, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 20
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end39, label %if.then26

if.then26:                                        ; preds = %for.body
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handler.i, align 8
  %lock.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %16, i32 noundef 0) #6
  %ncontrols = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 4
  %17 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ncontrols, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp28141.not = icmp eq i32 %18, 0
  br i1 %cmp28141.not, label %if.then26.for.end_crit_edge, label %for.body30.lr.ph

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body30.lr.ph:                                 ; preds = %if.then26
  %cluster31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 3
  br label %for.body30

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.body30.lr.ph
  %i.0142 = phi i32 [ 0, %for.body30.lr.ph ], [ %inc, %for.body30.for.body30_crit_edge ]
  %19 = ptrtoint ptr %cluster31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cluster31, align 4
  %arrayidx32 = getelementptr ptr, ptr %20, i32 %i.0142
  %21 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx32, align 4
  tail call void @cur_to_new(ptr noundef %22) #6
  %inc = add nuw i32 %i.0142, 1
  %23 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ncontrols, align 8
  %cmp28 = icmp ult i32 %inc, %24
  br i1 %cmp28, label %for.body30.for.body30_crit_edge, label %for.body30.for.end_crit_edge

for.body30.for.end_crit_edge:                     ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30

for.end:                                          ; preds = %for.body30.for.end_crit_edge, %if.then26.for.end_crit_edge
  %ops = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 6
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 8
  %tobool33.not = icmp eq ptr %26, null
  br i1 %tobool33.not, label %for.end.cond.end_crit_edge, label %land.lhs.true

for.end.cond.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

land.lhs.true:                                    ; preds = %for.end
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool35.not = icmp eq ptr %28, null
  br i1 %tobool35.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call i32 %28(ptr noundef %10) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %for.end.cond.end_crit_edge
  tail call void @new_to_req(ptr noundef %ref.0145) #6
  br label %cleanup43.sink.split

if.end39:                                         ; preds = %for.body
  %valid_p_req = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %ref.0145, i32 0, i32 6
  %29 = ptrtoint ptr %valid_p_req to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %valid_p_req, align 2, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool40.not = icmp eq i8 %30, 0
  br i1 %tobool40.not, label %if.end42, label %if.end39.cleanup43_crit_edge

if.end39.cleanup43_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup43

if.end42:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %handler.i133 = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 2
  %31 = ptrtoint ptr %handler.i133 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %handler.i133, align 8
  %lock.i134 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %lock.i134 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lock.i134, align 4
  tail call void @mutex_lock_nested(ptr noundef %34, i32 noundef 0) #6
  tail call void @cur_to_req(ptr noundef %ref.0145) #6
  br label %cleanup43.sink.split

cleanup43.sink.split:                             ; preds = %if.end42, %cond.end
  %handler.i133.sink = phi ptr [ %handler.i133, %if.end42 ], [ %handler.i, %cond.end ]
  %35 = ptrtoint ptr %handler.i133.sink to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handler.i133.sink, align 8
  %lock.i136 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %lock.i136 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lock.i136, align 4
  tail call void @mutex_unlock(ptr noundef %38) #6
  br label %cleanup43

cleanup43:                                        ; preds = %cleanup43.sink.split, %if.end39.cleanup43_crit_edge
  %39 = ptrtoint ptr %ref.0145 to i32
  call void @__asan_load4_noabort(i32 %39)
  %ref.0 = load ptr, ptr %ref.0145, align 4
  %cmp.not = icmp eq ptr %ref.0, %ctrl_refs
  br i1 %cmp.not, label %cleanup43.for.end54_crit_edge, label %cleanup43.for.body_crit_edge

cleanup43.for.body_crit_edge:                     ; preds = %cleanup43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup43.for.end54_crit_edge:                    ; preds = %cleanup43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end54

for.end54:                                        ; preds = %cleanup43.for.end54_crit_edge, %if.end17.for.end54_crit_edge
  %lock = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %main_hdl, i32 0, i32 1
  %40 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %41, i32 noundef 0) #6
  %request_is_queued55 = getelementptr i8, ptr %obj.1, i32 -20
  %42 = ptrtoint ptr %request_is_queued55 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %request_is_queued55, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool56.not = icmp eq i8 %43, 0
  br i1 %tobool56.not, label %do.end, label %for.end54.if.end73_crit_edge, !prof !54

for.end54.if.end73_crit_edge:                     ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

do.end:                                           ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 386, i32 noundef 9, ptr noundef null) #6
  br label %if.end73

if.end73:                                         ; preds = %do.end, %for.end54.if.end73_crit_edge
  %requests_queued = getelementptr i8, ptr %obj.1, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %requests_queued) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end73.list_del_init.exit_crit_edge

if.end73.list_del_init.exit_crit_edge:            ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr i8, ptr %obj.1, i32 -4
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i, align 4
  %46 = ptrtoint ptr %requests_queued to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %requests_queued, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end73.list_del_init.exit_crit_edge
  %50 = ptrtoint ptr %requests_queued to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %requests_queued, ptr %requests_queued, align 4
  %prev.i3.i = getelementptr i8, ptr %obj.1, i32 -4
  %51 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %requests_queued, ptr %prev.i3.i, align 4
  %52 = ptrtoint ptr %request_is_queued55 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %request_is_queued55, align 4
  %53 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %54) #6
  tail call void @media_request_object_complete(ptr noundef %obj.1) #6
  tail call void @media_request_object_put(ptr noundef %obj.1) #6
  br label %cleanup83

cleanup83:                                        ; preds = %list_del_init.exit, %if.then14, %if.then3.cleanup83_crit_edge, %entry.cleanup83_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @v4l2_ctrl_request_bind(ptr noundef %req, ptr noundef %hdl, ptr noundef %from) unnamed_addr #0 align 64 {
entry:
  %new_ref.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %hdl, null
  %cmp.i = icmp eq ptr %hdl, %from
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end.i, label %if.end22.i, !prof !54

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef null) #6
  br label %if.end6

if.end22.i:                                       ; preds = %entry
  %error.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %hdl, i32 0, i32 9
  %0 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool23.not.i = icmp eq i32 %1, 0
  br i1 %tobool23.not.i, label %if.end26.i, label %if.end22.i.if.end6_crit_edge

if.end22.i.if.end6_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end26.i:                                       ; preds = %if.end22.i
  %lock.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %hdl, i32 0, i32 1
  %2 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i, align 4
  %cmp28.not.i = icmp eq ptr %3, %hdl
  br i1 %cmp28.not.i, label %if.end26.i.if.end50.i_crit_edge, label %do.end44.i, !prof !56

if.end26.i.if.end50.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

do.end44.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef null) #6
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end44.i, %if.end26.i.if.end50.i_crit_edge
  %lock58.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %from, i32 0, i32 1
  %4 = ptrtoint ptr %lock58.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock58.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #6
  %ctrl_refs.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %from, i32 0, i32 3
  %6 = ptrtoint ptr %ctrl_refs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %ref.0.i20 = load ptr, ptr %ctrl_refs.i, align 4
  %cmp61.not.i21 = icmp eq ptr %ref.0.i20, %ctrl_refs.i
  br i1 %cmp61.not.i21, label %if.end50.i.if.then_crit_edge, label %if.end50.i.for.body.i_crit_edge

if.end50.i.for.body.i_crit_edge:                  ; preds = %if.end50.i
  br label %for.body.i

if.end50.i.if.then_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end50.i.for.body.i_crit_edge
  %ref.0.i22 = phi ptr [ %ref.0.i, %cleanup.i.for.body.i_crit_edge ], [ %ref.0.i20, %if.end50.i.for.body.i_crit_edge ]
  %ctrl64.i = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %ref.0.i22, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl64.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl64.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_ref.i) #6
  %9 = ptrtoint ptr %new_ref.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_ref.i, align 4, !annotation !58
  %from_other_dev.i = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %ref.0.i22, i32 0, i32 4
  %10 = ptrtoint ptr %from_other_dev.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %from_other_dev.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool65.not.i = icmp eq i8 %11, 0
  br i1 %tobool65.not.i, label %if.end67.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end67.i:                                       ; preds = %for.body.i
  %call.i = call i32 @handler_new_ref(ptr noundef %hdl, ptr noundef %8, ptr noundef nonnull %new_ref.i, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool68.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool68.not.i, label %if.end67.i.cleanup.i_crit_edge, label %v4l2_ctrl_request_clone.exit

if.end67.i.cleanup.i_crit_edge:                   ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end67.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_ref.i) #6
  %12 = ptrtoint ptr %ref.0.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ref.0.i = load ptr, ptr %ref.0.i22, align 4
  %cmp61.not.i = icmp eq ptr %ref.0.i, %ctrl_refs.i
  br i1 %cmp61.not.i, label %cleanup.i.if.then_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.i.if.then_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

v4l2_ctrl_request_clone.exit:                     ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_ref.i) #6
  %13 = ptrtoint ptr %lock58.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lock58.i, align 4
  call void @mutex_unlock(ptr noundef %14) #6
  br label %if.end6

if.then:                                          ; preds = %cleanup.i.if.then_crit_edge, %if.end50.i.if.then_crit_edge
  %15 = ptrtoint ptr %lock58.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock58.i, align 4
  call void @mutex_unlock(ptr noundef %16) #6
  %req_obj = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %hdl, i32 0, i32 13
  %call1 = call i32 @media_request_object_bind(ptr noundef %req, ptr noundef nonnull @req_ops, ptr noundef %from, i1 noundef zeroext false, ptr noundef %req_obj) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.then
  %17 = ptrtoint ptr %lock58.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock58.i, align 4
  call void @mutex_lock_nested(ptr noundef %18, i32 noundef 0) #6
  %requests = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %hdl, i32 0, i32 11
  %requests4 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %from, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %from, i32 0, i32 11, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %requests, ptr noundef %20, ptr noundef %requests4) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then3.list_add_tail.exit_crit_edge

if.then3.list_add_tail.exit_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %requests, ptr %prev.i, align 4
  %22 = ptrtoint ptr %requests to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %requests4, ptr %requests, align 4
  %prev3.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %hdl, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %requests, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then3.list_add_tail.exit_crit_edge
  %25 = ptrtoint ptr %lock58.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock58.i, align 4
  call void @mutex_unlock(ptr noundef %26) #6
  br label %if.end6

if.end6:                                          ; preds = %list_add_tail.exit, %if.then.if.end6_crit_edge, %v4l2_ctrl_request_clone.exit, %if.end22.i.if.end6_crit_edge, %do.end.i
  %ret.0 = phi i32 [ %call.i, %v4l2_ctrl_request_clone.exit ], [ %call1, %if.then.if.end6_crit_edge ], [ 0, %list_add_tail.exit ], [ %1, %if.end22.i.if.end6_crit_edge ], [ -22, %do.end.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cur_to_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @new_to_req(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cur_to_req(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_request_object_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v4l2_ctrl_request_setup(ptr noundef %req, ptr noundef %main_hdl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  %tobool1.not = icmp eq ptr %main_hdl, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup137_crit_edge, label %if.end

entry.cleanup137_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup137

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.media_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end25, label %do.end, !prof !56

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 406, i32 noundef 9, ptr noundef null) #6
  br label %cleanup137

if.end25:                                         ; preds = %if.end
  %call = tail call ptr @media_request_object_find(ptr noundef nonnull %req, ptr noundef nonnull @req_ops, ptr noundef nonnull %main_hdl) #6
  %tobool26.not = icmp eq ptr %call, null
  br i1 %tobool26.not, label %if.end25.cleanup137_crit_edge, label %if.end28

if.end25.cleanup137_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup137

if.end28:                                         ; preds = %if.end25
  %completed = getelementptr inbounds %struct.media_request_object, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %completed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %completed, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool29.not = icmp eq i8 %3, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @media_request_object_put(ptr noundef nonnull %call) #6
  br label %cleanup137

if.end31:                                         ; preds = %if.end28
  %add.ptr = getelementptr i8, ptr %call, i32 -156
  %ctrl_refs = getelementptr i8, ptr %call, i32 -52
  %4 = ptrtoint ptr %ctrl_refs to i32
  call void @__asan_load4_noabort(i32 %4)
  %ref.0201 = load ptr, ptr %ctrl_refs, align 4
  %cmp37.not202 = icmp eq ptr %ref.0201, %ctrl_refs
  br i1 %cmp37.not202, label %if.end31.for.cond50.preheader_crit_edge, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  br label %for.body

if.end31.for.cond50.preheader_crit_edge:          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond50.preheader

for.cond50.preheader:                             ; preds = %for.body.for.cond50.preheader_crit_edge, %if.end31.for.cond50.preheader_crit_edge
  %5 = ptrtoint ptr %ctrl_refs to i32
  call void @__asan_load4_noabort(i32 %5)
  %ref.1212 = load ptr, ptr %ctrl_refs, align 4
  %cmp53.not213 = icmp eq ptr %ref.1212, %ctrl_refs
  br i1 %cmp53.not213, label %for.cond50.preheader.for.end136_crit_edge, label %for.cond50.preheader.for.body56_crit_edge

for.cond50.preheader.for.body56_crit_edge:        ; preds = %for.cond50.preheader
  br label %for.body56

for.cond50.preheader.for.end136_crit_edge:        ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end136

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end31.for.body_crit_edge
  %ref.0203 = phi ptr [ %ref.0, %for.body.for.body_crit_edge ], [ %ref.0201, %if.end31.for.body_crit_edge ]
  %req_done = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %ref.0203, i32 0, i32 5
  %6 = ptrtoint ptr %req_done to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %req_done, align 1
  %7 = ptrtoint ptr %ref.0203 to i32
  call void @__asan_load4_noabort(i32 %7)
  %ref.0 = load ptr, ptr %ref.0203, align 4
  %cmp37.not = icmp eq ptr %ref.0, %ctrl_refs
  br i1 %cmp37.not, label %for.body.for.cond50.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.cond50.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond50.preheader

for.body56:                                       ; preds = %cleanup124.for.body56_crit_edge, %for.cond50.preheader.for.body56_crit_edge
  %ref.1214 = phi ptr [ %ref.1, %cleanup124.for.body56_crit_edge ], [ %ref.1212, %for.cond50.preheader.for.body56_crit_edge ]
  %ctrl57 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %ref.1214, i32 0, i32 2
  %8 = ptrtoint ptr %ctrl57 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl57, align 4
  %cluster = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cluster, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %req_done58 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %ref.1214, i32 0, i32 5
  %14 = ptrtoint ptr %req_done58 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %req_done58, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool59.not = icmp eq i8 %15, 0
  br i1 %tobool59.not, label %lor.lhs.false60, label %for.body56.cleanup124_crit_edge

for.body56.cleanup124_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup124

lor.lhs.false60:                                  ; preds = %for.body56
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 20
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool61.not = icmp eq i32 %and, 0
  br i1 %tobool61.not, label %if.end63, label %lor.lhs.false60.cleanup124_crit_edge

lor.lhs.false60.cleanup124_crit_edge:             ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup124

if.end63:                                         ; preds = %lor.lhs.false60
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handler.i, align 8
  %lock.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %21, i32 noundef 0) #6
  %ncontrols = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 4
  %22 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ncontrols, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp65204.not = icmp eq i32 %23, 0
  br i1 %cmp65204.not, label %if.end63.if.then81_crit_edge, label %for.body66.lr.ph

if.end63.if.then81_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then81

for.body66.lr.ph:                                 ; preds = %if.end63
  %cluster67 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 3
  br label %for.body66

for.body66:                                       ; preds = %for.inc78.for.body66_crit_edge, %for.body66.lr.ph
  %i.0205 = phi i32 [ 0, %for.body66.lr.ph ], [ %inc, %for.inc78.for.body66_crit_edge ]
  %24 = ptrtoint ptr %cluster67 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cluster67, align 4
  %arrayidx68 = getelementptr ptr, ptr %25, i32 %i.0205
  %26 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx68, align 4
  %tobool69.not = icmp eq ptr %27, null
  br i1 %tobool69.not, label %for.body66.for.inc78_crit_edge, label %if.then70

for.body66.for.inc78_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc78

if.then70:                                        ; preds = %for.body66
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 8
  %call73 = tail call ptr @find_ref(ptr noundef %add.ptr, i32 noundef %29) #6
  %valid_p_req = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %call73, i32 0, i32 6
  %30 = ptrtoint ptr %valid_p_req to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %valid_p_req, align 2, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool74.not = icmp eq i8 %31, 0
  br i1 %tobool74.not, label %if.then70.for.inc78_crit_edge, label %for.cond83.preheader

if.then70.for.inc78_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc78

for.cond83.preheader:                             ; preds = %if.then70
  %32 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ncontrols, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp85206.not = icmp eq i32 %33, 0
  br i1 %cmp85206.not, label %for.cond83.preheader.for.end102_crit_edge, label %for.cond83.preheader.for.body86_crit_edge

for.cond83.preheader.for.body86_crit_edge:        ; preds = %for.cond83.preheader
  br label %for.body86

for.cond83.preheader.for.end102_crit_edge:        ; preds = %for.cond83.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end102

for.inc78:                                        ; preds = %if.then70.for.inc78_crit_edge, %for.body66.for.inc78_crit_edge
  %inc = add nuw i32 %i.0205, 1
  %34 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ncontrols, align 8
  %cmp65 = icmp ult i32 %inc, %35
  br i1 %cmp65, label %for.inc78.for.body66_crit_edge, label %for.inc78.if.then81_crit_edge

for.inc78.if.then81_crit_edge:                    ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then81

for.inc78.for.body66_crit_edge:                   ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body66

if.then81:                                        ; preds = %for.inc78.if.then81_crit_edge, %if.end63.if.then81_crit_edge
  %36 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %handler.i, align 8
  %lock.i197 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %lock.i197 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lock.i197, align 4
  tail call void @mutex_unlock(ptr noundef %39) #6
  br label %cleanup124

for.body86:                                       ; preds = %for.inc100.for.body86_crit_edge, %for.cond83.preheader.for.body86_crit_edge
  %i.1207 = phi i32 [ %inc101, %for.inc100.for.body86_crit_edge ], [ 0, %for.cond83.preheader.for.body86_crit_edge ]
  %40 = ptrtoint ptr %cluster67 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cluster67, align 4
  %arrayidx88 = getelementptr ptr, ptr %41, i32 %i.1207
  %42 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx88, align 4
  %tobool89.not = icmp eq ptr %43, null
  br i1 %tobool89.not, label %for.body86.for.inc100_crit_edge, label %if.then90

for.body86.for.inc100_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc100

if.then90:                                        ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #8
  %id94 = getelementptr inbounds %struct.v4l2_ctrl, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %id94 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id94, align 8
  %call95 = tail call ptr @find_ref(ptr noundef %add.ptr, i32 noundef %45) #6
  tail call void @req_to_new(ptr noundef %call95) #6
  %46 = ptrtoint ptr %cluster67 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cluster67, align 4
  %arrayidx97 = getelementptr ptr, ptr %47, i32 %i.1207
  %48 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx97, align 4
  %is_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %is_new to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load = load i32, ptr %is_new, align 4
  %bf.set = or i32 %bf.load, 1073741824
  store i32 %bf.set, ptr %is_new, align 4
  %req_done98 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %call95, i32 0, i32 5
  %51 = ptrtoint ptr %req_done98 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %req_done98, align 1
  br label %for.inc100

for.inc100:                                       ; preds = %if.then90, %for.body86.for.inc100_crit_edge
  %inc101 = add nuw i32 %i.1207, 1
  %52 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ncontrols, align 8
  %cmp85 = icmp ult i32 %inc101, %53
  br i1 %cmp85, label %for.inc100.for.body86_crit_edge, label %for.inc100.for.end102_crit_edge

for.inc100.for.end102_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end102

for.inc100.for.body86_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body86

for.end102:                                       ; preds = %for.inc100.for.end102_crit_edge, %for.cond83.preheader.for.end102_crit_edge
  %is_auto = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 5
  %54 = ptrtoint ptr %is_auto to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load103 = load i32, ptr %is_auto, align 4
  %55 = and i32 %bf.load103, 138412032
  call void @__sanitizer_cov_trace_const_cmp4(i32 138412032, i32 %55)
  %.not = icmp eq i32 %55, 138412032
  br i1 %.not, label %is_cur_manual.exit, label %for.end102.if.end119_crit_edge

for.end102.if.end119_crit_edge:                   ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

is_cur_manual.exit:                               ; preds = %for.end102
  %cur.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 23
  %56 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cur.i, align 8
  %bf.lshr2.i = lshr i32 %bf.load103, 13
  %bf.clear3.i = and i32 %bf.lshr2.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %bf.clear3.i)
  %cmp.i = icmp eq i32 %57, %bf.clear3.i
  br i1 %cmp.i, label %is_cur_manual.exit.if.end119_crit_edge, label %if.then112

is_cur_manual.exit.if.end119_crit_edge:           ; preds = %is_cur_manual.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

if.then112:                                       ; preds = %is_cur_manual.exit
  %p_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 25
  %58 = ptrtoint ptr %p_new to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %p_new, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %bf.clear3.i)
  %cmp116 = icmp eq i32 %61, %bf.clear3.i
  br i1 %cmp116, label %if.then117, label %if.then112.if.end119_crit_edge

if.then112.if.end119_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

if.then117:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @update_from_auto_cluster(ptr noundef %13) #6
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.then112.if.end119_crit_edge, %is_cur_manual.exit.if.end119_crit_edge, %for.end102.if.end119_crit_edge
  %call120 = tail call i32 @try_or_set_cluster(ptr noundef null, ptr noundef %13, i1 noundef zeroext true, i32 noundef 0) #6
  %62 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %handler.i, align 8
  %lock.i199 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %lock.i199 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lock.i199, align 4
  tail call void @mutex_unlock(ptr noundef %65) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end119.cleanup124_crit_edge, label %if.end119.for.end136_crit_edge

if.end119.for.end136_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end136

if.end119.cleanup124_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup124

cleanup124:                                       ; preds = %if.end119.cleanup124_crit_edge, %if.then81, %lor.lhs.false60.cleanup124_crit_edge, %for.body56.cleanup124_crit_edge
  %66 = ptrtoint ptr %ref.1214 to i32
  call void @__asan_load4_noabort(i32 %66)
  %ref.1 = load ptr, ptr %ref.1214, align 4
  %cmp53.not = icmp eq ptr %ref.1, %ctrl_refs
  br i1 %cmp53.not, label %cleanup124.for.end136_crit_edge, label %cleanup124.for.body56_crit_edge

cleanup124.for.body56_crit_edge:                  ; preds = %cleanup124
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body56

cleanup124.for.end136_crit_edge:                  ; preds = %cleanup124
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end136

for.end136:                                       ; preds = %cleanup124.for.end136_crit_edge, %if.end119.for.end136_crit_edge, %for.cond50.preheader.for.end136_crit_edge
  %ret.2 = phi i32 [ 0, %for.cond50.preheader.for.end136_crit_edge ], [ 0, %cleanup124.for.end136_crit_edge ], [ %call120, %if.end119.for.end136_crit_edge ]
  tail call void @media_request_object_put(ptr noundef nonnull %call) #6
  br label %cleanup137

cleanup137:                                       ; preds = %for.end136, %if.then30, %if.end25.cleanup137_crit_edge, %do.end, %entry.cleanup137_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -16, %if.then30 ], [ %ret.2, %for.end136 ], [ 0, %entry.cleanup137_crit_edge ], [ 0, %if.end25.cleanup137_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_ref(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @req_to_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_from_auto_cluster(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_or_set_cluster(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v4l2_ctrl_request_queue(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.media_request_object, ptr %obj, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #6
  %requests_queued = getelementptr i8, ptr %obj, i32 -8
  %requests_queued1 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %requests_queued, ptr noundef %5, ptr noundef %requests_queued1) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %requests_queued, ptr %prev.i, align 4
  %7 = ptrtoint ptr %requests_queued to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %requests_queued1, ptr %requests_queued, align 4
  %prev3.i.i = getelementptr i8, ptr %obj, i32 -4
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %requests_queued, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %request_is_queued = getelementptr i8, ptr %obj, i32 -20
  %10 = ptrtoint ptr %request_is_queued to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %request_is_queued, align 4
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %12) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v4l2_ctrl_request_unbind(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.media_request_object, ptr %obj, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #6
  %requests = getelementptr i8, ptr %obj, i32 -16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %requests) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr i8, ptr %obj, i32 -12
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %requests to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %requests, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %requests to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %requests, ptr %requests, align 4
  %prev.i3.i = getelementptr i8, ptr %obj, i32 -12
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %requests, ptr %prev.i3.i, align 4
  %request_is_queued = getelementptr i8, ptr %obj, i32 -20
  %12 = ptrtoint ptr %request_is_queued to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %request_is_queued, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %list_del_init.exit.if.end_crit_edge, label %if.then

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  %requests_queued = getelementptr i8, ptr %obj, i32 -8
  %call.i.i8 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %requests_queued) #6
  br i1 %call.i.i8, label %if.end.i.i11, label %if.then.list_del_init.exit13_crit_edge

if.then.list_del_init.exit13_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit13

if.end.i.i11:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i9 = getelementptr i8, ptr %obj, i32 -4
  %14 = ptrtoint ptr %prev.i.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i9, align 4
  %16 = ptrtoint ptr %requests_queued to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %requests_queued, align 4
  %prev1.i.i.i10 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i10, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit13

list_del_init.exit13:                             ; preds = %if.end.i.i11, %if.then.list_del_init.exit13_crit_edge
  %20 = ptrtoint ptr %requests_queued to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %requests_queued, ptr %requests_queued, align 4
  %prev.i3.i12 = getelementptr i8, ptr %obj, i32 -4
  %21 = ptrtoint ptr %prev.i3.i12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %requests_queued, ptr %prev.i3.i12, align 4
  %22 = ptrtoint ptr %request_is_queued to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %request_is_queued, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit13, %list_del_init.exit.if.end_crit_edge
  %23 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %24) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v4l2_ctrl_request_release(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %obj, i32 -156
  tail call void @v4l2_ctrl_handler_free(ptr noundef %add.ptr) #6
  tail call void @kfree(ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_request_object_bind(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handler_new_ref(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !38, !40, !42, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/v4l2-core/v4l2-ctrls-request.c", i32 130, i32 6}
!2 = !{ptr @__ksymtab_v4l2_ctrl_request_hdl_find, !3, !"__ksymtab_v4l2_ctrl_request_hdl_find", i1 false, i1 false}
!3 = !{!"../drivers/media/v4l2-core/v4l2-ctrls-request.c", i32 139, i32 1}
!4 = !{ptr @__ksymtab_v4l2_ctrl_request_hdl_ctrl_find, !5, !"__ksymtab_v4l2_ctrl_request_hdl_ctrl_find", i1 false, i1 false}
!5 = !{!"../drivers/media/v4l2-core/v4l2-ctrls-request.c", i32 148, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/v4l2-core/v4l2-ctrls-request.c", i32 272, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @try_set_ext_ctrls_request._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @try_set_ext_ctrls_request._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/v4l2-core/v4l2-ctrls-request.c", i32 278, i32 3}
!13 = !{ptr @try_set_ext_ctrls_request._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @try_set_ext_ctrls_request._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/v4l2-core/v4l2-ctrls-request.c", i32 285, i32 3}
!17 = !{ptr @try_set_ext_ctrls_request._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @try_set_ext_ctrls_request._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/v4l2-core/v4l2-ctrls-request.c", i32 292, i32 3}
!21 = !{ptr @try_set_ext_ctrls_request._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @try_set_ext_ctrls_request._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/v4l2-core/v4l2-ctrls-request.c", i32 300, i32 3}
!25 = !{ptr @try_set_ext_ctrls_request._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @try_set_ext_ctrls_request._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/v4l2-core/v4l2-ctrls-request.c", i32 313, i32 3}
!29 = !{ptr @try_set_ext_ctrls_request._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @try_set_ext_ctrls_request._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @v4l2_ctrl_request_complete._key, !32, !"_key", i1 false, i1 false}
!32 = !{!"../drivers/media/v4l2-core/v4l2-ctrls-request.c", i32 348, i32 9}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__ksymtab_v4l2_ctrl_request_complete, !35, !"__ksymtab_v4l2_ctrl_request_complete", i1 false, i1 false}
!35 = !{!"../drivers/media/v4l2-core/v4l2-ctrls-request.c", i32 393, i32 1}
!36 = !{ptr @__ksymtab_v4l2_ctrl_request_setup, !37, !"__ksymtab_v4l2_ctrl_request_setup", i1 false, i1 false}
!37 = !{!"../drivers/media/v4l2-core/v4l2-ctrls-request.c", i32 496, i32 1}
!38 = !{ptr @req_ops, !39, !"req_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/v4l2-core/v4l2-ctrls-request.c", i32 119, i32 46}
!40 = !{ptr @v4l2_ctrls_find_req_obj._key, !41, !"_key", i1 false, i1 false}
!41 = !{!"../drivers/media/v4l2-core/v4l2-ctrls-request.c", i32 206, i32 8}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/media/media-request.h", i32 116, i32 7}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i8 0, i8 2}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2148592848, i64 2148592880, i64 2148592909, i64 2148592943, i64 2148592974, i64 2148592997}
!58 = !{!"auto-init"}
