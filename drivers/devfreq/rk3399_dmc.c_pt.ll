; ModuleID = '/llk/IR_all_yes/drivers/devfreq/rk3399_dmc.c_pt.bc'
source_filename = "../drivers/devfreq/rk3399_dmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }
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
%struct.rk3399_dmcfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, ptr, ptr, %struct.mutex, %struct.dram_timing, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.dram_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.devfreq_event_data = type { i32, i32 }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }

@__initcall__kmod_rk3399_dmc__288_504_rk3399_dmcfreq_driver_init6 = internal global ptr @rk3399_dmcfreq_driver_init, section ".initcall6.init", align 4
@rk3399_dmcfreq_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rk3399_dmcfreq_probe, ptr @rk3399_dmcfreq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rk3399dmc_devfreq_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk3399_dmcfreq_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rk3399_dmcfreq_driver_exit = internal global ptr @rk3399_dmcfreq_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [43 x i8] c"rk3399_dmc.file=drivers/devfreq/rk3399_dmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [26 x i8] c"rk3399_dmc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [48 x i8] c"rk3399_dmc.author=Lin Huang <hl@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [68 x i8] c"rk3399_dmc.description=RK3399 dmcfreq driver with devfreq framework\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rk3399-dmc-freq\00", [16 x i8] zeroinitializer }, align 32
@rk3399dmc_devfreq_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-dmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rk3399_dmcfreq_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rk3399_dmcfreq_suspend, ptr @rk3399_dmcfreq_resume, ptr @rk3399_dmcfreq_suspend, ptr @rk3399_dmcfreq_resume, ptr @rk3399_dmcfreq_suspend, ptr @rk3399_dmcfreq_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rk3399_dmcfreq_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"center\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cannot get the regulator \22center\22\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dmc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot get the clk dmc_clk\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"devfreq-events\00", [17 x i8] zeroinitializer }, align 32
@rk3399_dmcfreq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 342, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to enable devfreq-event devices\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rk3399_dmcfreq_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/devfreq/rk3399_dmc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rk3399_dmcfreq_probe._entry_ptr = internal global ptr @rk3399_dmcfreq_probe._entry, section ".printk_index", align 4
@rk3399_dmcfreq_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 360, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set dram param: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@rk3399_dmcfreq_probe._entry_ptr.14 = internal global ptr @rk3399_dmcfreq_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,pmu\00", [19 x i8] zeroinitializer }, align 32
@rk3399_dmcfreq_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.9, i32 428, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid operating-points in device tree.\0A\00", [54 x i8] zeroinitializer }, align 32
@rk3399_dmcfreq_probe._entry_ptr.18 = internal global ptr @rk3399_dmcfreq_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"upthreshold\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"downdifferential\00", [47 x i8] zeroinitializer }, align 32
@rk3399_devfreq_dmc_profile = internal global { %struct.devfreq_dev_profile, [56 x i8] } { %struct.devfreq_dev_profile { i32 0, i32 200, i32 0, i8 0, ptr @rk3399_dmcfreq_target, ptr @rk3399_dmcfreq_get_dev_status, ptr @rk3399_dmcfreq_get_cur_freq, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"simple_ondemand\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip,ddr3_speed_bin\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip,pd_idle\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip,sr_idle\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rockchip,sr_mc_gate_idle\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip,srpd_lite_idle\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rockchip,standby_idle\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip,auto_pd_dis_freq\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip,dram_dll_dis_freq\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip,phy_dll_dis_freq\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip,ddr3_odt_dis_freq\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rockchip,ddr3_drv\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rockchip,ddr3_odt\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rockchip,phy_ddr3_ca_drv\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rockchip,phy_ddr3_dq_drv\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rockchip,phy_ddr3_odt\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rockchip,lpddr3_odt_dis_freq\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rockchip,lpddr3_drv\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rockchip,lpddr3_odt\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip,phy_lpddr3_ca_drv\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip,phy_lpddr3_dq_drv\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip,phy_lpddr3_odt\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rockchip,lpddr4_odt_dis_freq\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rockchip,lpddr4_drv\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip,lpddr4_dq_odt\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip,lpddr4_ca_odt\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip,phy_lpddr4_ca_drv\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rockchip,phy_lpddr4_ck_cs_drv\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip,phy_lpddr4_dq_drv\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip,phy_lpddr4_odt\00", [40 x i8] zeroinitializer }, align 32
@rk3399_dmcfreq_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.9, i32 122, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot set voltage %lu uV\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk3399_dmcfreq_target\00", [42 x i8] zeroinitializer }, align 32
@rk3399_dmcfreq_target._entry_ptr = internal global ptr @rk3399_dmcfreq_target._entry, section ".printk_index", align 4
@rk3399_dmcfreq_target._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.9, i32 130, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot set frequency %lu (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@rk3399_dmcfreq_target._entry_ptr.55 = internal global ptr @rk3399_dmcfreq_target._entry.53, section ".printk_index", align 4
@rk3399_dmcfreq_target._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.9, i32 147, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Got wrong frequency, Request %lu, Current %lu\0A\00", [49 x i8] zeroinitializer }, align 32
@rk3399_dmcfreq_target._entry_ptr.58 = internal global ptr @rk3399_dmcfreq_target._entry.56, section ".printk_index", align 4
@rk3399_dmcfreq_target._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.9, i32 155, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@rk3399_dmcfreq_target._entry_ptr.60 = internal global ptr @rk3399_dmcfreq_target._entry.59, section ".printk_index", align 4
@rk3399_dmcfreq_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.9, i32 206, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to disable the devfreq-event devices\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk3399_dmcfreq_suspend\00", [41 x i8] zeroinitializer }, align 32
@rk3399_dmcfreq_suspend._entry_ptr = internal global ptr @rk3399_dmcfreq_suspend._entry, section ".printk_index", align 4
@rk3399_dmcfreq_suspend._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.9, i32 212, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to suspend the devfreq devices\0A\00", [57 x i8] zeroinitializer }, align 32
@rk3399_dmcfreq_suspend._entry_ptr.65 = internal global ptr @rk3399_dmcfreq_suspend._entry.63, section ".printk_index", align 4
@rk3399_dmcfreq_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.9, i32 226, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to enable the devfreq-event devices\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk3399_dmcfreq_resume\00", [42 x i8] zeroinitializer }, align 32
@rk3399_dmcfreq_resume._entry_ptr = internal global ptr @rk3399_dmcfreq_resume._entry, section ".printk_index", align 4
@rk3399_dmcfreq_resume._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.9, i32 232, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to resume the devfreq devices\0A\00", [58 x i8] zeroinitializer }, align 32
@rk3399_dmcfreq_resume._entry_ptr.70 = internal global ptr @rk3399_dmcfreq_resume._entry.68, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 6, i64 7]
@___asan_gen_.71 = private unnamed_addr constant [22 x i8] c"rk3399_dmcfreq_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 495, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 499, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [27 x i8] c"rk3399dmc_devfreq_of_match\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 489, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"rk3399_dmcfreq_pm\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 238, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 324, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 326, i32 45 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 329, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 331, i32 36 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 334, i32 10 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 336, i32 54 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 342, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 359, i32 5 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 367, i32 30 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 428, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 433, i32 27 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 435, i32 27 }
@___asan_gen_.143 = private unnamed_addr constant [27 x i8] c"rk3399_devfreq_dmc_profile\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 192, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 454, i32 9 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 246, i32 33 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 248, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 250, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 252, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 254, i32 34 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 256, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 258, i32 34 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 260, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 262, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 264, i32 34 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 266, i32 34 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 268, i32 34 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 270, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 272, i32 34 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 274, i32 34 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 276, i32 34 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 278, i32 34 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 280, i32 34 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 282, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 284, i32 34 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 286, i32 34 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 288, i32 34 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 290, i32 34 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 292, i32 34 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 294, i32 34 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 296, i32 34 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 298, i32 34 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 300, i32 34 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 302, i32 34 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 121, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 129, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 146, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 155, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 206, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 212, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 226, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.288 = private constant [32 x i8] c"../drivers/devfreq/rk3399_dmc.c\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 232, i32 3 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_rk3399_dmcfreq_driver_exit, ptr @__initcall__kmod_rk3399_dmc__288_504_rk3399_dmcfreq_driver_init6, ptr @rk3399_dmcfreq_driver_exit, ptr @rk3399_dmcfreq_probe._entry, ptr @rk3399_dmcfreq_probe._entry.12, ptr @rk3399_dmcfreq_probe._entry.16, ptr @rk3399_dmcfreq_probe._entry_ptr, ptr @rk3399_dmcfreq_probe._entry_ptr.14, ptr @rk3399_dmcfreq_probe._entry_ptr.18, ptr @rk3399_dmcfreq_resume._entry, ptr @rk3399_dmcfreq_resume._entry.68, ptr @rk3399_dmcfreq_resume._entry_ptr, ptr @rk3399_dmcfreq_resume._entry_ptr.70, ptr @rk3399_dmcfreq_suspend._entry, ptr @rk3399_dmcfreq_suspend._entry.63, ptr @rk3399_dmcfreq_suspend._entry_ptr, ptr @rk3399_dmcfreq_suspend._entry_ptr.65, ptr @rk3399_dmcfreq_target._entry, ptr @rk3399_dmcfreq_target._entry.53, ptr @rk3399_dmcfreq_target._entry.56, ptr @rk3399_dmcfreq_target._entry.59, ptr @rk3399_dmcfreq_target._entry_ptr, ptr @rk3399_dmcfreq_target._entry_ptr.55, ptr @rk3399_dmcfreq_target._entry_ptr.58, ptr @rk3399_dmcfreq_target._entry_ptr.60, ptr @rk3399_dmcfreq_driver, ptr @.str, ptr @rk3399dmc_devfreq_of_match, ptr @rk3399_dmcfreq_pm, ptr @rk3399_dmcfreq_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @rk3399_devfreq_dmc_profile, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_dmcfreq_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399dmc_devfreq_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_dmcfreq_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_dmcfreq_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_dmcfreq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_dmcfreq_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_dmcfreq_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_devfreq_dmc_profile to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_dmcfreq_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_dmcfreq_target._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_dmcfreq_target._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_dmcfreq_target._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_dmcfreq_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_dmcfreq_suspend._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_dmcfreq_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_dmcfreq_resume._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3399_dmcfreq_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rk3399_dmcfreq_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rk3399_dmcfreq_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rk3399_dmcfreq_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3399_dmcfreq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %res = alloca %struct.arm_smccc_res, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #7
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = call ptr @memset(ptr %res, i32 255, i32 16)
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !158
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 268, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rk3399_dmcfreq_probe.__key) #7
  %call3 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #7
  %vdd_center = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %vdd_center to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %vdd_center, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call3 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %5, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end10:                                         ; preds = %do.body
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #7
  %dmc_clk = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %dmc_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call11, ptr %dmc_clk, align 4
  %cmp.i200 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i200, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call11 to i32
  %call17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %7, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %call19 = tail call ptr @devfreq_event_get_edev_by_phandle(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef 0) #7
  %edev = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call19, ptr %edev, align 4
  %cmp.i201 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %call25 = tail call i32 @devfreq_event_enable_edev(ptr noundef %call19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %do.end29, label %if.end30

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %timing31 = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.22, ptr noundef %timing31, i32 noundef 1, i32 noundef 0) #7
  %9 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #7
  %pd_idle.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 1
  %call.i.i140.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef %pd_idle.i, i32 noundef 1, i32 noundef 0) #7
  %10 = tail call i32 @llvm.smin.i32(i32 %call.i.i140.i, i32 0) #7
  %or.i = or i32 %10, %9
  %sr_idle.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 2
  %call.i.i141.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.24, ptr noundef %sr_idle.i, i32 noundef 1, i32 noundef 0) #7
  %11 = tail call i32 @llvm.smin.i32(i32 %call.i.i141.i, i32 0) #7
  %or3.i = or i32 %or.i, %11
  %sr_mc_gate_idle.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 3
  %call.i.i142.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.25, ptr noundef %sr_mc_gate_idle.i, i32 noundef 1, i32 noundef 0) #7
  %12 = tail call i32 @llvm.smin.i32(i32 %call.i.i142.i, i32 0) #7
  %or5.i = or i32 %or3.i, %12
  %srpd_lite_idle.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 4
  %call.i.i143.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.26, ptr noundef %srpd_lite_idle.i, i32 noundef 1, i32 noundef 0) #7
  %13 = tail call i32 @llvm.smin.i32(i32 %call.i.i143.i, i32 0) #7
  %or7.i = or i32 %or5.i, %13
  %standby_idle.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 5
  %call.i.i144.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.27, ptr noundef %standby_idle.i, i32 noundef 1, i32 noundef 0) #7
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i144.i, i32 0) #7
  %or9.i = or i32 %or7.i, %14
  %auto_pd_dis_freq.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 6
  %call.i.i145.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef %auto_pd_dis_freq.i, i32 noundef 1, i32 noundef 0) #7
  %15 = tail call i32 @llvm.smin.i32(i32 %call.i.i145.i, i32 0) #7
  %or11.i = or i32 %or9.i, %15
  %dram_dll_dis_freq.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 7
  %call.i.i146.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.29, ptr noundef %dram_dll_dis_freq.i, i32 noundef 1, i32 noundef 0) #7
  %16 = tail call i32 @llvm.smin.i32(i32 %call.i.i146.i, i32 0) #7
  %or13.i = or i32 %or11.i, %16
  %phy_dll_dis_freq.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 8
  %call.i.i147.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.30, ptr noundef %phy_dll_dis_freq.i, i32 noundef 1, i32 noundef 0) #7
  %17 = tail call i32 @llvm.smin.i32(i32 %call.i.i147.i, i32 0) #7
  %or15.i = or i32 %or13.i, %17
  %ddr3_odt_dis_freq.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 9
  %call.i.i148.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.31, ptr noundef %ddr3_odt_dis_freq.i, i32 noundef 1, i32 noundef 0) #7
  %18 = tail call i32 @llvm.smin.i32(i32 %call.i.i148.i, i32 0) #7
  %or17.i = or i32 %or15.i, %18
  %ddr3_drv.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 10
  %call.i.i149.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.32, ptr noundef %ddr3_drv.i, i32 noundef 1, i32 noundef 0) #7
  %19 = tail call i32 @llvm.smin.i32(i32 %call.i.i149.i, i32 0) #7
  %or19.i = or i32 %or17.i, %19
  %ddr3_odt.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 11
  %call.i.i150.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.33, ptr noundef %ddr3_odt.i, i32 noundef 1, i32 noundef 0) #7
  %20 = tail call i32 @llvm.smin.i32(i32 %call.i.i150.i, i32 0) #7
  %or21.i = or i32 %or19.i, %20
  %phy_ddr3_ca_drv.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 12
  %call.i.i151.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.34, ptr noundef %phy_ddr3_ca_drv.i, i32 noundef 1, i32 noundef 0) #7
  %21 = tail call i32 @llvm.smin.i32(i32 %call.i.i151.i, i32 0) #7
  %or23.i = or i32 %or21.i, %21
  %phy_ddr3_dq_drv.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 13
  %call.i.i152.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef %phy_ddr3_dq_drv.i, i32 noundef 1, i32 noundef 0) #7
  %22 = tail call i32 @llvm.smin.i32(i32 %call.i.i152.i, i32 0) #7
  %or25.i = or i32 %or23.i, %22
  %phy_ddr3_odt.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 14
  %call.i.i153.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.36, ptr noundef %phy_ddr3_odt.i, i32 noundef 1, i32 noundef 0) #7
  %23 = tail call i32 @llvm.smin.i32(i32 %call.i.i153.i, i32 0) #7
  %or27.i = or i32 %or25.i, %23
  %lpddr3_odt_dis_freq.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 15
  %call.i.i154.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.37, ptr noundef %lpddr3_odt_dis_freq.i, i32 noundef 1, i32 noundef 0) #7
  %24 = tail call i32 @llvm.smin.i32(i32 %call.i.i154.i, i32 0) #7
  %or29.i = or i32 %or27.i, %24
  %lpddr3_drv.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 16
  %call.i.i155.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.38, ptr noundef %lpddr3_drv.i, i32 noundef 1, i32 noundef 0) #7
  %25 = tail call i32 @llvm.smin.i32(i32 %call.i.i155.i, i32 0) #7
  %or31.i = or i32 %or29.i, %25
  %lpddr3_odt.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 17
  %call.i.i156.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.39, ptr noundef %lpddr3_odt.i, i32 noundef 1, i32 noundef 0) #7
  %26 = tail call i32 @llvm.smin.i32(i32 %call.i.i156.i, i32 0) #7
  %or33.i = or i32 %or31.i, %26
  %phy_lpddr3_ca_drv.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 18
  %call.i.i157.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.40, ptr noundef %phy_lpddr3_ca_drv.i, i32 noundef 1, i32 noundef 0) #7
  %27 = tail call i32 @llvm.smin.i32(i32 %call.i.i157.i, i32 0) #7
  %or35.i = or i32 %or33.i, %27
  %phy_lpddr3_dq_drv.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 19
  %call.i.i158.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.41, ptr noundef %phy_lpddr3_dq_drv.i, i32 noundef 1, i32 noundef 0) #7
  %28 = tail call i32 @llvm.smin.i32(i32 %call.i.i158.i, i32 0) #7
  %or37.i = or i32 %or35.i, %28
  %phy_lpddr3_odt.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 20
  %call.i.i159.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.42, ptr noundef %phy_lpddr3_odt.i, i32 noundef 1, i32 noundef 0) #7
  %29 = tail call i32 @llvm.smin.i32(i32 %call.i.i159.i, i32 0) #7
  %or39.i = or i32 %or37.i, %29
  %lpddr4_odt_dis_freq.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 21
  %call.i.i160.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.43, ptr noundef %lpddr4_odt_dis_freq.i, i32 noundef 1, i32 noundef 0) #7
  %30 = tail call i32 @llvm.smin.i32(i32 %call.i.i160.i, i32 0) #7
  %or41.i = or i32 %or39.i, %30
  %lpddr4_drv.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 22
  %call.i.i161.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.44, ptr noundef %lpddr4_drv.i, i32 noundef 1, i32 noundef 0) #7
  %31 = tail call i32 @llvm.smin.i32(i32 %call.i.i161.i, i32 0) #7
  %or43.i = or i32 %or41.i, %31
  %lpddr4_dq_odt.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 23
  %call.i.i162.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.45, ptr noundef %lpddr4_dq_odt.i, i32 noundef 1, i32 noundef 0) #7
  %32 = tail call i32 @llvm.smin.i32(i32 %call.i.i162.i, i32 0) #7
  %or45.i = or i32 %or43.i, %32
  %lpddr4_ca_odt.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 24
  %call.i.i163.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.46, ptr noundef %lpddr4_ca_odt.i, i32 noundef 1, i32 noundef 0) #7
  %33 = tail call i32 @llvm.smin.i32(i32 %call.i.i163.i, i32 0) #7
  %or47.i = or i32 %or45.i, %33
  %phy_lpddr4_ca_drv.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 25
  %call.i.i164.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.47, ptr noundef %phy_lpddr4_ca_drv.i, i32 noundef 1, i32 noundef 0) #7
  %34 = tail call i32 @llvm.smin.i32(i32 %call.i.i164.i, i32 0) #7
  %or49.i = or i32 %or47.i, %34
  %phy_lpddr4_ck_cs_drv.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 26
  %call.i.i165.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.48, ptr noundef %phy_lpddr4_ck_cs_drv.i, i32 noundef 1, i32 noundef 0) #7
  %35 = tail call i32 @llvm.smin.i32(i32 %call.i.i165.i, i32 0) #7
  %or51.i = or i32 %or49.i, %35
  %phy_lpddr4_dq_drv.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 27
  %call.i.i166.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.49, ptr noundef %phy_lpddr4_dq_drv.i, i32 noundef 1, i32 noundef 0) #7
  %36 = tail call i32 @llvm.smin.i32(i32 %call.i.i166.i, i32 0) #7
  %or53.i = or i32 %or51.i, %36
  %phy_lpddr4_odt.i = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 6, i32 28
  %call.i.i167.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.50, ptr noundef %phy_lpddr4_odt.i, i32 noundef 1, i32 noundef 0) #7
  %37 = tail call i32 @llvm.smin.i32(i32 %call.i.i167.i, i32 0) #7
  %or55.i = or i32 %or53.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or55.i)
  %tobool33.not = icmp eq i32 %or55.i, 0
  br i1 %tobool33.not, label %if.end30.for.body_crit_edge, label %if.end30.if.end44_crit_edge

