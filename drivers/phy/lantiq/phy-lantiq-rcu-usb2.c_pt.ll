; ModuleID = '/llk/IR_all_yes/drivers/phy/lantiq/phy-lantiq-rcu-usb2.c_pt.bc'
source_filename = "../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ltq_rcu_usb2_bits = type { i8, i8, i8, i8 }
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
%struct.ltq_rcu_usb2_priv = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_phy_lantiq_rcu_usb2__289_252_ltq_rcu_usb2_phy_driver_init6 = internal global ptr @ltq_rcu_usb2_phy_driver_init, section ".initcall6.init", align 4
@ltq_rcu_usb2_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ltq_rcu_usb2_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ltq_rcu_usb2_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ltq_rcu_usb2_phy_driver_exit = internal global ptr @ltq_rcu_usb2_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [84 x i8] c"phy_lantiq_rcu_usb2.author=Martin Blumenstingl <martin.blumenstingl@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [60 x i8] c"phy_lantiq_rcu_usb2.description=Lantiq XWAY USB2 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [64 x i8] c"phy_lantiq_rcu_usb2.file=drivers/phy/lantiq/phy-lantiq-rcu-usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [35 x i8] c"phy_lantiq_rcu_usb2.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lantiq-rcu-usb2-phy\00", [44 x i8] zeroinitializer }, align 32
@ltq_rcu_usb2_phy_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,ase-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xway_rcu_usb2_reg_bits }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,danube-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xway_rcu_usb2_reg_bits }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,xrx100-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xrx100_rcu_usb2_reg_bits }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,xrx200-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xrx200_rcu_usb2_reg_bits }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,xrx300-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xrx200_rcu_usb2_reg_bits }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@ltq_rcu_usb2_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @ltq_rcu_usb2_phy_init, ptr null, ptr @ltq_rcu_usb2_phy_power_on, ptr @ltq_rcu_usb2_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ltq_rcu_usb2_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ltq_rcu_usb2_phy_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/phy/lantiq/phy-lantiq-rcu-usb2.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltq_rcu_usb2_phy_probe._entry_ptr = internal global ptr @ltq_rcu_usb2_phy_probe._entry, section ".printk_index", align 4
@ltq_rcu_usb2_of_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to lookup RCU regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ltq_rcu_usb2_of_parse\00", [42 x i8] zeroinitializer }, align 32
@ltq_rcu_usb2_of_parse._entry_ptr = internal global ptr @ltq_rcu_usb2_of_parse._entry, section ".printk_index", align 4
@ltq_rcu_usb2_of_parse._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get RCU PHY reg offset\0A\00", [62 x i8] zeroinitializer }, align 32
@ltq_rcu_usb2_of_parse._entry_ptr.10 = internal global ptr @ltq_rcu_usb2_of_parse._entry.8, section ".printk_index", align 4
@ltq_rcu_usb2_of_parse._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 183, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get RCU ANA CFG1 reg offset\0A\00", [57 x i8] zeroinitializer }, align 32
@ltq_rcu_usb2_of_parse._entry_ptr.13 = internal global ptr @ltq_rcu_usb2_of_parse._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@ltq_rcu_usb2_of_parse._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to get USB phy gate clk\0A\00", [32 x i8] zeroinitializer }, align 32
@ltq_rcu_usb2_of_parse._entry_ptr.17 = internal global ptr @ltq_rcu_usb2_of_parse._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@ltq_rcu_usb2_of_parse._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str.3, i32 198, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get 'ctrl' reset\0A\00", [36 x i8] zeroinitializer }, align 32
@ltq_rcu_usb2_of_parse._entry_ptr.21 = internal global ptr @ltq_rcu_usb2_of_parse._entry.19, section ".printk_index", align 4
@ltq_rcu_usb2_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable PHY gate\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ltq_rcu_usb2_phy_power_on\00", [38 x i8] zeroinitializer }, align 32
@ltq_rcu_usb2_phy_power_on._entry_ptr = internal global ptr @ltq_rcu_usb2_phy_power_on._entry, section ".printk_index", align 4
@xway_rcu_usb2_reg_bits = internal constant { %struct.ltq_rcu_usb2_bits, [28 x i8] } { %struct.ltq_rcu_usb2_bits { i8 11, i8 9, i8 10, i8 0 }, [28 x i8] zeroinitializer }, align 32
@xrx100_rcu_usb2_reg_bits = internal constant { %struct.ltq_rcu_usb2_bits, [28 x i8] } { %struct.ltq_rcu_usb2_bits { i8 11, i8 17, i8 10, i8 0 }, [28 x i8] zeroinitializer }, align 32
@xrx200_rcu_usb2_reg_bits = internal constant { %struct.ltq_rcu_usb2_bits, [28 x i8] } { %struct.ltq_rcu_usb2_bits { i8 11, i8 9, i8 10, i8 1 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [24 x i8] c"ltq_rcu_usb2_phy_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 245, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 248, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [26 x i8] c"ltq_rcu_usb2_phy_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 68, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"ltq_rcu_usb2_phy_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 152, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 231, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 169, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 175, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 183, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 189, i32 41 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 191, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 195, i32 56 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 198, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 128, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [23 x i8] c"xway_rcu_usb2_reg_bits\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 47, i32 39 }
@___asan_gen_.105 = private unnamed_addr constant [25 x i8] c"xrx100_rcu_usb2_reg_bits\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 54, i32 39 }
@___asan_gen_.108 = private unnamed_addr constant [25 x i8] c"xrx200_rcu_usb2_reg_bits\00", align 1
@___asan_gen_.109 = private constant [44 x i8] c"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 61, i32 39 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_ltq_rcu_usb2_phy_driver_exit, ptr @__initcall__kmod_phy_lantiq_rcu_usb2__289_252_ltq_rcu_usb2_phy_driver_init6, ptr @ltq_rcu_usb2_of_parse._entry, ptr @ltq_rcu_usb2_of_parse._entry.11, ptr @ltq_rcu_usb2_of_parse._entry.15, ptr @ltq_rcu_usb2_of_parse._entry.19, ptr @ltq_rcu_usb2_of_parse._entry.8, ptr @ltq_rcu_usb2_of_parse._entry_ptr, ptr @ltq_rcu_usb2_of_parse._entry_ptr.10, ptr @ltq_rcu_usb2_of_parse._entry_ptr.13, ptr @ltq_rcu_usb2_of_parse._entry_ptr.17, ptr @ltq_rcu_usb2_of_parse._entry_ptr.21, ptr @ltq_rcu_usb2_phy_driver_exit, ptr @ltq_rcu_usb2_phy_power_on._entry, ptr @ltq_rcu_usb2_phy_power_on._entry_ptr, ptr @ltq_rcu_usb2_phy_probe._entry, ptr @ltq_rcu_usb2_phy_probe._entry_ptr, ptr @ltq_rcu_usb2_phy_driver, ptr @.str, ptr @ltq_rcu_usb2_phy_of_match, ptr @ltq_rcu_usb2_phy_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @xway_rcu_usb2_reg_bits, ptr @xrx100_rcu_usb2_reg_bits, ptr @xrx200_rcu_usb2_reg_bits], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_rcu_usb2_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_rcu_usb2_phy_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_rcu_usb2_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_rcu_usb2_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_rcu_usb2_of_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_rcu_usb2_of_parse._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_rcu_usb2_of_parse._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_rcu_usb2_of_parse._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_rcu_usb2_of_parse._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltq_rcu_usb2_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xway_rcu_usb2_reg_bits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xrx100_rcu_usb2_reg_bits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xrx200_rcu_usb2_reg_bits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltq_rcu_usb2_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ltq_rcu_usb2_phy_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltq_rcu_usb2_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @ltq_rcu_usb2_phy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltq_rcu_usb2_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 36, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %call.i45 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #4
  %reg_bits.i = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %reg_bits.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i45, ptr %reg_bits.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %parent.i = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  %call2.i = tail call ptr @syscon_node_to_regmap(ptr noundef %5) #4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2.i, ptr %call.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.ltq_rcu_usb2_of_parse.exit.sink.split.sink.split_crit_edge, label %if.end.i

if.end.ltq_rcu_usb2_of_parse.exit.sink.split.sink.split_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %ltq_rcu_usb2_of_parse.exit.sink.split.sink.split

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @__of_get_address(ptr noundef %8, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end12.i, label %if.end13.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #7
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i.i, align 4
  %phy_reg_offset.i = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %phy_reg_offset.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %phy_reg_offset.i, align 4
  %12 = ptrtoint ptr %reg_bits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_bits.i, align 4
  %have_ana_cfg.i = getelementptr inbounds %struct.ltq_rcu_usb2_bits, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %have_ana_cfg.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %have_ana_cfg.i, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool15.not.i = icmp eq i8 %15, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end25.i_crit_edge, label %if.then16.i

if.end13.i.if.end25.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.i

if.then16.i:                                      ; preds = %if.end13.i
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  %call.i1.i = tail call ptr @__of_get_address(ptr noundef %17, i32 noundef 1, i32 noundef -1, ptr noundef null, ptr noundef null) #4
  %tobool19.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool19.not.i, label %do.end23.i, label %if.end24.i

do.end23.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end24.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %call.i1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i1.i, align 4
  %ana_cfg1_reg_offset.i = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %ana_cfg1_reg_offset.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ana_cfg1_reg_offset.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end24.i, %if.end13.i.if.end25.i_crit_edge
  %call26.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.14) #4
  %phy_gate_clk.i = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %phy_gate_clk.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call26.i, ptr %phy_gate_clk.i, align 4
  %cmp.i2.i = icmp ugt ptr %call26.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2.i, label %if.end25.i.ltq_rcu_usb2_of_parse.exit.sink.split.sink.split_crit_edge, label %if.end35.i

if.end25.i.ltq_rcu_usb2_of_parse.exit.sink.split.sink.split_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ltq_rcu_usb2_of_parse.exit.sink.split.sink.split

if.end35.i:                                       ; preds = %if.end25.i
  %call.i3.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %ctrl_reset.i = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %ctrl_reset.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i3.i, ptr %ctrl_reset.i, align 4
  %cmp.i4.i = icmp ugt ptr %call.i3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i4.i, label %if.then39.i, label %if.end49.i

if.then39.i:                                      ; preds = %if.end35.i
  %cmp.not.i = icmp eq ptr %call.i3.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then39.i.ltq_rcu_usb2_of_parse.exit.sink.split_crit_edge, label %if.then39.i.ltq_rcu_usb2_of_parse.exit.sink.split.sink.split_crit_edge

if.then39.i.ltq_rcu_usb2_of_parse.exit.sink.split.sink.split_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ltq_rcu_usb2_of_parse.exit.sink.split.sink.split

if.then39.i.ltq_rcu_usb2_of_parse.exit.sink.split_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ltq_rcu_usb2_of_parse.exit.sink.split

if.end49.i:                                       ; preds = %if.end35.i
  %call.i.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #4
  %phy_reset.i = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %call.i, i32 0, i32 8
  %23 = ptrtoint ptr %phy_reset.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i.i, ptr %phy_reset.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end49.i.ltq_rcu_usb2_of_parse.exit_crit_edge, label %if.end49.i.if.end6_crit_edge

if.end49.i.if.end6_crit_edge:                     ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end49.i.ltq_rcu_usb2_of_parse.exit_crit_edge:  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ltq_rcu_usb2_of_parse.exit

ltq_rcu_usb2_of_parse.exit.sink.split.sink.split: ; preds = %if.then39.i.ltq_rcu_usb2_of_parse.exit.sink.split.sink.split_crit_edge, %if.end25.i.ltq_rcu_usb2_of_parse.exit.sink.split.sink.split_crit_edge, %if.end.ltq_rcu_usb2_of_parse.exit.sink.split.sink.split_crit_edge
  %.str.20.sink = phi ptr [ @.str.6, %if.end.ltq_rcu_usb2_of_parse.exit.sink.split.sink.split_crit_edge ], [ @.str.16, %if.end25.i.ltq_rcu_usb2_of_parse.exit.sink.split.sink.split_crit_edge ], [ @.str.20, %if.then39.i.ltq_rcu_usb2_of_parse.exit.sink.split.sink.split_crit_edge ]
  %call.i.sink.ph = phi ptr [ %call.i, %if.end.ltq_rcu_usb2_of_parse.exit.sink.split.sink.split_crit_edge ], [ %phy_gate_clk.i, %if.end25.i.ltq_rcu_usb2_of_parse.exit.sink.split.sink.split_crit_edge ], [ %ctrl_reset.i, %if.then39.i.ltq_rcu_usb2_of_parse.exit.sink.split.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.20.sink) #7
  br label %ltq_rcu_usb2_of_parse.exit.sink.split

ltq_rcu_usb2_of_parse.exit.sink.split:            ; preds = %ltq_rcu_usb2_of_parse.exit.sink.split.sink.split, %if.then39.i.ltq_rcu_usb2_of_parse.exit.sink.split_crit_edge
  %call.i.sink = phi ptr [ %ctrl_reset.i, %if.then39.i.ltq_rcu_usb2_of_parse.exit.sink.split_crit_edge ], [ %call.i.sink.ph, %ltq_rcu_usb2_of_parse.exit.sink.split.sink.split ]
  %24 = ptrtoint ptr %call.i.sink to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i.sink, align 4
  br label %ltq_rcu_usb2_of_parse.exit

ltq_rcu_usb2_of_parse.exit:                       ; preds = %ltq_rcu_usb2_of_parse.exit.sink.split, %if.end49.i.ltq_rcu_usb2_of_parse.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i.i.i, %if.end49.i.ltq_rcu_usb2_of_parse.exit_crit_edge ], [ %25, %ltq_rcu_usb2_of_parse.exit.sink.split ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool4.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool4.not, label %ltq_rcu_usb2_of_parse.exit.if.end6_crit_edge, label %ltq_rcu_usb2_of_parse.exit.cleanup_crit_edge

ltq_rcu_usb2_of_parse.exit.cleanup_crit_edge:     ; preds = %ltq_rcu_usb2_of_parse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ltq_rcu_usb2_of_parse.exit.if.end6_crit_edge:     ; preds = %ltq_rcu_usb2_of_parse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end6:                                          ; preds = %ltq_rcu_usb2_of_parse.exit.if.end6_crit_edge, %if.end49.i.if.end6_crit_edge
  %ctrl_reset = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %ctrl_reset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl_reset, align 4
  %call7 = tail call i32 @reset_control_deassert(ptr noundef %27) #4
  %phy_reset = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %call.i, i32 0, i32 8
  %28 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy_reset, align 4
  %call8 = tail call i32 @reset_control_assert(ptr noundef %29) #4
  %30 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node.i, align 8
  %call9 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %31, ptr noundef nonnull @ltq_rcu_usb2_phy_ops) #4
  %phy = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call9, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %33 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call9, i32 0, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call17 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #4
  %cmp.i46 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev2, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then19, %do.end, %ltq_rcu_usb2_of_parse.exit.cleanup_crit_edge, %do.end23.i, %do.end12.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %35, %do.end ], [ %37, %if.then19 ], [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %ltq_rcu_usb2_of_parse.exit.cleanup_crit_edge ], [ -2, %do.end23.i ], [ -2, %do.end12.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltq_rcu_usb2_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reg_bits = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reg_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_bits, align 4
  %have_ana_cfg = getelementptr inbounds %struct.ltq_rcu_usb2_bits, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %have_ana_cfg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %have_ana_cfg, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %ana_cfg1_reg_offset = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ana_cfg1_reg_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ana_cfg1_reg_offset, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %ana_cfg1_reg_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ana_cfg1_reg_offset, align 4
  %call.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef 229376, i32 noundef 229376, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %phy_reg_offset = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %phy_reg_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phy_reg_offset, align 4
  %18 = ptrtoint ptr %reg_bits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_bits, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %conv = zext i8 %21 to i32
  %shl = shl nuw i32 1, %conv
  %call.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %17, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %phy_reg_offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phy_reg_offset, align 4
  %26 = ptrtoint ptr %reg_bits to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_bits, align 4
  %slave_endianness = getelementptr inbounds %struct.ltq_rcu_usb2_bits, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %slave_endianness to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %slave_endianness, align 1
  %conv11 = zext i8 %29 to i32
  %shl12 = shl nuw i32 1, %conv11
  %call.i40 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %25, i32 noundef %shl12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = ptrtoint ptr %phy_reg_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %phy_reg_offset, align 4
  %34 = ptrtoint ptr %reg_bits to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_bits, align 4
  %host_endianness = getelementptr inbounds %struct.ltq_rcu_usb2_bits, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %host_endianness to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %host_endianness, align 1
  %conv17 = zext i8 %37 to i32
  %shl18 = shl nuw i32 1, %conv17
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %33, i32 noundef %shl18, i32 noundef %shl18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltq_rcu_usb2_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %phy_reset = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_reset, align 4
  %call2 = tail call i32 @reset_control_deassert(ptr noundef %5) #4
  %phy_gate_clk = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %phy_gate_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_gate_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %7) #4
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0.i12 = phi i32 [ 0, %if.end ], [ %retval.0.i.ph, %do.end ]
  ret i32 %retval.0.i12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltq_rcu_usb2_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy_reset = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_reset, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #4
  %phy_gate_clk = getelementptr inbounds %struct.ltq_rcu_usb2_priv, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %phy_gate_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_gate_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_phy_lantiq_rcu_usb2__289_252_ltq_rcu_usb2_phy_driver_init6, !1, !"__initcall__kmod_phy_lantiq_rcu_usb2__289_252_ltq_rcu_usb2_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 252, i32 1}
