; ModuleID = '/llk/IR_all_yes/drivers/greybus/interface.c_pt.bc'
source_filename = "../drivers/greybus/interface.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+gb_interface_request_mode_switch\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_interface_request_mode_switch\09\09\09\09"
module asm "\09.long\09__crc_gb_interface_request_mode_switch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_interface_request_mode_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_interface_request_mode_switch\22\09\09\09\09\09"
module asm "__kstrtabns_gb_interface_request_mode_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.gb_interface = type { %struct.device, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i8, i8, i8, i32, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, %struct.completion }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.gb_host_device = type { %struct.device, i32, ptr, %struct.list_head, %struct.list_head, %struct.ida, i32, i32, ptr, [0 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.gb_svc = type { %struct.device, ptr, ptr, i32, %struct.ida, ptr, i16, i8, i8, i8, ptr, i32, ptr, ptr }
%struct.gb_module = type { %struct.device, ptr, %struct.list_head, i8, i32, i8, [0 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@gb_interface_mailbox_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 214, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mailbox event with UniPro error: 0x%04x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gb_interface_mailbox_event\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/greybus/interface.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_interface_mailbox_event._entry_ptr = internal global ptr @gb_interface_mailbox_event._entry, section ".printk_index", align 4
@gb_interface_mailbox_event._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mailbox event with unexpected value: 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@gb_interface_mailbox_event._entry_ptr.7 = internal global ptr @gb_interface_mailbox_event._entry.5, section ".printk_index", align 4
@gb_interface_mailbox_event._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 232, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unexpected mailbox event: 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@gb_interface_mailbox_event._entry_ptr.10 = internal global ptr @gb_interface_mailbox_event._entry.8, section ".printk_index", align 4
@gb_interface_mailbox_event._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 236, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mode switch detected\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gb_interface_mailbox_event._entry_ptr.14 = internal global ptr @gb_interface_mailbox_event._entry.11, section ".printk_index", align 4
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_gb_interface_request_mode_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_interface_request_mode_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_interface_request_mode_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_interface_request_mode_switch to i32), ptr @__kstrtab_gb_interface_request_mode_switch, ptr @__kstrtabns_gb_interface_request_mode_switch }, section "___ksymtab_gpl+gb_interface_request_mode_switch", align 4
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"greybus_interface\00", [46 x i8] zeroinitializer }, align 32
@gb_interface_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gb_interface_suspend, ptr @gb_interface_resume, ptr @gb_interface_runtime_idle }, [36 x i8] zeroinitializer }, align 32
@greybus_interface_type = dso_local global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.15, ptr null, ptr null, ptr null, ptr @gb_interface_release, ptr @gb_interface_pm_ops }, [40 x i8] zeroinitializer }, align 32
@gb_interface_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&intf->mutex\00", [19 x i8] zeroinitializer }, align 32
@gb_interface_create.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&intf->mode_switch_work)\00", [53 x i8] zeroinitializer }, align 32
@greybus_bus_type = external dso_local global %struct.bus_type, align 4
@interface_groups = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @interface_unipro_group, ptr @interface_greybus_group, ptr @interface_power_group, ptr @interface_common_group, ptr null], [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%u\00", [26 x i8] zeroinitializer }, align 32
@gb_interface_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1022, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to detect interface type\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gb_interface_activate\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gb_interface_activate._entry_ptr = internal global ptr @gb_interface_activate._entry, section ".printk_index", align 4
@gb_interface_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1077, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to clear init status: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gb_interface_enable\00", [44 x i8] zeroinitializer }, align 32
@gb_interface_enable._entry_ptr = internal global ptr @gb_interface_enable._entry, section ".printk_index", align 4
@gb_interface_enable._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 1085, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to create control device: %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@gb_interface_enable._entry_ptr.27 = internal global ptr @gb_interface_enable._entry.25, section ".printk_index", align 4
@gb_interface_enable._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 1097, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get manifest size: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@gb_interface_enable._entry_ptr.30 = internal global ptr @gb_interface_enable._entry.28, section ".printk_index", align 4
@gb_interface_enable._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.2, i32 1116, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get manifest: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@gb_interface_enable._entry_ptr.33 = internal global ptr @gb_interface_enable._entry.31, section ".printk_index", align 4
@gb_interface_enable._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.24, ptr @.str.2, i32 1125, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to parse manifest\0A\00", [38 x i8] zeroinitializer }, align 32
@gb_interface_enable._entry_ptr.36 = internal global ptr @gb_interface_enable._entry.34, section ".printk_index", align 4
@gb_interface_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1223, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register interface: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gb_interface_add\00", [47 x i8] zeroinitializer }, align 32
@gb_interface_add._entry_ptr = internal global ptr @gb_interface_add._entry, section ".printk_index", align 4
@gb_interface_add._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 1230, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Interface added (%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@gb_interface_add._entry_ptr.41 = internal global ptr @gb_interface_add._entry.39, section ".printk_index", align 4
@gb_interface_add._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 1235, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GMP VID=0x%08x, PID=0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@gb_interface_add._entry_ptr.44 = internal global ptr @gb_interface_add._entry.42, section ".printk_index", align 4
@gb_interface_add._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.2, i32 1240, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DDBL1 Manufacturer=0x%08x, Product=0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@gb_interface_add._entry_ptr.47 = internal global ptr @gb_interface_add._entry.45, section ".printk_index", align 4
@gb_interface_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1256, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Interface removed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gb_interface_del\00", [47 x i8] zeroinitializer }, align 32
@gb_interface_del._entry_ptr = internal global ptr @gb_interface_del._entry, section ".printk_index", align 4
@gb_interface_legacy_mode_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 190, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"legacy mode switch detected\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gb_interface_legacy_mode_switch\00", [32 x i8] zeroinitializer }, align 32
@gb_interface_legacy_mode_switch._entry_ptr = internal global ptr @gb_interface_legacy_mode_switch._entry, section ".printk_index", align 4
@gb_interface_legacy_mode_switch._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 199, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to re-enable interface: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@gb_interface_legacy_mode_switch._entry_ptr.54 = internal global ptr @gb_interface_legacy_mode_switch._entry.52, section ".printk_index", align 4
@__tracepoint_gb_interface_release = external dso_local global %struct.tracepoint, align 4
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/greybus/greybus_trace.h\00", [32 x i8] zeroinitializer }, align 32
@trace_gb_interface_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@gb_interface_mode_switch_work.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"greybus\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gb_interface_mode_switch_work\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mode switch aborted\0A\00", [43 x i8] zeroinitializer }, align 32
@gb_interface_mode_switch_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 287, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mode switch interrupted\0A\00", [39 x i8] zeroinitializer }, align 32
@gb_interface_mode_switch_work._entry_ptr = internal global ptr @gb_interface_mode_switch_work._entry, section ".printk_index", align 4
@gb_interface_mode_switch_work._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.59, ptr @.str.2, i32 290, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mode switch timed out\0A\00", [41 x i8] zeroinitializer }, align 32
@gb_interface_mode_switch_work._entry_ptr.64 = internal global ptr @gb_interface_mode_switch_work._entry.62, section ".printk_index", align 4
@gb_interface_mode_switch_work._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.59, ptr @.str.2, i32 301, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@gb_interface_mode_switch_work._entry_ptr.66 = internal global ptr @gb_interface_mode_switch_work._entry.65, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@interface_unipro_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @interface_unipro_is_visible, ptr null, ptr @interface_unipro_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@interface_greybus_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @interface_greybus_is_visible, ptr null, ptr @interface_greybus_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@interface_power_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @interface_power_is_visible, ptr null, ptr @interface_power_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@interface_common_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @interface_common_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@interface_unipro_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_ddbl1_manufacturer_id, ptr @dev_attr_ddbl1_product_id, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_ddbl1_manufacturer_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddbl1_manufacturer_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ddbl1_product_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ddbl1_product_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ddbl1_manufacturer_id\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ddbl1_product_id\00", [47 x i8] zeroinitializer }, align 32
@interface_greybus_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_vendor_id, ptr @dev_attr_product_id, ptr @dev_attr_serial_number, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_vendor_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vendor_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_product_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @product_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_serial_number = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @serial_number_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vendor_id\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"product_id\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_number\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x%016llx\0A\00", [21 x i8] zeroinitializer }, align 32
@interface_power_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_voltage_now, ptr @dev_attr_current_now, ptr @dev_attr_power_now, ptr @dev_attr_power_state, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_voltage_now = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_now_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_current_now = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @current_now_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_power_now = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @power_now_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_power_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @power_state_show, ptr @power_state_store }, [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"voltage_now\00", [20 x i8] zeroinitializer }, align 32
@voltage_now_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 468, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get voltage sample (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"voltage_now_show\00", [47 x i8] zeroinitializer }, align 32
@voltage_now_show._entry_ptr = internal global ptr @voltage_now_show._entry, section ".printk_index", align 4
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"current_now\00", [20 x i8] zeroinitializer }, align 32
@current_now_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 487, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get current sample (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"current_now_show\00", [47 x i8] zeroinitializer }, align 32
@current_now_show._entry_ptr = internal global ptr @current_now_show._entry, section ".printk_index", align 4
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"power_now\00", [22 x i8] zeroinitializer }, align 32
@power_now_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 506, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get power sample (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power_now_show\00", [17 x i8] zeroinitializer }, align 32
@power_now_show._entry_ptr = internal global ptr @power_now_show._entry, section ".printk_index", align 4
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power_state\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"on\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"off\0A\00", [27 x i8] zeroinitializer }, align 32
@power_state_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 545, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to activate interface: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"power_state_store\00", [46 x i8] zeroinitializer }, align 32
@power_state_store._entry_ptr = internal global ptr @power_state_store._entry, section ".printk_index", align 4
@power_state_store._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 552, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable interface: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@power_state_store._entry_ptr.92 = internal global ptr @power_state_store._entry.90, section ".printk_index", align 4
@interface_common_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_interface_id, ptr @dev_attr_interface_type, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_interface_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @interface_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_interface_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @interface_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"interface_id\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"interface_type\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__tracepoint_gb_interface_create = external dso_local global %struct.tracepoint, align 4
@trace_gb_interface_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gb_interface_activate_operation.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.96, ptr @.str.2, ptr @.str.95, i8 0, i8 -36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gb_interface_activate_operation\00", [32 x i8] zeroinitializer }, align 32
@gb_interface_activate_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.96, ptr @.str.2, i32 884, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to activate: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@gb_interface_activate_operation._entry_ptr = internal global ptr @gb_interface_activate_operation._entry, section ".printk_index", align 4
@gb_interface_activate_operation._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.96, ptr @.str.2, i32 895, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"interface type UniPro not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@gb_interface_activate_operation._entry_ptr.100 = internal global ptr @gb_interface_activate_operation._entry.98, section ".printk_index", align 4
@gb_interface_activate_operation._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.96, ptr @.str.2, i32 902, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unknown interface type: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@gb_interface_activate_operation._entry_ptr.103 = internal global ptr @gb_interface_activate_operation._entry.101, section ".printk_index", align 4
@gb_interface_read_ara_dme._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 66, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown manufacturer %08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gb_interface_read_ara_dme\00", [38 x i8] zeroinitializer }, align 32
@gb_interface_read_ara_dme._entry_ptr = internal global ptr @gb_interface_read_ara_dme._entry, section ".printk_index", align 4
@gb_interface_route_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 138, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate device id: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gb_interface_route_create\00", [38 x i8] zeroinitializer }, align 32
@gb_interface_route_create._entry_ptr = internal global ptr @gb_interface_route_create._entry, section ".printk_index", align 4
@gb_interface_route_create._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 146, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set device id %u: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@gb_interface_route_create._entry_ptr.110 = internal global ptr @gb_interface_route_create._entry.108, section ".printk_index", align 4
@gb_interface_route_create._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.107, ptr @.str.2, i32 154, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to create route: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@gb_interface_route_create._entry_ptr.113 = internal global ptr @gb_interface_route_create._entry.111, section ".printk_index", align 4
@__tracepoint_gb_interface_activate = external dso_local global %struct.tracepoint, align 4
@trace_gb_interface_activate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_gb_interface_deactivate = external dso_local global %struct.tracepoint, align 4
@trace_gb_interface_deactivate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gb_interface_unipro_set.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.114, ptr @.str.2, ptr @.str.115, i8 0, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gb_interface_unipro_set\00", [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s - %d\0A\00", [23 x i8] zeroinitializer }, align 32
@gb_interface_unipro_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.2, i32 866, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set UniPro: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@gb_interface_unipro_set._entry_ptr = internal global ptr @gb_interface_unipro_set._entry, section ".printk_index", align 4
@gb_interface_refclk_set.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.117, ptr @.str.2, ptr @.str.115, i8 0, i8 -45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gb_interface_refclk_set\00", [40 x i8] zeroinitializer }, align 32
@gb_interface_refclk_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.117, ptr @.str.2, i32 850, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set refclk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@gb_interface_refclk_set._entry_ptr = internal global ptr @gb_interface_refclk_set._entry, section ".printk_index", align 4
@gb_interface_vsys_set.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.119, ptr @.str.2, ptr @.str.115, i8 0, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gb_interface_vsys_set\00", [42 x i8] zeroinitializer }, align 32
@gb_interface_vsys_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.119, ptr @.str.2, i32 834, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to set v_sys: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@gb_interface_vsys_set._entry_ptr = internal global ptr @gb_interface_vsys_set._entry, section ".printk_index", align 4
@gb_interface_read_and_clear_init_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 391, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid init status\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"gb_interface_read_and_clear_init_status\00", [56 x i8] zeroinitializer }, align 32
@gb_interface_read_and_clear_init_status._entry_ptr = internal global ptr @gb_interface_read_and_clear_init_status._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_gb_interface_enable = external dso_local global %struct.tracepoint, align 4
@trace_gb_interface_enable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_gb_interface_disable = external dso_local global %struct.tracepoint, align 4
@trace_gb_interface_disable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_gb_interface_add = external dso_local global %struct.tracepoint, align 4
@trace_gb_interface_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gb_interface_type_string.types = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.58], [44 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unipro\00", [25 x i8] zeroinitializer }, align 32
@__tracepoint_gb_interface_del = external dso_local global %struct.tracepoint, align 4
@trace_gb_interface_del.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.127 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 9, i64 13]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.129 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 212, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 219, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 231, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 236, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 769, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c"gb_interface_pm_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 763, i32 32 }
@___asan_gen_.175 = private unnamed_addr constant [23 x i8] c"greybus_interface_type\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 768, i32 20 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 801, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 802, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"interface_groups\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 683, i32 38 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 814, i32 27 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1022, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1077, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1084, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1097, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1116, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1125, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1223, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1229, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1234, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1238, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 1256, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 190, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 199, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant [35 x i8] c"../drivers/greybus/greybus_trace.h\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 339, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 108, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 263, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 287, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 290, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 300, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 87, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [23 x i8] c"interface_unipro_group\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 664, i32 37 }
@___asan_gen_.334 = private unnamed_addr constant [24 x i8] c"interface_greybus_group\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 669, i32 37 }
@___asan_gen_.337 = private unnamed_addr constant [22 x i8] c"interface_power_group\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 674, i32 37 }
@___asan_gen_.340 = private unnamed_addr constant [23 x i8] c"interface_common_group\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 679, i32 37 }
@___asan_gen_.343 = private unnamed_addr constant [23 x i8] c"interface_unipro_attrs\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 593, i32 26 }
@___asan_gen_.346 = private unnamed_addr constant [31 x i8] c"dev_attr_ddbl1_manufacturer_id\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [26 x i8] c"dev_attr_ddbl1_product_id\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 450, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 451, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant [24 x i8] c"interface_greybus_attrs\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 599, i32 26 }
@___asan_gen_.364 = private unnamed_addr constant [19 x i8] c"dev_attr_vendor_id\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [20 x i8] c"dev_attr_product_id\00", align 1
@___asan_gen_.370 = private unnamed_addr constant [23 x i8] c"dev_attr_serial_number\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 453, i32 1 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 454, i32 1 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 455, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant [22 x i8] c"interface_power_attrs\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 606, i32 26 }
@___asan_gen_.388 = private unnamed_addr constant [21 x i8] c"dev_attr_voltage_now\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [21 x i8] c"dev_attr_current_now\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [19 x i8] c"dev_attr_power_now\00", align 1
@___asan_gen_.397 = private unnamed_addr constant [21 x i8] c"dev_attr_power_state\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 474, i32 8 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 468, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 472, i32 22 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 493, i32 8 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 487, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 512, i32 8 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 506, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 569, i32 8 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 520, i32 36 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 522, i32 36 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 544, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 551, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant [23 x i8] c"interface_common_attrs\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 614, i32 26 }
@___asan_gen_.466 = private unnamed_addr constant [22 x i8] c"dev_attr_interface_id\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [24 x i8] c"dev_attr_interface_type\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 452, i32 1 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 591, i32 8 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 589, i32 22 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 880, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 884, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 895, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 902, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 65, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 138, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 145, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 154, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 862, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 866, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 846, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 850, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 830, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 834, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 391, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 573, i32 28 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 574, i32 33 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 575, i32 33 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 576, i32 31 }
@___asan_gen_.583 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.584 = private constant [31 x i8] c"../drivers/greybus/interface.c\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 577, i32 32 }
@llvm.compiler.used = appending global [189 x ptr] [ptr @__ksymtab_gb_interface_request_mode_switch, ptr @current_now_show._entry, ptr @current_now_show._entry_ptr, ptr @gb_interface_activate._entry, ptr @gb_interface_activate._entry_ptr, ptr @gb_interface_activate_operation._entry, ptr @gb_interface_activate_operation._entry.101, ptr @gb_interface_activate_operation._entry.98, ptr @gb_interface_activate_operation._entry_ptr, ptr @gb_interface_activate_operation._entry_ptr.100, ptr @gb_interface_activate_operation._entry_ptr.103, ptr @gb_interface_add._entry, ptr @gb_interface_add._entry.39, ptr @gb_interface_add._entry.42, ptr @gb_interface_add._entry.45, ptr @gb_interface_add._entry_ptr, ptr @gb_interface_add._entry_ptr.41, ptr @gb_interface_add._entry_ptr.44, ptr @gb_interface_add._entry_ptr.47, ptr @gb_interface_del._entry, ptr @gb_interface_del._entry_ptr, ptr @gb_interface_enable._entry, ptr @gb_interface_enable._entry.25, ptr @gb_interface_enable._entry.28, ptr @gb_interface_enable._entry.31, ptr @gb_interface_enable._entry.34, ptr @gb_interface_enable._entry_ptr, ptr @gb_interface_enable._entry_ptr.27, ptr @gb_interface_enable._entry_ptr.30, ptr @gb_interface_enable._entry_ptr.33, ptr @gb_interface_enable._entry_ptr.36, ptr @gb_interface_legacy_mode_switch._entry, ptr @gb_interface_legacy_mode_switch._entry.52, ptr @gb_interface_legacy_mode_switch._entry_ptr, ptr @gb_interface_legacy_mode_switch._entry_ptr.54, ptr @gb_interface_mailbox_event._entry, ptr @gb_interface_mailbox_event._entry.11, ptr @gb_interface_mailbox_event._entry.5, ptr @gb_interface_mailbox_event._entry.8, ptr @gb_interface_mailbox_event._entry_ptr, ptr @gb_interface_mailbox_event._entry_ptr.10, ptr @gb_interface_mailbox_event._entry_ptr.14, ptr @gb_interface_mailbox_event._entry_ptr.7, ptr @gb_interface_mode_switch_work._entry, ptr @gb_interface_mode_switch_work._entry.62, ptr @gb_interface_mode_switch_work._entry.65, ptr @gb_interface_mode_switch_work._entry_ptr, ptr @gb_interface_mode_switch_work._entry_ptr.64, ptr @gb_interface_mode_switch_work._entry_ptr.66, ptr @gb_interface_read_and_clear_init_status._entry, ptr @gb_interface_read_and_clear_init_status._entry_ptr, ptr @gb_interface_read_ara_dme._entry, ptr @gb_interface_read_ara_dme._entry_ptr, ptr @gb_interface_refclk_set._entry, ptr @gb_interface_refclk_set._entry_ptr, ptr @gb_interface_route_create._entry, ptr @gb_interface_route_create._entry.108, ptr @gb_interface_route_create._entry.111, ptr @gb_interface_route_create._entry_ptr, ptr @gb_interface_route_create._entry_ptr.110, ptr @gb_interface_route_create._entry_ptr.113, ptr @gb_interface_unipro_set._entry, ptr @gb_interface_unipro_set._entry_ptr, ptr @gb_interface_vsys_set._entry, ptr @gb_interface_vsys_set._entry_ptr, ptr @power_now_show._entry, ptr @power_now_show._entry_ptr, ptr @power_state_store._entry, ptr @power_state_store._entry.90, ptr @power_state_store._entry_ptr, ptr @power_state_store._entry_ptr.92, ptr @voltage_now_show._entry, ptr @voltage_now_show._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @gb_interface_pm_ops, ptr @greybus_interface_type, ptr @gb_interface_create.__key, ptr @.str.16, ptr @gb_interface_create.__key.17, ptr @.str.18, ptr @interface_groups, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @init_completion.__key, ptr @.str.67, ptr @interface_unipro_group, ptr @interface_greybus_group, ptr @interface_power_group, ptr @interface_common_group, ptr @interface_unipro_attrs, ptr @dev_attr_ddbl1_manufacturer_id, ptr @dev_attr_ddbl1_product_id, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @interface_greybus_attrs, ptr @dev_attr_vendor_id, ptr @dev_attr_product_id, ptr @dev_attr_serial_number, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @interface_power_attrs, ptr @dev_attr_voltage_now, ptr @dev_attr_current_now, ptr @dev_attr_power_now, ptr @dev_attr_power_state, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @interface_common_attrs, ptr @dev_attr_interface_id, ptr @dev_attr_interface_type, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @gb_interface_type_string.types, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], section "llvm.metadata"
@0 = internal global [152 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_mailbox_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_mailbox_event._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_mailbox_event._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_mailbox_event._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @greybus_interface_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_create.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interface_groups to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_enable._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_enable._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_enable._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_enable._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_add._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_add._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_add._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_legacy_mode_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_legacy_mode_switch._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_mode_switch_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_mode_switch_work._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_mode_switch_work._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interface_unipro_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interface_greybus_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interface_power_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interface_common_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interface_unipro_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ddbl1_manufacturer_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ddbl1_product_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interface_greybus_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vendor_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_product_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serial_number to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interface_power_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_voltage_now to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_current_now to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_now to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltage_now_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @current_now_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_now_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_state_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_state_store._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interface_common_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_interface_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_interface_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_activate_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_activate_operation._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_activate_operation._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_read_ara_dme._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_route_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_route_create._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_route_create._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_unipro_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_refclk_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_vsys_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_read_and_clear_init_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_interface_type_string.types to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_interface_mailbox_event(ptr noundef %intf, i16 noundef zeroext %result, i32 noundef %mailbox) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %result)
  %tobool.not = icmp eq i16 %result, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %result to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %intf, ptr noundef nonnull @.str, i32 noundef %conv) #15
  br label %err_disable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mailbox)
  %cmp.not = icmp eq i32 %mailbox, 2
  br i1 %cmp.not, label %if.end6, label %do.end4

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %intf, ptr noundef nonnull @.str.6, i32 noundef %mailbox) #15
  br label %err_disable

