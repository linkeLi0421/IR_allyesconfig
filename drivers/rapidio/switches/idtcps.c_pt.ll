; ModuleID = '/llk/IR_all_yes/drivers/rapidio/switches/idtcps.c_pt.bc'
source_filename = "../drivers/rapidio/switches/idtcps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rio_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rio_device_id = type { i16, i16, i16, i16 }
%struct.atomic_t = type { i32 }
%struct.rio_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rio_dev = type { %struct.list_head, %struct.list_head, ptr, i8, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.device, [16 x %struct.resource], ptr, i16, i8, ptr, %struct.atomic_t, [0 x %struct.rio_switch] }
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
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rio_switch = type { %struct.list_head, ptr, i32, ptr, %struct.spinlock, [0 x ptr] }
%struct.rio_net = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i8, %struct.device, ptr, ptr }

@idtcps_driver = internal global { %struct.rio_driver, [44 x i8] } { %struct.rio_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @idtcps_id_table, ptr @idtcps_probe, ptr @idtcps_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_idtcps__231_194_idtcps_init6 = internal global ptr @idtcps_init, section ".initcall6.init", align 4
@__exitcall_idtcps_exit = internal global ptr @idtcps_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description232 = internal constant [69 x i8] c"idtcps.description=IDT CPS Gen.1 Serial RapidIO switch family driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [49 x i8] c"idtcps.author=Integrated Device Technology, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [44 x i8] c"idtcps.file=drivers/rapidio/switches/idtcps\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [19 x i8] c"idtcps.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"idtcps\00", [25 x i8] zeroinitializer }, align 32
@idtcps_id_table = internal constant { [7 x %struct.rio_device_id], [40 x i8] } { [7 x %struct.rio_device_id] [%struct.rio_device_id { i16 863, i16 56, i16 -1, i16 -1 }, %struct.rio_device_id { i16 860, i16 56, i16 -1, i16 -1 }, %struct.rio_device_id { i16 862, i16 56, i16 -1, i16 -1 }, %struct.rio_device_id { i16 861, i16 56, i16 -1, i16 -1 }, %struct.rio_device_id { i16 859, i16 56, i16 -1, i16 -1 }, %struct.rio_device_id { i16 784, i16 56, i16 -1, i16 -1 }, %struct.rio_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@idtcps_probe.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 32, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idtcps_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/rapidio/switches/idtcps.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RIO: %s for %s\0A\00", [16 x i8] zeroinitializer }, align 32
@idtcps_switch_ops = internal global { %struct.rio_switch_ops, [32 x i8] } { %struct.rio_switch_ops { ptr null, ptr @idtcps_route_add_entry, ptr @idtcps_route_get_entry, ptr @idtcps_route_clr_table, ptr @idtcps_set_domain, ptr @idtcps_get_domain, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@idtcps_remove.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 39, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idtcps_remove\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"idtcps_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 177, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 178, i32 10 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"idtcps_id_table\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 167, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 131, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"idtcps_switch_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 118, i32 30 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [37 x i8] c"../drivers/rapidio/switches/idtcps.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 157, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_idtcps_exit, ptr @__initcall__kmod_idtcps__231_194_idtcps_init6, ptr @idtcps_exit, ptr @idtcps_driver, ptr @.str, ptr @idtcps_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @idtcps_switch_ops, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcps_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcps_id_table to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtcps_switch_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @idtcps_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rio_unregister_driver(ptr noundef nonnull @idtcps_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcps_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rio_register_driver(ptr noundef nonnull @idtcps_driver) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcps_probe(ptr noundef %rdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtcps_probe.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtcps_probe, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !36

if.then:                                          ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.rio_name.exit_crit_edge

if.then.rio_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %rio_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i, %if.then.rio_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.then.rio_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtcps_probe.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i) #4
  br label %do.end

do.end:                                           ; preds = %rio_name.exit, %entry
  %lock = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 1, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %ops = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 1, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end12, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end12:                                         ; preds = %do.end
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @idtcps_switch_ops, ptr %ops, align 8
  %do_enum = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 3
  %7 = ptrtoint ptr %do_enum to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %do_enum, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool16.not = icmp eq i8 %8, 0
  br i1 %tobool16.not, label %if.end12.return_crit_edge, label %if.then17

if.end12.return_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %phys_efptr = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 16
  %9 = ptrtoint ptr %phys_efptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phys_efptr, align 4
  %add = add i32 %10, 32
  %net.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 2
  %11 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i, align 8
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hport.i, align 8
  %destid.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 24
  %15 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %destid.i, align 4
  %hopcount.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 25
  %17 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hopcount.i, align 2
  %call.i = tail call i32 @rio_mport_write_config_32(ptr noundef %14, i16 noundef zeroext %16, i8 noundef zeroext %18, i32 noundef %add, i32 noundef 36352) #4
  %19 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net.i, align 8
  %hport.i34 = getelementptr inbounds %struct.rio_net, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %hport.i34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hport.i34, align 8
  %23 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %destid.i, align 4
  %25 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hopcount.i, align 2
  %call.i37 = tail call i32 @rio_mport_write_config_32(ptr noundef %22, i16 noundef zeroext %24, i8 noundef zeroext %26, i32 noundef 120, i32 noundef 223) #4
  br label %return

return:                                           ; preds = %if.then17, %if.end12.return_crit_edge, %do.end.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.return_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end12.return_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idtcps_remove(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtcps_remove.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtcps_remove, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !36

if.then:                                          ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.rio_name.exit_crit_edge

if.then.rio_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %rio_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i, %if.then.rio_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.then.rio_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtcps_remove.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i.i) #4
  br label %do.end

do.end:                                           ; preds = %rio_name.exit, %entry
  %lock = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 1, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %ops = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 1, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %cmp.not = icmp eq ptr %5, @idtcps_switch_ops
  br i1 %cmp.not, label %if.end11, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ops, align 8
  br label %return

return:                                           ; preds = %if.end11, %do.end.return_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcps_route_add_entry(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i16 noundef zeroext %table, i16 noundef zeroext %route_destid, i8 noundef zeroext %route_port) #2 align 64 {
entry:
  %result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #4
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %result, align 4, !annotation !38
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %table)
  %cmp3 = icmp eq i16 %table, 255
  br i1 %cmp3, label %if.then5, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %route_port)
  %cmp = icmp eq i8 %route_port, -1
  %spec.store.select = select i1 %cmp, i8 -34, i8 %route_port
  %conv6 = zext i16 %route_destid to i32
  %call = tail call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 112, i32 noundef %conv6) #4
  %call7 = call i32 @rio_mport_read_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 116, ptr noundef nonnull %result) #4
  %1 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %result, align 4
  %and = and i32 %2, -256
  %conv8 = zext i8 %spec.store.select to i32
  %or = or i32 %and, %conv8
  store i32 %or, ptr %result, align 4
  %call9 = call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 116, i32 noundef %or) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcps_route_get_entry(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i16 noundef zeroext %table, i16 noundef zeroext %route_destid, ptr nocapture noundef writeonly %route_port) #2 align 64 {
