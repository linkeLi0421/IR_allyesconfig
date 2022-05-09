; ModuleID = '/llk/IR_all_yes/drivers/firmware/imx/imx-scu-irq.c_pt.bc'
source_filename = "../drivers/firmware/imx/imx-scu-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+imx_scu_irq_register_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_scu_irq_register_notifier\09\09\09\09"
module asm "\09.long\09__crc_imx_scu_irq_register_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_scu_irq_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_scu_irq_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_imx_scu_irq_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+imx_scu_irq_unregister_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_scu_irq_unregister_notifier\09\09\09\09"
module asm "\09.long\09__crc_imx_scu_irq_unregister_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_scu_irq_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_scu_irq_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_imx_scu_irq_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+imx_scu_irq_group_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_scu_irq_group_enable\09\09\09\09"
module asm "\09.long\09__crc_imx_scu_irq_group_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_scu_irq_group_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_scu_irq_group_enable\22\09\09\09\09\09"
module asm "__kstrtabns_imx_scu_irq_group_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+imx_scu_enable_general_irq_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_scu_enable_general_irq_channel\09\09\09\09"
module asm "\09.long\09__crc_imx_scu_enable_general_irq_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_scu_enable_general_irq_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_scu_enable_general_irq_channel\22\09\09\09\09\09"
module asm "__kstrtabns_imx_scu_enable_general_irq_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.imx_sc_msg_irq_enable = type { %struct.imx_sc_rpc_msg, i32, i16, i8, i8 }
%struct.imx_sc_rpc_msg = type { i8, i8, i8, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.imx_sc_msg_irq_get_status = type { %struct.imx_sc_rpc_msg, %union.anon.84 }
%union.anon.84 = type { %struct.anon.86 }
%struct.anon.86 = type { i32 }
%struct.anon.85 = type { i16, i8, i8 }

@imx_scu_irq_notifier_chain = internal global { %struct.atomic_notifier_head, [48 x i8] } { %struct.atomic_notifier_head { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, ptr null }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_imx_scu_irq_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_scu_irq_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_scu_irq_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_scu_irq_register_notifier to i32), ptr @__kstrtab_imx_scu_irq_register_notifier, ptr @__kstrtabns_imx_scu_irq_register_notifier }, section "___ksymtab+imx_scu_irq_register_notifier", align 4
@__kstrtab_imx_scu_irq_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_scu_irq_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_scu_irq_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_scu_irq_unregister_notifier to i32), ptr @__kstrtab_imx_scu_irq_unregister_notifier, ptr @__kstrtabns_imx_scu_irq_unregister_notifier }, section "___ksymtab+imx_scu_irq_unregister_notifier", align 4
@imx_sc_irq_ipc_handle = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mu_resource_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@imx_scu_irq_group_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013enable irq failed, group %d, mask %d, ret %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imx_scu_irq_group_enable\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/firmware/imx/imx-scu-irq.c\00", [61 x i8] zeroinitializer }, align 32
@imx_scu_irq_group_enable._entry_ptr = internal global ptr @imx_scu_irq_group_enable._entry, section ".printk_index", align 4
@__kstrtab_imx_scu_irq_group_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_scu_irq_group_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_scu_irq_group_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_scu_irq_group_enable to i32), ptr @__kstrtab_imx_scu_irq_group_enable, ptr @__kstrtabns_imx_scu_irq_group_enable }, section "___ksymtab+imx_scu_irq_group_enable", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gip3\00", [27 x i8] zeroinitializer }, align 32
@imx_scu_enable_general_irq_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 155, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to request mbox chan gip3, ret %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"imx_scu_enable_general_irq_channel\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_scu_enable_general_irq_channel._entry_ptr = internal global ptr @imx_scu_enable_general_irq_channel._entry, section ".printk_index", align 4
@imx_scu_enable_general_irq_channel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@imx_sc_irq_work = internal global { %struct.work_struct, [52 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&imx_sc_irq_work)\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mboxes\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#mbox-cells\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mu\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab_imx_scu_enable_general_irq_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_scu_enable_general_irq_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_scu_enable_general_irq_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_scu_enable_general_irq_channel to i32), ptr @__kstrtab_imx_scu_enable_general_irq_channel, ptr @__kstrtabns_imx_scu_enable_general_irq_channel }, section "___ksymtab+imx_scu_enable_general_irq_channel", align 4
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"imx_scu_irq_notifier_chain.lock\00", [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@imx_scu_irq_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013get irq group %d status failed, ret %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imx_scu_irq_work_handler\00", [39 x i8] zeroinitializer }, align 32
@imx_scu_irq_work_handler._entry_ptr = internal global ptr @imx_scu_irq_work_handler._entry, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [27 x i8] c"imx_scu_irq_notifier_chain\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"imx_sc_irq_ipc_handle\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 43, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"mu_resource_id\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 19, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 121, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 152, i32 39 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 155, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"imx_sc_irq_work\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 44, i32 27 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 160, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 162, i32 48 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 163, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 164, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 45, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [38 x i8] c"../drivers/firmware/imx/imx-scu-irq.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 86, i32 4 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab_imx_scu_enable_general_irq_channel, ptr @__ksymtab_imx_scu_irq_group_enable, ptr @__ksymtab_imx_scu_irq_register_notifier, ptr @__ksymtab_imx_scu_irq_unregister_notifier, ptr @imx_scu_enable_general_irq_channel._entry, ptr @imx_scu_enable_general_irq_channel._entry_ptr, ptr @imx_scu_irq_group_enable._entry, ptr @imx_scu_irq_group_enable._entry_ptr, ptr @imx_scu_irq_work_handler._entry, ptr @imx_scu_irq_work_handler._entry_ptr, ptr @imx_scu_irq_notifier_chain, ptr @imx_sc_irq_ipc_handle, ptr @mu_resource_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @imx_scu_enable_general_irq_channel.__key, ptr @imx_sc_irq_work, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_irq_notifier_chain to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_sc_irq_ipc_handle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mu_resource_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_irq_group_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_enable_general_irq_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_enable_general_irq_channel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_sc_irq_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_irq_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_scu_irq_register_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @imx_scu_irq_notifier_chain, ptr noundef %nb) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_scu_irq_unregister_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @imx_scu_irq_notifier_chain, ptr noundef %nb) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_scu_irq_group_enable(i8 noundef zeroext %group, i32 noundef %mask, i8 noundef zeroext %enable) #0 align 64 {
entry:
  %msg = alloca %struct.imx_sc_msg_irq_enable, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #4
  %0 = load ptr, ptr @imx_sc_irq_ipc_handle, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.imx_sc_msg_irq_enable, ptr %msg, i32 0, i32 4
  %2 = getelementptr inbounds %struct.imx_sc_msg_irq_enable, ptr %msg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.imx_sc_msg_irq_enable, ptr %msg, i32 0, i32 2
  %4 = getelementptr inbounds %struct.imx_sc_msg_irq_enable, ptr %msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 3
  %6 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 2
  %7 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %msg, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %6, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %5, align 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %7, align 1
  %12 = load i32, ptr @mu_resource_id, align 4
  %conv = trunc i32 %12 to i16
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %conv, ptr %3, align 1
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %group, ptr %2, align 1
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %mask, ptr %4, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %enable, ptr %1, align 1
  %call = call i32 @imx_scu_call_rpc(ptr noundef nonnull %0, ptr noundef nonnull %msg, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv7 = zext i8 %group to i32
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv7, i32 noundef %mask, i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -517, %entry.cleanup_crit_edge ], [ %call, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_call_rpc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_scu_enable_general_irq_channel(ptr noundef %dev) #0 align 64 {
entry:
  %spec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %spec) #4
  %0 = call ptr @memset(ptr %spec, i32 255, i32 72)
  %call = tail call i32 @imx_scu_get_handle(ptr noundef nonnull @imx_sc_irq_ipc_handle) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #4
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %rx_callback = getelementptr inbounds %struct.mbox_client, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %rx_callback to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @imx_scu_irq_callback, ptr %rx_callback, align 4
  %call6 = tail call ptr @mbox_request_channel_byname(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.3) #4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %do.body11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %3) #7
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i) #4
  br label %cleanup

do.body11:                                        ; preds = %if.end4
  tail call void @__init_work(ptr noundef nonnull @imx_sc_irq_work, i32 noundef 0) #4
  store i32 -64, ptr @imx_sc_irq_work, align 4
  tail call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.work_struct, ptr @imx_sc_irq_work, i32 0, i32 3), ptr noundef nonnull @.str.8, ptr noundef nonnull @imx_scu_enable_general_irq_channel.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  store volatile ptr getelementptr inbounds (%struct.work_struct, ptr @imx_sc_irq_work, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @imx_sc_irq_work, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.work_struct, ptr @imx_sc_irq_work, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @imx_sc_irq_work, i32 0, i32 1, i32 1), align 4
  store ptr @imx_scu_irq_work_handler, ptr getelementptr inbounds (%struct.work_struct, ptr @imx_sc_irq_work, i32 0, i32 2), align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i39 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %spec) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool15.not = icmp eq i32 %call.i39, 0
  br i1 %tobool15.not, label %if.end18, label %do.body11.if.end18.thread_crit_edge