if.end6:                                          ; preds = %if.end
  %quirks = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 16
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %intf, ptr noundef nonnull @.str.50) #15
  %disconnected.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 18
  %2 = ptrtoint ptr %disconnected.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %disconnected.i, align 8
  tail call void @gb_interface_disable(ptr noundef %intf) #12
  %3 = ptrtoint ptr %disconnected.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %disconnected.i, align 8
  %call.i = tail call i32 @gb_interface_enable(ptr noundef %intf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then8.return_crit_edge, label %do.end4.i

if.then8.return_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end4.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.53, i32 noundef %call.i) #15
  tail call void @gb_interface_deactivate(ptr noundef %intf) #12
  br label %return

if.end9:                                          ; preds = %if.end6
  %mode_switch = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 23
  %4 = ptrtoint ptr %mode_switch to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode_switch, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %do.end13, label %do.end17

do.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %intf, ptr noundef nonnull @.str.9, i32 noundef 2) #15
  br label %err_disable

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %intf, ptr noundef nonnull @.str.12) #15
  %mode_switch_completion = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 26
  tail call void @complete(ptr noundef %mode_switch_completion) #12
  br label %return

err_disable:                                      ; preds = %do.end13, %do.end4, %do.end
  tail call void @gb_interface_disable(ptr noundef %intf)
  tail call void @gb_interface_deactivate(ptr noundef %intf)
  br label %return