if.end30.if.end44_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end30.for.body_crit_edge
  %timing.0210 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %timing31, %if.end30.for.body_crit_edge ]
  %index.0209 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end30.for.body_crit_edge ]
  %38 = ptrtoint ptr %timing.0210 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %timing.0210, align 4
  call void @__arm_smccc_smc(i32 noundef -2113929208, i32 noundef %39, i32 noundef %index.0209, i32 noundef 7, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #7
  %40 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool37.not = icmp eq i32 %41, 0
  br i1 %tobool37.not, label %for.inc, label %do.end41

do.end41:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %41) #10
  br label %err_edev

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i32, ptr %timing.0210, i32 1
  %inc = add nuw nsw i32 %index.0209, 1
  %exitcond.not = icmp eq i32 %inc, 29
  br i1 %exitcond.not, label %for.inc.if.end44_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end44_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.end44:                                         ; preds = %for.inc.if.end44_crit_edge, %if.end30.if.end44_crit_edge
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %42 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i202 = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool.not.i = icmp eq i32 %call.i202, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %no_pmu

of_parse_phandle.exit:                            ; preds = %if.end44
  %43 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool46.not = icmp eq ptr %44, null
  br i1 %tobool46.not, label %of_parse_phandle.exit.no_pmu_crit_edge, label %if.end48

