; ModuleID = '/llk/IR_all_yes/kernel/power/hibernate.c_pt.bc'
source_filename = "../kernel/power/hibernate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hibernation_set_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_hibernation_set_ops\09\09\09\09"
module asm "\09.long\09__crc_hibernation_set_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hibernation_set_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22hibernation_set_ops\22\09\09\09\09\09"
module asm "__kstrtabns_hibernation_set_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+system_entering_hibernation\22, \22a\22\09"
module asm "\09.weak\09__crc_system_entering_hibernation\09\09\09\09"
module asm "\09.long\09__crc_system_entering_hibernation\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_entering_hibernation:\09\09\09\09\09"
module asm "\09.asciz \09\22system_entering_hibernation\22\09\09\09\09\09"
module asm "__kstrtabns_system_entering_hibernation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hibernate_quiet_exec\22, \22a\22\09"
module asm "\09.weak\09__crc_hibernate_quiet_exec\09\09\09\09"
module asm "\09.long\09__crc_hibernate_quiet_exec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hibernate_quiet_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22hibernate_quiet_exec\22\09\09\09\09\09"
module asm "__kstrtabns_hibernate_quiet_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_hibernation_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@hibernate_atomic = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 1 }, [28 x i8] zeroinitializer }, align 32
@nohibernate = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kernel/power/hibernate.c\00", [39 x i8] zeroinitializer }, align 32
@hibernation_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@hibernation_mode = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__kstrtab_hibernation_set_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_hibernation_set_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_hibernation_set_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hibernation_set_ops to i32), ptr @__kstrtab_hibernation_set_ops, ptr @__kstrtabns_hibernation_set_ops }, section "___ksymtab_gpl+hibernation_set_ops", align 4
@entering_platform_hibernation = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_system_entering_hibernation = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_entering_hibernation = external dso_local constant [0 x i8], align 1
@__ksymtab_system_entering_hibernation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_entering_hibernation to i32), ptr @__kstrtab_system_entering_hibernation, ptr @__kstrtabns_system_entering_hibernation }, section "___ksymtab+system_entering_hibernation", align 4
@swsusp_show_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016PM: hibernation: %s %u kbytes in %u.%02u seconds (%u.%02u MB/s)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"swsusp_show_speed\00", [46 x i8] zeroinitializer }, align 32
@swsusp_show_speed._entry_ptr = internal global ptr @swsusp_show_speed._entry, section ".printk_index", align 4
@freezer_test_done = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@in_suspend = dso_local local_unnamed_addr global i32 0, section ".data..nosave", align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Hibernation not available.\0A\00", [36 x i8] zeroinitializer }, align 32
@hibernate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016PM: hibernation: hibernation entry\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hibernate\00", [22 x i8] zeroinitializer }, align 32
@hibernate._entry_ptr = internal global ptr @hibernate._entry, section ".printk_index", align 4
@nocompress = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Writing hibernation image.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Hibernation image restored successfully.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Checking hibernation image\0A\00", [36 x i8] zeroinitializer }, align 32
@hibernate._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016PM: hibernation: hibernation exit\0A\00", [59 x i8] zeroinitializer }, align 32
@hibernate._entry_ptr.11 = internal global ptr @hibernate._entry.9, section ".printk_index", align 4
@__kstrtab_hibernate_quiet_exec = external dso_local constant [0 x i8], align 1
@__kstrtabns_hibernate_quiet_exec = external dso_local constant [0 x i8], align 1
@__ksymtab_hibernate_quiet_exec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hibernate_quiet_exec to i32), ptr @__kstrtab_hibernate_quiet_exec, ptr @__kstrtabns_hibernate_quiet_exec }, section "___ksymtab_gpl+hibernate_quiet_exec", align 4
@__initcall__kmod_hibernate__355_1025_software_resume7s = internal global ptr @software_resume, section ".initcall7s.init", align 4
@__initcall__kmod_hibernate__356_1273_pm_disk_init1 = internal global ptr @pm_disk_init, section ".initcall1.init", align 4
@__setup_str_noresume_setup = internal constant [9 x i8] c"noresume\00", section ".init.rodata", align 1
@__setup_noresume_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_noresume_setup, ptr @noresume_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_resume_offset_setup = internal constant [15 x i8] c"resume_offset=\00", section ".init.rodata", align 1
@__setup_resume_offset_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_resume_offset_setup, ptr @resume_offset_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_resume_setup = internal constant [8 x i8] c"resume=\00", section ".init.rodata", align 1
@__setup_resume_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_resume_setup, ptr @resume_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_hibernate_setup = internal constant [11 x i8] c"hibernate=\00", section ".init.rodata", align 1
@__setup_hibernate_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_hibernate_setup, ptr @hibernate_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_resumewait_setup = internal constant [11 x i8] c"resumewait\00", section ".init.rodata", align 1
@__setup_resumewait_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_resumewait_setup, ptr @resumewait_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_resumedelay_setup = internal constant [13 x i8] c"resumedelay=\00", section ".init.rodata", align 1
@__setup_resumedelay_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_resumedelay_setup, ptr @resumedelay_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_nohibernate_setup = internal constant [12 x i8] c"nohibernate\00", section ".init.rodata", align 1
@__setup_nohibernate_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_nohibernate_setup, ptr @nohibernate_setup, i32 0 }, section ".init.setup", align 4
@swsusp_resume_device = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@swsusp_resume_block = dso_local global { i64, [24 x i8] } zeroinitializer, align 32
@pm_suspend_global_flags = external dso_local local_unnamed_addr global i32, align 4
@pm_test_level = external dso_local local_unnamed_addr global i32, align 4
@hibernation_debug_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016PM: hibernation: debug: Waiting for 5 seconds.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hibernation_debug_sleep\00", [40 x i8] zeroinitializer }, align 32
@hibernation_debug_sleep._entry_ptr = internal global ptr @hibernation_debug_sleep._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@create_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013PM: hibernation: Some devices failed to power down, aborting\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"create_image\00", [19 x i8] zeroinitializer }, align 32
@create_image._entry_ptr = internal global ptr @create_image._entry, section ".printk_index", align 4
@create_image._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013PM: hibernation: Some system devices failed to power down, aborting\0A\00", [57 x i8] zeroinitializer }, align 32
@create_image._entry_ptr.18 = internal global ptr @create_image._entry.16, section ".printk_index", align 4
@create_image.___tp_str = internal global ptr @.str.19, section "__tracepoint_str", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"machine_suspend\00", [16 x i8] zeroinitializer }, align 32
@create_image.___tp_str.20 = internal global ptr @.str.19, section "__tracepoint_str", align 4
@create_image._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013PM: hibernation: Error %d creating image\0A\00", [52 x i8] zeroinitializer }, align 32
@create_image._entry_ptr.23 = internal global ptr @create_image._entry.21, section ".printk_index", align 4
@events_check_enabled = external dso_local local_unnamed_addr global i8, align 1
@__tracepoint_suspend_resume = external dso_local global %struct.tracepoint, align 4
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/power.h\00", [35 x i8] zeroinitializer }, align 32
@trace_suspend_resume.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@resume_target_kernel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013PM: hibernation: Some devices failed to power down, aborting resume\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"resume_target_kernel\00", [43 x i8] zeroinitializer }, align 32
@resume_target_kernel._entry_ptr = internal global ptr @resume_target_kernel._entry, section ".printk_index", align 4
@power_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str, i32 654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013PM: hibernation: Swap will be unusable! Try swapon -a.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power_down\00", [21 x i8] zeroinitializer }, align 32
@power_down._entry_ptr = internal global ptr @power_down._entry, section ".printk_index", align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@power_down._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\012PM: hibernation: Power down manually\0A\00", [56 x i8] zeroinitializer }, align 32
@power_down._entry_ptr.33 = internal global ptr @power_down._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Loading hibernation image.\0A\00", [36 x i8] zeroinitializer }, align 32
@load_image_and_restore._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013PM: hibernation: Failed to load image, recovering.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"load_image_and_restore\00", [41 x i8] zeroinitializer }, align 32
@load_image_and_restore._entry_ptr = internal global ptr @load_image_and_restore._entry, section ".printk_index", align 4
@noresume = internal global { i1, [31 x i8] } zeroinitializer, align 32
@system_transition_mutex = external dso_local global %struct.mutex, align 4
@resume_file = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Checking hibernation image partition %s\0A\00", [55 x i8] zeroinitializer }, align 32
@resume_delay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@software_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016PM: hibernation: Waiting %dsec before reading resume device ...\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"software_resume\00", [16 x i8] zeroinitializer }, align 32
@software_resume._entry_ptr = internal global ptr @software_resume._entry, section ".printk_index", align 4
@resume_wait = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Hibernation image partition %d:%d present\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Looking for hibernation image.\0A\00", [32 x i8] zeroinitializer }, align 32
@software_resume._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.39, ptr @.str, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016PM: hibernation: resume from hibernation\0A\00", [52 x i8] zeroinitializer }, align 32
@software_resume._entry_ptr.44 = internal global ptr @software_resume._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Preparing processes for hibernation restore.\0A\00", [50 x i8] zeroinitializer }, align 32
@software_resume._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016PM: hibernation: resume failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@software_resume._entry_ptr.48 = internal global ptr @software_resume._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Hibernation image not present or could not be loaded.\0A\00", [41 x i8] zeroinitializer }, align 32
@power_kobj = external dso_local local_unnamed_addr global ptr, align 4
@attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @g, ptr null }, [44 x i8] zeroinitializer }, align 32
@g = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @disk_attr, ptr @resume_offset_attr, ptr @resume_attr, ptr @image_size_attr, ptr @reserved_size_attr, ptr null], [40 x i8] zeroinitializer }, align 32
@disk_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @disk_show, ptr @disk_store }, [36 x i8] zeroinitializer }, align 32
@resume_offset_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @resume_offset_show, ptr @resume_offset_store }, [36 x i8] zeroinitializer }, align 32
@resume_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @resume_show, ptr @resume_store }, [36 x i8] zeroinitializer }, align 32
@image_size_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @image_size_show, ptr @image_size_store }, [36 x i8] zeroinitializer }, align 32
@reserved_size_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @reserved_size_show, ptr @reserved_size_store }, [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"disk\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"[disabled]\0A\00", [20 x i8] zeroinitializer }, align 32
@hibernation_modes = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr null, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s] \00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"platform\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reboot\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test_resume\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Hibernation mode set to '%s'\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"resume_offset\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resume\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d:%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Configured hibernation resume from disk to %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"image_size\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@image_size = external dso_local local_unnamed_addr global i32, align 4
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%lu\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reserved_size\00", [18 x i8] zeroinitializer }, align 32
@reserved_size = external dso_local local_unnamed_addr global i32, align 4
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"noresume\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nocompress\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"protect_image\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 7, i64 8, i64 11]
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"hibernate_atomic\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 71, i32 17 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"nohibernate\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 99, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"hibernation_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 69, i32 47 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"hibernation_mode\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 65, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant [30 x i8] c"entering_platform_hibernation\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 270, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"freezer_test_done\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 67, i32 6 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 718, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 729, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [11 x i8] c"nocompress\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 761, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 773, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 781, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 797, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [21 x i8] c"swsusp_resume_device\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 46, i32 7 }
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"swsusp_resume_block\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 47, i32 10 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 124, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 295, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 313, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 322, i32 23 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 328, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [32 x i8] c"../include/trace/events/power.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 226, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 108, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 461, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 654, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 678, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 688, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 700, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [9 x i8] c"noresume\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [12 x i8] c"resume_file\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 45, i32 13 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 944, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [13 x i8] c"resume_delay\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 44, i32 21 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 947, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [12 x i8] c"resume_wait\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 975, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 978, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 990, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 996, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1013, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1018, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [11 x i8] c"attr_group\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1263, i32 37 }
@___asan_gen_.261 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1253, i32 26 }
@___asan_gen_.264 = private unnamed_addr constant [10 x i8] c"disk_attr\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [19 x i8] c"resume_offset_attr\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [12 x i8] c"resume_attr\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [16 x i8] c"image_size_attr\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [19 x i8] c"reserved_size_attr\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1148, i32 1 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1071, i32 23 }
@___asan_gen_.285 = private unnamed_addr constant [18 x i8] c"hibernation_modes\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1028, i32 27 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1091, i32 24 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1093, i32 24 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1029, i32 27 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1030, i32 27 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1031, i32 25 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1033, i32 26 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1035, i32 30 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1142, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1208, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1190, i32 22 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1185, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1153, i32 22 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1178, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1229, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1213, i32 22 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1221, i32 18 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1251, i32 1 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1292, i32 18 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1300, i32 20 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1302, i32 27 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1304, i32 27 }
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.352 = private constant [28 x i8] c"../kernel/power/hibernate.c\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1308, i32 23 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__initcall__kmod_hibernate__355_1025_software_resume7s, ptr @__initcall__kmod_hibernate__356_1273_pm_disk_init1, ptr @__ksymtab_hibernate_quiet_exec, ptr @__ksymtab_hibernation_set_ops, ptr @__ksymtab_system_entering_hibernation, ptr @__setup_hibernate_setup, ptr @__setup_nohibernate_setup, ptr @__setup_noresume_setup, ptr @__setup_resume_offset_setup, ptr @__setup_resume_setup, ptr @__setup_resumedelay_setup, ptr @__setup_resumewait_setup, ptr @create_image.___tp_str, ptr @create_image.___tp_str.20, ptr @create_image._entry, ptr @create_image._entry.16, ptr @create_image._entry.21, ptr @create_image._entry_ptr, ptr @create_image._entry_ptr.18, ptr @create_image._entry_ptr.23, ptr @hibernate._entry, ptr @hibernate._entry.9, ptr @hibernate._entry_ptr, ptr @hibernate._entry_ptr.11, ptr @hibernation_debug_sleep._entry, ptr @hibernation_debug_sleep._entry_ptr, ptr @load_image_and_restore._entry, ptr @load_image_and_restore._entry_ptr, ptr @power_down._entry, ptr @power_down._entry.31, ptr @power_down._entry_ptr, ptr @power_down._entry_ptr.33, ptr @resume_target_kernel._entry, ptr @resume_target_kernel._entry_ptr, ptr @software_resume._entry, ptr @software_resume._entry.42, ptr @software_resume._entry.46, ptr @software_resume._entry_ptr, ptr @software_resume._entry_ptr.44, ptr @software_resume._entry_ptr.48, ptr @swsusp_show_speed._entry, ptr @swsusp_show_speed._entry_ptr, ptr @hibernate_atomic, ptr @nohibernate, ptr @.str, ptr @hibernation_ops, ptr @hibernation_mode, ptr @entering_platform_hibernation, ptr @.str.1, ptr @.str.2, ptr @freezer_test_done, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nocompress, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @swsusp_resume_device, ptr @swsusp_resume_block, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @noresume, ptr @resume_file, ptr @.str.37, ptr @resume_delay, ptr @.str.38, ptr @.str.39, ptr @resume_wait, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @attr_group, ptr @g, ptr @disk_attr, ptr @resume_offset_attr, ptr @resume_attr, ptr @image_size_attr, ptr @reserved_size_attr, ptr @.str.50, ptr @.str.51, ptr @hibernation_modes, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hibernate_atomic to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nohibernate to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hibernation_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hibernation_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @entering_platform_hibernation to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swsusp_show_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freezer_test_done to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hibernate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nocompress to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hibernate._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swsusp_resume_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swsusp_resume_block to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hibernation_debug_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_image._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_image._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resume_target_kernel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_down._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_and_restore._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noresume to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resume_file to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resume_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @software_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resume_wait to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @software_resume._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @software_resume._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resume_offset_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resume_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @image_size_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserved_size_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hibernation_modes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @hibernate_acquire() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @hibernate_atomic, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !229
  tail call void @llvm.prefetch.p0(ptr nonnull @hibernate_atomic, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hibernate_atomic, ptr nonnull @hibernate_atomic, i32 0, i32 -1, ptr nonnull elementtype(i32) @hibernate_atomic) #17, !srcloc !230
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !231
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i = icmp ne i32 %asmresult.i.i.i, 0
  ret i1 %cmp.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hibernate_release() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @hibernate_atomic, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr nonnull @hibernate_atomic, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hibernate_atomic, ptr nonnull @hibernate_atomic, i32 1, ptr nonnull elementtype(i32) @hibernate_atomic) #17, !srcloc !232
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @hibernation_available() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @nohibernate, align 4
  br i1 %.b, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @security_locked_down(i32 noundef 5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry.land.end_crit_edge
  %0 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool.not, %land.lhs.true ]
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hibernation_set_ops(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ops, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %end = getelementptr inbounds %struct.platform_hibernation_ops, ptr %ops, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true2.do.end_crit_edge, label %land.lhs.true4

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %pre_snapshot = getelementptr inbounds %struct.platform_hibernation_ops, ptr %ops, i32 0, i32 2
  %4 = ptrtoint ptr %pre_snapshot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pre_snapshot, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %land.lhs.true4.do.end_crit_edge, label %land.lhs.true6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %prepare = getelementptr inbounds %struct.platform_hibernation_ops, ptr %ops, i32 0, i32 4
  %6 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prepare, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true6.do.end_crit_edge, label %land.lhs.true8

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %finish = getelementptr inbounds %struct.platform_hibernation_ops, ptr %ops, i32 0, i32 3
  %8 = ptrtoint ptr %finish to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %finish, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %land.lhs.true8.do.end_crit_edge, label %land.lhs.true10

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %enter = getelementptr inbounds %struct.platform_hibernation_ops, ptr %ops, i32 0, i32 5
  %10 = ptrtoint ptr %enter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enter, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %land.lhs.true10.do.end_crit_edge, label %land.lhs.true12

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %pre_restore = getelementptr inbounds %struct.platform_hibernation_ops, ptr %ops, i32 0, i32 7
  %12 = ptrtoint ptr %pre_restore to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pre_restore, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %land.lhs.true12.do.end_crit_edge, label %land.lhs.true14

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %restore_cleanup = getelementptr inbounds %struct.platform_hibernation_ops, ptr %ops, i32 0, i32 8
  %14 = ptrtoint ptr %restore_cleanup to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %restore_cleanup, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %land.lhs.true14.do.end_crit_edge, label %land.lhs.true16

land.lhs.true14.do.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %leave = getelementptr inbounds %struct.platform_hibernation_ops, ptr %ops, i32 0, i32 6
  %16 = ptrtoint ptr %leave to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %leave, align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %land.lhs.true16.do.end_crit_edge, label %if.then36

land.lhs.true16.do.end_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %land.lhs.true16.do.end_crit_edge, %land.lhs.true14.do.end_crit_edge, %land.lhs.true12.do.end_crit_edge, %land.lhs.true10.do.end_crit_edge, %land.lhs.true8.do.end_crit_edge, %land.lhs.true6.do.end_crit_edge, %land.lhs.true4.do.end_crit_edge, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 99, i32 noundef 9, ptr noundef null) #17
  br label %return

