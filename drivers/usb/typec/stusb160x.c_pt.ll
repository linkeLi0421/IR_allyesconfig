; ModuleID = '/llk/IR_all_yes/drivers/usb/typec/stusb160x.c_pt.bc'
source_filename = "../drivers/usb/typec/stusb160x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.stusb160x = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.typec_capability, ptr, i32, i32, i8, ptr }
%struct.typec_capability = type { i32, i32, i16, i16, i32, i32, [3 x i32], i8, ptr, ptr, ptr }
%struct.typec_partner_desc = type { i8, i32, ptr, i16 }

@__initcall__kmod_stusb160x__318_881_stusb160x_driver_init6 = internal global ptr @stusb160x_driver_init, section ".initcall6.init", align 4
@stusb160x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @stusb160x_remove, ptr @stusb160x_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stusb160x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stusb160x_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_stusb160x_driver_exit = internal global ptr @stusb160x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author319 = internal constant [58 x i8] c"stusb160x.author=Amelie Delaunay <amelie.delaunay@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description320 = internal constant [76 x i8] c"stusb160x.description=STMicroelectronics STUSB160x Type-C controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [43 x i8] c"stusb160x.file=drivers/usb/typec/stusb160x\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [25 x i8] c"stusb160x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stusb160x\00", [22 x i8] zeroinitializer }, align 32
@stusb160x_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stusb1600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stusb1600_regmap_config }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stusb160x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stusb160x_suspend, ptr @stusb160x_resume, ptr @stusb160x_suspend, ptr @stusb160x_resume, ptr @stusb160x_suspend, ptr @stusb160x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stusb160x_get_vconn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to get Vconn status: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stusb160x_get_vconn\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/typec/stusb160x.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stusb160x_get_vconn._entry_ptr = internal global ptr @stusb160x_get_vconn._entry, section ".printk_index", align 4
@stusb160x_set_vconn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to enable vconn supply: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stusb160x_set_vconn\00", [44 x i8] zeroinitializer }, align 32
@stusb160x_set_vconn._entry_ptr = internal global ptr @stusb160x_set_vconn._entry, section ".printk_index", align 4
@stusb160x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"stusb160x:650:(regmap_config)->lock\00", [60 x i8] zeroinitializer }, align 32
@stusb160x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 654, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to allocate register map:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stusb160x_probe\00", [16 x i8] zeroinitializer }, align 32
@stusb160x_probe._entry_ptr = internal global ptr @stusb160x_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vsys\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vconn\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"connector\00", [22 x i8] zeroinitializer }, align 32
@stusb160x_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.3, i32 713, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enable main supply: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@stusb160x_probe._entry_ptr.17 = internal global ptr @stusb160x_probe._entry.15, section ".printk_index", align 4
@stusb160x_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.3, i32 721, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get port caps: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@stusb160x_probe._entry_ptr.20 = internal global ptr @stusb160x_probe._entry.18, section ".printk_index", align 4
@stusb160x_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.10, ptr @.str.3, i32 728, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get connector caps: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@stusb160x_probe._entry_ptr.23 = internal global ptr @stusb160x_probe._entry.21, section ".printk_index", align 4
@stusb160x_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.10, ptr @.str.3, i32 734, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to init port: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@stusb160x_probe._entry_ptr.26 = internal global ptr @stusb160x_probe._entry.24, section ".printk_index", align 4
@stusb160x_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str.3, i32 757, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get usb role switch: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@stusb160x_probe._entry_ptr.29 = internal global ptr @stusb160x_probe._entry.27, section ".printk_index", align 4
@stusb160x_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.10, ptr @.str.3, i32 776, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable VDD supply: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@stusb160x_probe._entry_ptr.32 = internal global ptr @stusb160x_probe._entry.30, section ".printk_index", align 4
@stusb160x_get_pwr_opmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to get pwr opmode: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stusb160x_get_pwr_opmode\00", [39 x i8] zeroinitializer }, align 32
@stusb160x_get_pwr_opmode._entry_ptr = internal global ptr @stusb160x_get_pwr_opmode._entry, section ".printk_index", align 4
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power-role\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"typec-power-opmode\00", [45 x i8] zeroinitializer }, align 32
@stusb160x_get_fw_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 570, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bad power operation mode: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stusb160x_get_fw_caps\00", [42 x i8] zeroinitializer }, align 32
@stusb160x_get_fw_caps._entry_ptr = internal global ptr @stusb160x_get_fw_caps._entry, section ".printk_index", align 4
@stusb160x_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 449, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"attach failed: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stusb160x_irq_init\00", [45 x i8] zeroinitializer }, align 32
@stusb160x_irq_init._entry_ptr = internal global ptr @stusb160x_irq_init._entry, section ".printk_index", align 4
@stusb160x_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enable Vbus supply: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stusb160x_attach\00", [47 x i8] zeroinitializer }, align 32
@stusb160x_attach._entry_ptr = internal global ptr @stusb160x_attach._entry, section ".printk_index", align 4
@stusb1600_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 1, i32 0, i32 8, ptr @stusb160x_reg_writeable, ptr @stusb160x_reg_readable, ptr @stusb160x_reg_volatile, ptr @stusb160x_reg_precious, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 47, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@stusb160x_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.43, ptr @.str.3, i32 862, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stusb160x_resume\00", [47 x i8] zeroinitializer }, align 32
@stusb160x_resume._entry_ptr = internal global ptr @stusb160x_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [11 x i64] [i64 9, i64 32, i64 12, i64 24, i64 30, i64 32, i64 34, i64 35, i64 37, i64 40, i64 46]
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"stusb160x_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 872, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 874, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"stusb160x_of_match\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 628, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"stusb160x_pm_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 870, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 247, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 263, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 650, i32 17 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 653, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 660, i32 61 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 668, i32 60 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 676, i32 62 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 684, i32 50 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 712, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 721, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 728, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 734, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 755, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 774, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 296, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 545, i32 44 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 565, i32 44 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 570, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 449, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 353, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant [24 x i8] c"stusb1600_regmap_config\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 228, i32 35 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [33 x i8] c"../drivers/usb/typec/stusb160x.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 862, i32 4 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_stusb160x_driver_exit, ptr @__initcall__kmod_stusb160x__318_881_stusb160x_driver_init6, ptr @stusb160x_attach._entry, ptr @stusb160x_attach._entry_ptr, ptr @stusb160x_driver_exit, ptr @stusb160x_get_fw_caps._entry, ptr @stusb160x_get_fw_caps._entry_ptr, ptr @stusb160x_get_pwr_opmode._entry, ptr @stusb160x_get_pwr_opmode._entry_ptr, ptr @stusb160x_get_vconn._entry, ptr @stusb160x_get_vconn._entry_ptr, ptr @stusb160x_irq_init._entry, ptr @stusb160x_irq_init._entry_ptr, ptr @stusb160x_probe._entry, ptr @stusb160x_probe._entry.15, ptr @stusb160x_probe._entry.18, ptr @stusb160x_probe._entry.21, ptr @stusb160x_probe._entry.24, ptr @stusb160x_probe._entry.27, ptr @stusb160x_probe._entry.30, ptr @stusb160x_probe._entry_ptr, ptr @stusb160x_probe._entry_ptr.17, ptr @stusb160x_probe._entry_ptr.20, ptr @stusb160x_probe._entry_ptr.23, ptr @stusb160x_probe._entry_ptr.26, ptr @stusb160x_probe._entry_ptr.29, ptr @stusb160x_probe._entry_ptr.32, ptr @stusb160x_resume._entry, ptr @stusb160x_resume._entry_ptr, ptr @stusb160x_set_vconn._entry, ptr @stusb160x_set_vconn._entry_ptr, ptr @stusb160x_driver, ptr @.str, ptr @stusb160x_of_match, ptr @stusb160x_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @stusb160x_probe._key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @stusb1600_regmap_config, ptr @.str.43], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_get_vconn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_set_vconn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_get_pwr_opmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_get_fw_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb1600_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stusb160x_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stusb160x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @stusb160x_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stusb160x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @stusb160x_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stusb160x_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %partner = getelementptr inbounds %struct.stusb160x, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %partner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %partner, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @typec_unregister_partner(ptr noundef nonnull %3) #6
  %4 = ptrtoint ptr %partner to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %partner, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vbus_on = getelementptr inbounds %struct.stusb160x, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %vbus_on to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vbus_on, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vdd_supply = getelementptr inbounds %struct.stusb160x, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdd_supply, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %8) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %role_sw = getelementptr inbounds %struct.stusb160x, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %role_sw, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_role_switch_put(ptr noundef nonnull %10) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %port = getelementptr inbounds %struct.stusb160x, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  tail call void @typec_unregister_port(ptr noundef %12) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i, align 4, !annotation !111
  %regmap.i = getelementptr inbounds %struct.stusb160x, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 24, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %stusb160x_get_vconn.exit, label %stusb160x_get_vconn.exit.thread

