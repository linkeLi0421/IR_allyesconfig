; ModuleID = '/llk/IR_all_yes/net/nfc/digital_core.c_pt.bc'
source_filename = "../net/nfc/digital_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+nfc_digital_allocate_device\22, \22a\22\09"
module asm "\09.weak\09__crc_nfc_digital_allocate_device\09\09\09\09"
module asm "\09.long\09__crc_nfc_digital_allocate_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_digital_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_digital_allocate_device\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_digital_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nfc_digital_free_device\22, \22a\22\09"
module asm "\09.weak\09__crc_nfc_digital_free_device\09\09\09\09"
module asm "\09.long\09__crc_nfc_digital_free_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_digital_free_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_digital_free_device\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_digital_free_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nfc_digital_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_nfc_digital_register_device\09\09\09\09"
module asm "\09.long\09__crc_nfc_digital_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_digital_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_digital_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_digital_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nfc_digital_unregister_device\22, \22a\22\09"
module asm "\09.weak\09__crc_nfc_digital_unregister_device\09\09\09\09"
module asm "\09.long\09__crc_nfc_digital_unregister_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_digital_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_digital_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_digital_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.18 }
%union.anon.18 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfc_digital_dev = type { ptr, ptr, i32, i32, i32, i32, ptr, [6 x %struct.digital_poll_tech], i8, i8, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.delayed_work, i8, i8, i8, i8, i16, i8, i8, ptr, ptr, i32, i32, ptr, i16, ptr, ptr }
%struct.digital_poll_tech = type { i8, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.20 }
%union.anon.20 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon, %union.anon.1, %union.anon.2, [48 x i8], %union.anon.3, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.5, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { i64 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i32, ptr }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.7, i32, i32, i32, i16, i16, %union.anon.9, i32, %union.anon.10, %union.anon.11, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.7 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.digital_cmd = type { %struct.list_head, i8, i8, i16, ptr, ptr, ptr, ptr, ptr }
%struct.nfc_digital_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.spinlock = type { %union.anon.19 }
%union.anon.19 = type { %struct.raw_spinlock }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.digital_data_exch = type { ptr, ptr }
%struct.digital_tg_mdaa_params = type { i16, [3 x i8], i8, [8 x i8], i16 }

