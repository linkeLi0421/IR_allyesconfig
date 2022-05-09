; ModuleID = '/llk/IR_all_yes/drivers/soc/amlogic/meson-ee-pwrc.c_pt.bc'
source_filename = "../drivers/soc/amlogic/meson-ee-pwrc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.meson_ee_pwrc_domain_data = type { i32, ptr }
%struct.meson_ee_pwrc_domain_desc = type { ptr, i32, i32, ptr, i32, ptr, ptr }
%struct.meson_ee_pwrc_top_domain = type { i32, i32, i32, i32 }
%struct.meson_ee_pwrc_mem_domain = type { i32, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.meson_ee_pwrc = type { ptr, ptr, ptr, %struct.genpd_onecell_data }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.meson_ee_pwrc_domain = type { %struct.generic_pm_domain, i8, ptr, %struct.meson_ee_pwrc_domain_desc, ptr, i32, ptr, i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }

@__initcall__kmod_meson_ee_pwrc__170_615_meson_ee_pwrc_driver_init6 = internal global ptr @meson_ee_pwrc_driver_init, section ".initcall6.init", align 4
@meson_ee_pwrc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_ee_pwrc_probe, ptr null, ptr @meson_ee_pwrc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_ee_pwrc_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_ee_pwrc_driver_exit = internal global ptr @meson_ee_pwrc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [53 x i8] c"meson_ee_pwrc.file=drivers/soc/amlogic/meson-ee-pwrc\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [29 x i8] c"meson_ee_pwrc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"meson_ee_pwrc\00", [18 x i8] zeroinitializer }, align 32
@meson_ee_pwrc_match_table = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-pwrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_ee_m8_pwrc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-pwrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_ee_m8b_pwrc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8m2-pwrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_ee_m8b_pwrc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-pwrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_ee_axg_pwrc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-pwrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_ee_gxbb_pwrc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-pwrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_ee_g12a_pwrc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-sm1-pwrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_ee_sm1_pwrc_data }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@meson_ee_pwrc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 477, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get match data\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"meson_ee_pwrc_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/soc/amlogic/meson-ee-pwrc.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_ee_pwrc_probe._entry_ptr = internal global ptr @meson_ee_pwrc_probe._entry, section ".printk_index", align 4
@meson_ee_pwrc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 500, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get HHI regmap\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_ee_pwrc_probe._entry_ptr.8 = internal global ptr @meson_ee_pwrc_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amlogic,ao-sysctrl\00", [45 x i8] zeroinitializer }, align 32
@meson_ee_pwrc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 507, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get AO regmap\0A\00", [39 x i8] zeroinitializer }, align 32
@meson_ee_pwrc_probe._entry_ptr.12 = internal global ptr @meson_ee_pwrc_probe._entry.10, section ".printk_index", align 4
@meson_ee_pwrc_init_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 414, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid resets count %d for domain %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"meson_ee_pwrc_init_domain\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@meson_ee_pwrc_init_domain._entry_ptr = internal global ptr @meson_ee_pwrc_init_domain._entry, section ".printk_index", align 4
@meson_ee_pwrc_init_domain._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.3, i32 428, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid clocks count %d for domain %s\0A\00", [57 x i8] zeroinitializer }, align 32
@meson_ee_pwrc_init_domain._entry_ptr.18 = internal global ptr @meson_ee_pwrc_init_domain._entry.16, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@meson_ee_m8_pwrc_data = internal global { %struct.meson_ee_pwrc_domain_data, [24 x i8] } { %struct.meson_ee_pwrc_domain_data { i32 3, ptr @meson8_pwrc_domains }, [24 x i8] zeroinitializer }, align 32
@meson_ee_m8b_pwrc_data = internal global { %struct.meson_ee_pwrc_domain_data, [24 x i8] } { %struct.meson_ee_pwrc_domain_data { i32 3, ptr @meson8b_pwrc_domains }, [24 x i8] zeroinitializer }, align 32
@meson_ee_axg_pwrc_data = internal global { %struct.meson_ee_pwrc_domain_data, [24 x i8] } { %struct.meson_ee_pwrc_domain_data { i32 3, ptr @axg_pwrc_domains }, [24 x i8] zeroinitializer }, align 32
@meson_ee_gxbb_pwrc_data = internal global { %struct.meson_ee_pwrc_domain_data, [24 x i8] } { %struct.meson_ee_pwrc_domain_data { i32 2, ptr @gxbb_pwrc_domains }, [24 x i8] zeroinitializer }, align 32
@meson_ee_g12a_pwrc_data = internal global { %struct.meson_ee_pwrc_domain_data, [24 x i8] } { %struct.meson_ee_pwrc_domain_data { i32 2, ptr @g12a_pwrc_domains }, [24 x i8] zeroinitializer }, align 32
@meson_ee_sm1_pwrc_data = internal global { %struct.meson_ee_pwrc_domain_data, [24 x i8] } { %struct.meson_ee_pwrc_domain_data { i32 7, ptr @sm1_pwrc_domains }, [24 x i8] zeroinitializer }, align 32
@meson8_pwrc_domains = internal global { [3 x %struct.meson_ee_pwrc_domain_desc], [44 x i8] } { [3 x %struct.meson_ee_pwrc_domain_desc] [%struct.meson_ee_pwrc_domain_desc { ptr @.str.19, i32 0, i32 1, ptr @meson8_pwrc_vpu, i32 40, ptr @meson8_pwrc_mem_vpu, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.20, i32 0, i32 0, ptr null, i32 1, ptr @meson_pwrc_mem_eth, ptr null }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.21, i32 0, i32 0, ptr null, i32 1, ptr @meson8_pwrc_audio_dsp_mem, ptr null }], [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VPU\00", [28 x i8] zeroinitializer }, align 32
@meson8_pwrc_vpu = internal global { %struct.meson_ee_pwrc_top_domain, [16 x i8] } { %struct.meson_ee_pwrc_top_domain { i32 8, i32 256, i32 8, i32 512 }, [16 x i8] zeroinitializer }, align 32
@meson8_pwrc_mem_vpu = internal global { [40 x %struct.meson_ee_pwrc_mem_domain], [64 x i8] } { [40 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 260, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 256 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 512 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 1024 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 2048 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 4096 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 8192 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 16384 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 32768 }], [64 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ETHERNET_MEM\00", [19 x i8] zeroinitializer }, align 32
@meson_pwrc_mem_eth = internal global { [1 x %struct.meson_ee_pwrc_mem_domain], [24 x i8] } { [1 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 256, i32 12 }], [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AUDIO_DSP_MEM\00", [18 x i8] zeroinitializer }, align 32
@meson8_pwrc_audio_dsp_mem = internal global { [1 x %struct.meson_ee_pwrc_mem_domain], [24 x i8] } { [1 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 256, i32 3 }], [24 x i8] zeroinitializer }, align 32
@meson8b_pwrc_domains = internal global { [3 x %struct.meson_ee_pwrc_domain_desc], [44 x i8] } { [3 x %struct.meson_ee_pwrc_domain_desc] [%struct.meson_ee_pwrc_domain_desc { ptr @.str.19, i32 11, i32 1, ptr @meson8_pwrc_vpu, i32 40, ptr @meson8_pwrc_mem_vpu, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.20, i32 0, i32 0, ptr null, i32 1, ptr @meson_pwrc_mem_eth, ptr null }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.21, i32 0, i32 0, ptr null, i32 1, ptr @meson8_pwrc_audio_dsp_mem, ptr null }], [44 x i8] zeroinitializer }, align 32
@axg_pwrc_domains = internal global { [3 x %struct.meson_ee_pwrc_domain_desc], [44 x i8] } { [3 x %struct.meson_ee_pwrc_domain_desc] [%struct.meson_ee_pwrc_domain_desc { ptr @.str.19, i32 5, i32 2, ptr @gx_pwrc_vpu, i32 24, ptr @axg_pwrc_mem_vpu, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.22, i32 0, i32 0, ptr null, i32 1, ptr @meson_pwrc_mem_eth, ptr null }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.23, i32 0, i32 0, ptr null, i32 1, ptr @axg_pwrc_mem_audio, ptr null }], [44 x i8] zeroinitializer }, align 32
@gx_pwrc_vpu = internal global { %struct.meson_ee_pwrc_top_domain, [16 x i8] } { %struct.meson_ee_pwrc_top_domain { i32 232, i32 256, i32 232, i32 512 }, [16 x i8] zeroinitializer }, align 32
@axg_pwrc_mem_vpu = internal global { [24 x %struct.meson_ee_pwrc_mem_domain], [32 x i8] } { [24 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 260, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 256 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 512 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 1024 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 2048 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 4096 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 8192 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 16384 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 32768 }], [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ETH\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AUDIO\00", [26 x i8] zeroinitializer }, align 32
@axg_pwrc_mem_audio = internal global { [1 x %struct.meson_ee_pwrc_mem_domain], [24 x i8] } { [1 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 256, i32 48 }], [24 x i8] zeroinitializer }, align 32
@gxbb_pwrc_domains = internal global { [2 x %struct.meson_ee_pwrc_domain_desc], [40 x i8] } { [2 x %struct.meson_ee_pwrc_domain_desc] [%struct.meson_ee_pwrc_domain_desc { ptr @.str.19, i32 12, i32 2, ptr @gx_pwrc_vpu, i32 40, ptr @gxbb_pwrc_mem_vpu, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.22, i32 0, i32 0, ptr null, i32 1, ptr @meson_pwrc_mem_eth, ptr null }], [40 x i8] zeroinitializer }, align 32
@gxbb_pwrc_mem_vpu = internal global { [40 x %struct.meson_ee_pwrc_mem_domain], [64 x i8] } { [40 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 260, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 256 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 512 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 1024 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 2048 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 4096 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 8192 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 16384 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 32768 }], [64 x i8] zeroinitializer }, align 32
@g12a_pwrc_domains = internal global { [2 x %struct.meson_ee_pwrc_domain_desc], [40 x i8] } { [2 x %struct.meson_ee_pwrc_domain_desc] [%struct.meson_ee_pwrc_domain_desc { ptr @.str.19, i32 11, i32 2, ptr @gx_pwrc_vpu, i32 56, ptr @g12a_pwrc_mem_vpu, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.22, i32 0, i32 0, ptr null, i32 1, ptr @meson_pwrc_mem_eth, ptr null }], [40 x i8] zeroinitializer }, align 32
@g12a_pwrc_mem_vpu = internal global { [56 x %struct.meson_ee_pwrc_mem_domain], [96 x i8] } { [56 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 260, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 256 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 512 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 1024 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 2048 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 4096 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 8192 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 16384 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 32768 }], [96 x i8] zeroinitializer }, align 32
@sm1_pwrc_domains = internal global { [7 x %struct.meson_ee_pwrc_domain_desc], [60 x i8] } { [7 x %struct.meson_ee_pwrc_domain_desc] [%struct.meson_ee_pwrc_domain_desc { ptr @.str.19, i32 11, i32 2, ptr @sm1_pwrc_vpu, i32 76, ptr @sm1_pwrc_mem_vpu, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.24, i32 0, i32 0, ptr @sm1_pwrc_nna, i32 2, ptr @sm1_pwrc_mem_nna, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.25, i32 0, i32 0, ptr @sm1_pwrc_usb, i32 1, ptr @sm1_pwrc_mem_usb, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.26, i32 0, i32 0, ptr @sm1_pwrc_pci, i32 1, ptr @sm1_pwrc_mem_pcie, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.27, i32 0, i32 0, ptr @sm1_pwrc_ge2d, i32 1, ptr @sm1_pwrc_mem_ge2d, ptr @pwrc_ee_is_powered_off }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.23, i32 0, i32 0, ptr null, i32 13, ptr @sm1_pwrc_mem_audio, ptr null }, %struct.meson_ee_pwrc_domain_desc { ptr @.str.22, i32 0, i32 0, ptr null, i32 1, ptr @meson_pwrc_mem_eth, ptr null }], [60 x i8] zeroinitializer }, align 32
@sm1_pwrc_vpu = internal global { %struct.meson_ee_pwrc_top_domain, [16 x i8] } { %struct.meson_ee_pwrc_top_domain { i32 232, i32 256, i32 236, i32 256 }, [16 x i8] zeroinitializer }, align 32
@sm1_pwrc_mem_vpu = internal global { [76 x %struct.meson_ee_pwrc_mem_domain], [128 x i8] } { [76 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 260, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 260, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 264, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 308, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 768 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 3072 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 201326592 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 805306368 }, %struct.meson_ee_pwrc_mem_domain { i32 268, i32 -1073741824 }, %struct.meson_ee_pwrc_mem_domain { i32 272, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 272, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 272, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 272, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 256 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 512 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 1024 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 2048 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 4096 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 8192 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 16384 }, %struct.meson_ee_pwrc_mem_domain { i32 256, i32 32768 }], [128 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NNA\00", [28 x i8] zeroinitializer }, align 32
@sm1_pwrc_nna = internal global { %struct.meson_ee_pwrc_top_domain, [16 x i8] } { %struct.meson_ee_pwrc_top_domain { i32 232, i32 65536, i32 236, i32 65536 }, [16 x i8] zeroinitializer }, align 32
@sm1_pwrc_mem_nna = internal global { [2 x %struct.meson_ee_pwrc_mem_domain], [16 x i8] } { [2 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 280, i32 255 }, %struct.meson_ee_pwrc_mem_domain { i32 284, i32 255 }], [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"USB\00", [28 x i8] zeroinitializer }, align 32
@sm1_pwrc_usb = internal global { %struct.meson_ee_pwrc_top_domain, [16 x i8] } { %struct.meson_ee_pwrc_top_domain { i32 232, i32 131072, i32 236, i32 131072 }, [16 x i8] zeroinitializer }, align 32
@sm1_pwrc_mem_usb = internal global { [1 x %struct.meson_ee_pwrc_mem_domain], [24 x i8] } { [1 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 256, i32 -1073741824 }], [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCI\00", [28 x i8] zeroinitializer }, align 32
@sm1_pwrc_pci = internal global { %struct.meson_ee_pwrc_top_domain, [16 x i8] } { %struct.meson_ee_pwrc_top_domain { i32 232, i32 262144, i32 236, i32 262144 }, [16 x i8] zeroinitializer }, align 32
@sm1_pwrc_mem_pcie = internal global { [1 x %struct.meson_ee_pwrc_mem_domain], [24 x i8] } { [1 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 256, i32 1006632960 }], [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GE2D\00", [27 x i8] zeroinitializer }, align 32
@sm1_pwrc_ge2d = internal global { %struct.meson_ee_pwrc_top_domain, [16 x i8] } { %struct.meson_ee_pwrc_top_domain { i32 232, i32 524288, i32 236, i32 524288 }, [16 x i8] zeroinitializer }, align 32
@sm1_pwrc_mem_ge2d = internal global { [1 x %struct.meson_ee_pwrc_mem_domain], [24 x i8] } { [1 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 256, i32 66846720 }], [24 x i8] zeroinitializer }, align 32
@sm1_pwrc_mem_audio = internal global { [13 x %struct.meson_ee_pwrc_mem_domain], [56 x i8] } { [13 x %struct.meson_ee_pwrc_mem_domain] [%struct.meson_ee_pwrc_mem_domain { i32 256, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 3 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 12 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 48 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 192 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 12288 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 49152 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 196608 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 786432 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 3145728 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 12582912 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 50331648 }, %struct.meson_ee_pwrc_mem_domain { i32 276, i32 201326592 }], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"meson_ee_pwrc_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 607, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 611, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [26 x i8] c"meson_ee_pwrc_match_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 574, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 477, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 500, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 505, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 507, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 413, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 427, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"meson_ee_m8_pwrc_data\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 559, i32 41 }
@___asan_gen_.91 = private unnamed_addr constant [23 x i8] c"meson_ee_m8b_pwrc_data\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 564, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant [23 x i8] c"meson_ee_axg_pwrc_data\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 549, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant [24 x i8] c"meson_ee_gxbb_pwrc_data\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 554, i32 41 }
@___asan_gen_.100 = private unnamed_addr constant [24 x i8] c"meson_ee_g12a_pwrc_data\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 544, i32 41 }
@___asan_gen_.103 = private unnamed_addr constant [23 x i8] c"meson_ee_sm1_pwrc_data\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 569, i32 41 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"meson8_pwrc_domains\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 264, i32 41 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 265, i32 26 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"meson8_pwrc_vpu\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 88, i32 40 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"meson8_pwrc_mem_vpu\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 165, i32 40 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 268, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant [19 x i8] c"meson_pwrc_mem_eth\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 157, i32 40 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 270, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant [26 x i8] c"meson8_pwrc_audio_dsp_mem\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 161, i32 40 }
@___asan_gen_.130 = private unnamed_addr constant [21 x i8] c"meson8b_pwrc_domains\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 274, i32 41 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"axg_pwrc_domains\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 245, i32 41 }
@___asan_gen_.136 = private unnamed_addr constant [12 x i8] c"gx_pwrc_vpu\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 81, i32 40 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"axg_pwrc_mem_vpu\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 139, i32 40 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 248, i32 31 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 249, i32 24 }
@___asan_gen_.148 = private unnamed_addr constant [19 x i8] c"axg_pwrc_mem_audio\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 200, i32 40 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"gxbb_pwrc_domains\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 258, i32 41 }
@___asan_gen_.154 = private unnamed_addr constant [18 x i8] c"gxbb_pwrc_mem_vpu\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 151, i32 40 }
@___asan_gen_.157 = private unnamed_addr constant [18 x i8] c"g12a_pwrc_domains\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 252, i32 41 }
@___asan_gen_.160 = private unnamed_addr constant [18 x i8] c"g12a_pwrc_mem_vpu\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 144, i32 40 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"sm1_pwrc_domains\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 284, i32 41 }
@___asan_gen_.166 = private unnamed_addr constant [13 x i8] c"sm1_pwrc_vpu\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 103, i32 40 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"sm1_pwrc_mem_vpu\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 171, i32 40 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 287, i32 23 }
@___asan_gen_.175 = private unnamed_addr constant [13 x i8] c"sm1_pwrc_nna\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 104, i32 40 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"sm1_pwrc_mem_nna\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 183, i32 40 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 289, i32 23 }
@___asan_gen_.184 = private unnamed_addr constant [13 x i8] c"sm1_pwrc_usb\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 105, i32 40 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"sm1_pwrc_mem_usb\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 188, i32 40 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 291, i32 23 }
@___asan_gen_.193 = private unnamed_addr constant [13 x i8] c"sm1_pwrc_pci\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 106, i32 40 }
@___asan_gen_.196 = private unnamed_addr constant [18 x i8] c"sm1_pwrc_mem_pcie\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 192, i32 40 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 293, i32 23 }
@___asan_gen_.202 = private unnamed_addr constant [14 x i8] c"sm1_pwrc_ge2d\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 107, i32 40 }
@___asan_gen_.205 = private unnamed_addr constant [18 x i8] c"sm1_pwrc_mem_ge2d\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 196, i32 40 }
@___asan_gen_.208 = private unnamed_addr constant [19 x i8] c"sm1_pwrc_mem_audio\00", align 1
@___asan_gen_.209 = private constant [39 x i8] c"../drivers/soc/amlogic/meson-ee-pwrc.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 204, i32 40 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_meson_ee_pwrc_driver_exit, ptr @__initcall__kmod_meson_ee_pwrc__170_615_meson_ee_pwrc_driver_init6, ptr @meson_ee_pwrc_driver_exit, ptr @meson_ee_pwrc_init_domain._entry, ptr @meson_ee_pwrc_init_domain._entry.16, ptr @meson_ee_pwrc_init_domain._entry_ptr, ptr @meson_ee_pwrc_init_domain._entry_ptr.18, ptr @meson_ee_pwrc_probe._entry, ptr @meson_ee_pwrc_probe._entry.10, ptr @meson_ee_pwrc_probe._entry.6, ptr @meson_ee_pwrc_probe._entry_ptr, ptr @meson_ee_pwrc_probe._entry_ptr.12, ptr @meson_ee_pwrc_probe._entry_ptr.8, ptr @meson_ee_pwrc_driver, ptr @.str, ptr @meson_ee_pwrc_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @meson_ee_m8_pwrc_data, ptr @meson_ee_m8b_pwrc_data, ptr @meson_ee_axg_pwrc_data, ptr @meson_ee_gxbb_pwrc_data, ptr @meson_ee_g12a_pwrc_data, ptr @meson_ee_sm1_pwrc_data, ptr @meson8_pwrc_domains, ptr @.str.19, ptr @meson8_pwrc_vpu, ptr @meson8_pwrc_mem_vpu, ptr @.str.20, ptr @meson_pwrc_mem_eth, ptr @.str.21, ptr @meson8_pwrc_audio_dsp_mem, ptr @meson8b_pwrc_domains, ptr @axg_pwrc_domains, ptr @gx_pwrc_vpu, ptr @axg_pwrc_mem_vpu, ptr @.str.22, ptr @.str.23, ptr @axg_pwrc_mem_audio, ptr @gxbb_pwrc_domains, ptr @gxbb_pwrc_mem_vpu, ptr @g12a_pwrc_domains, ptr @g12a_pwrc_mem_vpu, ptr @sm1_pwrc_domains, ptr @sm1_pwrc_vpu, ptr @sm1_pwrc_mem_vpu, ptr @.str.24, ptr @sm1_pwrc_nna, ptr @sm1_pwrc_mem_nna, ptr @.str.25, ptr @sm1_pwrc_usb, ptr @sm1_pwrc_mem_usb, ptr @.str.26, ptr @sm1_pwrc_pci, ptr @sm1_pwrc_mem_pcie, ptr @.str.27, ptr @sm1_pwrc_ge2d, ptr @sm1_pwrc_mem_ge2d, ptr @sm1_pwrc_mem_audio], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ee_pwrc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ee_pwrc_match_table to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ee_pwrc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ee_pwrc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ee_pwrc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ee_pwrc_init_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ee_pwrc_init_domain._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ee_m8_pwrc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ee_m8b_pwrc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ee_axg_pwrc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ee_gxbb_pwrc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ee_g12a_pwrc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ee_sm1_pwrc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8_pwrc_domains to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8_pwrc_vpu to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8_pwrc_mem_vpu to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pwrc_mem_eth to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8_pwrc_audio_dsp_mem to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_pwrc_domains to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pwrc_domains to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gx_pwrc_vpu to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pwrc_mem_vpu to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_pwrc_mem_audio to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxbb_pwrc_domains to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxbb_pwrc_mem_vpu to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_pwrc_domains to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_pwrc_mem_vpu to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_pwrc_domains to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_pwrc_vpu to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_pwrc_mem_vpu to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_pwrc_nna to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_pwrc_mem_nna to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_pwrc_usb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_pwrc_mem_usb to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_pwrc_pci to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_pwrc_mem_pcie to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_pwrc_ge2d to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_pwrc_mem_ge2d to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_pwrc_mem_audio to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ee_pwrc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_ee_pwrc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_ee_pwrc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_ee_pwrc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ee_pwrc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup63

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup63_crit_edge, label %if.end6