of_parse_phandle.exit.no_pmu_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_pmu

if.end48:                                         ; preds = %of_parse_phandle.exit
  %call49 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %44) #7
  %regmap_pmu = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 8
  %45 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call49, ptr %regmap_pmu, align 4
  call void @of_node_put(ptr noundef nonnull %44) #7
  %46 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap_pmu, align 4
  %cmp.i203 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %47 to i32
  br label %err_edev

if.end55:                                         ; preds = %if.end48
  %call57 = call i32 @regmap_read(ptr noundef %47, i32 noundef 776, ptr noundef nonnull %val) #7
  %49 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val, align 4
  %shr = lshr i32 %50, 13
  %and = and i32 %shr, 7
  %51 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end55.err_edev_crit_edge [
    i32 3, label %sw.bb
    i32 6, label %sw.bb59
    i32 7, label %sw.bb62
  ]

if.end55.err_edev_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_edev

sw.bb:                                            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %ddr3_odt_dis_freq.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ddr3_odt_dis_freq.i, align 4
  %odt_dis_freq = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 13
  %54 = ptrtoint ptr %odt_dis_freq to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %odt_dis_freq, align 4
  br label %no_pmu

sw.bb59:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %lpddr3_odt_dis_freq.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %lpddr3_odt_dis_freq.i, align 4
  %odt_dis_freq61 = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 13
  %57 = ptrtoint ptr %odt_dis_freq61 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %odt_dis_freq61, align 4
  br label %no_pmu