@digital_in_configure_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013digital: %s: in_configure_hw failed: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"digital_in_configure_hw\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/nfc/digital_core.c\00", [41 x i8] zeroinitializer }, align 32
@digital_in_configure_hw._entry_ptr = internal global ptr @digital_in_configure_hw._entry, section ".printk_index", align 4
@digital_tg_configure_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013digital: %s: tg_configure_hw failed: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"digital_tg_configure_hw\00", [40 x i8] zeroinitializer }, align 32
@digital_tg_configure_hw._entry_ptr = internal global ptr @digital_tg_configure_hw._entry, section ".printk_index", align 4
@digital_target_found._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013digital: %s: Invalid protocol %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"digital_target_found\00", [43 x i8] zeroinitializer }, align 32
@digital_target_found._entry_ptr = internal global ptr @digital_target_found._entry, section ".printk_index", align 4
@digital_target_found.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nfc_digital\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rf_tech=%d, protocol=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"digital: %s: rf_tech=%d, protocol=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@nfc_digital_allocate_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ddev->cmd_lock\00", [16 x i8] zeroinitializer }, align 32
@nfc_digital_allocate_device.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&ddev->cmd_work)\00", [61 x i8] zeroinitializer }, align 32
@nfc_digital_allocate_device.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&ddev->cmd_complete_work)\00", [52 x i8] zeroinitializer }, align 32
@nfc_digital_allocate_device.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ddev->poll_lock\00", [47 x i8] zeroinitializer }, align 32
@nfc_digital_allocate_device.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&ddev->poll_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@nfc_digital_allocate_device.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&ddev->poll_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@digital_nfc_ops = internal constant { %struct.nfc_ops, [32 x i8] } { %struct.nfc_ops { ptr @digital_dev_up, ptr @digital_dev_down, ptr @digital_start_poll, ptr @digital_stop_poll, ptr @digital_dep_link_up, ptr @digital_dep_link_down, ptr @digital_activate_target, ptr @digital_deactivate_target, ptr @digital_in_send, ptr @digital_tg_send, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nfc_digital_allocate_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013digital: %s: nfc_allocate_device failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nfc_digital_allocate_device\00", [36 x i8] zeroinitializer }, align 32
@nfc_digital_allocate_device._entry_ptr = internal global ptr @nfc_digital_allocate_device._entry, section ".printk_index", align 4
@__kstrtab_nfc_digital_allocate_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_digital_allocate_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_digital_allocate_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_digital_allocate_device to i32), ptr @__kstrtab_nfc_digital_allocate_device, ptr @__kstrtabns_nfc_digital_allocate_device }, section "___ksymtab+nfc_digital_allocate_device", align 4
@__kstrtab_nfc_digital_free_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_digital_free_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_digital_free_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_digital_free_device to i32), ptr @__kstrtab_nfc_digital_free_device, ptr @__kstrtabns_nfc_digital_free_device }, section "___ksymtab+nfc_digital_free_device", align 4
@__kstrtab_nfc_digital_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_digital_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_digital_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_digital_register_device to i32), ptr @__kstrtab_nfc_digital_register_device, ptr @__kstrtabns_nfc_digital_register_device }, section "___ksymtab+nfc_digital_register_device", align 4
@__kstrtab_nfc_digital_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_digital_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_digital_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_digital_unregister_device to i32), ptr @__kstrtab_nfc_digital_unregister_device, ptr @__kstrtabns_nfc_digital_unregister_device }, section "___ksymtab+nfc_digital_unregister_device", align 4
@__UNIQUE_ID_file277 = internal constant [37 x i8] c"nfc_digital.file=net/nfc/nfc_digital\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [24 x i8] c"nfc_digital.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@digital_wq_cmd.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"digital_wq_cmd\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DIGITAL TX: \00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@digital_wq_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013digital: %s: Unknown cmd type %d\0A\00", [60 x i8] zeroinitializer }, align 32
@digital_wq_cmd._entry_ptr = internal global ptr @digital_wq_cmd._entry, section ".printk_index", align 4
@digital_wq_cmd._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013digital: %s: in_send_command returned err %d\0A\00", [48 x i8] zeroinitializer }, align 32
@digital_wq_cmd._entry_ptr.29 = internal global ptr @digital_wq_cmd._entry.27, section ".printk_index", align 4
@digital_wq_cmd_complete.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"digital_wq_cmd_complete\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DIGITAL RX: \00", [19 x i8] zeroinitializer }, align 32
@digital_start_poll.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"digital_start_poll\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"protocols: im 0x%x, tm 0x%x, supported 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"digital: %s: protocols: im 0x%x, tm 0x%x, supported 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@digital_start_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.2, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013digital: %s: Unknown protocol\0A\00", [63 x i8] zeroinitializer }, align 32
@digital_start_poll._entry_ptr = internal global ptr @digital_start_poll._entry, section ".printk_index", align 4
@digital_start_poll._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013digital: %s: Already polling\0A\00", [32 x i8] zeroinitializer }, align 32
@digital_start_poll._entry_ptr.38 = internal global ptr @digital_start_poll._entry.36, section ".printk_index", align 4
@digital_start_poll._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013digital: %s: A target is already active\0A\00", [53 x i8] zeroinitializer }, align 32
@digital_start_poll._entry_ptr.41 = internal global ptr @digital_start_poll._entry.39, section ".printk_index", align 4
@digital_start_poll._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.2, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013digital: %s: Unsupported protocols: im=0x%x, tm=0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@digital_start_poll._entry_ptr.44 = internal global ptr @digital_start_poll._entry.42, section ".printk_index", align 4
@digital_stop_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013digital: %s: Polling operation was not running\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"digital_stop_poll\00", [46 x i8] zeroinitializer }, align 32
@digital_stop_poll._entry_ptr = internal global ptr @digital_stop_poll._entry, section ".printk_index", align 4
@digital_activate_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013digital: %s: Can't activate a target while polling\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"digital_activate_target\00", [40 x i8] zeroinitializer }, align 32
@digital_activate_target._entry_ptr = internal global ptr @digital_activate_target._entry, section ".printk_index", align 4
@digital_activate_target._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.48, ptr @.str.2, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@digital_activate_target._entry_ptr.50 = internal global ptr @digital_activate_target._entry.49, section ".printk_index", align 4
@digital_deactivate_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013digital: %s: No active target\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"digital_deactivate_target\00", [38 x i8] zeroinitializer }, align 32
@digital_deactivate_target._entry_ptr = internal global ptr @digital_deactivate_target._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.53 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 6]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 261, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 272, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 371, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 375, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 772, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 775, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 776, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 778, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 779, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [16 x i8] c"digital_nfc_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 740, i32 29 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 803, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 175, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 207, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 214, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 131, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 482, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 489, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 494, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 499, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 546, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 563, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 627, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 632, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private constant [26 x i8] c"../net/nfc/digital_core.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 648, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__ksymtab_nfc_digital_allocate_device, ptr @__ksymtab_nfc_digital_free_device, ptr @__ksymtab_nfc_digital_register_device, ptr @__ksymtab_nfc_digital_unregister_device, ptr @digital_activate_target._entry, ptr @digital_activate_target._entry.49, ptr @digital_activate_target._entry_ptr, ptr @digital_activate_target._entry_ptr.50, ptr @digital_deactivate_target._entry, ptr @digital_deactivate_target._entry_ptr, ptr @digital_in_configure_hw._entry, ptr @digital_in_configure_hw._entry_ptr, ptr @digital_start_poll._entry, ptr @digital_start_poll._entry.36, ptr @digital_start_poll._entry.39, ptr @digital_start_poll._entry.42, ptr @digital_start_poll._entry_ptr, ptr @digital_start_poll._entry_ptr.38, ptr @digital_start_poll._entry_ptr.41, ptr @digital_start_poll._entry_ptr.44, ptr @digital_stop_poll._entry, ptr @digital_stop_poll._entry_ptr, ptr @digital_target_found._entry, ptr @digital_target_found._entry_ptr, ptr @digital_tg_configure_hw._entry, ptr @digital_tg_configure_hw._entry_ptr, ptr @digital_wq_cmd._entry, ptr @digital_wq_cmd._entry.27, ptr @digital_wq_cmd._entry_ptr, ptr @digital_wq_cmd._entry_ptr.29, ptr @nfc_digital_allocate_device._entry, ptr @nfc_digital_allocate_device._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @nfc_digital_allocate_device.__key, ptr @.str.10, ptr @nfc_digital_allocate_device.__key.11, ptr @.str.12, ptr @nfc_digital_allocate_device.__key.13, ptr @.str.14, ptr @nfc_digital_allocate_device.__key.15, ptr @.str.16, ptr @nfc_digital_allocate_device.__key.17, ptr @.str.18, ptr @nfc_digital_allocate_device.__key.19, ptr @.str.20, ptr @digital_nfc_ops, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_in_configure_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tg_configure_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_target_found._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_digital_allocate_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_digital_allocate_device.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_digital_allocate_device.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_digital_allocate_device.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_digital_allocate_device.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_digital_allocate_device.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_nfc_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_digital_allocate_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_wq_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_wq_cmd._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_start_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_start_poll._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_start_poll._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_start_poll._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_stop_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_activate_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_activate_target._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_deactivate_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @digital_skb_alloc(ptr nocapture noundef readonly %ddev, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_headroom = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 3
  %0 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_headroom, align 4
  %add = add i32 %1, %len
  %tx_tailroom = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 4
  %2 = ptrtoint ptr %tx_tailroom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_tailroom, align 4
  %add1 = add i32 %add, %3
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add1, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_headroom, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @digital_skb_add_crc(ptr noundef %skb, ptr nocapture noundef readonly %crc_func, i16 noundef zeroext %init, i8 noundef zeroext %bitwise_inv, i8 noundef zeroext %msb_first) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %call = tail call zeroext i16 %crc_func(i16 noundef zeroext %init, ptr noundef %1, i32 noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bitwise_inv)
  %tobool.not = icmp ne i8 %bitwise_inv, 0
  %neg = sext i1 %tobool.not to i16
  %spec.select = xor i16 %call, %neg
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %msb_first)
  %tobool2.not = icmp eq i8 %msb_first, 0
  %extract.t17 = trunc i16 %spec.select to i8
  %extract19 = lshr i16 %spec.select, 8
  %extract.t20 = trunc i16 %extract19 to i8
  br i1 %tobool2.not, label %entry.if.end5_crit_edge, label %if.then3

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i16 %spec.select to i32
  %4 = tail call i32 asm "rev16 $0, $1", "=r,r"(i32 %conv.i) #11, !srcloc !121
  %extract.t = trunc i32 %4 to i8
  %extract22 = lshr i32 %4, 8
  %extract.t18 = trunc i32 %extract22 to i8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %entry.if.end5_crit_edge
  %crc.1.off0 = phi i8 [ %extract.t, %if.then3 ], [ %extract.t17, %entry.if.end5_crit_edge ]
  %crc.1.off8 = phi i8 [ %extract.t18, %if.then3 ], [ %extract.t20, %entry.if.end5_crit_edge ]
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %crc.1.off0, ptr %call.i, align 1
  %call.i21 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #8
  %6 = ptrtoint ptr %call.i21 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %crc.1.off8, ptr %call.i21, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_skb_check_crc(ptr noundef %skb, ptr nocapture noundef readonly %crc_func, i16 noundef zeroext %crc_init, i8 noundef zeroext %bitwise_inv, i8 noundef zeroext %msb_first) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %sub = add i32 %1, -2
  %call = tail call zeroext i16 %crc_func(i16 noundef zeroext %crc_init, ptr noundef %3, i32 noundef %sub) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bitwise_inv)
  %tobool.not = icmp ne i8 %bitwise_inv, 0
  %neg = sext i1 %tobool.not to i16
  %spec.select = xor i16 %call, %neg
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %msb_first)
  %tobool5.not = icmp eq i8 %msb_first, 0
  %4 = tail call i16 @llvm.bswap.i16(i16 %spec.select)
  %crc.1 = select i1 %tobool5.not, i16 %spec.select, i16 %4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %sub10 = add i32 %8, -2
  %arrayidx = getelementptr i8, ptr %6, i32 %sub10
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv11 = zext i8 %10 to i32
  %conv12 = zext i16 %crc.1 to i32
  %and = and i32 %conv12, 255
  %sub13 = sub nsw i32 %conv11, %and
  %sub16 = add i32 %8, -1
  %arrayidx17 = getelementptr i8, ptr %6, i32 %sub16
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %12 to i32
  %13 = lshr i32 %conv12, 8
  %sub21.neg = sub nsw i32 %13, %conv18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub13, i32 %sub21.neg)
  %tobool22.not = icmp eq i32 %sub13, %sub21.neg
  br i1 %tobool22.not, label %if.end24, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext %cmd_type, ptr noundef %skb, ptr noundef %params, i16 noundef zeroext %timeout, ptr noundef %cmd_cb, ptr noundef %cb_context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.digital_cmd, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %cmd_type, ptr %type, align 8
  %timeout1 = getelementptr inbounds %struct.digital_cmd, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %timeout, ptr %timeout1, align 2
  %req = getelementptr inbounds %struct.digital_cmd, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %skb, ptr %req, align 4
  %mdaa_params = getelementptr inbounds %struct.digital_cmd, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %mdaa_params to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %params, ptr %mdaa_params, align 4
  %cmd_cb2 = getelementptr inbounds %struct.digital_cmd, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %cmd_cb2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cmd_cb, ptr %cmd_cb2, align 8
  %cb_context3 = getelementptr inbounds %struct.digital_cmd, ptr %call7.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %cb_context3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cb_context, ptr %cb_context3, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %cmd_lock = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #8
  %cmd_queue = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 13
  %prev.i18 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %prev.i18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i18, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %10, ptr noundef %cmd_queue) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %prev.i18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %prev.i18, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cmd_queue, ptr %call7.i.i, align 8
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmd_lock) #8
  %cmd_work = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i19 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %cmd_work) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_in_configure_hw(ptr noundef %ddev, i32 noundef %type, i32 noundef %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %ddev, i32 noundef %type, i32 noundef %param) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_tg_configure_hw(ptr noundef %ddev, i32 noundef %type, i32 noundef %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tg_configure_hw = getelementptr inbounds %struct.nfc_digital_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tg_configure_hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tg_configure_hw, align 4
  %call = tail call i32 %3(ptr noundef %ddev, i32 noundef %type, i32 noundef %param) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @digital_target_found(ptr noundef %ddev, ptr noundef %target, i8 noundef zeroext %protocol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %poll_tech_index = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 9
  %0 = ptrtoint ptr %poll_tech_index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %poll_tech_index, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 7, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %protocol to i32
  %4 = zext i8 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %protocol, label %do.end [
    i8 1, label %entry.do.body11_crit_edge
    i8 2, label %sw.bb2
    i8 3, label %sw.bb3
    i8 5, label %sw.bb4
    i8 7, label %sw.bb7
    i8 4, label %sw.bb8
    i8 6, label %sw.bb9
  ]

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %digital_skb_check_crc_a.digital_skb_check_crc_f = select i1 %cmp, ptr @digital_skb_check_crc_a, ptr @digital_skb_check_crc_f
  %digital_skb_add_crc_a.digital_skb_add_crc_f = select i1 %cmp, ptr @digital_skb_add_crc_a, ptr @digital_skb_add_crc_f
  %. = select i1 %cmp, i32 7, i32 10
  br label %do.body11

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %conv) #13
  br label %cleanup

do.body11:                                        ; preds = %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb4, %sw.bb3, %sw.bb2, %entry.do.body11_crit_edge
  %check_crc.0 = phi ptr [ @digital_skb_check_crc_b, %sw.bb9 ], [ @digital_skb_check_crc_a, %sw.bb8 ], [ @digital_skb_check_crc_b, %sw.bb7 ], [ @digital_skb_check_crc_f, %sw.bb3 ], [ @digital_skb_check_crc_a, %sw.bb2 ], [ @digital_skb_check_crc_b, %entry.do.body11_crit_edge ], [ %digital_skb_check_crc_a.digital_skb_check_crc_f, %sw.bb4 ]
  %add_crc.0 = phi ptr [ @digital_skb_add_crc_b, %sw.bb9 ], [ @digital_skb_add_crc_a, %sw.bb8 ], [ @digital_skb_add_crc_b, %sw.bb7 ], [ @digital_skb_add_crc_f, %sw.bb3 ], [ @digital_skb_add_crc_a, %sw.bb2 ], [ @digital_skb_add_crc_b, %entry.do.body11_crit_edge ], [ %digital_skb_add_crc_a.digital_skb_add_crc_f, %sw.bb4 ]
  %framing.0 = phi i32 [ 15, %sw.bb9 ], [ 6, %sw.bb8 ], [ 13, %sw.bb7 ], [ 9, %sw.bb3 ], [ 5, %sw.bb2 ], [ 4, %entry.do.body11_crit_edge ], [ %., %sw.bb4 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digital_target_found.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digital_target_found, %if.then16)) #8
          to label %do.end21 [label %if.then16], !srcloc !122

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %conv17 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @digital_target_found.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, i32 noundef %conv17, i32 noundef %conv) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %do.body11
  %curr_rf_tech = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 17
  %5 = ptrtoint ptr %curr_rf_tech to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %3, ptr %curr_rf_tech, align 1
  %driver_capabilities = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 5
  %6 = ptrtoint ptr %driver_capabilities to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_capabilities, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool22.not, ptr %add_crc.0, ptr @digital_skb_add_crc_none
  %spec.select68 = select i1 %tobool22.not, ptr %check_crc.0, ptr @digital_skb_check_crc_none
  %8 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 30
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 29
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select68, ptr %10, align 4
  %ops.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 1
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call.i = tail call i32 %15(ptr noundef %ddev, i32 noundef 1, i32 noundef %framing.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end32, label %digital_in_configure_hw.exit

digital_in_configure_hw.exit:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i) #13
  br label %cleanup

