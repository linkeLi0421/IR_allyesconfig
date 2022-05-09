; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/lan9303_mdio.c_pt.bc'
source_filename = "../drivers/net/dsa/lan9303_mdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdio_driver = type { %struct.mdio_driver_common, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lan9303_phy_ops = type { ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.lan9303_mdio = type { ptr, %struct.lan9303 }
%struct.lan9303 = type { ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, i8, i32, [512 x %struct.lan9303_alr_cache_entry] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lan9303_alr_cache_entry = type { [6 x i8], i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }

@__initcall__kmod_lan9303_mdio__495_174_mdio_module_init6 = internal global ptr @mdio_module_init, section ".initcall6.init", align 4
@lan9303_mdio_driver = internal global { %struct.mdio_driver, [36 x i8] } { %struct.mdio_driver { %struct.mdio_driver_common { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lan9303_mdio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 0 }, ptr @lan9303_mdio_probe, ptr @lan9303_mdio_remove, ptr @lan9303_mdio_shutdown }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mdio_module_exit = internal global ptr @mdio_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author496 = internal constant [87 x i8] c"lan9303_mdio.author=Stefan Roese <sr@denx.de>, Juergen Borleis <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description497 = internal constant [107 x i8] c"lan9303_mdio.description=Driver for SMSC/Microchip LAN9303 three port ethernet switch in MDIO managed mode\00", section ".modinfo", align 1
@__UNIQUE_ID_file498 = internal constant [47 x i8] c"lan9303_mdio.file=drivers/net/dsa/lan9303_mdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license499 = internal constant [28 x i8] c"lan9303_mdio.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LAN9303_MDIO\00", [19 x i8] zeroinitializer }, align 32
@lan9303_mdio_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"smsc,lan9303-mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lan9303_mdio_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lan9303_mdio_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 1, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @lan9303_mdio_read, ptr @lan9303_mdio_write, ptr null, i8 0, i32 255, ptr @lan9303_register_set, ptr @lan9303_register_set, ptr @lan9303_register_set, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 2, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"lan9303_mdio:110:(&lan9303_mdio_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@lan9303_mdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 113, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"regmap init failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lan9303_mdio_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/dsa/lan9303_mdio.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lan9303_mdio_probe._entry_ptr = internal global ptr @lan9303_mdio_probe._entry, section ".printk_index", align 4
@lan9303_mdio_phy_ops = internal constant { %struct.lan9303_phy_ops, [24 x i8] } { %struct.lan9303_phy_ops { ptr @lan9303_mdio_phy_read, ptr @lan9303_mdio_phy_write }, [24 x i8] zeroinitializer }, align 32
@lan9303_mdio_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 128, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"LAN9303 MDIO driver loaded successfully\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lan9303_mdio_probe._entry_ptr.10 = internal global ptr @lan9303_mdio_probe._entry.7, section ".printk_index", align 4
@lan9303_register_set = external dso_local constant %struct.regmap_access_table, align 4
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"lan9303_mdio_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 165, i32 27 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 167, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"lan9303_mdio_of_match\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 159, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [27 x i8] c"lan9303_mdio_regmap_config\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 81, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 109, i32 24 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 113, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"lan9303_mdio_phy_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 76, i32 37 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [34 x i8] c"../drivers/net/dsa/lan9303_mdio.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 128, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author496, ptr @__UNIQUE_ID_description497, ptr @__UNIQUE_ID_file498, ptr @__UNIQUE_ID_license499, ptr @__exitcall_mdio_module_exit, ptr @__initcall__kmod_lan9303_mdio__495_174_mdio_module_init6, ptr @lan9303_mdio_probe._entry, ptr @lan9303_mdio_probe._entry.7, ptr @lan9303_mdio_probe._entry_ptr, ptr @lan9303_mdio_probe._entry_ptr.10, ptr @mdio_module_exit, ptr @lan9303_mdio_driver, ptr @.str, ptr @lan9303_mdio_of_match, ptr @lan9303_mdio_probe._key, ptr @lan9303_mdio_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @lan9303_mdio_phy_ops, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_mdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_mdio_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_mdio_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_mdio_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_mdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_mdio_phy_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan9303_mdio_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdio_driver_register(ptr noundef nonnull @lan9303_mdio_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mdio_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mdio_driver_unregister(ptr noundef nonnull @lan9303_mdio_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_mdio_probe(ptr noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %mdiodev, i32 noundef 4324, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__devm_regmap_init(ptr noundef %mdiodev, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef nonnull @lan9303_mdio_regmap_config, ptr noundef nonnull @lan9303_mdio_probe._key, ptr noundef nonnull @.str.1) #4
  %regmap = getelementptr inbounds %struct.lan9303_mdio, ptr %call.i, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdiodev, ptr noundef nonnull @.str.2, i32 noundef %1) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %chip = getelementptr inbounds %struct.lan9303_mdio, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mdiodev, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mdiodev, ptr %chip, align 4
  %ops = getelementptr inbounds %struct.lan9303_mdio, ptr %call.i, i32 0, i32 1, i32 9
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @lan9303_mdio_phy_ops, ptr %ops, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call19 = tail call i32 @lan9303_probe(ptr noundef %chip, ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp.not = icmp eq i32 %call19, 0
  br i1 %cmp.not, label %do.end24, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end24:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %mdiodev, ptr noundef nonnull @.str.8) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.end11.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ 0, %do.end24 ], [ -12, %entry.cleanup_crit_edge ], [ %call19, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan9303_mdio_remove(ptr nocapture noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %chip = getelementptr inbounds %struct.lan9303_mdio, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @lan9303_remove(ptr noundef %chip) #4
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan9303_mdio_shutdown(ptr nocapture noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %chip = getelementptr inbounds %struct.lan9303_mdio, ptr %1, i32 0, i32 1
  tail call void @lan9303_shutdown(ptr noundef %chip) #4
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan9303_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_mdio_read(ptr nocapture noundef readonly %ctx, i32 noundef %reg, ptr nocapture noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %reg, 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bus = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 0) #4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %10 = lshr i32 %shl, 6
  %add.i = add nuw nsw i32 %10, 16
  %and.i = and i32 %add.i, 31
  %11 = lshr exact i32 %shl, 1
  %and3.i = and i32 %11, 30
  %call.i = tail call i32 %9(ptr noundef %7, i32 noundef %and.i, i32 noundef %and3.i) #4
  %conv = and i32 %call.i, 65535
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %val, align 4
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 4
  %bus.i15 = getelementptr inbounds %struct.mdio_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bus.i15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i15, align 8
  %read.i16 = getelementptr inbounds %struct.mii_bus, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %read.i16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i16, align 4
  %and3.i19 = or i32 %and3.i, 1
  %call.i20 = tail call i32 %18(ptr noundef %16, i32 noundef %and.i, i32 noundef %and3.i19) #4
  %conv4 = shl i32 %call.i20, 16
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %or = or i32 %20, %conv4
  store i32 %or, ptr %val, align 4
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %bus7 = getelementptr inbounds %struct.mdio_device, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %bus7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus7, align 8
  %mdio_lock8 = getelementptr inbounds %struct.mii_bus, ptr %24, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock8) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_mdio_write(ptr nocapture noundef readonly %ctx, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %reg, 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bus = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 0) #4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %conv = trunc i32 %val to i16
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 8
  %10 = lshr i32 %shl, 6
  %add.i = add nuw nsw i32 %10, 16
  %and.i = and i32 %add.i, 31
  %11 = lshr exact i32 %shl, 1
  %and3.i = and i32 %11, 30
  %call.i = tail call i32 %9(ptr noundef %7, i32 noundef %and.i, i32 noundef %and3.i, i16 noundef zeroext %conv) #4
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %shr = lshr i32 %val, 16
  %conv4 = trunc i32 %shr to i16
  %bus.i14 = getelementptr inbounds %struct.mdio_device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %bus.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i14, align 8
  %write.i15 = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write.i15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i15, align 8
  %and3.i18 = or i32 %and3.i, 1
  %call.i19 = tail call i32 %17(ptr noundef %15, i32 noundef %and.i, i32 noundef %and3.i18, i16 noundef zeroext %conv4) #4
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %bus6 = getelementptr inbounds %struct.mdio_device, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %bus6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus6, align 8
  %mdio_lock7 = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock7) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_mdio_phy_read(ptr nocapture noundef readonly %chip, i32 noundef %phy, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bus = getelementptr inbounds %struct.mdio_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  %call1 = tail call i32 @mdiobus_read_nested(ptr noundef %7, i32 noundef %phy, i32 noundef %reg) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan9303_mdio_phy_write(ptr nocapture noundef readonly %chip, i32 noundef %phy, i32 noundef %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bus = getelementptr inbounds %struct.mdio_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  %call1 = tail call i32 @mdiobus_write_nested(ptr noundef %7, i32 noundef %phy, i32 noundef %reg, i16 noundef zeroext %val) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read_nested(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write_nested(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan9303_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan9303_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_lan9303_mdio__495_174_mdio_module_init6, !1, !"__initcall__kmod_lan9303_mdio__495_174_mdio_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/lan9303_mdio.c", i32 174, i32 1}
!2 = !{ptr @__exitcall_mdio_module_exit, !1, !"__exitcall_mdio_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author496, !4, !"__UNIQUE_ID_author496", i1 false, i1 false}
!4 = !{!"../drivers/net/dsa/lan9303_mdio.c", i32 176, i32 1}
!5 = !{ptr @__UNIQUE_ID_description497, !6, !"__UNIQUE_ID_description497", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/lan9303_mdio.c", i32 177, i32 1}
!7 = !{ptr @__UNIQUE_ID_file498, !8, !"__UNIQUE_ID_file498", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/lan9303_mdio.c", i32 178, i32 1}
!9 = !{ptr @__UNIQUE_ID_license499, !8, !"__UNIQUE_ID_license499", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/lan9303_mdio.c", i32 167, i32 11}
!12 = !{ptr @lan9303_mdio_driver, !13, !"lan9303_mdio_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/lan9303_mdio.c", i32 165, i32 27}
!14 = !{ptr @lan9303_mdio_of_match, !15, !"lan9303_mdio_of_match", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/lan9303_mdio.c", i32 159, i32 34}
!16 = !{ptr @lan9303_mdio_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/lan9303_mdio.c", i32 109, i32 24}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/dsa/lan9303_mdio.c", i32 113, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @lan9303_mdio_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @lan9303_mdio_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/dsa/lan9303_mdio.c", i32 128, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @lan9303_mdio_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @lan9303_mdio_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @lan9303_mdio_regmap_config, !33, !"lan9303_mdio_regmap_config", i1 false, i1 false}
!33 = !{!"../drivers/net/dsa/lan9303_mdio.c", i32 81, i32 35}
!34 = !{ptr @lan9303_mdio_phy_ops, !35, !"lan9303_mdio_phy_ops", i1 false, i1 false}
!35 = !{!"../drivers/net/dsa/lan9303_mdio.c", i32 76, i32 37}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