sw.bb62:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %lpddr4_odt_dis_freq.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lpddr4_odt_dis_freq.i, align 4
  %odt_dis_freq64 = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 13
  %60 = ptrtoint ptr %odt_dis_freq64 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %odt_dis_freq64, align 4
  br label %no_pmu

no_pmu:                                           ; preds = %sw.bb62, %sw.bb59, %sw.bb, %of_parse_phandle.exit.no_pmu_crit_edge, %of_parse_phandle.exit.thread
  call void @__arm_smccc_smc(i32 noundef -2113929208, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #7
  %61 = ptrtoint ptr %sr_idle.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sr_idle.i, align 4
  %and66 = and i32 %62, 255
  %63 = ptrtoint ptr %sr_mc_gate_idle.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sr_mc_gate_idle.i, align 4
  %and68 = shl i32 %64, 8
  %shl = and i32 %and68, 65280
  %or = or i32 %and66, %shl
  %65 = ptrtoint ptr %standby_idle.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %standby_idle.i, align 4
  %shl71 = shl i32 %66, 16
  %or72 = or i32 %or, %shl71
  %odt_pd_arg0 = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 14
  %67 = ptrtoint ptr %odt_pd_arg0 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or72, ptr %odt_pd_arg0, align 4
  %68 = ptrtoint ptr %pd_idle.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pd_idle.i, align 4
  %and74 = and i32 %69, 4095
  %70 = ptrtoint ptr %srpd_lite_idle.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %srpd_lite_idle.i, align 4
  %and76 = shl i32 %71, 16
  %shl77 = and i32 %and76, 268369920
  %or78 = or i32 %shl77, %and74
  %odt_pd_arg1 = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 15
  %72 = ptrtoint ptr %odt_pd_arg1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or78, ptr %odt_pd_arg1, align 4
  %call79 = call i32 @dev_pm_opp_of_add_table(ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end85, label %do.end84

do.end84:                                         ; preds = %no_pmu
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #10
  br label %err_edev

if.end85:                                         ; preds = %no_pmu
  %ondemand_data = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 2
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.19, ptr noundef %ondemand_data, i32 noundef 1, i32 noundef 0) #7
  %downdifferential = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 2, i32 1
  %call.i.i204 = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.20, ptr noundef %downdifferential, i32 noundef 1, i32 noundef 0) #7
  %73 = ptrtoint ptr %dmc_clk to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dmc_clk, align 4
  %call90 = call i32 @clk_get_rate(ptr noundef %74) #7
  %rate = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 9
  %75 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call90, ptr %rate, align 4
  %call92 = call ptr @devfreq_recommended_opp(ptr noundef %dev1, ptr noundef %rate, i32 noundef 0) #7
  %cmp.i205 = icmp ugt ptr %call92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %if.end85.err_free_opp_crit_edge, label %if.end96

