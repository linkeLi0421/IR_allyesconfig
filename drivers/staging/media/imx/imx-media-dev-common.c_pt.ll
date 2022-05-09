; ModuleID = '/llk/IR_all_yes/drivers/staging/media/imx/imx-media-dev-common.c_pt.bc'
source_filename = "../drivers/staging/media/imx/imx-media-dev-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+imx_media_probe_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_media_probe_complete\09\09\09\09"
module asm "\09.long\09__crc_imx_media_probe_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_media_probe_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_media_probe_complete\22\09\09\09\09\09"
module asm "__kstrtabns_imx_media_probe_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_media_dev_init\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_media_dev_init\09\09\09\09"
module asm "\09.long\09__crc_imx_media_dev_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_media_dev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_media_dev_init\22\09\09\09\09\09"
module asm "__kstrtabns_imx_media_dev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_media_dev_notifier_register\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_media_dev_notifier_register\09\09\09\09"
module asm "\09.long\09__crc_imx_media_dev_notifier_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_media_dev_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_media_dev_notifier_register\22\09\09\09\09\09"
module asm "__kstrtabns_imx_media_dev_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.imx_media_dev = type { %struct.media_device, %struct.v4l2_device, %struct.media_pipeline, %struct.mutex, %struct.list_head, [2 x ptr], %struct.v4l2_async_notifier, ptr, [2 x [6 x ptr]] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.imx_media_pad_vdev = type { ptr, %struct.list_head }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.79, %union.anon.80, ptr, i32, i8 }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }

@__kstrtab_imx_media_probe_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_media_probe_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_media_probe_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_media_probe_complete to i32), ptr @__kstrtab_imx_media_probe_complete, ptr @__kstrtabns_imx_media_probe_complete }, section "___ksymtab_gpl+imx_media_probe_complete", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imx-media\00", [22 x i8] zeroinitializer }, align 32
@imx_media_md_ops = internal constant { %struct.media_device_ops, [44 x i8] } { %struct.media_device_ops { ptr @imx_media_link_notify, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@imx_media_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&imxmd->mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@imx_media_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Failed to register v4l2_device: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_media_dev_init\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/staging/media/imx/imx-media-dev-common.c\00", [47 x i8] zeroinitializer }, align 32
@imx_media_dev_init._entry_ptr = internal global ptr @imx_media_dev_init._entry, section ".printk_index", align 4
@__kstrtab_imx_media_dev_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_media_dev_init = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_media_dev_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_media_dev_init to i32), ptr @__kstrtab_imx_media_dev_init, ptr @__kstrtabns_imx_media_dev_init }, section "___ksymtab_gpl+imx_media_dev_init", align 4
@imx_media_dev_notifier_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s: no subdevs\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"imx_media_dev_notifier_register\00", [32 x i8] zeroinitializer }, align 32
@imx_media_dev_notifier_register._entry_ptr = internal global ptr @imx_media_dev_notifier_register._entry, section ".printk_index", align 4
@imx_media_notifier_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @imx_media_subdev_bound, ptr @imx_media_probe_complete, ptr null }, [20 x i8] zeroinitializer }, align 32
@imx_media_dev_notifier_register._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.5, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: v4l2_async_nf_register failed with %d\0A\00", [51 x i8] zeroinitializer }, align 32
@imx_media_dev_notifier_register._entry_ptr.10 = internal global ptr @imx_media_dev_notifier_register._entry.8, section ".printk_index", align 4
@__kstrtab_imx_media_dev_notifier_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_media_dev_notifier_register = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_media_dev_notifier_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_media_dev_notifier_register to i32), ptr @__kstrtab_imx_media_dev_notifier_register, ptr @__kstrtabns_imx_media_dev_notifier_register }, section "___ksymtab_gpl+imx_media_dev_notifier_register", align 4
@imx_media_add_vdev_to_pad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: %s:%u has no vdev list!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"imx_media_add_vdev_to_pad\00", [38 x i8] zeroinitializer }, align 32
@imx_media_add_vdev_to_pad._entry_ptr = internal global ptr @imx_media_add_vdev_to_pad._entry, section ".printk_index", align 4
@imx_media_add_vdev_to_pad.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.12, ptr @.str.5, ptr @.str.14, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx_media_common\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adding %s to pad %s:%u\0A\00", [40 x i8] zeroinitializer }, align 32
@imx_media_link_notify.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.15, ptr @.str.5, ptr @.str.16, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx_media_link_notify\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reset controls for %s\0A\00", [41 x i8] zeroinitializer }, align 32
@imx_media_link_notify._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"imx_media_dev_common:296:(vfd->ctrl_handler)->_lock\00", [44 x i8] zeroinitializer }, align 32
@imx_media_link_notify.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.15, ptr @.str.5, ptr @.str.18, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"refresh controls for %s\0A\00", [39 x i8] zeroinitializer }, align 32
@imx_media_inherit_controls.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.19, ptr @.str.5, ptr @.str.20, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"imx_media_inherit_controls\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"adding controls to %s from %s\0A\00", [33 x i8] zeroinitializer }, align 32
@imx_media_subdev_bound.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.21, ptr @.str.5, ptr @.str.22, i8 0, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx_media_subdev_bound\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"subdev %s bound\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 360, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"imx_media_md_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 344, i32 38 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 364, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 371, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 377, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 402, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"imx_media_notifier_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 339, i32 52 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 410, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 85, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 100, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 292, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 296, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 304, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 220, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [52 x i8] c"../drivers/staging/media/imx/imx-media-dev-common.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 29, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__ksymtab_imx_media_dev_init, ptr @__ksymtab_imx_media_dev_notifier_register, ptr @__ksymtab_imx_media_probe_complete, ptr @imx_media_add_vdev_to_pad._entry, ptr @imx_media_add_vdev_to_pad._entry_ptr, ptr @imx_media_dev_init._entry, ptr @imx_media_dev_init._entry_ptr, ptr @imx_media_dev_notifier_register._entry, ptr @imx_media_dev_notifier_register._entry.8, ptr @imx_media_dev_notifier_register._entry_ptr, ptr @imx_media_dev_notifier_register._entry_ptr.10, ptr @.str, ptr @imx_media_md_ops, ptr @imx_media_dev_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @imx_media_notifier_ops, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @imx_media_link_notify._key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_md_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_dev_notifier_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_notifier_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_dev_notifier_register._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_add_vdev_to_pad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_link_notify._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_media_probe_complete(ptr noundef %notifier) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %notifier, i32 -988
  %mutex = getelementptr i8, ptr %notifier, i32 -108
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %subdevs.i = getelementptr i8, ptr %notifier, i32 -372
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %subdevs.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %subdevs.i
  br i1 %cmp.not.i, label %for.cond.i.imx_media_create_csi2_links.exit_crit_edge, label %for.body.i