if.end32:                                         ; preds = %do.end21
  %shl = shl nuw nsw i32 1, %conv
  %supported_protocols = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 1
  %16 = ptrtoint ptr %supported_protocols to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl, ptr %supported_protocols, align 4
  %poll_tech_count34 = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 8
  %17 = ptrtoint ptr %poll_tech_count34 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %poll_tech_count34, align 4
  store i8 0, ptr %poll_tech_count34, align 4
  %19 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ddev, align 4
  %call36 = tail call i32 @nfc_targets_found(ptr noundef %20, ptr noundef %target, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end32.cleanup_crit_edge, label %if.then38

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %poll_tech_count34 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %18, ptr %poll_tech_count34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end32.cleanup_crit_edge, %digital_in_configure_hw.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call36, %if.then38 ], [ %call.i, %digital_in_configure_hw.exit ], [ 0, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_skb_check_crc_b(ptr noundef %skb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp ult i32 %1, 3
  br i1 %cmp.i, label %entry.digital_skb_check_crc.exit_crit_edge, label %if.end.i

entry.digital_skb_check_crc.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_check_crc.exit

if.end.i:                                         ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %sub.i = add i32 %1, -2
  %call.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %3, i32 noundef %sub.i) #8
  %spec.select.i = xor i16 %call.i, -1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %sub10.i = add i32 %7, -2
  %arrayidx.i = getelementptr i8, ptr %5, i32 %sub10.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv11.i = zext i8 %9 to i32
  %conv12.i = zext i16 %spec.select.i to i32
  %and.i = and i32 %conv12.i, 255
  %sub13.i = sub nsw i32 %conv11.i, %and.i
  %sub16.i = add i32 %7, -1
  %arrayidx17.i = getelementptr i8, ptr %5, i32 %sub16.i
  %10 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %11 to i32
  %12 = lshr i32 %conv12.i, 8
  %sub21.neg.i = sub nsw i32 %12, %conv18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub13.i, i32 %sub21.neg.i)
  %tobool22.not.i = icmp eq i32 %sub13.i, %sub21.neg.i
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end.i.digital_skb_check_crc.exit_crit_edge

if.end.i.digital_skb_check_crc.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_check_crc.exit

if.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub10.i) #8
  br label %digital_skb_check_crc.exit

digital_skb_check_crc.exit:                       ; preds = %if.end24.i, %if.end.i.digital_skb_check_crc.exit_crit_edge, %entry.digital_skb_check_crc.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end24.i ], [ -5, %entry.digital_skb_check_crc.exit_crit_edge ], [ -5, %if.end.i.digital_skb_check_crc.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_skb_add_crc_b(ptr noundef %skb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %call.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %1, i32 noundef %3) #8
  %spec.select.i = xor i16 %call.i, -1
  %extract.t17.i = trunc i16 %spec.select.i to i8
  %extract19.i = lshr i16 %spec.select.i, 8
  %extract.t20.i = trunc i16 %extract19.i to i8
  %call.i.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #8
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %extract.t17.i, ptr %call.i.i, align 1
  %call.i21.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #8
  %5 = ptrtoint ptr %call.i21.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %extract.t20.i, ptr %call.i21.i, align 1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_skb_check_crc_a(ptr noundef %skb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp ult i32 %1, 3
  br i1 %cmp.i, label %entry.digital_skb_check_crc.exit_crit_edge, label %if.end.i

entry.digital_skb_check_crc.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_check_crc.exit

if.end.i:                                         ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %sub.i = add i32 %1, -2
  %call.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext 25443, ptr noundef %3, i32 noundef %sub.i) #8
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %sub10.i = add i32 %7, -2
  %arrayidx.i = getelementptr i8, ptr %5, i32 %sub10.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv11.i = zext i8 %9 to i32
  %conv12.i = zext i16 %call.i to i32
  %and.i = and i32 %conv12.i, 255
  %sub13.i = sub nsw i32 %conv11.i, %and.i
  %sub16.i = add i32 %7, -1
  %arrayidx17.i = getelementptr i8, ptr %5, i32 %sub16.i
  %10 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %11 to i32
  %12 = lshr i32 %conv12.i, 8
  %sub21.neg.i = sub nsw i32 %12, %conv18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub13.i, i32 %sub21.neg.i)
  %tobool22.not.i = icmp eq i32 %sub13.i, %sub21.neg.i
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end.i.digital_skb_check_crc.exit_crit_edge

if.end.i.digital_skb_check_crc.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_check_crc.exit

if.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub10.i) #8
  br label %digital_skb_check_crc.exit

digital_skb_check_crc.exit:                       ; preds = %if.end24.i, %if.end.i.digital_skb_check_crc.exit_crit_edge, %entry.digital_skb_check_crc.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end24.i ], [ -5, %entry.digital_skb_check_crc.exit_crit_edge ], [ -5, %if.end.i.digital_skb_check_crc.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_skb_add_crc_a(ptr noundef %skb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %call.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext 25443, ptr noundef %1, i32 noundef %3) #8
  %extract.t17.i = trunc i16 %call.i to i8
  %extract19.i = lshr i16 %call.i, 8
  %extract.t20.i = trunc i16 %extract19.i to i8
  %call.i.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #8
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %extract.t17.i, ptr %call.i.i, align 1
  %call.i21.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #8
  %5 = ptrtoint ptr %call.i21.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %extract.t20.i, ptr %call.i21.i, align 1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_skb_check_crc_f(ptr noundef %skb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp ult i32 %1, 3
  br i1 %cmp.i, label %entry.digital_skb_check_crc.exit_crit_edge, label %if.end.i

entry.digital_skb_check_crc.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_check_crc.exit

if.end.i:                                         ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %sub.i = add i32 %1, -2
  %call.i = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %3, i32 noundef %sub.i) #8
  %4 = tail call i16 @llvm.bswap.i16(i16 %call.i) #8
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  %sub10.i = add i32 %8, -2
  %arrayidx.i = getelementptr i8, ptr %6, i32 %sub10.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv11.i = zext i8 %10 to i32
  %conv12.i = zext i16 %4 to i32
  %and.i = and i32 %conv12.i, 255
  %sub13.i = sub nsw i32 %conv11.i, %and.i
  %sub16.i = add i32 %8, -1
  %arrayidx17.i = getelementptr i8, ptr %6, i32 %sub16.i
  %11 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %12 to i32
  %13 = lshr i32 %conv12.i, 8
  %sub21.neg.i = sub nsw i32 %13, %conv18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub13.i, i32 %sub21.neg.i)
  %tobool22.not.i = icmp eq i32 %sub13.i, %sub21.neg.i
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end.i.digital_skb_check_crc.exit_crit_edge

if.end.i.digital_skb_check_crc.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digital_skb_check_crc.exit

if.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub10.i) #8
  br label %digital_skb_check_crc.exit

