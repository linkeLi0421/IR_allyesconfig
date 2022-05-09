; ModuleID = '/llk/IR_all_yes/drivers/usb/typec/hd3ss3220.c_pt.bc'
source_filename = "../drivers/usb/typec/hd3ss3220.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.typec_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.typec_capability = type { i32, i32, i16, i16, i32, i32, [3 x i32], i8, ptr, ptr, ptr }
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
%struct.hd3ss3220 = type { ptr, ptr, ptr, ptr }

@__initcall__kmod_hd3ss3220__288_273_hd3ss3220_driver_init6 = internal global ptr @hd3ss3220_driver_init, section ".initcall6.init", align 4
@hd3ss3220_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @hd3ss3220_probe, ptr @hd3ss3220_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dev_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_hd3ss3220_driver_exit = internal global ptr @hd3ss3220_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [52 x i8] c"hd3ss3220.author=Biju Das <biju.das@bp.renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [62 x i8] c"hd3ss3220.description=TI HD3SS3220 DRP Port Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [43 x i8] c"hd3ss3220.file=drivers/usb/typec/hd3ss3220\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"hd3ss3220.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hd3ss3220\00", [22 x i8] zeroinitializer }, align 32
@dev_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,hd3ss3220\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hd3ss3220_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hd3ss3220:168:(&config)->lock\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"connector\00", [22 x i8] zeroinitializer }, align 32
@hd3ss3220_ops = internal constant { %struct.typec_operations, [44 x i8] } { %struct.typec_operations { ptr null, ptr @hd3ss3220_dr_set, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@hd3ss3220_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 235, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"probed revision=0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hd3ss3220_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/typec/hd3ss3220.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hd3ss3220_probe._entry_ptr = internal global ptr @hd3ss3220_probe._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"hd3ss3220_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 264, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 266, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"dev_ids\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 258, i32 34 }
@___asan_gen_.17 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 145, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 168, i32 22 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 175, i32 58 }
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"hd3ss3220_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 98, i32 38 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [33 x i8] c"../drivers/usb/typec/hd3ss3220.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 235, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_hd3ss3220_driver_exit, ptr @__initcall__kmod_hd3ss3220__288_273_hd3ss3220_driver_init6, ptr @hd3ss3220_driver_exit, ptr @hd3ss3220_probe._entry, ptr @hd3ss3220_probe._entry_ptr, ptr @hd3ss3220_driver, ptr @.str, ptr @dev_ids, ptr @hd3ss3220_probe._key, ptr @config, ptr @.str.1, ptr @.str.2, ptr @hd3ss3220_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hd3ss3220_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hd3ss3220_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hd3ss3220_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hd3ss3220_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hd3ss3220_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @hd3ss3220_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hd3ss3220_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @hd3ss3220_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hd3ss3220_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %typec_cap = alloca %struct.typec_capability, align 4
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %typec_cap) #5
  %0 = call ptr @memset(ptr %typec_cap, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %data, align 4, !annotation !42
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @config, ptr noundef nonnull @hd3ss3220_probe._key, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.hd3ss3220, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %call3, i32 noundef 10, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %call12 = tail call ptr @device_get_named_child_node(ptr noundef %7, ptr noundef nonnull @.str.2) #5
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call ptr @fwnode_usb_role_switch_get(ptr noundef nonnull %call12) #5
  br label %if.end29

if.else:                                          ; preds = %if.end9
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %call17 = tail call ptr @dev_fwnode(ptr noundef %9) #5
  %call18 = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %call17, ptr noundef null) #5
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.else.cleanup_crit_edge, label %if.end21

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.else
  %call22 = tail call ptr @fwnode_graph_get_remote_port_parent(ptr noundef nonnull %call18) #5
  tail call void @fwnode_handle_put(ptr noundef nonnull %call18) #5
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %call27 = tail call ptr @usb_role_switch_get(ptr noundef %11) #5
  br label %if.end29