for.cond.i.imx_media_create_csi2_links.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %imx_media_create_csi2_links.exit

for.body.i:                                       ; preds = %for.cond.i
  %grp_id.i = getelementptr i8, ptr %.pn.i, i32 68
  %1 = ptrtoint ptr %grp_id.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %grp_id.i, align 4
  %cmp3.i = icmp eq i32 %2, 256
  br i1 %cmp3.i, label %for.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  %sd.0.le.i = getelementptr i8, ptr %.pn.i, i32 -80
  %tobool.not.i = icmp eq ptr %sd.0.le.i, null
  br i1 %tobool.not.i, label %for.end.i.imx_media_create_csi2_links.exit_crit_edge, label %for.cond17.preheader.i

for.end.i.imx_media_create_csi2_links.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %imx_media_create_csi2_links.exit

for.cond17.preheader.i:                           ; preds = %for.end.i
  %3 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn5662.i = load ptr, ptr %subdevs.i, align 4
  %cmp21.not64.i = icmp eq ptr %.pn5662.i, %subdevs.i
  br i1 %cmp21.not64.i, label %for.cond17.preheader.i.imx_media_create_csi2_links.exit_crit_edge, label %for.cond17.preheader.i.for.body23.i_crit_edge

for.cond17.preheader.i.for.body23.i_crit_edge:    ; preds = %for.cond17.preheader.i
  br label %for.body23.i

for.cond17.preheader.i.imx_media_create_csi2_links.exit_crit_edge: ; preds = %for.cond17.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %imx_media_create_csi2_links.exit

for.body23.i:                                     ; preds = %for.inc35.i.for.body23.i_crit_edge, %for.cond17.preheader.i.for.body23.i_crit_edge
  %.pn5665.i = phi ptr [ %.pn56.i, %for.inc35.i.for.body23.i_crit_edge ], [ %.pn5662.i, %for.cond17.preheader.i.for.body23.i_crit_edge ]
  %grp_id24.i = getelementptr i8, ptr %.pn5665.i, i32 68
  %4 = ptrtoint ptr %grp_id24.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %grp_id24.i, align 4
  %6 = and i32 %5, 69120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %for.body23.i.for.inc35.i_crit_edge, label %if.end34.i

for.body23.i.for.inc35.i_crit_edge:               ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc35.i

if.end34.i:                                       ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #6
  %sd.166.i = getelementptr i8, ptr %.pn5665.i, i32 -80
  %call.i = tail call i32 @v4l2_create_fwnode_links(ptr noundef nonnull %sd.0.le.i, ptr noundef %sd.166.i) #4
  br label %for.inc35.i

for.inc35.i:                                      ; preds = %if.end34.i, %for.body23.i.for.inc35.i_crit_edge
  %8 = ptrtoint ptr %.pn5665.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn56.i = load ptr, ptr %.pn5665.i, align 4
  %cmp21.not.i = icmp eq ptr %.pn56.i, %subdevs.i
  br i1 %cmp21.not.i, label %for.inc35.i.imx_media_create_csi2_links.exit_crit_edge, label %for.inc35.i.for.body23.i_crit_edge

for.inc35.i.for.body23.i_crit_edge:               ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body23.i

for.inc35.i.imx_media_create_csi2_links.exit_crit_edge: ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %imx_media_create_csi2_links.exit

imx_media_create_csi2_links.exit:                 ; preds = %for.inc35.i.imx_media_create_csi2_links.exit_crit_edge, %for.cond17.preheader.i.imx_media_create_csi2_links.exit_crit_edge, %for.end.i.imx_media_create_csi2_links.exit_crit_edge, %for.cond.i.imx_media_create_csi2_links.exit_crit_edge
  %9 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn36.i.i = load ptr, ptr %subdevs.i, align 4
  %cmp.not37.i.i = icmp eq ptr %.pn36.i.i, %subdevs.i
  br i1 %cmp.not37.i.i, label %imx_media_create_csi2_links.exit.if.end.i_crit_edge, label %imx_media_create_csi2_links.exit.for.body.i.i_crit_edge

imx_media_create_csi2_links.exit.for.body.i.i_crit_edge: ; preds = %imx_media_create_csi2_links.exit
  br label %for.body.i.i

imx_media_create_csi2_links.exit.if.end.i_crit_edge: ; preds = %imx_media_create_csi2_links.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