!2 = !{ptr @__exitcall_ltq_rcu_usb2_phy_driver_exit, !1, !"__exitcall_ltq_rcu_usb2_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 254, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 255, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 256, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 248, i32 11}
!12 = !{ptr @ltq_rcu_usb2_phy_driver, !13, !"ltq_rcu_usb2_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 245, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 231, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ltq_rcu_usb2_phy_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ltq_rcu_usb2_phy_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 169, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ltq_rcu_usb2_of_parse._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @ltq_rcu_usb2_of_parse._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 175, i32 3}
!29 = !{ptr @ltq_rcu_usb2_of_parse._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ltq_rcu_usb2_of_parse._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 183, i32 4}
!33 = !{ptr @ltq_rcu_usb2_of_parse._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ltq_rcu_usb2_of_parse._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 189, i32 41}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 191, i32 3}
!39 = !{ptr @ltq_rcu_usb2_of_parse._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ltq_rcu_usb2_of_parse._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 195, i32 56}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 198, i32 4}
!45 = !{ptr @ltq_rcu_usb2_of_parse._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ltq_rcu_usb2_of_parse._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @ltq_rcu_usb2_phy_ops, !48, !"ltq_rcu_usb2_phy_ops", i1 false, i1 false}
!48 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 152, i32 29}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 128, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ltq_rcu_usb2_phy_power_on._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ltq_rcu_usb2_phy_power_on._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @ltq_rcu_usb2_phy_of_match, !55, !"ltq_rcu_usb2_phy_of_match", i1 false, i1 false}
!55 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 68, i32 34}
!56 = !{ptr @xway_rcu_usb2_reg_bits, !57, !"xway_rcu_usb2_reg_bits", i1 false, i1 false}
!57 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 47, i32 39}
!58 = !{ptr @xrx100_rcu_usb2_reg_bits, !59, !"xrx100_rcu_usb2_reg_bits", i1 false, i1 false}
!59 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 54, i32 39}
!60 = !{ptr @xrx200_rcu_usb2_reg_bits, !61, !"xrx200_rcu_usb2_reg_bits", i1 false, i1 false}
!61 = !{!"../drivers/phy/lantiq/phy-lantiq-rcu-usb2.c", i32 61, i32 39}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i8 0, i8 2}
