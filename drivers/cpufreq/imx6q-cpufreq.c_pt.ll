; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/imx6q-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/imx6q-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_imx6q_cpufreq__302_544_imx6q_cpufreq_platdrv_init6 = internal global ptr @imx6q_cpufreq_platdrv_init, section ".initcall6.init", align 4
@imx6q_cpufreq_platdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx6q_cpufreq_probe, ptr @imx6q_cpufreq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx6q_cpufreq_platdrv_exit = internal global ptr @imx6q_cpufreq_platdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias303 = internal constant [43 x i8] c"imx6q_cpufreq.alias=platform:imx6q-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [54 x i8] c"imx6q_cpufreq.author=Shawn Guo <shawn.guo@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [58 x i8] c"imx6q_cpufreq.description=Freescale i.MX6Q cpufreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [49 x i8] c"imx6q_cpufreq.file=drivers/cpufreq/imx6q-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [26 x i8] c"imx6q_cpufreq.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx6q-cpufreq\00", [18 x i8] zeroinitializer }, align 32
@cpu_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@imx6q_cpufreq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013failed to get cpu0 device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx6q_cpufreq_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/cpufreq/imx6q-cpufreq.c\00", [32 x i8] zeroinitializer }, align 32
@imx6q_cpufreq_probe._entry_ptr = internal global ptr @imx6q_cpufreq_probe._entry, section ".printk_index", align 4
@imx6q_cpufreq_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 356, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find cpu0 node\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx6q_cpufreq_probe._entry_ptr.8 = internal global ptr @imx6q_cpufreq_probe._entry.4, section ".printk_index", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx6ul\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl,imx6ull\00", [20 x i8] zeroinitializer }, align 32
@num_clks = internal global { i32, [28 x i8] } zeroinitializer, align 32
@clks = internal global { [7 x %struct.clk_bulk_data], [40 x i8] } { [7 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.11, ptr null }, %struct.clk_bulk_data { ptr @.str.40, ptr null }, %struct.clk_bulk_data { ptr @.str.41, ptr null }, %struct.clk_bulk_data { ptr @.str.42, ptr null }, %struct.clk_bulk_data { ptr @.str.43, ptr null }, %struct.clk_bulk_data { ptr @.str.44, ptr null }, %struct.clk_bulk_data { ptr @.str.45, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arm\00", [28 x i8] zeroinitializer }, align 32
@arm_reg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pu\00", [29 x i8] zeroinitializer }, align 32
@pu_reg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"soc\00", [28 x i8] zeroinitializer }, align 32
@soc_reg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@imx6q_cpufreq_probe.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx6q_cpufreq\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"regulators not ready, defer\0A\00", [35 x i8] zeroinitializer }, align 32
@imx6q_cpufreq_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 381, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@imx6q_cpufreq_probe._entry_ptr.18 = internal global ptr @imx6q_cpufreq_probe._entry.16, section ".printk_index", align 4
@imx6q_cpufreq_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 388, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to init OPP table: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@imx6q_cpufreq_probe._entry_ptr.21 = internal global ptr @imx6q_cpufreq_probe._entry.19, section ".printk_index", align 4
@imx6q_cpufreq_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 401, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to read ocotp: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@imx6q_cpufreq_probe._entry_ptr.24 = internal global ptr @imx6q_cpufreq_probe._entry.22, section ".printk_index", align 4
@imx6q_cpufreq_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 408, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no OPP table is found: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@imx6q_cpufreq_probe._entry_ptr.27 = internal global ptr @imx6q_cpufreq_probe._entry.25, section ".printk_index", align 4
@freq_table = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@imx6q_cpufreq_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 414, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to init cpufreq table: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@imx6q_cpufreq_probe._entry_ptr.30 = internal global ptr @imx6q_cpufreq_probe._entry.28, section ".printk_index", align 4
@imx6_soc_volt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsl,soc-operating-points\00", [39 x i8] zeroinitializer }, align 32
@soc_opp_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@imx6q_cpufreq_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 453, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"can NOT find valid fsl,soc-operating-points property in dtb, use default value!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx6q_cpufreq_probe._entry_ptr.35 = internal global ptr @imx6q_cpufreq_probe._entry.32, section ".printk_index", align 4
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clock-latency\00", [18 x i8] zeroinitializer }, align 32
@transition_latency = internal global { i32, [28 x i8] } zeroinitializer, align 32
@max_freq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@imx6q_cpufreq_driver = internal global { %struct.cpufreq_driver, [48 x i8] } { %struct.cpufreq_driver { [16 x i8] c"imx6q-cpufreq\00\00\00", i16 36, ptr null, ptr @imx6q_cpufreq_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @imx6q_set_target, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_suspend, ptr null, ptr null, ptr @cpufreq_generic_attr, i8 0, ptr null, ptr @cpufreq_register_em_with_opp }, [48 x i8] zeroinitializer }, align 32
@imx6q_cpufreq_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 496, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed register driver: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@imx6q_cpufreq_probe._entry_ptr.39 = internal global ptr @imx6q_cpufreq_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll1_sys\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"step\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll1_sw\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll2_pfd2_396m\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll2_bus\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"secondary_sel\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvmem-cells\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"speed_grade\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,imx6ul-ocotp\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,imx6ull-ocotp\00", [46 x i8] zeroinitializer }, align 32
@imx6ul_opp_check_speed_grading._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 300, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to map ocotp\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"imx6ul_opp_check_speed_grading\00", [33 x i8] zeroinitializer }, align 32
@imx6ul_opp_check_speed_grading._entry_ptr = internal global ptr @imx6ul_opp_check_speed_grading._entry, section ".printk_index", align 4
@imx6ul_opp_check_speed_grading._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 322, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to disable 696MHz OPP\0A\00", [34 x i8] zeroinitializer }, align 32
@imx6ul_opp_check_speed_grading._entry_ptr.54 = internal global ptr @imx6ul_opp_check_speed_grading._entry.52, section ".printk_index", align 4
@imx6ul_opp_check_speed_grading._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.3, i32 328, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to disable 792MHz OPP\0A\00", [34 x i8] zeroinitializer }, align 32
@imx6ul_opp_check_speed_grading._entry_ptr.57 = internal global ptr @imx6ul_opp_check_speed_grading._entry.55, section ".printk_index", align 4
@imx6ul_opp_check_speed_grading._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.3, i32 332, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to disable 900MHz OPP\0A\00", [34 x i8] zeroinitializer }, align 32
@imx6ul_opp_check_speed_grading._entry_ptr.60 = internal global ptr @imx6ul_opp_check_speed_grading._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,imx6q-ocotp\00", [16 x i8] zeroinitializer }, align 32
@imx6q_opp_check_speed_grading._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.62, ptr @.str.3, i32 237, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"imx6q_opp_check_speed_grading\00", [34 x i8] zeroinitializer }, align 32
@imx6q_opp_check_speed_grading._entry_ptr = internal global ptr @imx6q_opp_check_speed_grading._entry, section ".printk_index", align 4
@imx6q_opp_check_speed_grading._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 258, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to disable 996MHz OPP\0A\00", [34 x i8] zeroinitializer }, align 32
@imx6q_opp_check_speed_grading._entry_ptr.65 = internal global ptr @imx6q_opp_check_speed_grading._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl,imx6q\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx6qp\00", [21 x i8] zeroinitializer }, align 32
@imx6q_opp_check_speed_grading._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.62, ptr @.str.3, i32 264, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to disable 852MHz OPP\0A\00", [34 x i8] zeroinitializer }, align 32
@imx6q_opp_check_speed_grading._entry_ptr.70 = internal global ptr @imx6q_opp_check_speed_grading._entry.68, section ".printk_index", align 4
@imx6q_opp_check_speed_grading._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.62, ptr @.str.3, i32 267, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to disable 1.2GHz OPP\0A\00", [34 x i8] zeroinitializer }, align 32
@imx6q_opp_check_speed_grading._entry_ptr.73 = internal global ptr @imx6q_opp_check_speed_grading._entry.71, section ".printk_index", align 4
@cpufreq_generic_attr = external dso_local global [0 x ptr], align 4
@imx6q_set_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 72, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to find OPP for %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx6q_set_target\00", [47 x i8] zeroinitializer }, align 32
@imx6q_set_target._entry_ptr = internal global ptr @imx6q_set_target._entry, section ".printk_index", align 4
@imx6q_set_target.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.75, ptr @.str.3, ptr @.str.76, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%u MHz, %ld mV --> %u MHz, %ld mV\0A\00", [61 x i8] zeroinitializer }, align 32
@imx6q_set_target._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.75, ptr @.str.3, i32 90, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to scale vddpu up: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@imx6q_set_target._entry_ptr.79 = internal global ptr @imx6q_set_target._entry.77, section ".printk_index", align 4
@imx6q_set_target._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.75, ptr @.str.3, i32 96, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to scale vddsoc up: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@imx6q_set_target._entry_ptr.82 = internal global ptr @imx6q_set_target._entry.80, section ".printk_index", align 4
@imx6q_set_target._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.75, ptr @.str.3, i32 102, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to scale vddarm up: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@imx6q_set_target._entry_ptr.85 = internal global ptr @imx6q_set_target._entry.83, section ".printk_index", align 4
@imx6q_set_target._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.75, ptr @.str.3, i32 159, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set clock rate: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@imx6q_set_target._entry_ptr.88 = internal global ptr @imx6q_set_target._entry.86, section ".printk_index", align 4
@imx6q_set_target._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.75, ptr @.str.3, i32 163, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to restore vddarm voltage: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@imx6q_set_target._entry_ptr.91 = internal global ptr @imx6q_set_target._entry.89, section ".printk_index", align 4
@imx6q_set_target._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.75, ptr @.str.3, i32 176, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to scale vddarm down: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@imx6q_set_target._entry_ptr.94 = internal global ptr @imx6q_set_target._entry.92, section ".printk_index", align 4
@imx6q_set_target._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.75, ptr @.str.3, i32 179, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to scale vddsoc down: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@imx6q_set_target._entry_ptr.97 = internal global ptr @imx6q_set_target._entry.95, section ".printk_index", align 4
@imx6q_set_target._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.75, ptr @.str.3, i32 183, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to scale vddpu down: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@imx6q_set_target._entry_ptr.100 = internal global ptr @imx6q_set_target._entry.98, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.101 = private unnamed_addr constant [22 x i8] c"imx6q_cpufreq_platdrv\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 537, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 539, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant [8 x i8] c"cpu_dev\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 50, i32 23 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 350, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 356, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 360, i32 31 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 361, i32 31 }
@___asan_gen_.140 = private unnamed_addr constant [9 x i8] c"num_clks\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 39, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant [5 x i8] c"clks\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 40, i32 29 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 370, i32 35 }
@___asan_gen_.149 = private unnamed_addr constant [8 x i8] c"arm_reg\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 22, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 371, i32 43 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"pu_reg\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 23, i32 26 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 372, i32 35 }
@___asan_gen_.161 = private unnamed_addr constant [8 x i8] c"soc_reg\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 24, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 377, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 381, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 388, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 400, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 408, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [11 x i8] c"freq_table\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 51, i32 40 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 414, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [14 x i8] c"imx6_soc_volt\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 55, i32 13 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 426, i32 30 }
@___asan_gen_.209 = private unnamed_addr constant [14 x i8] c"soc_opp_count\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 56, i32 12 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 453, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 460, i32 31 }
@___asan_gen_.224 = private unnamed_addr constant [19 x i8] c"transition_latency\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 53, i32 21 }
@___asan_gen_.227 = private unnamed_addr constant [9 x i8] c"max_freq\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 52, i32 21 }
@___asan_gen_.230 = private unnamed_addr constant [21 x i8] c"imx6q_cpufreq_driver\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 199, i32 30 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 496, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 42, i32 10 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 43, i32 10 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 44, i32 10 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 45, i32 10 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 46, i32 10 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 47, i32 10 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 282, i32 37 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 283, i32 34 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 290, i32 44 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 293, i32 12 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 300, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 322, i32 5 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 328, i32 5 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 332, i32 5 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 230, i32 44 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 237, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 258, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 260, i32 31 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 261, i32 31 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 264, i32 5 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 267, i32 5 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 72, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 81, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 90, i32 5 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 96, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 101, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 159, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 162, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 175, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 179, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.387 = private constant [35 x i8] c"../drivers/cpufreq/imx6q-cpufreq.c\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 183, i32 5 }
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_alias303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_imx6q_cpufreq_platdrv_exit, ptr @__initcall__kmod_imx6q_cpufreq__302_544_imx6q_cpufreq_platdrv_init6, ptr @imx6q_cpufreq_platdrv_exit, ptr @imx6q_cpufreq_probe._entry, ptr @imx6q_cpufreq_probe._entry.16, ptr @imx6q_cpufreq_probe._entry.19, ptr @imx6q_cpufreq_probe._entry.22, ptr @imx6q_cpufreq_probe._entry.25, ptr @imx6q_cpufreq_probe._entry.28, ptr @imx6q_cpufreq_probe._entry.32, ptr @imx6q_cpufreq_probe._entry.37, ptr @imx6q_cpufreq_probe._entry.4, ptr @imx6q_cpufreq_probe._entry_ptr, ptr @imx6q_cpufreq_probe._entry_ptr.18, ptr @imx6q_cpufreq_probe._entry_ptr.21, ptr @imx6q_cpufreq_probe._entry_ptr.24, ptr @imx6q_cpufreq_probe._entry_ptr.27, ptr @imx6q_cpufreq_probe._entry_ptr.30, ptr @imx6q_cpufreq_probe._entry_ptr.35, ptr @imx6q_cpufreq_probe._entry_ptr.39, ptr @imx6q_cpufreq_probe._entry_ptr.8, ptr @imx6q_opp_check_speed_grading._entry, ptr @imx6q_opp_check_speed_grading._entry.63, ptr @imx6q_opp_check_speed_grading._entry.68, ptr @imx6q_opp_check_speed_grading._entry.71, ptr @imx6q_opp_check_speed_grading._entry_ptr, ptr @imx6q_opp_check_speed_grading._entry_ptr.65, ptr @imx6q_opp_check_speed_grading._entry_ptr.70, ptr @imx6q_opp_check_speed_grading._entry_ptr.73, ptr @imx6q_set_target._entry, ptr @imx6q_set_target._entry.77, ptr @imx6q_set_target._entry.80, ptr @imx6q_set_target._entry.83, ptr @imx6q_set_target._entry.86, ptr @imx6q_set_target._entry.89, ptr @imx6q_set_target._entry.92, ptr @imx6q_set_target._entry.95, ptr @imx6q_set_target._entry.98, ptr @imx6q_set_target._entry_ptr, ptr @imx6q_set_target._entry_ptr.100, ptr @imx6q_set_target._entry_ptr.79, ptr @imx6q_set_target._entry_ptr.82, ptr @imx6q_set_target._entry_ptr.85, ptr @imx6q_set_target._entry_ptr.88, ptr @imx6q_set_target._entry_ptr.91, ptr @imx6q_set_target._entry_ptr.94, ptr @imx6q_set_target._entry_ptr.97, ptr @imx6ul_opp_check_speed_grading._entry, ptr @imx6ul_opp_check_speed_grading._entry.52, ptr @imx6ul_opp_check_speed_grading._entry.55, ptr @imx6ul_opp_check_speed_grading._entry.58, ptr @imx6ul_opp_check_speed_grading._entry_ptr, ptr @imx6ul_opp_check_speed_grading._entry_ptr.54, ptr @imx6ul_opp_check_speed_grading._entry_ptr.57, ptr @imx6ul_opp_check_speed_grading._entry_ptr.60, ptr @imx6q_cpufreq_platdrv, ptr @.str, ptr @cpu_dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @num_clks, ptr @clks, ptr @.str.11, ptr @arm_reg, ptr @.str.12, ptr @pu_reg, ptr @.str.13, ptr @soc_reg, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @freq_table, ptr @.str.29, ptr @imx6_soc_volt, ptr @.str.31, ptr @soc_opp_count, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @transition_latency, ptr @max_freq, ptr @imx6q_cpufreq_driver, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_cpufreq_platdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_cpufreq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_cpufreq_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_clks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clks to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pu_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_cpufreq_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_cpufreq_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_cpufreq_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_cpufreq_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_cpufreq_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_soc_volt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_opp_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_cpufreq_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transition_latency to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_freq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_cpufreq_driver to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_cpufreq_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_opp_check_speed_grading._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_opp_check_speed_grading._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_opp_check_speed_grading._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_opp_check_speed_grading._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_opp_check_speed_grading._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_opp_check_speed_grading._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_opp_check_speed_grading._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_opp_check_speed_grading._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_set_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_set_target._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_set_target._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_set_target._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_set_target._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_set_target._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_set_target._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_set_target._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_set_target._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6q_cpufreq_platdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx6q_cpufreq_platdrv, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx6q_cpufreq_platdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx6q_cpufreq_platdrv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6q_cpufreq_probe(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_cpu_device(i32 noundef 0) #7
  store ptr %call, ptr @cpu_dev, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %cleanup199

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @of_node_get(ptr noundef %1) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load ptr, ptr @cpu_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #10
  br label %cleanup199

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

lor.lhs.false:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %spec.select = select i1 %tobool12.not, i32 5, i32 7
  br label %if.end14

if.end14:                                         ; preds = %lor.lhs.false, %if.end8.if.end14_crit_edge
  %storemerge = phi i32 [ 7, %if.end8.if.end14_crit_edge ], [ %spec.select, %lor.lhs.false ]
  store i32 %storemerge, ptr @num_clks, align 4
  %3 = load ptr, ptr @cpu_dev, align 4
  %call15 = tail call i32 @clk_bulk_get(ptr noundef %3, i32 noundef %storemerge, ptr noundef nonnull @clks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.put_node_crit_edge

if.end14.put_node_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_node

if.end18:                                         ; preds = %if.end14
  %4 = load ptr, ptr @cpu_dev, align 4
  %call19 = tail call ptr @regulator_get(ptr noundef %4, ptr noundef nonnull @.str.11) #7
  store ptr %call19, ptr @arm_reg, align 4
  %5 = load ptr, ptr @cpu_dev, align 4
  %call20 = tail call ptr @regulator_get_optional(ptr noundef %5, ptr noundef nonnull @.str.12) #7
  store ptr %call20, ptr @pu_reg, align 4
  %6 = load ptr, ptr @cpu_dev, align 4
  %call21 = tail call ptr @regulator_get(ptr noundef %6, ptr noundef nonnull @.str.13) #7
  store ptr %call21, ptr @soc_reg, align 4
  %7 = load ptr, ptr @arm_reg, align 4
  %cmp = icmp eq ptr %7, inttoptr (i32 -517 to ptr)
  %cmp25 = icmp eq ptr %call21, inttoptr (i32 -517 to ptr)
  %or.cond = select i1 %cmp, i1 true, i1 %cmp25
  br i1 %or.cond, label %if.end18.if.then29_crit_edge, label %lor.lhs.false26

if.end18.if.then29_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

lor.lhs.false26:                                  ; preds = %if.end18
  %8 = load ptr, ptr @pu_reg, align 4
  %cmp28 = icmp eq ptr %8, inttoptr (i32 -517 to ptr)
  br i1 %cmp28, label %lor.lhs.false26.if.then29_crit_edge, label %if.end40

lor.lhs.false26.if.then29_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false26.if.then29_crit_edge, %if.end18.if.then29_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx6q_cpufreq_probe.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx6q_cpufreq_probe, %if.then36)) #7
          to label %put_reg [label %if.then36], !srcloc !207