for.cond.loopexit.i.i:                            ; preds = %for.body9.i.i.for.cond.loopexit.i.i_crit_edge, %if.end.i.i.for.cond.loopexit.i.i_crit_edge
  %10 = ptrtoint ptr %.pn38.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i.i = load ptr, ptr %.pn38.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %subdevs.i
  br i1 %cmp.not.i.i, label %for.cond.loopexit.i.i.if.end.i_crit_edge, label %for.cond.loopexit.i.i.for.body.i.i_crit_edge

for.cond.loopexit.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.cond.loopexit.i.i.if.end.i_crit_edge:         ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.cond.loopexit.i.i.for.body.i.i_crit_edge, %imx_media_create_csi2_links.exit.for.body.i.i_crit_edge
  %.pn38.i.i = phi ptr [ %.pn.i.i, %for.cond.loopexit.i.i.for.body.i.i_crit_edge ], [ %.pn36.i.i, %imx_media_create_csi2_links.exit.for.body.i.i_crit_edge ]
  %num_pads.i.i = getelementptr i8, ptr %.pn38.i.i, i32 -48
  %11 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %12 to i32
  %13 = shl nuw nsw i32 %conv.i.i, 3
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %call5.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef %13, i32 noundef 3520) #4
  %tobool.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.i.unlock.thread_crit_edge, label %if.end.i.i

for.body.i.i.unlock.thread_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock.thread

if.end.i.i:                                       ; preds = %for.body.i.i
  %host_priv.i.i = getelementptr i8, ptr %.pn38.i.i, i32 76
  %16 = ptrtoint ptr %host_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i.i.i, ptr %host_priv.i.i, align 4
  %17 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp734.not.i.i = icmp eq i16 %18, 0
  br i1 %cmp734.not.i.i, label %if.end.i.i.for.cond.loopexit.i.i_crit_edge, label %if.end.i.i.for.body9.i.i_crit_edge

if.end.i.i.for.body9.i.i_crit_edge:               ; preds = %if.end.i.i
  br label %for.body9.i.i

if.end.i.i.for.cond.loopexit.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.loopexit.i.i

for.body9.i.i:                                    ; preds = %for.body9.i.i.for.body9.i.i_crit_edge, %if.end.i.i.for.body9.i.i_crit_edge
  %i.035.i.i = phi i32 [ %inc.i.i, %for.body9.i.i.for.body9.i.i_crit_edge ], [ 0, %if.end.i.i.for.body9.i.i_crit_edge ]
  %19 = ptrtoint ptr %host_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host_priv.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %20, null
  %arrayidx.i.i.i = getelementptr %struct.list_head, ptr %20, i32 %i.035.i.i
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %arrayidx.i.i.i
  %21 = ptrtoint ptr %spec.select.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %spec.select.i.i.i, ptr %spec.select.i.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %spec.select.i.i.i, ptr %prev.i.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.035.i.i, 1
  %23 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_pads.i.i, align 4
  %conv6.i.i = zext i16 %24 to i32
  %cmp7.i.i = icmp ult i32 %inc.i.i, %conv6.i.i
  br i1 %cmp7.i.i, label %for.body9.i.i.for.body9.i.i_crit_edge, label %for.body9.i.i.for.cond.loopexit.i.i_crit_edge

for.body9.i.i.for.cond.loopexit.i.i_crit_edge:    ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.loopexit.i.i

for.body9.i.i.for.body9.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body9.i.i

if.end.i:                                         ; preds = %for.cond.loopexit.i.i.if.end.i_crit_edge, %imx_media_create_csi2_links.exit.if.end.i_crit_edge
  %vdev_list.i = getelementptr i8, ptr %notifier, i32 -16
  br label %for.cond.i19

for.cond.i19:                                     ; preds = %for.body.i20.for.cond.i19_crit_edge, %if.end.i
  %.pn.in.i16 = phi ptr [ %vdev_list.i, %if.end.i ], [ %.pn.i17, %for.body.i20.for.cond.i19_crit_edge ]
  %25 = ptrtoint ptr %.pn.in.i16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i17 = load ptr, ptr %.pn.in.i16, align 4
  %cmp.not.i18 = icmp eq ptr %.pn.i17, %vdev_list.i
  br i1 %cmp.not.i18, label %unlock, label %for.body.i20

for.body.i20:                                     ; preds = %for.cond.i19
  %vdev.0.i = getelementptr i8, ptr %.pn.i17, i32 -72
  %26 = ptrtoint ptr %vdev.0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vdev.0.i, align 4
  %links.i = getelementptr inbounds %struct.media_entity, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %links.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %links.i, align 8
  %30 = getelementptr i8, ptr %29, i32 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call6.i = tail call fastcc i32 @imx_media_add_vdev_to_pad(ptr noundef %add.ptr.i, ptr noundef %vdev.0.i, ptr noundef %32) #4
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.body.i20.for.cond.i19_crit_edge, label %for.body.i20.unlock.thread_crit_edge

for.body.i20.unlock.thread_crit_edge:             ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock.thread

for.body.i20.for.cond.i19_crit_edge:              ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i19

unlock.thread:                                    ; preds = %for.body.i20.unlock.thread_crit_edge, %for.body.i.i.unlock.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call6.i, %for.body.i20.unlock.thread_crit_edge ], [ -12, %for.body.i.i.unlock.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup

unlock:                                           ; preds = %for.cond.i19
  %v4l2_dev = getelementptr i8, ptr %notifier, i32 -380
  %call.i21 = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %v4l2_dev, i1 noundef zeroext false) #4
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool4.not = icmp eq i32 %call.i21, 0
  br i1 %tobool4.not, label %if.end6, label %unlock.cleanup_crit_edge

