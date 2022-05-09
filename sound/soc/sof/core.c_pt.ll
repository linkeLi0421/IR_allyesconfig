; ModuleID = '/llk/IR_all_yes/sound/soc/sof/core.c_pt.bc'
source_filename = "../sound/soc/sof/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sof_debug_check_flag\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_debug_check_flag\09\09\09\09"
module asm "\09.long\09__crc_sof_debug_check_flag\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_debug_check_flag:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_debug_check_flag\22\09\09\09\09\09"
module asm "__kstrtabns_sof_debug_check_flag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sof_print_oops_and_stack\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_print_oops_and_stack\09\09\09\09"
module asm "\09.long\09__crc_sof_print_oops_and_stack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_print_oops_and_stack:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_print_oops_and_stack\22\09\09\09\09\09"
module asm "__kstrtabns_sof_print_oops_and_stack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_sof_device_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_sof_device_probe\09\09\09\09"
module asm "\09.long\09__crc_snd_sof_device_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sof_device_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sof_device_probe\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sof_device_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_sof_device_probe_completed\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_sof_device_probe_completed\09\09\09\09"
module asm "\09.long\09__crc_snd_sof_device_probe_completed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sof_device_probe_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sof_device_probe_completed\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sof_device_probe_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_sof_device_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_sof_device_remove\09\09\09\09"
module asm "\09.long\09__crc_snd_sof_device_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sof_device_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sof_device_remove\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sof_device_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_sof_device_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_sof_device_shutdown\09\09\09\09"
module asm "\09.long\09__crc_snd_sof_device_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sof_device_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sof_device_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sof_device_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sof_panic_msg = type { i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sof_ipc_panic_info = type { %struct.sof_ipc_hdr, i32, [32 x i8], i32 }
%struct.sof_ipc_hdr = type { i32 }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.dsp_arch_ops = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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