return:                                           ; preds = %err_disable, %do.end17, %do.end4.i, %if.then8.return_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_interface_disable(ptr noundef %intf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 22
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @trace_gb_interface_disable(ptr noundef %intf)
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %intf, i32 noundef 4) #12
  %quirks = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 16
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %disconnected = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 18
  %4 = ptrtoint ptr %disconnected to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %disconnected, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %bundles = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 2
  %5 = ptrtoint ptr %bundles to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bundles, align 4
  %cmp.not56 = icmp eq ptr %6, %bundles
  br i1 %cmp.not56, label %if.end3.for.end_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %.pn.in57 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %6, %if.end3.for.body_crit_edge ]
  %bundle.0 = getelementptr i8, ptr %.pn.in57, i32 -956
  %7 = ptrtoint ptr %.pn.in57 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn.in57, align 4
  tail call void @gb_bundle_destroy(ptr noundef %bundle.0) #12
  %cmp.not = icmp eq ptr %.pn, %bundles
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end3.for.end_crit_edge
  %mode_switch = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 23
  %8 = ptrtoint ptr %mode_switch to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode_switch, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool16.not = icmp eq i8 %9, 0
  br i1 %tobool16.not, label %land.lhs.true, label %for.end.if.end21_crit_edge

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true:                                    ; preds = %for.end
  %disconnected17 = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 18
  %10 = ptrtoint ptr %disconnected17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %disconnected17, align 8, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool18.not = icmp eq i8 %11, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %control = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 1
  %12 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %control, align 8
  %call20 = tail call i32 @gb_control_interface_deactivate_prepare(ptr noundef %13) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %land.lhs.true.if.end21_crit_edge, %for.end.if.end21_crit_edge
  %control22 = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 1
  %14 = ptrtoint ptr %control22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %control22, align 8
  tail call void @gb_control_del(ptr noundef %15) #12
  %16 = ptrtoint ptr %control22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %control22, align 8
  tail call void @gb_control_disable(ptr noundef %17) #12
  %18 = ptrtoint ptr %control22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %control22, align 8
  tail call void @gb_control_put(ptr noundef %19) #12
  %20 = ptrtoint ptr %control22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %control22, align 8
  %21 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %enabled, align 4
  tail call void @__pm_runtime_disable(ptr noundef %intf, i1 noundef zeroext true) #12
  %call.i55 = tail call i32 @__pm_runtime_set_status(ptr noundef %intf, i32 noundef 2) #12
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %intf, i1 noundef zeroext false) #12
  %usage_count.i = getelementptr inbounds %struct.device, ptr %intf, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !309
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !310
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end21.cleanup_crit_edge, label %do.end11.i.i.i.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !311
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_interface_deactivate(ptr noundef %intf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 21
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  tail call fastcc void @trace_gb_interface_deactivate(ptr noundef %intf)
  %mode_switch = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 23
  %2 = ptrtoint ptr %mode_switch to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode_switch, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %mode_switch_completion = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 26
  tail call void @complete(ptr noundef %mode_switch_completion) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %device_id.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 6
  %4 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %device_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.i = icmp eq i8 %5, -1
  br i1 %cmp.i, label %if.end3.gb_interface_route_destroy.exit_crit_edge, label %if.end.i

if.end3.gb_interface_route_destroy.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_interface_route_destroy.exit

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %hd.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 14
  %6 = ptrtoint ptr %hd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hd.i, align 8
  %svc1.i = getelementptr inbounds %struct.gb_host_device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %svc1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %svc1.i, align 4
  %ap_intf_id.i = getelementptr inbounds %struct.gb_svc, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %ap_intf_id.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ap_intf_id.i, align 2
  %interface_id.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 5
  %12 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %interface_id.i, align 4
  tail call void @gb_svc_route_destroy(ptr noundef %9, i8 noundef zeroext %11, i8 noundef zeroext %13) #12
  %device_id_map.i = getelementptr inbounds %struct.gb_svc, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %device_id.i, align 1
  %conv4.i = zext i8 %15 to i32
  tail call void @ida_free(ptr noundef %device_id_map.i, i32 noundef %conv4.i) #12
  %16 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %device_id.i, align 1
  br label %gb_interface_route_destroy.exit

gb_interface_route_destroy.exit:                  ; preds = %if.end.i, %if.end3.gb_interface_route_destroy.exit_crit_edge
  %hd.i17 = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 14
  %17 = ptrtoint ptr %hd.i17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hd.i17, align 8
  %svc1.i18 = getelementptr inbounds %struct.gb_host_device, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %svc1.i18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %svc1.i18, align 4
  %interface_id.i19 = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 5
  %21 = ptrtoint ptr %interface_id.i19 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %interface_id.i19, align 4
  %call.i = tail call i32 @gb_svc_intf_set_power_mode_hibernate(ptr noundef %20, i8 noundef zeroext %22) #12
  %23 = ptrtoint ptr %hd.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hd.i17, align 8
  %svc1.i21 = getelementptr inbounds %struct.gb_host_device, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %svc1.i21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %svc1.i21, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_interface_unipro_set.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_interface_deactivate, %if.then.i)) #12
          to label %do.end.i [label %if.then.i], !srcloc !312

if.then.i:                                        ; preds = %gb_interface_route_destroy.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_interface_unipro_set.__UNIQUE_ID_ddebug311, ptr noundef %intf, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, i32 noundef 0) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %gb_interface_route_destroy.exit
  %27 = ptrtoint ptr %interface_id.i19 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %interface_id.i19, align 4
  %call7.i = tail call i32 @gb_svc_intf_unipro_set(ptr noundef %26, i8 noundef zeroext %28, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %do.end.i.gb_interface_unipro_set.exit_crit_edge, label %do.end12.i

do.end.i.gb_interface_unipro_set.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_interface_unipro_set.exit

do.end12.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.116, i32 noundef %call7.i) #15
  br label %gb_interface_unipro_set.exit

gb_interface_unipro_set.exit:                     ; preds = %do.end12.i, %do.end.i.gb_interface_unipro_set.exit_crit_edge
  %29 = ptrtoint ptr %hd.i17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hd.i17, align 8
  %svc1.i24 = getelementptr inbounds %struct.gb_host_device, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %svc1.i24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %svc1.i24, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_interface_refclk_set.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_interface_deactivate, %if.then.i25)) #12
          to label %do.end.i29 [label %if.then.i25], !srcloc !312

if.then.i25:                                      ; preds = %gb_interface_unipro_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_interface_refclk_set.__UNIQUE_ID_ddebug310, ptr noundef %intf, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.117, i32 noundef 0) #12
  br label %do.end.i29

do.end.i29:                                       ; preds = %if.then.i25, %gb_interface_unipro_set.exit
  %33 = ptrtoint ptr %interface_id.i19 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %interface_id.i19, align 4
  %call7.i27 = tail call i32 @gb_svc_intf_refclk_set(ptr noundef %32, i8 noundef zeroext %34, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i27)
  %tobool8.not.i28 = icmp eq i32 %call7.i27, 0
  br i1 %tobool8.not.i28, label %do.end.i29.gb_interface_refclk_set.exit_crit_edge, label %do.end12.i30

do.end.i29.gb_interface_refclk_set.exit_crit_edge: ; preds = %do.end.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_interface_refclk_set.exit

do.end12.i30:                                     ; preds = %do.end.i29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.118, i32 noundef %call7.i27) #15
  br label %gb_interface_refclk_set.exit

gb_interface_refclk_set.exit:                     ; preds = %do.end12.i30, %do.end.i29.gb_interface_refclk_set.exit_crit_edge
  %35 = ptrtoint ptr %hd.i17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hd.i17, align 8
  %svc1.i32 = getelementptr inbounds %struct.gb_host_device, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %svc1.i32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %svc1.i32, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_interface_vsys_set.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_interface_deactivate, %if.then.i33)) #12
          to label %do.end.i37 [label %if.then.i33], !srcloc !312

if.then.i33:                                      ; preds = %gb_interface_refclk_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_interface_vsys_set.__UNIQUE_ID_ddebug309, ptr noundef %intf, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.119, i32 noundef 0) #12
  br label %do.end.i37

do.end.i37:                                       ; preds = %if.then.i33, %gb_interface_refclk_set.exit
  %39 = ptrtoint ptr %interface_id.i19 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %interface_id.i19, align 4
  %call7.i35 = tail call i32 @gb_svc_intf_vsys_set(ptr noundef %38, i8 noundef zeroext %40, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i35)
  %tobool8.not.i36 = icmp eq i32 %call7.i35, 0
  br i1 %tobool8.not.i36, label %do.end.i37.gb_interface_vsys_set.exit_crit_edge, label %do.end12.i38

do.end.i37.gb_interface_vsys_set.exit_crit_edge:  ; preds = %do.end.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_interface_vsys_set.exit

do.end12.i38:                                     ; preds = %do.end.i37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.120, i32 noundef %call7.i35) #15
  br label %gb_interface_vsys_set.exit

gb_interface_vsys_set.exit:                       ; preds = %do.end12.i38, %do.end.i37.gb_interface_vsys_set.exit_crit_edge
  %41 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %active, align 1
  br label %return

return:                                           ; preds = %gb_interface_vsys_set.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_interface_request_mode_switch(ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %mode_switch = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 23
  %0 = ptrtoint ptr %mode_switch to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode_switch, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mode_switch to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %mode_switch, align 1
  %mode_switch_completion = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 26
  %3 = ptrtoint ptr %mode_switch_completion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %mode_switch_completion, align 4
  %call = tail call ptr @get_device(ptr noundef %intf) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %4 = load ptr, ptr @system_long_wq, align 4
  %mode_switch_work = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 25
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %mode_switch_work) #12
  br i1 %call.i, label %if.end.out_unlock_crit_edge, label %if.then3

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @put_device(ptr noundef %intf) #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.then3, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.out_unlock_crit_edge ], [ -16, %if.then3 ], [ -16, %entry.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_interface_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_gb_interface_release(ptr noundef %dev)
  tail call void @kfree(ptr noundef %dev) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gb_interface_create(ptr noundef %module, i8 noundef zeroext %interface_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hd1 = getelementptr inbounds %struct.gb_module, ptr %module, i32 0, i32 1
  %0 = ptrtoint ptr %hd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1208) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %hd2 = getelementptr inbounds %struct.gb_interface, ptr %call7.i.i, i32 0, i32 14
  %3 = ptrtoint ptr %hd2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %hd2, align 8
  %module3 = getelementptr inbounds %struct.gb_interface, ptr %call7.i.i, i32 0, i32 15
  %4 = ptrtoint ptr %module3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %module, ptr %module3, align 4
  %interface_id4 = getelementptr inbounds %struct.gb_interface, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %interface_id4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %interface_id, ptr %interface_id4, align 4
  %bundles = getelementptr inbounds %struct.gb_interface, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %bundles to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %bundles, ptr %bundles, align 4
  %prev.i = getelementptr inbounds %struct.gb_interface, ptr %call7.i.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bundles, ptr %prev.i, align 8
  %manifest_descs = getelementptr inbounds %struct.gb_interface, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %manifest_descs to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %manifest_descs, ptr %manifest_descs, align 4
  %prev.i55 = getelementptr inbounds %struct.gb_interface, ptr %call7.i.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i55 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %manifest_descs, ptr %prev.i55, align 8
  %mutex = getelementptr inbounds %struct.gb_interface, ptr %call7.i.i, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.16, ptr noundef nonnull @gb_interface_create.__key) #12
  %mode_switch_work = getelementptr inbounds %struct.gb_interface, ptr %call7.i.i, i32 0, i32 25
  tail call void @__init_work(ptr noundef %mode_switch_work, i32 noundef 0) #12
  %10 = ptrtoint ptr %mode_switch_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %mode_switch_work, align 8
  %lockdep_map = getelementptr inbounds %struct.gb_interface, ptr %call7.i.i, i32 0, i32 25, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @gb_interface_create.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry9 = getelementptr inbounds %struct.gb_interface, ptr %call7.i.i, i32 0, i32 25, i32 1
  %11 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i56 = getelementptr inbounds %struct.gb_interface, ptr %call7.i.i, i32 0, i32 25, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry9, ptr %prev.i56, align 8
  %func = getelementptr inbounds %struct.gb_interface, ptr %call7.i.i, i32 0, i32 25, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @gb_interface_mode_switch_work, ptr %func, align 4
  %mode_switch_completion = getelementptr inbounds %struct.gb_interface, ptr %call7.i.i, i32 0, i32 26
  %14 = ptrtoint ptr %mode_switch_completion to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %mode_switch_completion, align 4
  %wait.i = getelementptr inbounds %struct.gb_interface, ptr %call7.i.i, i32 0, i32 26, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @init_completion.__key) #12
  %device_id = getelementptr inbounds %struct.gb_interface, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %device_id to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %device_id, align 1
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %module, ptr %parent, align 8
  %bus = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @greybus_bus_type, ptr %bus, align 8
  %type = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @greybus_interface_type, ptr %type, align 4
  %groups = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 34
  %19 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @interface_groups, ptr %groups, align 8
  %dma_mask = getelementptr inbounds %struct.device, ptr %module, i32 0, i32 18
  %20 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_mask, align 8
  %dma_mask19 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 18
  %22 = ptrtoint ptr %dma_mask19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %dma_mask19, align 8
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i) #12
  %init_name.i = getelementptr inbounds %struct.device, ptr %module, i32 0, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %module, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %26, %if.end.i ], [ %24, %if.end.dev_name.exit_crit_edge ]
  %conv = zext i8 %interface_id to i32
  %call24 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i, i32 noundef %conv) #12
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef nonnull %call7.i.i, i32 noundef 3000) #12
  tail call fastcc void @trace_gb_interface_create(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_interface_mode_switch_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1104
  %mutex = getelementptr i8, ptr %work, i32 -100
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %enabled = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_interface_mode_switch_work.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_interface_mode_switch_work, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !312

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_interface_mode_switch_work.__UNIQUE_ID_ddebug308, ptr noundef %add.ptr, ptr noundef nonnull @.str.60) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %mode_switch = getelementptr i8, ptr %work, i32 -3
  %2 = ptrtoint ptr %mode_switch to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %mode_switch, align 1
  br label %cleanup