stusb160x_get_vconn.exit.thread:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.1, i32 noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end14

stusb160x_get_vconn.exit:                         ; preds = %if.end10
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br i1 %tobool16.i.not, label %stusb160x_get_vconn.exit.if.end14_crit_edge, label %if.then12

stusb160x_get_vconn.exit.if.end14_crit_edge:      ; preds = %stusb160x_get_vconn.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %stusb160x_get_vconn.exit
  %vconn_supply.i = getelementptr inbounds %struct.stusb160x, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %vconn_supply.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vconn_supply.i, align 4
  %tobool.not.i33 = icmp eq ptr %21, null
  br i1 %tobool.not.i33, label %if.then12.if.end9.i_crit_edge, label %if.then.i

if.then12.if.end9.i_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 @regulator_disable(ptr noundef nonnull %21) #6
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i, %if.then12.if.end9.i_crit_edge
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 32, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end14

if.end14:                                         ; preds = %if.end9.i, %stusb160x_get_vconn.exit.if.end14_crit_edge, %stusb160x_get_vconn.exit.thread
  %main_supply = getelementptr inbounds %struct.stusb160x, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %main_supply to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %main_supply, align 4
  %tobool15.not = icmp eq ptr %25, null
  br i1 %tobool15.not, label %if.end14.if.end19_crit_edge, label %if.then16

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = call i32 @regulator_disable(ptr noundef nonnull %25) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14.if.end19_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stusb160x_probe(ptr noundef %client) #2 align 64 {
entry:
  %val.i289 = alloca i32, align 4
  %val.i.i277 = alloca i32, align 4
  %val.i278 = alloca i32, align 4
  %cap_str.i = alloca ptr, align 4
  %val.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 96, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @i2c_of_match_device(ptr noundef nonnull @stusb160x_of_match, ptr noundef %client) #6
  %data = getelementptr inbounds %struct.of_device_id, ptr %call1, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef %2, ptr noundef nonnull @stusb160x_probe._key, ptr noundef nonnull @.str.8) #6
  %regmap = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %4) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i, align 4
  %call13 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.11) #6
  %vsys_supply = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %vsys_supply to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %vsys_supply, align 4
  %cmp.i266 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i266, label %if.then16, label %if.end9.if.end22_crit_edge

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then16:                                        ; preds = %if.end9
  %7 = ptrtoint ptr %call13 to i32
  %cmp.not = icmp eq ptr %call13, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not, label %if.end20, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %vsys_supply to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %vsys_supply, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %if.end9.if.end22_crit_edge
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %call24 = tail call ptr @devm_regulator_get_optional(ptr noundef %10, ptr noundef nonnull @.str.12) #6
  %vdd_supply = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call24, ptr %vdd_supply, align 4
  %cmp.i267 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i267, label %if.then27, label %if.end22.if.end34_crit_edge

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then27:                                        ; preds = %if.end22
  %12 = ptrtoint ptr %call24 to i32
  %cmp30.not = icmp eq ptr %call24, inttoptr (i32 -19 to ptr)
  br i1 %cmp30.not, label %if.end32, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %vdd_supply, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %if.end22.if.end34_crit_edge
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %call36 = tail call ptr @devm_regulator_get_optional(ptr noundef %15, ptr noundef nonnull @.str.13) #6
  %vconn_supply = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %vconn_supply to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call36, ptr %vconn_supply, align 4
  %cmp.i268 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i268, label %if.then39, label %if.end34.if.end46_crit_edge

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then39:                                        ; preds = %if.end34
  %17 = ptrtoint ptr %call36 to i32
  %cmp42.not = icmp eq ptr %call36, inttoptr (i32 -19 to ptr)
  br i1 %cmp42.not, label %if.end44, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %vconn_supply to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %vconn_supply, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %if.end34.if.end46_crit_edge
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %call48 = tail call ptr @device_get_named_child_node(ptr noundef %20, ptr noundef nonnull @.str.14) #6
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end46.cleanup_crit_edge, label %if.end51

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  tail call void @fw_devlink_purge_absent_suppliers(ptr noundef nonnull %call48) #6
  %21 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vdd_supply, align 4
  %tobool53.not = icmp eq ptr %22, null
  br i1 %tobool53.not, label %if.end51.if.else_crit_edge, label %land.lhs.true