if.then36:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %9 = load ptr, ptr @cpu_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx6q_cpufreq_probe.__UNIQUE_ID_ddebug301, ptr noundef %9, ptr noundef nonnull @.str.15) #7
  br label %put_reg

if.end40:                                         ; preds = %lor.lhs.false26
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %cmp.i259 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  %or.cond269 = select i1 %cmp.i, i1 true, i1 %cmp.i259
  %10 = load ptr, ptr @cpu_dev, align 4
  br i1 %or.cond269, label %do.end47, label %if.end48

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.17) #10
  br label %put_reg

if.end48:                                         ; preds = %if.end40
  %call49 = tail call i32 @dev_pm_opp_of_add_table(ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end54, label %if.end55

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load ptr, ptr @cpu_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.20, i32 noundef %call49) #10
  br label %put_reg

if.end55:                                         ; preds = %if.end48
  %call56 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %lor.lhs.false58, label %if.end55.if.then61_crit_edge

if.end55.if.then61_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then61

lor.lhs.false58:                                  ; preds = %if.end55
  %call59 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.else63, label %lor.lhs.false58.if.then61_crit_edge

lor.lhs.false58.if.then61_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then61

if.then61:                                        ; preds = %lor.lhs.false58.if.then61_crit_edge, %if.end55.if.then61_crit_edge
  %12 = load ptr, ptr @cpu_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i, align 4, !annotation !208
  %of_node.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %14 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.46, ptr noundef null) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then61
  %call1.i = call i32 @nvmem_cell_read_u32(ptr noundef %12, ptr noundef nonnull @.str.47, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end18.i_crit_edge, label %if.then.i.imx6ul_opp_check_speed_grading.exit_crit_edge

if.then.i.imx6ul_opp_check_speed_grading.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx6ul_opp_check_speed_grading.exit

if.then.i.if.end18.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.else.i:                                        ; preds = %if.then61
  %call4.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.48) #7
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end8.i, label %if.else.i.if.end11.i_crit_edge

