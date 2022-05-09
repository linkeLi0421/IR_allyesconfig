; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/brcmstb-avs-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/brcmstb-avs-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.freq_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.private_data = type { ptr, ptr, ptr, %struct.completion, %struct.semaphore, %struct.pmap, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.pmap = type { i32, i32, i32, i32 }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }

@__initcall__kmod_brcmstb_avs_cpufreq__199_778_brcm_avs_cpufreq_platdrv_init6 = internal global ptr @brcm_avs_cpufreq_platdrv_init, section ".initcall6.init", align 4
@brcm_avs_cpufreq_platdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @brcm_avs_cpufreq_probe, ptr @brcm_avs_cpufreq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcm_avs_cpufreq_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_brcm_avs_cpufreq_platdrv_exit = internal global ptr @brcm_avs_cpufreq_platdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author200 = internal constant [62 x i8] c"brcmstb_avs_cpufreq.author=Markus Mayer <mmayer@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description201 = internal constant [68 x i8] c"brcmstb_avs_cpufreq.description=CPUfreq driver for Broadcom STB AVS\00", section ".modinfo", align 1
@__UNIQUE_ID_file202 = internal constant [61 x i8] c"brcmstb_avs_cpufreq.file=drivers/cpufreq/brcmstb-avs-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license203 = internal constant [32 x i8] c"brcmstb_avs_cpufreq.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcmstb-avs-cpufreq\00", [44 x i8] zeroinitializer }, align 32
@brcm_avs_cpufreq_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,avs-cpu-data-mem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@brcm_avs_driver = internal global { %struct.cpufreq_driver, [48 x i8] } { %struct.cpufreq_driver { [16 x i8] c"brcmstb-avs\00\00\00\00\00", i16 32, ptr null, ptr @brcm_avs_cpufreq_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @brcm_avs_target_index, ptr null, ptr null, ptr null, ptr null, ptr @brcm_avs_cpufreq_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_avs_suspend, ptr @brcm_avs_resume, ptr null, ptr @brcm_avs_cpufreq_attr, i8 0, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brcm,avs-cpu-data-mem\00", [42 x i8] zeroinitializer }, align 32
@brcm_avs_prepare_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 563, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Couldn't find property %s in device tree.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brcm_avs_prepare_init\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/cpufreq/brcmstb-avs-cpufreq.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcm_avs_prepare_init._entry_ptr = internal global ptr @brcm_avs_prepare_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"brcm,avs-cpu-l2-intr\00", [43 x i8] zeroinitializer }, align 32
@brcm_avs_prepare_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 570, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@brcm_avs_prepare_init._entry_ptr.9 = internal global ptr @brcm_avs_prepare_init._entry.8, section ".printk_index", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sw_intr\00", [24 x i8] zeroinitializer }, align 32
@brcm_avs_prepare_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 582, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IRQ request failed: %s (%d) -- %d\0A\00", [61 x i8] zeroinitializer }, align 32
@brcm_avs_prepare_init._entry_ptr.13 = internal global ptr @brcm_avs_prepare_init._entry.11, section ".printk_index", align 4
@brcm_avs_prepare_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 589, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"AVS firmware is not loaded or doesn't support DVFS\0A\00", [44 x i8] zeroinitializer }, align 32
@brcm_avs_prepare_init._entry_ptr.16 = internal global ptr @brcm_avs_prepare_init._entry.14, section ".printk_index", align 4
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__issue_avs_command._entry = internal constant %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 277, ptr @.str.5, ptr @.str.6 }, align 1
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AVS command %#x didn't complete in time\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__issue_avs_command\00", [44 x i8] zeroinitializer }, align 32
@__issue_avs_command._entry_ptr = internal global ptr @__issue_avs_command._entry, section ".printk_index", align 4
@__issue_avs_command._entry.22 = internal constant %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, align 1
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"    Time left: %u ms, AVS status: %#x\0A\00", [57 x i8] zeroinitializer }, align 32
@__issue_avs_command._entry_ptr.24 = internal global ptr @__issue_avs_command._entry.22, section ".printk_index", align 4
@brcm_avs_cpufreq_attr = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @cpufreq_freq_attr_scaling_available_freqs, ptr @brcm_avs_pstate, ptr @brcm_avs_mode, ptr @brcm_avs_pmap, ptr @brcm_avs_voltage, ptr @brcm_avs_frequency, ptr null], [36 x i8] zeroinitializer }, align 32
@brcm_avs_cpufreq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 626, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Couldn't determine frequency table (%d).\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brcm_avs_cpufreq_init\00", [42 x i8] zeroinitializer }, align 32
@brcm_avs_cpufreq_init._entry_ptr = internal global ptr @brcm_avs_cpufreq_init._entry, section ".printk_index", align 4
@brcm_avs_cpufreq_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 642, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"registered\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@brcm_avs_cpufreq_init._entry_ptr.30 = internal global ptr @brcm_avs_cpufreq_init._entry.27, section ".printk_index", align 4
@brcm_avs_cpufreq_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.26, ptr @.str.4, i32 647, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"couldn't initialize driver (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@brcm_avs_cpufreq_init._entry_ptr.33 = internal global ptr @brcm_avs_cpufreq_init._entry.31, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@brcm_avs_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 532, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PMAP was already set\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm_avs_resume\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@brcm_avs_resume._entry_ptr = internal global ptr @brcm_avs_resume._entry, section ".printk_index", align 4
@cpufreq_freq_attr_scaling_available_freqs = external dso_local global %struct.freq_attr, align 4
@brcm_avs_pstate = internal global { %struct.freq_attr, [36 x i8] } { %struct.freq_attr { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_brcm_avs_pstate, ptr null }, [36 x i8] zeroinitializer }, align 32
@brcm_avs_mode = internal global { %struct.freq_attr, [36 x i8] } { %struct.freq_attr { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_brcm_avs_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@brcm_avs_pmap = internal global { %struct.freq_attr, [36 x i8] } { %struct.freq_attr { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_brcm_avs_pmap, ptr null }, [36 x i8] zeroinitializer }, align 32
@brcm_avs_voltage = internal global { %struct.freq_attr, [36 x i8] } { %struct.freq_attr { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_brcm_avs_voltage, ptr null }, [36 x i8] zeroinitializer }, align 32
@brcm_avs_frequency = internal global { %struct.freq_attr, [36 x i8] } { %struct.freq_attr { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_brcm_avs_frequency, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm_avs_pstate\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"<unknown>\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"brcm_avs_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AVS\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DFS\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DVS\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVFS\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"brcm_avs_pmap\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"0x%08x 0x%08x %u %u %u %u %u %u %u %u %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm_avs_voltage\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcm_avs_frequency\00", [45 x i8] zeroinitializer }, align 32
@switch.table.show_brcm_avs_mode = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 241, i64 242, i64 243, i64 244, i64 255]
@___asan_gen_.51 = private unnamed_addr constant [25 x i8] c"brcm_avs_cpufreq_platdrv\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 770, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 772, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [23 x i8] c"brcm_avs_cpufreq_match\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 764, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"brcm_avs_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 723, i32 30 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 560, i32 28 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 562, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 567, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 569, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 575, i32 49 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 581, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 589, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 33, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 34, i32 28 }
@___asan_gen_.112 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 35, i32 39 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 87, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 276, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 278, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [22 x i8] c"brcm_avs_cpufreq_attr\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 713, i32 26 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 626, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 642, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 647, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 532, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"brcm_avs_pstate\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [14 x i8] c"brcm_avs_mode\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [14 x i8] c"brcm_avs_pmap\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"brcm_avs_voltage\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [19 x i8] c"brcm_avs_frequency\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 707, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 658, i32 23 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 660, i32 22 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 708, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 671, i32 22 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 330, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 332, i32 10 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 334, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 336, i32 10 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 709, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 688, i32 22 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 710, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 697, i32 22 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private constant [41 x i8] c"../drivers/cpufreq/brcmstb-avs-cpufreq.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 711, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant [32 x i8] c"switch.table.show_brcm_avs_mode\00", align 1
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author200, ptr @__UNIQUE_ID_description201, ptr @__UNIQUE_ID_file202, ptr @__UNIQUE_ID_license203, ptr @__exitcall_brcm_avs_cpufreq_platdrv_exit, ptr @__initcall__kmod_brcmstb_avs_cpufreq__199_778_brcm_avs_cpufreq_platdrv_init6, ptr @__issue_avs_command._entry, ptr @__issue_avs_command._entry.22, ptr @__issue_avs_command._entry_ptr, ptr @__issue_avs_command._entry_ptr.24, ptr @brcm_avs_cpufreq_init._entry, ptr @brcm_avs_cpufreq_init._entry.27, ptr @brcm_avs_cpufreq_init._entry.31, ptr @brcm_avs_cpufreq_init._entry_ptr, ptr @brcm_avs_cpufreq_init._entry_ptr.30, ptr @brcm_avs_cpufreq_init._entry_ptr.33, ptr @brcm_avs_cpufreq_platdrv_exit, ptr @brcm_avs_prepare_init._entry, ptr @brcm_avs_prepare_init._entry.11, ptr @brcm_avs_prepare_init._entry.14, ptr @brcm_avs_prepare_init._entry.8, ptr @brcm_avs_prepare_init._entry_ptr, ptr @brcm_avs_prepare_init._entry_ptr.13, ptr @brcm_avs_prepare_init._entry_ptr.16, ptr @brcm_avs_prepare_init._entry_ptr.9, ptr @brcm_avs_resume._entry, ptr @brcm_avs_resume._entry_ptr, ptr @brcm_avs_cpufreq_platdrv, ptr @.str, ptr @brcm_avs_cpufreq_match, ptr @brcm_avs_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @sema_init.__key, ptr @.str.17, ptr @.str.18, ptr @init_completion.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @brcm_avs_cpufreq_attr, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @brcm_avs_pstate, ptr @brcm_avs_mode, ptr @brcm_avs_pmap, ptr @brcm_avs_voltage, ptr @brcm_avs_frequency, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @switch.table.show_brcm_avs_mode], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_cpufreq_platdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_cpufreq_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_driver to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_prepare_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_prepare_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_prepare_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_prepare_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_cpufreq_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_cpufreq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_cpufreq_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_cpufreq_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_pstate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_pmap to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_voltage to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_avs_frequency to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.show_brcm_avs_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_avs_cpufreq_platdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcm_avs_cpufreq_platdrv, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @brcm_avs_cpufreq_platdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcm_avs_cpufreq_platdrv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_avs_cpufreq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 144, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %dev2.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1.i, ptr %dev2.i, align 4
  %sem.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 4
  %wait_list1.i.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 4, i32 2
  %1 = ptrtoint ptr %sem.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sem.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 4, i32 0, i32 2
  %3 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 4, i32 0, i32 3
  %4 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 4, i32 0, i32 4
  %5 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 4, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.17, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 4, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 4, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 4, i32 0, i32 4, i32 5
  %9 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i.i, align 4
  %11 = ptrtoint ptr %wait_list1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %wait_list1.i.i, ptr %wait_list1.i.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 4, i32 2, i32 1
  %12 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %wait_list1.i.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %done.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  %call.i63.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #7
  %tobool.not.i.i = icmp eq ptr %call.i63.i, null
  br i1 %tobool.not.i.i, label %__map_region.exit.thread.i, label %__map_region.exit.i

__map_region.exit.thread.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %call.i.i, align 4
  br label %do.end.i

__map_region.exit.i:                              ; preds = %if.end.i
  %call1.i.i = tail call ptr @of_iomap(ptr noundef nonnull %call.i63.i, i32 noundef 0) #7
  tail call void @of_node_put(ptr noundef nonnull %call.i63.i) #7
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1.i.i, ptr %call.i.i, align 4
  %tobool5.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool5.not.i, label %__map_region.exit.i.do.end.i_crit_edge, label %if.end7.i

__map_region.exit.i.do.end.i_crit_edge:           ; preds = %__map_region.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %__map_region.exit.i.do.end.i_crit_edge, %__map_region.exit.thread.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end7.i:                                        ; preds = %__map_region.exit.i
  %call.i64.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7) #7
  %tobool.not.i65.i = icmp eq ptr %call.i64.i, null
  br i1 %tobool.not.i65.i, label %__map_region.exit69.thread.i, label %__map_region.exit69.i

__map_region.exit69.thread.i:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %avs_intr_base74.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %avs_intr_base74.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %avs_intr_base74.i, align 4
  br label %do.end14.i

__map_region.exit69.i:                            ; preds = %if.end7.i
  %call1.i66.i = tail call ptr @of_iomap(ptr noundef nonnull %call.i64.i, i32 noundef 0) #7
  tail call void @of_node_put(ptr noundef nonnull %call.i64.i) #7
  %avs_intr_base.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %avs_intr_base.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call1.i66.i, ptr %avs_intr_base.i, align 4
  %tobool10.not.i = icmp eq ptr %call1.i66.i, null
  br i1 %tobool10.not.i, label %__map_region.exit69.i.do.end14.i_crit_edge, label %if.end15.i

__map_region.exit69.i.do.end14.i_crit_edge:       ; preds = %__map_region.exit69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14.i

do.end14.i:                                       ; preds = %__map_region.exit69.i.do.end14.i_crit_edge, %__map_region.exit69.thread.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7) #10
  br label %unmap_base.i