unlock.cleanup_crit_edge:                         ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 @__media_device_register(ptr noundef %add.ptr.i, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %unlock.cleanup_crit_edge, %unlock.thread
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call.i21, %unlock.cleanup_crit_edge ], [ %retval.0.i.ph, %unlock.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_media_dev_init(ptr noundef %dev, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1088, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup33_crit_edge, label %if.end

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup33

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %model = getelementptr inbounds %struct.media_device, ptr %call.i, i32 0, i32 2
  %call2 = tail call i32 @strscpy(ptr noundef %model, ptr noundef nonnull @.str, i32 noundef 32) #4
  %tobool3.not = icmp eq ptr %ops, null
  %spec.select = select i1 %tobool3.not, ptr @imx_media_md_ops, ptr %ops
  %ops5 = getelementptr inbounds %struct.media_device, ptr %call.i, i32 0, i32 21
  %1 = ptrtoint ptr %ops5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spec.select, ptr %ops5, align 8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 8
  %mutex = getelementptr inbounds %struct.imx_media_dev, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @imx_media_dev_init.__key) #4
  %v4l2_dev = getelementptr inbounds %struct.imx_media_dev, ptr %call.i, i32 0, i32 1
  %mdev = getelementptr inbounds %struct.imx_media_dev, ptr %call.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %mdev, align 4
  %notify = getelementptr inbounds %struct.imx_media_dev, ptr %call.i, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @imx_media_notify, ptr %notify, align 8
  %name = getelementptr inbounds %struct.imx_media_dev, ptr %call.i, i32 0, i32 1, i32 4
  %call12 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 36) #4
  %bus_info = getelementptr inbounds %struct.media_device, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %if.end.dev_name.exit_crit_edge ]
  %call18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i)
  tail call void @media_device_init(ptr noundef nonnull %call.i) #4
  %call21 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end25, label %if.end30

do.end25:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %call21) #7
  tail call void @media_device_cleanup(ptr noundef nonnull %call.i) #4
  %11 = inttoptr i32 %call21 to ptr
  br label %cleanup33

if.end30:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %vdev_list = getelementptr inbounds %struct.imx_media_dev, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %vdev_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %vdev_list, ptr %vdev_list, align 4
  %prev.i = getelementptr inbounds %struct.imx_media_dev, ptr %call.i, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vdev_list, ptr %prev.i, align 4
  %notifier = getelementptr inbounds %struct.imx_media_dev, ptr %call.i, i32 0, i32 6
  tail call void @v4l2_async_nf_init(ptr noundef %notifier) #4
  br label %cleanup33

cleanup33:                                        ; preds = %if.end30, %do.end25, %entry.cleanup33_crit_edge
  %retval.0 = phi ptr [ %11, %do.end25 ], [ %call.i, %if.end30 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup33_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_media_notify(ptr nocapture noundef readonly %sd, i32 noundef %notification, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1082684930, i32 %notification)
  %cmp.not = icmp eq i32 %notification, 1082684930
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup20_crit_edge

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup20

for.cond.preheader:                               ; preds = %entry
  %num_pads = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp236.not = icmp eq i16 %1, 0
  br i1 %cmp236.not, label %for.cond.preheader.cleanup20_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup20_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup20

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pads = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 9
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pads, align 4
  %index = getelementptr %struct.media_pad, ptr %3, i32 %i.037, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 4
  %conv4 = zext i16 %5 to i32
  %6 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_priv.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %arrayidx.i = getelementptr %struct.list_head, ptr %7, i32 %conv4
  %tobool.not38 = icmp eq ptr %arrayidx.i, null
  %tobool.not = select i1 %tobool.not.i, i1 true, i1 %tobool.not38
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.cond7.preheader

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond7.preheader:                              ; preds = %for.body
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn32 = load ptr, ptr %arrayidx.i, align 4
  %cmp8.not33 = icmp eq ptr %.pn32, %arrayidx.i
  br i1 %cmp8.not33, label %for.cond7.preheader.cleanup_crit_edge, label %for.cond7.preheader.for.body10_crit_edge

for.cond7.preheader.for.body10_crit_edge:         ; preds = %for.cond7.preheader
  br label %for.body10

for.cond7.preheader.cleanup_crit_edge:            ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.cond7.preheader.for.body10_crit_edge
  %.pn34 = phi ptr [ %.pn, %for.body10.for.body10_crit_edge ], [ %.pn32, %for.cond7.preheader.for.body10_crit_edge ]
  %pad_vdev.0 = getelementptr i8, ptr %.pn34, i32 -4
  %9 = ptrtoint ptr %pad_vdev.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pad_vdev.0, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void @v4l2_event_queue(ptr noundef %12, ptr noundef %arg) #4
  %13 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp8.not = icmp eq ptr %.pn, %arrayidx.i
  br i1 %cmp8.not, label %for.body10.cleanup_crit_edge, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body10

for.body10.cleanup_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body10.cleanup_crit_edge, %for.cond7.preheader.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.037, 1
  %14 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_pads, align 4
  %conv = zext i16 %15 to i32
  %cmp2 = icmp ult i32 %inc, %conv
  br i1 %cmp2, label %cleanup.for.body_crit_edge, label %cleanup.cleanup20_crit_edge

cleanup.cleanup20_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup20

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup20:                                        ; preds = %cleanup.cleanup20_crit_edge, %for.cond.preheader.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_media_dev_notifier_register(ptr noundef %imxmd, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %asd_list = getelementptr inbounds %struct.imx_media_dev, ptr %imxmd, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %asd_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %asd_list, align 4
  %cmp.i.not = icmp eq ptr %1, %asd_list
  br i1 %cmp.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.imx_media_dev, ptr %imxmd, i32 0, i32 1, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %notifier = getelementptr inbounds %struct.imx_media_dev, ptr %imxmd, i32 0, i32 6
  %tobool2.not = icmp eq ptr %ops, null
  %spec.select = select i1 %tobool2.not, ptr @imx_media_notifier_ops, ptr %ops
  %2 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spec.select, ptr %notifier, align 4
  %v4l2_dev5 = getelementptr inbounds %struct.imx_media_dev, ptr %imxmd, i32 0, i32 1
  %call7 = tail call i32 @v4l2_async_nf_register(ptr noundef %v4l2_dev5, ptr noundef %notifier) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %do.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %name15 = getelementptr inbounds %struct.imx_media_dev, ptr %imxmd, i32 0, i32 1, i32 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name15, i32 noundef %call7) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call7, %do.end12 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_create_fwnode_links(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_media_add_vdev_to_pad(ptr noundef %imxmd, ptr noundef %vdev, ptr nocapture noundef readonly %srcpad) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %entity1 = getelementptr inbounds %struct.media_pad, ptr %srcpad, i32 0, i32 1
  %0 = ptrtoint ptr %entity1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity1, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup87_crit_edge, label %is_media_entity_v4l2_subdev.exit

entry.cleanup87_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup87

is_media_entity_v4l2_subdev.exit:                 ; preds = %entry
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %if.end, label %is_media_entity_v4l2_subdev.exit.cleanup87_crit_edge

is_media_entity_v4l2_subdev.exit.cleanup87_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup87

if.end:                                           ; preds = %is_media_entity_v4l2_subdev.exit
  %index = getelementptr inbounds %struct.media_pad, ptr %srcpad, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 4
  %conv = zext i16 %5 to i32
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_priv.i, align 4
  %tobool.not.i127 = icmp eq ptr %7, null
  %arrayidx.i = getelementptr %struct.list_head, ptr %7, i32 %conv
  %tobool4.not142 = icmp eq ptr %arrayidx.i, null
  %tobool4.not = select i1 %tobool.not.i127, i1 true, i1 %tobool4.not142
  br i1 %tobool4.not, label %do.end, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.imx_media_dev, ptr %imxmd, i32 0, i32 1, i32 4
  %name7 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name7, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name, ptr noundef %9, i32 noundef %conv) #7
  br label %cleanup87

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ %arrayidx.i, %if.end.for.cond_crit_edge ]
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %arrayidx.i
  br i1 %cmp.not, label %do.body26, label %for.body