if.else.i.if.end11.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end8.i:                                        ; preds = %if.else.i
  %call7.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.49) #7
  %tobool9.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool9.not.i, label %if.end8.i.imx6ul_opp_check_speed_grading.exit_crit_edge, label %if.end8.i.if.end11.i_crit_edge

if.end8.i.if.end11.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end8.i.imx6ul_opp_check_speed_grading.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx6ul_opp_check_speed_grading.exit

if.end11.i:                                       ; preds = %if.end8.i.if.end11.i_crit_edge, %if.else.i.if.end11.i_crit_edge
  %np.075.i = phi ptr [ %call7.i, %if.end8.i.if.end11.i_crit_edge ], [ %call4.i, %if.else.i.if.end11.i_crit_edge ]
  %call12.i = tail call ptr @of_iomap(ptr noundef nonnull %np.075.i, i32 noundef 0) #7
  tail call void @of_node_put(ptr noundef nonnull %np.075.i) #7
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %do.end.i, label %cleanup.i

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.50) #10
  br label %imx6ul_opp_check_speed_grading.exit

cleanup.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %call12.i, i32 1088
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !209
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val.i, align 4
  tail call void @iounmap(ptr noundef nonnull %call12.i) #7
  br label %if.end18.i

if.end18.i:                                       ; preds = %cleanup.i, %if.then.i.if.end18.i_crit_edge
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %shr.i = lshr i32 %20, 16
  %and.i = and i32 %shr.i, 3
  store i32 %and.i, ptr %val.i, align 4
  %call19.i = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end31.i_crit_edge, label %if.then21.i

if.end18.i.if.end31.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then21.i:                                      ; preds = %if.end18.i
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 2
  br i1 %cmp.not.i, label %if.then21.i.if.end31.i_crit_edge, label %if.then22.i

if.then21.i.if.end31.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then22.i:                                      ; preds = %if.then21.i
  %call23.i = call i32 @dev_pm_opp_disable(ptr noundef %12, i32 noundef 696000000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.then22.i.if.end31.i_crit_edge, label %do.end28.i

if.then22.i.if.end31.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

do.end28.i:                                       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.53) #10
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end28.i, %if.then22.i.if.end31.i_crit_edge, %if.then21.i.if.end31.i_crit_edge, %if.end18.i.if.end31.i_crit_edge
  %call32.i = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.imx6ul_opp_check_speed_grading.exit_crit_edge, label %if.then34.i

if.end31.i.imx6ul_opp_check_speed_grading.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx6ul_opp_check_speed_grading.exit

if.then34.i:                                      ; preds = %if.end31.i
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp35.not.i = icmp eq i32 %24, 2
  br i1 %cmp35.not.i, label %if.then34.i.if.then46.i_crit_edge, label %if.then36.i

if.then34.i.if.then46.i_crit_edge:                ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46.i

if.then36.i:                                      ; preds = %if.then34.i
  %call37.i = call i32 @dev_pm_opp_disable(ptr noundef %12, i32 noundef 792000000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.then36.i.if.end44.i_crit_edge, label %do.end42.i

if.then36.i.if.end44.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

do.end42.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.56) #10
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end42.i, %if.then36.i.if.end44.i_crit_edge
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr.i = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i)
  %cmp45.not.i = icmp eq i32 %.pr.i, 3
  br i1 %cmp45.not.i, label %if.end44.i.imx6ul_opp_check_speed_grading.exit_crit_edge, label %if.end44.i.if.then46.i_crit_edge

if.end44.i.if.then46.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46.i

if.end44.i.imx6ul_opp_check_speed_grading.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx6ul_opp_check_speed_grading.exit

if.then46.i:                                      ; preds = %if.end44.i.if.then46.i_crit_edge, %if.then34.i.if.then46.i_crit_edge
  %call47.i = call i32 @dev_pm_opp_disable(ptr noundef %12, i32 noundef 900000000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.then46.i.imx6ul_opp_check_speed_grading.exit_crit_edge, label %do.end52.i

if.then46.i.imx6ul_opp_check_speed_grading.exit_crit_edge: ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx6ul_opp_check_speed_grading.exit

do.end52.i:                                       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.59) #10
  br label %imx6ul_opp_check_speed_grading.exit

imx6ul_opp_check_speed_grading.exit:              ; preds = %do.end52.i, %if.then46.i.imx6ul_opp_check_speed_grading.exit_crit_edge, %if.end44.i.imx6ul_opp_check_speed_grading.exit_crit_edge, %if.end31.i.imx6ul_opp_check_speed_grading.exit_crit_edge, %do.end.i, %if.end8.i.imx6ul_opp_check_speed_grading.exit_crit_edge, %if.then.i.imx6ul_opp_check_speed_grading.exit_crit_edge
  %retval.1.i = phi i32 [ %call1.i, %if.then.i.imx6ul_opp_check_speed_grading.exit_crit_edge ], [ 0, %if.end44.i.imx6ul_opp_check_speed_grading.exit_crit_edge ], [ 0, %do.end52.i ], [ 0, %if.then46.i.imx6ul_opp_check_speed_grading.exit_crit_edge ], [ 0, %if.end31.i.imx6ul_opp_check_speed_grading.exit_crit_edge ], [ -2, %if.end8.i.imx6ul_opp_check_speed_grading.exit_crit_edge ], [ -14, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end65

if.else63:                                        ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #9
  %26 = load ptr, ptr @cpu_dev, align 4
  %call64 = tail call fastcc i32 @imx6q_opp_check_speed_grading(ptr noundef %26)
  br label %if.end65

if.end65:                                         ; preds = %if.else63, %imx6ul_opp_check_speed_grading.exit
  %ret.0 = phi i32 [ %retval.1.i, %imx6ul_opp_check_speed_grading.exit ], [ %call64, %if.else63 ]
  %27 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.0, label %do.end72 [
    i32 0, label %if.end74
    i32 -517, label %if.end65.out_free_opp_crit_edge
  ]

if.end65.out_free_opp_crit_edge:                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_opp

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %28 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.23, i32 noundef %ret.0) #10
  br label %out_free_opp