if.end29:                                         ; preds = %if.end25, %if.then14
  %call27.sink = phi ptr [ %call27, %if.end25 ], [ %call15, %if.then14 ]
  %connector.0 = phi ptr [ %call22, %if.end25 ], [ %call12, %if.then14 ]
  %role_sw28 = getelementptr inbounds %struct.hd3ss3220, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %role_sw28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call27.sink, ptr %role_sw28, align 4
  %role_sw30 = getelementptr inbounds %struct.hd3ss3220, ptr %call.i, i32 0, i32 2
  %cmp.i123 = icmp ugt ptr %call27.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call27.sink to i32
  br label %err_put_fwnode

if.end35:                                         ; preds = %if.end29
  %prefer_role = getelementptr inbounds %struct.typec_capability, ptr %typec_cap, i32 0, i32 5
  %14 = ptrtoint ptr %prefer_role to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %prefer_role, align 4
  %driver_data = getelementptr inbounds %struct.typec_capability, ptr %typec_cap, i32 0, i32 9
  %15 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data, align 4
  %16 = ptrtoint ptr %typec_cap to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %typec_cap, align 4
  %data36 = getelementptr inbounds %struct.typec_capability, ptr %typec_cap, i32 0, i32 1
  %17 = ptrtoint ptr %data36 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %data36, align 4
  %ops = getelementptr inbounds %struct.typec_capability, ptr %typec_cap, i32 0, i32 10
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @hd3ss3220_ops, ptr %ops, align 4
  %fwnode = getelementptr inbounds %struct.typec_capability, ptr %typec_cap, i32 0, i32 8
  %19 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %connector.0, ptr %fwnode, align 4
  %call38 = call ptr @typec_register_port(ptr noundef %dev, ptr noundef nonnull %typec_cap) #5
  %port = getelementptr inbounds %struct.hd3ss3220, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call38, ptr %port, align 4
  %cmp.i124 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call38 to i32
  br label %err_put_role

if.end44:                                         ; preds = %if.end35
  call fastcc void @hd3ss3220_set_role(ptr noundef nonnull %call.i)
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call46 = call i32 @regmap_read(ptr noundef %23, i32 noundef 9, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp = icmp slt i32 %call46, 0
  br i1 %cmp, label %if.end44.err_unreg_port_crit_edge, label %if.end48

if.end44.err_unreg_port_crit_edge:                ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unreg_port

if.end48:                                         ; preds = %if.end44
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data, align 4
  %and = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %if.end48.if.end56_crit_edge, label %if.then50

if.end48.if.end56_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then50:                                        ; preds = %if.end48
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %or = or i32 %25, 16
  %call52 = call i32 @regmap_write(ptr noundef %27, i32 noundef 9, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then50.err_unreg_port_crit_edge, label %if.then50.if.end56_crit_edge

if.then50.if.end56_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then50.err_unreg_port_crit_edge:               ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unreg_port

if.end56:                                         ; preds = %if.then50.if.end56_crit_edge, %if.end48.if.end56_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp57 = icmp sgt i32 %29, 0
  br i1 %cmp57, label %if.then58, label %if.end56.if.end66_crit_edge

if.end56.if.end66_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then58:                                        ; preds = %if.end56
  %call62 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %29, ptr noundef null, ptr noundef nonnull @hd3ss3220_irq_handler, i32 noundef 8194, ptr noundef nonnull @.str, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then58.if.end66_crit_edge, label %if.then58.err_unreg_port_crit_edge

if.then58.err_unreg_port_crit_edge:               ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unreg_port

if.then58.if.end66_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.end66:                                         ; preds = %if.then58.if.end66_crit_edge, %if.end56.if.end66_crit_edge
  %call67 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -96) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.end66.err_unreg_port_crit_edge, label %if.end70

if.end66.err_unreg_port_crit_edge:                ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unreg_port

if.end70:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  call void @fwnode_handle_put(ptr noundef nonnull %connector.0) #5
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call67) #8
  br label %cleanup