@__param_str_sof_debug = internal constant [18 x i8] c"snd_sof.sof_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@sof_core_debug = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_sof_debug = internal constant %struct.kernel_param { ptr @__param_str_sof_debug, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @sof_core_debug } }, section "__param", align 4
@__UNIQUE_ID_sof_debugtype247 = internal constant [31 x i8] c"snd_sof.parmtype=sof_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_sof_debug248 = internal constant [60 x i8] c"snd_sof.parm=sof_debug:SOF core debug options (0x0 all off)\00", section ".modinfo", align 1
@__kstrtab_sof_debug_check_flag = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_debug_check_flag = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_debug_check_flag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_debug_check_flag to i32), ptr @__kstrtab_sof_debug_check_flag, ptr @__kstrtabns_sof_debug_check_flag }, section "___ksymtab+sof_debug_check_flag", align 4
@sof_print_oops_and_stack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 97, ptr null, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unexpected fault %#010x trace %#010x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sof_print_oops_and_stack\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sound/soc/sof/core.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sof_print_oops_and_stack._entry_ptr = internal global ptr @sof_print_oops_and_stack._entry, section ".printk_index", align 4
@panic_msg = internal constant { [12 x %struct.sof_panic_msg], [32 x i8] } { [12 x %struct.sof_panic_msg] [%struct.sof_panic_msg { i32 233492480, ptr @.str.31 }, %struct.sof_panic_msg { i32 233492481, ptr @.str.32 }, %struct.sof_panic_msg { i32 233492482, ptr @.str.33 }, %struct.sof_panic_msg { i32 233492483, ptr @.str.34 }, %struct.sof_panic_msg { i32 233492484, ptr @.str.35 }, %struct.sof_panic_msg { i32 233492485, ptr @.str.36 }, %struct.sof_panic_msg { i32 233492486, ptr @.str.37 }, %struct.sof_panic_msg { i32 233492487, ptr @.str.38 }, %struct.sof_panic_msg { i32 233492488, ptr @.str.39 }, %struct.sof_panic_msg { i32 233492489, ptr @.str.40 }, %struct.sof_panic_msg { i32 233492490, ptr @.str.41 }, %struct.sof_panic_msg { i32 233492491, ptr @.str.42 }], [32 x i8] zeroinitializer }, align 32
@sof_print_oops_and_stack._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 106, ptr null, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reason: %s (%#x)\0A\00", [46 x i8] zeroinitializer }, align 32
@sof_print_oops_and_stack._entry_ptr.6 = internal global ptr @sof_print_oops_and_stack._entry.4, section ".printk_index", align 4
@sof_print_oops_and_stack._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 107, ptr null, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"trace point: %#010x\0A\00", [43 x i8] zeroinitializer }, align 32
@sof_print_oops_and_stack._entry_ptr.9 = internal global ptr @sof_print_oops_and_stack._entry.7, section ".printk_index", align 4
@sof_print_oops_and_stack._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 114, ptr null, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unknown panic code: %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@sof_print_oops_and_stack._entry_ptr.12 = internal global ptr @sof_print_oops_and_stack._entry.10, section ".printk_index", align 4
@sof_print_oops_and_stack._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 115, ptr null, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@sof_print_oops_and_stack._entry_ptr.14 = internal global ptr @sof_print_oops_and_stack._entry.13, section ".printk_index", align 4
@sof_print_oops_and_stack._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"panic at %s:%d\0A\00", [16 x i8] zeroinitializer }, align 32
@sof_print_oops_and_stack._entry_ptr.17 = internal global ptr @sof_print_oops_and_stack._entry.15, section ".printk_index", align 4
@__kstrtab_sof_print_oops_and_stack = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_print_oops_and_stack = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_print_oops_and_stack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_print_oops_and_stack to i32), ptr @__kstrtab_sof_print_oops_and_stack, ptr @__kstrtabns_sof_print_oops_and_stack }, section "___ksymtab+sof_print_oops_and_stack", align 4
@snd_sof_device_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 344, ptr @.str.20, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error: missing mandatory ops\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_sof_device_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snd_sof_device_probe._entry_ptr = internal global ptr @snd_sof_device_probe._entry, section ".printk_index", align 4
@snd_sof_device_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sdev->ipc_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_sof_device_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sdev->hw_lock\00", [17 x i8] zeroinitializer }, align 32
@snd_sof_device_probe.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&sdev->power_state_access\00", [38 x i8] zeroinitializer }, align 32
@snd_sof_device_probe.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&sdev->probe_work)\00", [59 x i8] zeroinitializer }, align 32
@__kstrtab_snd_sof_device_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sof_device_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sof_device_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sof_device_probe to i32), ptr @__kstrtab_snd_sof_device_probe, ptr @__kstrtabns_snd_sof_device_probe }, section "___ksymtab+snd_sof_device_probe", align 4
@__kstrtab_snd_sof_device_probe_completed = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sof_device_probe_completed = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sof_device_probe_completed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sof_device_probe_completed to i32), ptr @__kstrtab_snd_sof_device_probe_completed, ptr @__kstrtabns_snd_sof_device_probe_completed }, section "___ksymtab+snd_sof_device_probe_completed", align 4
@snd_sof_device_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 406, ptr @.str.30, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"error: %d failed to prepare DSP for device removal\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_sof_device_remove\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_sof_device_remove._entry_ptr = internal global ptr @snd_sof_device_remove._entry, section ".printk_index", align 4
@__kstrtab_snd_sof_device_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sof_device_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sof_device_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sof_device_remove to i32), ptr @__kstrtab_snd_sof_device_remove, ptr @__kstrtabns_snd_sof_device_remove }, section "___ksymtab+snd_sof_device_remove", align 4
@__kstrtab_snd_sof_device_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sof_device_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sof_device_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sof_device_shutdown to i32), ptr @__kstrtab_snd_sof_device_shutdown, ptr @__kstrtabns_snd_sof_device_shutdown }, section "___ksymtab+snd_sof_device_shutdown", align 4
@__UNIQUE_ID_author250 = internal constant [29 x i8] c"snd_sof.author=Liam Girdwood\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [51 x i8] c"snd_sof.description=Sound Open Firmware (SOF) Core\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [35 x i8] c"snd_sof.file=sound/soc/sof/snd-sof\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [29 x i8] c"snd_sof.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias254 = internal constant [33 x i8] c"snd_sof.alias=platform:sof-audio\00", section ".modinfo", align 1
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"out of memory\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"work subsystem init failed\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IPC subsystem init failed\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arch init failed\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"platform init failed\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"scheduler init failed\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"runtime exception\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"deadlock\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stack overflow\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"can't enter idle\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid wait state\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"assertion failed\00", [47 x i8] zeroinitializer }, align 32
@sof_set_fw_state.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"snd_sof\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sof_set_fw_state\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/sof/sof-priv.h\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fw_state change: %d -> %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sof_probe_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 312, ptr @.str.20, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error: %s failed err: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sof_probe_work\00", [17 x i8] zeroinitializer }, align 32
@sof_probe_work._entry_ptr = internal global ptr @sof_probe_work._entry, section ".printk_index", align 4
@sof_probe_continue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 173, ptr @.str.20, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error: failed to probe DSP %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sof_probe_continue\00", [45 x i8] zeroinitializer }, align 32
@sof_probe_continue._entry_ptr = internal global ptr @sof_probe_continue._entry, section ".printk_index", align 4
@sof_probe_continue._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 183, ptr @.str.20, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error: failed to get machine info %d\0A\00", [58 x i8] zeroinitializer }, align 32
@sof_probe_continue._entry_ptr.53 = internal global ptr @sof_probe_continue._entry.51, section ".printk_index", align 4
@sof_probe_continue._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.2, i32 199, ptr @.str.20, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error: failed to init DSP trace/debug %d\0A\00", [54 x i8] zeroinitializer }, align 32
@sof_probe_continue._entry_ptr.56 = internal global ptr @sof_probe_continue._entry.54, section ".printk_index", align 4
@sof_probe_continue._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.2, i32 207, ptr @.str.20, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error: failed to init DSP IPC %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sof_probe_continue._entry_ptr.59 = internal global ptr @sof_probe_continue._entry.57, section ".printk_index", align 4
@sof_probe_continue._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.50, ptr @.str.2, i32 215, ptr @.str.20, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: failed to load DSP firmware %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sof_probe_continue._entry_ptr.62 = internal global ptr @sof_probe_continue._entry.60, section ".printk_index", align 4
@sof_probe_continue._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.50, ptr @.str.2, i32 229, ptr @.str.20, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: failed to boot DSP firmware %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sof_probe_continue._entry_ptr.65 = internal global ptr @sof_probe_continue._entry.63, section ".printk_index", align 4
@sof_probe_continue._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.50, ptr @.str.2, i32 243, ptr @.str.30, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"warning: failed to initialize trace %d\0A\00", [56 x i8] zeroinitializer }, align 32
@sof_probe_continue._entry_ptr.68 = internal global ptr @sof_probe_continue._entry.66, section ".printk_index", align 4
@sof_probe_continue.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.50, ptr @.str.2, ptr @.str.69, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SOF firmware trace disabled\0A\00", [35 x i8] zeroinitializer }, align 32
@sof_probe_continue._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.50, ptr @.str.2, i32 258, ptr @.str.20, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error: failed to register DSP DAI driver %d\0A\00", [51 x i8] zeroinitializer }, align 32
@sof_probe_continue._entry_ptr.72 = internal global ptr @sof_probe_continue._entry.70, section ".printk_index", align 4
@sof_probe_continue._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.50, ptr @.str.2, i32 265, ptr @.str.20, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error: failed to register machine driver %d\0A\00", [51 x i8] zeroinitializer }, align 32
@sof_probe_continue._entry_ptr.75 = internal global ptr @sof_probe_continue._entry.73, section ".printk_index", align 4
@snd_sof_load_firmware.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.76, ptr @.str.77, ptr @.str.78, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_sof_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sound/soc/sof/ops.h\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"loading firmware\0A\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"sof_core_debug\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 22, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 96, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [10 x i8] c"panic_msg\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 56, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 105, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 107, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 113, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 115, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 118, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 344, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 353, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 354, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 355, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 368, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 405, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 57, i32 22 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 58, i32 23 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 59, i32 22 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 60, i32 23 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 61, i32 27 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 62, i32 23 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 63, i32 28 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 64, i32 27 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 65, i32 24 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 66, i32 23 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 67, i32 22 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 68, i32 25 }
@___asan_gen_.221 = private unnamed_addr constant [28 x i8] c"../sound/soc/sof/sof-priv.h\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 602, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 312, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 173, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 182, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 198, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 207, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 214, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 228, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 241, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 246, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 257, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.290 = private constant [24 x i8] c"../sound/soc/sof/core.c\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 264, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [23 x i8] c"../sound/soc/sof/ops.h\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 457, i32 2 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__UNIQUE_ID_alias254, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_sof_debug248, ptr @__UNIQUE_ID_sof_debugtype247, ptr @__ksymtab_snd_sof_device_probe, ptr @__ksymtab_snd_sof_device_probe_completed, ptr @__ksymtab_snd_sof_device_remove, ptr @__ksymtab_snd_sof_device_shutdown, ptr @__ksymtab_sof_debug_check_flag, ptr @__ksymtab_sof_print_oops_and_stack, ptr @__param_sof_debug, ptr @snd_sof_device_probe._entry, ptr @snd_sof_device_probe._entry_ptr, ptr @snd_sof_device_remove._entry, ptr @snd_sof_device_remove._entry_ptr, ptr @sof_print_oops_and_stack._entry, ptr @sof_print_oops_and_stack._entry.10, ptr @sof_print_oops_and_stack._entry.13, ptr @sof_print_oops_and_stack._entry.15, ptr @sof_print_oops_and_stack._entry.4, ptr @sof_print_oops_and_stack._entry.7, ptr @sof_print_oops_and_stack._entry_ptr, ptr @sof_print_oops_and_stack._entry_ptr.12, ptr @sof_print_oops_and_stack._entry_ptr.14, ptr @sof_print_oops_and_stack._entry_ptr.17, ptr @sof_print_oops_and_stack._entry_ptr.6, ptr @sof_print_oops_and_stack._entry_ptr.9, ptr @sof_probe_continue._entry, ptr @sof_probe_continue._entry.51, ptr @sof_probe_continue._entry.54, ptr @sof_probe_continue._entry.57, ptr @sof_probe_continue._entry.60, ptr @sof_probe_continue._entry.63, ptr @sof_probe_continue._entry.66, ptr @sof_probe_continue._entry.70, ptr @sof_probe_continue._entry.73, ptr @sof_probe_continue._entry_ptr, ptr @sof_probe_continue._entry_ptr.53, ptr @sof_probe_continue._entry_ptr.56, ptr @sof_probe_continue._entry_ptr.59, ptr @sof_probe_continue._entry_ptr.62, ptr @sof_probe_continue._entry_ptr.65, ptr @sof_probe_continue._entry_ptr.68, ptr @sof_probe_continue._entry_ptr.72, ptr @sof_probe_continue._entry_ptr.75, ptr @sof_probe_work._entry, ptr @sof_probe_work._entry_ptr, ptr @sof_core_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @panic_msg, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @snd_sof_device_probe.__key, ptr @.str.21, ptr @snd_sof_device_probe.__key.22, ptr @.str.23, ptr @snd_sof_device_probe.__key.24, ptr @.str.25, ptr @snd_sof_device_probe.__key.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_core_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_print_oops_and_stack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_msg to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_print_oops_and_stack._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_print_oops_and_stack._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_print_oops_and_stack._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_print_oops_and_stack._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_print_oops_and_stack._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_device_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_device_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_device_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_device_probe.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_device_probe.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_device_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_probe_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_probe_continue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_probe_continue._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_probe_continue._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_probe_continue._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_probe_continue._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_probe_continue._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_probe_continue._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_probe_continue._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_probe_continue._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @sof_debug_check_flag(i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sof_core_debug, align 4
  %and = and i32 %0, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %mask)
  %cmp = icmp eq i32 %and, %mask
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sof_print_oops_and_stack(ptr noundef %sdev, ptr noundef %level, i32 noundef %panic_code, i32 noundef %tracep_code, ptr noundef %oops, ptr noundef %panic_info, ptr noundef %stack, i32 noundef %stack_words) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %panic_code, 268431360
  call void @__sanitizer_cov_trace_const_cmp4(i32 233492480, i32 %and)
  %cmp.not = icmp eq i32 %and, 233492480
  br i1 %cmp.not, label %if.end2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %panic_code, i32 noundef %tracep_code) #8
  br label %cleanup