if.end7:                                          ; preds = %entry
  %control8 = getelementptr i8, ptr %work, i32 -176
  %3 = ptrtoint ptr %control8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %control8, align 8
  %call9 = tail call ptr @gb_control_get(ptr noundef %4) #12
  tail call void @gb_control_mode_switch_prepare(ptr noundef %call9) #12
  tail call void @gb_interface_disable(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  %mode_switch_completion = getelementptr i8, ptr %work, i32 44
  %call12 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %mode_switch_completion, i32 noundef 200) #12
  tail call void @gb_control_mode_switch_complete(ptr noundef %call9) #12
  tail call void @gb_control_put(ptr noundef %call9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end7.err_deactivate_crit_edge, label %if.else

if.end7.err_deactivate_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_deactivate

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp18 = icmp eq i32 %call12, 0
  br i1 %cmp18, label %if.else.err_deactivate_crit_edge, label %if.end25

if.else.err_deactivate_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_deactivate

if.end25:                                         ; preds = %if.else
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %mode_switch27 = getelementptr i8, ptr %work, i32 -3
  %5 = ptrtoint ptr %mode_switch27 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %mode_switch27, align 1
  %active = getelementptr i8, ptr %work, i32 -5
  %6 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %active, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool28.not = icmp eq i8 %7, 0
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %if.then29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then29:                                        ; preds = %if.end25
  %call30 = tail call i32 @gb_interface_enable(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.cleanup_crit_edge, label %do.end35

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end35:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.53, i32 noundef %call30) #15
  tail call void @gb_interface_deactivate(ptr noundef %add.ptr)
  br label %cleanup

err_deactivate:                                   ; preds = %if.else.err_deactivate_crit_edge, %if.end7.err_deactivate_crit_edge
  %.str.63.sink = phi ptr [ @.str.61, %if.end7.err_deactivate_crit_edge ], [ @.str.63, %if.else.err_deactivate_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull %.str.63.sink) #15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %mode_switch41 = getelementptr i8, ptr %work, i32 -3
  %8 = ptrtoint ptr %mode_switch41 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %mode_switch41, align 1
  tail call void @gb_interface_deactivate(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %err_deactivate, %do.end35, %if.then29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  tail call void @put_device(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_interface_create(ptr noundef %intf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_create, i32 0, i32 1), ptr blockaddress(@trace_gb_interface_create, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !312

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !313

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !314
  %call42 = tail call i32 @__traceiter_gb_interface_create(ptr noundef null, ptr noundef %intf) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !315
  %13 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !313

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_create, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_create, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_interface_create.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_gb_interface_create.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 334, ptr noundef nonnull @.str.56) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_interface_activate(ptr noundef %intf) local_unnamed_addr #0 align 64 {
entry:
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #12
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %type, align 4, !annotation !318
  %type1 = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 8
  %1 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type1, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %sw.default [
    i32 0, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge20
  ]

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge20
  %call.i = call fastcc i32 @_gb_interface_activate(ptr noundef %intf, ptr noundef nonnull %type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -19
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

while.cond.i:                                     ; preds = %land.lhs.true.i
  %call.1.i = call fastcc i32 @_gb_interface_activate(ptr noundef %intf, ptr noundef nonnull %type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.1.i)
  %cmp.1.i = icmp eq i32 %call.1.i, -19
  br i1 %cmp.1.i, label %land.lhs.true.1.i, label %while.cond.i.sw.epilog_crit_edge

while.cond.i.sw.epilog_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true.1.i:                                ; preds = %while.cond.i
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1.1.i = icmp eq i32 %5, 3
  br i1 %cmp1.1.i, label %while.cond.1.i, label %land.lhs.true.1.i.sw.epilog_crit_edge

land.lhs.true.1.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

while.cond.1.i:                                   ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.2.i = call fastcc i32 @_gb_interface_activate(ptr noundef %intf, ptr noundef nonnull %type) #12
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %sw.bb
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp1.i = icmp eq i32 %7, 3
  br i1 %cmp1.i, label %while.cond.i, label %land.lhs.true.i.sw.epilog_crit_edge

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = call fastcc i32 @_gb_interface_activate(ptr noundef %intf, ptr noundef nonnull %type)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %land.lhs.true.i.sw.epilog_crit_edge, %while.cond.1.i, %land.lhs.true.1.i.sw.epilog_crit_edge, %while.cond.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call2, %sw.default ], [ -19, %land.lhs.true.i.sw.epilog_crit_edge ], [ %call.i, %sw.bb.sw.epilog_crit_edge ], [ %call.1.i, %while.cond.i.sw.epilog_crit_edge ], [ -19, %land.lhs.true.1.i.sw.epilog_crit_edge ], [ %call.2.i, %while.cond.1.i ]
  %8 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp5.not = icmp eq i32 %11, %9
  br i1 %cmp5.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.then
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.then7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gb_interface_deactivate(ptr noundef %intf)
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %type1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then7, %do.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then7 ], [ -5, %do.end.cleanup_crit_edge ], [ %ret.0, %if.then.cleanup_crit_edge ], [ %ret.0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_gb_interface_activate(ptr noundef %intf, ptr nocapture noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 4
  %ejected = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 19
  %1 = ptrtoint ptr %ejected to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ejected, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %removed = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 20
  %3 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %removed, align 2, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hd.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 14
  %5 = ptrtoint ptr %hd.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hd.i, align 8
  %svc1.i = getelementptr inbounds %struct.gb_host_device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %svc1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %svc1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_interface_vsys_set.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_gb_interface_activate, %if.then.i)) #12
          to label %do.end.i [label %if.then.i], !srcloc !312

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_interface_vsys_set.__UNIQUE_ID_ddebug309, ptr noundef %intf, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.119, i32 noundef 1) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %interface_id.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 5
  %9 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %interface_id.i, align 4
  %call7.i = tail call i32 @gb_svc_intf_vsys_set(ptr noundef %8, i8 noundef zeroext %10, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end4, label %gb_interface_vsys_set.exit

gb_interface_vsys_set.exit:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.120, i32 noundef %call7.i) #15
  br label %cleanup

if.end4:                                          ; preds = %do.end.i
  %11 = ptrtoint ptr %hd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hd.i, align 8
  %svc1.i52 = getelementptr inbounds %struct.gb_host_device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %svc1.i52 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %svc1.i52, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_interface_refclk_set.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_gb_interface_activate, %if.then.i53)) #12
          to label %do.end.i57 [label %if.then.i53], !srcloc !312

if.then.i53:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_interface_refclk_set.__UNIQUE_ID_ddebug310, ptr noundef %intf, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.117, i32 noundef 1) #12
  br label %do.end.i57

do.end.i57:                                       ; preds = %if.then.i53, %if.end4
  %15 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %interface_id.i, align 4
  %call7.i55 = tail call i32 @gb_svc_intf_refclk_set(ptr noundef %14, i8 noundef zeroext %16, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i55)
  %tobool8.not.i56 = icmp eq i32 %call7.i55, 0
  br i1 %tobool8.not.i56, label %if.end8, label %gb_interface_refclk_set.exit

gb_interface_refclk_set.exit:                     ; preds = %do.end.i57
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.118, i32 noundef %call7.i55) #15
  br label %err_vsys_disable

if.end8:                                          ; preds = %do.end.i57
  %call9 = tail call fastcc i32 @gb_interface_unipro_set(ptr noundef %intf, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.err_refclk_disable_crit_edge

if.end8.err_refclk_disable_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_refclk_disable

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @gb_interface_activate_operation(ptr noundef %intf, ptr noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  %.off = add i32 %18, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then15.err_hibernate_link_crit_edge, label %if.then15.err_unipro_disable_crit_edge

if.then15.err_unipro_disable_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unipro_disable

if.then15.err_hibernate_link_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_hibernate_link

if.end16:                                         ; preds = %if.end12
  %call17 = tail call fastcc i32 @gb_interface_read_dme(ptr noundef %intf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.err_hibernate_link_crit_edge

if.end16.err_hibernate_link_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_hibernate_link

if.end20:                                         ; preds = %if.end16
  %call21 = tail call fastcc i32 @gb_interface_route_create(ptr noundef %intf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.err_hibernate_link_crit_edge

if.end20.err_hibernate_link_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_hibernate_link

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %active = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 21
  %19 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %active, align 1
  tail call fastcc void @trace_gb_interface_activate(ptr noundef %intf)
  br label %cleanup

err_hibernate_link:                               ; preds = %if.end20.err_hibernate_link_crit_edge, %if.end16.err_hibernate_link_crit_edge, %if.then15.err_hibernate_link_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then15.err_hibernate_link_crit_edge ], [ %call17, %if.end16.err_hibernate_link_crit_edge ], [ %call21, %if.end20.err_hibernate_link_crit_edge ]
  %20 = ptrtoint ptr %hd.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hd.i, align 8
  %svc1.i60 = getelementptr inbounds %struct.gb_host_device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %svc1.i60 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %svc1.i60, align 4
  %24 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %interface_id.i, align 4
  %call.i = tail call i32 @gb_svc_intf_set_power_mode_hibernate(ptr noundef %23, i8 noundef zeroext %25) #12
  br label %err_unipro_disable

err_unipro_disable:                               ; preds = %err_hibernate_link, %if.then15.err_unipro_disable_crit_edge
  %ret.1 = phi i32 [ %call13, %if.then15.err_unipro_disable_crit_edge ], [ %ret.0, %err_hibernate_link ]
  %call26 = tail call fastcc i32 @gb_interface_unipro_set(ptr noundef %intf, i1 noundef zeroext false)
  br label %err_refclk_disable

err_refclk_disable:                               ; preds = %err_unipro_disable, %if.end8.err_refclk_disable_crit_edge
  %ret.2 = phi i32 [ %call9, %if.end8.err_refclk_disable_crit_edge ], [ %ret.1, %err_unipro_disable ]
  %call27 = tail call fastcc i32 @gb_interface_refclk_set(ptr noundef %intf, i1 noundef zeroext false)
  br label %err_vsys_disable

err_vsys_disable:                                 ; preds = %err_refclk_disable, %gb_interface_refclk_set.exit
  %ret.3 = phi i32 [ %call7.i55, %gb_interface_refclk_set.exit ], [ %ret.2, %err_refclk_disable ]
  %26 = ptrtoint ptr %hd.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hd.i, align 8
  %svc1.i63 = getelementptr inbounds %struct.gb_host_device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %svc1.i63 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %svc1.i63, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_interface_vsys_set.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_gb_interface_activate, %if.then.i64)) #12
          to label %do.end.i68 [label %if.then.i64], !srcloc !312

if.then.i64:                                      ; preds = %err_vsys_disable
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_interface_vsys_set.__UNIQUE_ID_ddebug309, ptr noundef %intf, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.119, i32 noundef 0) #12
  br label %do.end.i68

do.end.i68:                                       ; preds = %if.then.i64, %err_vsys_disable
  %30 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %interface_id.i, align 4
  %call7.i66 = tail call i32 @gb_svc_intf_vsys_set(ptr noundef %29, i8 noundef zeroext %31, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i66)
  %tobool8.not.i67 = icmp eq i32 %call7.i66, 0
  br i1 %tobool8.not.i67, label %do.end.i68.cleanup_crit_edge, label %do.end12.i69