if.end15.i:                                       ; preds = %__map_region.exit69.i
  %call16.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.10) #7
  %host_irq.i = getelementptr inbounds %struct.private_data, ptr %call.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %host_irq.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call16.i, ptr %host_irq.i, align 4
  %call.i70.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1.i, i32 noundef %call16.i, ptr noundef nonnull @irq_handler, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %tobool19.not.i = icmp eq i32 %call.i70.i, 0
  br i1 %tobool19.not.i, label %if.end15.i.if.end26.i_crit_edge, label %land.lhs.true.i

if.end15.i.if.end26.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

land.lhs.true.i:                                  ; preds = %if.end15.i
  %20 = ptrtoint ptr %host_irq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %host_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i = icmp sgt i32 %21, -1
  br i1 %cmp.i, label %do.end24.i, label %land.lhs.true.i.if.end26.i_crit_edge

land.lhs.true.i.if.end26.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

do.end24.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %21, i32 noundef %call.i70.i) #10
  br label %unmap_intr_base.i

if.end26.i:                                       ; preds = %land.lhs.true.i.if.end26.i_crit_edge, %if.end15.i.if.end26.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i.i.i) #7
  %22 = call ptr @memset(ptr %args.i.i.i, i32 255, i32 16)
  %call.i.i.i = call fastcc i32 @__issue_avs_command(ptr noundef nonnull %call.i.i, i32 noundef 48, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %args.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i.i.i) #7
  %23 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 52
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  call void @__sanitizer_cov_trace_const_cmp4(i32 -788523359, i32 %25)
  %cmp.i.i = icmp eq i32 %25, -788523359
  br i1 %cmp.i.i, label %if.end, label %do.end32.i