if.end2:                                          ; preds = %entry
  %and3 = and i32 %panic_code, 268435455
  %switch.tableidx = add nsw i32 %and3, -233492480
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 12
  %3 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdev, align 4
  br i1 %2, label %do.end11, label %for.inc.11

do.end11:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  %msg = getelementptr [12 x %struct.sof_panic_msg], ptr @panic_msg, i32 0, i32 %switch.tableidx, i32 1
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msg, align 4
  %and14 = and i32 %panic_code, 4095
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef %6, i32 noundef %and14) #8
  br label %do.end39

for.inc.11:                                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  %and28 = and i32 %panic_code, 4095
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %and28) #8
  br label %do.end39

do.end39:                                         ; preds = %for.inc.11, %do.end11
  %7 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %8, ptr noundef nonnull @.str.8, i32 noundef %tracep_code) #8
  %9 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdev, align 4
  %filename = getelementptr inbounds %struct.sof_ipc_panic_info, ptr %panic_info, i32 0, i32 2
  %linenum = getelementptr inbounds %struct.sof_ipc_panic_info, ptr %panic_info, i32 0, i32 3
  %11 = ptrtoint ptr %linenum to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %linenum, align 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %10, ptr noundef nonnull @.str.16, ptr noundef %filename, i32 noundef %12) #8
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %13 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %dsp_arch_ops.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %18, i32 0, i32 65
  %19 = ptrtoint ptr %dsp_arch_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dsp_arch_ops.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %do.end39.sof_oops.exit_crit_edge, label %if.then.i

do.end39.sof_oops.exit_crit_edge:                 ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %sof_oops.exit

if.then.i:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %22(ptr noundef %sdev, ptr noundef %level, ptr noundef %oops) #5
  br label %sof_oops.exit

sof_oops.exit:                                    ; preds = %if.then.i, %do.end39.sof_oops.exit_crit_edge
  %23 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata.i, align 4
  %desc.i68 = getelementptr inbounds %struct.snd_sof_pdata, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %desc.i68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc.i68, align 4
  %ops.i69 = getelementptr inbounds %struct.sof_dev_desc, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %ops.i69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i69, align 4
  %dsp_arch_ops.i70 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %28, i32 0, i32 65
  %29 = ptrtoint ptr %dsp_arch_ops.i70 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dsp_arch_ops.i70, align 4
  %dsp_stack.i = getelementptr inbounds %struct.dsp_arch_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %dsp_stack.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dsp_stack.i, align 4
  tail call void %32(ptr noundef %sdev, ptr noundef %level, ptr noundef %oops, ptr noundef %stack, i32 noundef %stack_words) #5
  br label %cleanup

cleanup:                                          ; preds = %sof_oops.exit, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_device_probe(ptr noundef %dev, ptr noundef %plat_data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1080, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %dsp_power_state = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %dsp_power_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %dsp_power_state, align 4
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 12
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %plat_data, ptr %pdata, align 4
  %first_boot = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 9
  %3 = ptrtoint ptr %first_boot to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %first_boot, align 4
  %fw_state.i = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.end.sof_set_fw_state.exit_crit_edge, label %do.body.i

if.end.sof_set_fw_state.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sof_set_fw_state.exit

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_set_fw_state.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_sof_device_probe, %if.then3.i)) #5
          to label %do.end.i [label %if.then3.i], !srcloc !170

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %8 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_state.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_set_fw_state.__UNIQUE_ID_ddebug243, ptr noundef %7, ptr noundef nonnull @.str.46, i32 noundef %9, i32 noundef 0) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i, %do.body.i
  %10 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %fw_state.i, align 4
  br label %sof_set_fw_state.exit