digital_skb_check_crc.exit:                       ; preds = %if.end24.i, %if.end.i.digital_skb_check_crc.exit_crit_edge, %entry.digital_skb_check_crc.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end24.i ], [ -5, %entry.digital_skb_check_crc.exit_crit_edge ], [ -5, %if.end.i.digital_skb_check_crc.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_skb_add_crc_f(ptr noundef %skb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %call.i = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %1, i32 noundef %3) #8
  %conv.i.i = zext i16 %call.i to i32
  %4 = tail call i32 asm "rev16 $0, $1", "=r,r"(i32 %conv.i.i) #11, !srcloc !121
  %extract.t.i = trunc i32 %4 to i8
  %extract22.i = lshr i32 %4, 8
  %extract.t18.i = trunc i32 %extract22.i to i8
  %call.i.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #8
  %5 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %extract.t.i, ptr %call.i.i, align 1
  %call.i21.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #8
  %6 = ptrtoint ptr %call.i21.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %extract.t18.i, ptr %call.i21.i, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @digital_skb_add_crc_none(ptr nocapture noundef %skb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @digital_skb_check_crc_none(ptr nocapture noundef readnone %skb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_targets_found(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @digital_poll_next_tech(ptr noundef %ddev) local_unnamed_addr #0 align 64 {
entry:
  %rand_mod = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rand_mod) #8
  %0 = ptrtoint ptr %rand_mod to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %rand_mod, align 1, !annotation !123
  %ops.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 1
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %switch_rf.i = getelementptr inbounds %struct.nfc_digital_ops, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %switch_rf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %switch_rf.i, align 4
  %call.i = tail call i32 %4(ptr noundef %ddev, i1 noundef zeroext false) #8
  %poll_lock = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %poll_lock, i32 noundef 0) #8
  %poll_tech_count = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 8
  %5 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %poll_tech_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %poll_lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @get_random_bytes(ptr noundef nonnull %rand_mod, i32 noundef 1) #8
  %7 = ptrtoint ptr %rand_mod to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rand_mod, align 1
  %9 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %poll_tech_count, align 4
  %11 = urem i8 %8, %10
  %poll_tech_index = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 9
  %12 = ptrtoint ptr %poll_tech_index to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %poll_tech_index, align 1
  call void @mutex_unlock(ptr noundef %poll_lock) #8
  %poll_work = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %poll_work, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rand_mod) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfc_digital_allocate_device(ptr noundef %ops, i32 noundef %supported_protocols, i32 noundef %driver_capabilities, i32 noundef %tx_headroom, i32 noundef %tx_tailroom) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %in_send_cmd = getelementptr inbounds %struct.nfc_digital_ops, ptr %ops, i32 0, i32 1
  %2 = ptrtoint ptr %in_send_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_send_cmd, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %tg_listen = getelementptr inbounds %struct.nfc_digital_ops, ptr %ops, i32 0, i32 4
  %4 = ptrtoint ptr %tg_listen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tg_listen, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %tg_configure_hw = getelementptr inbounds %struct.nfc_digital_ops, ptr %ops, i32 0, i32 2
  %6 = ptrtoint ptr %tg_configure_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tg_configure_hw, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %tg_send_cmd = getelementptr inbounds %struct.nfc_digital_ops, ptr %ops, i32 0, i32 3
  %8 = ptrtoint ptr %tg_send_cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tg_send_cmd, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %lor.lhs.false6.cleanup_crit_edge, label %lor.lhs.false8

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %abort_cmd = getelementptr inbounds %struct.nfc_digital_ops, ptr %ops, i32 0, i32 9
  %10 = ptrtoint ptr %abort_cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %abort_cmd, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %lor.lhs.false8.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %switch_rf = getelementptr inbounds %struct.nfc_digital_ops, ptr %ops, i32 0, i32 8
  %12 = ptrtoint ptr %switch_rf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %switch_rf, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %lor.lhs.false10.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %tg_listen_md = getelementptr inbounds %struct.nfc_digital_ops, ptr %ops, i32 0, i32 6
  %14 = ptrtoint ptr %tg_listen_md to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tg_listen_md, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %lor.lhs.false12.if.end_crit_edge, label %land.lhs.true

lor.lhs.false12.if.end_crit_edge:                 ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false12
  %tg_get_rf_tech = getelementptr inbounds %struct.nfc_digital_ops, ptr %ops, i32 0, i32 7
  %16 = ptrtoint ptr %tg_get_rf_tech to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tg_get_rf_tech, align 4
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false12.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 500) #12
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %driver_capabilities18 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %driver_capabilities18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %driver_capabilities, ptr %driver_capabilities18, align 4
  %ops19 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %ops19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ops, ptr %ops19, align 4
  %cmd_lock = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %cmd_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @nfc_digital_allocate_device.__key) #8
  %cmd_queue = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 13
  %21 = ptrtoint ptr %cmd_queue to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %cmd_queue, ptr %cmd_queue, align 4
  %prev.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cmd_queue, ptr %prev.i, align 8
  %cmd_work = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %cmd_work, i32 noundef 0) #8
  %23 = ptrtoint ptr %cmd_work to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %cmd_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @nfc_digital_allocate_device.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry24 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 11, i32 1
  %24 = ptrtoint ptr %entry24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry24, ptr %entry24, align 8
  %prev.i177 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i177 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry24, ptr %prev.i177, align 4
  %func = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 11, i32 2
  %26 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @digital_wq_cmd, ptr %func, align 8
  %cmd_complete_work = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 12
  tail call void @__init_work(ptr noundef %cmd_complete_work, i32 noundef 0) #8
  %27 = ptrtoint ptr %cmd_complete_work to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %cmd_complete_work, align 8
  %lockdep_map34 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map34, ptr noundef nonnull @.str.14, ptr noundef nonnull @nfc_digital_allocate_device.__key.13, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry36 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 12, i32 1
  %28 = ptrtoint ptr %entry36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry36, ptr %entry36, align 4
  %prev.i178 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 12, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i178 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry36, ptr %prev.i178, align 8
  %func38 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 12, i32 2
  %30 = ptrtoint ptr %func38 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @digital_wq_cmd_complete, ptr %func38, align 4
  %poll_lock = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %poll_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @nfc_digital_allocate_device.__key.15) #8
  %poll_work = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 15
  tail call void @__init_work(ptr noundef %poll_work, i32 noundef 0) #8
  %31 = ptrtoint ptr %poll_work to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %poll_work, align 8
  %lockdep_map53 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map53, ptr noundef nonnull @.str.18, ptr noundef nonnull @nfc_digital_allocate_device.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry56 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 1
  %32 = ptrtoint ptr %entry56 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %entry56, ptr %entry56, align 4
  %prev.i179 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i179 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry56, ptr %prev.i179, align 8
  %func59 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 2
  %34 = ptrtoint ptr %func59 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @digital_wq_poll, ptr %func59, align 4
  %timer = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 15, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.20, ptr noundef nonnull @nfc_digital_allocate_device.__key.19) #8
  %and = and i32 %supported_protocols, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %if.end17.if.end70_crit_edge, label %if.then69

if.end17.if.end70_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then69:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %protocols = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %protocols to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %protocols, align 8
  %or = or i32 %36, 2
  store i32 %or, ptr %protocols, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end17.if.end70_crit_edge
  %and71 = and i32 %supported_protocols, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.if.end76_crit_edge, label %if.then73

if.end70.if.end76_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %protocols74 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %protocols74 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %protocols74, align 8
  %or75 = or i32 %38, 4
  store i32 %or75, ptr %protocols74, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end70.if.end76_crit_edge
  %and77 = and i32 %supported_protocols, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end82_crit_edge, label %if.then79

if.end76.if.end82_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %protocols80 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %protocols80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %protocols80, align 8
  %or81 = or i32 %40, 8
  store i32 %or81, ptr %protocols80, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end76.if.end82_crit_edge
  %and83 = and i32 %supported_protocols, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end82.if.end88_crit_edge, label %if.then85

if.end82.if.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %protocols86 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %protocols86 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %protocols86, align 8
  %or87 = or i32 %42, 32
  store i32 %or87, ptr %protocols86, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end82.if.end88_crit_edge
  %and89 = and i32 %supported_protocols, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end88.if.end94_crit_edge, label %if.then91

if.end88.if.end94_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %protocols92 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %protocols92 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %protocols92, align 8
  %or93 = or i32 %44, 128
  store i32 %or93, ptr %protocols92, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.end88.if.end94_crit_edge
  %and95 = and i32 %supported_protocols, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end94.if.end100_crit_edge, label %if.then97

if.end94.if.end100_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %protocols98 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %protocols98 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %protocols98, align 8
  %or99 = or i32 %46, 16
  store i32 %or99, ptr %protocols98, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.end94.if.end100_crit_edge
  %and101 = and i32 %supported_protocols, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end100.if.end106_crit_edge, label %if.then103

if.end100.if.end106_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %protocols104 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %protocols104 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %protocols104, align 8
  %or105 = or i32 %48, 64
  store i32 %or105, ptr %protocols104, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %if.end100.if.end106_crit_edge
  %add = add i32 %tx_headroom, 7
  %tx_headroom107 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %tx_headroom107 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add, ptr %tx_headroom107, align 4
  %add108 = add i32 %tx_tailroom, 2
  %tx_tailroom109 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %tx_tailroom109 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add108, ptr %tx_tailroom109, align 8
  %protocols110 = getelementptr inbounds %struct.nfc_digital_dev, ptr %call7.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %protocols110 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %protocols110, align 8
  %call113 = tail call ptr @nfc_allocate_device(ptr noundef nonnull @digital_nfc_ops, i32 noundef %52, i32 noundef %add, i32 noundef %add108) #8
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call113, ptr %call7.i.i, align 8
  %tobool115.not = icmp eq ptr %call113, null
  br i1 %tobool115.not, label %do.end119, label %if.end121