if.end51.if.else_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end51
  %23 = ptrtoint ptr %vsys_supply to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vsys_supply, align 4
  %tobool55.not = icmp eq ptr %24, null
  br i1 %tobool55.not, label %land.lhs.true.if.end63_crit_edge, label %lor.lhs.false

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call57 = tail call i32 @regulator_get_voltage(ptr noundef nonnull %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3100001, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 3100001
  br i1 %cmp58, label %lor.lhs.false.if.end63_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

lor.lhs.false.if.end63_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %if.end51.if.else_crit_edge
  br label %if.end63

if.end63:                                         ; preds = %if.else, %lor.lhs.false.if.end63_crit_edge, %land.lhs.true.if.end63_crit_edge
  %vsys_supply.sink = phi ptr [ %vsys_supply, %if.else ], [ %vdd_supply, %lor.lhs.false.if.end63_crit_edge ], [ %vdd_supply, %land.lhs.true.if.end63_crit_edge ]
  %25 = ptrtoint ptr %vsys_supply.sink to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vsys_supply.sink, align 4
  %main_supply62 = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %main_supply62 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %main_supply62, align 4
  %main_supply64 = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 5
  %tobool65.not = icmp eq ptr %26, null
  br i1 %tobool65.not, label %if.end63.if.end76_crit_edge, label %if.then66

if.end63.if.end76_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then66:                                        ; preds = %if.end63
  %call68 = tail call i32 @regulator_enable(ptr noundef nonnull %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then66.if.end76_crit_edge, label %do.end73

if.then66.if.end76_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

do.end73:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.16, i32 noundef %call68) #9
  br label %fwnode_put

if.end76:                                         ; preds = %if.then66.if.end76_crit_edge, %if.end63.if.end76_crit_edge
  %capability.i = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 7
  %data3.i = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 7, i32 1
  %accessory5.i = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 7, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %val.i, align 4, !annotation !111
  %revision.i = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %revision.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 288, ptr %revision.i, align 4
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call.i269 = call i32 @regmap_read(ptr noundef %33, i32 noundef 40, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %tobool.not.i = icmp eq i32 %call.i269, 0
  br i1 %tobool.not.i, label %do.end18.i, label %if.end76.do.end82_crit_edge

if.end76.do.end82_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end82

do.end18.i:                                       ; preds = %if.end76
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i, align 4
  %and.i = and i32 %35, 7
  %36 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %do.end18.i.do.end82_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb20.i
    i32 2, label %sw.bb23.i
    i32 3, label %do.end18.i.sw.bb24.i_crit_edge
    i32 4, label %do.end18.i.sw.bb24.i_crit_edge310
    i32 5, label %do.end18.i.sw.bb24.i_crit_edge311
  ]

do.end18.i.sw.bb24.i_crit_edge311:                ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24.i

do.end18.i.sw.bb24.i_crit_edge310:                ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24.i

do.end18.i.sw.bb24.i_crit_edge:                   ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24.i

do.end18.i.do.end82_crit_edge:                    ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end82

sw.bb.i:                                          ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %capability.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %capability.i, align 4
  %38 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %data3.i, align 4
  %incdec.ptr.i = getelementptr %struct.stusb160x, ptr %call.i, i32 0, i32 7, i32 6, i32 1
  %39 = ptrtoint ptr %accessory5.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %accessory5.i, align 4
  %40 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %incdec.ptr.i, align 4
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %capability.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %capability.i, align 4
  %42 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %data3.i, align 4
  %incdec.ptr21.i = getelementptr %struct.stusb160x, ptr %call.i, i32 0, i32 7, i32 6, i32 1
  %43 = ptrtoint ptr %accessory5.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %accessory5.i, align 4
  %44 = ptrtoint ptr %incdec.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %incdec.ptr21.i, align 4
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %capability.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %capability.i, align 4
  %46 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %data3.i, align 4
  br label %sw.epilog.i

sw.bb24.i:                                        ; preds = %do.end18.i.sw.bb24.i_crit_edge, %do.end18.i.sw.bb24.i_crit_edge310, %do.end18.i.sw.bb24.i_crit_edge311
  %47 = ptrtoint ptr %capability.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %capability.i, align 4
  %48 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %data3.i, align 4
  %incdec.ptr25.i = getelementptr %struct.stusb160x, ptr %call.i, i32 0, i32 7, i32 6, i32 1
  %49 = ptrtoint ptr %accessory5.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %accessory5.i, align 4
  %50 = ptrtoint ptr %incdec.ptr25.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %incdec.ptr25.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb24.i, %sw.bb23.i, %sw.bb20.i, %sw.bb.i
  %51 = ptrtoint ptr %capability.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %capability.i, align 4
  %port_type.i = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 9
  %53 = ptrtoint ptr %port_type.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %port_type.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %54 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %val.i.i, align 4, !annotation !111
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %56, i32 noundef 24, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.end15.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.33, i32 noundef %call.i.i) #9
  br label %if.end84

do.end15.i.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val.i.i, align 4
  %and.i.i = lshr i32 %60, 6
  %shr.i.i = and i32 %and.i.i, 3
  br label %if.end84

do.end82:                                         ; preds = %do.end18.i.do.end82_crit_edge, %if.end76.do.end82_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %do.end18.i.do.end82_crit_edge ], [ %call.i269, %if.end76.do.end82_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i.ph) #9
  br label %main_reg_disable

if.end84:                                         ; preds = %do.end15.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ 0, %do.end.i.i ], [ %shr.i.i, %do.end15.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  %pwr_opmode.i = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 10
  %63 = ptrtoint ptr %pwr_opmode.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %retval.0.i.i, ptr %pwr_opmode.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap_str.i) #6
  %64 = ptrtoint ptr %cap_str.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %cap_str.i, align 4, !annotation !111
  %fwnode1.i = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 7, i32 8
  %65 = ptrtoint ptr %fwnode1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call48, ptr %fwnode1.i, align 4
  %call.i271 = call i32 @fwnode_property_read_string(ptr noundef nonnull %call48, ptr noundef nonnull @.str.35, ptr noundef nonnull %cap_str.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271)
  %tobool.not.i272 = icmp eq i32 %call.i271, 0
  br i1 %tobool.not.i272, label %if.then.i, label %if.end4.ithread-pre-split

if.then.i:                                        ; preds = %if.end84
  %66 = ptrtoint ptr %cap_str.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cap_str.i, align 4
  %call2.i = call i32 @typec_find_port_power_role(ptr noundef %67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i273 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i273, label %if.then.i.do.end90_crit_edge, label %if.end.i

if.then.i.do.end90_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end90

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %port_type.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call2.i, ptr %port_type.i, align 4
  br label %if.end4.i

if.end4.ithread-pre-split:                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr = load i32, ptr %port_type.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end4.ithread-pre-split, %if.end.i
  %70 = phi i32 [ %.pr, %if.end4.ithread-pre-split ], [ %call2.i, %if.end.i ]
  %71 = ptrtoint ptr %capability.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %capability.i, align 4
  %72 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %70, label %if.end4.i.if.end15.i_crit_edge [
    i32 1, label %if.end4.i.if.end92_crit_edge
    i32 2, label %if.then13.i
  ]

if.end4.i.if.end92_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.end4.i.if.end15.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %prefer_role.i = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 7, i32 5
  %73 = ptrtoint ptr %prefer_role.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %prefer_role.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.end4.i.if.end15.i_crit_edge
  %call16.i = call i32 @fwnode_property_read_string(ptr noundef nonnull %call48, ptr noundef nonnull @.str.36, ptr noundef nonnull %cap_str.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end15.i.if.end92_crit_edge

if.end15.i.if.end92_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then18.i:                                      ; preds = %if.end15.i
  %74 = ptrtoint ptr %cap_str.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cap_str.i, align 4
  %call19.i = call i32 @typec_find_pwr_opmode(ptr noundef %75) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call19.i)
  %cmp21.i = icmp eq i32 %call19.i, 3
  %or.cond.i = or i1 %cmp20.i, %cmp21.i
  br i1 %or.cond.i, label %do.end.i, label %if.end23.i

do.end.i:                                         ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.37, i32 noundef %call19.i) #9
  br label %do.end90