for.body:                                         ; preds = %for.cond
  %pad_vdev.0 = getelementptr i8, ptr %.pn, i32 -4
  %11 = ptrtoint ptr %pad_vdev.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pad_vdev.0, align 4
  %cmp17 = icmp eq ptr %12, %vdev
  br i1 %cmp17, label %for.body.cleanup87_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.body.cleanup87_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup87

do.body26:                                        ; preds = %for.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_media_add_vdev_to_pad.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_media_add_vdev_to_pad, %if.then33)) #4
          to label %do.end41 [label %if.then33], !srcloc !68

if.then33:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %imxmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %imxmd, align 8
  %15 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdev, align 4
  %name35 = getelementptr inbounds %struct.media_entity, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %name35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name35, align 8
  %name36 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %name36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name36, align 4
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %index, align 4
  %conv38 = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_media_add_vdev_to_pad.__UNIQUE_ID_ddebug316, ptr noundef %14, ptr noundef nonnull @.str.14, ptr noundef %18, ptr noundef %20, i32 noundef %conv38) #4
  br label %do.end41

do.end41:                                         ; preds = %if.then33, %do.body26
  %23 = ptrtoint ptr %imxmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %imxmd, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %24, i32 noundef 12, i32 noundef 3520) #4
  %tobool45.not = icmp eq ptr %call.i, null
  br i1 %tobool45.not, label %do.end41.cleanup87_crit_edge, label %if.end47

do.end41.cleanup87_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup87

if.end47:                                         ; preds = %do.end41
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %vdev, ptr %call.i, align 4
  %list49 = getelementptr inbounds %struct.imx_media_pad_vdev, ptr %call.i, i32 0, i32 1
  %prev.i = getelementptr %struct.list_head, ptr %7, i32 %conv, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list49, ptr noundef %27, ptr noundef nonnull %arrayidx.i) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end47.list_add_tail.exit_crit_edge

if.end47.list_add_tail.exit_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list49, ptr %prev.i, align 4
  %29 = ptrtoint ptr %list49 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx.i, ptr %list49, align 4
  %prev3.i.i = getelementptr inbounds %struct.imx_media_pad_vdev, ptr %call.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list49, ptr %27, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end47.list_add_tail.exit_crit_edge
  %num_pads = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_pads, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp52138.not = icmp eq i16 %33, 0
  br i1 %cmp52138.not, label %list_add_tail.exit.cleanup87_crit_edge, label %for.body54.lr.ph

list_add_tail.exit.cleanup87_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup87

for.body54.lr.ph:                                 ; preds = %list_add_tail.exit
  %pads = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 9
  %links = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 10
  br label %for.body54

for.body54:                                       ; preds = %for.inc85.for.body54_crit_edge, %for.body54.lr.ph
  %i.0139 = phi i32 [ 0, %for.body54.lr.ph ], [ %inc, %for.inc85.for.body54_crit_edge ]
  %34 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pads, align 4
  %arrayidx = getelementptr %struct.media_pad, ptr %35, i32 %i.0139
  %flags = getelementptr %struct.media_pad, ptr %35, i32 %i.0139, i32 4
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %and = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %for.body54.for.inc85_crit_edge, label %if.end57