sof_set_fw_state.exit:                            ; preds = %do.end.i, %if.end.sof_set_fw_state.exit_crit_edge
  %extractor_stream_tag = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 45
  %11 = ptrtoint ptr %extractor_stream_tag to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %extractor_stream_tag, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i, align 4
  %13 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata, align 4
  %desc = getelementptr inbounds %struct.snd_sof_pdata, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc, align 4
  %ops = getelementptr inbounds %struct.sof_dev_desc, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %tobool3.not = icmp eq ptr %18, null
  br i1 %tobool3.not, label %sof_set_fw_state.exit.do.end_crit_edge, label %lor.lhs.false

sof_set_fw_state.exit.do.end_crit_edge:           ; preds = %sof_set_fw_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %sof_set_fw_state.exit
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool7.not = icmp eq ptr %20, null
  br i1 %tobool7.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false8

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %run = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %run, align 4
  %tobool12.not = icmp eq ptr %22, null
  br i1 %tobool12.not, label %lor.lhs.false8.do.end_crit_edge, label %lor.lhs.false13

lor.lhs.false8.do.end_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false13:                                  ; preds = %lor.lhs.false8
  %block_read = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %18, i32 0, i32 12
  %23 = ptrtoint ptr %block_read to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %block_read, align 4
  %tobool17.not = icmp eq ptr %24, null
  br i1 %tobool17.not, label %lor.lhs.false13.do.end_crit_edge, label %lor.lhs.false18

lor.lhs.false13.do.end_crit_edge:                 ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false18:                                  ; preds = %lor.lhs.false13
  %block_write = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %18, i32 0, i32 13
  %25 = ptrtoint ptr %block_write to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %block_write, align 4
  %tobool22.not = icmp eq ptr %26, null
  br i1 %tobool22.not, label %lor.lhs.false18.do.end_crit_edge, label %lor.lhs.false23

lor.lhs.false18.do.end_crit_edge:                 ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false23:                                  ; preds = %lor.lhs.false18
  %send_msg = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %18, i32 0, i32 18
  %27 = ptrtoint ptr %send_msg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %send_msg, align 4
  %tobool27.not = icmp eq ptr %28, null
  br i1 %tobool27.not, label %lor.lhs.false23.do.end_crit_edge, label %lor.lhs.false28

lor.lhs.false23.do.end_crit_edge:                 ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false28:                                  ; preds = %lor.lhs.false23
  %load_firmware = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %18, i32 0, i32 19
  %29 = ptrtoint ptr %load_firmware to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %load_firmware, align 4
  %tobool32.not = icmp eq ptr %30, null
  br i1 %tobool32.not, label %lor.lhs.false28.do.end_crit_edge, label %lor.lhs.false33

lor.lhs.false28.do.end_crit_edge:                 ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false33:                                  ; preds = %lor.lhs.false28
  %ipc_msg_data = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %18, i32 0, i32 34
  %31 = ptrtoint ptr %ipc_msg_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ipc_msg_data, align 4
  %tobool37.not = icmp eq ptr %32, null
  br i1 %tobool37.not, label %lor.lhs.false33.do.end_crit_edge, label %lor.lhs.false38

lor.lhs.false33.do.end_crit_edge:                 ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false38:                                  ; preds = %lor.lhs.false33
  %ipc_pcm_params = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %18, i32 0, i32 35
  %33 = ptrtoint ptr %ipc_pcm_params to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ipc_pcm_params, align 4
  %tobool42.not = icmp eq ptr %34, null
  br i1 %tobool42.not, label %lor.lhs.false38.do.end_crit_edge, label %lor.lhs.false43

lor.lhs.false38.do.end_crit_edge:                 ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false43:                                  ; preds = %lor.lhs.false38
  %fw_ready = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %18, i32 0, i32 21
  %35 = ptrtoint ptr %fw_ready to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw_ready, align 4
  %tobool47.not = icmp eq ptr %36, null
  br i1 %tobool47.not, label %lor.lhs.false43.do.end_crit_edge, label %if.end49