if.end74:                                         ; preds = %if.end65
  %29 = load ptr, ptr @cpu_dev, align 4
  %call75 = call i32 @dev_pm_opp_get_opp_count(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  %30 = load ptr, ptr @cpu_dev, align 4
  br i1 %cmp76, label %if.then77, label %if.end81

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.26, i32 noundef %call75) #10
  br label %out_free_opp

if.end81:                                         ; preds = %if.end74
  %call82 = call i32 @dev_pm_opp_init_cpufreq_table(ptr noundef %30, ptr noundef nonnull @freq_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end88, label %do.end87

do.end87:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %31 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.29, i32 noundef %call82) #10
  br label %out_free_opp

if.end88:                                         ; preds = %if.end81
  %32 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call75, i32 4) #7
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !210

devm_kcalloc.exit.thread:                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  store ptr null, ptr @imx6_soc_volt, align 4
  br label %free_freq_table

devm_kcalloc.exit:                                ; preds = %if.end88
  %34 = load ptr, ptr @cpu_dev, align 4
  %35 = extractvalue { i32, i1 } %32, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %34, i32 noundef %35, i32 noundef 3520) #7
  store ptr %call5.i.i, ptr @imx6_soc_volt, align 4
  %cmp90 = icmp eq ptr %call5.i.i, null
  br i1 %cmp90, label %devm_kcalloc.exit.free_freq_table_crit_edge, label %if.end92

devm_kcalloc.exit.free_freq_table_crit_edge:      ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_freq_table

if.end92:                                         ; preds = %devm_kcalloc.exit
  %call93 = call ptr @of_find_property(ptr noundef nonnull %call2, ptr noundef nonnull @.str.31, ptr noundef null) #7
  %tobool94.not = icmp eq ptr %call93, null
  br i1 %tobool94.not, label %if.end92.soc_opp_out_crit_edge, label %lor.lhs.false95

if.end92.soc_opp_out_crit_edge:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %soc_opp_out

lor.lhs.false95:                                  ; preds = %if.end92
  %value = getelementptr inbounds %struct.property, ptr %call93, i32 0, i32 2
  %36 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %value, align 4
  %tobool96.not = icmp eq ptr %37, null
  br i1 %tobool96.not, label %lor.lhs.false95.soc_opp_out_crit_edge, label %if.end98

lor.lhs.false95.soc_opp_out_crit_edge:            ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #9
  br label %soc_opp_out

if.end98:                                         ; preds = %lor.lhs.false95
  %length = getelementptr inbounds %struct.property, ptr %call93, i32 0, i32 1
  %38 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length, align 4
  %40 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool99.not = icmp eq i32 %40, 0
  br i1 %tobool99.not, label %lor.lhs.false100, label %if.end98.soc_opp_out_crit_edge

if.end98.soc_opp_out_crit_edge:                   ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %soc_opp_out

lor.lhs.false100:                                 ; preds = %if.end98
  %div101258 = lshr i32 %39, 3
  %41 = add i32 %call75, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %div101258)
  %.not = icmp ult i32 %41, %div101258
  br i1 %.not, label %for.body.lr.ph, label %lor.lhs.false100.soc_opp_out_crit_edge

lor.lhs.false100.soc_opp_out_crit_edge:           ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #9
  br label %soc_opp_out

for.body.lr.ph:                                   ; preds = %lor.lhs.false100
  %soc_opp_count.promoted = load i32, ptr @soc_opp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %39)
  %cmp109271.not = icmp ult i32 %39, 8
  %umax = call i32 @llvm.umax.i32(i32 %div101258, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc120.for.body_crit_edge, %for.body.lr.ph
  %j.0279 = phi i32 [ 0, %for.body.lr.ph ], [ %inc121, %for.inc120.for.body_crit_edge ]
  %inc275277 = phi i32 [ %soc_opp_count.promoted, %for.body.lr.ph ], [ %inc274, %for.inc120.for.body_crit_edge ]
  br i1 %cmp109271.not, label %for.body.for.inc120_crit_edge, label %for.body110.lr.ph

for.body.for.inc120_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc120

for.body110.lr.ph:                                ; preds = %for.body
  %42 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %value, align 4
  %44 = load ptr, ptr @freq_table, align 4
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %44, i32 %j.0279, i32 2
  %45 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %frequency, align 4
  br label %for.body110

for.body110:                                      ; preds = %for.inc.for.body110_crit_edge, %for.body110.lr.ph
  %i.0273 = phi i32 [ 0, %for.body110.lr.ph ], [ %inc119, %for.inc.for.body110_crit_edge ]
  %val.0272 = phi ptr [ %43, %for.body110.lr.ph ], [ %incdec.ptr112, %for.inc.for.body110_crit_edge ]
  %47 = ptrtoint ptr %val.0272 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val.0272, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp114 = icmp eq i32 %46, %48
  br i1 %cmp114, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr = getelementptr i32, ptr %val.0272, i32 1
  %49 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %incdec.ptr, align 4
  %51 = load ptr, ptr @imx6_soc_volt, align 4
  %inc = add i32 %inc275277, 1
  store i32 %inc, ptr @soc_opp_count, align 4
  %arrayidx116 = getelementptr i32, ptr %51, i32 %inc275277
  %52 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %50, ptr %arrayidx116, align 4
  br label %for.inc120

for.inc:                                          ; preds = %for.body110
  %incdec.ptr112 = getelementptr i32, ptr %val.0272, i32 2
  %inc119 = add nuw nsw i32 %i.0273, 1
  %exitcond.not = icmp eq i32 %inc119, %umax
  br i1 %exitcond.not, label %for.inc.for.inc120_crit_edge, label %for.inc.for.body110_crit_edge

for.inc.for.body110_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body110

for.inc.for.inc120_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc120

for.inc120:                                       ; preds = %for.inc.for.inc120_crit_edge, %cleanup, %for.body.for.inc120_crit_edge
  %inc274 = phi i32 [ %inc, %cleanup ], [ %inc275277, %for.body.for.inc120_crit_edge ], [ %inc275277, %for.inc.for.inc120_crit_edge ]
  %inc121 = add nuw i32 %j.0279, 1
  %exitcond285.not = icmp eq i32 %inc121, %call75
  br i1 %exitcond285.not, label %for.inc120.soc_opp_out_crit_edge, label %for.inc120.for.body_crit_edge

for.inc120.for.body_crit_edge:                    ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc120.soc_opp_out_crit_edge:                 ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #9
  br label %soc_opp_out

soc_opp_out:                                      ; preds = %for.inc120.soc_opp_out_crit_edge, %lor.lhs.false100.soc_opp_out_crit_edge, %if.end98.soc_opp_out_crit_edge, %lor.lhs.false95.soc_opp_out_crit_edge, %if.end92.soc_opp_out_crit_edge
  %53 = load i32, ptr @soc_opp_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %call75)
  %cmp123.not = icmp eq i32 %53, %call75
  br i1 %cmp123.not, label %soc_opp_out.if.end142_crit_edge, label %do.end127

soc_opp_out.if.end142_crit_edge:                  ; preds = %soc_opp_out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

do.end127:                                        ; preds = %soc_opp_out
  %54 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp129282.not = icmp eq i32 %call75, 0
  br i1 %cmp129282.not, label %do.end127.for.end134_crit_edge, label %for.body130.lr.ph

do.end127.for.end134_crit_edge:                   ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end134

for.body130.lr.ph:                                ; preds = %do.end127
  %55 = load ptr, ptr @imx6_soc_volt, align 4
  br label %for.body130

for.body130:                                      ; preds = %for.body130.for.body130_crit_edge, %for.body130.lr.ph
  %j.1283 = phi i32 [ 0, %for.body130.lr.ph ], [ %inc133, %for.body130.for.body130_crit_edge ]
  %arrayidx131 = getelementptr i32, ptr %55, i32 %j.1283
  %56 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1250000, ptr %arrayidx131, align 4
  %inc133 = add nuw i32 %j.1283, 1
  %exitcond286.not = icmp eq i32 %inc133, %call75
  br i1 %exitcond286.not, label %for.body130.for.end134_crit_edge, label %for.body130.for.body130_crit_edge

for.body130.for.body130_crit_edge:                ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body130

for.body130.for.end134_crit_edge:                 ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end134

for.end134:                                       ; preds = %for.body130.for.end134_crit_edge, %do.end127.for.end134_crit_edge
  %57 = load ptr, ptr @freq_table, align 4
  %sub = add i32 %call75, -1
  %frequency136 = getelementptr %struct.cpufreq_frequency_table, ptr %57, i32 %sub, i32 2
  %58 = ptrtoint ptr %frequency136 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %frequency136, align 4
  %mul = mul i32 %59, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000000, i32 %mul)
  %cmp137 = icmp eq i32 %mul, 1200000000
  br i1 %cmp137, label %if.then138, label %for.end134.if.end142_crit_edge

for.end134.if.end142_crit_edge:                   ; preds = %for.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.then138:                                       ; preds = %for.end134
  call void @__sanitizer_cov_trace_pc() #9
  %60 = load ptr, ptr @imx6_soc_volt, align 4
  %arrayidx140 = getelementptr i32, ptr %60, i32 %sub
  %61 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1275000, ptr %arrayidx140, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then138, %for.end134.if.end142_crit_edge, %soc_opp_out.if.end142_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call2, ptr noundef nonnull @.str.36, ptr noundef nonnull @transition_latency, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool144.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool144.not, label %if.end142.if.end146_crit_edge, label %if.then145