do.body11.if.end18.thread_crit_edge:              ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.thread

if.end18:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec, align 4
  %call17 = call i32 @of_alias_get_id(ptr noundef %7, ptr noundef nonnull @.str.11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  %i.0.op = add i32 %call17, 213
  %spec.select = select i1 %cmp, i32 214, i32 %i.0.op
  br label %if.end18.thread

if.end18.thread:                                  ; preds = %if.end18, %do.body11.if.end18.thread_crit_edge
  %8 = phi i32 [ 213, %do.body11.if.end18.thread_crit_edge ], [ %spec.select, %if.end18 ]
  store i32 %8, ptr @mu_resource_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18.thread, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then8 ], [ 0, %if.end18.thread ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %spec) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_get_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_scu_irq_callback(ptr nocapture noundef readnone %c, ptr nocapture noundef readnone %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @imx_sc_irq_work) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_scu_irq_work_handler(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  %msg = alloca %struct.imx_sc_msg_irq_get_status, align 4
  %i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #4
  %0 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.imx_sc_msg_irq_get_status, ptr %msg, i32 0, i32 1
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i) #4
  %group = getelementptr inbounds %struct.anon.85, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %i, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %storemerge21 = phi i8 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %msg, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %1, align 2
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %2, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %0, align 1
  %11 = load i32, ptr @mu_resource_id, align 4
  %conv3 = trunc i32 %11 to i16
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv3, ptr %3, align 4
  %13 = ptrtoint ptr %group to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %storemerge21, ptr %group, align 2
  %14 = load ptr, ptr @imx_sc_irq_ipc_handle, align 4
  %call = call i32 @imx_scu_call_rpc(ptr noundef %14, ptr noundef nonnull %msg, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %i, align 1
  %conv5 = zext i8 %16 to i32
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv5, i32 noundef %call) #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not = icmp eq i32 %18, 0
  br i1 %tobool8.not, label %if.end.for.inc_crit_edge, label %if.end10

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @pm_system_wakeup() #4
  %call.i = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @imx_scu_irq_notifier_chain, i32 noundef %18, ptr noundef nonnull %i) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %if.end.for.inc_crit_edge
  %19 = ptrtoint ptr %i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %i, align 1
  %inc = add i8 %20, 1
  store i8 %inc, ptr %i, align 1
  %cmp = icmp ult i8 %inc, 4
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_system_wakeup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__ksymtab_imx_scu_irq_register_notifier, !1, !"__ksymtab_imx_scu_irq_register_notifier", i1 false, i1 false}
!1 = !{!"../drivers/firmware/imx/imx-scu-irq.c", i32 52, i32 1}
!2 = !{ptr @__ksymtab_imx_scu_irq_unregister_notifier, !3, !"__ksymtab_imx_scu_irq_unregister_notifier", i1 false, i1 false}
!3 = !{!"../drivers/firmware/imx/imx-scu-irq.c", i32 59, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/imx/imx-scu-irq.c", i32 121, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @imx_scu_irq_group_enable._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @imx_scu_irq_group_enable._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_imx_scu_irq_group_enable, !11, !"__ksymtab_imx_scu_irq_group_enable", i1 false, i1 false}
!11 = !{!"../drivers/firmware/imx/imx-scu-irq.c", i32 126, i32 1}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/firmware/imx/imx-scu-irq.c", i32 152, i32 39}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/firmware/imx/imx-scu-irq.c", i32 155, i32 3}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @imx_scu_enable_general_irq_channel._entry, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @imx_scu_enable_general_irq_channel._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @imx_scu_enable_general_irq_channel.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/firmware/imx/imx-scu-irq.c", i32 160, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/firmware/imx/imx-scu-irq.c", i32 162, i32 48}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/firmware/imx/imx-scu-irq.c", i32 163, i32 12}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/firmware/imx/imx-scu-irq.c", i32 164, i32 32}
!30 = !{ptr @__ksymtab_imx_scu_enable_general_irq_channel, !31, !"__ksymtab_imx_scu_enable_general_irq_channel", i1 false, i1 false}
!31 = !{!"../drivers/firmware/imx/imx-scu-irq.c", i32 174, i32 1}
!32 = !{ptr @mu_resource_id, !33, !"mu_resource_id", i1 false, i1 false}
!33 = !{!"../drivers/firmware/imx/imx-scu-irq.c", i32 19, i32 12}
!34 = !{ptr @imx_sc_irq_ipc_handle, !35, !"imx_sc_irq_ipc_handle", i1 false, i1 false}
!35 = !{!"../drivers/firmware/imx/imx-scu-irq.c", i32 43, i32 27}
!36 = !{ptr @imx_sc_irq_work, !37, !"imx_sc_irq_work", i1 false, i1 false}
!37 = !{!"../drivers/firmware/imx/imx-scu-irq.c", i32 44, i32 27}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/firmware/imx/imx-scu-irq.c", i32 45, i32 8}
!40 = !{ptr @imx_scu_irq_notifier_chain, !39, !"imx_scu_irq_notifier_chain", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/firmware/imx/imx-scu-irq.c", i32 86, i32 4}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @imx_scu_irq_work_handler._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @imx_scu_irq_work_handler._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