for.body54.for.inc85_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc85

if.end57:                                         ; preds = %for.body54
  %38 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn126134 = load ptr, ptr %links, align 4
  %cmp65.not135 = icmp eq ptr %.pn126134, %links
  br i1 %cmp65.not135, label %if.end57.for.inc85_crit_edge, label %if.end57.for.body69_crit_edge

if.end57.for.body69_crit_edge:                    ; preds = %if.end57
  br label %for.body69

if.end57.for.inc85_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc85

for.body69:                                       ; preds = %for.inc78.for.body69_crit_edge, %if.end57.for.body69_crit_edge
  %.pn126136 = phi ptr [ %.pn126, %for.inc78.for.body69_crit_edge ], [ %.pn126134, %if.end57.for.body69_crit_edge ]
  %39 = getelementptr i8, ptr %.pn126136, i32 12
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %cmp70.not = icmp eq ptr %41, %arrayidx
  br i1 %cmp70.not, label %if.end73, label %for.body69.for.inc78_crit_edge

for.body69.for.inc78_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc78

if.end73:                                         ; preds = %for.body69
  %42 = getelementptr i8, ptr %.pn126136, i32 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %call74 = tail call fastcc i32 @imx_media_add_vdev_to_pad(ptr noundef %imxmd, ptr noundef %vdev, ptr noundef %44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end73.for.inc78_crit_edge, label %if.end73.cleanup87_crit_edge

if.end73.cleanup87_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup87

if.end73.for.inc78_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc78

for.inc78:                                        ; preds = %if.end73.for.inc78_crit_edge, %for.body69.for.inc78_crit_edge
  %45 = ptrtoint ptr %.pn126136 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn126 = load ptr, ptr %.pn126136, align 4
  %cmp65.not = icmp eq ptr %.pn126, %links
  br i1 %cmp65.not, label %for.inc78.for.inc85_crit_edge, label %for.inc78.for.body69_crit_edge

for.inc78.for.body69_crit_edge:                   ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body69

for.inc78.for.inc85_crit_edge:                    ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc85

for.inc85:                                        ; preds = %for.inc78.for.inc85_crit_edge, %if.end57.for.inc85_crit_edge, %for.body54.for.inc85_crit_edge
  %inc = add nuw nsw i32 %i.0139, 1
  %46 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %num_pads, align 4
  %conv51 = zext i16 %47 to i32
  %cmp52 = icmp ult i32 %inc, %conv51
  br i1 %cmp52, label %for.inc85.for.body54_crit_edge, label %for.inc85.cleanup87_crit_edge

for.inc85.cleanup87_crit_edge:                    ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup87

for.inc85.for.body54_crit_edge:                   ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body54

cleanup87:                                        ; preds = %for.inc85.cleanup87_crit_edge, %if.end73.cleanup87_crit_edge, %list_add_tail.exit.cleanup87_crit_edge, %do.end41.cleanup87_crit_edge, %for.body.cleanup87_crit_edge, %do.end, %is_media_entity_v4l2_subdev.exit.cleanup87_crit_edge, %entry.cleanup87_crit_edge
  %retval.2 = phi i32 [ 0, %do.end ], [ 0, %is_media_entity_v4l2_subdev.exit.cleanup87_crit_edge ], [ -12, %do.end41.cleanup87_crit_edge ], [ 0, %entry.cleanup87_crit_edge ], [ 0, %list_add_tail.exit.cleanup87_crit_edge ], [ %call74, %if.end73.cleanup87_crit_edge ], [ 0, %for.inc85.cleanup87_crit_edge ], [ 0, %for.body.cleanup87_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_media_link_notify(ptr noundef %link, i32 noundef %flags, i32 noundef %notification) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %2 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %entity = getelementptr inbounds %struct.media_pad, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entity, align 4
  %call = tail call i32 @v4l2_pipeline_link_notify(ptr noundef %link, i32 noundef %flags, i32 noundef %notification) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

is_media_entity_v4l2_subdev.exit:                 ; preds = %if.end
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i = icmp eq i32 %8, 2
  br i1 %cmp.i, label %if.end3, label %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %is_media_entity_v4l2_subdev.exit
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %index = getelementptr inbounds %struct.media_pad, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %index, align 4
  %conv = zext i16 %12 to i32
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %6, i32 0, i32 12
  %13 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host_priv.i, align 4
  %tobool.not.i142 = icmp eq ptr %14, null
  %arrayidx.i = getelementptr %struct.list_head, ptr %14, i32 %conv
  %tobool10.not145 = icmp eq ptr %arrayidx.i, null
  %tobool10.not = select i1 %tobool.not.i142, i1 true, i1 %tobool10.not145
  br i1 %tobool10.not, label %if.end3.cleanup_crit_edge, label %if.end12

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  %and = and i32 %flags, 1
  %15 = or i32 %and, %notification
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end12
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn138151 = load ptr, ptr %arrayidx.i, align 4
  %cmp19.not152 = icmp eq ptr %.pn138151, %arrayidx.i
  br i1 %cmp19.not152, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn138153 = phi ptr [ %.pn138, %for.inc.for.body_crit_edge ], [ %.pn138151, %for.cond.preheader.for.body_crit_edge ]
  %pad_vdev.0 = getelementptr i8, ptr %.pn138153, i32 -4
  %18 = ptrtoint ptr %pad_vdev.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pad_vdev.0, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %ctrl_handler = getelementptr inbounds %struct.video_device, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl_handler, align 4
  %tobool22.not = icmp eq ptr %23, null
  br i1 %tobool22.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_media_link_notify.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_media_link_notify, %if.then31)) #4
          to label %do.end [label %if.then31], !srcloc !68

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.media_entity, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_media_link_notify.__UNIQUE_ID_ddebug318, ptr noundef %25, ptr noundef nonnull @.str.16, ptr noundef %27) #4
  br label %do.end