if.end85.err_free_opp_crit_edge:                  ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_opp

if.end96:                                         ; preds = %if.end85
  %call97 = call i32 @dev_pm_opp_get_freq(ptr noundef %call92) #7
  %76 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call97, ptr %rate, align 4
  %call99 = call i32 @dev_pm_opp_get_voltage(ptr noundef %call92) #7
  %volt = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 11
  %77 = ptrtoint ptr %volt to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call99, ptr %volt, align 4
  call void @dev_pm_opp_put(ptr noundef %call92) #7
  %78 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rate, align 4
  store i32 %79, ptr @rk3399_devfreq_dmc_profile, align 4
  %call102 = call ptr @devm_devfreq_add_device(ptr noundef %dev1, ptr noundef nonnull @rk3399_devfreq_dmc_profile, ptr noundef nonnull @.str.21, ptr noundef %ondemand_data) #7
  %devfreq = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %call.i, i32 0, i32 1
  %80 = ptrtoint ptr %devfreq to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call102, ptr %devfreq, align 4
  %cmp.i206 = icmp ugt ptr %call102, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %if.end96.err_free_opp_crit_edge, label %if.end108

if.end96.err_free_opp_crit_edge:                  ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_opp

if.end108:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  %call110 = call i32 @devm_devfreq_register_opp_notifier(ptr noundef %dev1, ptr noundef %call102) #7
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %82 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_free_opp:                                     ; preds = %if.end96.err_free_opp_crit_edge, %if.end85.err_free_opp_crit_edge
  %ret.0.in = phi ptr [ %call92, %if.end85.err_free_opp_crit_edge ], [ %call102, %if.end96.err_free_opp_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  call void @dev_pm_opp_of_remove_table(ptr noundef %dev1) #7
  br label %err_edev

err_edev:                                         ; preds = %err_free_opp, %do.end84, %if.end55.err_edev_crit_edge, %if.then52, %do.end41
  %ret.1 = phi i32 [ %48, %if.then52 ], [ -22, %do.end84 ], [ %ret.0, %err_free_opp ], [ -22, %do.end41 ], [ -22, %if.end55.err_edev_crit_edge ]
  %83 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %edev, align 4
  %call114 = call i32 @devfreq_event_disable_edev(ptr noundef %84) #7
  br label %cleanup

cleanup:                                          ; preds = %err_edev, %if.end108, %do.end29, %if.end18.cleanup_crit_edge, %if.then14, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then6 ], [ %call17, %if.then14 ], [ %call25, %do.end29 ], [ %ret.1, %err_edev ], [ 0, %if.end108 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3399_dmcfreq_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %devfreq = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devfreq, align 4
  tail call void @devm_devfreq_unregister_opp_notifier(ptr noundef %3, ptr noundef %5) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @dev_pm_opp_of_remove_table(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_event_get_edev_by_phandle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_enable_edev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_add_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_devfreq_register_opp_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_of_remove_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_disable_edev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3399_dmcfreq_target(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #2 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rate = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #7
  %4 = call ptr @memset(ptr %res, i32 255, i32 16)
  %call1 = tail call ptr @devfreq_recommended_opp(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @dev_pm_opp_get_freq(ptr noundef %call1) #7
  %call5 = tail call i32 @dev_pm_opp_get_voltage(ptr noundef %call1) #7
  tail call void @dev_pm_opp_put(ptr noundef %call1) #7
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call4)
  %cmp = icmp eq i32 %7, %call4
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %regmap_pmu = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %regmap_pmu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_pmu, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end8.if.end14_crit_edge, label %if.then9

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %odt_dis_freq = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %odt_dis_freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %odt_dis_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %11)
  %cmp10.not = icmp uge i32 %call4, %11
  %spec.select = zext i1 %cmp10.not to i32
  %odt_pd_arg0 = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %odt_pd_arg0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %odt_pd_arg0, align 4
  %odt_pd_arg1 = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %odt_pd_arg1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %odt_pd_arg1, align 4
  call void @__arm_smccc_smc(i32 noundef -2113929208, i32 noundef %13, i32 noundef %15, i32 noundef 8, i32 noundef %spec.select, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end8.if.end14_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call4)
  %cmp15 = icmp ult i32 %3, %call4
  br i1 %cmp15, label %if.then17, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then17:                                        ; preds = %if.end14
  %vdd_center = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %vdd_center to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdd_center, align 4
  %call18 = call i32 @regulator_set_voltage(ptr noundef %17, i32 noundef %call5, i32 noundef %call5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end22_crit_edge, label %do.end

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end:                                           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %call5) #10
  br label %out

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %dmc_clk = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %dmc_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dmc_clk, align 4
  %call23 = call i32 @clk_set_rate(ptr noundef %19, i32 noundef %call4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end32, label %do.end28

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %call4, i32 noundef %call23) #10
  %vdd_center29 = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %vdd_center29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vdd_center29, align 4
  %volt = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %volt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %volt, align 4
  %call31 = call i32 @regulator_set_voltage(ptr noundef %21, i32 noundef %23, i32 noundef %23) #7
  br label %out

if.end32:                                         ; preds = %if.end22
  %24 = ptrtoint ptr %dmc_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dmc_clk, align 4
  %call34 = call i32 @clk_get_rate(ptr noundef %25) #7
  %26 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call34, ptr %rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call34, i32 %call4)
  %cmp37.not = icmp eq i32 %call34, %call4
  br i1 %cmp37.not, label %if.else, label %do.end42

do.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %call4, i32 noundef %call34) #10
  %vdd_center44 = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %vdd_center44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vdd_center44, align 4
  %volt45 = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %volt45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %volt45, align 4
  %call47 = call i32 @regulator_set_voltage(ptr noundef %28, i32 noundef %30, i32 noundef %30) #7
  br label %out

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call4)
  %cmp48 = icmp ugt i32 %3, %call4
  br i1 %cmp48, label %if.end54, label %if.else.if.end60_crit_edge

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.end54:                                         ; preds = %if.else
  %vdd_center51 = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %vdd_center51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vdd_center51, align 4
  %call52 = call i32 @regulator_set_voltage(ptr noundef %32, i32 noundef %call5, i32 noundef %call5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool55.not = icmp eq i32 %call52, 0
  br i1 %tobool55.not, label %if.end54.if.end60_crit_edge, label %do.end59

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

do.end59:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %call5) #10
  br label %if.end60