do.end.i68.cleanup_crit_edge:                     ; preds = %do.end.i68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end12.i69:                                     ; preds = %do.end.i68
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.120, i32 noundef %call7.i66) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end12.i69, %do.end.i68.cleanup_crit_edge, %if.end24, %gb_interface_vsys_set.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ %call7.i, %gb_interface_vsys_set.exit ], [ %ret.3, %do.end.i68.cleanup_crit_edge ], [ %ret.3, %do.end12.i69 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_interface_deactivate(ptr noundef %intf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_deactivate, i32 0, i32 1), ptr blockaddress(@trace_gb_interface_deactivate, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !312

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !313

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !319
  %call42 = tail call i32 @__traceiter_gb_interface_deactivate(ptr noundef null, ptr noundef %intf) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !320
  %13 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !313

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_deactivate, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_deactivate, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_interface_deactivate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_gb_interface_deactivate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 360, ptr noundef nonnull @.str.56) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_interface_unipro_set(ptr noundef %intf, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hd = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 14
  %0 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd, align 8
  %svc1 = getelementptr inbounds %struct.gb_host_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %svc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %svc1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_interface_unipro_set.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_interface_unipro_set, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i1 %enable to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_interface_unipro_set.__UNIQUE_ID_ddebug311, ptr noundef %intf, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %interface_id = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 5
  %4 = ptrtoint ptr %interface_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %interface_id, align 4
  %call7 = tail call i32 @gb_svc_intf_unipro_set(ptr noundef %3, i8 noundef zeroext %5, i1 noundef zeroext %enable) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end.cleanup_crit_edge, label %do.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.116, i32 noundef %call7) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.end.cleanup_crit_edge
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_interface_refclk_set(ptr noundef %intf, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hd = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 14
  %0 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd, align 8
  %svc1 = getelementptr inbounds %struct.gb_host_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %svc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %svc1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_interface_refclk_set.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_interface_refclk_set, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i1 %enable to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_interface_refclk_set.__UNIQUE_ID_ddebug310, ptr noundef %intf, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.117, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %interface_id = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 5
  %4 = ptrtoint ptr %interface_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %interface_id, align 4
  %call7 = tail call i32 @gb_svc_intf_refclk_set(ptr noundef %3, i8 noundef zeroext %5, i1 noundef zeroext %enable) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end.cleanup_crit_edge, label %do.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.118, i32 noundef %call7) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.end.cleanup_crit_edge
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_interface_enable(ptr noundef %intf) local_unnamed_addr #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hd1.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 14
  %0 = ptrtoint ptr %hd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #12
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !318
  %quirks.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 16
  %3 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i16 24833, i16 16515
  %svc.i = getelementptr inbounds %struct.gb_host_device, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %svc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %svc.i, align 4
  %interface_id.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 5
  %7 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %interface_id.i, align 4
  %call.i = call i32 @gb_svc_dme_peer_get(ptr noundef %6, i8 noundef zeroext %8, i16 noundef zeroext %..i, i16 noundef zeroext 0, ptr noundef nonnull %value.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %entry.gb_interface_read_and_clear_init_status.exit.thread_crit_edge

entry.gb_interface_read_and_clear_init_status.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_interface_read_and_clear_init_status.exit.thread

if.end4.i:                                        ; preds = %entry
  %9 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not.i = icmp eq i32 %10, 0
  br i1 %tobool5.not.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.121) #15
  br label %gb_interface_read_and_clear_init_status.exit.thread

if.end7.i:                                        ; preds = %if.end4.i
  %11 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %quirks.i, align 8
  %and9.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %shr.i = lshr i32 %10, 24
  %init_status.0.in.i = select i1 %tobool10.not.i, i32 %shr.i, i32 %10
  %trunc.i = trunc i32 %init_status.0.in.i to i8
  %13 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %trunc.i, label %sw.default.i [
    i8 6, label %if.end7.i.sw.bb.i_crit_edge
    i8 9, label %if.end7.i.sw.bb.i_crit_edge187
    i8 13, label %sw.bb18.i
  ]

if.end7.i.sw.bb.i_crit_edge187:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end7.i.sw.bb.i_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end7.i.sw.bb.i_crit_edge, %if.end7.i.sw.bb.i_crit_edge187
  %or.i = or i32 %12, 57
  br label %gb_interface_read_and_clear_init_status.exit

sw.bb18.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %and20.i = and i32 %12, -122
  %or22.i = or i32 %and20.i, 64
  br label %gb_interface_read_and_clear_init_status.exit

sw.default.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %and28.i = and i32 %12, -122
  br label %gb_interface_read_and_clear_init_status.exit

gb_interface_read_and_clear_init_status.exit.thread: ; preds = %do.end.i, %entry.gb_interface_read_and_clear_init_status.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %entry.gb_interface_read_and_clear_init_status.exit.thread_crit_edge ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #12
  br label %do.end

gb_interface_read_and_clear_init_status.exit:     ; preds = %sw.default.i, %sw.bb18.i, %sw.bb.i
  %and28.sink.i = phi i32 [ %and28.i, %sw.default.i ], [ %or22.i, %sw.bb18.i ], [ %or.i, %sw.bb.i ]
  %14 = ptrtoint ptr %quirks.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and28.sink.i, ptr %quirks.i, align 8
  %15 = ptrtoint ptr %svc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %svc.i, align 4
  %17 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %interface_id.i, align 4
  %call31.i = call i32 @gb_svc_dme_peer_set(ptr noundef %16, i8 noundef zeroext %18, i16 noundef zeroext %..i, i16 noundef zeroext 0, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool.not = icmp eq i32 %call31.i, 0
  br i1 %tobool.not, label %if.end, label %gb_interface_read_and_clear_init_status.exit.do.end_crit_edge

gb_interface_read_and_clear_init_status.exit.do.end_crit_edge: ; preds = %gb_interface_read_and_clear_init_status.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %gb_interface_read_and_clear_init_status.exit.do.end_crit_edge, %gb_interface_read_and_clear_init_status.exit.thread
  %retval.0.i177 = phi i32 [ %retval.0.i.ph, %gb_interface_read_and_clear_init_status.exit.thread ], [ %call31.i, %gb_interface_read_and_clear_init_status.exit.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.23, i32 noundef %retval.0.i177) #15
  br label %cleanup

if.end:                                           ; preds = %gb_interface_read_and_clear_init_status.exit
  %call1 = call ptr @gb_control_create(ptr noundef %intf) #12
  %cmp.i172 = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %do.end6, label %if.end10

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %call1 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.26, i32 noundef %19) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %control11 = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 1
  %20 = ptrtoint ptr %control11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call1, ptr %control11, align 8
  %call13 = call i32 @gb_control_enable(ptr noundef %call1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.err_put_control_crit_edge

if.end10.err_put_control_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_put_control

if.end16:                                         ; preds = %if.end10
  %call17 = call i32 @gb_control_get_manifest_size_operation(ptr noundef %intf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %cmp = icmp slt i32 %call17, 1
  br i1 %cmp, label %do.end21, label %if.end8.i

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.29, i32 noundef %call17) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool23.not = icmp eq i32 %call17, 0
  %.call17 = select i1 %tobool23.not, i32 -22, i32 %call17
  br label %err_disable_control

if.end8.i:                                        ; preds = %if.end16
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %call17, i32 noundef 3264) #17
  %tobool28.not = icmp eq ptr %call9.i, null
  br i1 %tobool28.not, label %if.end8.i.err_disable_control_crit_edge, label %if.end30

if.end8.i.err_disable_control_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_disable_control

if.end30:                                         ; preds = %if.end8.i
  %call31 = call i32 @gb_control_get_manifest_operation(ptr noundef %intf, ptr noundef nonnull %call9.i, i32 noundef %call17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.32, i32 noundef %call31) #15
  br label %err_free_manifest

if.end38:                                         ; preds = %if.end30
  %call39 = call zeroext i1 @gb_manifest_parse(ptr noundef %intf, ptr noundef nonnull %call9.i, i32 noundef %call17) #12
  br i1 %call39, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.35) #15
  br label %err_destroy_bundles