lor.lhs.false43.do.end_crit_edge:                 ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false43.do.end_crit_edge, %lor.lhs.false38.do.end_crit_edge, %lor.lhs.false33.do.end_crit_edge, %lor.lhs.false28.do.end_crit_edge, %lor.lhs.false23.do.end_crit_edge, %lor.lhs.false18.do.end_crit_edge, %lor.lhs.false13.do.end_crit_edge, %lor.lhs.false8.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %sof_set_fw_state.exit.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end49:                                         ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #7
  %pcm_list = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 35
  %37 = ptrtoint ptr %pcm_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %pcm_list, ptr %pcm_list, align 4
  %prev.i = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 35, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %pcm_list, ptr %prev.i, align 4
  %kcontrol_list = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 36
  %39 = ptrtoint ptr %kcontrol_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %kcontrol_list, ptr %kcontrol_list, align 4
  %prev.i131 = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 36, i32 1
  %40 = ptrtoint ptr %prev.i131 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %kcontrol_list, ptr %prev.i131, align 4
  %widget_list = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 37
  %41 = ptrtoint ptr %widget_list to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %widget_list, ptr %widget_list, align 4
  %prev.i132 = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 37, i32 1
  %42 = ptrtoint ptr %prev.i132 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %widget_list, ptr %prev.i132, align 4
  %dai_list = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 38
  %43 = ptrtoint ptr %dai_list to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %dai_list, ptr %dai_list, align 4
  %prev.i133 = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 38, i32 1
  %44 = ptrtoint ptr %prev.i133 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dai_list, ptr %prev.i133, align 4
  %route_list = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 39
  %45 = ptrtoint ptr %route_list to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %route_list, ptr %route_list, align 4
  %prev.i134 = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 39, i32 1
  %46 = ptrtoint ptr %prev.i134 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %route_list, ptr %prev.i134, align 4
  %ipc_lock = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %ipc_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @snd_sof_device_probe.__key, i16 noundef signext 3) #5
  %hw_lock = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %hw_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @snd_sof_device_probe.__key.22, i16 noundef signext 3) #5
  %power_state_access = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %power_state_access, ptr noundef nonnull @.str.25, ptr noundef nonnull @snd_sof_device_probe.__key.24) #5
  %desc61 = getelementptr inbounds %struct.snd_sof_pdata, ptr %plat_data, i32 0, i32 6
  %47 = ptrtoint ptr %desc61 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc61, align 4
  %ipc_timeout = getelementptr inbounds %struct.sof_dev_desc, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %ipc_timeout to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ipc_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp = icmp eq i32 %50, 0
  %spec.select = select i1 %cmp, i32 500, i32 %50
  %51 = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 43
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.select, ptr %51, align 4
  %boot_timeout = getelementptr inbounds %struct.sof_dev_desc, ptr %48, i32 0, i32 8
  %53 = ptrtoint ptr %boot_timeout to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %boot_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp69 = icmp eq i32 %54, 0
  %.sink136 = select i1 %cmp69, i32 2000, i32 %54
  %55 = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 44
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink136, ptr %55, align 4
  %probe_work = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %probe_work, i32 noundef 0) #5
  %57 = ptrtoint ptr %probe_work to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -64, ptr %probe_work, align 4
  %lockdep_map = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @snd_sof_device_probe.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry81 = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 10, i32 1
  %58 = ptrtoint ptr %entry81 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %entry81, ptr %entry81, align 4
  %prev.i135 = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 10, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i135 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %entry81, ptr %prev.i135, align 4
  %func = getelementptr inbounds %struct.snd_sof_dev, ptr %call.i, i32 0, i32 10, i32 2
  %60 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @sof_probe_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %61 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %61, ptr noundef %probe_work) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sof_probe_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -444
  %call = tail call fastcc i32 @sof_probe_continue(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @snd_sof_device_probe_completed(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %probe_completed = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %probe_completed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %probe_completed, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_device_remove(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata1 = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata1, align 4
  %probe_work = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 10
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %probe_work) #5
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.snd_sof_machine_unregister.exit_crit_edge, label %land.lhs.true.i

entry.snd_sof_machine_unregister.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_machine_unregister.exit

land.lhs.true.i:                                  ; preds = %entry
  %machine_unregister.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %9, i32 0, i32 59
  %10 = ptrtoint ptr %machine_unregister.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %machine_unregister.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.snd_sof_machine_unregister.exit_crit_edge, label %if.then.i

land.lhs.true.i.snd_sof_machine_unregister.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_machine_unregister.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %11(ptr noundef %1, ptr noundef %3) #5
  br label %snd_sof_machine_unregister.exit

snd_sof_machine_unregister.exit:                  ; preds = %if.then.i, %land.lhs.true.i.snd_sof_machine_unregister.exit_crit_edge, %entry.snd_sof_machine_unregister.exit_crit_edge
  %fw_state = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %snd_sof_machine_unregister.exit.if.end11_crit_edge, label %if.then

snd_sof_machine_unregister.exit.if.end11_crit_edge: ; preds = %snd_sof_machine_unregister.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %snd_sof_machine_unregister.exit
  tail call void @snd_sof_free_trace(ptr noundef %1) #5
  %call3 = tail call i32 @snd_sof_dsp_power_down_notify(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call3) #8
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then.if.end6_crit_edge
  tail call void @snd_sof_ipc_free(ptr noundef %1) #5
  tail call void @snd_sof_free_debug(ptr noundef %1) #5
  %14 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp8.not = icmp eq i32 %.pr, 0
  br i1 %cmp8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdata1, align 4
  %desc.i24 = getelementptr inbounds %struct.snd_sof_pdata, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %desc.i24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc.i24, align 4
  %ops.i25 = getelementptr inbounds %struct.sof_dev_desc, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %ops.i25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i25, align 4
  %remove.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remove.i, align 4
  %tobool.not.i26 = icmp eq ptr %22, null
  br i1 %tobool.not.i26, label %if.then9.if.end11_crit_edge, label %if.then.i27

if.then9.if.end11_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then.i27:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %22(ptr noundef %1) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then.i27, %if.then9.if.end11_crit_edge, %if.end6.if.end11_crit_edge, %snd_sof_machine_unregister.exit.if.end11_crit_edge
  tail call void @snd_sof_fw_unload(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_free_trace(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_dsp_power_down_notify(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_ipc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_free_debug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_fw_unload(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_device_shutdown(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %probe_work = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 10
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %probe_work) #5
  %fw_state = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp eq i32 %3, 6
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %shutdown.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shutdown.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %11(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_probe_continue(ptr noundef %sdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 %7(ptr noundef %sdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.49, i32 noundef %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_state.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 8
  %10 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %if.end.sof_set_fw_state.exit_crit_edge, label %do.body.i

if.end.sof_set_fw_state.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sof_set_fw_state.exit

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_set_fw_state.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_probe_continue, %if.then3.i)) #5
          to label %do.end.i [label %if.then3.i], !srcloc !170

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  %14 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_state.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_set_fw_state.__UNIQUE_ID_ddebug243, ptr noundef %13, ptr noundef nonnull @.str.46, i32 noundef %15, i32 noundef 1) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i, %do.body.i
  %16 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %fw_state.i, align 4
  br label %sof_set_fw_state.exit

sof_set_fw_state.exit:                            ; preds = %do.end.i, %if.end.sof_set_fw_state.exit_crit_edge
  %call1 = tail call i32 @sof_machine_check(ptr noundef %sdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end6, label %if.end8

do.end6:                                          ; preds = %sof_set_fw_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.52, i32 noundef %call1) #8
  br label %dsp_err

if.end8:                                          ; preds = %sof_set_fw_state.exit
  tail call void @snd_sof_new_platform_drv(ptr noundef %sdev) #5
  %call9 = tail call i32 @snd_sof_dbg_init(ptr noundef %sdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.55, i32 noundef %call9) #8
  br label %dbg_err

if.end16:                                         ; preds = %if.end8
  %call17 = tail call ptr @snd_sof_ipc_init(ptr noundef %sdev) #5
  %ipc = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 13
  %21 = ptrtoint ptr %ipc to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call17, ptr %ipc, align 4
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.58, i32 noundef -12) #8
  br label %dbg_err

if.end24:                                         ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_sof_load_firmware.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_probe_continue, %if.then.i)) #5
          to label %snd_sof_load_firmware.exit [label %if.then.i], !srcloc !170

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_sof_load_firmware.__UNIQUE_ID_ddebug246, ptr noundef %25, ptr noundef nonnull @.str.78) #5
  br label %snd_sof_load_firmware.exit

snd_sof_load_firmware.exit:                       ; preds = %if.then.i, %if.end24
  %26 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdata, align 4
  %desc.i166 = getelementptr inbounds %struct.snd_sof_pdata, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %desc.i166 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc.i166, align 4
  %ops.i167 = getelementptr inbounds %struct.sof_dev_desc, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %ops.i167 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i167, align 4
  %load_firmware.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %load_firmware.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %load_firmware.i, align 4
  %call3.i = tail call i32 %33(ptr noundef %sdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp26 = icmp slt i32 %call3.i, 0
  br i1 %cmp26, label %do.end30, label %if.end32

do.end30:                                         ; preds = %snd_sof_load_firmware.exit
  %34 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.61, i32 noundef %call3.i) #8
  %36 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fw_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp.i170 = icmp eq i32 %37, 3
  br i1 %cmp.i170, label %do.end30.fw_load_err_crit_edge, label %do.body.i171

do.end30.fw_load_err_crit_edge:                   ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %fw_load_err

do.body.i171:                                     ; preds = %do.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_set_fw_state.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_probe_continue, %if.then3.i172)) #5
          to label %do.end.i173 [label %if.then3.i172], !srcloc !170

if.then3.i172:                                    ; preds = %do.body.i171
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sdev, align 4
  %40 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fw_state.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_set_fw_state.__UNIQUE_ID_ddebug243, ptr noundef %39, ptr noundef nonnull @.str.46, i32 noundef %41, i32 noundef 3) #5
  br label %do.end.i173