if.then36:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_system_sleep() #17
  store ptr %ops, ptr @hibernation_ops, align 4
  br label %if.end39.sink.split

if.else:                                          ; preds = %entry
  tail call void @lock_system_sleep() #17
  store ptr null, ptr @hibernation_ops, align 4
  %18 = load i32, ptr @hibernation_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp eq i32 %18, 1
  br i1 %cmp, label %if.else.if.end39.sink.split_crit_edge, label %if.else.if.end39_crit_edge

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

if.else.if.end39.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39.sink.split

if.end39.sink.split:                              ; preds = %if.else.if.end39.sink.split_crit_edge, %if.then36
  %.sink = phi i32 [ 1, %if.then36 ], [ 2, %if.else.if.end39.sink.split_crit_edge ]
  store i32 %.sink, ptr @hibernation_mode, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %if.else.if.end39_crit_edge
  tail call void @unlock_system_sleep() #17
  br label %return

return:                                           ; preds = %if.end39, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_system_sleep() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_system_sleep() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @system_entering_hibernation() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @entering_platform_hibernation, align 1
  ret i1 %.b1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @swsusp_show_speed(i64 noundef %start, i64 noundef %stop, i32 noundef %nr_pages, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i64 %stop, %start
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i = icmp slt i64 %sub, 0
  %0 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #17
  %1 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %0) #20, !srcloc !233
  %2 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %0, i64 %1, i32 0) #20, !srcloc !234
  %asmresult10.i.i = extractvalue { i64, i32 } %2, 0
  %div1811.i = lshr i64 %asmresult10.i.i, 23
  %sub210.i = sub nsw i64 0, %div1811.i
  %cond213.i = select i1 %cmp8.i, i64 %sub210.i, i64 %div1811.i
  %conv = trunc i64 %cond213.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp = icmp eq i32 %conv, 0
  %spec.store.select = select i1 %cmp, i32 1, i32 %conv
  %mul = shl i32 %nr_pages, 2
  %mul2 = mul i32 %nr_pages, 400
  %div = udiv i32 %mul2, %spec.store.select
  %spec.store.select.frozen = freeze i32 %spec.store.select
  %div3 = udiv i32 %spec.store.select.frozen, 100
  %3 = mul i32 %div3, 100
  %rem.decomposed = sub i32 %spec.store.select.frozen, %3
  %div.frozen = freeze i32 %div
  %div4 = udiv i32 %div.frozen, 1000
  %4 = mul i32 %div4, 1000
  %rem5.decomposed = sub i32 %div.frozen, %4
  %div6.lhs.trunc = trunc i32 %rem5.decomposed to i16
  %div613 = udiv i16 %div6.lhs.trunc, 10
  %div6.zext = zext i16 %div613 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %msg, i32 noundef %mul, i32 noundef %div3, i32 noundef %rem.decomposed, i32 noundef %div4, i32 noundef %div6.zext) #21
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @arch_resume_nosmt() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hibernation_snapshot(i32 noundef %platform_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_suspend_global_flags to i32))
  store i32 0, ptr @pm_suspend_global_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %platform_mode)
  %tobool.not.i = icmp eq i32 %platform_mode, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %0 = load ptr, ptr @hibernation_ops, align 4
  %tobool1.not.i = icmp eq ptr %0, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %platform_begin.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

platform_begin.exit:                              ; preds = %land.lhs.true.i
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call.i = tail call i32 %2([1 x i32] [i32 1]) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %platform_begin.exit.if.end_crit_edge, label %platform_begin.exit.land.lhs.true.i77_crit_edge

platform_begin.exit.land.lhs.true.i77_crit_edge:  ; preds = %platform_begin.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i77

platform_begin.exit.if.end_crit_edge:             ; preds = %platform_begin.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %platform_begin.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @hibernate_preallocate_memory() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.Close_crit_edge

if.end.Close_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %Close

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @freeze_kernel_threads() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.Cleanup_crit_edge

if.end4.Cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %Cleanup

if.end8:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_test_level to i32))
  %3 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp.i = icmp eq i32 %3, 5
  br i1 %cmp.i, label %if.then.i, label %if.end12