if.end45:                                         ; preds = %if.end38
  %21 = ptrtoint ptr %control11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %control11, align 8
  %call47 = call i32 @gb_control_get_bundle_versions(ptr noundef %22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.err_destroy_bundles_crit_edge

if.end45.err_destroy_bundles_crit_edge:           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_destroy_bundles

if.end50:                                         ; preds = %if.end45
  %23 = ptrtoint ptr %control11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %control11, align 8
  %call52 = call i32 @gb_control_add(ptr noundef %24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end50.err_destroy_bundles_crit_edge

if.end50.err_destroy_bundles_crit_edge:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_destroy_bundles

if.end55:                                         ; preds = %if.end50
  call void @__pm_runtime_use_autosuspend(ptr noundef %intf, i1 noundef zeroext true) #12
  %usage_count.i = getelementptr inbounds %struct.device, ptr %intf, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %25 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !321
  %call.i173 = call i32 @__pm_runtime_set_status(ptr noundef %intf, i32 noundef 0) #12
  call void @pm_runtime_enable(ptr noundef %intf) #12
  %bundles = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 2
  %prev = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev, align 4
  %cmp68.not183 = icmp eq ptr %27, %bundles
  br i1 %cmp68.not183, label %if.end55.for.end_crit_edge, label %if.end55.for.body_crit_edge

if.end55.for.body_crit_edge:                      ; preds = %if.end55
  br label %for.body

if.end55.for.end_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end55.for.body_crit_edge
  %.pn168185.pn = phi ptr [ %.pn168185, %for.inc.for.body_crit_edge ], [ %27, %if.end55.for.body_crit_edge ]
  %bundle.0184 = getelementptr i8, ptr %.pn168185.pn, i32 -956
  %.pn168185.in = getelementptr inbounds %struct.list_head, ptr %.pn168185.pn, i32 0, i32 1
  %28 = ptrtoint ptr %.pn168185.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn168185 = load ptr, ptr %.pn168185.in, align 4
  %call69 = call i32 @gb_bundle_add(ptr noundef %bundle.0184) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %for.body.for.inc_crit_edge, label %if.then71

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then71:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @gb_bundle_destroy(ptr noundef %bundle.0184) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then71, %for.body.for.inc_crit_edge
  %cmp68.not = icmp eq ptr %.pn168185, %bundles
  br i1 %cmp68.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end55.for.end_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i) #12
  %enabled = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 22
  %29 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %enabled, align 4
  %call.i174 = call i32 @__pm_runtime_idle(ptr noundef %intf, i32 noundef 5) #12
  call fastcc void @trace_gb_interface_enable(ptr noundef %intf)
  br label %cleanup

err_destroy_bundles:                              ; preds = %if.end50.err_destroy_bundles_crit_edge, %if.end45.err_destroy_bundles_crit_edge, %do.end43
  %ret.0 = phi i32 [ %call47, %if.end45.err_destroy_bundles_crit_edge ], [ %call52, %if.end50.err_destroy_bundles_crit_edge ], [ -22, %do.end43 ]
  %bundles81 = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 2
  %30 = ptrtoint ptr %bundles81 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bundles81, align 4
  %cmp92.not178 = icmp eq ptr %31, %bundles81
  br i1 %cmp92.not178, label %err_destroy_bundles.err_free_manifest_crit_edge, label %err_destroy_bundles.for.body94_crit_edge

err_destroy_bundles.for.body94_crit_edge:         ; preds = %err_destroy_bundles
  br label %for.body94

err_destroy_bundles.err_free_manifest_crit_edge:  ; preds = %err_destroy_bundles
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_manifest

for.body94:                                       ; preds = %for.body94.for.body94_crit_edge, %err_destroy_bundles.for.body94_crit_edge
  %.pn.in179 = phi ptr [ %.pn, %for.body94.for.body94_crit_edge ], [ %31, %err_destroy_bundles.for.body94_crit_edge ]
  %bundle.1 = getelementptr i8, ptr %.pn.in179, i32 -956
  %32 = ptrtoint ptr %.pn.in179 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn = load ptr, ptr %.pn.in179, align 4
  call void @gb_bundle_destroy(ptr noundef %bundle.1) #12
  %cmp92.not = icmp eq ptr %.pn, %bundles81
  br i1 %cmp92.not, label %for.body94.err_free_manifest_crit_edge, label %for.body94.for.body94_crit_edge

for.body94.for.body94_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body94

for.body94.err_free_manifest_crit_edge:           ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_manifest

err_free_manifest:                                ; preds = %for.body94.err_free_manifest_crit_edge, %err_destroy_bundles.err_free_manifest_crit_edge, %do.end36
  %ret.1 = phi i32 [ %call31, %do.end36 ], [ %ret.0, %err_destroy_bundles.err_free_manifest_crit_edge ], [ %ret.0, %for.body94.err_free_manifest_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %err_disable_control

err_disable_control:                              ; preds = %err_free_manifest, %if.end8.i.err_disable_control_crit_edge, %do.end21
  %ret.2 = phi i32 [ %ret.1, %err_free_manifest ], [ %.call17, %do.end21 ], [ -12, %if.end8.i.err_disable_control_crit_edge ]
  %33 = ptrtoint ptr %control11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %control11, align 8
  call void @gb_control_disable(ptr noundef %34) #12
  br label %err_put_control

err_put_control:                                  ; preds = %err_disable_control, %if.end10.err_put_control_crit_edge
  %ret.3 = phi i32 [ %call13, %if.end10.err_put_control_crit_edge ], [ %ret.2, %err_disable_control ]
  %35 = ptrtoint ptr %control11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %control11, align 8
  call void @gb_control_put(ptr noundef %36) #12
  %37 = ptrtoint ptr %control11 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %control11, align 8
  br label %cleanup

cleanup:                                          ; preds = %err_put_control, %for.end, %do.end6, %do.end
  %retval.0 = phi i32 [ %retval.0.i177, %do.end ], [ %19, %do.end6 ], [ %ret.3, %err_put_control ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_control_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_control_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_control_get_manifest_size_operation(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_control_get_manifest_operation(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gb_manifest_parse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_control_get_bundle_versions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_control_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_bundle_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_bundle_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_interface_enable(ptr noundef %intf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_enable, i32 0, i32 1), ptr blockaddress(@trace_gb_interface_enable, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !312

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !313

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !322
  %call42 = tail call i32 @__traceiter_gb_interface_enable(ptr noundef null, ptr noundef %intf) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !323
  %13 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !313

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_enable, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_enable, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_interface_enable.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_gb_interface_enable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 365, ptr noundef nonnull @.str.56) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_control_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_control_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_interface_disable(ptr noundef %intf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_disable, i32 0, i32 1), ptr blockaddress(@trace_gb_interface_disable, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !312

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !313

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !324
  %call42 = tail call i32 @__traceiter_gb_interface_disable(ptr noundef null, ptr noundef %intf) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !325
  %13 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !313

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_disable, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_disable, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_interface_disable.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_gb_interface_disable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 370, ptr noundef nonnull @.str.56) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_control_interface_deactivate_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_control_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_interface_add(ptr noundef %intf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_add(ptr noundef %intf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.37, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @trace_gb_interface_add(ptr noundef %intf)
  %type.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 8
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 8
  %arrayidx.i = getelementptr [5 x ptr], ptr @gb_interface_type_string.types, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %intf, ptr noundef nonnull @.str.40, ptr noundef %3) #15
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 4, label %do.end9
    i32 3, label %if.end.do.end14_crit_edge
  ]

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %vendor_id = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 11
  %7 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vendor_id, align 4
  %product_id = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 12
  %9 = ptrtoint ptr %product_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %product_id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %intf, ptr noundef nonnull @.str.43, i32 noundef %8, i32 noundef %10) #15
  br label %do.end14

do.end14:                                         ; preds = %do.end9, %if.end.do.end14_crit_edge
  %ddbl1_manufacturer_id = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 9
  %11 = ptrtoint ptr %ddbl1_manufacturer_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ddbl1_manufacturer_id, align 4
  %ddbl1_product_id = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 10
  %13 = ptrtoint ptr %ddbl1_product_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ddbl1_product_id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %intf, ptr noundef nonnull @.str.46, i32 noundef %12, i32 noundef %14) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end.cleanup_crit_edge, %do.end
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_interface_add(ptr noundef %intf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_add, i32 0, i32 1), ptr blockaddress(@trace_gb_interface_add, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !312

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !313

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !326
  %call42 = tail call i32 @__traceiter_gb_interface_add(ptr noundef null, ptr noundef %intf) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !327
  %13 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !313

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_add, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_add, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_interface_add.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_gb_interface_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 344, ptr noundef nonnull @.str.56) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_interface_del(ptr noundef %intf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state_in_sysfs.i = getelementptr inbounds %struct.kobject, ptr %intf, i32 0, i32 8
  %0 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_gb_interface_del(ptr noundef %intf)
  tail call void @device_del(ptr noundef %intf) #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %intf, ptr noundef nonnull @.str.48) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_interface_del(ptr noundef %intf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_del, i32 0, i32 1), ptr blockaddress(@trace_gb_interface_del, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !312

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !313

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !328
  %call42 = tail call i32 @__traceiter_gb_interface_del(ptr noundef null, ptr noundef %intf) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !329
  %13 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !313

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_del, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_del, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_interface_del.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_gb_interface_del.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 349, ptr noundef nonnull @.str.56) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_interface_put(ptr noundef %intf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @put_device(ptr noundef %intf) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_interface_release(ptr noundef %intf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_release, i32 0, i32 1), ptr blockaddress(@trace_gb_interface_release, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !312

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !313

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !330
  %call42 = tail call i32 @__traceiter_gb_interface_release(ptr noundef null, ptr noundef %intf) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !331
  %13 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !313

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_release, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_release, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_interface_release.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_gb_interface_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 339, ptr noundef nonnull @.str.56) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_interface_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_interface_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %control = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %control, align 8
  %call = tail call i32 @gb_control_interface_suspend_prepare(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %control, align 8
  %call2 = tail call i32 @gb_control_suspend(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %err_hibernate_abort

if.end5:                                          ; preds = %if.end
  %hd.i = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %hd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hd.i, align 8
  %svc1.i = getelementptr inbounds %struct.gb_host_device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %svc1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %svc1.i, align 4
  %interface_id.i = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %interface_id.i, align 4
  %call.i = tail call i32 @gb_svc_intf_set_power_mode_hibernate(ptr noundef %7, i8 noundef zeroext %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  tail call void @msleep(i32 noundef 20) #12
  %10 = ptrtoint ptr %hd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hd.i, align 8
  %svc1.i29 = getelementptr inbounds %struct.gb_host_device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %svc1.i29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %svc1.i29, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_interface_refclk_set.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_interface_suspend, %if.then.i)) #12
          to label %do.end.i [label %if.then.i], !srcloc !312

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_interface_refclk_set.__UNIQUE_ID_ddebug310, ptr noundef %dev, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.117, i32 noundef 0) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end9
  %14 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %interface_id.i, align 4
  %call7.i = tail call i32 @gb_svc_intf_refclk_set(ptr noundef %13, i8 noundef zeroext %15, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %do.end.i.cleanup_crit_edge, label %do.end12.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end12.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.118, i32 noundef %call7.i) #15
  br label %cleanup

err_hibernate_abort:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %control, align 8
  %call15 = tail call i32 @gb_control_interface_hibernate_abort(ptr noundef %17) #12
  br label %cleanup

cleanup:                                          ; preds = %err_hibernate_abort, %do.end12.i, %do.end.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %err_hibernate_abort ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.end5.cleanup_crit_edge ], [ 0, %do.end.i.cleanup_crit_edge ], [ %call7.i, %do.end12.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_interface_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hd = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd, align 8
  %svc1 = getelementptr inbounds %struct.gb_host_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %svc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %svc1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_interface_refclk_set.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_interface_resume, %if.then.i)) #12
          to label %do.end.i [label %if.then.i], !srcloc !312

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_interface_refclk_set.__UNIQUE_ID_ddebug310, ptr noundef %dev, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.117, i32 noundef 1) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %interface_id.i = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %interface_id.i, align 4
  %call7.i = tail call i32 @gb_svc_intf_refclk_set(ptr noundef %3, i8 noundef zeroext %5, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end, label %gb_interface_refclk_set.exit

gb_interface_refclk_set.exit:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.118, i32 noundef %call7.i) #15
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  %6 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %interface_id.i, align 4
  %call2 = tail call i32 @gb_svc_intf_resume(ptr noundef %3, i8 noundef zeroext %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %control = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %control, align 8
  %call6 = tail call i32 @gb_control_resume(ptr noundef %9) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %gb_interface_refclk_set.exit
  %retval.0 = phi i32 [ %call7.i, %gb_interface_refclk_set.exit ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_interface_runtime_idle(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %0 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i2 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 9) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_control_interface_suspend_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_control_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_control_interface_hibernate_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_svc_intf_resume(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_control_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_control_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_control_mode_switch_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_control_mode_switch_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @interface_unipro_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.gb_interface, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %.off = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %3, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddbl1_manufacturer_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ddbl1_manufacturer_id = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %ddbl1_manufacturer_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ddbl1_manufacturer_id, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.69, i32 noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddbl1_product_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ddbl1_product_id = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %ddbl1_product_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ddbl1_product_id, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.69, i32 noundef %1) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @interface_greybus_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.gb_interface, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cond = icmp eq i32 %1, 4
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %3, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor_id = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vendor_id, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.69, i32 noundef %1) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @product_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %product_id = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %product_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product_id, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.69, i32 noundef %1) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_number_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_number = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %serial_number to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %serial_number, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.74, i64 noundef %1) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @interface_power_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.gb_interface, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %.off = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %3, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @voltage_now_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %measurement = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %measurement) #12
  %0 = ptrtoint ptr %measurement to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %measurement, align 4, !annotation !318
  %hd = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 14
  %1 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hd, align 8
  %svc = getelementptr inbounds %struct.gb_host_device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %svc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %svc, align 4
  %interface_id = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 5
  %5 = ptrtoint ptr %interface_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %interface_id, align 4
  %call = call i32 @gb_svc_pwrmon_intf_sample_get(ptr noundef %4, i8 noundef zeroext %6, i8 noundef zeroext 2, ptr noundef nonnull %measurement) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %measurement to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %measurement, align 4
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.78, i32 noundef %8)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %measurement) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_svc_pwrmon_intf_sample_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @current_now_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %measurement = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %measurement) #12
  %0 = ptrtoint ptr %measurement to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %measurement, align 4, !annotation !318
  %hd = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 14
  %1 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hd, align 8
  %svc = getelementptr inbounds %struct.gb_host_device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %svc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %svc, align 4
  %interface_id = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 5
  %5 = ptrtoint ptr %interface_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %interface_id, align 4
  %call = call i32 @gb_svc_pwrmon_intf_sample_get(ptr noundef %4, i8 noundef zeroext %6, i8 noundef zeroext 1, ptr noundef nonnull %measurement) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %measurement to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %measurement, align 4
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.78, i32 noundef %8)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %measurement) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_now_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %measurement = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %measurement) #12
  %0 = ptrtoint ptr %measurement to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %measurement, align 4, !annotation !318
  %hd = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 14
  %1 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hd, align 8
  %svc = getelementptr inbounds %struct.gb_host_device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %svc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %svc, align 4
  %interface_id = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 5
  %5 = ptrtoint ptr %interface_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %interface_id, align 4
  %call = call i32 @gb_svc_pwrmon_intf_sample_get(ptr noundef %4, i8 noundef zeroext %6, i8 noundef zeroext 3, ptr noundef nonnull %measurement) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %measurement to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %measurement, align 4
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.78, i32 noundef %8)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %measurement) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active, align 1, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %.str.87..str.86 = select i1 %tobool.not, ptr @.str.87, ptr @.str.86
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %.str.87..str.86) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_state_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %activate = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %activate) #12
  %0 = ptrtoint ptr %activate to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %activate, align 1, !annotation !318
  %call = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %activate) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 17
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %1 = ptrtoint ptr %activate to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %activate, align 1, !range !308
  %active = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 21
  %3 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %active, align 1, !range !308
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp = icmp eq i8 %2, %4
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call9 = call i32 @gb_interface_activate(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef %call9) #15
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.then8
  %call14 = call i32 @gb_interface_enable(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup.sink.split_crit_edge, label %do.end19

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91, i32 noundef %call14) #15
  call void @gb_interface_deactivate(ptr noundef %dev)
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  call void @gb_interface_disable(ptr noundef %dev)
  call void @gb_interface_deactivate(ptr noundef %dev)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %do.end19, %if.end13.cleanup.sink.split_crit_edge, %do.end, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call9, %do.end ], [ %call14, %do.end19 ], [ %len, %if.end.cleanup.sink.split_crit_edge ], [ %len, %if.end13.cleanup.sink.split_crit_edge ], [ %len, %if.else ]
  call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %activate) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interface_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %interface_id = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %interface_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %interface_id, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.78, i32 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interface_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 8
  %arrayidx.i = getelementptr [5 x ptr], ptr @gb_interface_type_string.types, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.95, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_interface_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_interface_activate_operation(ptr noundef %intf, ptr nocapture noundef writeonly %intf_type) unnamed_addr #0 align 64 {
entry:
  %type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hd = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 14
  %0 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd, align 8
  %svc1 = getelementptr inbounds %struct.gb_host_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %svc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %svc1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type) #12
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %type, align 1, !annotation !318
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_interface_activate_operation.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_interface_activate_operation, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_interface_activate_operation.__UNIQUE_ID_ddebug312, ptr noundef %intf, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %interface_id = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 5
  %5 = ptrtoint ptr %interface_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %interface_id, align 4
  %call4 = call i32 @gb_svc_intf_activate(ptr noundef %3, i8 noundef zeroext %6, ptr noundef nonnull %type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.97, i32 noundef %call4) #15
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %8, label %do.end20 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb12
    i8 3, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %intf_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %intf_type, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %intf_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %intf_type, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.99) #15
  br label %cleanup

sw.bb17:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %intf_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %intf_type, align 4
  br label %cleanup