do.end119:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end121:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %call113, i32 0, i32 5, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end121, %do.end119, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end121 ], [ null, %do.end119 ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %lor.lhs.false10.cleanup_crit_edge ], [ null, %lor.lhs.false8.cleanup_crit_edge ], [ null, %lor.lhs.false6.cleanup_crit_edge ], [ null, %lor.lhs.false4.cleanup_crit_edge ], [ null, %lor.lhs.false2.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_wq_cmd(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -172
  %cmd_lock = getelementptr i8, ptr %work, i32 96
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #8
  %cmd_queue = getelementptr i8, ptr %work, i32 88
  %0 = ptrtoint ptr %cmd_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cmd_queue, align 4
  %cmp.not = icmp eq ptr %1, %cmd_queue
  %tobool.not112 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.not, %tobool.not112
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %pending = getelementptr inbounds %struct.digital_cmd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmd_lock) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %pending, align 1
  tail call void @mutex_unlock(ptr noundef %cmd_lock) #8
  %req = getelementptr inbounds %struct.digital_cmd, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %if.end.if.end23_crit_edge, label %do.body12

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digital_wq_cmd.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digital_wq_cmd, %if.then17)) #8
          to label %if.end23 [label %if.then17], !srcloc !122

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %10, i32 noundef %12, i1 noundef zeroext false) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %do.body12, %if.end.if.end23_crit_edge
  %type = getelementptr inbounds %struct.digital_cmd, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type, align 4
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %14, label %do.end46 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb27
    i8 2, label %sw.bb32
    i8 3, label %sw.bb36
    i8 4, label %sw.bb40
  ]

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %ops = getelementptr i8, ptr %work, i32 -168
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %in_send_cmd = getelementptr inbounds %struct.nfc_digital_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %in_send_cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %in_send_cmd, align 4
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req, align 4
  %timeout = getelementptr inbounds %struct.digital_cmd, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %timeout to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %timeout, align 2
  %call26 = tail call i32 %19(ptr noundef %add.ptr, ptr noundef %21, i16 noundef zeroext %23, ptr noundef nonnull @digital_send_cmd_complete, ptr noundef nonnull %1) #8
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %ops28 = getelementptr i8, ptr %work, i32 -168
  %24 = ptrtoint ptr %ops28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops28, align 4
  %tg_send_cmd = getelementptr inbounds %struct.nfc_digital_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %tg_send_cmd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tg_send_cmd, align 4
  %28 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %req, align 4
  %timeout30 = getelementptr inbounds %struct.digital_cmd, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %timeout30 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %timeout30, align 2
  %call31 = tail call i32 %27(ptr noundef %add.ptr, ptr noundef %29, i16 noundef zeroext %31, ptr noundef nonnull @digital_send_cmd_complete, ptr noundef nonnull %1) #8
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %ops33 = getelementptr i8, ptr %work, i32 -168
  %32 = ptrtoint ptr %ops33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops33, align 4
  %tg_listen = getelementptr inbounds %struct.nfc_digital_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %tg_listen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tg_listen, align 4
  %timeout34 = getelementptr inbounds %struct.digital_cmd, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %timeout34 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %timeout34, align 2
  %call35 = tail call i32 %35(ptr noundef %add.ptr, i16 noundef zeroext %37, ptr noundef nonnull @digital_send_cmd_complete, ptr noundef nonnull %1) #8
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %mdaa_params = getelementptr inbounds %struct.digital_cmd, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %mdaa_params to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mdaa_params, align 4
  %ops37 = getelementptr i8, ptr %work, i32 -168
  %40 = ptrtoint ptr %ops37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops37, align 4
  %tg_listen_mdaa = getelementptr inbounds %struct.nfc_digital_ops, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %tg_listen_mdaa to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tg_listen_mdaa, align 4
  %timeout38 = getelementptr inbounds %struct.digital_cmd, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %timeout38 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %timeout38, align 2
  %call39 = tail call i32 %43(ptr noundef %add.ptr, ptr noundef %39, i16 noundef zeroext %45, ptr noundef nonnull @digital_send_cmd_complete, ptr noundef nonnull %1) #8
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %ops41 = getelementptr i8, ptr %work, i32 -168
  %46 = ptrtoint ptr %ops41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops41, align 4
  %tg_listen_md = getelementptr inbounds %struct.nfc_digital_ops, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %tg_listen_md to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tg_listen_md, align 4
  %timeout42 = getelementptr inbounds %struct.digital_cmd, ptr %1, i32 0, i32 3
  %50 = ptrtoint ptr %timeout42 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %timeout42, align 2
  %call43 = tail call i32 %49(ptr noundef %add.ptr, i16 noundef zeroext %51, ptr noundef nonnull @digital_send_cmd_complete, ptr noundef nonnull %1) #8
  br label %sw.epilog

do.end46:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %conv24 = zext i8 %14 to i32
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, i32 noundef %conv24) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb40, %sw.bb36, %sw.bb32, %sw.bb27, %sw.bb
  %rc.0 = phi i32 [ %call43, %sw.bb40 ], [ %call39, %sw.bb36 ], [ %call35, %sw.bb32 ], [ %call31, %sw.bb27 ], [ %call26, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool51.not = icmp eq i32 %rc.0, 0
  br i1 %tobool51.not, label %sw.epilog.cleanup_crit_edge, label %do.end56

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end56:                                         ; preds = %sw.epilog
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23, i32 noundef %rc.0) #13
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end56.list_del.exit_crit_edge

do.end56.list_del.exit_crit_edge:                 ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end56.list_del.exit_crit_edge
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %cmd_lock) #8
  %60 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %req, align 4
  tail call void @kfree_skb_reason(ptr noundef %61, i32 noundef 0) #8
  %mdaa_params62 = getelementptr inbounds %struct.digital_cmd, ptr %1, i32 0, i32 6
  %62 = ptrtoint ptr %mdaa_params62 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mdaa_params62, align 4
  tail call void @kfree(ptr noundef %63) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %64 = load ptr, ptr @system_wq, align 4
  %call.i.i110 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %64, ptr noundef %work) #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %sw.epilog.cleanup_crit_edge, %do.end46, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_wq_cmd_complete(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -216
  %cmd_lock = getelementptr i8, ptr %work, i32 52
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #8
  %cmd_queue = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %cmd_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cmd_queue, align 4
  %cmp.not = icmp eq ptr %1, %cmd_queue
  %tobool.not43 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.not, %tobool.not43
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %cmd_lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %cmd_lock) #8
  %resp = getelementptr inbounds %struct.digital_cmd, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resp, align 4
  %cmp.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %list_del.exit.if.end21_crit_edge, label %do.body9