if.end142.if.end146_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.then145:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  store i32 -1, ptr @transition_latency, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.end142.if.end146_crit_edge
  %62 = load ptr, ptr @soc_reg, align 4
  %63 = load ptr, ptr @imx6_soc_volt, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %sub148 = add i32 %call75, -1
  %arrayidx149 = getelementptr i32, ptr %63, i32 %sub148
  %66 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx149, align 4
  %call150 = call i32 @regulator_set_voltage_time(ptr noundef %62, i32 noundef %65, i32 noundef %67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151 = icmp sgt i32 %call150, 0
  br i1 %cmp151, label %if.then152, label %if.end146.if.end154_crit_edge

if.end146.if.end154_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.then152:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  %mul153 = mul i32 %call150, 1000
  %68 = load i32, ptr @transition_latency, align 4
  %add = add i32 %68, %mul153
  store i32 %add, ptr @transition_latency, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %if.end146.if.end154_crit_edge
  %69 = load ptr, ptr @pu_reg, align 4
  %cmp.i260 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i260, label %if.end154.if.end166_crit_edge, label %if.then156

if.end154.if.end166_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166

if.then156:                                       ; preds = %if.end154
  %70 = load ptr, ptr @imx6_soc_volt, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %arrayidx159 = getelementptr i32, ptr %70, i32 %sub148
  %73 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx159, align 4
  %call160 = call i32 @regulator_set_voltage_time(ptr noundef %69, i32 noundef %72, i32 noundef %74) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %cmp161 = icmp sgt i32 %call160, 0
  br i1 %cmp161, label %if.then162, label %if.then156.if.end166_crit_edge

if.then156.if.end166_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166

if.then162:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #9
  %mul163 = mul i32 %call160, 1000
  %75 = load i32, ptr @transition_latency, align 4
  %add164 = add i32 %75, %mul163
  store i32 %add164, ptr @transition_latency, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then162, %if.then156.if.end166_crit_edge, %if.end154.if.end166_crit_edge
  %76 = load ptr, ptr @freq_table, align 4
  %frequency168 = getelementptr %struct.cpufreq_frequency_table, ptr %76, i32 %sub148, i32 2
  %77 = ptrtoint ptr %frequency168 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %frequency168, align 4
  store i32 %78, ptr @max_freq, align 4
  %79 = load ptr, ptr @cpu_dev, align 4
  %frequency170 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %76, i32 0, i32 2
  %80 = ptrtoint ptr %frequency170 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %frequency170, align 4
  %mul171 = mul i32 %81, 1000
  %call172 = call ptr @dev_pm_opp_find_freq_exact(ptr noundef %79, i32 noundef %mul171, i1 noundef zeroext true) #7
  %call173 = call i32 @dev_pm_opp_get_voltage(ptr noundef %call172) #7
  call void @dev_pm_opp_put(ptr noundef %call172) #7
  %82 = load ptr, ptr @cpu_dev, align 4
  %83 = load i32, ptr @max_freq, align 4
  %mul174 = mul i32 %83, 1000
  %call175 = call ptr @dev_pm_opp_find_freq_exact(ptr noundef %82, i32 noundef %mul174, i1 noundef zeroext true) #7
  %call176 = call i32 @dev_pm_opp_get_voltage(ptr noundef %call175) #7
  call void @dev_pm_opp_put(ptr noundef %call175) #7
  %84 = load ptr, ptr @arm_reg, align 4
  %call177 = call i32 @regulator_set_voltage_time(ptr noundef %84, i32 noundef %call173, i32 noundef %call176) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %cmp178 = icmp sgt i32 %call177, 0
  br i1 %cmp178, label %if.then179, label %if.end166.if.end182_crit_edge

if.end166.if.end182_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end182

if.then179:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  %mul180 = mul i32 %call177, 1000
  %85 = load i32, ptr @transition_latency, align 4
  %add181 = add i32 %85, %mul180
  store i32 %add181, ptr @transition_latency, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.then179, %if.end166.if.end182_crit_edge
  %call183 = call i32 @cpufreq_register_driver(ptr noundef nonnull @imx6q_cpufreq_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end189, label %do.end188

do.end188:                                        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #9
  %86 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.38, i32 noundef %call183) #10
  br label %free_freq_table

if.end189:                                        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %call2) #7
  br label %cleanup199

free_freq_table:                                  ; preds = %do.end188, %devm_kcalloc.exit.free_freq_table_crit_edge, %devm_kcalloc.exit.thread
  %ret.1 = phi i32 [ %call183, %do.end188 ], [ -12, %devm_kcalloc.exit.free_freq_table_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  %87 = load ptr, ptr @cpu_dev, align 4
  call void @dev_pm_opp_free_cpufreq_table(ptr noundef %87, ptr noundef nonnull @freq_table) #7
  br label %out_free_opp

out_free_opp:                                     ; preds = %free_freq_table, %do.end87, %if.then77, %do.end72, %if.end65.out_free_opp_crit_edge
  %ret.2 = phi i32 [ %ret.0, %do.end72 ], [ %call75, %if.then77 ], [ %call82, %do.end87 ], [ %ret.1, %free_freq_table ], [ %ret.0, %if.end65.out_free_opp_crit_edge ]
  %88 = load ptr, ptr @cpu_dev, align 4
  call void @dev_pm_opp_of_remove_table(ptr noundef %88) #7
  br label %put_reg

put_reg:                                          ; preds = %out_free_opp, %do.end54, %do.end47, %if.then36, %if.then29
  %ret.3 = phi i32 [ -517, %if.then36 ], [ -2, %do.end47 ], [ %call49, %do.end54 ], [ %ret.2, %out_free_opp ], [ -517, %if.then29 ]
  %89 = load ptr, ptr @arm_reg, align 4
  %cmp.i261 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i261, label %put_reg.if.end192_crit_edge, label %if.then191

put_reg.if.end192_crit_edge:                      ; preds = %put_reg
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192

if.then191:                                       ; preds = %put_reg
  call void @__sanitizer_cov_trace_pc() #9
  call void @regulator_put(ptr noundef %89) #7
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %put_reg.if.end192_crit_edge
  %90 = load ptr, ptr @pu_reg, align 4
  %cmp.i262 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i262, label %if.end192.if.end195_crit_edge, label %if.then194

if.end192.if.end195_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

if.then194:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  call void @regulator_put(ptr noundef %90) #7
  br label %if.end195

if.end195:                                        ; preds = %if.then194, %if.end192.if.end195_crit_edge
  %91 = load ptr, ptr @soc_reg, align 4
  %cmp.i263 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i263, label %if.end195.if.end198_crit_edge, label %if.then197

if.end195.if.end198_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end198

if.then197:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  call void @regulator_put(ptr noundef %91) #7
  br label %if.end198

if.end198:                                        ; preds = %if.then197, %if.end195.if.end198_crit_edge
  %92 = load i32, ptr @num_clks, align 4
  call void @clk_bulk_put(i32 noundef %92, ptr noundef nonnull @clks) #7
  br label %put_node

put_node:                                         ; preds = %if.end198, %if.end14.put_node_crit_edge
  %ret.4 = phi i32 [ %call15, %if.end14.put_node_crit_edge ], [ %ret.3, %if.end198 ]
  call void @of_node_put(ptr noundef nonnull %call2) #7
  br label %cleanup199

cleanup199:                                       ; preds = %put_node, %if.end189, %do.end7, %do.end
  %retval.0 = phi i32 [ %ret.4, %put_node ], [ 0, %if.end189 ], [ -2, %do.end7 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6q_cpufreq_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @imx6q_cpufreq_driver) #7
  %0 = load ptr, ptr @cpu_dev, align 4
  tail call void @dev_pm_opp_free_cpufreq_table(ptr noundef %0, ptr noundef nonnull @freq_table) #7
  %1 = load ptr, ptr @cpu_dev, align 4
  tail call void @dev_pm_opp_of_remove_table(ptr noundef %1) #7
  %2 = load ptr, ptr @arm_reg, align 4
  tail call void @regulator_put(ptr noundef %2) #7
  %3 = load ptr, ptr @pu_reg, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @regulator_put(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = load ptr, ptr @soc_reg, align 4
  tail call void @regulator_put(ptr noundef %4) #7
  %5 = load i32, ptr @num_clks, align 4
  tail call void @clk_bulk_put(i32 noundef %5, ptr noundef nonnull @clks) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx6q_opp_check_speed_grading(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !208
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.46, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @nvmem_cell_read_u32(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end13_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.else:                                          ; preds = %entry
  %call4 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.61) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.else.cleanup_crit_edge, label %if.end7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.else
  %call8 = tail call ptr @of_iomap(ptr noundef nonnull %call4, i32 noundef 0) #7
  tail call void @of_node_put(ptr noundef nonnull %call4) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %call8, i32 1088
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !209
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val, align 4
  tail call void @iounmap(ptr noundef nonnull %call8) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.then.if.end13_crit_edge
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %shr = lshr i32 %7, 16
  %and = and i32 %shr, 3
  store i32 %and, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp = icmp ult i32 %and, 2
  br i1 %cmp, label %if.then14, label %if.end13.if.end22_crit_edge

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then14:                                        ; preds = %if.end13
  %call15 = call i32 @dev_pm_opp_disable(ptr noundef %dev, i32 noundef 996000000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end22_crit_edge, label %do.end20

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.64) #10
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %if.then14.if.end22_crit_edge, %if.end13.if.end22_crit_edge
  %call23 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %lor.lhs.false, label %if.end22.if.then27_crit_edge

if.end22.if.then27_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end22
  %call25 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then27_crit_edge

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end22.if.then27_crit_edge
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp28.not = icmp eq i32 %9, 1
  br i1 %cmp28.not, label %if.then27.if.then39_crit_edge, label %if.then29

if.then27.if.then39_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

if.then29:                                        ; preds = %if.then27
  %call30 = call i32 @dev_pm_opp_disable(ptr noundef %dev, i32 noundef 852000000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.if.end37_crit_edge, label %do.end35

if.then29.if.end37_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end35:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.69) #10
  br label %if.end37

if.end37:                                         ; preds = %do.end35, %if.then29.if.end37_crit_edge
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp38.not = icmp eq i32 %.pr, 3
  br i1 %cmp38.not, label %if.end37.cleanup_crit_edge, label %if.end37.if.then39_crit_edge

if.end37.if.then39_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then39:                                        ; preds = %if.end37.if.then39_crit_edge, %if.then27.if.then39_crit_edge
  %call40 = call i32 @dev_pm_opp_disable(ptr noundef %dev, i32 noundef 1200000000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then39.cleanup_crit_edge, label %do.end45

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end45:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.72) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.then39.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end ], [ %call1, %if.then.cleanup_crit_edge ], [ -2, %if.else.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ 0, %do.end45 ], [ 0, %if.then39.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_init_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_exact(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_free_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_of_remove_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_put(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmem_cell_read_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6q_cpufreq_init(ptr noundef %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 0, i32 1), align 4
  %clk = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 5
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %clk, align 4
  %2 = load ptr, ptr @freq_table, align 4
  %3 = load i32, ptr @transition_latency, align 4
  tail call void @cpufreq_generic_init(ptr noundef %policy, ptr noundef %2, i32 noundef %3) #7
  %4 = load i32, ptr @max_freq, align 4
  %suspend_freq = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 10
  %5 = ptrtoint ptr %suspend_freq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %suspend_freq, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6q_set_target(ptr nocapture noundef readnone %policy, i32 noundef %index) #2 align 64 {
entry:
  %freq_hz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq_hz) #7
  %0 = load ptr, ptr @freq_table, align 4
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %0, i32 %index, i32 2
  %1 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %frequency, align 4
  %mul = mul i32 %2, 1000
  %3 = ptrtoint ptr %freq_hz to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul, ptr %freq_hz, align 4
  %4 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 0, i32 1), align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %4) #7
  %div = udiv i32 %call, 1000
  %5 = load ptr, ptr @cpu_dev, align 4
  %call1 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %5, ptr noundef nonnull %freq_hz) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = load ptr, ptr @cpu_dev, align 4
  %7 = ptrtoint ptr %freq_hz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %freq_hz, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.74, i32 noundef %8) #10
  %9 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @dev_pm_opp_get_voltage(ptr noundef %call1) #7
  call void @dev_pm_opp_put(ptr noundef %call1) #7
  %10 = load ptr, ptr @arm_reg, align 4
  %call5 = call i32 @regulator_get_voltage(ptr noundef %10) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx6q_set_target.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx6q_set_target, %if.then10)) #7
          to label %do.end17 [label %if.then10], !srcloc !207

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load ptr, ptr @cpu_dev, align 4
  %div11 = udiv i32 %call, 1000000
  %div12 = udiv i32 %call5, 1000
  %div13 = udiv i32 %2, 1000
  %div14 = udiv i32 %call4, 1000
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx6q_set_target.__UNIQUE_ID_ddebug300, ptr noundef %11, ptr noundef nonnull @.str.76, i32 noundef %div11, i32 noundef %div12, i32 noundef %div13, i32 noundef %div14) #7
  br label %do.end17