do.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %8 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.102, i32 noundef %conv) #15
  %13 = ptrtoint ptr %intf_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %intf_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %sw.bb17, %sw.bb12, %sw.bb, %do.end9
  %retval.0 = phi i32 [ %call4, %do.end9 ], [ -19, %do.end20 ], [ 0, %sw.bb17 ], [ -19, %sw.bb12 ], [ -19, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_interface_read_dme(ptr noundef %intf) unnamed_addr #0 align 64 {
entry:
  %sn0.i = alloca i32, align 4
  %sn1.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dme_read = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 24
  %0 = ptrtoint ptr %dme_read to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dme_read, align 2, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ddbl1_manufacturer_id = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 9
  %hd.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 14
  %2 = ptrtoint ptr %hd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hd.i, align 8
  %svc.i = getelementptr inbounds %struct.gb_host_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %svc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %svc.i, align 4
  %interface_id.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 5
  %6 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %interface_id.i, align 4
  %call.i = tail call i32 @gb_svc_dme_peer_get(ptr noundef %5, i8 noundef zeroext %7, i16 noundef zeroext 20483, i16 noundef zeroext 0, ptr noundef %ddbl1_manufacturer_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ddbl1_product_id = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 10
  %8 = ptrtoint ptr %hd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hd.i, align 8
  %svc.i36 = getelementptr inbounds %struct.gb_host_device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %svc.i36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %svc.i36, align 4
  %12 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %interface_id.i, align 4
  %call.i38 = tail call i32 @gb_svc_dme_peer_get(ptr noundef %11, i8 noundef zeroext %13, i16 noundef zeroext 20484, i16 noundef zeroext 0, ptr noundef %ddbl1_product_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool5.not = icmp eq i32 %call.i38, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %14 = ptrtoint ptr %ddbl1_manufacturer_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ddbl1_manufacturer_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 294, i32 %15)
  %cmp = icmp eq i32 %15, 294
  br i1 %cmp, label %land.lhs.true, label %do.end.i

land.lhs.true:                                    ; preds = %if.end7
  %16 = ptrtoint ptr %ddbl1_product_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ddbl1_product_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %17)
  %cmp10 = icmp eq i32 %17, 4096
  br i1 %cmp10, label %if.then11, label %land.lhs.true.if.end.i_crit_edge

land.lhs.true.if.end.i_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %quirks = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 16
  %18 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quirks, align 8
  %or13 = or i32 %19, 6
  store i32 %or13, ptr %quirks, align 8
  br label %if.end.i

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sn0.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sn1.i) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.104, i32 noundef %15) #15
  br label %gb_interface_read_ara_dme.exit.thread