do.end32.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.15) #10
  br label %unmap_intr_base.i

unmap_intr_base.i:                                ; preds = %do.end32.i, %do.end24.i
  %ret.0.i = phi i32 [ %call.i70.i, %do.end24.i ], [ -19, %do.end32.i ]
  %26 = ptrtoint ptr %avs_intr_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %avs_intr_base.i, align 4
  tail call void @iounmap(ptr noundef %27) #7
  br label %unmap_base.i

unmap_base.i:                                     ; preds = %unmap_intr_base.i, %do.end14.i
  %ret.1.i = phi i32 [ %ret.0.i, %unmap_intr_base.i ], [ -2, %do.end14.i ]
  %28 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i.i, align 4
  tail call void @iounmap(ptr noundef %29) #7
  br label %cleanup

if.end:                                           ; preds = %if.end26.i
  store ptr %pdev, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @brcm_avs_driver, i32 0, i32 2), align 4
  %call1 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @brcm_avs_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i.i, align 4
  %avs_intr_base.i11 = getelementptr inbounds %struct.private_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %avs_intr_base.i11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %avs_intr_base.i11, align 4
  tail call void @iounmap(ptr noundef %33) #7
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  tail call void @iounmap(ptr noundef %35) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %unmap_base.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -2, %do.end.i ], [ %ret.1.i, %unmap_base.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_avs_cpufreq_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @brcm_avs_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !127

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 757, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %avs_intr_base.i = getelementptr inbounds %struct.private_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %avs_intr_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %avs_intr_base.i, align 4
  tail call void @iounmap(ptr noundef %3) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %done = getelementptr inbounds %struct.private_data, ptr %data, i32 0, i32 3
  tail call void @complete(ptr noundef %done) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__issue_avs_command(ptr noundef %priv, i32 noundef %cmd, i32 noundef %num_in, i32 noundef %num_out, ptr nocapture noundef %args) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %sem = getelementptr inbounds %struct.private_data, ptr %priv, i32 0, i32 4
  %call = tail call i32 @down_interruptible(ptr noundef %sem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0118 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %inc = add nuw nsw i32 %i.0118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp ne i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %i.0118)
  %cmp2 = icmp ult i32 %i.0118, 9999
  %or.cond = select i1 %cmp.not, i1 %cmp2, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %inc)
  %cmp5 = icmp eq i32 %inc, 10000
  br i1 %cmp5, label %for.end.out_crit_edge, label %do.body

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body:                                          ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %add.ptr8 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #7, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_in)
  %cmp10119.not = icmp eq i32 %num_in, 0
  br i1 %cmp10119.not, label %do.body.for.end19_crit_edge, label %do.body.do.body12_crit_edge