err_unreg_port:                                   ; preds = %if.end66.err_unreg_port_crit_edge, %if.then58.err_unreg_port_crit_edge, %if.then50.err_unreg_port_crit_edge, %if.end44.err_unreg_port_crit_edge
  %ret.0 = phi i32 [ %call46, %if.end44.err_unreg_port_crit_edge ], [ %call52, %if.then50.err_unreg_port_crit_edge ], [ %call62, %if.then58.err_unreg_port_crit_edge ], [ %call67, %if.end66.err_unreg_port_crit_edge ]
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port, align 4
  call void @typec_unregister_port(ptr noundef %31) #5
  br label %err_put_role

err_put_role:                                     ; preds = %err_unreg_port, %if.then41
  %ret.1 = phi i32 [ %21, %if.then41 ], [ %ret.0, %err_unreg_port ]
  %32 = ptrtoint ptr %role_sw30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %role_sw30, align 4
  call void @usb_role_switch_put(ptr noundef %33) #5
  br label %err_put_fwnode

err_put_fwnode:                                   ; preds = %err_put_role, %if.then32
  %ret.2 = phi i32 [ %13, %if.then32 ], [ %ret.1, %err_put_role ]
  call void @fwnode_handle_put(ptr noundef nonnull %connector.0) #5
  br label %cleanup

cleanup:                                          ; preds = %err_put_fwnode, %if.end70, %if.end21.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then6 ], [ %ret.2, %err_put_fwnode ], [ 0, %if.end70 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.else.cleanup_crit_edge ], [ -19, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %typec_cap) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hd3ss3220_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %port = getelementptr inbounds %struct.hd3ss3220, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  tail call void @typec_unregister_port(ptr noundef %3) #5
  %role_sw = getelementptr inbounds %struct.hd3ss3220, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %role_sw, align 4
  tail call void @usb_role_switch_put(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_usb_role_switch_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hd3ss3220_set_role(ptr nocapture noundef readonly %hd3ss3220) unnamed_addr #2 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #5
  %0 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !42
  %regmap.i = getelementptr inbounds %struct.hd3ss3220, ptr %hd3ss3220, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 9, ptr noundef nonnull %reg_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.hd3ss3220_get_attached_state.exit_crit_edge, label %if.end.i

entry.hd3ss3220_get_attached_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %hd3ss3220_get_attached_state.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_val.i, align 4
  %5 = trunc i32 %4 to i8
  %trunc.i = and i8 %5, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %trunc.i)
  %switch.selectcmp.i = icmp eq i8 %trunc.i, -128
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %trunc.i)
  %switch.selectcmp5.i = icmp eq i8 %trunc.i, 64
  br i1 %switch.selectcmp5.i, label %hd3ss3220_get_attached_state.exit.thread, label %if.end.i.hd3ss3220_get_attached_state.exit_crit_edge

if.end.i.hd3ss3220_get_attached_state.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hd3ss3220_get_attached_state.exit

hd3ss3220_get_attached_state.exit.thread:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #5
  %role_sw13 = getelementptr inbounds %struct.hd3ss3220, ptr %hd3ss3220, i32 0, i32 2
  %6 = ptrtoint ptr %role_sw13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %role_sw13, align 4
  %call114 = call i32 @usb_role_switch_set_role(ptr noundef %7, i32 noundef 1) #5
  br label %sw.bb