list_del.exit.if.end21_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.body9:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digital_wq_cmd_complete.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digital_wq_cmd_complete, %if.then15)) #8
          to label %if.end21 [label %if.then15], !srcloc !122

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resp, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %15, i32 noundef %17, i1 noundef zeroext false) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %do.body9, %list_del.exit.if.end21_crit_edge
  %cmd_cb = getelementptr inbounds %struct.digital_cmd, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %cmd_cb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd_cb, align 4
  %cb_context = getelementptr inbounds %struct.digital_cmd, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %cb_context to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cb_context, align 4
  %22 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resp, align 4
  tail call void %19(ptr noundef %add.ptr, ptr noundef %21, ptr noundef %23) #8
  %mdaa_params = getelementptr inbounds %struct.digital_cmd, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %mdaa_params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdaa_params, align 4
  tail call void @kfree(ptr noundef %25) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  %cmd_work = getelementptr i8, ptr %work, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i41 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %cmd_work) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_wq_poll(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -360
  %poll_lock = getelementptr i8, ptr %work, i32 -280
  tail call void @mutex_lock_nested(ptr noundef %poll_lock, i32 noundef 0) #8
  %poll_tech_count = getelementptr i8, ptr %work, i32 -284
  %0 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %poll_tech_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %poll_lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %poll_techs = getelementptr i8, ptr %work, i32 -332
  %poll_tech_index = getelementptr i8, ptr %work, i32 -283
  %2 = ptrtoint ptr %poll_tech_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %poll_tech_index, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [6 x %struct.digital_poll_tech], ptr %poll_techs, i32 0, i32 %idxprom
  tail call void @mutex_unlock(ptr noundef %poll_lock) #8
  %poll_func = getelementptr inbounds %struct.digital_poll_tech, ptr %arrayidx, i32 0, i32 1
  %4 = ptrtoint ptr %poll_func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %poll_func, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  %call = tail call i32 %5(ptr noundef %add.ptr, i8 noundef zeroext %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @digital_poll_next_tech(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_allocate_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_digital_free_device(ptr noundef %ddev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %1, i32 0, i32 5
  tail call void @put_device(ptr noundef %dev1.i) #8
  tail call void @kfree(ptr noundef %ddev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_digital_register_device(ptr nocapture noundef readonly %ddev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %call = tail call i32 @nfc_register_device(ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_digital_unregister_device(ptr noundef %ddev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  tail call void @nfc_unregister_device(ptr noundef %1) #8
  %poll_lock = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %poll_lock, i32 noundef 0) #8
  %poll_tech_count = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 8
  %2 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %poll_tech_count, align 4
  tail call void @mutex_unlock(ptr noundef %poll_lock) #8
  %poll_work = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 15
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %poll_work) #8
  %cmd_work = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 11
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %cmd_work) #8
  %cmd_complete_work = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 12
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %cmd_complete_work) #8
  %cmd_queue = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 13
  %3 = ptrtoint ptr %cmd_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_queue, align 4
  %cmp.not36 = icmp eq ptr %4, %cmd_queue
  br i1 %cmp.not36, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %cmd.037 = phi ptr [ %n.039, %if.end.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %cmd.037 to i32
  call void @__asan_load4_noabort(i32 %5)
  %n.039 = load ptr, ptr %cmd.037, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cmd.037) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cmd.037, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %cmd.037 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd.037, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %12 = ptrtoint ptr %cmd.037 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %cmd.037, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cmd.037, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmd_cb = getelementptr inbounds %struct.digital_cmd, ptr %cmd.037, i32 0, i32 7
  %14 = ptrtoint ptr %cmd_cb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd_cb, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cb_context = getelementptr inbounds %struct.digital_cmd, ptr %cmd.037, i32 0, i32 8
  %16 = ptrtoint ptr %cb_context to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cb_context, align 4
  tail call void %15(ptr noundef %ddev, ptr noundef %17, ptr noundef nonnull inttoptr (i32 -19 to ptr)) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  %mdaa_params = getelementptr inbounds %struct.digital_cmd, ptr %cmd.037, i32 0, i32 6
  %18 = ptrtoint ptr %mdaa_params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdaa_params, align 4
  tail call void @kfree(ptr noundef %19) #8
  tail call void @kfree(ptr noundef %cmd.037) #8
  %cmp.not = icmp eq ptr %n.039, %cmd_queue
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_send_cmd_complete(ptr noundef %ddev, ptr nocapture noundef writeonly %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %resp1 = getelementptr inbounds %struct.digital_cmd, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %resp1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %resp, ptr %resp1, align 4
  %cmd_complete_work = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %cmd_complete_work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_dev_up(ptr nocapture noundef readonly %nfc_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %nfc_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ops.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %switch_rf.i = getelementptr inbounds %struct.nfc_digital_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %switch_rf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %switch_rf.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_dev_down(ptr nocapture noundef readonly %nfc_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %nfc_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ops.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %switch_rf.i = getelementptr inbounds %struct.nfc_digital_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %switch_rf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %switch_rf.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_start_poll(ptr nocapture noundef readonly %nfc_dev, i32 noundef %im_protocols, i32 noundef %tm_protocols) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %nfc_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digital_start_poll.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digital_start_poll, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !122

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %protocols = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %protocols to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %protocols, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @digital_start_poll.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef %im_protocols, i32 noundef %tm_protocols, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %protocols4 = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %protocols4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %protocols4, align 4
  %and = and i32 %5, %im_protocols
  %and6 = and i32 %5, %tm_protocols
  %6 = or i32 %tm_protocols, %im_protocols
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %do.end12, label %if.end15

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.32) #13
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %poll_tech_count = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %poll_tech_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool16.not = icmp eq i8 %10, 0
  br i1 %tobool16.not, label %if.end23, label %do.end20

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32) #13
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %curr_protocol = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %curr_protocol to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %curr_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool24.not = icmp eq i8 %12, 0
  br i1 %tobool24.not, label %if.end31, label %do.end28

do.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.32) #13
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %13 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %poll_tech_count, align 4
  %poll_tech_index = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %poll_tech_index to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %poll_tech_index, align 1
  %and33 = and i32 %and, 54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end36_crit_edge, label %digital_add_poll_tech.exit

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

digital_add_poll_tech.exit:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %poll_tech_count, align 4
  %arrayidx.i = getelementptr %struct.nfc_digital_dev, ptr %1, i32 0, i32 7, i32 0
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx.i, align 4
  %poll_func4.i = getelementptr %struct.nfc_digital_dev, ptr %1, i32 0, i32 7, i32 0, i32 1
  %17 = ptrtoint ptr %poll_func4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @digital_in_send_sens_req, ptr %poll_func4.i, align 4
  br label %if.end36

if.end36:                                         ; preds = %digital_add_poll_tech.exit, %if.end31.if.end36_crit_edge
  %and37 = and i32 %and, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end40_crit_edge, label %if.then39

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  %18 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %poll_tech_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %19)
  %cmp.i103 = icmp ugt i8 %19, 5
  br i1 %cmp.i103, label %if.then39.if.end40_crit_edge, label %if.end.i108

if.then39.if.end40_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end.i108:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i104 = zext i8 %19 to i32
  %inc.i105 = add nuw nsw i8 %19, 1
  %20 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %inc.i105, ptr %poll_tech_count, align 4
  %arrayidx.i106 = getelementptr %struct.nfc_digital_dev, ptr %1, i32 0, i32 7, i32 %conv.i104
  %21 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %arrayidx.i106, align 4
  %poll_func4.i107 = getelementptr %struct.nfc_digital_dev, ptr %1, i32 0, i32 7, i32 %conv.i104, i32 1
  %22 = ptrtoint ptr %poll_func4.i107 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @digital_in_send_sensb_req, ptr %poll_func4.i107, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end.i108, %if.then39.if.end40_crit_edge, %if.end36.if.end40_crit_edge
  %and41 = and i32 %and, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end44_crit_edge, label %if.then43

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then43:                                        ; preds = %if.end40
  %23 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %poll_tech_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %24)
  %cmp.i111 = icmp ugt i8 %24, 5
  br i1 %cmp.i111, label %if.then43.if.end44_crit_edge, label %digital_add_poll_tech.exit117

if.then43.if.end44_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

digital_add_poll_tech.exit117:                    ; preds = %if.then43
  %conv.i112 = zext i8 %24 to i32
  %inc.i113 = add nuw nsw i8 %24, 1
  %25 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %inc.i113, ptr %poll_tech_count, align 4
  %arrayidx.i114 = getelementptr %struct.nfc_digital_dev, ptr %1, i32 0, i32 7, i32 %conv.i112
  %26 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %arrayidx.i114, align 4
  %poll_func4.i115 = getelementptr %struct.nfc_digital_dev, ptr %1, i32 0, i32 7, i32 %conv.i112, i32 1
  %27 = ptrtoint ptr %poll_func4.i115 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @digital_in_send_sensf_req, ptr %poll_func4.i115, align 4
  %.pr = load i8, ptr %poll_tech_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.pr)
  %cmp.i119 = icmp ugt i8 %.pr, 5
  br i1 %cmp.i119, label %digital_add_poll_tech.exit117.if.end44_crit_edge, label %if.end.i124

digital_add_poll_tech.exit117.if.end44_crit_edge: ; preds = %digital_add_poll_tech.exit117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end.i124:                                      ; preds = %digital_add_poll_tech.exit117
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i120 = zext i8 %.pr to i32
  %inc.i121 = add nuw nsw i8 %.pr, 1
  %28 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %inc.i121, ptr %poll_tech_count, align 4
  %arrayidx.i122 = getelementptr %struct.nfc_digital_dev, ptr %1, i32 0, i32 7, i32 %conv.i120
  %29 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %arrayidx.i122, align 4
  %poll_func4.i123 = getelementptr %struct.nfc_digital_dev, ptr %1, i32 0, i32 7, i32 %conv.i120, i32 1
  %30 = ptrtoint ptr %poll_func4.i123 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @digital_in_send_sensf_req, ptr %poll_func4.i123, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end.i124, %digital_add_poll_tech.exit117.if.end44_crit_edge, %if.then43.if.end44_crit_edge, %if.end40.if.end44_crit_edge
  %and45 = and i32 %and, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end48_crit_edge, label %if.then47

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then47:                                        ; preds = %if.end44
  %31 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %poll_tech_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %32)
  %cmp.i127 = icmp ugt i8 %32, 5
  br i1 %cmp.i127, label %if.then47.if.end48_crit_edge, label %if.end.i132

if.then47.if.end48_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end.i132:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i128 = zext i8 %32 to i32
  %inc.i129 = add nuw nsw i8 %32, 1
  %33 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %inc.i129, ptr %poll_tech_count, align 4
  %arrayidx.i130 = getelementptr %struct.nfc_digital_dev, ptr %1, i32 0, i32 7, i32 %conv.i128
  %34 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %arrayidx.i130, align 4
  %poll_func4.i131 = getelementptr %struct.nfc_digital_dev, ptr %1, i32 0, i32 7, i32 %conv.i128, i32 1
  %35 = ptrtoint ptr %poll_func4.i131 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @digital_in_send_iso15693_inv_req, ptr %poll_func4.i131, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end.i132, %if.then47.if.end48_crit_edge, %if.end44.if.end48_crit_edge
  %and49 = and i32 %and6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end60_crit_edge, label %if.then51

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then51:                                        ; preds = %if.end48
  %ops = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops, align 4
  %tg_listen_mdaa = getelementptr inbounds %struct.nfc_digital_ops, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %tg_listen_mdaa to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tg_listen_mdaa, align 4
  %tobool52.not = icmp eq ptr %39, null
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.then51
  %40 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %poll_tech_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %41)
  %cmp.i135 = icmp ugt i8 %41, 5
  br i1 %cmp.i135, label %if.then53.if.end69_crit_edge, label %if.then53.if.end60.sink.split_crit_edge

if.then53.if.end60.sink.split_crit_edge:          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.sink.split

if.then53.if.end69_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.else:                                          ; preds = %if.then51
  %tg_listen_md = getelementptr inbounds %struct.nfc_digital_ops, ptr %37, i32 0, i32 6
  %42 = ptrtoint ptr %tg_listen_md to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tg_listen_md, align 4
  %tobool55.not = icmp eq ptr %43, null
  %44 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %poll_tech_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %45)
  %cmp.i151 = icmp ugt i8 %45, 5
  br i1 %tobool55.not, label %if.else57, label %if.then56

if.then56:                                        ; preds = %if.else
  br i1 %cmp.i151, label %if.then56.if.end69_crit_edge, label %if.then56.if.end60.sink.split_crit_edge

if.then56.if.end60.sink.split_crit_edge:          ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.sink.split

if.then56.if.end69_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.else57:                                        ; preds = %if.else
  br i1 %cmp.i151, label %if.else57.if.end69_crit_edge, label %digital_add_poll_tech.exit157

if.else57.if.end69_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

digital_add_poll_tech.exit157:                    ; preds = %if.else57
  %conv.i152 = zext i8 %45 to i32
  %inc.i153 = add nuw nsw i8 %45, 1
  %46 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %inc.i153, ptr %poll_tech_count, align 4
  %arrayidx.i154 = getelementptr %struct.nfc_digital_dev, ptr %1, i32 0, i32 7, i32 %conv.i152
  %47 = ptrtoint ptr %arrayidx.i154 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx.i154, align 4
  %poll_func4.i155 = getelementptr %struct.nfc_digital_dev, ptr %1, i32 0, i32 7, i32 %conv.i152, i32 1
  %48 = ptrtoint ptr %poll_func4.i155 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @digital_tg_listen_nfca, ptr %poll_func4.i155, align 4
  %.pr176 = load i8, ptr %poll_tech_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.pr176)
  %cmp.i159 = icmp ugt i8 %.pr176, 5
  br i1 %cmp.i159, label %digital_add_poll_tech.exit157.if.end69_crit_edge, label %digital_add_poll_tech.exit165