if.end23.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %pwr_opmode.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call19.i, ptr %pwr_opmode.i, align 4
  br label %if.end92

do.end90:                                         ; preds = %do.end.i, %if.then.i.do.end90_crit_edge
  %retval.0.i276 = phi i32 [ -22, %do.end.i ], [ %call2.i, %if.then.i.do.end90_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap_str.i) #6
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i276) #9
  br label %main_reg_disable

if.end92:                                         ; preds = %if.end23.i, %if.end15.i.if.end92_crit_edge, %if.end4.i.if.end92_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap_str.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i278) #6
  %81 = ptrtoint ptr %val.i278 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %val.i278, align 4, !annotation !111
  %82 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %switch.selectcmp.i = icmp eq i32 %83, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %switch.selectcmp97.i = icmp eq i32 %83, 0
  %switch.select98.i = select i1 %switch.selectcmp97.i, i32 0, i32 %switch.select.i
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %call.i83.i = call i32 @regmap_update_bits_base(ptr noundef %85, i32 noundef 40, i32 noundef 7, i32 noundef %switch.select98.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %tobool.not.i280 = icmp eq i32 %call.i83.i, 0
  br i1 %tobool.not.i280, label %if.end11.i, label %if.end92.do.end98_crit_edge

if.end92.do.end98_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end98

if.end11.i:                                       ; preds = %if.end92
  %86 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp13.i = icmp eq i32 %87, 1
  br i1 %cmp13.i, label %if.end11.i.skip_src.i_crit_edge, label %do.end32.i

if.end11.i.skip_src.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_src.i

do.end32.i:                                       ; preds = %if.end11.i
  %88 = ptrtoint ptr %pwr_opmode.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pwr_opmode.i, align 4
  %90 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap, align 4
  %shl.i = shl i32 %89, 6
  %and34.i = and i32 %shl.i, 192
  %call.i85.i = call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 24, i32 noundef 192, i32 noundef %and34.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %tobool36.not.i = icmp eq i32 %call.i85.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %do.end32.i.do.end98_crit_edge

do.end32.i.do.end98_crit_edge:                    ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end98

if.end38.i:                                       ; preds = %do.end32.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i277) #6
  %92 = ptrtoint ptr %val.i.i277 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %val.i.i277, align 4, !annotation !111
  %93 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap, align 4
  %call.i86.i = call i32 @regmap_read(ptr noundef %94, i32 noundef 24, ptr noundef nonnull %val.i.i277) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i)
  %tobool.not.i.i284 = icmp eq i32 %call.i86.i, 0
  br i1 %tobool.not.i.i284, label %stusb160x_get_vconn.exit.i, label %stusb160x_get_vconn.exit.thread.i

stusb160x_get_vconn.exit.thread.i:                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.1, i32 noundef %call.i86.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i277) #6
  br label %skip_src.i

stusb160x_get_vconn.exit.i:                       ; preds = %if.end38.i
  %97 = ptrtoint ptr %val.i.i277 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %val.i.i277, align 4
  %and.i.i285 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i285)
  %tobool16.i.not.i = icmp eq i32 %and.i.i285, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i277) #6
  br i1 %tobool16.i.not.i, label %stusb160x_get_vconn.exit.i.skip_src.i_crit_edge, label %if.then40.i

stusb160x_get_vconn.exit.i.skip_src.i_crit_edge:  ; preds = %stusb160x_get_vconn.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_src.i

if.then40.i:                                      ; preds = %stusb160x_get_vconn.exit.i
  %99 = ptrtoint ptr %vconn_supply to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vconn_supply, align 4
  %tobool.not.i87.i = icmp eq ptr %100, null
  br i1 %tobool.not.i87.i, label %if.then40.i.if.end9.i.i_crit_edge, label %if.then.i.i

if.then40.i.if.end9.i.i_crit_edge:                ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i

if.then.i.i:                                      ; preds = %if.then40.i
  %call.i88.i = call i32 @regulator_enable(ptr noundef nonnull %100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i)
  %tobool4.not.i.i = icmp eq i32 %call.i88.i, 0
  br i1 %tobool4.not.i.i, label %if.then.i.i.if.end9.i.i_crit_edge, label %do.end.i89.i

if.then.i.i.if.end9.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i

do.end.i89.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.6, i32 noundef %call.i88.i) #9
  br label %do.end98

if.end9.i.i:                                      ; preds = %if.then.i.i.if.end9.i.i_crit_edge, %if.then40.i.if.end9.i.i_crit_edge
  %103 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %104, i32 noundef 32, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool12.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end9.i.i.skip_src.i_crit_edge, label %vconn_reg_disable.i.i

if.end9.i.i.skip_src.i_crit_edge:                 ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_src.i

vconn_reg_disable.i.i:                            ; preds = %if.end9.i.i
  %105 = ptrtoint ptr %vconn_supply to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %vconn_supply, align 4
  %tobool16.not.i.not.i = icmp eq ptr %106, null
  br i1 %tobool16.not.i.not.i, label %vconn_reg_disable.i.i.do.end98_crit_edge, label %if.then18.i.i

vconn_reg_disable.i.i.do.end98_crit_edge:         ; preds = %vconn_reg_disable.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end98

if.then18.i.i:                                    ; preds = %vconn_reg_disable.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call20.i.i = call i32 @regulator_disable(ptr noundef nonnull %106) #6
  br label %do.end98

skip_src.i:                                       ; preds = %if.end9.i.i.skip_src.i_crit_edge, %stusb160x_get_vconn.exit.i.skip_src.i_crit_edge, %stusb160x_get_vconn.exit.thread.i, %if.end11.i.skip_src.i_crit_edge
  %107 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap, align 4
  %call.i92.i = call i32 @regmap_update_bits_base(ptr noundef %108, i32 noundef 12, i32 noundef 112, i32 noundef 112, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %tobool48.not.i = icmp eq i32 %call.i92.i, 0
  br i1 %tobool48.not.i, label %if.end100, label %skip_src.i.do.end98_crit_edge

skip_src.i.do.end98_crit_edge:                    ; preds = %skip_src.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end98

do.end98:                                         ; preds = %skip_src.i.do.end98_crit_edge, %if.then18.i.i, %vconn_reg_disable.i.i.do.end98_crit_edge, %do.end.i89.i, %do.end32.i.do.end98_crit_edge, %if.end92.do.end98_crit_edge
  %retval.0.i286.ph = phi i32 [ %call.i88.i, %do.end.i89.i ], [ %call.i.i.i, %vconn_reg_disable.i.i.do.end98_crit_edge ], [ %call.i.i.i, %if.then18.i.i ], [ %call.i92.i, %skip_src.i.do.end98_crit_edge ], [ %call.i85.i, %do.end32.i.do.end98_crit_edge ], [ %call.i83.i, %if.end92.do.end98_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i278) #6
  %109 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i286.ph) #9
  br label %main_reg_disable