if.end.cleanup63_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end6:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #6
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !131

devm_kcalloc.exit.thread:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %xlate116 = getelementptr inbounds %struct.meson_ee_pwrc, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %xlate116 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %xlate116, align 4
  br label %cleanup63

devm_kcalloc.exit:                                ; preds = %if.end6
  %5 = extractvalue { i32, i1 } %2, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %5, i32 noundef 3520) #6
  %xlate = getelementptr inbounds %struct.meson_ee_pwrc, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %xlate to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i.i, ptr %xlate, align 4
  %tobool11.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool11.not, label %devm_kcalloc.exit.cleanup63_crit_edge, label %if.end13

devm_kcalloc.exit.cleanup63_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end13:                                         ; preds = %devm_kcalloc.exit
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 1408) #6
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %devm_kcalloc.exit111.thread, label %devm_kcalloc.exit111, !prof !131

devm_kcalloc.exit111.thread:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %domains17119 = getelementptr inbounds %struct.meson_ee_pwrc, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %domains17119 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %domains17119, align 4
  br label %cleanup63

devm_kcalloc.exit111:                             ; preds = %if.end13
  %12 = extractvalue { i32, i1 } %9, 0
  %call5.i.i108 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %12, i32 noundef 3520) #6
  %domains17 = getelementptr inbounds %struct.meson_ee_pwrc, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %domains17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i108, ptr %domains17, align 4
  %tobool19.not = icmp eq ptr %call5.i.i108, null
  br i1 %tobool19.not, label %devm_kcalloc.exit111.cleanup63_crit_edge, label %if.end21