if.then.i:                                        ; preds = %if.end8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #21
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i
  %__ms.01.i.i = phi i32 [ 5000, %if.then.i ], [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %__ms.01.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #17
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %if.then11, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

if.then11:                                        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i8 1, ptr @freezer_test_done, align 1
  br label %Thaw

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @dpm_prepare([1 x i32] [i32 1]) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end19, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dpm_complete([1 x i32] [i32 128]) #17
  br label %Thaw

if.end19:                                         ; preds = %if.end12
  tail call void @suspend_console() #17
  tail call void @pm_restrict_gfp_mask() #17
  %call23 = tail call i32 @dpm_suspend([1 x i32] [i32 1]) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %lor.lhs.false, label %if.end19.if.then27_crit_edge

if.end19.if.then27_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end19
  %call25 = tail call fastcc i32 @hibernation_test(i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.else, label %lor.lhs.false.if.then27_crit_edge

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end19.if.then27_crit_edge
  br i1 %tobool.not.i, label %if.then27.if.end29_crit_edge, label %land.lhs.true.i73

if.then27.if.end29_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.lhs.true.i73:                                ; preds = %if.then27
  %5 = load ptr, ptr @hibernation_ops, align 4
  %tobool1.not.i72 = icmp eq ptr %5, null
  br i1 %tobool1.not.i72, label %land.lhs.true.i73.if.end29_crit_edge, label %land.lhs.true2.i

land.lhs.true.i73.if.end29_crit_edge:             ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i73
  %recover.i = getelementptr inbounds %struct.platform_hibernation_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %recover.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %recover.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.end29_crit_edge, label %if.then.i74

land.lhs.true2.i.if.end29_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then.i74:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %7() #17
  br label %if.end29

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %call28 = tail call fastcc i32 @create_image(i32 noundef %platform_mode)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then.i74, %land.lhs.true2.i.if.end29_crit_edge, %land.lhs.true.i73.if.end29_crit_edge, %if.then27.if.end29_crit_edge
  %error.0 = phi i32 [ %call28, %if.else ], [ %call23, %if.then27.if.end29_crit_edge ], [ %call23, %land.lhs.true.i73.if.end29_crit_edge ], [ %call23, %land.lhs.true2.i.if.end29_crit_edge ], [ %call23, %if.then.i74 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool30.not = icmp eq i32 %error.0, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %if.end29.if.then33_crit_edge

if.end29.if.then33_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then33

lor.lhs.false31:                                  ; preds = %if.end29
  %8 = load i32, ptr @in_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool32.not = icmp eq i32 %8, 0
  br i1 %tobool32.not, label %lor.lhs.false31.if.then33_crit_edge, label %lor.lhs.false31.if.end34_crit_edge

lor.lhs.false31.if.end34_crit_edge:               ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

lor.lhs.false31.if.then33_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then33

if.then33:                                        ; preds = %lor.lhs.false31.if.then33_crit_edge, %if.end29.if.then33_crit_edge
  tail call void @swsusp_free() #17
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %lor.lhs.false31.if.end34_crit_edge
  %9 = load i32, ptr @in_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool35.not = icmp eq i32 %9, 0
  %. = select i1 %tobool30.not, i32 32, i32 128
  %msg.sroa.0.0 = select i1 %tobool35.not, i32 64, i32 %.
  %.fca.0.insert63 = insertvalue [1 x i32] poison, i32 %msg.sroa.0.0, 0
  tail call void @dpm_resume([1 x i32] %.fca.0.insert63) #17
  br i1 %tobool30.not, label %lor.lhs.false48, label %if.end34.if.then50_crit_edge

if.end34.if.then50_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then50

lor.lhs.false48:                                  ; preds = %if.end34
  %10 = load i32, ptr @in_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool49.not = icmp eq i32 %10, 0
  br i1 %tobool49.not, label %lor.lhs.false48.if.then50_crit_edge, label %lor.lhs.false48.if.end51_crit_edge

lor.lhs.false48.if.end51_crit_edge:               ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51

lor.lhs.false48.if.then50_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then50

if.then50:                                        ; preds = %lor.lhs.false48.if.then50_crit_edge, %if.end34.if.then50_crit_edge
  tail call void @pm_restore_gfp_mask() #17
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %lor.lhs.false48.if.end51_crit_edge
  tail call void @resume_console() #17
  tail call void @dpm_complete([1 x i32] %.fca.0.insert63) #17
  br label %Close

Close:                                            ; preds = %Cleanup, %if.end51, %if.end.Close_crit_edge
  %error.1 = phi i32 [ %call1, %if.end.Close_crit_edge ], [ %error.3, %Cleanup ], [ %error.0, %if.end51 ]
  br i1 %tobool.not.i, label %Close.platform_end.exit_crit_edge, label %Close.land.lhs.true.i77_crit_edge

Close.land.lhs.true.i77_crit_edge:                ; preds = %Close
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i77

Close.platform_end.exit_crit_edge:                ; preds = %Close
  call void @__sanitizer_cov_trace_pc() #19
  br label %platform_end.exit

land.lhs.true.i77:                                ; preds = %Close.land.lhs.true.i77_crit_edge, %platform_begin.exit.land.lhs.true.i77_crit_edge
  %error.184 = phi i32 [ %error.1, %Close.land.lhs.true.i77_crit_edge ], [ %call.i, %platform_begin.exit.land.lhs.true.i77_crit_edge ]
  %11 = load ptr, ptr @hibernation_ops, align 4
  %tobool1.not.i76 = icmp eq ptr %11, null
  br i1 %tobool1.not.i76, label %land.lhs.true.i77.platform_end.exit_crit_edge, label %if.then.i78

land.lhs.true.i77.platform_end.exit_crit_edge:    ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #19
  br label %platform_end.exit

if.then.i78:                                      ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #19
  %end.i = getelementptr inbounds %struct.platform_hibernation_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  tail call void %13() #17
  br label %platform_end.exit

platform_end.exit:                                ; preds = %if.then.i78, %land.lhs.true.i77.platform_end.exit_crit_edge, %Close.platform_end.exit_crit_edge
  %error.185 = phi i32 [ %error.1, %Close.platform_end.exit_crit_edge ], [ %error.184, %land.lhs.true.i77.platform_end.exit_crit_edge ], [ %error.184, %if.then.i78 ]
  ret i32 %error.185

Thaw:                                             ; preds = %if.then15, %if.then11
  %error.2 = phi i32 [ 0, %if.then11 ], [ %call13, %if.then15 ]
  tail call void @thaw_kernel_threads() #17
  br label %Cleanup

Cleanup:                                          ; preds = %Thaw, %if.end4.Cleanup_crit_edge
  %error.3 = phi i32 [ %call5, %if.end4.Cleanup_crit_edge ], [ %error.2, %Thaw ]
  tail call void @swsusp_free() #17
  br label %Close
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hibernate_preallocate_memory() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_kernel_threads() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hibernation_test(i32 noundef %level) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_test_level to i32))
  %0 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %level)
  %cmp = icmp eq i32 %0, %level
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #21
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then
  %__ms.01.i = phi i32 [ 5000, %if.then ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.01.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #17
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.return_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.body.i.return_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

return:                                           ; preds = %while.body.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %while.body.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpm_prepare([1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpm_complete([1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_console() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_restrict_gfp_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpm_suspend([1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_image(i32 noundef %platform_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dpm_suspend_end([1 x i32] [i32 1]) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %platform_mode)
  %tobool.not.i = icmp eq i32 %platform_mode, 0
  br i1 %tobool.not.i, label %if.end.lor.lhs.false_crit_edge, label %land.lhs.true.i

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

land.lhs.true.i:                                  ; preds = %if.end
  %0 = load ptr, ptr @hibernation_ops, align 4
  %tobool1.not.i = icmp eq ptr %0, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.lor.lhs.false_crit_edge, label %platform_pre_snapshot.exit

land.lhs.true.i.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

platform_pre_snapshot.exit:                       ; preds = %land.lhs.true.i
  %pre_snapshot.i = getelementptr inbounds %struct.platform_hibernation_ops, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %pre_snapshot.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pre_snapshot.i, align 4
  %call.i = tail call i32 %2() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %platform_pre_snapshot.exit.lor.lhs.false_crit_edge, label %platform_pre_snapshot.exit.land.lhs.true.i95_crit_edge

platform_pre_snapshot.exit.land.lhs.true.i95_crit_edge: ; preds = %platform_pre_snapshot.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i95

platform_pre_snapshot.exit.lor.lhs.false_crit_edge: ; preds = %platform_pre_snapshot.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %platform_pre_snapshot.exit.lor.lhs.false_crit_edge, %land.lhs.true.i.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_test_level to i32))
  %3 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp eq i32 %3, 3
  br i1 %cmp.i, label %if.then.i, label %if.end7

if.then.i:                                        ; preds = %lor.lhs.false
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #21
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i
  %__ms.01.i.i = phi i32 [ 5000, %if.then.i ], [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %__ms.01.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #17
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.Platform_finish_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

while.body.i.i.Platform_finish_crit_edge:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %Platform_finish

if.end7:                                          ; preds = %lor.lhs.false
  tail call void @cpuidle_pause() #17
  %call.i.i79 = tail call i32 @freeze_secondary_cpus(i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79)
  %tobool9.not = icmp eq i32 %call.i.i79, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %if.end7.Enable_cpus_crit_edge

if.end7.Enable_cpus_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %Enable_cpus

lor.lhs.false10:                                  ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_test_level to i32))
  %5 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i80 = icmp eq i32 %5, 2
  br i1 %cmp.i80, label %if.then.i82, label %do.body15

if.then.i82:                                      ; preds = %lor.lhs.false10
  %call.i.i81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #21
  br label %while.body.i.i86

while.body.i.i86:                                 ; preds = %while.body.i.i86.while.body.i.i86_crit_edge, %if.then.i82
  %__ms.01.i.i83 = phi i32 [ 5000, %if.then.i82 ], [ %dec.i.i84, %while.body.i.i86.while.body.i.i86_crit_edge ]
  %dec.i.i84 = add nsw i32 %__ms.01.i.i83, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #17
  %tobool.not.i.i85 = icmp eq i32 %dec.i.i84, 0
  br i1 %tobool.not.i.i85, label %while.body.i.i86.Enable_cpus_crit_edge, label %while.body.i.i86.while.body.i.i86_crit_edge

while.body.i.i86.while.body.i.i86_crit_edge:      ; preds = %while.body.i.i86
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i86

while.body.i.i86.Enable_cpus_crit_edge:           ; preds = %while.body.i.i86
  call void @__sanitizer_cov_trace_pc() #19
  br label %Enable_cpus

do.body15:                                        ; preds = %lor.lhs.false10
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !235
  %and.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool17.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #17, !srcloc !236
  br i1 %tobool17.not, label %if.then19, label %do.body15.if.end20_crit_edge

do.body15.if.end20_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then19:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @trace_hardirqs_off() #17
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %do.body15.if.end20_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_state to i32))
  store i32 7, ptr @system_state, align 4
  %call23 = tail call i32 @syscore_suspend() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end31, label %do.end28

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #21
  br label %Enable_irqs

if.end31:                                         ; preds = %if.end20
  %call32 = tail call fastcc i32 @hibernation_test(i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %if.end31.Power_up_crit_edge

if.end31.Power_up_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %Power_up

lor.lhs.false34:                                  ; preds = %if.end31
  %call35 = tail call zeroext i1 @pm_wakeup_pending() #17
  br i1 %call35, label %lor.lhs.false34.Power_up_crit_edge, label %if.end37

lor.lhs.false34.Power_up_crit_edge:               ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #19
  br label %Power_up

if.end37:                                         ; preds = %lor.lhs.false34
  store i32 1, ptr @in_suspend, align 4
  tail call void @save_processor_state() #17
  %8 = load ptr, ptr @create_image.___tp_str, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %8, i1 noundef zeroext true)
  %call39 = tail call i32 @swsusp_arch_suspend() #17
  tail call void @restore_processor_state() #17
  %9 = load ptr, ptr @create_image.___tp_str.20, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %9, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool41.not = icmp eq i32 %call39, 0
  br i1 %tobool41.not, label %if.end37.if.end48_crit_edge, label %do.end45

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call39) #21
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %if.end37.if.end48_crit_edge
  %10 = load i32, ptr @in_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool49.not = icmp eq i32 %10, 0
  br i1 %tobool49.not, label %if.then50, label %if.end48.if.end51_crit_edge

if.end48.if.end51_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @events_check_enabled to i32))
  store i8 0, ptr @events_check_enabled, align 1
  tail call void @clear_or_poison_free_pages() #17
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end48.if.end51_crit_edge
  br i1 %tobool.not.i, label %if.end51.Power_up_crit_edge, label %land.lhs.true.i91

if.end51.Power_up_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %Power_up

land.lhs.true.i91:                                ; preds = %if.end51
  %11 = load ptr, ptr @hibernation_ops, align 4
  %tobool1.not.i90 = icmp eq ptr %11, null
  br i1 %tobool1.not.i90, label %land.lhs.true.i91.Power_up_crit_edge, label %if.then.i92

land.lhs.true.i91.Power_up_crit_edge:             ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #19
  br label %Power_up

if.then.i92:                                      ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #19
  %leave.i = getelementptr inbounds %struct.platform_hibernation_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %leave.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %leave.i, align 4
  tail call void %13() #17
  br label %Power_up

Power_up:                                         ; preds = %if.then.i92, %land.lhs.true.i91.Power_up_crit_edge, %if.end51.Power_up_crit_edge, %lor.lhs.false34.Power_up_crit_edge, %if.end31.Power_up_crit_edge
  %error.0 = phi i32 [ 0, %if.end31.Power_up_crit_edge ], [ 0, %lor.lhs.false34.Power_up_crit_edge ], [ %call39, %if.end51.Power_up_crit_edge ], [ %call39, %land.lhs.true.i91.Power_up_crit_edge ], [ %call39, %if.then.i92 ]
  tail call void @syscore_resume() #17
  br label %Enable_irqs

Enable_irqs:                                      ; preds = %Power_up, %do.end28
  %error.1 = phi i32 [ %call23, %do.end28 ], [ %error.0, %Power_up ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_state to i32))
  store i32 3, ptr @system_state, align 4
  tail call void @trace_hardirqs_on() #17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !237
  br label %Enable_cpus

Enable_cpus:                                      ; preds = %Enable_irqs, %while.body.i.i86.Enable_cpus_crit_edge, %if.end7.Enable_cpus_crit_edge
  %error.2 = phi i32 [ %call.i.i79, %if.end7.Enable_cpus_crit_edge ], [ %error.1, %Enable_irqs ], [ 0, %while.body.i.i86.Enable_cpus_crit_edge ]
  tail call void @thaw_secondary_cpus() #17
  tail call void @cpuidle_resume() #17
  %14 = load i32, ptr @in_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool55.not = icmp eq i32 %14, 0
  br i1 %tobool55.not, label %if.then56, label %Enable_cpus.Platform_finish_crit_edge

Enable_cpus.Platform_finish_crit_edge:            ; preds = %Enable_cpus
  call void @__sanitizer_cov_trace_pc() #19
  br label %Platform_finish

if.then56:                                        ; preds = %Enable_cpus
  call void @__sanitizer_cov_trace_pc() #19
  %call57 = tail call i32 @arch_resume_nosmt()
  br label %Platform_finish

Platform_finish:                                  ; preds = %if.then56, %Enable_cpus.Platform_finish_crit_edge, %while.body.i.i.Platform_finish_crit_edge
  %error.3 = phi i32 [ %error.2, %Enable_cpus.Platform_finish_crit_edge ], [ %call57, %if.then56 ], [ 0, %while.body.i.i.Platform_finish_crit_edge ]
  br i1 %tobool.not.i, label %Platform_finish.platform_finish.exit_crit_edge, label %Platform_finish.land.lhs.true.i95_crit_edge

Platform_finish.land.lhs.true.i95_crit_edge:      ; preds = %Platform_finish
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i95

Platform_finish.platform_finish.exit_crit_edge:   ; preds = %Platform_finish
  call void @__sanitizer_cov_trace_pc() #19
  br label %platform_finish.exit