do.end17:                                         ; preds = %if.then10, %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %div)
  %cmp = icmp ugt i32 %2, %div
  br i1 %cmp, label %if.then18, label %do.end17.if.end45_crit_edge

do.end17.if.end45_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then18:                                        ; preds = %do.end17
  %12 = load ptr, ptr @pu_reg, align 4
  %cmp.i173 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.then18.if.end29_crit_edge, label %if.then20

if.then18.if.end29_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then20:                                        ; preds = %if.then18
  %13 = load ptr, ptr @imx6_soc_volt, align 4
  %arrayidx21 = getelementptr i32, ptr %13, i32 %index
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx21, align 4
  %call.i = call i32 @regulator_set_voltage(ptr noundef %12, i32 noundef %15, i32 noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i174 = icmp eq i32 %call.i, 0
  br i1 %cmp.i174, label %if.then20.if.end29_crit_edge, label %regulator_set_voltage_tol.exit

if.then20.if.end29_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

regulator_set_voltage_tol.exit:                   ; preds = %if.then20
  %call2.i = call i32 @regulator_set_voltage(ptr noundef %12, i32 noundef %15, i32 noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool23.not = icmp eq i32 %call2.i, 0
  br i1 %tobool23.not, label %regulator_set_voltage_tol.exit.if.end29_crit_edge, label %do.end27

regulator_set_voltage_tol.exit.if.end29_crit_edge: ; preds = %regulator_set_voltage_tol.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end27:                                         ; preds = %regulator_set_voltage_tol.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.78, i32 noundef %call2.i) #10
  br label %cleanup

if.end29:                                         ; preds = %regulator_set_voltage_tol.exit.if.end29_crit_edge, %if.then20.if.end29_crit_edge, %if.then18.if.end29_crit_edge
  %17 = load ptr, ptr @soc_reg, align 4
  %18 = load ptr, ptr @imx6_soc_volt, align 4
  %arrayidx30 = getelementptr i32, ptr %18, i32 %index
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx30, align 4
  %call.i176 = call i32 @regulator_set_voltage(ptr noundef %17, i32 noundef %20, i32 noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %cmp.i177 = icmp eq i32 %call.i176, 0
  br i1 %cmp.i177, label %if.end29.if.end37_crit_edge, label %regulator_set_voltage_tol.exit181

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

regulator_set_voltage_tol.exit181:                ; preds = %if.end29
  %call2.i178 = call i32 @regulator_set_voltage(ptr noundef %17, i32 noundef %20, i32 noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i178)
  %tobool32.not = icmp eq i32 %call2.i178, 0
  br i1 %tobool32.not, label %regulator_set_voltage_tol.exit181.if.end37_crit_edge, label %do.end36

regulator_set_voltage_tol.exit181.if.end37_crit_edge: ; preds = %regulator_set_voltage_tol.exit181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end36:                                         ; preds = %regulator_set_voltage_tol.exit181
  call void @__sanitizer_cov_trace_pc() #9
  %21 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.81, i32 noundef %call2.i178) #10
  br label %cleanup

if.end37:                                         ; preds = %regulator_set_voltage_tol.exit181.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  %22 = load ptr, ptr @arm_reg, align 4
  %call.i182 = call i32 @regulator_set_voltage(ptr noundef %22, i32 noundef %call4, i32 noundef %call4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp.i183 = icmp eq i32 %call.i182, 0
  br i1 %cmp.i183, label %if.end37.if.end45_crit_edge, label %regulator_set_voltage_tol.exit187

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

regulator_set_voltage_tol.exit187:                ; preds = %if.end37
  %call2.i184 = call i32 @regulator_set_voltage(ptr noundef %22, i32 noundef %call4, i32 noundef %call4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i184)
  %tobool39.not = icmp eq i32 %call2.i184, 0
  br i1 %tobool39.not, label %regulator_set_voltage_tol.exit187.if.end45_crit_edge, label %do.end43

regulator_set_voltage_tol.exit187.if.end45_crit_edge: ; preds = %regulator_set_voltage_tol.exit187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.end43:                                         ; preds = %regulator_set_voltage_tol.exit187
  call void @__sanitizer_cov_trace_pc() #9
  %23 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.84, i32 noundef %call2.i184) #10
  br label %cleanup

if.end45:                                         ; preds = %regulator_set_voltage_tol.exit187.if.end45_crit_edge, %if.end37.if.end45_crit_edge, %do.end17.if.end45_crit_edge
  %call46 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %lor.lhs.false, label %if.end45.if.then50_crit_edge

if.end45.if.then50_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

lor.lhs.false:                                    ; preds = %if.end45
  %call48 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.else69, label %lor.lhs.false.if.then50_crit_edge

lor.lhs.false.if.then50_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

if.then50:                                        ; preds = %lor.lhs.false.if.then50_crit_edge, %if.end45.if.then50_crit_edge
  %24 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 0, i32 1), align 4
  %shr = lshr i32 %div, 1
  %mul51 = mul nuw nsw i32 %shr, 1000
  %call52 = call i32 @clk_set_rate(ptr noundef %24, i32 noundef %mul51) #7
  %25 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 3, i32 1), align 4
  %26 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 1, i32 1), align 4
  %call53 = call i32 @clk_set_parent(ptr noundef %25, ptr noundef %26) #7
  %27 = ptrtoint ptr %freq_hz to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %freq_hz, align 4
  %29 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 4, i32 1), align 4
  %call54 = call i32 @clk_get_rate(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %call54)
  %cmp55 = icmp ugt i32 %28, %call54
  %30 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 6, i32 1), align 4
  %.val = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 5, i32 1), align 4
  %.val230 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 4, i32 1), align 4
  %31 = select i1 %cmp55, ptr %.val, ptr %.val230
  %call58 = call i32 @clk_set_parent(ptr noundef %30, ptr noundef %31) #7
  %32 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 2, i32 1), align 4
  %33 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 6, i32 1), align 4
  %call60 = call i32 @clk_set_parent(ptr noundef %32, ptr noundef %33) #7
  %34 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 3, i32 1), align 4
  %35 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 2, i32 1), align 4
  %call61 = call i32 @clk_set_parent(ptr noundef %34, ptr noundef %35) #7
  %36 = ptrtoint ptr %freq_hz to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %freq_hz, align 4
  %38 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 5, i32 1), align 4
  %call62 = call i32 @clk_get_rate(ptr noundef %38) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %call62)
  %cmp63 = icmp ugt i32 %37, %call62
  br i1 %cmp63, label %if.then64, label %if.then50.if.end81_crit_edge