do.end:                                           ; preds = %if.then31, %do.body
  %28 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %29) #4
  %30 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl_handler, align 4
  %call37 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @imx_media_link_notify._key, ptr noundef nonnull @.str.17) #4
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %32 = ptrtoint ptr %.pn138153 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn138 = load ptr, ptr %.pn138153, align 4
  %cmp19.not = icmp eq ptr %.pn138, %arrayidx.i
  br i1 %cmp19.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %notification)
  %cmp43 = icmp eq i32 %notification, 1
  br i1 %cmp43, label %land.lhs.true45, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true45:                                  ; preds = %if.else
  %flags46 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 5
  %33 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags46, align 4
  %and47 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %land.lhs.true45.cleanup_crit_edge, label %for.cond54.preheader

land.lhs.true45.cleanup_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond54.preheader:                             ; preds = %land.lhs.true45
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn147 = load ptr, ptr %arrayidx.i, align 4
  %cmp56.not148 = icmp eq ptr %.pn147, %arrayidx.i
  br i1 %cmp56.not148, label %for.cond54.preheader.cleanup_crit_edge, label %for.cond54.preheader.for.body60_crit_edge

for.cond54.preheader.for.body60_crit_edge:        ; preds = %for.cond54.preheader
  br label %for.body60

for.cond54.preheader.cleanup_crit_edge:           ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body60:                                       ; preds = %for.inc92.for.body60_crit_edge, %for.cond54.preheader.for.body60_crit_edge
  %.pn149 = phi ptr [ %.pn, %for.inc92.for.body60_crit_edge ], [ %.pn147, %for.cond54.preheader.for.body60_crit_edge ]
  %pad_vdev.1 = getelementptr i8, ptr %.pn149, i32 -4
  %36 = ptrtoint ptr %pad_vdev.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pad_vdev.1, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %ctrl_handler63 = getelementptr inbounds %struct.video_device, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %ctrl_handler63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrl_handler63, align 4
  %tobool64.not = icmp eq ptr %41, null
  br i1 %tobool64.not, label %for.body60.for.inc92_crit_edge, label %do.body67

for.body60.for.inc92_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc92

do.body67:                                        ; preds = %for.body60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_media_link_notify.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_media_link_notify, %if.then79)) #4
          to label %do.end86 [label %if.then79], !srcloc !68

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %name83 = getelementptr inbounds %struct.media_entity, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %name83 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name83, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_media_link_notify.__UNIQUE_ID_ddebug319, ptr noundef %43, ptr noundef nonnull @.str.18, ptr noundef %45) #4
  br label %do.end86

do.end86:                                         ; preds = %if.then79, %do.body67
  %call88 = tail call fastcc i32 @imx_media_inherit_controls(ptr noundef %1, ptr noundef %39, ptr noundef %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %do.end86.for.inc92_crit_edge, label %do.end86.cleanup_crit_edge

do.end86.cleanup_crit_edge:                       ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end86.for.inc92_crit_edge:                     ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc92

for.inc92:                                        ; preds = %do.end86.for.inc92_crit_edge, %for.body60.for.inc92_crit_edge
  %46 = ptrtoint ptr %.pn149 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn = load ptr, ptr %.pn149, align 4
  %cmp56.not = icmp eq ptr %.pn, %arrayidx.i
  br i1 %cmp56.not, label %for.inc92.cleanup_crit_edge, label %for.inc92.for.body60_crit_edge

for.inc92.for.body60_crit_edge:                   ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body60

for.inc92.cleanup_crit_edge:                      ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc92.cleanup_crit_edge, %do.end86.cleanup_crit_edge, %for.cond54.preheader.cleanup_crit_edge, %land.lhs.true45.cleanup_crit_edge, %if.else.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %land.lhs.true45.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond54.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call88, %do.end86.cleanup_crit_edge ], [ 0, %for.inc92.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_pipeline_link_notify(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_media_inherit_controls(ptr nocapture noundef readonly %imxmd, ptr nocapture noundef readonly %vfd, ptr noundef readonly %entity) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %entity, null
  br i1 %tobool.not.i, label %entry.if.end16_crit_edge, label %is_media_entity_v4l2_subdev.exit

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

is_media_entity_v4l2_subdev.exit:                 ; preds = %entry
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 2
  %0 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then, label %is_media_entity_v4l2_subdev.exit.if.end16_crit_edge

is_media_entity_v4l2_subdev.exit.if.end16_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then:                                          ; preds = %is_media_entity_v4l2_subdev.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_media_inherit_controls.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_media_inherit_controls, %if.then7)) #4
          to label %do.end [label %if.then7], !srcloc !68

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %imxmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %imxmd, align 8
  %name = getelementptr inbounds %struct.media_entity, ptr %vfd, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %name10 = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 1
  %6 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_media_inherit_controls.__UNIQUE_ID_ddebug317, ptr noundef %3, ptr noundef nonnull @.str.20, ptr noundef %5, ptr noundef %7) #4
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.then
  %ctrl_handler = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 9
  %8 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_handler, align 4
  %ctrl_handler11 = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 8
  %10 = ptrtoint ptr %ctrl_handler11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_handler11, align 4
  %call12 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %9, ptr noundef %11, ptr noundef null, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end.if.end16_crit_edge, label %do.end.cleanup36_crit_edge