hd3ss3220_get_attached_state.exit:                ; preds = %if.end.i.hd3ss3220_get_attached_state.exit_crit_edge, %entry.hd3ss3220_get_attached_state.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.select.i, %if.end.i.hd3ss3220_get_attached_state.exit_crit_edge ], [ %call.i, %entry.hd3ss3220_get_attached_state.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #5
  %role_sw = getelementptr inbounds %struct.hd3ss3220, ptr %hd3ss3220, i32 0, i32 2
  %8 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %role_sw, align 4
  %call1 = call i32 @usb_role_switch_set_role(ptr noundef %9, i32 noundef %retval.0.i) #5
  %10 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %hd3ss3220_get_attached_state.exit.sw.epilog_crit_edge [
    i32 0, label %if.then
    i32 1, label %hd3ss3220_get_attached_state.exit.sw.bb_crit_edge
    i32 2, label %sw.bb3
  ]

hd3ss3220_get_attached_state.exit.sw.bb_crit_edge: ; preds = %hd3ss3220_get_attached_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

hd3ss3220_get_attached_state.exit.sw.epilog_crit_edge: ; preds = %hd3ss3220_get_attached_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %hd3ss3220_get_attached_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 10, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sw.epilog

sw.bb:                                            ; preds = %hd3ss3220_get_attached_state.exit.sw.bb_crit_edge, %hd3ss3220_get_attached_state.exit.thread
  %port = getelementptr inbounds %struct.hd3ss3220, ptr %hd3ss3220, i32 0, i32 3
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port, align 4
  call void @typec_set_data_role(ptr noundef %14, i32 noundef 1) #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %hd3ss3220_get_attached_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  %port4 = getelementptr inbounds %struct.hd3ss3220, ptr %hd3ss3220, i32 0, i32 3
  %15 = ptrtoint ptr %port4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port4, align 4
  call void @typec_set_data_role(ptr noundef %16, i32 noundef 0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %if.then, %hd3ss3220_get_attached_state.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hd3ss3220_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %data, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @hd3ss3220_set_role(ptr noundef %1) #5
  %regmap.i = getelementptr inbounds %struct.hd3ss3220, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 9, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %4 = xor i32 %call.i.i, -1
  %call.i.lobit.not.i = lshr i32 %4, 31
  ret i32 %call.i.lobit.not.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hd3ss3220_dr_set(ptr noundef %port, i32 noundef %role) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @typec_get_drvdata(ptr noundef %port) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %role)
  %cmp = icmp eq i32 %role, 1
  %. = select i1 %cmp, i32 1, i32 2
  %.7 = select i1 %cmp, i32 6, i32 2
  %regmap.i = getelementptr inbounds %struct.hd3ss3220, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 10, i32 noundef 6, i32 noundef %.7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %role_sw = getelementptr inbounds %struct.hd3ss3220, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %role_sw, align 4
  %call2 = tail call i32 @usb_role_switch_set_role(ptr noundef %3, i32 noundef %.) #5
  %port3 = getelementptr inbounds %struct.hd3ss3220, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %port3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port3, align 4
  tail call void @typec_set_data_role(ptr noundef %5, i32 noundef %role) #5
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_role_switch_set_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_data_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_hd3ss3220__288_273_hd3ss3220_driver_init6, !1, !"__initcall__kmod_hd3ss3220__288_273_hd3ss3220_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/typec/hd3ss3220.c", i32 273, i32 1}
!2 = !{ptr @__exitcall_hd3ss3220_driver_exit, !1, !"__exitcall_hd3ss3220_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/usb/typec/hd3ss3220.c", i32 275, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/usb/typec/hd3ss3220.c", i32 276, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/usb/typec/hd3ss3220.c", i32 277, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/typec/hd3ss3220.c", i32 266, i32 11}
!12 = !{ptr @hd3ss3220_driver, !13, !"hd3ss3220_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/typec/hd3ss3220.c", i32 264, i32 26}
!14 = !{ptr @hd3ss3220_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/usb/typec/hd3ss3220.c", i32 168, i32 22}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/typec/hd3ss3220.c", i32 175, i32 58}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/typec/hd3ss3220.c", i32 235, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @hd3ss3220_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @hd3ss3220_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @config, !28, !"config", i1 false, i1 false}
!28 = !{!"../drivers/usb/typec/hd3ss3220.c", i32 145, i32 35}
!29 = !{ptr @hd3ss3220_ops, !30, !"hd3ss3220_ops", i1 false, i1 false}
!30 = !{!"../drivers/usb/typec/hd3ss3220.c", i32 98, i32 38}
!31 = !{ptr @dev_ids, !32, !"dev_ids", i1 false, i1 false}
!32 = !{!"../drivers/usb/typec/hd3ss3220.c", i32 258, i32 34}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