do.body.do.body12_crit_edge:                      ; preds = %do.body
  br label %do.body12

do.body.for.end19_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19

do.body12:                                        ; preds = %do.body12.do.body12_crit_edge, %do.body.do.body12_crit_edge
  %i.1120 = phi i32 [ %inc18, %do.body12.do.body12_crit_edge ], [ 0, %do.body.do.body12_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %arrayidx = getelementptr i32, ptr %args, i32 %i.1120
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %mul = shl i32 %i.1120, 2
  %add = add i32 %mul, 24
  %add.ptr16 = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %5) #7, !srcloc !130
  %inc18 = add nuw i32 %i.1120, 1
  %exitcond.not = icmp eq i32 %inc18, %num_in
  br i1 %exitcond.not, label %do.body12.for.end19_crit_edge, label %do.body12.do.body12_crit_edge

do.body12.do.body12_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

do.body12.for.end19_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19

for.end19:                                        ; preds = %do.body12.for.end19_crit_edge, %do.body.for.end19_crit_edge
  %done = getelementptr inbounds %struct.private_data, ptr %priv, i32 0, i32 3
  %6 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %done, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %cmd)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %7) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %avs_intr_base = getelementptr inbounds %struct.private_data, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %avs_intr_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %avs_intr_base, align 4
  %add.ptr27 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 128) #7, !srcloc !130
  %host_irq.i = getelementptr inbounds %struct.private_data, ptr %priv, i32 0, i32 6
  %10 = ptrtoint ptr %host_irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i = icmp sgt i32 %11, -1
  br i1 %cmp.i, label %if.then.i, label %for.end19.do.body.i_crit_edge

for.end19.do.body.i_crit_edge:                    ; preds = %for.end19
  br label %do.body.i

if.then.i:                                        ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 30) #7
  br label %wait_for_avs_command.exit

do.body.i:                                        ; preds = %if.end5.i.do.body.i_crit_edge, %for.end19.do.body.i_crit_edge
  %timeout.addr.0.i = phi i32 [ %dec.i, %if.end5.i.do.body.i_crit_edge ], [ 300, %for.end19.do.body.i_crit_edge ]
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end5.i, label %do.body.i.wait_for_avs_command.exit_crit_edge

do.body.i.wait_for_avs_command.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wait_for_avs_command.exit

if.end5.i:                                        ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %dec.i = add nsw i32 %timeout.addr.0.i, -1
  %tobool6.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool6.not.i, label %if.end5.i.wait_for_avs_command.exit_crit_edge, label %if.end5.i.do.body.i_crit_edge

if.end5.i.do.body.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end5.i.wait_for_avs_command.exit_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wait_for_avs_command.exit

wait_for_avs_command.exit:                        ; preds = %if.end5.i.wait_for_avs_command.exit_crit_edge, %do.body.i.wait_for_avs_command.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call1.i, %if.then.i ], [ %timeout.addr.0.i, %do.body.i.wait_for_avs_command.exit_crit_edge ], [ 1, %if.end5.i.wait_for_avs_command.exit_crit_edge ]
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !125
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp35 = icmp eq i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp36 = icmp eq i32 %15, 0
  %or.cond116 = select i1 %cmp35, i1 true, i1 %cmp36
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %16)
  %cmp38 = icmp ugt i32 %16, 255
  %or.cond117 = select i1 %or.cond116, i1 true, i1 %cmp38
  br i1 %or.cond117, label %do.end42, label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %wait_for_avs_command.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_out)
  %cmp50121.not = icmp eq i32 %num_out, 0
  br i1 %cmp50121.not, label %for.cond49.preheader.do.body69_crit_edge, label %for.cond49.preheader.cond.end57_crit_edge

for.cond49.preheader.cond.end57_crit_edge:        ; preds = %for.cond49.preheader
  br label %cond.end57

for.cond49.preheader.do.body69_crit_edge:         ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body69

do.end42:                                         ; preds = %wait_for_avs_command.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.private_data, ptr %priv, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.20, i32 noundef %cmd) #10
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call47 = tail call i32 @jiffies_to_msecs(i32 noundef %retval.0.i) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.23, i32 noundef %call47, i32 noundef %16) #10
  br label %out

cond.end57:                                       ; preds = %cond.end57.cond.end57_crit_edge, %for.cond49.preheader.cond.end57_crit_edge
  %i.2122 = phi i32 [ %inc67, %cond.end57.cond.end57_crit_edge ], [ 0, %for.cond49.preheader.cond.end57_crit_edge ]
  %mul59 = shl i32 %i.2122, 2
  %add60 = add i32 %mul59, 24
  %add.ptr61 = getelementptr i8, ptr %1, i32 %add60
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #7, !srcloc !125
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %arrayidx65 = getelementptr i32, ptr %args, i32 %i.2122
  %23 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx65, align 4
  %inc67 = add nuw i32 %i.2122, 1
  %exitcond123.not = icmp eq i32 %inc67, %num_out
  br i1 %exitcond123.not, label %cond.end57.do.body69_crit_edge, label %cond.end57.cond.end57_crit_edge

cond.end57.cond.end57_crit_edge:                  ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end57

cond.end57.do.body69_crit_edge:                   ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body69