if.end100:                                        ; preds = %skip_src.i
  %111 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap, align 4
  %call52.i = call i32 @regmap_read(ptr noundef %112, i32 noundef 11, ptr noundef nonnull %val.i278) #6
  %113 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap, align 4
  %call54.i = call i32 @regmap_read(ptr noundef %114, i32 noundef 13, ptr noundef nonnull %val.i278) #6
  %115 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap, align 4
  %call56.i = call i32 @regmap_read(ptr noundef %116, i32 noundef 15, ptr noundef nonnull %val.i278) #6
  %117 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap, align 4
  %call58.i = call i32 @regmap_read(ptr noundef %118, i32 noundef 18, ptr noundef nonnull %val.i278) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i278) #6
  %119 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %call.i, align 4
  %call102 = call ptr @typec_register_port(ptr noundef %120, ptr noundef %capability.i) #6
  %port = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 6
  %121 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call102, ptr %port, align 4
  %cmp.i287 = icmp ugt ptr %call102, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i287, label %if.then105, label %if.end108

if.then105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %call102 to i32
  br label %all_reg_disable

if.end108:                                        ; preds = %if.end100
  %123 = ptrtoint ptr %pwr_opmode.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pwr_opmode.i, align 4
  call void @typec_set_pwr_opmode(ptr noundef %call102, i32 noundef %124) #6
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %125 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool110.not = icmp eq i32 %126, 0
  br i1 %tobool110.not, label %if.else131, label %if.then111

if.then111:                                       ; preds = %if.end108
  %call112 = call ptr @fwnode_usb_role_switch_get(ptr noundef nonnull %call48) #6
  %role_sw = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 12
  %127 = ptrtoint ptr %role_sw to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call112, ptr %role_sw, align 4
  %cmp.i288 = icmp ugt ptr %call112, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i288, label %if.then115, label %if.end125

if.then115:                                       ; preds = %if.then111
  %cmp118.not = icmp eq ptr %call112, inttoptr (i32 -517 to ptr)
  br i1 %cmp118.not, label %if.then115.port_unregister_crit_edge, label %do.end122

if.then115.port_unregister_crit_edge:             ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  br label %port_unregister

do.end122:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %call112 to i32
  %129 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.28, i32 noundef %128) #9
  br label %port_unregister

if.end125:                                        ; preds = %if.then111
  %131 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %irq, align 4
  %call127 = call fastcc i32 @stusb160x_irq_init(ptr noundef nonnull %call.i, i32 noundef %132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end125.if.end147_crit_edge, label %role_sw_put

if.end125.if.end147_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

if.else131:                                       ; preds = %if.end108
  %133 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %port_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp132.not = icmp eq i32 %134, 1
  br i1 %cmp132.not, label %if.else131.if.end147_crit_edge, label %land.lhs.true133

if.else131.if.end147_crit_edge:                   ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

land.lhs.true133:                                 ; preds = %if.else131
  %135 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %vdd_supply, align 4
  %tobool135.not = icmp eq ptr %136, null
  br i1 %tobool135.not, label %land.lhs.true133.if.end147_crit_edge, label %if.then136

land.lhs.true133.if.end147_crit_edge:             ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

if.then136:                                       ; preds = %land.lhs.true133
  %call138 = call i32 @regulator_enable(ptr noundef nonnull %136) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end145, label %do.end143

do.end143:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #8
  %137 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.31, i32 noundef %call138) #9
  br label %port_unregister

if.end145:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #8
  %vbus_on = getelementptr inbounds %struct.stusb160x, ptr %call.i, i32 0, i32 11
  %139 = ptrtoint ptr %vbus_on to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %vbus_on, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.end145, %land.lhs.true133.if.end147_crit_edge, %if.else131.if.end147_crit_edge, %if.end125.if.end147_crit_edge
  call void @fwnode_handle_put(ptr noundef nonnull %call48) #6
  br label %cleanup

role_sw_put:                                      ; preds = %if.end125
  %140 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %role_sw, align 4
  %tobool149.not = icmp eq ptr %141, null
  br i1 %tobool149.not, label %role_sw_put.port_unregister_crit_edge, label %if.then150

role_sw_put.port_unregister_crit_edge:            ; preds = %role_sw_put
  call void @__sanitizer_cov_trace_pc() #8
  br label %port_unregister

if.then150:                                       ; preds = %role_sw_put
  call void @__sanitizer_cov_trace_pc() #8
  call void @usb_role_switch_put(ptr noundef nonnull %141) #6
  br label %port_unregister

port_unregister:                                  ; preds = %if.then150, %role_sw_put.port_unregister_crit_edge, %do.end143, %do.end122, %if.then115.port_unregister_crit_edge
  %ret.0 = phi i32 [ %128, %do.end122 ], [ -517, %if.then115.port_unregister_crit_edge ], [ %call127, %if.then150 ], [ %call127, %role_sw_put.port_unregister_crit_edge ], [ %call138, %do.end143 ]
  %142 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %port, align 4
  call void @typec_unregister_port(ptr noundef %143) #6
  br label %all_reg_disable

all_reg_disable:                                  ; preds = %port_unregister, %if.then105
  %ret.1 = phi i32 [ %122, %if.then105 ], [ %ret.0, %port_unregister ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i289) #6
  %144 = ptrtoint ptr %val.i289 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %val.i289, align 4, !annotation !111
  %145 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regmap, align 4
  %call.i291 = call i32 @regmap_read(ptr noundef %146, i32 noundef 24, ptr noundef nonnull %val.i289) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i291)
  %tobool.not.i292 = icmp eq i32 %call.i291, 0
  br i1 %tobool.not.i292, label %stusb160x_get_vconn.exit, label %stusb160x_get_vconn.exit.thread

stusb160x_get_vconn.exit.thread:                  ; preds = %all_reg_disable
  call void @__sanitizer_cov_trace_pc() #8
  %147 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.1, i32 noundef %call.i291) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i289) #6
  br label %main_reg_disable

stusb160x_get_vconn.exit:                         ; preds = %all_reg_disable
  %149 = ptrtoint ptr %val.i289 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %val.i289, align 4
  %and.i294 = and i32 %150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i294)
  %tobool16.i.not = icmp eq i32 %and.i294, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i289) #6
  br i1 %tobool16.i.not, label %stusb160x_get_vconn.exit.main_reg_disable_crit_edge, label %if.then155