if.end.i:                                         ; preds = %if.then11, %land.lhs.true.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sn0.i) #12
  %20 = ptrtoint ptr %sn0.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %sn0.i, align 4, !annotation !318
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sn1.i) #12
  %21 = ptrtoint ptr %sn1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %sn1.i, align 4, !annotation !318
  %vendor_id.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 11
  %22 = ptrtoint ptr %hd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hd.i, align 8
  %svc.i.i = getelementptr inbounds %struct.gb_host_device, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %svc.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %svc.i.i, align 4
  %26 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %interface_id.i, align 4
  %call.i.i = tail call i32 @gb_svc_dme_peer_get(ptr noundef %25, i8 noundef zeroext %27, i16 noundef zeroext 24576, i16 noundef zeroext 0, ptr noundef %vendor_id.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.gb_interface_read_ara_dme.exit.thread_crit_edge

if.end.i.gb_interface_read_ara_dme.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_interface_read_ara_dme.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %product_id.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 12
  %28 = ptrtoint ptr %hd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hd.i, align 8
  %svc.i36.i = getelementptr inbounds %struct.gb_host_device, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %svc.i36.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %svc.i36.i, align 4
  %32 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %interface_id.i, align 4
  %call.i38.i = tail call i32 @gb_svc_dme_peer_get(ptr noundef %31, i8 noundef zeroext %33, i16 noundef zeroext 24577, i16 noundef zeroext 0, ptr noundef %product_id.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %tobool5.not.i = icmp eq i32 %call.i38.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end3.i.gb_interface_read_ara_dme.exit.thread_crit_edge

if.end3.i.gb_interface_read_ara_dme.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_interface_read_ara_dme.exit.thread

if.end7.i:                                        ; preds = %if.end3.i
  %34 = ptrtoint ptr %hd.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hd.i, align 8
  %svc.i40.i = getelementptr inbounds %struct.gb_host_device, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %svc.i40.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %svc.i40.i, align 4
  %38 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %interface_id.i, align 4
  %call.i42.i = call i32 @gb_svc_dme_peer_get(ptr noundef %37, i8 noundef zeroext %39, i16 noundef zeroext 24578, i16 noundef zeroext 0, ptr noundef nonnull %sn0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %tobool9.not.i = icmp eq i32 %call.i42.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.gb_interface_read_ara_dme.exit.thread_crit_edge

if.end7.i.gb_interface_read_ara_dme.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_interface_read_ara_dme.exit.thread

if.end11.i:                                       ; preds = %if.end7.i
  %40 = ptrtoint ptr %hd.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hd.i, align 8
  %svc.i44.i = getelementptr inbounds %struct.gb_host_device, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %svc.i44.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %svc.i44.i, align 4
  %44 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %interface_id.i, align 4
  %call.i46.i = call i32 @gb_svc_dme_peer_get(ptr noundef %43, i8 noundef zeroext %45, i16 noundef zeroext 24579, i16 noundef zeroext 0, ptr noundef nonnull %sn1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool13.not.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool13.not.i, label %if.end18, label %if.end11.i.gb_interface_read_ara_dme.exit.thread_crit_edge

if.end11.i.gb_interface_read_ara_dme.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_interface_read_ara_dme.exit.thread

gb_interface_read_ara_dme.exit.thread:            ; preds = %if.end11.i.gb_interface_read_ara_dme.exit.thread_crit_edge, %if.end7.i.gb_interface_read_ara_dme.exit.thread_crit_edge, %if.end3.i.gb_interface_read_ara_dme.exit.thread_crit_edge, %if.end.i.gb_interface_read_ara_dme.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.i46.i, %if.end11.i.gb_interface_read_ara_dme.exit.thread_crit_edge ], [ %call.i42.i, %if.end7.i.gb_interface_read_ara_dme.exit.thread_crit_edge ], [ %call.i38.i, %if.end3.i.gb_interface_read_ara_dme.exit.thread_crit_edge ], [ %call.i.i, %if.end.i.gb_interface_read_ara_dme.exit.thread_crit_edge ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sn1.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sn0.i) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %sn1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sn1.i, align 4
  %conv.i = zext i32 %47 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %48 = ptrtoint ptr %sn0.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sn0.i, align 4
  %conv16.i = zext i32 %49 to i64
  %or.i = or i64 %shl.i, %conv16.i
  %serial_number.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 13
  %50 = ptrtoint ptr %serial_number.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %or.i, ptr %serial_number.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sn1.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sn0.i) #12
  %51 = ptrtoint ptr %dme_read to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %dme_read, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %gb_interface_read_ara_dme.exit.thread, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i38, %if.end3.cleanup_crit_edge ], [ %retval.0.i.ph, %gb_interface_read_ara_dme.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_interface_route_create(ptr noundef %intf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hd = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 14
  %0 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd, align 8
  %svc1 = getelementptr inbounds %struct.gb_host_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %svc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %svc1, align 4
  %interface_id = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 5
  %4 = ptrtoint ptr %interface_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %interface_id, align 4
  %device_id_map = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 4
  %call = tail call i32 @ida_alloc_range(ptr noundef %device_id_map, i32 noundef 2, i32 noundef 31, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.106, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %call to i8
  %call2 = tail call i32 @gb_svc_intf_device_id(ptr noundef %3, i8 noundef zeroext %5, i8 noundef zeroext %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv8 = and i32 %call, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.109, i32 noundef %conv8, i32 noundef %call2) #15
  br label %err_ida_remove

if.end9:                                          ; preds = %if.end
  %ap_intf_id = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %ap_intf_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ap_intf_id, align 2
  %call10 = tail call i32 @gb_svc_route_create(ptr noundef %3, i8 noundef zeroext %7, i8 noundef zeroext 1, i8 noundef zeroext %5, i8 noundef zeroext %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.112, i32 noundef %call10) #15
  %.pre = and i32 %call, 255
  br label %err_ida_remove

if.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %device_id18 = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 6
  %8 = ptrtoint ptr %device_id18 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %device_id18, align 1
  br label %cleanup

err_ida_remove:                                   ; preds = %do.end15, %do.end6
  %conv20.pre-phi = phi i32 [ %.pre, %do.end15 ], [ %conv8, %do.end6 ]
  %ret.0 = phi i32 [ %call10, %do.end15 ], [ %call2, %do.end6 ]
  tail call void @ida_free(ptr noundef %device_id_map, i32 noundef %conv20.pre-phi) #12
  br label %cleanup

cleanup:                                          ; preds = %err_ida_remove, %if.end17, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.0, %err_ida_remove ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_interface_activate(ptr noundef %intf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_activate, i32 0, i32 1), ptr blockaddress(@trace_gb_interface_activate, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !312

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !313

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !332
  %call42 = tail call i32 @__traceiter_gb_interface_activate(ptr noundef null, ptr noundef %intf) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !333
  %13 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !313

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_activate, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_interface_activate, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_interface_activate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_gb_interface_activate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 355, ptr noundef nonnull @.str.56) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !298) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_svc_intf_activate(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_svc_dme_peer_get(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_svc_intf_device_id(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_svc_route_create(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_interface_activate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_interface_deactivate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_svc_route_destroy(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_svc_intf_set_power_mode_hibernate(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_svc_intf_unipro_set(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_svc_intf_refclk_set(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_svc_intf_vsys_set(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_svc_dme_peer_set(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_interface_enable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_interface_disable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_interface_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_interface_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 152)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 152)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !25, !27, !29, !30, !32, !33, !35, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !124, !126, !128, !130, !131, !132, !134, !135, !137, !139, !141, !142, !144, !145, !147, !148, !149, !151, !153, !155, !156, !158, !159, !160, !161, !163, !165, !166, !168, !169, !170, !171, !173, !174, !176, !177, !178, !179, !181, !182, !184, !186, !188, !189, !190, !191, !193, !194, !195, !197, !199, !201, !202, !204, !205, !207, !209, !210, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !262, !263, !264, !266, !267, !269, !270, !271, !273, !274, !275, !276, !278, !279, !281, !282, !284, !285, !287, !289, !291, !293, !295, !297}
!llvm.named.register.sp = !{!298}
!llvm.module.flags = !{!299, !300, !301, !302, !303, !304, !305, !306}
!llvm.ident = !{!307}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/greybus/interface.c", i32 212, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gb_interface_mailbox_event._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gb_interface_mailbox_event._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/greybus/interface.c", i32 219, i32 3}
!10 = !{ptr @gb_interface_mailbox_event._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gb_interface_mailbox_event._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/greybus/interface.c", i32 231, i32 3}
!14 = !{ptr @gb_interface_mailbox_event._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @gb_interface_mailbox_event._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/greybus/interface.c", i32 236, i32 2}
!18 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @gb_interface_mailbox_event._entry.11, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @gb_interface_mailbox_event._entry_ptr.14, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_gb_interface_request_mode_switch, !22, !"__ksymtab_gb_interface_request_mode_switch", i1 false, i1 false}
!22 = !{!"../drivers/greybus/interface.c", i32 351, i32 1}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/greybus/interface.c", i32 769, i32 11}
!25 = !{ptr @greybus_interface_type, !26, !"greybus_interface_type", i1 false, i1 false}
!26 = !{!"../drivers/greybus/interface.c", i32 768, i32 20}
!27 = !{ptr @gb_interface_create.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/greybus/interface.c", i32 801, i32 2}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @gb_interface_create.__key.17, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/greybus/interface.c", i32 802, i32 2}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/greybus/interface.c", i32 814, i32 27}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/greybus/interface.c", i32 1022, i32 4}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @gb_interface_activate._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @gb_interface_activate._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/greybus/interface.c", i32 1077, i32 3}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @gb_interface_enable._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @gb_interface_enable._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/greybus/interface.c", i32 1084, i32 3}
!48 = !{ptr @gb_interface_enable._entry.25, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @gb_interface_enable._entry_ptr.27, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/greybus/interface.c", i32 1097, i32 3}
!52 = !{ptr @gb_interface_enable._entry.28, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @gb_interface_enable._entry_ptr.30, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/greybus/interface.c", i32 1116, i32 3}
!56 = !{ptr @gb_interface_enable._entry.31, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @gb_interface_enable._entry_ptr.33, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/greybus/interface.c", i32 1125, i32 3}
!60 = !{ptr @gb_interface_enable._entry.34, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @gb_interface_enable._entry_ptr.36, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/greybus/interface.c", i32 1223, i32 3}
!64 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @gb_interface_add._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @gb_interface_add._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/greybus/interface.c", i32 1229, i32 2}
!69 = !{ptr @gb_interface_add._entry.39, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @gb_interface_add._entry_ptr.41, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/greybus/interface.c", i32 1234, i32 3}
!73 = !{ptr @gb_interface_add._entry.42, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @gb_interface_add._entry_ptr.44, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.46, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/greybus/interface.c", i32 1238, i32 3}
!77 = !{ptr @gb_interface_add._entry.45, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @gb_interface_add._entry_ptr.47, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.48, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/greybus/interface.c", i32 1256, i32 3}
!81 = !{ptr @.str.49, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @gb_interface_del._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @gb_interface_del._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.50, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/greybus/interface.c", i32 190, i32 2}
!86 = !{ptr @.str.51, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @gb_interface_legacy_mode_switch._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @gb_interface_legacy_mode_switch._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/greybus/interface.c", i32 199, i32 3}
!91 = !{ptr @gb_interface_legacy_mode_switch._entry.52, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @gb_interface_legacy_mode_switch._entry_ptr.54, !90, !"_entry_ptr", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../drivers/greybus/greybus_trace.h", i32 339, i32 1}
!95 = !{ptr @.str.55, !94, !"<string literal>", i1 false, i1 false}
!96 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!97 = !{ptr @.str.56, !94, !"<string literal>", i1 false, i1 false}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!100 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @gb_interface_pm_ops, !102, !"gb_interface_pm_ops", i1 false, i1 false}
!102 = !{!"../drivers/greybus/interface.c", i32 763, i32 32}
!103 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/greybus/interface.c", i32 263, i32 3}
!105 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @gb_interface_mode_switch_work.__UNIQUE_ID_ddebug308, !104, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!108 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/greybus/interface.c", i32 287, i32 3}
!110 = !{ptr @gb_interface_mode_switch_work._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @gb_interface_mode_switch_work._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/greybus/interface.c", i32 290, i32 3}
!114 = !{ptr @gb_interface_mode_switch_work._entry.62, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @gb_interface_mode_switch_work._entry_ptr.64, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @gb_interface_mode_switch_work._entry.65, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/greybus/interface.c", i32 300, i32 4}
!118 = !{ptr @gb_interface_mode_switch_work._entry_ptr.66, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @init_completion.__key, !120, !"__key", i1 false, i1 false}
!120 = !{!"../include/linux/completion.h", i32 87, i32 2}
!121 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @interface_groups, !123, !"interface_groups", i1 false, i1 false}
!123 = !{!"../drivers/greybus/interface.c", i32 683, i32 38}
!124 = !{ptr @interface_unipro_group, !125, !"interface_unipro_group", i1 false, i1 false}
!125 = !{!"../drivers/greybus/interface.c", i32 664, i32 37}
!126 = !{ptr @interface_unipro_attrs, !127, !"interface_unipro_attrs", i1 false, i1 false}
!127 = !{!"../drivers/greybus/interface.c", i32 593, i32 26}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/greybus/interface.c", i32 450, i32 1}
!130 = !{ptr @dev_attr_ddbl1_manufacturer_id, !129, !"dev_attr_ddbl1_manufacturer_id", i1 false, i1 false}
!131 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/greybus/interface.c", i32 451, i32 1}
!134 = !{ptr @dev_attr_ddbl1_product_id, !133, !"dev_attr_ddbl1_product_id", i1 false, i1 false}
!135 = !{ptr @interface_greybus_group, !136, !"interface_greybus_group", i1 false, i1 false}
!136 = !{!"../drivers/greybus/interface.c", i32 669, i32 37}
!137 = !{ptr @interface_greybus_attrs, !138, !"interface_greybus_attrs", i1 false, i1 false}
!138 = !{!"../drivers/greybus/interface.c", i32 599, i32 26}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/greybus/interface.c", i32 453, i32 1}
!141 = !{ptr @dev_attr_vendor_id, !140, !"dev_attr_vendor_id", i1 false, i1 false}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/greybus/interface.c", i32 454, i32 1}
!144 = !{ptr @dev_attr_product_id, !143, !"dev_attr_product_id", i1 false, i1 false}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/greybus/interface.c", i32 455, i32 1}
!147 = !{ptr @dev_attr_serial_number, !146, !"dev_attr_serial_number", i1 false, i1 false}
!148 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @interface_power_group, !150, !"interface_power_group", i1 false, i1 false}
!150 = !{!"../drivers/greybus/interface.c", i32 674, i32 37}
!151 = !{ptr @interface_power_attrs, !152, !"interface_power_attrs", i1 false, i1 false}
!152 = !{!"../drivers/greybus/interface.c", i32 606, i32 26}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/greybus/interface.c", i32 474, i32 8}
!155 = !{ptr @dev_attr_voltage_now, !154, !"dev_attr_voltage_now", i1 false, i1 false}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/greybus/interface.c", i32 468, i32 3}
!158 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @voltage_now_show._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @voltage_now_show._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/greybus/interface.c", i32 472, i32 22}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/greybus/interface.c", i32 493, i32 8}
!165 = !{ptr @dev_attr_current_now, !164, !"dev_attr_current_now", i1 false, i1 false}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/greybus/interface.c", i32 487, i32 3}
!168 = !{ptr @.str.81, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @current_now_show._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @current_now_show._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/greybus/interface.c", i32 512, i32 8}
!173 = !{ptr @dev_attr_power_now, !172, !"dev_attr_power_now", i1 false, i1 false}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/greybus/interface.c", i32 506, i32 3}
!176 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @power_now_show._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @power_now_show._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/greybus/interface.c", i32 569, i32 8}
!181 = !{ptr @dev_attr_power_state, !180, !"dev_attr_power_state", i1 false, i1 false}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/greybus/interface.c", i32 520, i32 36}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/greybus/interface.c", i32 522, i32 36}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/greybus/interface.c", i32 544, i32 4}
!188 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @power_state_store._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @power_state_store._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/greybus/interface.c", i32 551, i32 4}
!193 = !{ptr @power_state_store._entry.90, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @power_state_store._entry_ptr.92, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @interface_common_group, !196, !"interface_common_group", i1 false, i1 false}
!196 = !{!"../drivers/greybus/interface.c", i32 679, i32 37}
!197 = !{ptr @interface_common_attrs, !198, !"interface_common_attrs", i1 false, i1 false}
!198 = !{!"../drivers/greybus/interface.c", i32 614, i32 26}
!199 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/greybus/interface.c", i32 452, i32 1}
!201 = !{ptr @dev_attr_interface_id, !200, !"dev_attr_interface_id", i1 false, i1 false}
!202 = !{ptr @.str.94, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/greybus/interface.c", i32 591, i32 8}
!204 = !{ptr @dev_attr_interface_type, !203, !"dev_attr_interface_type", i1 false, i1 false}
!205 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/greybus/interface.c", i32 589, i32 22}
!207 = distinct !{null, !208, !"__already_done", i1 false, i1 false}
!208 = !{!"../drivers/greybus/greybus_trace.h", i32 334, i32 1}
!209 = distinct !{null, !208, !"__warned", i1 false, i1 false}
!210 = !{ptr @.str.96, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/greybus/interface.c", i32 880, i32 2}
!212 = !{ptr @gb_interface_activate_operation.__UNIQUE_ID_ddebug312, !211, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!213 = !{ptr @.str.97, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/greybus/interface.c", i32 884, i32 3}
!215 = !{ptr @gb_interface_activate_operation._entry, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @gb_interface_activate_operation._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.99, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/greybus/interface.c", i32 895, i32 3}
!219 = !{ptr @gb_interface_activate_operation._entry.98, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @gb_interface_activate_operation._entry_ptr.100, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.102, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/greybus/interface.c", i32 902, i32 3}
!223 = !{ptr @gb_interface_activate_operation._entry.101, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @gb_interface_activate_operation._entry_ptr.103, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.104, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/greybus/interface.c", i32 65, i32 3}
!227 = !{ptr @.str.105, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @gb_interface_read_ara_dme._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @gb_interface_read_ara_dme._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.106, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/greybus/interface.c", i32 138, i32 3}
!232 = !{ptr @.str.107, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @gb_interface_route_create._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @gb_interface_route_create._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.109, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/greybus/interface.c", i32 145, i32 3}
!237 = !{ptr @gb_interface_route_create._entry.108, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @gb_interface_route_create._entry_ptr.110, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.112, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/greybus/interface.c", i32 154, i32 3}
!241 = !{ptr @gb_interface_route_create._entry.111, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @gb_interface_route_create._entry_ptr.113, !240, !"_entry_ptr", i1 false, i1 false}
!243 = distinct !{null, !244, !"__already_done", i1 false, i1 false}
!244 = !{!"../drivers/greybus/greybus_trace.h", i32 355, i32 1}
!245 = distinct !{null, !244, !"__warned", i1 false, i1 false}
!246 = distinct !{null, !247, !"__already_done", i1 false, i1 false}
!247 = !{!"../drivers/greybus/greybus_trace.h", i32 360, i32 1}
!248 = distinct !{null, !247, !"__warned", i1 false, i1 false}
!249 = !{ptr @.str.114, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/greybus/interface.c", i32 862, i32 2}
!251 = !{ptr @.str.115, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @gb_interface_unipro_set.__UNIQUE_ID_ddebug311, !250, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!253 = !{ptr @.str.116, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/greybus/interface.c", i32 866, i32 3}
!255 = !{ptr @gb_interface_unipro_set._entry, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @gb_interface_unipro_set._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.117, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/greybus/interface.c", i32 846, i32 2}
!259 = !{ptr @gb_interface_refclk_set.__UNIQUE_ID_ddebug310, !258, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!260 = !{ptr @.str.118, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/greybus/interface.c", i32 850, i32 3}
!262 = !{ptr @gb_interface_refclk_set._entry, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @gb_interface_refclk_set._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.119, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/greybus/interface.c", i32 830, i32 2}
!266 = !{ptr @gb_interface_vsys_set.__UNIQUE_ID_ddebug309, !265, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!267 = !{ptr @.str.120, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/greybus/interface.c", i32 834, i32 3}
!269 = !{ptr @gb_interface_vsys_set._entry, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @gb_interface_vsys_set._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.121, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/greybus/interface.c", i32 391, i32 3}
!273 = !{ptr @.str.122, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @gb_interface_read_and_clear_init_status._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @gb_interface_read_and_clear_init_status._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = distinct !{null, !277, !"__already_done", i1 false, i1 false}
!277 = !{!"../drivers/greybus/greybus_trace.h", i32 365, i32 1}
!278 = distinct !{null, !277, !"__warned", i1 false, i1 false}
!279 = distinct !{null, !280, !"__already_done", i1 false, i1 false}
!280 = !{!"../drivers/greybus/greybus_trace.h", i32 370, i32 1}
!281 = distinct !{null, !280, !"__warned", i1 false, i1 false}
!282 = distinct !{null, !283, !"__already_done", i1 false, i1 false}
!283 = !{!"../drivers/greybus/greybus_trace.h", i32 344, i32 1}
!284 = distinct !{null, !283, !"__warned", i1 false, i1 false}
!285 = !{ptr @.str.123, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/greybus/interface.c", i32 574, i32 33}
!287 = !{ptr @.str.124, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/greybus/interface.c", i32 575, i32 33}
!289 = !{ptr @.str.125, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/greybus/interface.c", i32 576, i32 31}
!291 = !{ptr @.str.126, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/greybus/interface.c", i32 577, i32 32}
!293 = !{ptr @gb_interface_type_string.types, !294, !"types", i1 false, i1 false}
!294 = !{!"../drivers/greybus/interface.c", i32 573, i32 28}
!295 = distinct !{null, !296, !"__already_done", i1 false, i1 false}
!296 = !{!"../drivers/greybus/greybus_trace.h", i32 349, i32 1}
!297 = distinct !{null, !296, !"__warned", i1 false, i1 false}
!298 = !{!"sp"}
!299 = !{i32 1, !"wchar_size", i32 2}
!300 = !{i32 1, !"min_enum_size", i32 4}
!301 = !{i32 8, !"branch-target-enforcement", i32 0}
!302 = !{i32 8, !"sign-return-address", i32 0}
!303 = !{i32 8, !"sign-return-address-all", i32 0}
!304 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!305 = !{i32 7, !"uwtable", i32 1}
!306 = !{i32 7, !"frame-pointer", i32 2}
!307 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!308 = !{i8 0, i8 2}
!309 = !{i64 2148216041}
!310 = !{i64 700864, i64 700889, i64 700911, i64 700927, i64 700939, i64 700959, i64 700983, i64 700999, i64 701011}
!311 = !{i64 2148216229}
!312 = !{i64 2148784287, i64 2148784292, i64 2148784305, i64 2148784349, i64 2148784383, i64 2148784404}
!313 = !{!"branch_weights", i32 2000, i32 1}
!314 = !{i64 2154515516}
!315 = !{i64 2154515725}
!316 = !{i64 2149285443}
!317 = !{i64 2149286479}
!318 = !{!"auto-init"}
!319 = !{i64 2154602434}
!320 = !{i64 2154602651}
!321 = !{i64 2148216622, i64 2148216648, i64 2148216677, i64 2148216711, i64 2148216742, i64 2148216765}
!322 = !{i64 2154619246}
!323 = !{i64 2154619455}
!324 = !{i64 2154639942}
!325 = !{i64 2154640153}
!326 = !{i64 2154548684}
!327 = !{i64 2154548887}
!328 = !{i64 2154569062}
!329 = !{i64 2154569265}
!330 = !{i64 2154532151}
!331 = !{i64 2154532362}
!332 = !{i64 2154585574}
!333 = !{i64 2154585787}