land.lhs.true.i95:                                ; preds = %Platform_finish.land.lhs.true.i95_crit_edge, %platform_pre_snapshot.exit.land.lhs.true.i95_crit_edge
  %error.3104 = phi i32 [ %error.3, %Platform_finish.land.lhs.true.i95_crit_edge ], [ %call.i, %platform_pre_snapshot.exit.land.lhs.true.i95_crit_edge ]
  %15 = load ptr, ptr @hibernation_ops, align 4
  %tobool1.not.i94 = icmp eq ptr %15, null
  br i1 %tobool1.not.i94, label %land.lhs.true.i95.platform_finish.exit_crit_edge, label %if.then.i96

land.lhs.true.i95.platform_finish.exit_crit_edge: ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #19
  br label %platform_finish.exit

if.then.i96:                                      ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #19
  %finish.i = getelementptr inbounds %struct.platform_hibernation_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %finish.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %finish.i, align 4
  tail call void %17() #17
  br label %platform_finish.exit

platform_finish.exit:                             ; preds = %if.then.i96, %land.lhs.true.i95.platform_finish.exit_crit_edge, %Platform_finish.platform_finish.exit_crit_edge
  %error.3105 = phi i32 [ %error.3, %Platform_finish.platform_finish.exit_crit_edge ], [ %error.3104, %land.lhs.true.i95.platform_finish.exit_crit_edge ], [ %error.3104, %if.then.i96 ]
  %18 = load i32, ptr @in_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool59.not = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.3105)
  %tobool60.not = icmp eq i32 %error.3105, 0
  %. = select i1 %tobool60.not, i32 32, i32 128
  %agg.tmp.sroa.0.0 = select i1 %tobool59.not, i32 64, i32 %.
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0, 0
  tail call void @dpm_resume_start([1 x i32] %.fca.0.insert) #17
  br label %cleanup

cleanup:                                          ; preds = %platform_finish.exit, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %error.3105, %platform_finish.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @swsusp_free() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpm_resume([1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_restore_gfp_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @resume_console() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thaw_kernel_threads() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @hibernate_resume_nonboot_cpu_disable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @freeze_secondary_cpus(i32 noundef 0) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hibernation_restore(i32 noundef %platform_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pm_prepare_console() #17
  tail call void @suspend_console() #17
  tail call void @pm_restrict_gfp_mask() #17
  %call = tail call i32 @dpm_suspend_start([1 x i32] [i32 8]) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %platform_mode)
  %tobool1.not = icmp eq i32 %platform_mode, 0
  %call.i = tail call i32 @dpm_suspend_end([1 x i32] [i32 8]) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #21
  br label %if.end14

if.end.i:                                         ; preds = %if.then
  br i1 %tobool1.not, label %if.end.i.if.end6.i_crit_edge, label %land.lhs.true.i.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %0 = load ptr, ptr @hibernation_ops, align 4
  %tobool1.not.i.i = icmp eq ptr %0, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end6.i_crit_edge, label %platform_pre_restore.exit.i

land.lhs.true.i.i.if.end6.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

platform_pre_restore.exit.i:                      ; preds = %land.lhs.true.i.i
  %pre_restore.i.i = getelementptr inbounds %struct.platform_hibernation_ops, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %pre_restore.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pre_restore.i.i, align 4
  %call.i.i = tail call i32 %2() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %platform_pre_restore.exit.i.if.end6.i_crit_edge, label %platform_pre_restore.exit.i.land.lhs.true.i64.i_crit_edge

platform_pre_restore.exit.i.land.lhs.true.i64.i_crit_edge: ; preds = %platform_pre_restore.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i64.i

platform_pre_restore.exit.i.if.end6.i_crit_edge:  ; preds = %platform_pre_restore.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

if.end6.i:                                        ; preds = %platform_pre_restore.exit.i.if.end6.i_crit_edge, %land.lhs.true.i.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  tail call void @cpuidle_pause() #17
  %call7.i = tail call i32 @hibernate_resume_nonboot_cpu_disable() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %do.body11.i, label %if.end6.i.Cleanup.i_crit_edge

if.end6.i.Cleanup.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %Cleanup.i

do.body11.i:                                      ; preds = %if.end6.i
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !235
  %and.i.i.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool13.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #17, !srcloc !236
  br i1 %tobool13.not.i, label %if.then16.i, label %do.body11.i.if.end17.i_crit_edge

do.body11.i.if.end17.i_crit_edge:                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17.i

if.then16.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @trace_hardirqs_off() #17
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %do.body11.i.if.end17.i_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_state to i32))
  store i32 7, ptr @system_state, align 4
  %call20.i = tail call i32 @syscore_suspend() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end17.i.Enable_irqs.i_crit_edge

if.end17.i.Enable_irqs.i_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %Enable_irqs.i

if.end23.i:                                       ; preds = %if.end17.i
  tail call void @save_processor_state() #17
  %call24.i = tail call i32 @restore_highmem() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end23.i.if.end44.i_crit_edge

if.end23.i.if.end44.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44.i

if.then26.i:                                      ; preds = %if.end23.i
  %call27.i = tail call i32 @swsusp_arch_resume() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool29.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool29.not.i, label %do.body34.i, label %do.end42.i, !prof !238

do.body34.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/hibernate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 491, 0\0A.popsection", ""() #17, !srcloc !239
  unreachable

do.end42.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #19
  %call43.i = tail call i32 @restore_highmem() #17
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end42.i, %if.end23.i.if.end44.i_crit_edge
  %error.0.i = phi i32 [ %call24.i, %if.end23.i.if.end44.i_crit_edge ], [ %call27.i, %do.end42.i ]
  tail call void @swsusp_free() #17
  tail call void @restore_processor_state() #17
  tail call void @touch_softlockup_watchdog() #17
  tail call void @syscore_resume() #17
  br label %Enable_irqs.i

Enable_irqs.i:                                    ; preds = %if.end44.i, %if.end17.i.Enable_irqs.i_crit_edge
  %error.1.i = phi i32 [ %call20.i, %if.end17.i.Enable_irqs.i_crit_edge ], [ %error.0.i, %if.end44.i ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_state to i32))
  store i32 3, ptr @system_state, align 4
  tail call void @trace_hardirqs_on() #17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !237
  br label %Cleanup.i

Cleanup.i:                                        ; preds = %Enable_irqs.i, %if.end6.i.Cleanup.i_crit_edge
  %error.2.i = phi i32 [ %call7.i, %if.end6.i.Cleanup.i_crit_edge ], [ %error.1.i, %Enable_irqs.i ]
  tail call void @thaw_secondary_cpus() #17
  tail call void @cpuidle_resume() #17
  br i1 %tobool1.not, label %Cleanup.i.platform_restore_cleanup.exit.i_crit_edge, label %Cleanup.i.land.lhs.true.i64.i_crit_edge

Cleanup.i.land.lhs.true.i64.i_crit_edge:          ; preds = %Cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i64.i

Cleanup.i.platform_restore_cleanup.exit.i_crit_edge: ; preds = %Cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %platform_restore_cleanup.exit.i

land.lhs.true.i64.i:                              ; preds = %Cleanup.i.land.lhs.true.i64.i_crit_edge, %platform_pre_restore.exit.i.land.lhs.true.i64.i_crit_edge
  %error.368.i = phi i32 [ %error.2.i, %Cleanup.i.land.lhs.true.i64.i_crit_edge ], [ %call.i.i, %platform_pre_restore.exit.i.land.lhs.true.i64.i_crit_edge ]
  %4 = load ptr, ptr @hibernation_ops, align 4
  %tobool1.not.i63.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i63.i, label %land.lhs.true.i64.i.platform_restore_cleanup.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i64.i.platform_restore_cleanup.exit.i_crit_edge: ; preds = %land.lhs.true.i64.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %platform_restore_cleanup.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i64.i
  call void @__sanitizer_cov_trace_pc() #19
  %restore_cleanup.i.i = getelementptr inbounds %struct.platform_hibernation_ops, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %restore_cleanup.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %restore_cleanup.i.i, align 4
  tail call void %6() #17
  br label %platform_restore_cleanup.exit.i

platform_restore_cleanup.exit.i:                  ; preds = %if.then.i.i, %land.lhs.true.i64.i.platform_restore_cleanup.exit.i_crit_edge, %Cleanup.i.platform_restore_cleanup.exit.i_crit_edge
  %error.369.i = phi i32 [ %error.2.i, %Cleanup.i.platform_restore_cleanup.exit.i_crit_edge ], [ %error.368.i, %land.lhs.true.i64.i.platform_restore_cleanup.exit.i_crit_edge ], [ %error.368.i, %if.then.i.i ]
  tail call void @dpm_resume_start([1 x i32] [i32 128]) #17
  br label %if.end14