do.body69:                                        ; preds = %cond.end57.do.body69_crit_edge, %for.cond49.preheader.do.body69_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #7, !srcloc !130
  %24 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.body69.out_crit_edge [
    i32 241, label %sw.bb
    i32 242, label %sw.bb73
    i32 243, label %sw.bb74
    i32 244, label %sw.bb75
    i32 255, label %sw.bb76
  ]

do.body69.out_crit_edge:                          ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb:                                            ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb73:                                          ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb74:                                          ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb75:                                          ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb76:                                          ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %sw.bb76, %sw.bb75, %sw.bb74, %sw.bb73, %sw.bb, %do.body69.out_crit_edge, %do.end42, %for.end.out_crit_edge
  %ret.0 = phi i32 [ -110, %do.end42 ], [ 0, %do.body69.out_crit_edge ], [ -5, %sw.bb76 ], [ -17, %sw.bb75 ], [ -2, %sw.bb74 ], [ -524, %sw.bb73 ], [ -22, %sw.bb ], [ -11, %for.end.out_crit_edge ]
  tail call void @up(ptr noundef %sem) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_avs_cpufreq_init(ptr nocapture noundef %policy) #2 align 64 {
entry:
  %args.i = alloca [4 x i32], align 4
  %args.i44.i = alloca [4 x i32], align 4
  %args.i42.i = alloca [4 x i32], align 4
  %args.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cpufreq_get_driver_data() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %driver_data, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i.i) #7
  %3 = call ptr @memset(ptr %args.i.i, i32 255, i32 16)
  %call.i.i = call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 64, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i.i) #7
  %4 = inttoptr i32 %call.i.i to ptr
  br label %brcm_avs_get_freq_table.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i.i) #7
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 60, i32 noundef 3520) #7
  %tobool3.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.then_crit_edge, label %for.cond.preheader.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.preheader.i:                             ; preds = %if.end.i
  %7 = getelementptr inbounds i8, ptr %args.i42.i, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i42.i) #7
  %8 = call ptr @memset(ptr %7, i32 255, i32 12)
  %9 = ptrtoint ptr %args.i42.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %args.i42.i, align 4
  %call.i43.i = call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 65, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args.i42.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i42.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %tobool8.not.i = icmp eq i32 %call.i43.i, 0
  br i1 %tobool8.not.i, label %if.end11.i, label %for.cond.preheader.i.if.then9.i_crit_edge

for.cond.preheader.i.if.then9.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.end11.3.i.if.then9.i_crit_edge, %if.end11.2.i.if.then9.i_crit_edge, %if.end11.1.i.if.then9.i_crit_edge, %if.end11.i.if.then9.i_crit_edge, %for.cond.preheader.i.if.then9.i_crit_edge
  %call.i43.lcssa.i = phi i32 [ %call.i43.i, %for.cond.preheader.i.if.then9.i_crit_edge ], [ %call.i43.1.i, %if.end11.i.if.then9.i_crit_edge ], [ %call.i43.2.i, %if.end11.1.i.if.then9.i_crit_edge ], [ %call.i43.3.i, %if.end11.2.i.if.then9.i_crit_edge ], [ %call.i43.4.i, %if.end11.3.i.if.then9.i_crit_edge ]
  %10 = inttoptr i32 %call.i43.lcssa.i to ptr
  br label %brcm_avs_get_freq_table.exit

if.end11.i:                                       ; preds = %for.cond.preheader.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 80
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !125
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mul.i.i = mul i32 %14, 1000
  %frequency.i = getelementptr %struct.cpufreq_frequency_table, ptr %call5.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %frequency.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul.i.i, ptr %frequency.i, align 4
  %driver_data.i = getelementptr %struct.cpufreq_frequency_table, ptr %call5.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i42.i) #7
  %17 = call ptr @memset(ptr %7, i32 255, i32 12)
  %18 = ptrtoint ptr %args.i42.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %args.i42.i, align 4
  %call.i43.1.i = call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 65, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args.i42.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i42.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.1.i)
  %tobool8.not.1.i = icmp eq i32 %call.i43.1.i, 0
  br i1 %tobool8.not.1.i, label %if.end11.1.i, label %if.end11.i.if.then9.i_crit_edge

if.end11.i.if.then9.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

if.end11.1.i:                                     ; preds = %if.end11.i
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %20, i32 80
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #7, !srcloc !125
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mul.i.1.i = mul i32 %22, 1000
  %frequency.1.i = getelementptr %struct.cpufreq_frequency_table, ptr %call5.i.i.i, i32 1, i32 2
  %23 = ptrtoint ptr %frequency.1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul.i.1.i, ptr %frequency.1.i, align 4
  %driver_data.1.i = getelementptr %struct.cpufreq_frequency_table, ptr %call5.i.i.i, i32 1, i32 1
  %24 = ptrtoint ptr %driver_data.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %driver_data.1.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i42.i) #7
  %25 = call ptr @memset(ptr %7, i32 255, i32 12)
  %26 = ptrtoint ptr %args.i42.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %args.i42.i, align 4
  %call.i43.2.i = call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 65, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args.i42.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i42.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.2.i)
  %tobool8.not.2.i = icmp eq i32 %call.i43.2.i, 0
  br i1 %tobool8.not.2.i, label %if.end11.2.i, label %if.end11.1.i.if.then9.i_crit_edge

if.end11.1.i.if.then9.i_crit_edge:                ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