entry:
  %result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #4
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %result, align 4, !annotation !38
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %table)
  %cmp = icmp eq i16 %table, 255
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv2 = zext i16 %route_destid to i32
  %call = tail call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 112, i32 noundef %conv2) #4
  %call3 = call i32 @rio_mport_read_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 116, ptr noundef nonnull %result) #4
  %1 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %result, align 4
  %3 = and i32 %2, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 222, i32 %3)
  %switch = icmp eq i32 %3, 222
  %conv4 = trunc i32 %2 to i8
  %.sink = select i1 %switch, i8 -1, i8 %conv4
  %4 = ptrtoint ptr %route_port to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink, ptr %route_port, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then, %entry.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcps_route_clr_table(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i16 noundef zeroext %table) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %table)
  %cmp = icmp eq i16 %table, 255
  br i1 %cmp, label %entry.for.body_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ -2147483648, %entry.for.body_crit_edge ]
  %call = tail call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 112, i32 noundef %i.010) #4
  %call4 = tail call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 116, i32 noundef -555819298) #4
  %add = add nuw nsw i32 %i.010, 4
  %cmp2 = icmp ult i32 %i.010, -2147483396
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcps_set_domain(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i8 noundef zeroext %sw_domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %sw_domain to i32
  %call = tail call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 15859744, i32 noundef %conv) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtcps_get_domain(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, ptr nocapture noundef writeonly %sw_domain) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #4
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !38
  %call = call i32 @rio_mport_read_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 15859744, ptr noundef nonnull %regval) #4
  %1 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %regval, align 4
  %conv = trunc i32 %2 to i8
  %3 = ptrtoint ptr %sw_domain to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %sw_domain, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_write_config_32(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_read_config_32(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__initcall__kmod_idtcps__231_194_idtcps_init6, !1, !"__initcall__kmod_idtcps__231_194_idtcps_init6", i1 false, i1 false}
!1 = !{!"../drivers/rapidio/switches/idtcps.c", i32 194, i32 1}
!2 = !{ptr @__exitcall_idtcps_exit, !3, !"__exitcall_idtcps_exit", i1 false, i1 false}
!3 = !{!"../drivers/rapidio/switches/idtcps.c", i32 195, i32 1}
!4 = !{ptr @__UNIQUE_ID_description232, !5, !"__UNIQUE_ID_description232", i1 false, i1 false}
!5 = !{!"../drivers/rapidio/switches/idtcps.c", i32 197, i32 1}
!6 = !{ptr @__UNIQUE_ID_author233, !7, !"__UNIQUE_ID_author233", i1 false, i1 false}
!7 = !{!"../drivers/rapidio/switches/idtcps.c", i32 198, i32 1}
!8 = !{ptr @__UNIQUE_ID_file234, !9, !"__UNIQUE_ID_file234", i1 false, i1 false}
!9 = !{!"../drivers/rapidio/switches/idtcps.c", i32 199, i32 1}
!10 = !{ptr @__UNIQUE_ID_license235, !9, !"__UNIQUE_ID_license235", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/rapidio/switches/idtcps.c", i32 178, i32 10}
!13 = !{ptr @idtcps_driver, !14, !"idtcps_driver", i1 false, i1 false}
!14 = !{!"../drivers/rapidio/switches/idtcps.c", i32 177, i32 26}
!15 = !{ptr @idtcps_id_table, !16, !"idtcps_id_table", i1 false, i1 false}
!16 = !{!"../drivers/rapidio/switches/idtcps.c", i32 167, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rapidio/switches/idtcps.c", i32 131, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @idtcps_probe.__UNIQUE_ID_ddebug229, !18, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!22 = !{ptr @idtcps_switch_ops, !23, !"idtcps_switch_ops", i1 false, i1 false}
!23 = !{!"../drivers/rapidio/switches/idtcps.c", i32 118, i32 30}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rapidio/switches/idtcps.c", i32 157, i32 2}
!26 = !{ptr @idtcps_remove.__UNIQUE_ID_ddebug230, !25, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2148441085, i64 2148441090, i64 2148441103, i64 2148441147, i64 2148441181, i64 2148441202}
!37 = !{i8 0, i8 2}
!38 = !{!"auto-init"}