do.end.i173:                                      ; preds = %if.then3.i172, %do.body.i171
  %42 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %fw_state.i, align 4
  br label %fw_load_err

if.end32:                                         ; preds = %snd_sof_load_firmware.exit
  %43 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fw_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.i176 = icmp eq i32 %44, 2
  br i1 %cmp.i176, label %if.end32.sof_set_fw_state.exit180_crit_edge, label %do.body.i177

if.end32.sof_set_fw_state.exit180_crit_edge:      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sof_set_fw_state.exit180

do.body.i177:                                     ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_set_fw_state.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_probe_continue, %if.then3.i178)) #5
          to label %do.end.i179 [label %if.then3.i178], !srcloc !170

if.then3.i178:                                    ; preds = %do.body.i177
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sdev, align 4
  %47 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fw_state.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_set_fw_state.__UNIQUE_ID_ddebug243, ptr noundef %46, ptr noundef nonnull @.str.46, i32 noundef %48, i32 noundef 2) #5
  br label %do.end.i179

do.end.i179:                                      ; preds = %if.then3.i178, %do.body.i177
  %49 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %fw_state.i, align 4
  br label %sof_set_fw_state.exit180

sof_set_fw_state.exit180:                         ; preds = %do.end.i179, %if.end32.sof_set_fw_state.exit180_crit_edge
  %call33 = tail call i32 @snd_sof_run_firmware(ptr noundef %sdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end38, label %if.end40

do.end38:                                         ; preds = %sof_set_fw_state.exit180
  %50 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.64, i32 noundef %call33) #8
  %52 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fw_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %53)
  %cmp.i182 = icmp eq i32 %53, 3
  br i1 %cmp.i182, label %do.end38.fw_run_err_crit_edge, label %do.body.i183

do.end38.fw_run_err_crit_edge:                    ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %fw_run_err

do.body.i183:                                     ; preds = %do.end38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_set_fw_state.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_probe_continue, %if.then3.i184)) #5
          to label %do.end.i185 [label %if.then3.i184], !srcloc !170

if.then3.i184:                                    ; preds = %do.body.i183
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sdev, align 4
  %56 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fw_state.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_set_fw_state.__UNIQUE_ID_ddebug243, ptr noundef %55, ptr noundef nonnull @.str.46, i32 noundef %57, i32 noundef 3) #5
  br label %do.end.i185

do.end.i185:                                      ; preds = %if.then3.i184, %do.body.i183
  %58 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 3, ptr %fw_state.i, align 4
  br label %fw_run_err

if.end40:                                         ; preds = %sof_set_fw_state.exit180
  %59 = load i32, ptr @sof_core_debug, align 4
  %and.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i187.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i187.not, label %do.body51, label %if.then42

if.then42:                                        ; preds = %if.end40
  %dtrace_is_supported = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 51
  %60 = ptrtoint ptr %dtrace_is_supported to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %dtrace_is_supported, align 4
  %call43 = tail call i32 @snd_sof_init_trace(ptr noundef %sdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %if.then42.if.end61_crit_edge

if.then42.if.end61_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

do.end48:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %62, ptr noundef nonnull @.str.67, i32 noundef %call43) #8
  br label %if.end61

do.body51:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_probe_continue.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_probe_continue, %if.then56)) #5
          to label %if.end61 [label %if.then56], !srcloc !170

if.then56:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_probe_continue.__UNIQUE_ID_ddebug249, ptr noundef %64, ptr noundef nonnull @.str.69) #5
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %do.body51, %do.end48, %if.then42.if.end61_crit_edge
  %first_boot = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 9
  %65 = ptrtoint ptr %first_boot to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %first_boot, align 4
  %66 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sdev, align 4
  %plat_drv = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3
  %68 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdata, align 4
  %desc = getelementptr inbounds %struct.snd_sof_pdata, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %desc, align 4
  %ops = getelementptr inbounds %struct.sof_dev_desc, ptr %71, i32 0, i32 14
  %72 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops, align 4
  %drv = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %73, i32 0, i32 62
  %74 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %drv, align 4
  %num_drv = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %73, i32 0, i32 63
  %76 = ptrtoint ptr %num_drv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_drv, align 4
  %call67 = tail call i32 @devm_snd_soc_register_component(ptr noundef %67, ptr noundef %plat_drv, ptr noundef %75, i32 noundef %77) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %do.end72, label %if.end74

do.end72:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.71, i32 noundef %call67) #8
  br label %fw_trace_err

if.end74:                                         ; preds = %if.end61
  %80 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdata, align 4
  %desc.i188 = getelementptr inbounds %struct.snd_sof_pdata, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %desc.i188 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %desc.i188, align 4
  %ops.i189 = getelementptr inbounds %struct.sof_dev_desc, ptr %83, i32 0, i32 14
  %84 = ptrtoint ptr %ops.i189 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i189, align 4
  %tobool.not.i = icmp eq ptr %85, null
  br i1 %tobool.not.i, label %if.end74.if.end82_crit_edge, label %land.lhs.true.i

if.end74.if.end82_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

land.lhs.true.i:                                  ; preds = %if.end74
  %machine_register.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %85, i32 0, i32 58
  %86 = ptrtoint ptr %machine_register.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %machine_register.i, align 4
  %tobool5.not.i = icmp eq ptr %87, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end82_crit_edge, label %snd_sof_machine_register.exit

land.lhs.true.i.if.end82_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

snd_sof_machine_register.exit:                    ; preds = %land.lhs.true.i
  %call.i190 = tail call i32 %87(ptr noundef %sdev, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %cmp76 = icmp slt i32 %call.i190, 0
  br i1 %cmp76, label %do.end80, label %snd_sof_machine_register.exit.if.end82_crit_edge

snd_sof_machine_register.exit.if.end82_crit_edge: ; preds = %snd_sof_machine_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

do.end80:                                         ; preds = %snd_sof_machine_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.74, i32 noundef %call.i190) #8
  br label %fw_trace_err

if.end82:                                         ; preds = %snd_sof_machine_register.exit.if.end82_crit_edge, %land.lhs.true.i.if.end82_crit_edge, %if.end74.if.end82_crit_edge
  %90 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdata, align 4
  %desc84 = getelementptr inbounds %struct.snd_sof_pdata, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %desc84 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %desc84, align 4
  %ops85 = getelementptr inbounds %struct.sof_dev_desc, ptr %93, i32 0, i32 14
  %94 = ptrtoint ptr %ops85 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops85, align 4
  %runtime_suspend = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %95, i32 0, i32 41
  %96 = ptrtoint ptr %runtime_suspend to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %runtime_suspend, align 4
  %tobool86.not = icmp eq ptr %97, null
  br i1 %tobool86.not, label %if.end82.if.then91_crit_edge, label %lor.lhs.false