if.end11.2.i:                                     ; preds = %if.end11.1.i
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %28, i32 80
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i) #7, !srcloc !125
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mul.i.2.i = mul i32 %30, 1000
  %frequency.2.i = getelementptr %struct.cpufreq_frequency_table, ptr %call5.i.i.i, i32 2, i32 2
  %31 = ptrtoint ptr %frequency.2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul.i.2.i, ptr %frequency.2.i, align 4
  %driver_data.2.i = getelementptr %struct.cpufreq_frequency_table, ptr %call5.i.i.i, i32 2, i32 1
  %32 = ptrtoint ptr %driver_data.2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %driver_data.2.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i42.i) #7
  %33 = call ptr @memset(ptr %7, i32 255, i32 12)
  %34 = ptrtoint ptr %args.i42.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %args.i42.i, align 4
  %call.i43.3.i = call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 65, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args.i42.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i42.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.3.i)
  %tobool8.not.3.i = icmp eq i32 %call.i43.3.i, 0
  br i1 %tobool8.not.3.i, label %if.end11.3.i, label %if.end11.2.i.if.then9.i_crit_edge

if.end11.2.i.if.then9.i_crit_edge:                ; preds = %if.end11.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

if.end11.3.i:                                     ; preds = %if.end11.2.i
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %36, i32 80
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i) #7, !srcloc !125
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mul.i.3.i = mul i32 %38, 1000
  %frequency.3.i = getelementptr %struct.cpufreq_frequency_table, ptr %call5.i.i.i, i32 3, i32 2
  %39 = ptrtoint ptr %frequency.3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul.i.3.i, ptr %frequency.3.i, align 4
  %driver_data.3.i = getelementptr %struct.cpufreq_frequency_table, ptr %call5.i.i.i, i32 3, i32 1
  %40 = ptrtoint ptr %driver_data.3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %driver_data.3.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i42.i) #7
  %41 = call ptr @memset(ptr %7, i32 255, i32 12)
  %42 = ptrtoint ptr %args.i42.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %args.i42.i, align 4
  %call.i43.4.i = call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 65, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args.i42.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i42.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.4.i)
  %tobool8.not.4.i = icmp eq i32 %call.i43.4.i, 0
  br i1 %tobool8.not.4.i, label %if.end11.4.i, label %if.end11.3.i.if.then9.i_crit_edge

if.end11.3.i.if.then9.i_crit_edge:                ; preds = %if.end11.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

if.end11.4.i:                                     ; preds = %if.end11.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %add.ptr.i.4.i = getelementptr i8, ptr %44, i32 80
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i) #7, !srcloc !125
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mul.i.4.i = mul i32 %46, 1000
  %frequency.4.i = getelementptr %struct.cpufreq_frequency_table, ptr %call5.i.i.i, i32 4, i32 2
  %47 = ptrtoint ptr %frequency.4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul.i.4.i, ptr %frequency.4.i, align 4
  %driver_data.4.i = getelementptr %struct.cpufreq_frequency_table, ptr %call5.i.i.i, i32 4, i32 1
  %48 = ptrtoint ptr %driver_data.4.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4, ptr %driver_data.4.i, align 4
  %frequency15.i = getelementptr %struct.cpufreq_frequency_table, ptr %call5.i.i.i, i32 5, i32 2
  %49 = ptrtoint ptr %frequency15.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -2, ptr %frequency15.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i44.i) #7
  %50 = getelementptr inbounds i8, ptr %args.i44.i, i32 4
  %51 = call ptr @memset(ptr %50, i32 255, i32 12)
  %52 = ptrtoint ptr %args.i44.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %6, ptr %args.i44.i, align 4
  %call.i45.i = call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 65, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args.i44.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i44.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i)
  %tobool17.not.i = icmp eq i32 %call.i45.i, 0
  %53 = inttoptr i32 %call.i45.i to ptr
  %spec.select.i = select i1 %tobool17.not.i, ptr %call5.i.i.i, ptr %53
  br label %brcm_avs_get_freq_table.exit

brcm_avs_get_freq_table.exit:                     ; preds = %if.end11.4.i, %if.then9.i, %if.then.i
  %retval.0.i = phi ptr [ %4, %if.then.i ], [ %10, %if.then9.i ], [ %spec.select.i, %if.end11.4.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %brcm_avs_get_freq_table.exit.if.then_crit_edge, label %if.end

brcm_avs_get_freq_table.exit.if.then_crit_edge:   ; preds = %brcm_avs_get_freq_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %brcm_avs_get_freq_table.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %retval.0.i47 = phi ptr [ %retval.0.i, %brcm_avs_get_freq_table.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then_crit_edge ]
  %54 = ptrtoint ptr %retval.0.i47 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.25, i32 noundef %54) #10
  br label %cleanup20

if.end:                                           ; preds = %brcm_avs_get_freq_table.exit
  %freq_table6 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %55 = ptrtoint ptr %freq_table6 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %retval.0.i, ptr %freq_table6, align 4
  %56 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %policy, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %58 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %58, 31
  %59 = lshr i32 %sub.i.i, 3
  %mul.i.i43 = and i32 %59, 536870908
  %60 = call ptr @memset(ptr %57, i32 255, i32 %mul.i.i43)
  %call7 = tail call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 17, i32 noundef 0, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.end.do.end19_crit_edge

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #7
  %61 = call ptr @memset(ptr %args.i, i32 255, i32 16)
  %call.i = call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 64, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then11, label %do.end19.critedge

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #7
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %retval.0.i, i32 %63, i32 2
  %64 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %frequency, align 4
  %cur = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 9
  %66 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %cur, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.28) #10
  br label %cleanup20

do.end19.critedge:                                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #7
  br label %do.end19

do.end19:                                         ; preds = %do.end19.critedge, %if.end.do.end19_crit_edge
  %ret.0 = phi i32 [ %call7, %if.end.do.end19_crit_edge ], [ %call.i, %do.end19.critedge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.32, i32 noundef %ret.0) #10
  br label %cleanup20