if.end14:                                         ; preds = %platform_restore_cleanup.exit.i, %do.end.i, %entry.if.end14_crit_edge
  %error.0 = phi i32 [ %call, %entry.if.end14_crit_edge ], [ %call.i, %do.end.i ], [ %error.369.i, %platform_restore_cleanup.exit.i ]
  tail call void @dpm_resume_end([1 x i32] [i32 128]) #17
  tail call void @pm_restore_gfp_mask() #17
  tail call void @resume_console() #17
  tail call void @pm_restore_console() #17
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_prepare_console() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpm_suspend_start([1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpm_resume_end([1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_restore_console() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hibernation_platform_enter() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hibernation_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call i32 %2([1 x i32] [i32 4]) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.Close_crit_edge

if.end.Close_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %Close

if.end3:                                          ; preds = %if.end
  store i1 true, ptr @entering_platform_hibernation, align 1
  tail call void @suspend_console() #17
  %call7 = tail call i32 @dpm_suspend_start([1 x i32] [i32 4]) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %if.then9

if.then9:                                         ; preds = %if.end3
  %3 = load ptr, ptr @hibernation_ops, align 4
  %recover = getelementptr inbounds %struct.platform_hibernation_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %recover to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %recover, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.then9.Resume_devices_crit_edge, label %if.then11

if.then9.Resume_devices_crit_edge:                ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  br label %Resume_devices

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %5() #17
  br label %Resume_devices

if.end14:                                         ; preds = %if.end3
  %call18 = tail call i32 @dpm_suspend_end([1 x i32] [i32 4]) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end14.Resume_devices_crit_edge

if.end14.Resume_devices_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %Resume_devices

if.end21:                                         ; preds = %if.end14
  %6 = load ptr, ptr @hibernation_ops, align 4
  %prepare = getelementptr inbounds %struct.platform_hibernation_ops, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prepare, align 4
  %call22 = tail call i32 %8() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.Platform_finish_crit_edge

if.end21.Platform_finish_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %Platform_finish

if.end25:                                         ; preds = %if.end21
  tail call void @cpuidle_pause() #17
  %call.i.i = tail call i32 @freeze_secondary_cpus(i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool27.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool27.not, label %do.body, label %if.end25.Enable_cpus_crit_edge

if.end25.Enable_cpus_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %Enable_cpus

do.body:                                          ; preds = %if.end25
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !235
  %and.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool31.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #17, !srcloc !236
  br i1 %tobool31.not, label %if.then33, label %do.body.if.end34_crit_edge

do.body.if.end34_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @trace_hardirqs_off() #17
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %do.body.if.end34_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_state to i32))
  store i32 7, ptr @system_state, align 4
  %call35 = tail call i32 @syscore_suspend() #17
  %call36 = tail call zeroext i1 @pm_wakeup_pending() #17
  br i1 %call36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @syscore_resume() #17
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @system_state to i32))
  store i32 3, ptr @system_state, align 4
  tail call void @trace_hardirqs_on() #17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !237
  br label %Enable_cpus

if.end38:                                         ; preds = %if.end34
  %10 = load ptr, ptr @hibernation_ops, align 4
  %enter = getelementptr inbounds %struct.platform_hibernation_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %enter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enter, align 4
  %call39 = tail call i32 %12() #17
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.end38
  br label %while.cond

Enable_cpus:                                      ; preds = %if.then37, %if.end25.Enable_cpus_crit_edge
  %error.0 = phi i32 [ %call.i.i, %if.end25.Enable_cpus_crit_edge ], [ -11, %if.then37 ]
  tail call void @thaw_secondary_cpus() #17
  tail call void @cpuidle_resume() #17
  br label %Platform_finish

Platform_finish:                                  ; preds = %Enable_cpus, %if.end21.Platform_finish_crit_edge
  %error.1 = phi i32 [ %call22, %if.end21.Platform_finish_crit_edge ], [ %error.0, %Enable_cpus ]
  %13 = load ptr, ptr @hibernation_ops, align 4
  %finish = getelementptr inbounds %struct.platform_hibernation_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %finish to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %finish, align 4
  tail call void %15() #17
  tail call void @dpm_resume_start([1 x i32] [i32 64]) #17
  br label %Resume_devices

Resume_devices:                                   ; preds = %Platform_finish, %if.end14.Resume_devices_crit_edge, %if.then11, %if.then9.Resume_devices_crit_edge
  %error.2 = phi i32 [ %call7, %if.then11 ], [ %call7, %if.then9.Resume_devices_crit_edge ], [ %call18, %if.end14.Resume_devices_crit_edge ], [ %error.1, %Platform_finish ]
  store i1 false, ptr @entering_platform_hibernation, align 1
  tail call void @dpm_resume_end([1 x i32] [i32 64]) #17
  tail call void @resume_console() #17
  br label %Close

Close:                                            ; preds = %Resume_devices, %if.end.Close_crit_edge
  %error.3 = phi i32 [ %call, %if.end.Close_crit_edge ], [ %error.2, %Resume_devices ]
  %16 = load ptr, ptr @hibernation_ops, align 4
  %end = getelementptr inbounds %struct.platform_hibernation_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end, align 4
  tail call void %18() #17
  br label %cleanup

cleanup:                                          ; preds = %Close, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.3, %Close ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpm_suspend_end([1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @syscore_suspend() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_wakeup_pending() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @syscore_resume() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpm_resume_start([1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hibernate() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %.b.i = load i1, ptr @nohibernate, align 4
  br i1 %.b.i, label %entry.if.then_crit_edge, label %hibernation_available.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

hibernation_available.exit:                       ; preds = %entry
  %call.i = tail call i32 @security_locked_down(i32 noundef 5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %hibernation_available.exit.if.then_crit_edge

hibernation_available.exit.if.then_crit_edge:     ; preds = %hibernation_available.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %hibernation_available.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.3) #17
  br label %cleanup

if.end:                                           ; preds = %hibernation_available.exit
  tail call void @lock_system_sleep() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @hibernate_atomic, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !229
  tail call void @llvm.prefetch.p0(ptr nonnull @hibernate_atomic, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hibernate_atomic, ptr nonnull @hibernate_atomic, i32 0, i32 -1, ptr nonnull elementtype(i32) @hibernate_atomic) #17, !srcloc !230
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.Unlock_crit_edge, label %do.end

if.end.Unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %Unlock

do.end:                                           ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !231
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #21
  tail call void @pm_prepare_console() #17
  %call5 = tail call i32 @pm_notifier_call_chain_robust(i32 noundef 1, i32 noundef 2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %do.end.Restore_crit_edge

do.end.Restore_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %Restore

if.end7:                                          ; preds = %do.end
  tail call void @ksys_sync_helper() #17
  %call8 = tail call i32 @freeze_processes() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.Exit_crit_edge

if.end7.Exit_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %Exit

if.end11:                                         ; preds = %if.end7
  tail call void @lock_device_hotplug() #17
  %call12 = tail call i32 @create_basic_memory_bitmaps() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %Thaw.thread

Thaw.thread:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @unlock_device_hotplug() #17
  br label %if.end51

if.end15:                                         ; preds = %if.end11
  %1 = load i32, ptr @hibernation_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  %call16 = tail call i32 @hibernation_snapshot(i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %if.end15.Thaw_crit_edge

if.end15.Thaw_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %Thaw

lor.lhs.false:                                    ; preds = %if.end15
  %2 = load i8, ptr @freezer_test_done, align 1, !range !240
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool18.not = icmp eq i8 %2, 0
  br i1 %tobool18.not, label %if.end21, label %lor.lhs.false.Thaw_crit_edge

lor.lhs.false.Thaw_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %Thaw

if.end21:                                         ; preds = %lor.lhs.false
  %3 = load i32, ptr @in_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool22.not = icmp eq i32 %3, 0
  br i1 %tobool22.not, label %if.else42, label %if.then23

if.then23:                                        ; preds = %if.end21
  %4 = load i32, ptr @hibernation_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp24 = icmp eq i32 %4, 1
  %spec.select = zext i1 %cmp24 to i32
  %.b = load i1, ptr @nocompress, align 4
  %flags.1.v = select i1 %.b, i32 2, i32 4
  %flags.1 = or i32 %flags.1.v, %spec.select
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.6) #17
  %call33 = tail call i32 @swsusp_write(i32 noundef %flags.1) #17
  tail call void @swsusp_free() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %if.then23.if.end41_crit_edge

if.then23.if.end41_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.then35:                                        ; preds = %if.then23
  %5 = load i32, ptr @hibernation_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp36 = icmp eq i32 %5, 5
  br i1 %cmp36, label %if.then35.if.end41_crit_edge, label %if.else39

if.then35.if.end41_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.else39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @power_down()
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then35.if.end41_crit_edge, %if.then23.if.end41_crit_edge
  %snapshot_test.0 = phi i1 [ false, %if.then23.if.end41_crit_edge ], [ false, %if.else39 ], [ true, %if.then35.if.end41_crit_edge ]
  store i32 0, ptr @in_suspend, align 4
  tail call void @pm_restore_gfp_mask() #17
  br label %Thaw

if.else42:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.7) #17
  br label %Thaw

Thaw:                                             ; preds = %if.else42, %if.end41, %lor.lhs.false.Thaw_crit_edge, %if.end15.Thaw_crit_edge
  %error.0 = phi i32 [ %call16, %if.end15.Thaw_crit_edge ], [ 0, %lor.lhs.false.Thaw_crit_edge ], [ %call33, %if.end41 ], [ 0, %if.else42 ]
  %snapshot_test.1.off0 = phi i1 [ false, %if.end15.Thaw_crit_edge ], [ false, %lor.lhs.false.Thaw_crit_edge ], [ %snapshot_test.0, %if.end41 ], [ false, %if.else42 ]
  tail call void @free_basic_memory_bitmaps() #17
  tail call void @unlock_device_hotplug() #17
  br i1 %snapshot_test.1.off0, label %if.then45, label %Thaw.if.end51_crit_edge

Thaw.if.end51_crit_edge:                          ; preds = %Thaw
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51

if.then45:                                        ; preds = %Thaw
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.8) #17
  %call46 = tail call i32 @swsusp_check() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %if.then45.if.end51_crit_edge

if.then45.if.end51_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  %call49 = tail call fastcc i32 @load_image_and_restore()
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.then45.if.end51_crit_edge, %Thaw.if.end51_crit_edge, %Thaw.thread
  %error.2 = phi i32 [ %call46, %if.then45.if.end51_crit_edge ], [ %call49, %if.then48 ], [ %error.0, %Thaw.if.end51_crit_edge ], [ %call12, %Thaw.thread ]
  tail call void @thaw_processes() #17
  store i8 0, ptr @freezer_test_done, align 1
  br label %Exit

Exit:                                             ; preds = %if.end51, %if.end7.Exit_crit_edge
  %error.3 = phi i32 [ %call8, %if.end7.Exit_crit_edge ], [ %error.2, %if.end51 ]
  %call52 = tail call i32 @pm_notifier_call_chain(i32 noundef 2) #17
  br label %Restore

Restore:                                          ; preds = %Exit, %do.end.Restore_crit_edge
  %error.4 = phi i32 [ %call5, %do.end.Restore_crit_edge ], [ %error.3, %Exit ]
  tail call void @pm_restore_console() #17
  %call.i.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @hibernate_atomic, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr nonnull @hibernate_atomic, i32 1, i32 3, i32 1) #17
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hibernate_atomic, ptr nonnull @hibernate_atomic, i32 1, ptr nonnull elementtype(i32) @hibernate_atomic) #17, !srcloc !232
  br label %Unlock

Unlock:                                           ; preds = %Restore, %if.end.Unlock_crit_edge
  %error.5 = phi i32 [ %error.4, %Restore ], [ -16, %if.end.Unlock_crit_edge ]
  tail call void @unlock_system_sleep() #17
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #21
  br label %cleanup

cleanup:                                          ; preds = %Unlock, %if.then
  %retval.0 = phi i32 [ %error.5, %Unlock ], [ -1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_pr_dbg(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_notifier_call_chain_robust(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksys_sync_helper() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_processes() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_device_hotplug() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_basic_memory_bitmaps() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swsusp_write(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @power_down() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @hibernation_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.then:                                          ; preds = %entry
  %call = tail call i32 @suspend_devices_and_enter(i32 noundef 3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %1 = load ptr, ptr @hibernation_ops, align 4
  %tobool2.not = icmp eq ptr %1, null
  %cond = select i1 %tobool2.not, i32 2, i32 1
  store i32 %cond, ptr @hibernation_mode, align 4
  br label %if.end8

if.else:                                          ; preds = %if.then
  %call3 = tail call i32 @swsusp_unmark() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.if.end_crit_edge, label %do.end

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %if.else.if.end_crit_edge
  ret void

if.end8:                                          ; preds = %if.then1, %entry.if.end8_crit_edge
  %2 = phi i32 [ %cond, %if.then1 ], [ %0, %entry.if.end8_crit_edge ]
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.end8.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %if.end8.sw.bb11_crit_edge
  ]

if.end8.sw.bb11_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb11

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kernel_restart(ptr noundef null) #17
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  %call10 = tail call i32 @hibernation_platform_enter()
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb9, %if.end8.sw.bb11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %4 = load ptr, ptr @pm_power_off, align 4
  %tobool12.not = icmp eq ptr %4, null
  br i1 %tobool12.not, label %sw.bb11.sw.epilog_crit_edge, label %if.then13

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then13:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kernel_power_off() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then13, %sw.bb11.sw.epilog_crit_edge, %sw.bb, %if.end8.sw.epilog_crit_edge
  tail call void @kernel_halt() #17
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #21
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %sw.epilog
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !241
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !242
  br label %while.cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_basic_memory_bitmaps() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_device_hotplug() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swsusp_check() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_image_and_restore() unnamed_addr #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #17
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !243
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.34) #17
  tail call void @lock_device_hotplug() #17
  %call = tail call i32 @create_basic_memory_bitmaps() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.Unlock_crit_edge

entry.Unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %Unlock

if.end:                                           ; preds = %entry
  %call1 = call i32 @swsusp_read(ptr noundef nonnull %flags) #17
  call void @swsusp_close(i32 noundef 129) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 1
  %call4 = call i32 @hibernation_restore(i32 noundef %and)
  br label %do.end

do.end:                                           ; preds = %if.then3, %if.end.do.end_crit_edge
  %error.0 = phi i32 [ %call1, %if.end.do.end_crit_edge ], [ %call4, %if.then3 ]
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #21
  call void @swsusp_free() #17
  call void @free_basic_memory_bitmaps() #17
  br label %Unlock

Unlock:                                           ; preds = %do.end, %entry.Unlock_crit_edge
  %error.1 = phi i32 [ %call, %entry.Unlock_crit_edge ], [ %error.0, %do.end ]
  call void @unlock_device_hotplug() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #17
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thaw_processes() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_notifier_call_chain(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hibernate_quiet_exec(ptr nocapture noundef readonly %func, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_system_sleep() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @hibernate_atomic, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !229
  tail call void @llvm.prefetch.p0(ptr nonnull @hibernate_atomic, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hibernate_atomic, ptr nonnull @hibernate_atomic, i32 0, i32 -1, ptr nonnull elementtype(i32) @hibernate_atomic) #17, !srcloc !230
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !231
  tail call void @pm_prepare_console() #17
  %call1 = tail call i32 @pm_notifier_call_chain_robust(i32 noundef 1, i32 noundef 2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.restore_crit_edge

if.end.restore_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %restore

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @freeze_processes() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.exit_crit_edge

if.end3.exit_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit

if.end7:                                          ; preds = %if.end3
  tail call void @lock_device_hotplug() #17
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_suspend_global_flags to i32))
  store i32 0, ptr @pm_suspend_global_flags, align 4
  %1 = load ptr, ptr @hibernation_ops, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end7.if.end11_crit_edge, label %platform_begin.exit

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

platform_begin.exit:                              ; preds = %if.end7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 %3([1 x i32] [i32 1]) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %platform_begin.exit.if.end11_crit_edge, label %platform_begin.exit.thaw_crit_edge

platform_begin.exit.thaw_crit_edge:               ; preds = %platform_begin.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %thaw

platform_begin.exit.if.end11_crit_edge:           ; preds = %platform_begin.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.end11:                                         ; preds = %platform_begin.exit.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %call12 = tail call i32 @freeze_kernel_threads() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.thaw_crit_edge

if.end11.thaw_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %thaw

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @dpm_prepare([1 x i32] [i32 1]) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.dpm_complete_crit_edge

if.end15.dpm_complete_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %dpm_complete

if.end19:                                         ; preds = %if.end15
  tail call void @suspend_console() #17
  %call23 = tail call i32 @dpm_suspend([1 x i32] [i32 1]) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end19.dpm_resume_crit_edge

if.end19.dpm_resume_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %dpm_resume

if.end26:                                         ; preds = %if.end19
  %call30 = tail call i32 @dpm_suspend_end([1 x i32] [i32 1]) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end26.dpm_resume_crit_edge

if.end26.dpm_resume_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %dpm_resume

if.end33:                                         ; preds = %if.end26
  %4 = load ptr, ptr @hibernation_ops, align 4
  %tobool1.not.i62 = icmp eq ptr %4, null
  br i1 %tobool1.not.i62, label %if.end33.if.end37_crit_edge, label %platform_pre_snapshot.exit

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

platform_pre_snapshot.exit:                       ; preds = %if.end33
  %pre_snapshot.i = getelementptr inbounds %struct.platform_hibernation_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %pre_snapshot.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pre_snapshot.i, align 4
  %call.i63 = tail call i32 %6() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool35.not = icmp eq i32 %call.i63, 0
  br i1 %tobool35.not, label %platform_pre_snapshot.exit.if.end37_crit_edge, label %platform_pre_snapshot.exit.skip_crit_edge

platform_pre_snapshot.exit.skip_crit_edge:        ; preds = %platform_pre_snapshot.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %skip

platform_pre_snapshot.exit.if.end37_crit_edge:    ; preds = %platform_pre_snapshot.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

if.end37:                                         ; preds = %platform_pre_snapshot.exit.if.end37_crit_edge, %if.end33.if.end37_crit_edge
  %call38 = tail call i32 %func(ptr noundef %data) #17
  br label %skip

skip:                                             ; preds = %if.end37, %platform_pre_snapshot.exit.skip_crit_edge
  %error.0 = phi i32 [ %call.i63, %platform_pre_snapshot.exit.skip_crit_edge ], [ %call38, %if.end37 ]
  %7 = load ptr, ptr @hibernation_ops, align 4
  %tobool1.not.i66 = icmp eq ptr %7, null
  br i1 %tobool1.not.i66, label %skip.platform_finish.exit_crit_edge, label %if.then.i

skip.platform_finish.exit_crit_edge:              ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #19
  br label %platform_finish.exit

if.then.i:                                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #19
  %finish.i = getelementptr inbounds %struct.platform_hibernation_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %finish.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %finish.i, align 4
  tail call void %9() #17
  br label %platform_finish.exit

platform_finish.exit:                             ; preds = %if.then.i, %skip.platform_finish.exit_crit_edge
  tail call void @dpm_resume_start([1 x i32] [i32 32]) #17
  br label %dpm_resume

dpm_resume:                                       ; preds = %platform_finish.exit, %if.end26.dpm_resume_crit_edge, %if.end19.dpm_resume_crit_edge
  %error.1 = phi i32 [ %call23, %if.end19.dpm_resume_crit_edge ], [ %call30, %if.end26.dpm_resume_crit_edge ], [ %error.0, %platform_finish.exit ]
  tail call void @dpm_resume([1 x i32] [i32 32]) #17
  tail call void @resume_console() #17
  br label %dpm_complete

dpm_complete:                                     ; preds = %dpm_resume, %if.end15.dpm_complete_crit_edge
  %error.2 = phi i32 [ %call16, %if.end15.dpm_complete_crit_edge ], [ %error.1, %dpm_resume ]
  tail call void @dpm_complete([1 x i32] [i32 32]) #17
  tail call void @thaw_kernel_threads() #17
  br label %thaw

thaw:                                             ; preds = %dpm_complete, %if.end11.thaw_crit_edge, %platform_begin.exit.thaw_crit_edge
  %error.3 = phi i32 [ %call.i, %platform_begin.exit.thaw_crit_edge ], [ %call12, %if.end11.thaw_crit_edge ], [ %error.2, %dpm_complete ]
  %10 = load ptr, ptr @hibernation_ops, align 4
  %tobool1.not.i67 = icmp eq ptr %10, null
  br i1 %tobool1.not.i67, label %thaw.platform_end.exit_crit_edge, label %if.then.i68

thaw.platform_end.exit_crit_edge:                 ; preds = %thaw
  call void @__sanitizer_cov_trace_pc() #19
  br label %platform_end.exit

if.then.i68:                                      ; preds = %thaw
  call void @__sanitizer_cov_trace_pc() #19
  %end.i = getelementptr inbounds %struct.platform_hibernation_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i, align 4
  tail call void %12() #17
  br label %platform_end.exit

platform_end.exit:                                ; preds = %if.then.i68, %thaw.platform_end.exit_crit_edge
  tail call void @unlock_device_hotplug() #17
  tail call void @thaw_processes() #17
  br label %exit

exit:                                             ; preds = %platform_end.exit, %if.end3.exit_crit_edge
  %error.4 = phi i32 [ %call4, %if.end3.exit_crit_edge ], [ %error.3, %platform_end.exit ]
  %call48 = tail call i32 @pm_notifier_call_chain(i32 noundef 2) #17
  br label %restore

restore:                                          ; preds = %exit, %if.end.restore_crit_edge
  %error.5 = phi i32 [ %call1, %if.end.restore_crit_edge ], [ %error.4, %exit ]
  tail call void @pm_restore_console() #17
  %call.i.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @hibernate_atomic, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr nonnull @hibernate_atomic, i32 1, i32 3, i32 1) #17
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hibernate_atomic, ptr nonnull @hibernate_atomic, i32 1, ptr nonnull elementtype(i32) @hibernate_atomic) #17, !srcloc !232
  br label %unlock

unlock:                                           ; preds = %restore, %entry.unlock_crit_edge
  %error.6 = phi i32 [ %error.5, %restore ], [ -16, %entry.unlock_crit_edge ]
  tail call void @unlock_system_sleep() #17
  ret i32 %error.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @software_resume() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @noresume, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %.b.i = load i1, ptr @nohibernate, align 4
  br i1 %.b.i, label %lor.lhs.false.cleanup_crit_edge, label %hibernation_available.exit

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

hibernation_available.exit:                       ; preds = %lor.lhs.false
  %call.i = tail call i32 @security_locked_down(i32 noundef 5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %hibernation_available.exit.cleanup_crit_edge

hibernation_available.exit.cleanup_crit_edge:     ; preds = %hibernation_available.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %hibernation_available.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @system_transition_mutex, i32 noundef 1) #17
  %0 = load i32, ptr @swsusp_resume_device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.Check_image_crit_edge

if.end.Check_image_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %Check_image

if.end3:                                          ; preds = %if.end
  %char0 = load i8, ptr @resume_file, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool5.not = icmp eq i8 %char0, 0
  br i1 %tobool5.not, label %if.end3.Unlock_crit_edge, label %if.end7

if.end3.Unlock_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %Unlock

if.end7:                                          ; preds = %if.end3
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.37, ptr noundef nonnull @resume_file) #17
  %1 = load i32, ptr @resume_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool8.not = icmp eq i32 %1, 0
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %do.end

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %1) #21
  %2 = load i32, ptr @resume_delay, align 4
  %mul.i = mul i32 %2, 1000
  tail call void @msleep(i32 noundef %mul.i) #17
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end7.if.end11_crit_edge
  %call12 = tail call i32 @name_to_dev_t(ptr noundef nonnull @resume_file) #17
  store i32 %call12, ptr @swsusp_resume_device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end11.Check_image_crit_edge

if.end11.Check_image_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %Check_image

if.then14:                                        ; preds = %if.end11
  tail call void @wait_for_device_probe() #17
  %.b60 = load i1, ptr @resume_wait, align 4
  br i1 %.b60, label %while.cond.preheader, label %if.then14.if.end18_crit_edge

if.then14.if.end18_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

while.cond.preheader:                             ; preds = %if.then14
  %call1763 = tail call i32 @name_to_dev_t(ptr noundef nonnull @resume_file) #17
  store i32 %call1763, ptr @swsusp_resume_device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1763)
  %cmp64 = icmp eq i32 %call1763, 0
  br i1 %cmp64, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  tail call void @msleep(i32 noundef 10) #17
  %call17 = tail call i32 @name_to_dev_t(ptr noundef nonnull @resume_file) #17
  store i32 %call17, ptr @swsusp_resume_device, align 4
  %cmp = icmp eq i32 %call17, 0
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @async_synchronize_full() #17
  br label %if.end18

if.end18:                                         ; preds = %while.end, %if.then14.if.end18_crit_edge
  %call19 = tail call i32 @name_to_dev_t(ptr noundef nonnull @resume_file) #17
  store i32 %call19, ptr @swsusp_resume_device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.Unlock_crit_edge, label %if.end18.Check_image_crit_edge

if.end18.Check_image_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %Check_image

if.end18.Unlock_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %Unlock

Check_image:                                      ; preds = %if.end18.Check_image_crit_edge, %if.end11.Check_image_crit_edge, %if.end.Check_image_crit_edge
  %3 = load i32, ptr @swsusp_resume_device, align 4
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.40, i32 noundef %shr, i32 noundef %and) #17
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.41) #17
  %call24 = tail call i32 @swsusp_check() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %Check_image.Unlock_crit_edge