if.then50.if.end81_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then64:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  %39 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 1, i32 1), align 4
  %call66 = call i32 @clk_set_rate(ptr noundef %39, i32 noundef %mul) #7
  %40 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 3, i32 1), align 4
  %41 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 1, i32 1), align 4
  %call67 = call i32 @clk_set_parent(ptr noundef %40, ptr noundef %41) #7
  br label %if.end81

if.else69:                                        ; preds = %lor.lhs.false
  %42 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 2, i32 1), align 4
  %43 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 4, i32 1), align 4
  %call70 = call i32 @clk_set_parent(ptr noundef %42, ptr noundef %43) #7
  %44 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 3, i32 1), align 4
  %45 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 2, i32 1), align 4
  %call71 = call i32 @clk_set_parent(ptr noundef %44, ptr noundef %45) #7
  %46 = ptrtoint ptr %freq_hz to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %freq_hz, align 4
  %48 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 4, i32 1), align 4
  %call72 = call i32 @clk_get_rate(ptr noundef %48) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %call72)
  %cmp73 = icmp ugt i32 %47, %call72
  %49 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 1, i32 1), align 4
  br i1 %cmp73, label %if.then74, label %if.else78

if.then74:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #9
  %call76 = call i32 @clk_set_rate(ptr noundef %49, i32 noundef %mul) #7
  %50 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 3, i32 1), align 4
  %51 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 1, i32 1), align 4
  %call77 = call i32 @clk_set_parent(ptr noundef %50, ptr noundef %51) #7
  br label %if.end81

if.else78:                                        ; preds = %if.else69
  %call.i188 = call i32 @clk_prepare(ptr noundef %49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool.not.i = icmp eq i32 %call.i188, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else78.if.end81_crit_edge

if.else78.if.end81_crit_edge:                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.end.i:                                         ; preds = %if.else78
  %call1.i = call i32 @clk_enable(ptr noundef %49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end81_crit_edge, label %if.then3.i

if.end.i.if.end81_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %49) #7
  br label %if.end81

if.end81:                                         ; preds = %if.then3.i, %if.end.i.if.end81_crit_edge, %if.else78.if.end81_crit_edge, %if.then74, %if.then64, %if.then50.if.end81_crit_edge
  %pll1_sys_temp_enabled.0.off0 = phi i1 [ false, %if.then64 ], [ false, %if.then50.if.end81_crit_edge ], [ false, %if.then74 ], [ true, %if.else78.if.end81_crit_edge ], [ true, %if.end.i.if.end81_crit_edge ], [ true, %if.then3.i ]
  %52 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 0, i32 1), align 4
  %call83 = call i32 @clk_set_rate(ptr noundef %52, i32 noundef %mul) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end96, label %if.then85

if.then85:                                        ; preds = %if.end81
  %53 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.87, i32 noundef %call83) #10
  %54 = load ptr, ptr @arm_reg, align 4
  %call.i189 = call i32 @regulator_set_voltage(ptr noundef %54, i32 noundef %call5, i32 noundef %call5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %cmp.i190 = icmp eq i32 %call.i189, 0
  br i1 %cmp.i190, label %if.then85.cleanup_crit_edge, label %regulator_set_voltage_tol.exit194

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

regulator_set_voltage_tol.exit194:                ; preds = %if.then85
  %call2.i191 = call i32 @regulator_set_voltage(ptr noundef %54, i32 noundef %call5, i32 noundef %call5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i191)
  %tobool90.not = icmp eq i32 %call2.i191, 0
  br i1 %tobool90.not, label %regulator_set_voltage_tol.exit194.cleanup_crit_edge, label %do.end94

regulator_set_voltage_tol.exit194.cleanup_crit_edge: ; preds = %regulator_set_voltage_tol.exit194
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end94:                                         ; preds = %regulator_set_voltage_tol.exit194
  call void @__sanitizer_cov_trace_pc() #9
  %55 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.90, i32 noundef %call2.i191) #10
  br label %cleanup

if.end96:                                         ; preds = %if.end81
  br i1 %pll1_sys_temp_enabled.0.off0, label %if.then98, label %if.end96.if.end99_crit_edge

if.end96.if.end99_crit_edge:                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then98:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  %56 = load ptr, ptr getelementptr inbounds ([7 x %struct.clk_bulk_data], ptr @clks, i32 0, i32 1, i32 1), align 4
  call void @clk_disable(ptr noundef %56) #7
  call void @clk_unprepare(ptr noundef %56) #7
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end96.if.end99_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %div)
  %cmp100 = icmp ult i32 %2, %div
  br i1 %cmp100, label %if.then101, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then101:                                       ; preds = %if.end99
  %57 = load ptr, ptr @arm_reg, align 4
  %call.i195 = call i32 @regulator_set_voltage(ptr noundef %57, i32 noundef %call4, i32 noundef %call4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %cmp.i196 = icmp eq i32 %call.i195, 0
  br i1 %cmp.i196, label %if.then101.if.end108_crit_edge, label %regulator_set_voltage_tol.exit200

if.then101.if.end108_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

regulator_set_voltage_tol.exit200:                ; preds = %if.then101
  %call2.i197 = call i32 @regulator_set_voltage(ptr noundef %57, i32 noundef %call4, i32 noundef %call4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i197)
  %tobool103.not = icmp eq i32 %call2.i197, 0
  br i1 %tobool103.not, label %regulator_set_voltage_tol.exit200.if.end108_crit_edge, label %do.end107

regulator_set_voltage_tol.exit200.if.end108_crit_edge: ; preds = %regulator_set_voltage_tol.exit200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

do.end107:                                        ; preds = %regulator_set_voltage_tol.exit200
  call void @__sanitizer_cov_trace_pc() #9
  %58 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.93, i32 noundef %call2.i197) #10
  br label %if.end108

if.end108:                                        ; preds = %do.end107, %regulator_set_voltage_tol.exit200.if.end108_crit_edge, %if.then101.if.end108_crit_edge
  %59 = load ptr, ptr @soc_reg, align 4
  %60 = load ptr, ptr @imx6_soc_volt, align 4
  %arrayidx109 = getelementptr i32, ptr %60, i32 %index
  %61 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx109, align 4
  %call.i201 = call i32 @regulator_set_voltage(ptr noundef %59, i32 noundef %62, i32 noundef %62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %cmp.i202 = icmp eq i32 %call.i201, 0
  br i1 %cmp.i202, label %if.end108.if.end116_crit_edge, label %regulator_set_voltage_tol.exit206

if.end108.if.end116_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

regulator_set_voltage_tol.exit206:                ; preds = %if.end108
  %call2.i203 = call i32 @regulator_set_voltage(ptr noundef %59, i32 noundef %62, i32 noundef %62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i203)
  %tobool111.not = icmp eq i32 %call2.i203, 0
  br i1 %tobool111.not, label %regulator_set_voltage_tol.exit206.if.end116_crit_edge, label %do.end115

regulator_set_voltage_tol.exit206.if.end116_crit_edge: ; preds = %regulator_set_voltage_tol.exit206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

do.end115:                                        ; preds = %regulator_set_voltage_tol.exit206
  call void @__sanitizer_cov_trace_pc() #9
  %63 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.96, i32 noundef %call2.i203) #10
  br label %if.end116