digital_add_poll_tech.exit157.if.end69_crit_edge: ; preds = %digital_add_poll_tech.exit157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

digital_add_poll_tech.exit165:                    ; preds = %digital_add_poll_tech.exit157
  %conv.i160 = zext i8 %.pr176 to i32
  %inc.i161 = add nuw nsw i8 %.pr176, 1
  %49 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %inc.i161, ptr %poll_tech_count, align 4
  %arrayidx.i162 = getelementptr %struct.nfc_digital_dev, ptr %1, i32 0, i32 7, i32 %conv.i160
  %50 = ptrtoint ptr %arrayidx.i162 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %arrayidx.i162, align 4
  %poll_func4.i163 = getelementptr %struct.nfc_digital_dev, ptr %1, i32 0, i32 7, i32 %conv.i160, i32 1
  %51 = ptrtoint ptr %poll_func4.i163 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @digital_tg_listen_nfcf, ptr %poll_func4.i163, align 4
  %.pr178 = load i8, ptr %poll_tech_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.pr178)
  %cmp.i167 = icmp ugt i8 %.pr178, 5
  br i1 %cmp.i167, label %digital_add_poll_tech.exit165.if.end69_crit_edge, label %digital_add_poll_tech.exit165.if.end60.sink.split_crit_edge

digital_add_poll_tech.exit165.if.end60.sink.split_crit_edge: ; preds = %digital_add_poll_tech.exit165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.sink.split

digital_add_poll_tech.exit165.if.end69_crit_edge: ; preds = %digital_add_poll_tech.exit165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end60.sink.split:                              ; preds = %digital_add_poll_tech.exit165.if.end60.sink.split_crit_edge, %if.then56.if.end60.sink.split_crit_edge, %if.then53.if.end60.sink.split_crit_edge
  %.sink188 = phi i8 [ %41, %if.then53.if.end60.sink.split_crit_edge ], [ %45, %if.then56.if.end60.sink.split_crit_edge ], [ %.pr178, %digital_add_poll_tech.exit165.if.end60.sink.split_crit_edge ]
  %.sink = phi i8 [ 0, %if.then53.if.end60.sink.split_crit_edge ], [ 0, %if.then56.if.end60.sink.split_crit_edge ], [ 2, %digital_add_poll_tech.exit165.if.end60.sink.split_crit_edge ]
  %digital_tg_listen_nfcf.sink = phi ptr [ @digital_tg_listen_mdaa, %if.then53.if.end60.sink.split_crit_edge ], [ @digital_tg_listen_md, %if.then56.if.end60.sink.split_crit_edge ], [ @digital_tg_listen_nfcf, %digital_add_poll_tech.exit165.if.end60.sink.split_crit_edge ]
  %conv.i136 = zext i8 %.sink188 to i32
  %inc.i169 = add nuw nsw i8 %.sink188, 1
  %52 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %inc.i169, ptr %poll_tech_count, align 4
  %arrayidx.i170 = getelementptr %struct.nfc_digital_dev, ptr %1, i32 0, i32 7, i32 %conv.i136
  %53 = ptrtoint ptr %arrayidx.i170 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %.sink, ptr %arrayidx.i170, align 4
  %poll_func4.i171 = getelementptr %struct.nfc_digital_dev, ptr %1, i32 0, i32 7, i32 %conv.i136, i32 1
  %54 = ptrtoint ptr %poll_func4.i171 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %digital_tg_listen_nfcf.sink, ptr %poll_func4.i171, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end60.sink.split, %if.end48.if.end60_crit_edge
  %55 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_load1_noabort(i32 %55)
  %.pr180.pr = load i8, ptr %poll_tech_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr180.pr)
  %tobool62.not = icmp eq i8 %.pr180.pr, 0
  br i1 %tobool62.not, label %do.end66, label %if.end60.if.end69_crit_edge

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.32, i32 noundef %and, i32 noundef %and6) #13
  br label %cleanup