devm_kcalloc.exit111.cleanup63_crit_edge:         ; preds = %devm_kcalloc.exit111
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end21:                                         ; preds = %devm_kcalloc.exit111
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call, align 4
  %num_domains = getelementptr inbounds %struct.meson_ee_pwrc, ptr %call.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %num_domains to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %num_domains, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call25 = tail call ptr @of_get_parent(ptr noundef %18) #6
  %call26 = tail call ptr @syscon_node_to_regmap(ptr noundef %call25) #6
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  %19 = ptrtoint ptr %call26 to i32
  br label %cleanup63

if.end34:                                         ; preds = %if.end21
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call37 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %21, ptr noundef nonnull @.str.9) #6
  %cmp.i112 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %do.end42, label %if.end45

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %22 = ptrtoint ptr %call37 to i32
  br label %cleanup63

if.end45:                                         ; preds = %if.end34
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call37, ptr %call.i, align 4
  %regmap_hhi47 = getelementptr inbounds %struct.meson_ee_pwrc, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %regmap_hhi47 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call26, ptr %regmap_hhi47, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp135.not = icmp eq i32 %27, 0
  br i1 %cmp135.not, label %if.end45.for.end_crit_edge, label %for.body.lr.ph

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end45
  %domains50 = getelementptr inbounds %struct.meson_ee_pwrc_domain_data, ptr %call, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0136 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %28 = ptrtoint ptr %domains17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %domains17, align 4
  %arrayidx = getelementptr %struct.meson_ee_pwrc_domain, ptr %29, i32 %i.0136
  %desc = getelementptr %struct.meson_ee_pwrc_domain, ptr %29, i32 %i.0136, i32 3
  %30 = ptrtoint ptr %domains50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %domains50, align 4
  %arrayidx51 = getelementptr %struct.meson_ee_pwrc_domain_desc, ptr %31, i32 %i.0136
  %32 = call ptr @memcpy(ptr %desc, ptr %arrayidx51, i32 28)
  %pwrc1.i = getelementptr %struct.meson_ee_pwrc_domain, ptr %29, i32 %i.0136, i32 2
  %33 = ptrtoint ptr %pwrc1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %pwrc1.i, align 4
  %reset_names_count.i = getelementptr %struct.meson_ee_pwrc_domain, ptr %29, i32 %i.0136, i32 3, i32 1
  %34 = ptrtoint ptr %reset_names_count.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reset_names_count.i, align 4
  %num_rstc.i = getelementptr %struct.meson_ee_pwrc_domain, ptr %29, i32 %i.0136, i32 7
  %36 = ptrtoint ptr %num_rstc.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %num_rstc.i, align 8
  %clk_names_count.i = getelementptr %struct.meson_ee_pwrc_domain, ptr %29, i32 %i.0136, i32 3, i32 2
  %37 = ptrtoint ptr %clk_names_count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clk_names_count.i, align 8
  %num_clks.i = getelementptr %struct.meson_ee_pwrc_domain, ptr %29, i32 %i.0136, i32 5
  %39 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %num_clks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %for.body.if.end16.i_crit_edge, label %if.then.i