if.end82.if.then91_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then91

lor.lhs.false:                                    ; preds = %if.end82
  %runtime_resume = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %95, i32 0, i32 42
  %98 = ptrtoint ptr %runtime_resume to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %runtime_resume, align 4
  %tobool90.not = icmp eq ptr %99, null
  br i1 %tobool90.not, label %lor.lhs.false.if.then91_crit_edge, label %lor.lhs.false.if.end93_crit_edge

lor.lhs.false.if.end93_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

lor.lhs.false.if.then91_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then91

if.then91:                                        ; preds = %lor.lhs.false.if.then91_crit_edge, %if.end82.if.then91_crit_edge
  %100 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sdev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %101, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #5
  %102 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #5, !srcloc !172
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %lor.lhs.false.if.end93_crit_edge
  %sof_probe_complete = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 5
  %103 = ptrtoint ptr %sof_probe_complete to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sof_probe_complete, align 4
  %tobool94.not = icmp eq ptr %104, null
  br i1 %tobool94.not, label %if.end93.if.end98_crit_edge, label %if.then95

if.end93.if.end98_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %105 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sdev, align 4
  tail call void %104(ptr noundef %106) #5
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %if.end93.if.end98_crit_edge
  %probe_completed = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 11
  %107 = ptrtoint ptr %probe_completed to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %probe_completed, align 4
  br label %cleanup

fw_trace_err:                                     ; preds = %do.end80, %do.end72
  %ret.0 = phi i32 [ %call67, %do.end72 ], [ %call.i190, %do.end80 ]
  tail call void @snd_sof_free_trace(ptr noundef %sdev) #5
  br label %fw_run_err

fw_run_err:                                       ; preds = %fw_trace_err, %do.end.i185, %do.end38.fw_run_err_crit_edge
  %ret.1 = phi i32 [ %ret.0, %fw_trace_err ], [ %call33, %do.end38.fw_run_err_crit_edge ], [ %call33, %do.end.i185 ]
  tail call void @snd_sof_fw_unload(ptr noundef %sdev) #5
  br label %fw_load_err

fw_load_err:                                      ; preds = %fw_run_err, %do.end.i173, %do.end30.fw_load_err_crit_edge
  %ret.2 = phi i32 [ %ret.1, %fw_run_err ], [ %call3.i, %do.end30.fw_load_err_crit_edge ], [ %call3.i, %do.end.i173 ]
  tail call void @snd_sof_ipc_free(ptr noundef %sdev) #5
  br label %dbg_err

dbg_err:                                          ; preds = %fw_load_err, %if.then19, %do.end14
  %ret.3 = phi i32 [ %call9, %do.end14 ], [ %ret.2, %fw_load_err ], [ -12, %if.then19 ]
  tail call void @snd_sof_free_debug(ptr noundef %sdev) #5
  br label %dsp_err

dsp_err:                                          ; preds = %dbg_err, %do.end6
  %ret.4 = phi i32 [ %call1, %do.end6 ], [ %ret.3, %dbg_err ]
  %108 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdata, align 4
  %desc.i194 = getelementptr inbounds %struct.snd_sof_pdata, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %desc.i194 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %desc.i194, align 4
  %ops.i195 = getelementptr inbounds %struct.sof_dev_desc, ptr %111, i32 0, i32 14
  %112 = ptrtoint ptr %ops.i195 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops.i195, align 4
  %remove.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %remove.i, align 4
  %tobool.not.i196 = icmp eq ptr %115, null
  br i1 %tobool.not.i196, label %dsp_err.snd_sof_remove.exit_crit_edge, label %if.then.i198

dsp_err.snd_sof_remove.exit_crit_edge:            ; preds = %dsp_err
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_remove.exit

if.then.i198:                                     ; preds = %dsp_err
  call void @__sanitizer_cov_trace_pc() #7
  %call.i197 = tail call i32 %115(ptr noundef %sdev) #5
  br label %snd_sof_remove.exit

snd_sof_remove.exit:                              ; preds = %if.then.i198, %dsp_err.snd_sof_remove.exit_crit_edge
  %116 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %fw_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp.i200 = icmp eq i32 %117, 0
  br i1 %cmp.i200, label %snd_sof_remove.exit.sof_set_fw_state.exit204_crit_edge, label %do.body.i201

snd_sof_remove.exit.sof_set_fw_state.exit204_crit_edge: ; preds = %snd_sof_remove.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sof_set_fw_state.exit204

do.body.i201:                                     ; preds = %snd_sof_remove.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_set_fw_state.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_probe_continue, %if.then3.i202)) #5
          to label %do.end.i203 [label %if.then3.i202], !srcloc !170

if.then3.i202:                                    ; preds = %do.body.i201
  call void @__sanitizer_cov_trace_pc() #7
  %118 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sdev, align 4
  %120 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %fw_state.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_set_fw_state.__UNIQUE_ID_ddebug243, ptr noundef %119, ptr noundef nonnull @.str.46, i32 noundef %121, i32 noundef 0) #5
  br label %do.end.i203

do.end.i203:                                      ; preds = %if.then3.i202, %do.body.i201
  %122 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %fw_state.i, align 4
  br label %sof_set_fw_state.exit204

sof_set_fw_state.exit204:                         ; preds = %do.end.i203, %snd_sof_remove.exit.sof_set_fw_state.exit204_crit_edge
  %first_boot100 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 9
  %123 = ptrtoint ptr %first_boot100 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %first_boot100, align 4
  br label %cleanup