stusb160x_get_vconn.exit.main_reg_disable_crit_edge: ; preds = %stusb160x_get_vconn.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %main_reg_disable

if.then155:                                       ; preds = %stusb160x_get_vconn.exit
  %151 = ptrtoint ptr %vconn_supply to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %vconn_supply, align 4
  %tobool.not.i296 = icmp eq ptr %152, null
  br i1 %tobool.not.i296, label %if.then155.if.end9.i_crit_edge, label %if.then.i297

if.then155.if.end9.i_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then.i297:                                     ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 @regulator_disable(ptr noundef nonnull %152) #6
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i297, %if.then155.if.end9.i_crit_edge
  %153 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regmap, align 4
  %call.i.i299 = call i32 @regmap_update_bits_base(ptr noundef %154, i32 noundef 32, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %main_reg_disable

main_reg_disable:                                 ; preds = %if.end9.i, %stusb160x_get_vconn.exit.main_reg_disable_crit_edge, %stusb160x_get_vconn.exit.thread, %do.end98, %do.end90, %do.end82
  %ret.2 = phi i32 [ %retval.0.i.ph, %do.end82 ], [ %retval.0.i276, %do.end90 ], [ %retval.0.i286.ph, %do.end98 ], [ %ret.1, %stusb160x_get_vconn.exit.main_reg_disable_crit_edge ], [ %ret.1, %stusb160x_get_vconn.exit.thread ], [ %ret.1, %if.end9.i ]
  %155 = ptrtoint ptr %main_supply64 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %main_supply64, align 4
  %tobool159.not = icmp eq ptr %156, null
  br i1 %tobool159.not, label %main_reg_disable.fwnode_put_crit_edge, label %if.then160

main_reg_disable.fwnode_put_crit_edge:            ; preds = %main_reg_disable
  call void @__sanitizer_cov_trace_pc() #8
  br label %fwnode_put

if.then160:                                       ; preds = %main_reg_disable
  call void @__sanitizer_cov_trace_pc() #8
  %call162 = call i32 @regulator_disable(ptr noundef nonnull %156) #6
  br label %fwnode_put

fwnode_put:                                       ; preds = %if.then160, %main_reg_disable.fwnode_put_crit_edge, %do.end73
  %ret.3 = phi i32 [ %call68, %do.end73 ], [ %ret.2, %if.then160 ], [ %ret.2, %main_reg_disable.fwnode_put_crit_edge ]
  call void @fwnode_handle_put(ptr noundef nonnull %call48) #6
  br label %cleanup

cleanup:                                          ; preds = %fwnode_put, %if.end147, %if.end46.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then5 ], [ %ret.3, %fwnode_put ], [ 0, %if.end147 ], [ -12, %entry.cleanup_crit_edge ], [ %7, %if.then16.cleanup_crit_edge ], [ %12, %if.then27.cleanup_crit_edge ], [ %17, %if.then39.cleanup_crit_edge ], [ -19, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_partner(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_devlink_purge_absent_suppliers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_pwr_opmode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_usb_role_switch_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stusb160x_irq_init(ptr noundef %chip, i32 noundef %irq) unnamed_addr #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !111
  %regmap = getelementptr inbounds %struct.stusb160x, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 14, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i32 @stusb160x_attach(ptr noundef %chip, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %do.end

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.39, i32 noundef %call3) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.dev_name.exit_crit_edge

if.end7.dev_name.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end7.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %if.end7.dev_name.exit_crit_edge ]
  %call11 = call i32 @devm_request_threaded_irq(ptr noundef %8, i32 noundef %irq, ptr noundef null, ptr noundef nonnull @stusb160x_irq_handler, i32 noundef 8192, ptr noundef %retval.0.i, ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %dev_name.exit.partner_unregister_crit_edge

dev_name.exit.partner_unregister_crit_edge:       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %partner_unregister

if.end14:                                         ; preds = %dev_name.exit
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 12, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end14.partner_unregister_crit_edge

if.end14.partner_unregister_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %partner_unregister

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

partner_unregister:                               ; preds = %if.end14.partner_unregister_crit_edge, %dev_name.exit.partner_unregister_crit_edge
  %ret.0 = phi i32 [ %call11, %dev_name.exit.partner_unregister_crit_edge ], [ %call.i, %if.end14.partner_unregister_crit_edge ]
  %partner = getelementptr inbounds %struct.stusb160x, ptr %chip, i32 0, i32 8
  %15 = ptrtoint ptr %partner to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %partner, align 4
  %tobool20.not = icmp eq ptr %16, null
  br i1 %tobool20.not, label %partner_unregister.cleanup_crit_edge, label %if.then21

partner_unregister.cleanup_crit_edge:             ; preds = %partner_unregister
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %partner_unregister
  call void @__sanitizer_cov_trace_pc() #8
  call void @typec_unregister_partner(ptr noundef nonnull %16) #6
  %17 = ptrtoint ptr %partner to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %partner, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %partner_unregister.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ %ret.0, %if.then21 ], [ %ret.0, %partner_unregister.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_find_port_power_role(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_find_pwr_opmode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stusb160x_attach(ptr nocapture noundef %chip, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %desc = alloca %struct.typec_partner_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc) #6
  %0 = call ptr @memset(ptr %desc, i32 255, i32 16)
  %and = and i32 %status, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and.lobit = lshr exact i32 %and, 3
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %vdd_supply = getelementptr inbounds %struct.stusb160x, ptr %chip, i32 0, i32 2
  %1 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vdd_supply, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @regulator_enable(ptr noundef nonnull %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.41, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %vbus_on = getelementptr inbounds %struct.stusb160x, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %vbus_on to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %vbus_on, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %desc, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %desc, align 4
  %and.i = lshr i32 %status, 5
  %shr.i = and i32 %and.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr.i)
  %switch.selectcmp.i = icmp eq i32 %shr.i, 4
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i)
  %switch.selectcmp14.i = icmp eq i32 %shr.i, 3
  %switch.select15.i = select i1 %switch.selectcmp14.i, i32 2, i32 %switch.select.i
  %accessory = getelementptr inbounds %struct.typec_partner_desc, ptr %desc, i32 0, i32 1
  %7 = ptrtoint ptr %accessory to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.select15.i, ptr %accessory, align 4
  %identity = getelementptr inbounds %struct.typec_partner_desc, ptr %desc, i32 0, i32 2
  %8 = ptrtoint ptr %identity to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %identity, align 4
  %port = getelementptr inbounds %struct.stusb160x, ptr %chip, i32 0, i32 6
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 4
  %call8 = call ptr @typec_register_partner(ptr noundef %10, ptr noundef nonnull %desc) #6
  %partner = getelementptr inbounds %struct.stusb160x, ptr %chip, i32 0, i32 8
  %11 = ptrtoint ptr %partner to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8, ptr %partner, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end6
  %12 = ptrtoint ptr %call8 to i32
  %vbus_on32 = getelementptr inbounds %struct.stusb160x, ptr %chip, i32 0, i32 11
  %13 = ptrtoint ptr %vbus_on32 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vbus_on32, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool33.not = icmp eq i8 %14, 0
  br i1 %tobool33.not, label %if.then11.cleanup_crit_edge, label %if.then34

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port, align 4
  call void @typec_set_pwr_role(ptr noundef %16, i32 noundef %and.lobit) #6
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i, align 4, !annotation !111
  %regmap.i = getelementptr inbounds %struct.stusb160x, ptr %chip, i32 0, i32 1
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %21, i32 noundef 24, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end15.i, label %do.end.i

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.33, i32 noundef %call.i) #9
  br label %stusb160x_get_pwr_opmode.exit

do.end15.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i, align 4
  %and.i62 = lshr i32 %25, 6
  %shr.i63 = and i32 %and.i62, 3
  br label %stusb160x_get_pwr_opmode.exit

stusb160x_get_pwr_opmode.exit:                    ; preds = %do.end15.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %shr.i63, %do.end15.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @typec_set_pwr_opmode(ptr noundef %18, i32 noundef %retval.0.i) #6
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port, align 4
  %28 = lshr i32 %status, 1
  %.lobit.i = and i32 %28, 1
  call void @typec_set_vconn_role(ptr noundef %27, i32 noundef %.lobit.i) #6
  %and26 = lshr i32 %status, 2
  %and26.lobit = and i32 %and26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.lobit)
  %cmp.i64.not = icmp eq i32 %and26.lobit, 0
  %..i = select i1 %cmp.i64.not, i32 2, i32 1
  %role_sw.i = getelementptr inbounds %struct.stusb160x, ptr %chip, i32 0, i32 12
  %29 = ptrtoint ptr %role_sw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %role_sw.i, align 4
  %call.i65 = call i32 @usb_role_switch_set_role(ptr noundef %30, i32 noundef %..i) #6
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port, align 4
  call void @typec_set_data_role(ptr noundef %32, i32 noundef %and26.lobit) #6
  br label %cleanup