cleanup20:                                        ; preds = %do.end19, %if.then11, %if.then
  %retval.1 = phi i32 [ %54, %if.then ], [ %ret.0, %do.end19 ], [ 0, %if.then11 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_avs_target_index(ptr nocapture noundef readonly %policy, i32 noundef %index) #2 align 64 {
entry:
  %args.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %2 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %freq_table, align 4
  %driver_data1 = getelementptr %struct.cpufreq_frequency_table, ptr %3, i32 %index, i32 1
  %4 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #7
  %6 = getelementptr inbounds i8, ptr %args.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 12)
  %8 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %args.i, align 4
  %call.i = call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 65, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_avs_cpufreq_get(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cpufreq_cpu_get(i32 noundef %cpu) #7
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %call, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  tail call void @cpufreq_cpu_put(ptr noundef %call) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 80
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !125
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mul.i = mul i32 %5, 1000
  ret i32 %mul.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_avs_suspend(ptr nocapture noundef readonly %policy) #2 align 64 {
entry:
  %args.i15 = alloca [4 x i32], align 4
  %args.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %pmap = getelementptr inbounds %struct.private_data, ptr %1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #7
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 16)
  %call.i = call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 48, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %tobool1.not.i = icmp eq ptr %pmap, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %brcm_avs_get_pmap.exit, label %brcm_avs_get_pmap.exit.thread

brcm_avs_get_pmap.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = getelementptr inbounds [4 x i32], ptr %args.i, i32 0, i32 3
  %4 = getelementptr inbounds [4 x i32], ptr %args.i, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i32], ptr %args.i, i32 0, i32 1
  %6 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args.i, align 4
  %8 = ptrtoint ptr %pmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pmap, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %5, align 4
  %p1.i = getelementptr inbounds %struct.private_data, ptr %1, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %p1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %p1.i, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  %p2.i = getelementptr inbounds %struct.private_data, ptr %1, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %p2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %p2.i, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  %state.i = getelementptr inbounds %struct.private_data, ptr %1, i32 0, i32 5, i32 3
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %state.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #7
  br label %if.end

brcm_avs_get_pmap.exit:                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %brcm_avs_get_pmap.exit.if.end_crit_edge, label %brcm_avs_get_pmap.exit.cleanup_crit_edge

brcm_avs_get_pmap.exit.cleanup_crit_edge:         ; preds = %brcm_avs_get_pmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

brcm_avs_get_pmap.exit.if.end_crit_edge:          ; preds = %brcm_avs_get_pmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %brcm_avs_get_pmap.exit.if.end_crit_edge, %brcm_avs_get_pmap.exit.thread
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i15) #7
  %18 = call ptr @memset(ptr %args.i15, i32 255, i32 16)
  %call.i16 = call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 64, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %args.i15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i17, label %if.end5, label %brcm_avs_get_pstate.exit

brcm_avs_get_pstate.exit:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i15) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.private_data, ptr %1, i32 0, i32 5, i32 3
  %19 = ptrtoint ptr %args.i15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %args.i15, align 4
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %state, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i15) #7
  %call6 = tail call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 18, i32 noundef 0, i32 noundef 0, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %brcm_avs_get_pstate.exit, %brcm_avs_get_pmap.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call.i, %brcm_avs_get_pmap.exit.cleanup_crit_edge ], [ %call.i16, %brcm_avs_get_pstate.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_avs_resume(ptr nocapture noundef readonly %policy) #2 align 64 {
entry:
  %args.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %call = tail call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 19, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %pmap = getelementptr inbounds %struct.private_data, ptr %1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #7
  %2 = getelementptr inbounds [4 x i32], ptr %args.i, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i32], ptr %args.i, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i32], ptr %args.i, i32 0, i32 3
  %5 = ptrtoint ptr %pmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pmap, align 4
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %args.i, align 4
  %p1.i = getelementptr inbounds %struct.private_data, ptr %1, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %p1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p1.i, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %2, align 4
  %p2.i = getelementptr inbounds %struct.private_data, ptr %1, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %p2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %p2.i, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %3, align 4
  %state.i = getelementptr inbounds %struct.private_data, ptr %1, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %4, align 4
  %call.i = call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 49, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call.i)
  %cmp = icmp eq i32 %call.i, -17
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call ptr @cpufreq_get_driver_data() #7
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %call2, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.34) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ %call.i, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_get_driver_data() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_cpu_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_brcm_avs_pstate(ptr nocapture noundef readonly %policy, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %args.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #7
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 16)
  %call.i = call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 64, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #7
  %3 = call ptr @memcpy(ptr %buf, ptr @.str.38, i32 11)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #7
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 10, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_brcm_avs_mode(ptr nocapture noundef readonly %policy, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %args.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #7
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 16)
  %call.i = call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 48, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #7
  %3 = call ptr @memcpy(ptr %buf, ptr @.str.38, i32 11)
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %switch.lookup, label %if.end.brcm_avs_mode_to_string.exit_crit_edge

if.end.brcm_avs_mode_to_string.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcm_avs_mode_to_string.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.show_brcm_avs_mode, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %brcm_avs_mode_to_string.exit