cleanup:                                          ; preds = %sof_set_fw_state.exit204, %if.end98, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %ret.4, %sof_set_fw_state.exit204 ], [ 0, %if.end98 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_machine_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_new_platform_drv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_dbg_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_sof_ipc_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_run_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_init_trace(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !57, !59, !60, !61, !62, !63, !65, !67, !69, !71, !73, !74, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__param_sof_debug, !1, !"__param_sof_debug", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/core.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_sof_debugtype247, !1, !"__UNIQUE_ID_sof_debugtype247", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_sof_debug248, !4, !"__UNIQUE_ID_sof_debug248", i1 false, i1 false}
!4 = !{!"../sound/soc/sof/core.c", i32 24, i32 1}
!5 = !{ptr @__ksymtab_sof_debug_check_flag, !6, !"__ksymtab_sof_debug_check_flag", i1 false, i1 false}
!6 = !{!"../sound/soc/sof/core.c", i32 44, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/soc/sof/core.c", i32 96, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @sof_print_oops_and_stack._entry, !8, !"_entry", i1 false, i1 false}
!13 = !{ptr @sof_print_oops_and_stack._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sof/core.c", i32 105, i32 4}
!16 = !{ptr @sof_print_oops_and_stack._entry.4, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @sof_print_oops_and_stack._entry_ptr.6, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/sof/core.c", i32 107, i32 4}
!20 = !{ptr @sof_print_oops_and_stack._entry.7, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @sof_print_oops_and_stack._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/sof/core.c", i32 113, i32 2}
!24 = !{ptr @sof_print_oops_and_stack._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sof_print_oops_and_stack._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @sof_print_oops_and_stack._entry.13, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../sound/soc/sof/core.c", i32 115, i32 2}
!28 = !{ptr @sof_print_oops_and_stack._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/sof/core.c", i32 118, i32 2}
!31 = !{ptr @sof_print_oops_and_stack._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sof_print_oops_and_stack._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__ksymtab_sof_print_oops_and_stack, !34, !"__ksymtab_sof_print_oops_and_stack", i1 false, i1 false}
!34 = !{!"../sound/soc/sof/core.c", i32 123, i32 1}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/sof/core.c", i32 344, i32 3}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @snd_sof_device_probe._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @snd_sof_device_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @snd_sof_device_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../sound/soc/sof/core.c", i32 353, i32 2}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @snd_sof_device_probe.__key.22, !45, !"__key", i1 false, i1 false}
!45 = !{!"../sound/soc/sof/core.c", i32 354, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @snd_sof_device_probe.__key.24, !48, !"__key", i1 false, i1 false}
!48 = !{!"../sound/soc/sof/core.c", i32 355, i32 2}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @snd_sof_device_probe.__key.26, !51, !"__key", i1 false, i1 false}
!51 = !{!"../sound/soc/sof/core.c", i32 368, i32 3}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @__ksymtab_snd_sof_device_probe, !54, !"__ksymtab_snd_sof_device_probe", i1 false, i1 false}
!54 = !{!"../sound/soc/sof/core.c", i32 375, i32 1}
!55 = !{ptr @__ksymtab_snd_sof_device_probe_completed, !56, !"__ksymtab_snd_sof_device_probe_completed", i1 false, i1 false}
!56 = !{!"../sound/soc/sof/core.c", i32 383, i32 1}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/sof/core.c", i32 405, i32 4}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @snd_sof_device_remove._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @snd_sof_device_remove._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @__ksymtab_snd_sof_device_remove, !64, !"__ksymtab_snd_sof_device_remove", i1 false, i1 false}
!64 = !{!"../sound/soc/sof/core.c", i32 426, i32 1}
!65 = !{ptr @__ksymtab_snd_sof_device_shutdown, !66, !"__ksymtab_snd_sof_device_shutdown", i1 false, i1 false}
!66 = !{!"../sound/soc/sof/core.c", i32 440, i32 1}
!67 = !{ptr @__UNIQUE_ID_author250, !68, !"__UNIQUE_ID_author250", i1 false, i1 false}
!68 = !{!"../sound/soc/sof/core.c", i32 442, i32 1}
!69 = !{ptr @__UNIQUE_ID_description251, !70, !"__UNIQUE_ID_description251", i1 false, i1 false}
!70 = !{!"../sound/soc/sof/core.c", i32 443, i32 1}
!71 = !{ptr @__UNIQUE_ID_file252, !72, !"__UNIQUE_ID_file252", i1 false, i1 false}
!72 = !{!"../sound/soc/sof/core.c", i32 444, i32 1}
!73 = !{ptr @__UNIQUE_ID_license253, !72, !"__UNIQUE_ID_license253", i1 false, i1 false}
!74 = !{ptr @__UNIQUE_ID_alias254, !75, !"__UNIQUE_ID_alias254", i1 false, i1 false}
!75 = !{!"../sound/soc/sof/core.c", i32 445, i32 1}
!76 = !{ptr @__param_str_sof_debug, !1, !"__param_str_sof_debug", i1 false, i1 false}
!77 = !{ptr @sof_core_debug, !78, !"sof_core_debug", i1 false, i1 false}
!78 = !{!"../sound/soc/sof/core.c", i32 22, i32 12}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/sof/core.c", i32 57, i32 22}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/sof/core.c", i32 58, i32 23}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/sof/core.c", i32 59, i32 22}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/sof/core.c", i32 60, i32 23}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/sof/core.c", i32 61, i32 27}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/sof/core.c", i32 62, i32 23}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/sof/core.c", i32 63, i32 28}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/sof/core.c", i32 64, i32 27}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/sof/core.c", i32 65, i32 24}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/sof/core.c", i32 66, i32 23}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/sof/core.c", i32 67, i32 22}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/sof/core.c", i32 68, i32 25}
!103 = !{ptr @panic_msg, !104, !"panic_msg", i1 false, i1 false}
!104 = !{!"../sound/soc/sof/core.c", i32 56, i32 35}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/sof/sof-priv.h", i32 602, i32 2}
!107 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @sof_set_fw_state.__UNIQUE_ID_ddebug243, !106, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/sof/core.c", i32 312, i32 3}
!113 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @sof_probe_work._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @sof_probe_work._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/sof/core.c", i32 173, i32 3}
!118 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @sof_probe_continue._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @sof_probe_continue._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/sof/core.c", i32 182, i32 3}
!123 = !{ptr @sof_probe_continue._entry.51, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @sof_probe_continue._entry_ptr.53, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/sof/core.c", i32 198, i32 3}
!127 = !{ptr @sof_probe_continue._entry.54, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @sof_probe_continue._entry_ptr.56, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/sof/core.c", i32 207, i32 3}
!131 = !{ptr @sof_probe_continue._entry.57, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @sof_probe_continue._entry_ptr.59, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/sof/core.c", i32 214, i32 3}
!135 = !{ptr @sof_probe_continue._entry.60, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @sof_probe_continue._entry_ptr.62, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/sof/core.c", i32 228, i32 3}
!139 = !{ptr @sof_probe_continue._entry.63, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @sof_probe_continue._entry_ptr.65, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/sof/core.c", i32 241, i32 4}
!143 = !{ptr @sof_probe_continue._entry.66, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @sof_probe_continue._entry_ptr.68, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/sof/core.c", i32 246, i32 3}
!147 = !{ptr @sof_probe_continue.__UNIQUE_ID_ddebug249, !146, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/sof/core.c", i32 257, i32 3}
!150 = !{ptr @sof_probe_continue._entry.70, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @sof_probe_continue._entry_ptr.72, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/sof/core.c", i32 264, i32 3}
!154 = !{ptr @sof_probe_continue._entry.73, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @sof_probe_continue._entry_ptr.75, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/sof/ops.h", i32 457, i32 2}
!158 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @snd_sof_load_firmware.__UNIQUE_ID_ddebug246, !157, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i64 2148191167, i64 2148191172, i64 2148191185, i64 2148191229, i64 2148191263, i64 2148191284}
!171 = !{i8 0, i8 2}
!172 = !{i64 2148570441, i64 2148570467, i64 2148570496, i64 2148570530, i64 2148570561, i64 2148570584}