if.end116:                                        ; preds = %do.end115, %regulator_set_voltage_tol.exit206.if.end116_crit_edge, %if.end108.if.end116_crit_edge
  %64 = load ptr, ptr @pu_reg, align 4
  %cmp.i207 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i207, label %if.end116.cleanup_crit_edge, label %if.then118

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then118:                                       ; preds = %if.end116
  %65 = load ptr, ptr @imx6_soc_volt, align 4
  %arrayidx119 = getelementptr i32, ptr %65, i32 %index
  %66 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx119, align 4
  %call.i208 = call i32 @regulator_set_voltage(ptr noundef %64, i32 noundef %67, i32 noundef %67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %cmp.i209 = icmp eq i32 %call.i208, 0
  br i1 %cmp.i209, label %if.then118.cleanup_crit_edge, label %regulator_set_voltage_tol.exit213

if.then118.cleanup_crit_edge:                     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

regulator_set_voltage_tol.exit213:                ; preds = %if.then118
  %call2.i210 = call i32 @regulator_set_voltage(ptr noundef %64, i32 noundef %67, i32 noundef %67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i210)
  %tobool121.not = icmp eq i32 %call2.i210, 0
  br i1 %tobool121.not, label %regulator_set_voltage_tol.exit213.cleanup_crit_edge, label %do.end125

regulator_set_voltage_tol.exit213.cleanup_crit_edge: ; preds = %regulator_set_voltage_tol.exit213
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end125:                                        ; preds = %regulator_set_voltage_tol.exit213
  call void @__sanitizer_cov_trace_pc() #9
  %68 = load ptr, ptr @cpu_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %68, ptr noundef nonnull @.str.99, i32 noundef %call2.i210) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end125, %regulator_set_voltage_tol.exit213.cleanup_crit_edge, %if.then118.cleanup_crit_edge, %if.end116.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %do.end94, %regulator_set_voltage_tol.exit194.cleanup_crit_edge, %if.then85.cleanup_crit_edge, %do.end43, %do.end36, %do.end27, %do.end
  %retval.0 = phi i32 [ %9, %do.end ], [ %call2.i178, %do.end36 ], [ %call2.i184, %do.end43 ], [ %call2.i, %do.end27 ], [ %call83, %do.end94 ], [ %call83, %regulator_set_voltage_tol.exit194.cleanup_crit_edge ], [ 0, %if.end116.cleanup_crit_edge ], [ 0, %do.end125 ], [ 0, %regulator_set_voltage_tol.exit213.cleanup_crit_edge ], [ 0, %if.end99.cleanup_crit_edge ], [ %call83, %if.then85.cleanup_crit_edge ], [ 0, %if.then118.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq_hz) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_get(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_suspend(ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpufreq_register_em_with_opp(ptr nocapture noundef readonly %policy) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %call = tail call ptr @get_cpu_device(i32 noundef %1) #7
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 1
  %2 = ptrtoint ptr %related_cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %related_cpus, align 4
  %call1 = tail call i32 @dev_pm_opp_of_register_em(ptr noundef %call, ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_generic_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_register_em(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !69, !71, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !128, !129, !130, !132, !133, !134, !136, !138, !140, !141, !142, !144, !145, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @__initcall__kmod_imx6q_cpufreq__302_544_imx6q_cpufreq_platdrv_init6, !1, !"__initcall__kmod_imx6q_cpufreq__302_544_imx6q_cpufreq_platdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 544, i32 1}
!2 = !{ptr @__exitcall_imx6q_cpufreq_platdrv_exit, !1, !"__exitcall_imx6q_cpufreq_platdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias303, !4, !"__UNIQUE_ID_alias303", i1 false, i1 false}
!4 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 546, i32 1}
!5 = !{ptr @__UNIQUE_ID_author304, !6, !"__UNIQUE_ID_author304", i1 false, i1 false}
!6 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 547, i32 1}
!7 = !{ptr @__UNIQUE_ID_description305, !8, !"__UNIQUE_ID_description305", i1 false, i1 false}
!8 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 548, i32 1}
!9 = !{ptr @__UNIQUE_ID_file306, !10, !"__UNIQUE_ID_file306", i1 false, i1 false}
!10 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 549, i32 1}
!11 = !{ptr @__UNIQUE_ID_license307, !10, !"__UNIQUE_ID_license307", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 539, i32 11}
!14 = !{ptr @imx6q_cpufreq_platdrv, !15, !"imx6q_cpufreq_platdrv", i1 false, i1 false}
!15 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 537, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 350, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @imx6q_cpufreq_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @imx6q_cpufreq_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 356, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @imx6q_cpufreq_probe._entry.4, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @imx6q_cpufreq_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 360, i32 31}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 361, i32 31}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 370, i32 35}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 371, i32 43}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 372, i32 35}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 377, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @imx6q_cpufreq_probe.__UNIQUE_ID_ddebug301, !39, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 381, i32 3}
!44 = !{ptr @imx6q_cpufreq_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @imx6q_cpufreq_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 388, i32 3}
!48 = !{ptr @imx6q_cpufreq_probe._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @imx6q_cpufreq_probe._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 400, i32 4}
!52 = !{ptr @imx6q_cpufreq_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @imx6q_cpufreq_probe._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 408, i32 3}
!56 = !{ptr @imx6q_cpufreq_probe._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @imx6q_cpufreq_probe._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 414, i32 3}
!60 = !{ptr @imx6q_cpufreq_probe._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @imx6q_cpufreq_probe._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 426, i32 30}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 453, i32 3}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @imx6q_cpufreq_probe._entry.32, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @imx6q_cpufreq_probe._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 460, i32 31}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 496, i32 3}
!73 = !{ptr @imx6q_cpufreq_probe._entry.37, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @imx6q_cpufreq_probe._entry_ptr.39, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @cpu_dev, !76, !"cpu_dev", i1 false, i1 false}
!76 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 50, i32 23}
!77 = !{ptr @num_clks, !78, !"num_clks", i1 false, i1 false}
!78 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 39, i32 12}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 42, i32 10}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 43, i32 10}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 44, i32 10}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 45, i32 10}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 46, i32 10}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 47, i32 10}
!91 = !{ptr @clks, !92, !"clks", i1 false, i1 false}
!92 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 40, i32 29}
!93 = !{ptr @arm_reg, !94, !"arm_reg", i1 false, i1 false}
!94 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 22, i32 26}
!95 = !{ptr @pu_reg, !96, !"pu_reg", i1 false, i1 false}
!96 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 23, i32 26}
!97 = !{ptr @soc_reg, !98, !"soc_reg", i1 false, i1 false}
!98 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 24, i32 26}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 282, i32 37}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 283, i32 34}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 290, i32 44}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 293, i32 12}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 300, i32 4}
!109 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @imx6ul_opp_check_speed_grading._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @imx6ul_opp_check_speed_grading._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 322, i32 5}
!114 = !{ptr @imx6ul_opp_check_speed_grading._entry.52, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @imx6ul_opp_check_speed_grading._entry_ptr.54, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 328, i32 5}
!118 = !{ptr @imx6ul_opp_check_speed_grading._entry.55, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @imx6ul_opp_check_speed_grading._entry_ptr.57, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 332, i32 5}
!122 = !{ptr @imx6ul_opp_check_speed_grading._entry.58, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @imx6ul_opp_check_speed_grading._entry_ptr.60, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 230, i32 44}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 237, i32 4}
!128 = !{ptr @imx6q_opp_check_speed_grading._entry, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @imx6q_opp_check_speed_grading._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 258, i32 4}
!132 = !{ptr @imx6q_opp_check_speed_grading._entry.63, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @imx6q_opp_check_speed_grading._entry_ptr.65, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 260, i32 31}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 261, i32 31}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 264, i32 5}
!140 = !{ptr @imx6q_opp_check_speed_grading._entry.68, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @imx6q_opp_check_speed_grading._entry_ptr.70, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 267, i32 5}
!144 = !{ptr @imx6q_opp_check_speed_grading._entry.71, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @imx6q_opp_check_speed_grading._entry_ptr.73, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @freq_table, !147, !"freq_table", i1 false, i1 false}
!147 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 51, i32 40}
!148 = !{ptr @imx6_soc_volt, !149, !"imx6_soc_volt", i1 false, i1 false}
!149 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 55, i32 13}
!150 = !{ptr @soc_opp_count, !151, !"soc_opp_count", i1 false, i1 false}
!151 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 56, i32 12}
!152 = !{ptr @transition_latency, !153, !"transition_latency", i1 false, i1 false}
!153 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 53, i32 21}
!154 = !{ptr @max_freq, !155, !"max_freq", i1 false, i1 false}
!155 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 52, i32 21}
!156 = !{ptr @imx6q_cpufreq_driver, !157, !"imx6q_cpufreq_driver", i1 false, i1 false}
!157 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 199, i32 30}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 72, i32 3}
!160 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @imx6q_set_target._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @imx6q_set_target._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 81, i32 2}
!165 = !{ptr @imx6q_set_target.__UNIQUE_ID_ddebug300, !164, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 90, i32 5}
!168 = !{ptr @imx6q_set_target._entry.77, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @imx6q_set_target._entry_ptr.79, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 96, i32 4}
!172 = !{ptr @imx6q_set_target._entry.80, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @imx6q_set_target._entry_ptr.82, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 101, i32 4}
!176 = !{ptr @imx6q_set_target._entry.83, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @imx6q_set_target._entry_ptr.85, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.87, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 159, i32 3}
!180 = !{ptr @imx6q_set_target._entry.86, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @imx6q_set_target._entry_ptr.88, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 162, i32 4}
!184 = !{ptr @imx6q_set_target._entry.89, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @imx6q_set_target._entry_ptr.91, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 175, i32 4}
!188 = !{ptr @imx6q_set_target._entry.92, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @imx6q_set_target._entry_ptr.94, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 179, i32 4}
!192 = !{ptr @imx6q_set_target._entry.95, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @imx6q_set_target._entry_ptr.97, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.99, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/cpufreq/imx6q-cpufreq.c", i32 183, i32 5}
!196 = !{ptr @imx6q_set_target._entry.98, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @imx6q_set_target._entry_ptr.100, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{i64 2148734885, i64 2148734890, i64 2148734903, i64 2148734947, i64 2148734981, i64 2148735002}
!208 = !{!"auto-init"}
!209 = !{i64 5131019}
!210 = !{!"branch_weights", i32 1, i32 2000}