do.end.cleanup36_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup36

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.end16:                                         ; preds = %do.end.if.end16_crit_edge, %is_media_entity_v4l2_subdev.exit.if.end16_crit_edge, %entry.if.end16_crit_edge
  %num_pads = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 5
  %12 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp68.not = icmp eq i16 %13, 0
  br i1 %cmp68.not, label %if.end16.cleanup36_crit_edge, label %for.body.lr.ph

if.end16.cleanup36_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup36

for.body.lr.ph:                                   ; preds = %if.end16
  %pads = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pads, align 4
  %flags = getelementptr %struct.media_pad, ptr %15, i32 %i.070, i32 4
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %if.end20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end20:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.media_pad, ptr %15, i32 %i.070
  %call21 = tail call ptr @media_entity_remote_pad(ptr noundef %arrayidx) #4
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.for.inc_crit_edge, label %lor.lhs.false

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end20
  %entity23 = getelementptr inbounds %struct.media_pad, ptr %call21, i32 0, i32 1
  %18 = ptrtoint ptr %entity23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entity23, align 4
  %tobool.not.i56 = icmp eq ptr %19, null
  br i1 %tobool.not.i56, label %lor.lhs.false.for.inc_crit_edge, label %is_media_entity_v4l2_subdev.exit60

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

is_media_entity_v4l2_subdev.exit60:               ; preds = %lor.lhs.false
  %obj_type.i57 = getelementptr inbounds %struct.media_entity, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %obj_type.i57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %obj_type.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i58 = icmp eq i32 %21, 2
  br i1 %cmp.i58, label %cleanup32, label %is_media_entity_v4l2_subdev.exit60.for.inc_crit_edge

is_media_entity_v4l2_subdev.exit60.for.inc_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit60
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

cleanup32:                                        ; preds = %is_media_entity_v4l2_subdev.exit60
  %call28 = tail call fastcc i32 @imx_media_inherit_controls(ptr noundef %imxmd, ptr noundef %vfd, ptr noundef nonnull %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not.not, label %cleanup32.for.inc_crit_edge, label %cleanup32.cleanup36_crit_edge

cleanup32.cleanup36_crit_edge:                    ; preds = %cleanup32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup36

cleanup32.for.inc_crit_edge:                      ; preds = %cleanup32
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %cleanup32.for.inc_crit_edge, %is_media_entity_v4l2_subdev.exit60.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end20.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.070, 1
  %22 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_pads, align 4
  %conv = zext i16 %23 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup36_crit_edge

for.inc.cleanup36_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup36

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup36:                                        ; preds = %for.inc.cleanup36_crit_edge, %cleanup32.cleanup36_crit_edge, %if.end16.cleanup36_crit_edge, %do.end.cleanup36_crit_edge
  %retval.1 = phi i32 [ %call12, %do.end.cleanup36_crit_edge ], [ 0, %if.end16.cleanup36_crit_edge ], [ %call28, %cleanup32.cleanup36_crit_edge ], [ 0, %for.inc.cleanup36_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_media_subdev_bound(ptr nocapture noundef readonly %notifier, ptr noundef %sd, ptr nocapture noundef readnone %asd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_media_subdev_bound.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_media_subdev_bound, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %notifier, i32 -988
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_media_subdev_bound.__UNIQUE_ID_ddebug315, ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef %name) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !53, !55, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__ksymtab_imx_media_probe_complete, !1, !"__ksymtab_imx_media_probe_complete", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 205, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 360, i32 27}
!4 = !{ptr @imx_media_dev_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 364, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 371, i32 4}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 377, i32 3}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @imx_media_dev_init._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @imx_media_dev_init._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_imx_media_dev_init, !16, !"__ksymtab_imx_media_dev_init", i1 false, i1 false}
!16 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 393, i32 1}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 402, i32 3}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @imx_media_dev_notifier_register._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @imx_media_dev_notifier_register._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 410, i32 3}
!24 = !{ptr @imx_media_dev_notifier_register._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @imx_media_dev_notifier_register._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_imx_media_dev_notifier_register, !27, !"__ksymtab_imx_media_dev_notifier_register", i1 false, i1 false}
!27 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 417, i32 1}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 85, i32 3}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @imx_media_add_vdev_to_pad._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @imx_media_add_vdev_to_pad._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 100, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @imx_media_add_vdev_to_pad.__UNIQUE_ID_ddebug316, !34, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!37 = !{ptr @imx_media_md_ops, !38, !"imx_media_md_ops", i1 false, i1 false}
!38 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 344, i32 38}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 292, i32 4}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @imx_media_link_notify.__UNIQUE_ID_ddebug318, !40, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!43 = !{ptr @imx_media_link_notify._key, !44, !"_key", i1 false, i1 false}
!44 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 296, i32 4}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 304, i32 4}
!48 = !{ptr @imx_media_link_notify.__UNIQUE_ID_ddebug319, !47, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 220, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @imx_media_inherit_controls.__UNIQUE_ID_ddebug317, !50, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!53 = !{ptr @imx_media_notifier_ops, !54, !"imx_media_notifier_ops", i1 false, i1 false}
!54 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 339, i32 52}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/media/imx/imx-media-dev-common.c", i32 29, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @imx_media_subdev_bound.__UNIQUE_ID_ddebug315, !56, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2148302432, i64 2148302437, i64 2148302450, i64 2148302494, i64 2148302528, i64 2148302549}