brcm_avs_mode_to_string.exit:                     ; preds = %switch.lookup, %if.end.brcm_avs_mode_to_string.exit_crit_edge
  %retval.0.i7 = phi ptr [ %switch.load, %switch.lookup ], [ null, %if.end.brcm_avs_mode_to_string.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, ptr noundef %retval.0.i7, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %brcm_avs_mode_to_string.exit, %if.then
  %retval.0 = phi i32 [ 10, %if.then ], [ %call4, %brcm_avs_mode_to_string.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_brcm_avs_pmap(ptr nocapture noundef readonly %policy, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %args.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #7
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 16)
  %call.i = call fastcc i32 @__issue_avs_command(ptr noundef %1, i32 noundef 48, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #7
  %3 = call ptr @memcpy(ptr %buf, ptr @.str.38, i32 11)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = getelementptr inbounds [4 x i32], ptr %args.i, i32 0, i32 3
  %5 = getelementptr inbounds [4 x i32], ptr %args.i, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i32], ptr %args.i, i32 0, i32 1
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %5, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #7
  %shr.i = lshr i32 %10, 16
  %and.i = and i32 %shr.i, 255
  %shr1.i = lshr i32 %10, 10
  %and2.i = and i32 %shr1.i, 15
  %and4.i = and i32 %10, 1023
  %shr.i14 = lshr i32 %12, 24
  %shr1.i15 = lshr i32 %12, 16
  %and2.i16 = and i32 %shr1.i15, 255
  %shr3.i = lshr i32 %12, 8
  %and4.i17 = and i32 %shr3.i, 255
  %and6.i = and i32 %12, 255
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.47, i32 noundef %10, i32 noundef %12, i32 noundef %and4.i, i32 noundef %and2.i, i32 noundef %and.i, i32 noundef %and6.i, i32 noundef %and4.i17, i32 noundef %and2.i16, i32 noundef %shr.i14, i32 noundef %8, i32 noundef %14)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 10, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_brcm_avs_voltage(ptr nocapture noundef readonly %policy, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !125
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.49, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_brcm_avs_frequency(ptr nocapture noundef readonly %policy, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 80
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !125
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mul.i = mul i32 %5, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.49, i32 noundef %mul.i)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !79, !81, !83, !84, !86, !88, !90, !91, !93, !95, !97, !99, !101, !103, !104, !106, !108, !109, !111, !113, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_brcmstb_avs_cpufreq__199_778_brcm_avs_cpufreq_platdrv_init6, !1, !"__initcall__kmod_brcmstb_avs_cpufreq__199_778_brcm_avs_cpufreq_platdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 778, i32 1}
!2 = !{ptr @__exitcall_brcm_avs_cpufreq_platdrv_exit, !1, !"__exitcall_brcm_avs_cpufreq_platdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author200, !4, !"__UNIQUE_ID_author200", i1 false, i1 false}
!4 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 780, i32 1}
!5 = !{ptr @__UNIQUE_ID_description201, !6, !"__UNIQUE_ID_description201", i1 false, i1 false}
!6 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 781, i32 1}
!7 = !{ptr @__UNIQUE_ID_file202, !8, !"__UNIQUE_ID_file202", i1 false, i1 false}
!8 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 782, i32 1}
!9 = !{ptr @__UNIQUE_ID_license203, !8, !"__UNIQUE_ID_license203", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 772, i32 11}
!12 = !{ptr @brcm_avs_cpufreq_platdrv, !13, !"brcm_avs_cpufreq_platdrv", i1 false, i1 false}
!13 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 770, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 560, i32 28}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 562, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @brcm_avs_prepare_init._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @brcm_avs_prepare_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 567, i32 37}
!26 = !{ptr @brcm_avs_prepare_init._entry.8, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 569, i32 3}
!28 = !{ptr @brcm_avs_prepare_init._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 575, i32 49}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 581, i32 3}
!33 = !{ptr @brcm_avs_prepare_init._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @brcm_avs_prepare_init._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 589, i32 2}
!37 = !{ptr @brcm_avs_prepare_init._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @brcm_avs_prepare_init._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @sema_init.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!45 = !{ptr @init_completion.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../include/linux/completion.h", i32 87, i32 2}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 276, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @__issue_avs_command._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @__issue_avs_command._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 278, i32 3}
!55 = !{ptr @__issue_avs_command._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @__issue_avs_command._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @brcm_avs_driver, !58, !"brcm_avs_driver", i1 false, i1 false}
!58 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 723, i32 30}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 626, i32 3}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @brcm_avs_cpufreq_init._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @brcm_avs_cpufreq_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 642, i32 4}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @brcm_avs_cpufreq_init._entry.27, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @brcm_avs_cpufreq_init._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 647, i32 2}
!71 = !{ptr @brcm_avs_cpufreq_init._entry.31, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @brcm_avs_cpufreq_init._entry_ptr.33, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 532, i32 3}
!75 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @brcm_avs_resume._entry, !74, !"_entry", i1 false, i1 false}
!78 = !{ptr @brcm_avs_resume._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @brcm_avs_cpufreq_attr, !80, !"brcm_avs_cpufreq_attr", i1 false, i1 false}
!80 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 713, i32 26}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 707, i32 1}
!83 = !{ptr @brcm_avs_pstate, !82, !"brcm_avs_pstate", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 658, i32 23}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 660, i32 22}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 708, i32 1}
!90 = !{ptr @brcm_avs_mode, !89, !"brcm_avs_mode", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 671, i32 22}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 330, i32 10}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 332, i32 10}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 334, i32 10}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 336, i32 10}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 709, i32 1}
!103 = !{ptr @brcm_avs_pmap, !102, !"brcm_avs_pmap", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 688, i32 22}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 710, i32 1}
!108 = !{ptr @brcm_avs_voltage, !107, !"brcm_avs_voltage", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 697, i32 22}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 711, i32 1}
!113 = !{ptr @brcm_avs_frequency, !112, !"brcm_avs_frequency", i1 false, i1 false}
!114 = !{ptr @brcm_avs_cpufreq_match, !115, !"brcm_avs_cpufreq_match", i1 false, i1 false}
!115 = !{!"../drivers/cpufreq/brcmstb-avs-cpufreq.c", i32 764, i32 34}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i64 5219528}
!126 = !{i64 2153325901}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 2153316996}
!129 = !{i64 2153317224}
!130 = !{i64 5219110}
!131 = !{i64 2153317734}
!132 = !{i64 2153318170}
!133 = !{i64 2153318676}
!134 = !{i64 2153316523}
!135 = !{i64 2153319406}
!136 = !{i64 2153323697}
!137 = !{i64 2153323916}
!138 = !{i64 2153325170}
!139 = !{i64 2153324703}