Check_image.Unlock_crit_edge:                     ; preds = %Check_image
  call void @__sanitizer_cov_trace_pc() #19
  br label %Unlock

if.end27:                                         ; preds = %Check_image
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @hibernate_atomic, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !229
  tail call void @llvm.prefetch.p0(ptr nonnull @hibernate_atomic, i32 1, i32 3, i32 1) #17
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hibernate_atomic, ptr nonnull @hibernate_atomic, i32 0, i32 -1, ptr nonnull elementtype(i32) @hibernate_atomic) #17, !srcloc !230
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then29, label %do.end33

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @swsusp_close(i32 noundef 129) #17
  br label %Unlock

do.end33:                                         ; preds = %if.end27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !231
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #21
  tail call void @pm_prepare_console() #17
  %call36 = tail call i32 @pm_notifier_call_chain_robust(i32 noundef 5, i32 noundef 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %do.end33.Restore_crit_edge

do.end33.Restore_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %Restore

if.end39:                                         ; preds = %do.end33
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.45) #17
  %call40 = tail call i32 @freeze_processes() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.Close_Finish_crit_edge

if.end39.Close_Finish_crit_edge:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %Close_Finish

if.end43:                                         ; preds = %if.end39
  %call44 = tail call i32 @freeze_kernel_threads() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @thaw_processes() #17
  br label %Close_Finish

if.end47:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  %call48 = tail call fastcc i32 @load_image_and_restore()
  tail call void @thaw_processes() #17
  br label %Finish

Finish:                                           ; preds = %Close_Finish, %if.end47
  %error.0 = phi i32 [ %error.3, %Close_Finish ], [ %call48, %if.end47 ]
  %call49 = tail call i32 @pm_notifier_call_chain(i32 noundef 6) #17
  br label %Restore

Restore:                                          ; preds = %Finish, %do.end33.Restore_crit_edge
  %error.1 = phi i32 [ %call36, %do.end33.Restore_crit_edge ], [ %error.0, %Finish ]
  tail call void @pm_restore_console() #17
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %error.1) #21
  %call.i.i.i61 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @hibernate_atomic, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr nonnull @hibernate_atomic, i32 1, i32 3, i32 1) #17
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hibernate_atomic, ptr nonnull @hibernate_atomic, i32 1, ptr nonnull elementtype(i32) @hibernate_atomic) #17, !srcloc !232
  br label %Unlock

Unlock:                                           ; preds = %Restore, %if.then29, %Check_image.Unlock_crit_edge, %if.end18.Unlock_crit_edge, %if.end3.Unlock_crit_edge
  %error.2 = phi i32 [ %call24, %Check_image.Unlock_crit_edge ], [ %error.1, %Restore ], [ -16, %if.then29 ], [ -2, %if.end3.Unlock_crit_edge ], [ -19, %if.end18.Unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @system_transition_mutex) #17
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.49) #17
  br label %cleanup

Close_Finish:                                     ; preds = %if.then46, %if.end39.Close_Finish_crit_edge
  %error.3 = phi i32 [ %call40, %if.end39.Close_Finish_crit_edge ], [ %call44, %if.then46 ]
  tail call void @swsusp_close(i32 noundef 129) #17
  br label %Finish

cleanup:                                          ; preds = %Unlock, %hibernation_available.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.2, %Unlock ], [ 0, %hibernation_available.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_disk_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @power_kobj to i32))
  %0 = load ptr, ptr @power_kobj, align 4
  %call = tail call i32 @sysfs_create_group(ptr noundef %0, ptr noundef nonnull @attr_group) #17
  ret i32 %call
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @noresume_setup(ptr nocapture noundef readnone %str) #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @noresume, align 4
  ret i32 1
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @resume_offset_setup(ptr nocapture noundef readonly %str) #7 section ".init.text" align 64 {
entry:
  %offset = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #17
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %offset, align 8, !annotation !243
  %.b = load i1, ptr @noresume, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %str, ptr noundef nonnull @.str.70, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %offset, align 8
  store i64 %2, ptr @swsusp_resume_block, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #17
  ret i32 1
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @resume_setup(ptr nocapture noundef readonly %str) #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @noresume, align 4
  br i1 %.b, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call ptr @strncpy(ptr noundef nonnull @resume_file, ptr noundef %str, i32 noundef 255)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hibernate_setup(ptr nocapture noundef readonly %str) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(9) @.str.71, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @noresume, align 4
  br label %if.end14

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(11) @.str.72, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nocompress, align 4
  br label %if.end14

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(3) @.str.73, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @noresume, align 4
  store i1 true, ptr @nohibernate, align 4
  br label %if.end14

if.else8:                                         ; preds = %if.else4
  %call9 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(14) @.str.74, i32 noundef 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else8.if.end14_crit_edge