for.body.if.end16.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then.i:                                        ; preds = %for.body
  %call.i113 = tail call i32 @reset_control_get_count(ptr noundef %dev) #6
  %40 = ptrtoint ptr %num_rstc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_rstc.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i113, i32 %41)
  %cmp.not.i = icmp eq i32 %call.i113, %41
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call.i113, ptr noundef %43) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i = tail call ptr @devm_reset_control_array_get(ptr noundef %dev, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %rstc.i = getelementptr %struct.meson_ee_pwrc_domain, ptr %29, i32 %i.0136, i32 6
  %44 = ptrtoint ptr %rstc.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i, ptr %rstc.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %meson_ee_pwrc_init_domain.exit, label %if.end16thread-pre-split.i

if.end16thread-pre-split.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr.i = load i32, ptr %num_clks.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16thread-pre-split.i, %for.body.if.end16.i_crit_edge
  %46 = phi i32 [ %.pr.i, %if.end16thread-pre-split.i ], [ %38, %for.body.if.end16.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool18.not.i = icmp eq i32 %46, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end40.i_crit_edge, label %if.then19.i

if.end16.i.if.end40.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.then19.i:                                      ; preds = %if.end16.i
  %clks.i = getelementptr %struct.meson_ee_pwrc_domain, ptr %29, i32 %i.0136, i32 4
  %call22.i = tail call i32 @devm_clk_bulk_get_all(ptr noundef %dev, ptr noundef %clks.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.then19.i.cleanup63_crit_edge, label %if.end25.i

if.then19.i.cleanup63_crit_edge:                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end25.i:                                       ; preds = %if.then19.i
  %47 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_clks.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %call22.i)
  %cmp27.not.i = icmp eq i32 %48, %call22.i
  br i1 %cmp27.not.i, label %if.end25.i.if.end40.i_crit_edge, label %do.end31.i

if.end25.i.if.end40.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

do.end31.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %desc, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call22.i, ptr noundef %50) #9
  %51 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call22.i, ptr %num_clks.i, align 8
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end31.i, %if.end25.i.if.end40.i_crit_edge, %if.end16.i.if.end40.i_crit_edge
  %52 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %desc, align 8
  %name43.i = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx, i32 0, i32 10
  %54 = ptrtoint ptr %name43.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %name43.i, align 8
  %power_on.i = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx, i32 0, i32 19
  %55 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @meson_ee_pwrc_on, ptr %power_on.i, align 4
  %power_off.i = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx, i32 0, i32 18
  %56 = ptrtoint ptr %power_off.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @meson_ee_pwrc_off, ptr %power_off.i, align 8
  %57 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_clks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool47.not.i = icmp eq i32 %58, 0
  br i1 %tobool47.not.i, label %if.end40.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end40.i.if.else.i_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end40.i
  %is_powered_off.i = getelementptr %struct.meson_ee_pwrc_domain, ptr %29, i32 %i.0136, i32 3, i32 6
  %59 = ptrtoint ptr %is_powered_off.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %is_powered_off.i, align 8
  %tobool49.not.i = icmp eq ptr %60, null
  br i1 %tobool49.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true50.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true50.i:                                ; preds = %land.lhs.true.i
  %call53.i = tail call zeroext i1 %60(ptr noundef %arrayidx) #6
  br i1 %call53.i, label %land.lhs.true50.i.if.else.i_crit_edge, label %if.then54.i

land.lhs.true50.i.if.else.i_crit_edge:            ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then54.i:                                      ; preds = %land.lhs.true50.i
  %61 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_clks.i, align 8
  %clks56.i = getelementptr %struct.meson_ee_pwrc_domain, ptr %29, i32 %i.0136, i32 4
  %63 = ptrtoint ptr %clks56.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clks56.i, align 4
  %call.i130.i = tail call i32 @clk_bulk_prepare(i32 noundef %62, ptr noundef %64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130.i)
  %tobool.not.i.i = icmp eq i32 %call.i130.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i114, label %if.then54.i.cleanup63_crit_edge

if.then54.i.cleanup63_crit_edge:                  ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end.i.i114:                                    ; preds = %if.then54.i
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef %62, ptr noundef %64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end60.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i114
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_bulk_unprepare(i32 noundef %62, ptr noundef %64) #6
  br label %cleanup63

if.end60.i:                                       ; preds = %if.end.i.i114
  %flags.i = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx, i32 0, i32 32
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4, ptr %flags.i, align 4
  %call63.i = tail call i32 @pm_genpd_init(ptr noundef %arrayidx, ptr noundef null, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.end60.i.for.inc_crit_edge, label %if.end60.i.cleanup63_crit_edge

if.end60.i.cleanup63_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end60.i.for.inc_crit_edge:                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else.i:                                        ; preds = %land.lhs.true50.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.end40.i.if.else.i_crit_edge
  %is_powered_off69.i = getelementptr %struct.meson_ee_pwrc_domain, ptr %29, i32 %i.0136, i32 3, i32 6
  %66 = ptrtoint ptr %is_powered_off69.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %is_powered_off69.i, align 8
  %tobool70.not.i = icmp eq ptr %67, null
  br i1 %tobool70.not.i, label %if.else.i.cond.end.i_crit_edge, label %cond.true.i

if.else.i.cond.end.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %call73.i = tail call zeroext i1 %67(ptr noundef %arrayidx) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.else.i.cond.end.i_crit_edge
  %cond.i = phi i1 [ %call73.i, %cond.true.i ], [ true, %if.else.i.cond.end.i_crit_edge ]
  %call75.i = tail call i32 @pm_genpd_init(ptr noundef %arrayidx, ptr noundef null, i1 noundef zeroext %cond.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %cond.end.i.for.inc_crit_edge, label %cond.end.i.cleanup63_crit_edge

cond.end.i.cleanup63_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

cond.end.i.for.inc_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

meson_ee_pwrc_init_domain.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %call.i.i to i32
  br label %cleanup63

for.inc:                                          ; preds = %cond.end.i.for.inc_crit_edge, %if.end60.i.for.inc_crit_edge
  %69 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xlate, align 4
  %arrayidx58 = getelementptr ptr, ptr %70, i32 %i.0136
  %71 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx, ptr %arrayidx58, align 4
  %inc = add nuw i32 %i.0136, 1
  %72 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %call, align 4
  %cmp = icmp ult i32 %inc, %73
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end45.for.end_crit_edge
  %74 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %of_node, align 8
  %call62 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %75, ptr noundef %xlate) #6
  br label %cleanup63

cleanup63:                                        ; preds = %for.end, %meson_ee_pwrc_init_domain.exit, %cond.end.i.cleanup63_crit_edge, %if.end60.i.cleanup63_crit_edge, %if.then3.i.i, %if.then54.i.cleanup63_crit_edge, %if.then19.i.cleanup63_crit_edge, %do.end42, %do.end31, %devm_kcalloc.exit111.cleanup63_crit_edge, %devm_kcalloc.exit111.thread, %devm_kcalloc.exit.cleanup63_crit_edge, %devm_kcalloc.exit.thread, %if.end.cleanup63_crit_edge, %do.end
  %retval.2 = phi i32 [ %19, %do.end31 ], [ %22, %do.end42 ], [ %call62, %for.end ], [ -19, %do.end ], [ -12, %if.end.cleanup63_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup63_crit_edge ], [ -12, %devm_kcalloc.exit111.cleanup63_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit111.thread ], [ %call1.i.i, %if.then3.i.i ], [ %68, %meson_ee_pwrc_init_domain.exit ], [ %call63.i, %if.end60.i.cleanup63_crit_edge ], [ %call75.i, %cond.end.i.cleanup63_crit_edge ], [ %call22.i, %if.then19.i.cleanup63_crit_edge ], [ %call.i130.i, %if.then54.i.cleanup63_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_ee_pwrc_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_domains = getelementptr inbounds %struct.meson_ee_pwrc, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not = icmp eq i32 %3, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %domains = getelementptr inbounds %struct.meson_ee_pwrc, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %domains to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domains, align 4
  %arrayidx = getelementptr %struct.meson_ee_pwrc_domain, ptr %5, i32 %i.012
  %is_powered_off = getelementptr %struct.meson_ee_pwrc_domain, ptr %5, i32 %i.012, i32 3, i32 6
  %6 = ptrtoint ptr %is_powered_off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %is_powered_off, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %call3 = tail call zeroext i1 %7(ptr noundef %arrayidx) #6
  br i1 %call3, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @meson_ee_pwrc_off(ptr noundef %arrayidx)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %inc = add nuw i32 %i.012, 1
  %8 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_domains, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_get_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ee_pwrc_on(ptr nocapture noundef readonly %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %top_pd = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %top_pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %top_pd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pwrc = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 2
  %2 = ptrtoint ptr %pwrc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %sleep_mask = getelementptr inbounds %struct.meson_ee_pwrc_top_domain, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %sleep_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sleep_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 4294960) #6
  %mem_pd_count = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %mem_pd_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mem_pd_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp61.not = icmp eq i32 %12, 0
  br i1 %cmp61.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %pwrc6 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 2
  %mem_pd = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 3, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %pwrc6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pwrc6, align 4
  %regmap_hhi = getelementptr inbounds %struct.meson_ee_pwrc, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap_hhi, align 4
  %17 = ptrtoint ptr %mem_pd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mem_pd, align 4
  %arrayidx = getelementptr %struct.meson_ee_pwrc_mem_domain, ptr %18, i32 %i.062
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %mask = getelementptr %struct.meson_ee_pwrc_mem_domain, ptr %18, i32 %i.062, i32 1
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask, align 4
  %call.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %20, i32 noundef %22, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %inc = add nuw i32 %i.062, 1
  %23 = ptrtoint ptr %mem_pd_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mem_pd_count, align 8
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 4294960) #6
  %rstc = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 6
  %26 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rstc, align 4
  %call12 = tail call i32 @reset_control_assert(ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %28 = ptrtoint ptr %top_pd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %top_pd, align 4
  %tobool18.not = icmp eq ptr %29, null
  br i1 %tobool18.not, label %if.end15.if.end27_crit_edge, label %if.then19

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %pwrc20 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 2
  %30 = ptrtoint ptr %pwrc20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pwrc20, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %iso_reg = getelementptr inbounds %struct.meson_ee_pwrc_top_domain, ptr %29, i32 0, i32 2
  %34 = ptrtoint ptr %iso_reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iso_reg, align 4
  %iso_mask = getelementptr inbounds %struct.meson_ee_pwrc_top_domain, ptr %29, i32 0, i32 3
  %36 = ptrtoint ptr %iso_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iso_mask, align 4
  %call.i59 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %if.end15.if.end27_crit_edge
  %38 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rstc, align 4
  %call29 = tail call i32 @reset_control_deassert(ptr noundef %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %num_clks = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 5
  %40 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_clks, align 8
  %clks = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 4
  %42 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clks, align 4
  %call.i60 = tail call i32 @clk_bulk_prepare(i32 noundef %41, ptr noundef %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i = icmp eq i32 %call.i60, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end32
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %41, ptr noundef %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_bulk_unprepare(i32 noundef %41, ptr noundef %43) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %for.end.cleanup_crit_edge ], [ %call29, %if.end27.cleanup_crit_edge ], [ %call.i60, %if.end32.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ee_pwrc_off(ptr nocapture noundef readonly %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %top_pd = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %top_pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %top_pd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pwrc = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 2
  %2 = ptrtoint ptr %pwrc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %sleep_mask = getelementptr inbounds %struct.meson_ee_pwrc_top_domain, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %sleep_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sleep_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 4294960) #6
  %mem_pd_count = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %mem_pd_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mem_pd_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp62.not = icmp eq i32 %12, 0
  br i1 %cmp62.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %pwrc9 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 2
  %mem_pd = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 3, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %pwrc9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pwrc9, align 4
  %regmap_hhi = getelementptr inbounds %struct.meson_ee_pwrc, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap_hhi, align 4
  %17 = ptrtoint ptr %mem_pd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mem_pd, align 4
  %arrayidx = getelementptr %struct.meson_ee_pwrc_mem_domain, ptr %18, i32 %i.063
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %mask = getelementptr %struct.meson_ee_pwrc_mem_domain, ptr %18, i32 %i.063, i32 1
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask, align 4
  %call.i60 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %20, i32 noundef %22, i32 noundef %22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %inc = add nuw i32 %i.063, 1
  %23 = ptrtoint ptr %mem_pd_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mem_pd_count, align 8
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 4294960) #6
  %26 = ptrtoint ptr %top_pd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %top_pd, align 4
  %tobool21.not = icmp eq ptr %27, null
  br i1 %tobool21.not, label %for.end.if.end33_crit_edge, label %if.then22

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %pwrc23 = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 2
  %28 = ptrtoint ptr %pwrc23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pwrc23, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %iso_reg = getelementptr inbounds %struct.meson_ee_pwrc_top_domain, ptr %27, i32 0, i32 2
  %32 = ptrtoint ptr %iso_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iso_reg, align 4
  %iso_mask = getelementptr inbounds %struct.meson_ee_pwrc_top_domain, ptr %27, i32 0, i32 3
  %34 = ptrtoint ptr %iso_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iso_mask, align 4
  %call.i61 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then22, %for.end.if.end33_crit_edge
  %num_clks = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 5
  %36 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_clks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool34.not = icmp eq i32 %37, 0
  br i1 %tobool34.not, label %if.end33.if.end37_crit_edge, label %if.then35

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 20) #6
  %38 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_clks, align 8
  %clks = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %domain, i32 0, i32 4
  %40 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %39, ptr noundef %41) #6
  tail call void @clk_bulk_unprepare(i32 noundef %39, ptr noundef %41) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33.if.end37_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @pwrc_ee_is_powered_off(ptr nocapture noundef readonly %pwrc_domain) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !132
  %pwrc = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %pwrc_domain, i32 0, i32 2
  %1 = ptrtoint ptr %pwrc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pwrc, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %top_pd = getelementptr inbounds %struct.meson_ee_pwrc_domain, ptr %pwrc_domain, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %top_pd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %top_pd, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %reg) #6
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %11 = ptrtoint ptr %top_pd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %top_pd, align 4
  %sleep_mask = getelementptr inbounds %struct.meson_ee_pwrc_top_domain, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %sleep_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sleep_mask, align 4
  %and = and i32 %14, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__initcall__kmod_meson_ee_pwrc__170_615_meson_ee_pwrc_driver_init6, !1, !"__initcall__kmod_meson_ee_pwrc__170_615_meson_ee_pwrc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 615, i32 1}
!2 = !{ptr @__exitcall_meson_ee_pwrc_driver_exit, !1, !"__exitcall_meson_ee_pwrc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file171, !4, !"__UNIQUE_ID_file171", i1 false, i1 false}
!4 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 616, i32 1}
!5 = !{ptr @__UNIQUE_ID_license172, !4, !"__UNIQUE_ID_license172", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 611, i32 12}
!8 = !{ptr @meson_ee_pwrc_driver, !9, !"meson_ee_pwrc_driver", i1 false, i1 false}
!9 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 607, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 477, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @meson_ee_pwrc_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @meson_ee_pwrc_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 500, i32 3}
!20 = !{ptr @meson_ee_pwrc_probe._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @meson_ee_pwrc_probe._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 505, i32 11}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 507, i32 3}
!26 = !{ptr @meson_ee_pwrc_probe._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @meson_ee_pwrc_probe._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 413, i32 4}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @meson_ee_pwrc_init_domain._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @meson_ee_pwrc_init_domain._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 427, i32 4}
!36 = !{ptr @meson_ee_pwrc_init_domain._entry.16, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @meson_ee_pwrc_init_domain._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @meson_ee_pwrc_match_table, !39, !"meson_ee_pwrc_match_table", i1 false, i1 false}
!39 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 574, i32 34}
!40 = !{ptr @meson_ee_m8_pwrc_data, !41, !"meson_ee_m8_pwrc_data", i1 false, i1 false}
!41 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 559, i32 41}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 265, i32 26}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 268, i32 34}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 270, i32 35}
!48 = !{ptr @meson8_pwrc_domains, !49, !"meson8_pwrc_domains", i1 false, i1 false}
!49 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 264, i32 41}
!50 = !{ptr @meson8_pwrc_vpu, !51, !"meson8_pwrc_vpu", i1 false, i1 false}
!51 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 88, i32 40}
!52 = !{ptr @meson8_pwrc_mem_vpu, !53, !"meson8_pwrc_mem_vpu", i1 false, i1 false}
!53 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 165, i32 40}
!54 = !{ptr @meson_pwrc_mem_eth, !55, !"meson_pwrc_mem_eth", i1 false, i1 false}
!55 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 157, i32 40}
!56 = !{ptr @meson8_pwrc_audio_dsp_mem, !57, !"meson8_pwrc_audio_dsp_mem", i1 false, i1 false}
!57 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 161, i32 40}
!58 = !{ptr @meson_ee_m8b_pwrc_data, !59, !"meson_ee_m8b_pwrc_data", i1 false, i1 false}
!59 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 564, i32 41}
!60 = !{ptr @meson8b_pwrc_domains, !61, !"meson8b_pwrc_domains", i1 false, i1 false}
!61 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 274, i32 41}
!62 = !{ptr @meson_ee_axg_pwrc_data, !63, !"meson_ee_axg_pwrc_data", i1 false, i1 false}
!63 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 549, i32 41}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 248, i32 31}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 249, i32 24}
!68 = !{ptr @axg_pwrc_domains, !69, !"axg_pwrc_domains", i1 false, i1 false}
!69 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 245, i32 41}
!70 = !{ptr @gx_pwrc_vpu, !71, !"gx_pwrc_vpu", i1 false, i1 false}
!71 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 81, i32 40}
!72 = !{ptr @axg_pwrc_mem_vpu, !73, !"axg_pwrc_mem_vpu", i1 false, i1 false}
!73 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 139, i32 40}
!74 = !{ptr @axg_pwrc_mem_audio, !75, !"axg_pwrc_mem_audio", i1 false, i1 false}
!75 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 200, i32 40}
!76 = !{ptr @meson_ee_gxbb_pwrc_data, !77, !"meson_ee_gxbb_pwrc_data", i1 false, i1 false}
!77 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 554, i32 41}
!78 = !{ptr @gxbb_pwrc_domains, !79, !"gxbb_pwrc_domains", i1 false, i1 false}
!79 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 258, i32 41}
!80 = !{ptr @gxbb_pwrc_mem_vpu, !81, !"gxbb_pwrc_mem_vpu", i1 false, i1 false}
!81 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 151, i32 40}
!82 = !{ptr @meson_ee_g12a_pwrc_data, !83, !"meson_ee_g12a_pwrc_data", i1 false, i1 false}
!83 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 544, i32 41}
!84 = !{ptr @g12a_pwrc_domains, !85, !"g12a_pwrc_domains", i1 false, i1 false}
!85 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 252, i32 41}
!86 = !{ptr @g12a_pwrc_mem_vpu, !87, !"g12a_pwrc_mem_vpu", i1 false, i1 false}
!87 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 144, i32 40}
!88 = !{ptr @meson_ee_sm1_pwrc_data, !89, !"meson_ee_sm1_pwrc_data", i1 false, i1 false}
!89 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 569, i32 41}
!90 = !{ptr @.str.24, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 287, i32 23}
!92 = !{ptr @.str.25, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 289, i32 23}
!94 = !{ptr @.str.26, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 291, i32 23}
!96 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 293, i32 23}
!98 = !{ptr @sm1_pwrc_domains, !99, !"sm1_pwrc_domains", i1 false, i1 false}
!99 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 284, i32 41}
!100 = !{ptr @sm1_pwrc_vpu, !101, !"sm1_pwrc_vpu", i1 false, i1 false}
!101 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 103, i32 40}
!102 = !{ptr @sm1_pwrc_mem_vpu, !103, !"sm1_pwrc_mem_vpu", i1 false, i1 false}
!103 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 171, i32 40}
!104 = !{ptr @sm1_pwrc_nna, !105, !"sm1_pwrc_nna", i1 false, i1 false}
!105 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 104, i32 40}
!106 = !{ptr @sm1_pwrc_mem_nna, !107, !"sm1_pwrc_mem_nna", i1 false, i1 false}
!107 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 183, i32 40}
!108 = !{ptr @sm1_pwrc_usb, !109, !"sm1_pwrc_usb", i1 false, i1 false}
!109 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 105, i32 40}
!110 = !{ptr @sm1_pwrc_mem_usb, !111, !"sm1_pwrc_mem_usb", i1 false, i1 false}
!111 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 188, i32 40}
!112 = !{ptr @sm1_pwrc_pci, !113, !"sm1_pwrc_pci", i1 false, i1 false}
!113 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 106, i32 40}
!114 = !{ptr @sm1_pwrc_mem_pcie, !115, !"sm1_pwrc_mem_pcie", i1 false, i1 false}
!115 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 192, i32 40}
!116 = !{ptr @sm1_pwrc_ge2d, !117, !"sm1_pwrc_ge2d", i1 false, i1 false}
!117 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 107, i32 40}
!118 = !{ptr @sm1_pwrc_mem_ge2d, !119, !"sm1_pwrc_mem_ge2d", i1 false, i1 false}
!119 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 196, i32 40}
!120 = !{ptr @sm1_pwrc_mem_audio, !121, !"sm1_pwrc_mem_audio", i1 false, i1 false}
!121 = !{!"../drivers/soc/amlogic/meson-ee-pwrc.c", i32 204, i32 40}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"branch_weights", i32 1, i32 2000}
!132 = !{!"auto-init"}