if.end60:                                         ; preds = %do.end59, %if.end54.if.end60_crit_edge, %if.else.if.end60_crit_edge
  %err.0123 = phi i32 [ %call52, %do.end59 ], [ 0, %if.end54.if.end60_crit_edge ], [ 0, %if.else.if.end60_crit_edge ]
  %33 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call4, ptr %rate, align 4
  %volt62 = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 11
  %34 = ptrtoint ptr %volt62 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call5, ptr %volt62, align 4
  br label %out

out:                                              ; preds = %if.end60, %do.end42, %do.end28, %do.end
  %err.1 = phi i32 [ %call18, %do.end ], [ %call23, %do.end28 ], [ 0, %do.end42 ], [ %err.0123, %if.end60 ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %err.1, %out ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3399_dmcfreq_get_dev_status(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %stat) #2 align 64 {
entry:
  %edata = alloca %struct.devfreq_event_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %edata) #7
  %2 = ptrtoint ptr %edata to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %edata, align 4, !annotation !158
  %3 = getelementptr inbounds %struct.devfreq_event_data, ptr %edata, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !158
  %edev = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %edev, align 4
  %call1 = call i32 @devfreq_event_get_event(ptr noundef %6, ptr noundef nonnull %edata) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rate = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rate, align 4
  %current_frequency = getelementptr inbounds %struct.devfreq_dev_status, ptr %stat, i32 0, i32 2
  %9 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %current_frequency, align 4
  %10 = ptrtoint ptr %edata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %edata, align 4
  %busy_time = getelementptr inbounds %struct.devfreq_dev_status, ptr %stat, i32 0, i32 1
  %12 = ptrtoint ptr %busy_time to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %busy_time, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  %15 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %stat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %edata) #7
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk3399_dmcfreq_get_cur_freq(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %freq) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rate = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate, align 4
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %freq, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_get_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_devfreq_unregister_opp_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3399_dmcfreq_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %edev = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edev, align 4
  %call1 = tail call i32 @devfreq_event_disable_edev(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %devfreq = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devfreq, align 4
  %call2 = tail call i32 @devfreq_suspend_device(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.64.sink = phi ptr [ @.str.61, %entry.cleanup.sink.split_crit_edge ], [ @.str.64, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call1, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.64.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3399_dmcfreq_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %edev = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edev, align 4
  %call1 = tail call i32 @devfreq_event_enable_edev(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %devfreq = getelementptr inbounds %struct.rk3399_dmcfreq, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devfreq, align 4
  %call2 = tail call i32 @devfreq_resume_device(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.69.sink = phi ptr [ @.str.66, %entry.cleanup.sink.split_crit_edge ], [ @.str.69, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call1, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.69.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_suspend_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_resume_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !129, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @__initcall__kmod_rk3399_dmc__288_504_rk3399_dmcfreq_driver_init6, !1, !"__initcall__kmod_rk3399_dmc__288_504_rk3399_dmcfreq_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 504, i32 1}
!2 = !{ptr @__exitcall_rk3399_dmcfreq_driver_exit, !1, !"__exitcall_rk3399_dmcfreq_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file289, !4, !"__UNIQUE_ID_file289", i1 false, i1 false}
!4 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 506, i32 1}
!5 = !{ptr @__UNIQUE_ID_license290, !4, !"__UNIQUE_ID_license290", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author291, !7, !"__UNIQUE_ID_author291", i1 false, i1 false}
!7 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 507, i32 1}
!8 = !{ptr @__UNIQUE_ID_description292, !9, !"__UNIQUE_ID_description292", i1 false, i1 false}
!9 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 508, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 499, i32 11}
!12 = !{ptr @rk3399_dmcfreq_driver, !13, !"rk3399_dmcfreq_driver", i1 false, i1 false}
!13 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 495, i32 31}
!14 = !{ptr @rk3399_dmcfreq_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 324, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 326, i32 45}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 329, i32 10}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 331, i32 36}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 334, i32 10}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 336, i32 54}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 342, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rk3399_dmcfreq_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @rk3399_dmcfreq_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 359, i32 5}
!37 = !{ptr @rk3399_dmcfreq_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @rk3399_dmcfreq_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 367, i32 30}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 428, i32 3}
!43 = !{ptr @rk3399_dmcfreq_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rk3399_dmcfreq_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 433, i32 27}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 435, i32 27}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 454, i32 9}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 246, i32 33}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 248, i32 34}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 250, i32 34}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 252, i32 34}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 254, i32 34}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 256, i32 34}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 258, i32 34}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 260, i32 34}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 262, i32 34}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 264, i32 34}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 266, i32 34}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 268, i32 34}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 270, i32 34}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 272, i32 34}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 274, i32 34}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 276, i32 34}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 278, i32 34}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 280, i32 34}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 282, i32 34}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 284, i32 34}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 286, i32 34}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 288, i32 34}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 290, i32 34}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 292, i32 34}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 294, i32 34}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 296, i32 34}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 298, i32 34}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 300, i32 34}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 302, i32 34}
!109 = !{ptr @rk3399_devfreq_dmc_profile, !110, !"rk3399_devfreq_dmc_profile", i1 false, i1 false}
!110 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 192, i32 35}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 121, i32 4}
!113 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @rk3399_dmcfreq_target._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @rk3399_dmcfreq_target._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 129, i32 3}
!118 = !{ptr @rk3399_dmcfreq_target._entry.53, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @rk3399_dmcfreq_target._entry_ptr.55, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 146, i32 3}
!122 = !{ptr @rk3399_dmcfreq_target._entry.56, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @rk3399_dmcfreq_target._entry_ptr.58, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @rk3399_dmcfreq_target._entry.59, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 155, i32 3}
!126 = !{ptr @rk3399_dmcfreq_target._entry_ptr.60, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @rk3399dmc_devfreq_of_match, !128, !"rk3399dmc_devfreq_of_match", i1 false, i1 false}
!128 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 489, i32 34}
!129 = !{ptr @rk3399_dmcfreq_pm, !130, !"rk3399_dmcfreq_pm", i1 false, i1 false}
!130 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 238, i32 8}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 206, i32 3}
!133 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @rk3399_dmcfreq_suspend._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @rk3399_dmcfreq_suspend._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 212, i32 3}
!138 = !{ptr @rk3399_dmcfreq_suspend._entry.63, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @rk3399_dmcfreq_suspend._entry_ptr.65, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 226, i32 3}
!142 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @rk3399_dmcfreq_resume._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @rk3399_dmcfreq_resume._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/devfreq/rk3399_dmc.c", i32 232, i32 3}
!147 = !{ptr @rk3399_dmcfreq_resume._entry.68, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @rk3399_dmcfreq_resume._entry_ptr.70, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{!"auto-init"}