if.end69:                                         ; preds = %if.end60.if.end69_crit_edge, %digital_add_poll_tech.exit165.if.end69_crit_edge, %digital_add_poll_tech.exit157.if.end69_crit_edge, %if.else57.if.end69_crit_edge, %if.then56.if.end69_crit_edge, %if.then53.if.end69_crit_edge
  %poll_work = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %56 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %56, ptr noundef %poll_work, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %do.end66, %do.end28, %do.end20, %do.end12
  %retval.0 = phi i32 [ -16, %do.end20 ], [ -16, %do.end28 ], [ 0, %if.end69 ], [ -22, %do.end66 ], [ -22, %do.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_stop_poll(ptr nocapture noundef readonly %nfc_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %nfc_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %poll_lock = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %poll_lock, i32 noundef 0) #8
  %poll_tech_count = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %poll_tech_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #13
  tail call void @mutex_unlock(ptr noundef %poll_lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %poll_tech_count, align 4
  tail call void @mutex_unlock(ptr noundef %poll_lock) #8
  %poll_work = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 15
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %poll_work) #8
  %ops.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %abort_cmd.i = getelementptr inbounds %struct.nfc_digital_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %abort_cmd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %abort_cmd.i, align 4
  tail call void %8(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_dep_link_up(ptr nocapture noundef readonly %nfc_dev, ptr noundef %target, i8 noundef zeroext %comm_mode, ptr noundef %gb, i32 noundef %gb_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %nfc_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @digital_in_send_atr_req(ptr noundef %1, ptr noundef %target, i8 noundef zeroext %comm_mode, ptr noundef %gb, i32 noundef %gb_len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %curr_protocol = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %curr_protocol to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 5, ptr %curr_protocol, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_dep_link_down(ptr nocapture noundef readonly %nfc_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %nfc_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ops.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %abort_cmd.i = getelementptr inbounds %struct.nfc_digital_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %abort_cmd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %abort_cmd.i, align 4
  tail call void %5(ptr noundef %1) #8
  %curr_protocol = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %curr_protocol to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %curr_protocol, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_activate_target(ptr nocapture noundef readonly %nfc_dev, ptr nocapture noundef readnone %target, i32 noundef %protocol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %nfc_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %poll_tech_count = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %poll_tech_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %poll_tech_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %curr_protocol = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %curr_protocol to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.48) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %protocol to i8
  %6 = ptrtoint ptr %curr_protocol to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %curr_protocol, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end6, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ -16, %do.end6 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_deactivate_target(ptr nocapture noundef readonly %nfc_dev, ptr nocapture noundef readnone %target, i8 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %nfc_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %curr_protocol = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %curr_protocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %abort_cmd.i = getelementptr inbounds %struct.nfc_digital_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %abort_cmd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %abort_cmd.i, align 4
  tail call void %7(ptr noundef %1) #8
  %8 = ptrtoint ptr %curr_protocol to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %curr_protocol, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_in_send(ptr nocapture noundef readonly %nfc_dev, ptr noundef %target, ptr noundef %skb, ptr noundef %cb, ptr noundef %cb_context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %nfc_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cb, ptr %call7.i.i, align 8
  %cb_context3 = getelementptr inbounds %struct.digital_data_exch, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %cb_context3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cb_context, ptr %cb_context3, align 4
  %curr_protocol = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %curr_protocol to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %curr_protocol, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %6, label %if.end.if.end21_crit_edge [
    i8 5, label %if.then5
    i8 4, label %if.end.if.then16_crit_edge
    i8 6, label %if.end.if.then16_crit_edge47
  ]

if.end.if.then16_crit_edge47:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @digital_in_send_dep_req(ptr noundef %1, ptr noundef %target, ptr noundef %skb, ptr noundef nonnull %call7.i.i) #8
  br label %exit

if.then16:                                        ; preds = %if.end.if.then16_crit_edge, %if.end.if.then16_crit_edge47
  %call17 = tail call i32 @digital_in_iso_dep_push_sod(ptr noundef %1, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end21_crit_edge, label %if.then16.if.then24_crit_edge

if.then16.if.then24_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %if.then16.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %skb_add_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %1, i32 0, i32 30
  %8 = ptrtoint ptr %skb_add_crc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb_add_crc, align 4
  tail call void %9(ptr noundef %skb) #8
  %call.i = tail call i32 @digital_send_cmd(ptr noundef %1, i8 noundef zeroext 0, ptr noundef %skb, ptr noundef null, i16 noundef zeroext 500, ptr noundef nonnull @digital_in_send_complete, ptr noundef nonnull %call7.i.i) #8
  br label %exit

exit:                                             ; preds = %if.end21, %if.then5
  %rc.0 = phi i32 [ %call6, %if.then5 ], [ %call.i, %if.end21 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool23.not = icmp eq i32 %rc.0, 0
  br i1 %tobool23.not, label %exit.cleanup_crit_edge, label %exit.if.then24_crit_edge

exit.if.then24_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24:                                        ; preds = %exit.if.then24_crit_edge, %if.then16.if.then24_crit_edge
  %rc.046 = phi i32 [ %rc.0, %exit.if.then24_crit_edge ], [ %call17, %if.then16.if.then24_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %rc.046, %if.then24 ], [ 0, %exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_tg_send(ptr nocapture noundef readonly %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @digital_tg_send_dep_res(ptr noundef %1, ptr noundef %skb) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_send_sens_req(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_send_sensb_req(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_send_sensf_req(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_send_iso15693_inv_req(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_tg_listen_mdaa(ptr noundef %ddev, i8 noundef zeroext %rf_tech) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 256, ptr %call7.i.i, align 8
  %nfcid1 = getelementptr inbounds %struct.digital_tg_mdaa_params, ptr %call7.i.i, i32 0, i32 1
  tail call void @get_random_bytes(ptr noundef %nfcid1, i32 noundef 3) #8
  %sel_res = getelementptr inbounds %struct.digital_tg_mdaa_params, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %sel_res to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %sel_res, align 1
  %nfcid2 = getelementptr inbounds %struct.digital_tg_mdaa_params, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %nfcid2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %nfcid2, align 2
  %arrayidx2 = getelementptr %struct.digital_tg_mdaa_params, ptr %call7.i.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -2, ptr %arrayidx2, align 1
  %add.ptr = getelementptr %struct.digital_tg_mdaa_params, ptr %call7.i.i, i32 0, i32 3, i32 2
  tail call void @get_random_bytes(ptr noundef %add.ptr, i32 noundef 6) #8
  %sc = getelementptr inbounds %struct.digital_tg_mdaa_params, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %sc to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %sc, align 2
  %call5 = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 3, ptr noundef null, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 500, ptr noundef nonnull @digital_tg_recv_atr_req, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.then7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digital_tg_listen_md(ptr noundef %ddev, i8 noundef zeroext %rf_tech) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @digital_send_cmd(ptr noundef %ddev, i8 noundef zeroext 4, ptr noundef null, ptr noundef null, i16 noundef zeroext 500, ptr noundef nonnull @digital_tg_recv_md_req, ptr noundef null)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_tg_listen_nfca(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_tg_listen_nfcf(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @digital_tg_recv_atr_req(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @digital_tg_recv_md_req(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_send_atr_req(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_send_dep_req(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_iso_dep_push_sod(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digital_in_send_complete(ptr noundef %ddev, ptr noundef %arg, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %resp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %resp to i32
  br label %done

if.end:                                           ; preds = %entry
  %curr_protocol = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 16
  %1 = ptrtoint ptr %curr_protocol to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %curr_protocol, align 4
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %2, label %if.end.if.end18_crit_edge [
    i8 2, label %if.then3
    i8 4, label %if.end.if.then14_crit_edge
    i8 6, label %if.end.if.then14_crit_edge43
  ]

if.end.if.then14_crit_edge43:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @digital_in_recv_mifare_res(ptr noundef %resp) #8
  br label %done

if.then14:                                        ; preds = %if.end.if.then14_crit_edge, %if.end.if.then14_crit_edge43
  %call15 = tail call i32 @digital_in_iso_dep_pull_sod(ptr noundef %ddev, ptr noundef %resp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.then14.if.end18_crit_edge, label %if.then14.if.then21_crit_edge

if.then14.if.then21_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.then14.if.end18_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end18:                                         ; preds = %if.then14.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %skb_check_crc = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 29
  %4 = ptrtoint ptr %skb_check_crc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb_check_crc, align 4
  %call19 = tail call i32 %5(ptr noundef %resp) #8
  br label %done

done:                                             ; preds = %if.end18, %if.then3, %if.then
  %resp.addr.0 = phi ptr [ null, %if.then ], [ %resp, %if.then3 ], [ %resp, %if.end18 ]
  %rc.0 = phi i32 [ %0, %if.then ], [ %call4, %if.then3 ], [ %call19, %if.end18 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool20.not = icmp eq i32 %rc.0, 0
  br i1 %tobool20.not, label %done.if.end22_crit_edge, label %done.if.then21_crit_edge

done.if.then21_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

done.if.end22_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then21:                                        ; preds = %done.if.then21_crit_edge, %if.then14.if.then21_crit_edge
  %rc.041 = phi i32 [ %rc.0, %done.if.then21_crit_edge ], [ %call15, %if.then14.if.then21_crit_edge ]
  %resp.addr.040 = phi ptr [ %resp.addr.0, %done.if.then21_crit_edge ], [ %resp, %if.then14.if.then21_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %resp.addr.040, i32 noundef 0) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %done.if.end22_crit_edge
  %rc.042 = phi i32 [ %rc.041, %if.then21 ], [ 0, %done.if.end22_crit_edge ]
  %resp.addr.1 = phi ptr [ null, %if.then21 ], [ %resp.addr.0, %done.if.end22_crit_edge ]
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arg, align 4
  %cb_context = getelementptr inbounds %struct.digital_data_exch, ptr %arg, i32 0, i32 1
  %8 = ptrtoint ptr %cb_context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb_context, align 4
  tail call void %7(ptr noundef %9, ptr noundef %resp.addr.1, i32 noundef %rc.042) #8
  tail call void @kfree(ptr noundef %arg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_recv_mifare_res(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_iso_dep_pull_sod(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_tg_send_dep_res(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !109, !110, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/nfc/digital_core.c", i32 261, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @digital_in_configure_hw._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @digital_in_configure_hw._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/nfc/digital_core.c", i32 272, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @digital_tg_configure_hw._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @digital_tg_configure_hw._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/nfc/digital_core.c", i32 371, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @digital_target_found._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @digital_target_found._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/nfc/digital_core.c", i32 375, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @digital_target_found.__UNIQUE_ID_ddebug275, !17, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @nfc_digital_allocate_device.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../net/nfc/digital_core.c", i32 772, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nfc_digital_allocate_device.__key.11, !25, !"__key", i1 false, i1 false}
!25 = !{!"../net/nfc/digital_core.c", i32 775, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nfc_digital_allocate_device.__key.13, !28, !"__key", i1 false, i1 false}
!28 = !{!"../net/nfc/digital_core.c", i32 776, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @nfc_digital_allocate_device.__key.15, !31, !"__key", i1 false, i1 false}
!31 = !{!"../net/nfc/digital_core.c", i32 778, i32 2}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @nfc_digital_allocate_device.__key.17, !34, !"__key", i1 false, i1 false}
!34 = !{!"../net/nfc/digital_core.c", i32 779, i32 2}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nfc_digital_allocate_device.__key.19, !34, !"__key", i1 false, i1 false}
!37 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/nfc/digital_core.c", i32 803, i32 3}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @nfc_digital_allocate_device._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @nfc_digital_allocate_device._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @__ksymtab_nfc_digital_allocate_device, !44, !"__ksymtab_nfc_digital_allocate_device", i1 false, i1 false}
!44 = !{!"../net/nfc/digital_core.c", i32 816, i32 1}
!45 = !{ptr @__ksymtab_nfc_digital_free_device, !46, !"__ksymtab_nfc_digital_free_device", i1 false, i1 false}
!46 = !{!"../net/nfc/digital_core.c", i32 823, i32 1}
!47 = !{ptr @__ksymtab_nfc_digital_register_device, !48, !"__ksymtab_nfc_digital_register_device", i1 false, i1 false}
!48 = !{!"../net/nfc/digital_core.c", i32 829, i32 1}
!49 = !{ptr @__ksymtab_nfc_digital_unregister_device, !50, !"__ksymtab_nfc_digital_unregister_device", i1 false, i1 false}
!50 = !{!"../net/nfc/digital_core.c", i32 859, i32 1}
!51 = !{ptr @__UNIQUE_ID_file277, !52, !"__UNIQUE_ID_file277", i1 false, i1 false}
!52 = !{!"../net/nfc/digital_core.c", i32 861, i32 1}
!53 = !{ptr @__UNIQUE_ID_license278, !52, !"__UNIQUE_ID_license278", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/nfc/digital_core.c", i32 175, i32 3}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @digital_wq_cmd.__UNIQUE_ID_ddebug274, !55, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!58 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/nfc/digital_core.c", i32 207, i32 3}
!61 = !{ptr @digital_wq_cmd._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @digital_wq_cmd._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/nfc/digital_core.c", i32 214, i32 2}
!65 = !{ptr @digital_wq_cmd._entry.27, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @digital_wq_cmd._entry_ptr.29, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/nfc/digital_core.c", i32 131, i32 3}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @digital_wq_cmd_complete.__UNIQUE_ID_ddebug272, !68, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!71 = !{ptr @digital_nfc_ops, !72, !"digital_nfc_ops", i1 false, i1 false}
!72 = !{!"../net/nfc/digital_core.c", i32 740, i32 29}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/nfc/digital_core.c", i32 482, i32 2}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @digital_start_poll.__UNIQUE_ID_ddebug276, !74, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!77 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/nfc/digital_core.c", i32 489, i32 3}
!80 = !{ptr @digital_start_poll._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @digital_start_poll._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/nfc/digital_core.c", i32 494, i32 3}
!84 = !{ptr @digital_start_poll._entry.36, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @digital_start_poll._entry_ptr.38, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/nfc/digital_core.c", i32 499, i32 3}
!88 = !{ptr @digital_start_poll._entry.39, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @digital_start_poll._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/nfc/digital_core.c", i32 546, i32 3}
!92 = !{ptr @digital_start_poll._entry.42, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @digital_start_poll._entry_ptr.44, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/nfc/digital_core.c", i32 563, i32 3}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @digital_stop_poll._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @digital_stop_poll._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/nfc/digital_core.c", i32 627, i32 3}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @digital_activate_target._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @digital_activate_target._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @digital_activate_target._entry.49, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../net/nfc/digital_core.c", i32 632, i32 3}
!106 = !{ptr @digital_activate_target._entry_ptr.50, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/nfc/digital_core.c", i32 648, i32 3}
!109 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @digital_deactivate_target._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @digital_deactivate_target._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 1207780}
!122 = !{i64 2148972022, i64 2148972027, i64 2148972040, i64 2148972084, i64 2148972118, i64 2148972139}
!123 = !{!"auto-init"}
