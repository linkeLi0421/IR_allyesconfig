; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/mv88e6060.c_pt.bc'
source_filename = "../drivers/net/dsa/mv88e6060.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdio_driver = type { %struct.mdio_driver_common, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.mv88e6060_priv = type { ptr, i32, ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.dsa_port = type { %union.anon.150, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.150 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.139 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.139 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }

@__initcall__kmod_mv88e6060__497_330_mdio_module_init6 = internal global ptr @mdio_module_init, section ".initcall6.init", align 4
@mv88e6060_driver = internal global { %struct.mdio_driver, [36 x i8] } { %struct.mdio_driver { %struct.mdio_driver_common { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mv88e6060_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 0 }, ptr @mv88e6060_probe, ptr @mv88e6060_remove, ptr @mv88e6060_shutdown }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mdio_module_exit = internal global ptr @mdio_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author498 = internal constant [60 x i8] c"mv88e6060.author=Lennert Buytenhek <buytenh@wantstofly.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description499 = internal constant [70 x i8] c"mv88e6060.description=Driver for Marvell 88E6060 ethernet switch chip\00", section ".modinfo", align 1
@__UNIQUE_ID_file500 = internal constant [41 x i8] c"mv88e6060.file=drivers/net/dsa/mv88e6060\00", section ".modinfo", align 1
@__UNIQUE_ID_license501 = internal constant [22 x i8] c"mv88e6060.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias502 = internal constant [35 x i8] c"mv88e6060.alias=platform:mv88e6060\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mv88e6060\00", [22 x i8] zeroinitializer }, align 32
@mv88e6060_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv88e6060\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mv88e6060_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 272, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"switch %s detected\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mv88e6060_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/dsa/mv88e6060.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv88e6060_probe._entry_ptr = internal global ptr @mv88e6060_probe._entry, section ".printk_index", align 4
@mv88e6060_switch_ops = internal constant { %struct.dsa_switch_ops, [96 x i8] } { %struct.dsa_switch_ops { ptr @mv88e6060_get_tag_protocol, ptr null, ptr null, ptr @mv88e6060_setup, ptr null, ptr null, ptr null, ptr null, ptr @mv88e6060_phy_read, ptr @mv88e6060_phy_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [96 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Marvell 88E6060 (A0)\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Marvell 88E6060 (B0)\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Marvell 88E6060\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@switch.table.mv88e6060_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.7], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"mv88e6060_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 320, i32 27 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 325, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"mv88e6060_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 313, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 272, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"mv88e6060_switch_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 247, i32 36 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 34, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 37, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [31 x i8] c"../drivers/net/dsa/mv88e6060.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 39, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [29 x i8] c"switch.table.mv88e6060_probe\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_alias502, ptr @__UNIQUE_ID_author498, ptr @__UNIQUE_ID_description499, ptr @__UNIQUE_ID_file500, ptr @__UNIQUE_ID_license501, ptr @__exitcall_mdio_module_exit, ptr @__initcall__kmod_mv88e6060__497_330_mdio_module_init6, ptr @mdio_module_exit, ptr @mv88e6060_probe._entry, ptr @mv88e6060_probe._entry_ptr, ptr @mv88e6060_driver, ptr @.str, ptr @mv88e6060_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mv88e6060_switch_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @switch.table.mv88e6060_probe], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6060_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6060_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6060_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6060_switch_ops to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mv88e6060_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdio_driver_register(ptr noundef nonnull @mv88e6060_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mdio_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mdio_driver_unregister(ptr noundef nonnull @mv88e6060_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6060_probe(ptr noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %mdiodev, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus = getelementptr inbounds %struct.mdio_device, ptr %mdiodev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %call.i, align 4
  %addr = getelementptr inbounds %struct.mdio_device, ptr %mdiodev, i32 0, i32 6
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 8
  %sw_addr = getelementptr inbounds %struct.mv88e6060_priv, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %sw_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %sw_addr, align 4
  %add.i = add i32 %4, 8
  %call.i40 = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %add.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i40)
  %cmp.i = icmp sgt i32 %call.i40, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %switch.tableidx = add i32 %call.i40, -1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i
  %and.i = and i32 %call.i40, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %and.i)
  %cmp7.i = icmp eq i32 %and.i, 1536
  br i1 %cmp7.i, label %if.end6.i.do.end_crit_edge, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i.do.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.mv88e6060_probe, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end

do.end:                                           ; preds = %switch.lookup, %if.end6.i.do.end_crit_edge
  %retval.0.i.ph = phi ptr [ @.str.8, %if.end6.i.do.end_crit_edge ], [ %switch.load, %switch.lookup ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %mdiodev, ptr noundef nonnull @.str.1, ptr noundef nonnull %retval.0.i.ph) #9
  %call.i41 = tail call noalias ptr @devm_kmalloc(ptr noundef %mdiodev, i32 noundef 84, i32 noundef 3520) #6
  %tobool10.not = icmp eq ptr %call.i41, null
  br i1 %tobool10.not, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %call.i41, i32 0, i32 18
  %8 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %num_ports, align 4
  %priv14 = getelementptr inbounds %struct.dsa_switch, ptr %call.i41, i32 0, i32 5
  %9 = ptrtoint ptr %priv14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %priv14, align 4
  %10 = ptrtoint ptr %call.i41 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mdiodev, ptr %call.i41, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %call.i41, i32 0, i32 8
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mv88e6060_switch_ops, ptr %ops, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i41, ptr %driver_data.i, align 4
  %call16 = tail call i32 @dsa_register_switch(ptr noundef nonnull %call.i41) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end12 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv88e6060_remove(ptr nocapture noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dsa_unregister_switch(ptr noundef nonnull %1) #6
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv88e6060_shutdown(ptr nocapture noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dsa_switch_shutdown(ptr noundef nonnull %1) #6
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_register_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv88e6060_get_tag_protocol(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %m) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6060_setup(ptr noundef %ds) #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %ds2 = getelementptr inbounds %struct.mv88e6060_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ds2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ds, ptr %ds2, align 4
  %sw_addr.i.i = getelementptr inbounds %struct.mv88e6060_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sw_addr.i.i, align 4
  %add.i.i = add i32 %6, 8
  %call.i.i = tail call i32 @mdiobus_read_nested(ptr noundef %4, i32 noundef %add.i.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sw_addr.i.i, align 4
  %add.i.1.i = add i32 %10, 9
  %call.i.1.i = tail call i32 @mdiobus_read_nested(ptr noundef %8, i32 noundef %add.i.1.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp1.1.i = icmp slt i32 %call.i.1.i, 0
  br i1 %cmp1.1.i, label %for.cond.i.cleanup_crit_edge, label %if.end.1.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.1.i:                                       ; preds = %for.cond.i
  %11 = trunc i32 %call.i.1.i to i16
  %conv.1.i = and i16 %11, -4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sw_addr.i.i, align 4
  %add.i46.1.i = add i32 %15, 9
  %call.i47.1.i = tail call i32 @mdiobus_write_nested(ptr noundef %13, i32 noundef %add.i46.1.i, i32 noundef 4, i16 noundef zeroext %conv.1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.1.i)
  %tobool.not.1.i = icmp eq i32 %call.i47.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %if.end.1.i.mv88e6060_switch_reset.exit_crit_edge

if.end.1.i.mv88e6060_switch_reset.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6060_switch_reset.exit

for.cond.1.i:                                     ; preds = %if.end.1.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sw_addr.i.i, align 4
  %add.i.2.i = add i32 %19, 10
  %call.i.2.i = tail call i32 @mdiobus_read_nested(ptr noundef %17, i32 noundef %add.i.2.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %cmp1.2.i = icmp slt i32 %call.i.2.i, 0
  br i1 %cmp1.2.i, label %for.cond.1.i.cleanup_crit_edge, label %if.end.2.i

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.2.i:                                       ; preds = %for.cond.1.i
  %20 = trunc i32 %call.i.2.i to i16
  %conv.2.i = and i16 %20, -4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sw_addr.i.i, align 4
  %add.i46.2.i = add i32 %24, 10
  %call.i47.2.i = tail call i32 @mdiobus_write_nested(ptr noundef %22, i32 noundef %add.i46.2.i, i32 noundef 4, i16 noundef zeroext %conv.2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.2.i)
  %tobool.not.2.i = icmp eq i32 %call.i47.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %if.end.2.i.mv88e6060_switch_reset.exit_crit_edge

if.end.2.i.mv88e6060_switch_reset.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6060_switch_reset.exit

for.cond.2.i:                                     ; preds = %if.end.2.i
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sw_addr.i.i, align 4
  %add.i.3.i = add i32 %28, 11
  %call.i.3.i = tail call i32 @mdiobus_read_nested(ptr noundef %26, i32 noundef %add.i.3.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %cmp1.3.i = icmp slt i32 %call.i.3.i, 0
  br i1 %cmp1.3.i, label %for.cond.2.i.cleanup_crit_edge, label %if.end.3.i

for.cond.2.i.cleanup_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.3.i:                                       ; preds = %for.cond.2.i
  %29 = trunc i32 %call.i.3.i to i16
  %conv.3.i = and i16 %29, -4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sw_addr.i.i, align 4
  %add.i46.3.i = add i32 %33, 11
  %call.i47.3.i = tail call i32 @mdiobus_write_nested(ptr noundef %31, i32 noundef %add.i46.3.i, i32 noundef 4, i16 noundef zeroext %conv.3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.3.i)
  %tobool.not.3.i = icmp eq i32 %call.i47.3.i, 0
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %if.end.3.i.mv88e6060_switch_reset.exit_crit_edge

if.end.3.i.mv88e6060_switch_reset.exit_crit_edge: ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6060_switch_reset.exit

for.cond.3.i:                                     ; preds = %if.end.3.i
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %36 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sw_addr.i.i, align 4
  %add.i.4.i = add i32 %37, 12
  %call.i.4.i = tail call i32 @mdiobus_read_nested(ptr noundef %35, i32 noundef %add.i.4.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4.i)
  %cmp1.4.i = icmp slt i32 %call.i.4.i, 0
  br i1 %cmp1.4.i, label %for.cond.3.i.cleanup_crit_edge, label %if.end.4.i

for.cond.3.i.cleanup_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.4.i:                                       ; preds = %for.cond.3.i
  %38 = trunc i32 %call.i.4.i to i16
  %conv.4.i = and i16 %38, -4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %41 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sw_addr.i.i, align 4
  %add.i46.4.i = add i32 %42, 12
  %call.i47.4.i = tail call i32 @mdiobus_write_nested(ptr noundef %40, i32 noundef %add.i46.4.i, i32 noundef 4, i16 noundef zeroext %conv.4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.4.i)
  %tobool.not.4.i = icmp eq i32 %call.i47.4.i, 0
  br i1 %tobool.not.4.i, label %for.cond.4.i, label %if.end.4.i.mv88e6060_switch_reset.exit_crit_edge

if.end.4.i.mv88e6060_switch_reset.exit_crit_edge: ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6060_switch_reset.exit

for.cond.4.i:                                     ; preds = %if.end.4.i
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %45 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sw_addr.i.i, align 4
  %add.i.5.i = add i32 %46, 13
  %call.i.5.i = tail call i32 @mdiobus_read_nested(ptr noundef %44, i32 noundef %add.i.5.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5.i)
  %cmp1.5.i = icmp slt i32 %call.i.5.i, 0
  br i1 %cmp1.5.i, label %for.cond.4.i.cleanup_crit_edge, label %if.end.5.i

for.cond.4.i.cleanup_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.5.i:                                       ; preds = %for.cond.4.i
  %47 = trunc i32 %call.i.5.i to i16
  %conv.5.i = and i16 %47, -4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %50 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sw_addr.i.i, align 4
  %add.i46.5.i = add i32 %51, 13
  %call.i47.5.i = tail call i32 @mdiobus_write_nested(ptr noundef %49, i32 noundef %add.i46.5.i, i32 noundef 4, i16 noundef zeroext %conv.5.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.5.i)
  %tobool.not.5.i = icmp eq i32 %call.i47.5.i, 0
  br i1 %tobool.not.5.i, label %for.cond.5.i, label %if.end.5.i.mv88e6060_switch_reset.exit_crit_edge

if.end.5.i.mv88e6060_switch_reset.exit_crit_edge: ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6060_switch_reset.exit

for.cond.5.i:                                     ; preds = %if.end.5.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #6
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %54 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sw_addr.i.i, align 4
  %add.i49.i = add i32 %55, 15
  %call.i50.i = tail call i32 @mdiobus_write_nested(ptr noundef %53, i32 noundef %add.i49.i, i32 noundef 10, i16 noundef zeroext -16384) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %tobool7.not.i = icmp eq i32 %call.i50.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %for.cond.5.i.mv88e6060_switch_reset.exit_crit_edge

for.cond.5.i.mv88e6060_switch_reset.exit_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6060_switch_reset.exit

if.end.i:                                         ; preds = %entry
  %56 = trunc i32 %call.i.i to i16
  %conv.i = and i16 %56, -4
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %59 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sw_addr.i.i, align 4
  %add.i46.i = add i32 %60, 8
  %call.i47.i = tail call i32 @mdiobus_write_nested(ptr noundef %58, i32 noundef %add.i46.i, i32 noundef 4, i16 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool.not.i = icmp eq i32 %call.i47.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end.i.mv88e6060_switch_reset.exit_crit_edge

if.end.i.mv88e6060_switch_reset.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6060_switch_reset.exit

if.end9.i:                                        ; preds = %for.cond.5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %add10.i = add i32 %61, 100
  %62 = load volatile i32, ptr @jiffies, align 128
  %sub56.i = sub i32 %62, %add10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub56.i)
  %cmp1157.i = icmp slt i32 %sub56.i, 0
  br i1 %cmp1157.i, label %if.end9.i.while.body.i_crit_edge, label %if.end9.i.while.end.i_crit_edge

if.end9.i.while.end.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end9.i.while.body.i_crit_edge:                 ; preds = %if.end9.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end21.i.while.body.i_crit_edge, %if.end9.i.while.body.i_crit_edge
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %65 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sw_addr.i.i, align 4
  %add.i52.i = add i32 %66, 15
  %call.i53.i = tail call i32 @mdiobus_read_nested(ptr noundef %64, i32 noundef %add.i52.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %cmp14.i = icmp slt i32 %call.i53.i, 0
  br i1 %cmp14.i, label %while.body.i.cleanup_crit_edge, label %if.end17.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17.i:                                       ; preds = %while.body.i
  %and18.i = and i32 %call.i53.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end17.i.while.end.i_crit_edge

if.end17.i.while.end.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end21.i:                                       ; preds = %if.end17.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %67, %add10.i
  %cmp11.i = icmp slt i32 %sub.i, 0
  br i1 %cmp11.i, label %if.end21.i.while.body.i_crit_edge, label %if.end21.i.while.end.i_crit_edge

if.end21.i.while.end.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end21.i.while.body.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %if.end21.i.while.end.i_crit_edge, %if.end17.i.while.end.i_crit_edge, %if.end9.i.while.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %sub22.i = sub i32 %add10.i, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub22.i)
  %cmp23.i = icmp slt i32 %sub22.i, 0
  br i1 %cmp23.i, label %while.end.i.cleanup_crit_edge, label %while.end.i.if.end_crit_edge

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mv88e6060_switch_reset.exit:                      ; preds = %if.end.i.mv88e6060_switch_reset.exit_crit_edge, %for.cond.5.i.mv88e6060_switch_reset.exit_crit_edge, %if.end.5.i.mv88e6060_switch_reset.exit_crit_edge, %if.end.4.i.mv88e6060_switch_reset.exit_crit_edge, %if.end.3.i.mv88e6060_switch_reset.exit_crit_edge, %if.end.2.i.mv88e6060_switch_reset.exit_crit_edge, %if.end.1.i.mv88e6060_switch_reset.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i50.i, %for.cond.5.i.mv88e6060_switch_reset.exit_crit_edge ], [ %call.i47.i, %if.end.i.mv88e6060_switch_reset.exit_crit_edge ], [ %call.i47.1.i, %if.end.1.i.mv88e6060_switch_reset.exit_crit_edge ], [ %call.i47.2.i, %if.end.2.i.mv88e6060_switch_reset.exit_crit_edge ], [ %call.i47.3.i, %if.end.3.i.mv88e6060_switch_reset.exit_crit_edge ], [ %call.i47.4.i, %if.end.4.i.mv88e6060_switch_reset.exit_crit_edge ], [ %call.i47.5.i, %if.end.5.i.mv88e6060_switch_reset.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %mv88e6060_switch_reset.exit.cleanup_crit_edge, label %mv88e6060_switch_reset.exit.if.end_crit_edge

mv88e6060_switch_reset.exit.if.end_crit_edge:     ; preds = %mv88e6060_switch_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

mv88e6060_switch_reset.exit.cleanup_crit_edge:    ; preds = %mv88e6060_switch_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %mv88e6060_switch_reset.exit.if.end_crit_edge, %while.end.i.if.end_crit_edge
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %71 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sw_addr.i.i, align 4
  %add.i.i33 = add i32 %72, 15
  %call.i.i34 = tail call i32 @mdiobus_write_nested(ptr noundef %70, i32 noundef %add.i.i33, i32 noundef 4, i16 noundef zeroext 1024) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %tobool.not.i35 = icmp eq i32 %call.i.i34, 0
  br i1 %tobool.not.i35, label %if.end.i36, label %if.end.mv88e6060_setup_global.exit_crit_edge

if.end.mv88e6060_setup_global.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6060_setup_global.exit

if.end.i36:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %75 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sw_addr.i.i, align 4
  %add.i5.i = add i32 %76, 15
  %call.i6.i = tail call i32 @mdiobus_write_nested(ptr noundef %74, i32 noundef %add.i5.i, i32 noundef 10, i16 noundef zeroext 16384) #6
  br label %mv88e6060_setup_global.exit

mv88e6060_setup_global.exit:                      ; preds = %if.end.i36, %if.end.mv88e6060_setup_global.exit_crit_edge
  %retval.0.i37 = phi i32 [ %call.i6.i, %if.end.i36 ], [ %call.i.i34, %if.end.mv88e6060_setup_global.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i37)
  %cmp4 = icmp slt i32 %retval.0.i37, 0
  br i1 %cmp4, label %mv88e6060_setup_global.exit.cleanup_crit_edge, label %if.end6

mv88e6060_setup_global.exit.cleanup_crit_edge:    ; preds = %mv88e6060_setup_global.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %mv88e6060_setup_global.exit
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #6
  %77 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %78 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %79 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  %80 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #6
  %81 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %addr.i, align 1
  %83 = and i8 %82, -4
  %84 = or i8 %83, 2
  store i8 %84, ptr %addr.i, align 1
  %conv.i38 = zext i8 %84 to i16
  %shl.i = shl nuw i16 %conv.i38, 8
  %85 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %77, align 1
  %conv2.i = zext i8 %86 to i16
  %and.i = or i16 %shl.i, %conv2.i
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %89 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sw_addr.i.i, align 4
  %add.i.i40 = add i32 %90, 15
  %call.i.i41 = call i32 @mdiobus_write_nested(ptr noundef %88, i32 noundef %add.i.i40, i32 noundef 1, i16 noundef zeroext %and.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %tobool.not.i42 = icmp eq i32 %call.i.i41, 0
  br i1 %tobool.not.i42, label %if.end.i43, label %if.end6.mv88e6060_setup_addr.exit_crit_edge

if.end6.mv88e6060_setup_addr.exit_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6060_setup_addr.exit

if.end.i43:                                       ; preds = %if.end6
  %91 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %92 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %92, align 1
  %conv7.i = zext i8 %94 to i16
  %shl8.i = shl nuw i16 %conv7.i, 8
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %91, align 1
  %conv10.i = zext i8 %96 to i16
  %or11.i = or i16 %shl8.i, %conv10.i
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 4
  %99 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sw_addr.i.i, align 4
  %add.i34.i = add i32 %100, 15
  %call.i35.i = call i32 @mdiobus_write_nested(ptr noundef %98, i32 noundef %add.i34.i, i32 noundef 2, i16 noundef zeroext %or11.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %tobool14.not.i = icmp eq i32 %call.i35.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end.i43.mv88e6060_setup_addr.exit_crit_edge

if.end.i43.mv88e6060_setup_addr.exit_crit_edge:   ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6060_setup_addr.exit

if.end16.i:                                       ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %78, align 1
  %conv18.i = zext i8 %102 to i16
  %shl19.i = shl nuw i16 %conv18.i, 8
  %103 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %79, align 1
  %conv21.i = zext i8 %104 to i16
  %or22.i = or i16 %shl19.i, %conv21.i
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %107 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sw_addr.i.i, align 4
  %add.i37.i = add i32 %108, 15
  %call.i38.i = call i32 @mdiobus_write_nested(ptr noundef %106, i32 noundef %add.i37.i, i32 noundef 3, i16 noundef zeroext %or22.i) #6
  br label %mv88e6060_setup_addr.exit

mv88e6060_setup_addr.exit:                        ; preds = %if.end16.i, %if.end.i43.mv88e6060_setup_addr.exit_crit_edge, %if.end6.mv88e6060_setup_addr.exit_crit_edge
  %retval.0.i44 = phi i32 [ %call.i38.i, %if.end16.i ], [ %call.i.i41, %if.end6.mv88e6060_setup_addr.exit_crit_edge ], [ %call.i35.i, %if.end.i43.mv88e6060_setup_addr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i44)
  %cmp8 = icmp slt i32 %retval.0.i44, 0
  br i1 %cmp8, label %mv88e6060_setup_addr.exit.cleanup_crit_edge, label %mv88e6060_setup_addr.exit.for.body_crit_edge

mv88e6060_setup_addr.exit.for.body_crit_edge:     ; preds = %mv88e6060_setup_addr.exit
  br label %for.body

mv88e6060_setup_addr.exit.cleanup_crit_edge:      ; preds = %mv88e6060_setup_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %mv88e6060_setup_port.exit
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %mv88e6060_setup_addr.exit.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %mv88e6060_setup_addr.exit.for.body_crit_edge ]
  %add.i = add nuw nsw i32 %i.063, 8
  %109 = ptrtoint ptr %ds2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ds2, align 4
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %for.body.dsa_is_cpu_port.exit.i_crit_edge, label %for.body.for.body.i.i.i_crit_edge

for.body.for.body.i.i.i_crit_edge:                ; preds = %for.body
  br label %for.body.i.i.i

for.body.dsa_is_cpu_port.exit.i_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_is_cpu_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %for.body.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %114 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %115, %110
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %116 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %i.063)
  %cmp5.i.i.i = icmp eq i32 %117, %i.063
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %118 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge:   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_is_cpu_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_cpu_port.exit.i

dsa_is_cpu_port.exit.i:                           ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge, %for.body.dsa_is_cpu_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %for.body.dsa_is_cpu_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %119 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %120)
  %cmp.i.i = icmp eq i32 %120, 1
  %conv.i45 = select i1 %cmp.i.i, i16 16643, i16 3
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 4
  %123 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sw_addr.i.i, align 4
  %add.i.i47 = add i32 %124, %add.i
  %call.i.i48 = call i32 @mdiobus_write_nested(ptr noundef %122, i32 noundef %add.i.i47, i32 noundef 4, i16 noundef zeroext %conv.i45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %tobool.not.i49 = icmp eq i32 %call.i.i48, 0
  br i1 %tobool.not.i49, label %if.end.i51, label %dsa_is_cpu_port.exit.i.mv88e6060_setup_port.exit_crit_edge

dsa_is_cpu_port.exit.i.mv88e6060_setup_port.exit_crit_edge: ; preds = %dsa_is_cpu_port.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6060_setup_port.exit

if.end.i51:                                       ; preds = %dsa_is_cpu_port.exit.i
  %and.i50 = shl i32 %i.063, 12
  %125 = ptrtoint ptr %ds2 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ds2, align 4
  %dst1.i.i36.i = getelementptr inbounds %struct.dsa_switch, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %dst1.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dst1.i.i36.i, align 4
  %ports.i.i37.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %ports.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.pn20.i.i38.i = load ptr, ptr %ports.i.i37.i, align 4
  %cmp.not21.i.i39.i = icmp eq ptr %.pn20.i.i38.i, %ports.i.i37.i
  br i1 %cmp.not21.i.i39.i, label %dsa_is_cpu_port.exit55.thread.i, label %if.end.i51.for.body.i.i43.i_crit_edge

if.end.i51.for.body.i.i43.i_crit_edge:            ; preds = %if.end.i51
  br label %for.body.i.i43.i

for.body.i.i43.i:                                 ; preds = %for.inc.i.i49.i.for.body.i.i43.i_crit_edge, %if.end.i51.for.body.i.i43.i_crit_edge
  %.pn22.i.i40.i = phi ptr [ %.pn.i.i47.i, %for.inc.i.i49.i.for.body.i.i43.i_crit_edge ], [ %.pn20.i.i38.i, %if.end.i51.for.body.i.i43.i_crit_edge ]
  %ds3.i.i41.i = getelementptr i8, ptr %.pn22.i.i40.i, i32 -432
  %130 = ptrtoint ptr %ds3.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ds3.i.i41.i, align 4
  %cmp4.i.i42.i = icmp eq ptr %131, %126
  br i1 %cmp4.i.i42.i, label %land.lhs.true.i.i46.i, label %for.body.i.i43.i.for.inc.i.i49.i_crit_edge

for.body.i.i43.i.for.inc.i.i49.i_crit_edge:       ; preds = %for.body.i.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i49.i

land.lhs.true.i.i46.i:                            ; preds = %for.body.i.i43.i
  %index.i.i44.i = getelementptr i8, ptr %.pn22.i.i40.i, i32 -428
  %132 = ptrtoint ptr %index.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %index.i.i44.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %i.063)
  %cmp5.i.i45.i = icmp eq i32 %133, %i.063
  br i1 %cmp5.i.i45.i, label %cleanup.split.loop.exit18.i.i51.i, label %land.lhs.true.i.i46.i.for.inc.i.i49.i_crit_edge

land.lhs.true.i.i46.i.for.inc.i.i49.i_crit_edge:  ; preds = %land.lhs.true.i.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i49.i

for.inc.i.i49.i:                                  ; preds = %land.lhs.true.i.i46.i.for.inc.i.i49.i_crit_edge, %for.body.i.i43.i.for.inc.i.i49.i_crit_edge
  %134 = ptrtoint ptr %.pn22.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pn.i.i47.i = load ptr, ptr %.pn22.i.i40.i, align 4
  %cmp.not.i.i48.i = icmp eq ptr %.pn.i.i47.i, %ports.i.i37.i
  br i1 %cmp.not.i.i48.i, label %for.inc.i.i49.i.dsa_is_cpu_port.exit55.i_crit_edge, label %for.inc.i.i49.i.for.body.i.i43.i_crit_edge

for.inc.i.i49.i.for.body.i.i43.i_crit_edge:       ; preds = %for.inc.i.i49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i43.i

for.inc.i.i49.i.dsa_is_cpu_port.exit55.i_crit_edge: ; preds = %for.inc.i.i49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_is_cpu_port.exit55.i

cleanup.split.loop.exit18.i.i51.i:                ; preds = %land.lhs.true.i.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  %dp.0.le.i.i50.i = getelementptr i8, ptr %.pn22.i.i40.i, i32 -448
  br label %dsa_is_cpu_port.exit55.i

dsa_is_cpu_port.exit55.i:                         ; preds = %cleanup.split.loop.exit18.i.i51.i, %for.inc.i.i49.i.dsa_is_cpu_port.exit55.i_crit_edge
  %retval.0.i.i52.i = phi ptr [ %dp.0.le.i.i50.i, %cleanup.split.loop.exit18.i.i51.i ], [ null, %for.inc.i.i49.i.dsa_is_cpu_port.exit55.i_crit_edge ]
  %type.i53.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i52.i, i32 0, i32 6
  %135 = ptrtoint ptr %type.i53.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %type.i53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %136)
  %cmp.i54.i = icmp eq i32 %136, 1
  br i1 %cmp.i54.i, label %dsa_is_cpu_port.exit55.i.for.body.i.i_crit_edge, label %dsa_is_cpu_port.exit55.i.for.body.i60.i_crit_edge

dsa_is_cpu_port.exit55.i.for.body.i60.i_crit_edge: ; preds = %dsa_is_cpu_port.exit55.i
  br label %for.body.i60.i

dsa_is_cpu_port.exit55.i.for.body.i.i_crit_edge:  ; preds = %dsa_is_cpu_port.exit55.i
  br label %for.body.i.i

dsa_is_cpu_port.exit55.thread.i:                  ; preds = %if.end.i51
  call void @__asan_load4_noabort(i32 24)
  %137 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %cmp.i5473.i = icmp eq i32 %137, 1
  br i1 %cmp.i5473.i, label %dsa_is_cpu_port.exit55.thread.i.cond.end.i_crit_edge, label %dsa_is_cpu_port.exit55.thread.i.dsa_to_port.exit.i_crit_edge

dsa_is_cpu_port.exit55.thread.i.dsa_to_port.exit.i_crit_edge: ; preds = %dsa_is_cpu_port.exit55.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit.i

dsa_is_cpu_port.exit55.thread.i.cond.end.i_crit_edge: ; preds = %dsa_is_cpu_port.exit55.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %dsa_is_cpu_port.exit55.i.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i38.i, %dsa_is_cpu_port.exit55.i.for.body.i.i_crit_edge ]
  %mask.021.i.i = phi i32 [ %mask.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %dsa_is_cpu_port.exit55.i.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %138 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %139, %126
  br i1 %cmp4.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %type.i.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -424
  %140 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %141)
  %cmp.i.i.i = icmp eq i32 %141, 3
  br i1 %cmp.i.i.i, label %if.then5.i.i, label %if.then.i.i.for.inc.i.i_crit_edge

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %142 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %index.i.i, align 4
  %shl.i.i = shl nuw i32 1, %143
  %or.i.i = or i32 %shl.i.i, %mask.021.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then5.i.i, %if.then.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %mask.1.i.i = phi i32 [ %or.i.i, %if.then5.i.i ], [ %mask.021.i.i, %if.then.i.i.for.inc.i.i_crit_edge ], [ %mask.021.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %144 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i37.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.cond.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.cond.end.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

for.body.i60.i:                                   ; preds = %for.inc.i64.i.for.body.i60.i_crit_edge, %dsa_is_cpu_port.exit55.i.for.body.i60.i_crit_edge
  %.pn22.i57.i = phi ptr [ %.pn.i62.i, %for.inc.i64.i.for.body.i60.i_crit_edge ], [ %.pn20.i.i38.i, %dsa_is_cpu_port.exit55.i.for.body.i60.i_crit_edge ]
  %ds3.i58.i = getelementptr i8, ptr %.pn22.i57.i, i32 -432
  %145 = ptrtoint ptr %ds3.i58.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ds3.i58.i, align 4
  %cmp4.i59.i = icmp eq ptr %146, %126
  br i1 %cmp4.i59.i, label %land.lhs.true.i.i, label %for.body.i60.i.for.inc.i64.i_crit_edge

for.body.i60.i.for.inc.i64.i_crit_edge:           ; preds = %for.body.i60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i64.i

land.lhs.true.i.i:                                ; preds = %for.body.i60.i
  %index.i61.i = getelementptr i8, ptr %.pn22.i57.i, i32 -428
  %147 = ptrtoint ptr %index.i61.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %index.i61.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %i.063)
  %cmp5.i.i = icmp eq i32 %148, %i.063
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i64.i_crit_edge

land.lhs.true.i.i.for.inc.i64.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i64.i

for.inc.i64.i:                                    ; preds = %land.lhs.true.i.i.for.inc.i64.i_crit_edge, %for.body.i60.i.for.inc.i64.i_crit_edge
  %149 = ptrtoint ptr %.pn22.i57.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %.pn.i62.i = load ptr, ptr %.pn22.i57.i, align 4
  %cmp.not.i63.i = icmp eq ptr %.pn.i62.i, %ports.i.i37.i
  br i1 %cmp.not.i63.i, label %for.inc.i64.i.dsa_to_port.exit.i_crit_edge, label %for.inc.i64.i.for.body.i60.i_crit_edge

for.inc.i64.i.for.body.i60.i_crit_edge:           ; preds = %for.inc.i64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i60.i

for.inc.i64.i.dsa_to_port.exit.i_crit_edge:       ; preds = %for.inc.i64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit.i

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i57.i, i32 -448
  br label %dsa_to_port.exit.i

dsa_to_port.exit.i:                               ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i64.i.dsa_to_port.exit.i_crit_edge, %dsa_is_cpu_port.exit55.thread.i.dsa_to_port.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %dsa_is_cpu_port.exit55.thread.i.dsa_to_port.exit.i_crit_edge ], [ null, %for.inc.i64.i.dsa_to_port.exit.i_crit_edge ]
  %cpu_dp.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 8
  %150 = ptrtoint ptr %cpu_dp.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cpu_dp.i, align 4
  %index.i = getelementptr inbounds %struct.dsa_port, ptr %151, i32 0, i32 5
  %152 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %index.i, align 4
  %shl9.i = shl nuw i32 1, %153
  br label %cond.end.i

cond.end.i:                                       ; preds = %dsa_to_port.exit.i, %for.inc.i.i.cond.end.i_crit_edge, %dsa_is_cpu_port.exit55.thread.i.cond.end.i_crit_edge
  %cond10.i = phi i32 [ %shl9.i, %dsa_to_port.exit.i ], [ 0, %dsa_is_cpu_port.exit55.thread.i.cond.end.i_crit_edge ], [ %mask.1.i.i, %for.inc.i.i.cond.end.i_crit_edge ]
  %or.i = or i32 %cond10.i, %and.i50
  %conv11.i = trunc i32 %or.i to i16
  %154 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %1, align 4
  %156 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %sw_addr.i.i, align 4
  %add.i66.i = add i32 %157, %add.i
  %call.i67.i = call i32 @mdiobus_write_nested(ptr noundef %155, i32 noundef %add.i66.i, i32 noundef 6, i16 noundef zeroext %conv11.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %tobool13.not.i = icmp eq i32 %call.i67.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %cond.end.i.mv88e6060_setup_port.exit_crit_edge

cond.end.i.mv88e6060_setup_port.exit_crit_edge:   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv88e6060_setup_port.exit

if.end15.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl16.i = shl nuw i32 1, %i.063
  %conv17.i = trunc i32 %shl16.i to i16
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %1, align 4
  %160 = ptrtoint ptr %sw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %sw_addr.i.i, align 4
  %add.i69.i = add i32 %161, %add.i
  %call.i70.i = call i32 @mdiobus_write_nested(ptr noundef %159, i32 noundef %add.i69.i, i32 noundef 11, i16 noundef zeroext %conv17.i) #6
  br label %mv88e6060_setup_port.exit

mv88e6060_setup_port.exit:                        ; preds = %if.end15.i, %cond.end.i.mv88e6060_setup_port.exit_crit_edge, %dsa_is_cpu_port.exit.i.mv88e6060_setup_port.exit_crit_edge
  %retval.0.i52 = phi i32 [ %call.i70.i, %if.end15.i ], [ %call.i.i48, %dsa_is_cpu_port.exit.i.mv88e6060_setup_port.exit_crit_edge ], [ %call.i67.i, %cond.end.i.mv88e6060_setup_port.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i52)
  %cmp13 = icmp slt i32 %retval.0.i52, 0
  br i1 %cmp13, label %mv88e6060_setup_port.exit.cleanup_crit_edge, label %for.cond

mv88e6060_setup_port.exit.cleanup_crit_edge:      ; preds = %mv88e6060_setup_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %mv88e6060_setup_port.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %mv88e6060_setup_addr.exit.cleanup_crit_edge, %mv88e6060_setup_global.exit.cleanup_crit_edge, %mv88e6060_switch_reset.exit.cleanup_crit_edge, %while.end.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %for.cond.4.i.cleanup_crit_edge, %for.cond.3.i.cleanup_crit_edge, %for.cond.2.i.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mv88e6060_switch_reset.exit.cleanup_crit_edge ], [ %retval.0.i37, %mv88e6060_setup_global.exit.cleanup_crit_edge ], [ %retval.0.i44, %mv88e6060_setup_addr.exit.cleanup_crit_edge ], [ %call.i.5.i, %for.cond.4.i.cleanup_crit_edge ], [ %call.i.4.i, %for.cond.3.i.cleanup_crit_edge ], [ %call.i.3.i, %for.cond.2.i.cleanup_crit_edge ], [ %call.i.2.i, %for.cond.1.i.cleanup_crit_edge ], [ %call.i.1.i, %for.cond.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ], [ -110, %while.end.i.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %retval.0.i52, %mv88e6060_setup_port.exit.cleanup_crit_edge ], [ %call.i53.i, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6060_phy_read(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %port)
  %0 = icmp ugt i32 %port, 5
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %sw_addr.i = getelementptr inbounds %struct.mv88e6060_priv, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %sw_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sw_addr.i, align 4
  %add.i = add i32 %6, %port
  %call.i = tail call i32 @mdiobus_read_nested(ptr noundef %4, i32 noundef %add.i, i32 noundef %regnum) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 65535, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6060_phy_write(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %regnum, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %port)
  %0 = icmp ugt i32 %port, 5
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %sw_addr.i = getelementptr inbounds %struct.mv88e6060_priv, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %sw_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sw_addr.i, align 4
  %add.i = add i32 %6, %port
  %call.i = tail call i32 @mdiobus_write_nested(ptr noundef %4, i32 noundef %add.i, i32 noundef %regnum, i16 noundef zeroext %val) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 65535, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read_nested(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write_nested(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_mv88e6060__497_330_mdio_module_init6, !1, !"__initcall__kmod_mv88e6060__497_330_mdio_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/mv88e6060.c", i32 330, i32 1}
!2 = !{ptr @__exitcall_mdio_module_exit, !1, !"__exitcall_mdio_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author498, !4, !"__UNIQUE_ID_author498", i1 false, i1 false}
!4 = !{!"../drivers/net/dsa/mv88e6060.c", i32 332, i32 1}
!5 = !{ptr @__UNIQUE_ID_description499, !6, !"__UNIQUE_ID_description499", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/mv88e6060.c", i32 333, i32 1}
!7 = !{ptr @__UNIQUE_ID_file500, !8, !"__UNIQUE_ID_file500", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/mv88e6060.c", i32 334, i32 1}
!9 = !{ptr @__UNIQUE_ID_license501, !8, !"__UNIQUE_ID_license501", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias502, !11, !"__UNIQUE_ID_alias502", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/mv88e6060.c", i32 335, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/mv88e6060.c", i32 325, i32 11}
!14 = !{ptr @mv88e6060_driver, !15, !"mv88e6060_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/mv88e6060.c", i32 320, i32 27}
!16 = !{ptr @mv88e6060_of_match, !17, !"mv88e6060_of_match", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/mv88e6060.c", i32 313, i32 34}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/mv88e6060.c", i32 272, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mv88e6060_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mv88e6060_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/dsa/mv88e6060.c", i32 34, i32 11}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/mv88e6060.c", i32 37, i32 11}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/dsa/mv88e6060.c", i32 39, i32 11}
!32 = !{ptr @mv88e6060_switch_ops, !33, !"mv88e6060_switch_ops", i1 false, i1 false}
!33 = !{!"../drivers/net/dsa/mv88e6060.c", i32 247, i32 36}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