if.then34:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %vdd_supply35 = getelementptr inbounds %struct.stusb160x, ptr %chip, i32 0, i32 2
  %33 = ptrtoint ptr %vdd_supply35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vdd_supply35, align 4
  %call36 = call i32 @regulator_disable(ptr noundef %34) #6
  %35 = ptrtoint ptr %vbus_on32 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %vbus_on32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %stusb160x_get_pwr_opmode.exit, %if.then11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %stusb160x_get_pwr_opmode.exit ], [ %12, %if.then34 ], [ %12, %if.then11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stusb160x_irq_handler(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  %pending = alloca i32, align 4
  %trans = alloca i32, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #6
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pending, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trans) #6
  %1 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %trans, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !111
  %regmap = getelementptr inbounds %struct.stusb160x, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 11, ptr noundef nonnull %pending) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pending, align 4
  %and = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.err_crit_edge, label %if.then2

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.then2:                                         ; preds = %if.end
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %8, i32 noundef 13, ptr noundef nonnull %trans) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then2.err_crit_edge

if.then2.err_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end7:                                          ; preds = %if.then2
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_read(ptr noundef %10, i32 noundef 14, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.err_crit_edge

if.end7.err_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end12:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %trans, align 4
  %and13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.err_crit_edge, label %if.then15

if.end12.err_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.then15:                                        ; preds = %if.end12
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %and16 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = call fastcc i32 @stusb160x_attach(ptr noundef %data, i32 noundef %14)
  br label %err

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @stusb160x_detach(ptr noundef %data, i32 noundef %14)
  br label %err

err:                                              ; preds = %if.else, %if.then18, %if.end12.err_crit_edge, %if.end7.err_crit_edge, %if.then2.err_crit_edge, %if.end.err_crit_edge, %entry.err_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trans) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_register_partner(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_pwr_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_vconn_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_role_switch_set_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_data_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stusb160x_detach(ptr nocapture noundef %chip, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %partner = getelementptr inbounds %struct.stusb160x, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %partner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %partner, align 4
  tail call void @typec_unregister_partner(ptr noundef %1) #6
  %2 = ptrtoint ptr %partner to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %partner, align 4
  %port = getelementptr inbounds %struct.stusb160x, ptr %chip, i32 0, i32 6
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %and = lshr i32 %status, 3
  %and.lobit = and i32 %and, 1
  tail call void @typec_set_pwr_role(ptr noundef %4, i32 noundef %and.lobit) #6
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 4
  tail call void @typec_set_pwr_opmode(ptr noundef %6, i32 noundef 0) #6
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 4
  %9 = lshr i32 %status, 1
  %.lobit.i = and i32 %9, 1
  tail call void @typec_set_vconn_role(ptr noundef %8, i32 noundef %.lobit.i) #6
  %and5 = lshr i32 %status, 2
  %and5.lobit = and i32 %and5, 1
  %role_sw.i = getelementptr inbounds %struct.stusb160x, ptr %chip, i32 0, i32 12
  %10 = ptrtoint ptr %role_sw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %role_sw.i, align 4
  %call.i = tail call i32 @usb_role_switch_set_role(ptr noundef %11, i32 noundef 0) #6
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port, align 4
  tail call void @typec_set_data_role(ptr noundef %13, i32 noundef %and5.lobit) #6
  %vbus_on = getelementptr inbounds %struct.stusb160x, ptr %chip, i32 0, i32 11
  %14 = ptrtoint ptr %vbus_on to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vbus_on, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vdd_supply = getelementptr inbounds %struct.stusb160x, ptr %chip, i32 0, i32 2
  %16 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdd_supply, align 4
  %call12 = tail call i32 @regulator_disable(ptr noundef %17) #6
  %18 = ptrtoint ptr %vbus_on to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %vbus_on, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stusb160x_reg_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %reg, label %sw.default [
    i32 12, label %entry.return_crit_edge
    i32 24, label %entry.return_crit_edge1
    i32 30, label %entry.return_crit_edge2
    i32 32, label %entry.return_crit_edge3
    i32 34, label %entry.return_crit_edge4
    i32 35, label %entry.return_crit_edge5
    i32 37, label %entry.return_crit_edge6
    i32 40, label %entry.return_crit_edge7
    i32 46, label %entry.return_crit_edge8
  ]

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stusb160x_reg_readable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %reg)
  %cmp = icmp ult i32 %reg, 11
  %0 = and i32 %reg, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %0)
  %1 = icmp eq i32 %0, 20
  %or.cond = or i1 %cmp, %1
  %2 = add i32 %reg, -25
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %3 = icmp ult i32 %2, 5
  %or.cond37 = or i1 %3, %or.cond
  %4 = add i32 %reg, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %5 = icmp ult i32 %4, 5
  %or.cond39 = or i1 %5, %or.cond37
  br i1 %or.cond39, label %entry.return_crit_edge, label %switch.early.test

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.early.test:                                ; preds = %entry
  %switch.tableidx = add i32 %reg, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 17
  br i1 %6, label %switch.lookup, label %switch.early.test.return_crit_edge