if.else8.if.end14_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then11:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @enable_restore_image_protection() #17
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.else8.if.end14_crit_edge, %if.then7, %if.then3, %if.then
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @resumewait_setup(ptr nocapture noundef readnone %str) #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @resume_wait, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @resumedelay_setup(ptr noundef %str) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtouint(ptr noundef %str, i32 noundef 0, ptr noundef nonnull @resume_delay) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %.call = select i1 %tobool.not, i32 1, i32 %call
  ret i32 %.call
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nohibernate_setup(ptr nocapture noundef readnone %str) #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @noresume, align 4
  store i1 true, ptr @nohibernate, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @save_processor_state() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_suspend_resume(ptr noundef %action, i1 noundef zeroext %start) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), ptr blockaddress(@trace_suspend_resume, %do.body)) #17
          to label %if.end49 [label %do.body], !srcloc !244

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !245

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !219) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !246
  %call43 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %action, i32 noundef 4, i1 noundef zeroext %start) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !247
  %13 = tail call i32 @llvm.read_register.i32(metadata !219) #17
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !219) #17
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !245

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !219) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !248
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_suspend_resume.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_suspend_resume.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 246, ptr noundef nonnull @.str.25) #17
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !249
  %31 = tail call i32 @llvm.read_register.i32(metadata !219) #17
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swsusp_arch_suspend() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @restore_processor_state() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_or_poison_free_pages() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_suspend_resume(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_secondary_cpus(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_pause() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @restore_highmem() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swsusp_arch_resume() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_resume() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thaw_secondary_cpus() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suspend_devices_and_enter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swsusp_unmark() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_power_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_halt() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swsusp_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @swsusp_close(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @name_to_dev_t(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_device_probe() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disk_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %.b.i = load i1, ptr @nohibernate, align 4
  br i1 %.b.i, label %entry.if.then_crit_edge, label %hibernation_available.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

hibernation_available.exit:                       ; preds = %entry
  %call.i = tail call i32 @security_locked_down(i32 noundef 5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb4, label %hibernation_available.exit.if.then_crit_edge

hibernation_available.exit.if.then_crit_edge:     ; preds = %hibernation_available.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %hibernation_available.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %0 = call ptr @memcpy(ptr %buf, ptr @.str.51, i32 12)
  br label %cleanup

sw.bb4:                                           ; preds = %hibernation_available.exit
  %1 = load ptr, ptr @hibernation_ops, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %sw.bb4.sw.epilog.1_crit_edge, label %sw.epilog

sw.bb4.sw.epilog.1_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.1

sw.epilog:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #19
  %2 = load i32, ptr @hibernation_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp8 = icmp eq i32 %2, 1
  %.str.52..str.53 = select i1 %cmp8, ptr @.str.52, ptr @.str.53
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull %.str.52..str.53, ptr noundef nonnull @.str.55)
  %add.ptr = getelementptr i8, ptr %buf, i32 %call11
  br label %sw.epilog.1

sw.epilog.1:                                      ; preds = %sw.epilog, %sw.bb4.sw.epilog.1_crit_edge
  %buf.addr.1 = phi ptr [ %buf, %sw.bb4.sw.epilog.1_crit_edge ], [ %add.ptr, %sw.epilog ]
  %3 = load i32, ptr @hibernation_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp8.1 = icmp eq i32 %3, 2
  %.str.52..str.5341 = select i1 %cmp8.1, ptr @.str.52, ptr @.str.53
  %call11.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.1, ptr noundef nonnull %.str.52..str.5341, ptr noundef nonnull @.str.56)
  %add.ptr.1 = getelementptr i8, ptr %buf.addr.1, i32 %call11.1
  %4 = load i32, ptr @hibernation_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp8.2 = icmp eq i32 %4, 3
  %.str.52.sink38 = select i1 %cmp8.2, ptr @.str.52, ptr @.str.53
  %call11.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull %.str.52.sink38, ptr noundef nonnull @.str.57)
  %add.ptr.2 = getelementptr i8, ptr %add.ptr.1, i32 %call11.2
  %5 = load i32, ptr @hibernation_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp8.3 = icmp eq i32 %5, 4
  %.str.52.sink39 = select i1 %cmp8.3, ptr @.str.52, ptr @.str.53
  %call11.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull %.str.52.sink39, ptr noundef nonnull @.str.58)
  %add.ptr.3 = getelementptr i8, ptr %add.ptr.2, i32 %call11.3
  %6 = load i32, ptr @hibernation_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp8.4 = icmp eq i32 %6, 5
  %.str.52.sink40 = select i1 %cmp8.4, ptr @.str.52, ptr @.str.53
  %call11.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3, ptr noundef nonnull %.str.52.sink40, ptr noundef nonnull @.str.59)
  %add.ptr.4 = getelementptr i8, ptr %add.ptr.3, i32 %call11.4
  %7 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 2560, ptr %add.ptr.4, align 1
  %add.ptr17 = getelementptr i8, ptr %add.ptr.4, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr17 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.1, %if.then
  %retval.0 = phi i32 [ %sub.ptr.sub, %sw.epilog.1 ], [ 11, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disk_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %.b.i = load i1, ptr @nohibernate, align 4
  br i1 %.b.i, label %entry.cleanup_crit_edge, label %hibernation_available.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

hibernation_available.exit:                       ; preds = %entry
  %call.i = tail call i32 @security_locked_down(i32 noundef 5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %hibernation_available.exit.cleanup_crit_edge

hibernation_available.exit.cleanup_crit_edge:     ; preds = %hibernation_available.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %hibernation_available.exit
  %call1 = tail call ptr @memchr(ptr noundef %buf, i32 noundef 10, i32 noundef %n) #22
  %tobool.not = icmp eq ptr %call1, null
  %sub.ptr.lhs.cast = ptrtoint ptr %call1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cond = select i1 %tobool.not, i32 %n, i32 %sub.ptr.sub
  tail call void @lock_system_sleep() #17
  %0 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %cond, label %if.end.cleanup.sink.split_crit_edge [
    i32 8, label %land.lhs.true
    i32 6, label %land.lhs.true.2
    i32 7, label %land.lhs.true.3
    i32 11, label %land.lhs.true.4
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

land.lhs.true:                                    ; preds = %if.end
  %call5 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.55, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %sw.bb11, label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %call5.1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %tobool6.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool6.not.1, label %land.lhs.true.1.sw.bb_crit_edge, label %land.lhs.true.1.cleanup.sink.split_crit_edge

land.lhs.true.1.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

land.lhs.true.1.sw.bb_crit_edge:                  ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

land.lhs.true.2:                                  ; preds = %if.end
  %call5.2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.57, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %tobool6.not.2 = icmp eq i32 %call5.2, 0
  br i1 %tobool6.not.2, label %land.lhs.true.2.sw.bb_crit_edge, label %land.lhs.true.2.cleanup.sink.split_crit_edge

land.lhs.true.2.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

land.lhs.true.2.sw.bb_crit_edge:                  ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

land.lhs.true.3:                                  ; preds = %if.end
  %call5.3 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.58, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3)
  %tobool6.not.3 = icmp eq i32 %call5.3, 0
  br i1 %tobool6.not.3, label %land.lhs.true.3.sw.bb_crit_edge, label %land.lhs.true.3.cleanup.sink.split_crit_edge

land.lhs.true.3.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

land.lhs.true.3.sw.bb_crit_edge:                  ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

land.lhs.true.4:                                  ; preds = %if.end
  %call5.4 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4)
  %tobool6.not.4 = icmp eq i32 %call5.4, 0
  br i1 %tobool6.not.4, label %land.lhs.true.4.sw.bb_crit_edge, label %land.lhs.true.4.cleanup.sink.split_crit_edge

land.lhs.true.4.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

land.lhs.true.4.sw.bb_crit_edge:                  ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

sw.bb11:                                          ; preds = %land.lhs.true
  %1 = load ptr, ptr @hibernation_ops, align 4
  %tobool12.not = icmp eq ptr %1, null
  br i1 %tobool12.not, label %sw.bb11.cleanup.sink.split_crit_edge, label %sw.bb11.sw.bb_crit_edge

sw.bb11.sw.bb_crit_edge:                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

sw.bb11.cleanup.sink.split_crit_edge:             ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %sw.bb11.sw.bb_crit_edge, %land.lhs.true.4.sw.bb_crit_edge, %land.lhs.true.3.sw.bb_crit_edge, %land.lhs.true.2.sw.bb_crit_edge, %land.lhs.true.1.sw.bb_crit_edge
  %i.061.lcssa.ph.sink = phi i32 [ 5, %land.lhs.true.4.sw.bb_crit_edge ], [ 4, %land.lhs.true.3.sw.bb_crit_edge ], [ 3, %land.lhs.true.2.sw.bb_crit_edge ], [ 2, %land.lhs.true.1.sw.bb_crit_edge ], [ 1, %sw.bb11.sw.bb_crit_edge ]
  store i32 %i.061.lcssa.ph.sink, ptr @hibernation_mode, align 4
  %arrayidx19 = getelementptr [6 x ptr], ptr @hibernation_modes, i32 0, i32 %i.061.lcssa.ph.sink
  %2 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx19, align 4
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.60, ptr noundef %3) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb, %sw.bb11.cleanup.sink.split_crit_edge, %land.lhs.true.4.cleanup.sink.split_crit_edge, %land.lhs.true.3.cleanup.sink.split_crit_edge, %land.lhs.true.2.cleanup.sink.split_crit_edge, %land.lhs.true.1.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %n, %sw.bb ], [ -22, %if.end.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.1.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.2.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.3.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.4.cleanup.sink.split_crit_edge ], [ -22, %sw.bb11.cleanup.sink.split_crit_edge ]
  tail call void @unlock_system_sleep() #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %hibernation_available.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %hibernation_available.exit.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resume_offset_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i64, ptr @swsusp_resume_block, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.62, i64 noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resume_offset_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  %offset = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #17
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %offset, align 8, !annotation !243
  %call = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %offset) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %offset, align 8
  store i64 %2, ptr @swsusp_resume_block, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %n, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resume_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @swsusp_resume_device, align 4
  %shr = lshr i32 %0, 20
  %and = and i32 %0, 1048575
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.64, i32 noundef %shr, i32 noundef %and)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resume_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not = icmp eq i32 %n, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sub = add i32 %n, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp = icmp eq i8 %1, 10
  %spec.select = select i1 %cmp, i32 %sub, i32 %n
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %len.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call = tail call ptr @kstrndup(ptr noundef %buf, i32 noundef %len.0, i32 noundef 3264) #17
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @name_to_dev_t(ptr noundef nonnull %call) #17
  tail call void @kfree(ptr noundef nonnull %call) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_system_sleep() #17
  store i32 %call5, ptr @swsusp_resume_device, align 4
  tail call void @unlock_system_sleep() #17
  %2 = load i32, ptr @swsusp_resume_device, align 4
  tail call void (i1, ptr, ...) @__pm_pr_dbg(i1 noundef zeroext false, ptr noundef nonnull @.str.65, i32 noundef %2) #17
  store i1 false, ptr @noresume, align 4
  %call9 = tail call i32 @software_resume()
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %n, %if.end8 ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @image_size_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @image_size to i32))
  %0 = load i32, ptr @image_size, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.67, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @image_size_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %n) #14 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #17
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size, align 4, !annotation !243
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.68, ptr noundef nonnull %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @image_size to i32))
  store i32 %2, ptr @image_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %n, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #17
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reserved_size_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @reserved_size to i32))
  %0 = load i32, ptr @reserved_size, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.67, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reserved_size_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %n) #14 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #17
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size, align 4, !annotation !243
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.68, ptr noundef nonnull %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @reserved_size to i32))
  store i32 %2, ptr @reserved_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %n, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #17
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_restore_image_protection() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nounwind readnone }
attributes #21 = { cold nounwind }
attributes #22 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !15, !16, !17, !18, !20, !22, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !117, !118, !119, !120, !122, !124, !125, !126, !127, !129, !131, !133, !134, !135, !137, !139, !140, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !183, !185, !187, !188, !190, !192, !194, !195, !197, !199, !201, !202, !203, !204, !206, !207, !208, !210, !212, !214, !216, !217, !218}
!llvm.named.register.sp = !{!219}
!llvm.module.flags = !{!220, !221, !222, !223, !224, !225, !226, !227}
!llvm.ident = !{!228}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/power/hibernate.c", i32 99, i32 3}
!2 = !{ptr @__ksymtab_hibernation_set_ops, !3, !"__ksymtab_hibernation_set_ops", i1 false, i1 false}
!3 = !{!"../kernel/power/hibernate.c", i32 111, i32 1}
!4 = !{ptr @__ksymtab_system_entering_hibernation, !5, !"__ksymtab_system_entering_hibernation", i1 false, i1 false}
!5 = !{!"../kernel/power/hibernate.c", i32 119, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/power/hibernate.c", i32 270, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @swsusp_show_speed._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @swsusp_show_speed._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/power/hibernate.c", i32 718, i32 3}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/power/hibernate.c", i32 729, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @hibernate._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @hibernate._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/power/hibernate.c", i32 761, i32 3}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/power/hibernate.c", i32 773, i32 3}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/power/hibernate.c", i32 781, i32 3}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/power/hibernate.c", i32 797, i32 2}
!26 = !{ptr @hibernate._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hibernate._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__ksymtab_hibernate_quiet_exec, !29, !"__ksymtab_hibernate_quiet_exec", i1 false, i1 false}
!29 = !{!"../kernel/power/hibernate.c", i32 897, i32 1}
!30 = !{ptr @__initcall__kmod_hibernate__355_1025_software_resume7s, !31, !"__initcall__kmod_hibernate__355_1025_software_resume7s", i1 false, i1 false}
!31 = !{!"../kernel/power/hibernate.c", i32 1025, i32 1}
!32 = !{ptr @__initcall__kmod_hibernate__356_1273_pm_disk_init1, !33, !"__initcall__kmod_hibernate__356_1273_pm_disk_init1", i1 false, i1 false}
!33 = !{!"../kernel/power/hibernate.c", i32 1273, i32 1}
!34 = !{ptr @__setup_noresume_setup, !35, !"__setup_noresume_setup", i1 false, i1 false}
!35 = !{!"../kernel/power/hibernate.c", i32 1342, i32 1}
!36 = !{ptr @__setup_resume_offset_setup, !37, !"__setup_resume_offset_setup", i1 false, i1 false}
!37 = !{!"../kernel/power/hibernate.c", i32 1343, i32 1}
!38 = !{ptr @__setup_resume_setup, !39, !"__setup_resume_setup", i1 false, i1 false}
!39 = !{!"../kernel/power/hibernate.c", i32 1344, i32 1}
!40 = !{ptr @__setup_hibernate_setup, !41, !"__setup_hibernate_setup", i1 false, i1 false}
!41 = !{!"../kernel/power/hibernate.c", i32 1345, i32 1}
!42 = !{ptr @__setup_resumewait_setup, !43, !"__setup_resumewait_setup", i1 false, i1 false}
!43 = !{!"../kernel/power/hibernate.c", i32 1346, i32 1}
!44 = !{ptr @__setup_resumedelay_setup, !45, !"__setup_resumedelay_setup", i1 false, i1 false}
!45 = !{!"../kernel/power/hibernate.c", i32 1347, i32 1}
!46 = !{ptr @__setup_nohibernate_setup, !47, !"__setup_nohibernate_setup", i1 false, i1 false}
!47 = !{!"../kernel/power/hibernate.c", i32 1348, i32 1}
!48 = distinct !{null, !49, !"nocompress", i1 false, i1 false}
!49 = !{!"../kernel/power/hibernate.c", i32 40, i32 12}
!50 = distinct !{null, !51, !"nohibernate", i1 false, i1 false}
!51 = !{!"../kernel/power/hibernate.c", i32 42, i32 12}
!52 = !{ptr @swsusp_resume_device, !53, !"swsusp_resume_device", i1 false, i1 false}
!53 = !{!"../kernel/power/hibernate.c", i32 46, i32 7}
!54 = !{ptr @swsusp_resume_block, !55, !"swsusp_resume_block", i1 false, i1 false}
!55 = !{!"../kernel/power/hibernate.c", i32 47, i32 10}
!56 = !{ptr @in_suspend, !57, !"in_suspend", i1 false, i1 false}
!57 = !{!"../kernel/power/hibernate.c", i32 48, i32 15}
!58 = !{ptr @freezer_test_done, !59, !"freezer_test_done", i1 false, i1 false}
!59 = !{!"../kernel/power/hibernate.c", i32 67, i32 6}
!60 = !{ptr @hibernation_ops, !61, !"hibernation_ops", i1 false, i1 false}
!61 = !{!"../kernel/power/hibernate.c", i32 69, i32 47}
!62 = distinct !{null, !63, !"entering_platform_hibernation", i1 false, i1 false}
!63 = !{!"../kernel/power/hibernate.c", i32 113, i32 13}
!64 = !{ptr @hibernate_atomic, !65, !"hibernate_atomic", i1 false, i1 false}
!65 = !{!"../kernel/power/hibernate.c", i32 71, i32 17}
!66 = !{ptr @hibernation_mode, !67, !"hibernation_mode", i1 false, i1 false}
!67 = !{!"../kernel/power/hibernate.c", i32 65, i32 12}
!68 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../kernel/power/hibernate.c", i32 124, i32 2}
!70 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @hibernation_debug_sleep._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @hibernation_debug_sleep._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.14, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../kernel/power/hibernate.c", i32 295, i32 3}
!75 = !{ptr @.str.15, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @create_image._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @create_image._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.17, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../kernel/power/hibernate.c", i32 313, i32 3}
!80 = !{ptr @create_image._entry.16, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @create_image._entry_ptr.18, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/power/hibernate.c", i32 322, i32 23}
!84 = !{ptr @create_image.___tp_str, !83, !"___tp_str", i1 false, i1 false}
!85 = !{ptr @create_image.___tp_str.20, !86, !"___tp_str", i1 false, i1 false}
!86 = !{!"../kernel/power/hibernate.c", i32 326, i32 23}
!87 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../kernel/power/hibernate.c", i32 328, i32 3}
!89 = !{ptr @create_image._entry.21, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @create_image._entry_ptr.23, !88, !"_entry_ptr", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../include/trace/events/power.h", i32 226, i32 1}
!93 = !{ptr @.str.24, !92, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!95 = !{ptr @.str.25, !92, !"<string literal>", i1 false, i1 false}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!98 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../kernel/power/hibernate.c", i32 461, i32 3}
!101 = !{ptr @.str.28, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @resume_target_kernel._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @resume_target_kernel._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.29, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../kernel/power/hibernate.c", i32 654, i32 5}
!106 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @power_down._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @power_down._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../kernel/power/hibernate.c", i32 678, i32 2}
!111 = !{ptr @power_down._entry.31, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @power_down._entry_ptr.33, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.34, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../kernel/power/hibernate.c", i32 688, i32 2}
!115 = !{ptr @.str.35, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../kernel/power/hibernate.c", i32 700, i32 2}
!117 = !{ptr @.str.36, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @load_image_and_restore._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @load_image_and_restore._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../kernel/power/hibernate.c", i32 944, i32 2}
!122 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../kernel/power/hibernate.c", i32 947, i32 3}
!124 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @software_resume._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @software_resume._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../kernel/power/hibernate.c", i32 975, i32 2}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../kernel/power/hibernate.c", i32 978, i32 2}
!131 = !{ptr @.str.43, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../kernel/power/hibernate.c", i32 990, i32 2}
!133 = !{ptr @software_resume._entry.42, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @software_resume._entry_ptr.44, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../kernel/power/hibernate.c", i32 996, i32 2}
!137 = !{ptr @.str.47, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../kernel/power/hibernate.c", i32 1013, i32 2}
!139 = !{ptr @software_resume._entry.46, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @software_resume._entry_ptr.48, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.49, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../kernel/power/hibernate.c", i32 1018, i32 2}
!143 = distinct !{null, !144, !"noresume", i1 false, i1 false}
!144 = !{!"../kernel/power/hibernate.c", i32 41, i32 12}
!145 = !{ptr @resume_file, !146, !"resume_file", i1 false, i1 false}
!146 = !{!"../kernel/power/hibernate.c", i32 45, i32 13}
!147 = !{ptr @resume_delay, !148, !"resume_delay", i1 false, i1 false}
!148 = !{!"../kernel/power/hibernate.c", i32 44, i32 21}
!149 = distinct !{null, !150, !"resume_wait", i1 false, i1 false}
!150 = !{!"../kernel/power/hibernate.c", i32 43, i32 12}
!151 = !{ptr @attr_group, !152, !"attr_group", i1 false, i1 false}
!152 = !{!"../kernel/power/hibernate.c", i32 1263, i32 37}
!153 = !{ptr @g, !154, !"g", i1 false, i1 false}
!154 = !{!"../kernel/power/hibernate.c", i32 1253, i32 26}
!155 = !{ptr @.str.50, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../kernel/power/hibernate.c", i32 1148, i32 1}
!157 = !{ptr @disk_attr, !156, !"disk_attr", i1 false, i1 false}
!158 = !{ptr @.str.51, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../kernel/power/hibernate.c", i32 1071, i32 23}
!160 = !{ptr @.str.52, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../kernel/power/hibernate.c", i32 1091, i32 24}
!162 = !{ptr @.str.53, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../kernel/power/hibernate.c", i32 1093, i32 24}
!164 = distinct !{null, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../kernel/power/hibernate.c", i32 1095, i32 22}
!166 = !{ptr @.str.55, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../kernel/power/hibernate.c", i32 1029, i32 27}
!168 = !{ptr @.str.56, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../kernel/power/hibernate.c", i32 1030, i32 27}
!170 = !{ptr @.str.57, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../kernel/power/hibernate.c", i32 1031, i32 25}
!172 = !{ptr @.str.58, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../kernel/power/hibernate.c", i32 1033, i32 26}
!174 = !{ptr @.str.59, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../kernel/power/hibernate.c", i32 1035, i32 30}
!176 = !{ptr @hibernation_modes, !177, !"hibernation_modes", i1 false, i1 false}
!177 = !{!"../kernel/power/hibernate.c", i32 1028, i32 27}
!178 = !{ptr @.str.60, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../kernel/power/hibernate.c", i32 1142, i32 3}
!180 = !{ptr @.str.61, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../kernel/power/hibernate.c", i32 1208, i32 1}
!182 = !{ptr @resume_offset_attr, !181, !"resume_offset_attr", i1 false, i1 false}
!183 = !{ptr @.str.62, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../kernel/power/hibernate.c", i32 1190, i32 22}
!185 = !{ptr @.str.63, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../kernel/power/hibernate.c", i32 1185, i32 1}
!187 = !{ptr @resume_attr, !186, !"resume_attr", i1 false, i1 false}
!188 = !{ptr @.str.64, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../kernel/power/hibernate.c", i32 1153, i32 22}
!190 = !{ptr @.str.65, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../kernel/power/hibernate.c", i32 1178, i32 2}
!192 = !{ptr @.str.66, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../kernel/power/hibernate.c", i32 1229, i32 1}
!194 = !{ptr @image_size_attr, !193, !"image_size_attr", i1 false, i1 false}
!195 = !{ptr @.str.67, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../kernel/power/hibernate.c", i32 1213, i32 22}
!197 = !{ptr @.str.68, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../kernel/power/hibernate.c", i32 1221, i32 18}
!199 = !{ptr @.str.69, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../kernel/power/hibernate.c", i32 1251, i32 1}
!201 = !{ptr @reserved_size_attr, !200, !"reserved_size_attr", i1 false, i1 false}
!202 = !{ptr @__setup_str_noresume_setup, !35, !"__setup_str_noresume_setup", i1 false, i1 false}
!203 = !{ptr @__setup_str_resume_offset_setup, !37, !"__setup_str_resume_offset_setup", i1 false, i1 false}
!204 = !{ptr @.str.70, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../kernel/power/hibernate.c", i32 1292, i32 18}
!206 = !{ptr @__setup_str_resume_setup, !39, !"__setup_str_resume_setup", i1 false, i1 false}
!207 = !{ptr @__setup_str_hibernate_setup, !41, !"__setup_str_hibernate_setup", i1 false, i1 false}
!208 = !{ptr @.str.71, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../kernel/power/hibernate.c", i32 1300, i32 20}
!210 = !{ptr @.str.72, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../kernel/power/hibernate.c", i32 1302, i32 27}
!212 = !{ptr @.str.73, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../kernel/power/hibernate.c", i32 1304, i32 27}
!214 = !{ptr @.str.74, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../kernel/power/hibernate.c", i32 1308, i32 23}
!216 = !{ptr @__setup_str_resumewait_setup, !43, !"__setup_str_resumewait_setup", i1 false, i1 false}
!217 = !{ptr @__setup_str_resumedelay_setup, !45, !"__setup_str_resumedelay_setup", i1 false, i1 false}
!218 = !{ptr @__setup_str_nohibernate_setup, !47, !"__setup_str_nohibernate_setup", i1 false, i1 false}
!219 = !{!"sp"}
!220 = !{i32 1, !"wchar_size", i32 2}
!221 = !{i32 1, !"min_enum_size", i32 4}
!222 = !{i32 8, !"branch-target-enforcement", i32 0}
!223 = !{i32 8, !"sign-return-address", i32 0}
!224 = !{i32 8, !"sign-return-address-all", i32 0}
!225 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!226 = !{i32 7, !"uwtable", i32 1}
!227 = !{i32 7, !"frame-pointer", i32 2}
!228 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!229 = !{i64 2148550461}
!230 = !{i64 1037061, i64 1037086, i64 1037108, i64 1037124, i64 1037136, i64 1037156, i64 1037180, i64 1037196, i64 1037208}
!231 = !{i64 2148550649}
!232 = !{i64 2148551042, i64 2148551068, i64 2148551097, i64 2148551131, i64 2148551162, i64 2148551185}
!233 = !{i64 914996, i64 915023}
!234 = !{i64 915691, i64 915718, i64 915751, i64 915772, i64 915799, i64 915825}
!235 = !{i64 958454}
!236 = !{i64 956157}
!237 = !{i64 955967}
!238 = !{!"branch_weights", i32 1, i32 2000}
!239 = !{i64 2156184518, i64 2156185007, i64 2156184555, i64 2156184611, i64 2156184645, i64 2156184669, i64 2156184710, i64 2156184731, i64 2156184759, i64 2156184793}
!240 = !{i8 0, i8 2}
!241 = !{i64 2156192062}
!242 = !{i64 2156191904}
!243 = !{!"auto-init"}
!244 = !{i64 2148375640, i64 2148375645, i64 2148375658, i64 2148375702, i64 2148375736, i64 2148375757}
!245 = !{!"branch_weights", i32 2000, i32 1}
!246 = !{i64 2155860559}
!247 = !{i64 2155860786}
!248 = !{i64 2149945304}
!249 = !{i64 2149946340}