switch.early.test.return_crit_edge:               ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #8
  %switch.cast = trunc i32 %switch.tableidx to i17
  %switch.downshift = lshr i17 65498, %switch.cast
  %7 = and i17 %switch.downshift, 1
  %switch.masked = icmp ne i17 %7, 0
  br label %return

return:                                           ; preds = %switch.lookup, %switch.early.test.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %switch.masked, %switch.lookup ], [ true, %switch.early.test.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stusb160x_reg_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 29
  %switch.cast = trunc i32 %switch.tableidx to i29
  %switch.downshift = lshr i29 -134217219, %switch.cast
  %1 = and i29 %switch.downshift, 1
  %2 = sext i29 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %switch.masked = icmp ne i29 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stusb160x_reg_precious(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 8
  %switch.cast = trunc i32 %switch.tableidx to i8
  %switch.downshift = lshr i8 -107, %switch.cast
  %1 = and i8 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.masked = icmp ne i8 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stusb160x_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.stusb160x, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 12, i32 noundef 112, i32 noundef 112, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stusb160x_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !111
  %regmap = getelementptr inbounds %struct.stusb160x, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regcache_sync(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %6, i32 noundef 14, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %partner = getelementptr inbounds %struct.stusb160x, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %partner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %partner, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.end6.land.lhs.true13_crit_edge, label %land.lhs.true

if.end6.land.lhs.true13_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true13

land.lhs.true:                                    ; preds = %if.end6
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @stusb160x_detach(ptr noundef %1, i32 noundef %10)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true.if.end10_crit_edge
  %11 = ptrtoint ptr %partner to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load ptr, ptr %partner, align 4
  %tobool12.not = icmp eq ptr %.pr, null
  br i1 %tobool12.not, label %if.end10.land.lhs.true13_crit_edge, label %if.end10.if.end22_crit_edge

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end10.land.lhs.true13_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.end10.land.lhs.true13_crit_edge, %if.end6.land.lhs.true13_crit_edge
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %and14 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %land.lhs.true13.if.end22_crit_edge, label %if.then16

land.lhs.true13.if.end22_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then16:                                        ; preds = %land.lhs.true13
  %call17 = call fastcc i32 @stusb160x_attach(ptr noundef %1, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end22_crit_edge, label %do.end

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.39, i32 noundef %call17) #9
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.then16.if.end22_crit_edge, %land.lhs.true13.if.end22_crit_edge, %if.end10.if.end22_crit_edge
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 12, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end22 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !95, !97, !99, !100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_stusb160x__318_881_stusb160x_driver_init6, !1, !"__initcall__kmod_stusb160x__318_881_stusb160x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/typec/stusb160x.c", i32 881, i32 1}
!2 = !{ptr @__exitcall_stusb160x_driver_exit, !1, !"__exitcall_stusb160x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author319, !4, !"__UNIQUE_ID_author319", i1 false, i1 false}
!4 = !{!"../drivers/usb/typec/stusb160x.c", i32 883, i32 1}
!5 = !{ptr @__UNIQUE_ID_description320, !6, !"__UNIQUE_ID_description320", i1 false, i1 false}
!6 = !{!"../drivers/usb/typec/stusb160x.c", i32 884, i32 1}
!7 = !{ptr @__UNIQUE_ID_file321, !8, !"__UNIQUE_ID_file321", i1 false, i1 false}
!8 = !{!"../drivers/usb/typec/stusb160x.c", i32 885, i32 1}
!9 = !{ptr @__UNIQUE_ID_license322, !8, !"__UNIQUE_ID_license322", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/typec/stusb160x.c", i32 874, i32 11}
!12 = !{ptr @stusb160x_driver, !13, !"stusb160x_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/typec/stusb160x.c", i32 872, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/typec/stusb160x.c", i32 247, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @stusb160x_get_vconn._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @stusb160x_get_vconn._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/typec/stusb160x.c", i32 263, i32 5}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @stusb160x_set_vconn._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @stusb160x_set_vconn._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @stusb160x_probe._key, !28, !"_key", i1 false, i1 false}
!28 = !{!"../drivers/usb/typec/stusb160x.c", i32 650, i32 17}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/typec/stusb160x.c", i32 653, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @stusb160x_probe._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @stusb160x_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/typec/stusb160x.c", i32 660, i32 61}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/typec/stusb160x.c", i32 668, i32 60}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/typec/stusb160x.c", i32 676, i32 62}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/typec/stusb160x.c", i32 684, i32 50}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/typec/stusb160x.c", i32 712, i32 4}
!45 = !{ptr @stusb160x_probe._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @stusb160x_probe._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/typec/stusb160x.c", i32 721, i32 3}
!49 = !{ptr @stusb160x_probe._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @stusb160x_probe._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/typec/stusb160x.c", i32 728, i32 3}
!53 = !{ptr @stusb160x_probe._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @stusb160x_probe._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/typec/stusb160x.c", i32 734, i32 3}
!57 = !{ptr @stusb160x_probe._entry.24, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @stusb160x_probe._entry_ptr.26, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/typec/stusb160x.c", i32 755, i32 5}
!61 = !{ptr @stusb160x_probe._entry.27, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @stusb160x_probe._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/typec/stusb160x.c", i32 774, i32 5}
!65 = !{ptr @stusb160x_probe._entry.30, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @stusb160x_probe._entry_ptr.32, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/typec/stusb160x.c", i32 296, i32 3}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @stusb160x_get_pwr_opmode._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @stusb160x_get_pwr_opmode._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/typec/stusb160x.c", i32 545, i32 44}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/typec/stusb160x.c", i32 565, i32 44}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/typec/stusb160x.c", i32 570, i32 4}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @stusb160x_get_fw_caps._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @stusb160x_get_fw_caps._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/typec/stusb160x.c", i32 449, i32 4}
!83 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @stusb160x_irq_init._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @stusb160x_irq_init._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/typec/stusb160x.c", i32 353, i32 4}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @stusb160x_attach._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @stusb160x_attach._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @stusb160x_of_match, !92, !"stusb160x_of_match", i1 false, i1 false}
!92 = !{!"../drivers/usb/typec/stusb160x.c", i32 628, i32 34}
!93 = !{ptr @stusb1600_regmap_config, !94, !"stusb1600_regmap_config", i1 false, i1 false}
!94 = !{!"../drivers/usb/typec/stusb160x.c", i32 228, i32 35}
!95 = !{ptr @stusb160x_pm_ops, !96, !"stusb160x_pm_ops", i1 false, i1 false}
!96 = !{!"../drivers/usb/typec/stusb160x.c", i32 870, i32 8}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/typec/stusb160x.c", i32 862, i32 4}
!99 = !{ptr @stusb160x_resume._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @stusb160x_resume._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i8 0, i8 2}
!111 = !{!"auto-init"}
