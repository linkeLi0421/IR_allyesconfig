; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pci-thunder-pem.c_pt.bc'
source_filename = "../drivers/pci/controller/pci-thunder-pem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pci_ecam_ops = type { i32, %struct.pci_ops, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.pci_config_window = type { %struct.resource, %struct.resource, i32, ptr, ptr, %union.anon.72, ptr }
%union.anon.72 = type { ptr }
%struct.thunder_pem_pci = type { [3 x i32], ptr }

@__initcall__kmod_pci_thunder_pem__236_477_thunder_pem_driver_init6 = internal global ptr @thunder_pem_driver_init, section ".initcall6.init", align 4
@thunder_pem_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pci_host_common_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @thunder_pem_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci_thunder_pem\00", [16 x i8] zeroinitializer }, align 32
@thunder_pem_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cavium,pci-host-thunder-pem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pci_thunder_pem_ops }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pci_thunder_pem_ops = internal constant { %struct.pci_ecam_ops, [36 x i8] } { %struct.pci_ecam_ops { i32 24, %struct.pci_ops { ptr null, ptr null, ptr @pci_ecam_map_bus, ptr @thunder_pem_config_read, ptr @thunder_pem_config_write }, ptr @thunder_pem_platform_init }, [36 x i8] zeroinitializer }, align 32
@thunder_pem_platform_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 444, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"missing \22reg[1]\22property\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"thunder_pem_platform_init\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/pci/controller/pci-thunder-pem.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@thunder_pem_platform_init._entry_ptr = internal global ptr @thunder_pem_platform_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 64, i64 112, i64 176, i64 180, i64 184, i64 188, i64 192, i64 196, i64 200, i64 204, i64 208]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [14 x i64] [i64 12, i64 64, i64 4, i64 28, i64 68, i64 120, i64 128, i64 136, i64 144, i64 160, i64 260, i64 272, i64 304, i64 352]
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"thunder_pem_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 469, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 471, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"thunder_pem_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 461, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"pci_thunder_pem_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 451, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [44 x i8] c"../drivers/pci/controller/pci-thunder-pem.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 444, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__initcall__kmod_pci_thunder_pem__236_477_thunder_pem_driver_init6, ptr @thunder_pem_platform_init._entry, ptr @thunder_pem_platform_init._entry_ptr, ptr @thunder_pem_driver, ptr @.str, ptr @thunder_pem_of_match, ptr @pci_thunder_pem_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunder_pem_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunder_pem_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_thunder_pem_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunder_pem_platform_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @thunder_pem_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @thunder_pem_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_common_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ecam_map_bus(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thunder_pem_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  %conv = zext i8 %3 to i32
  %busr = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %busr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %busr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp ugt i32 %5, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %end = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp5 = icmp ult i32 %7, %conv
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp11 = icmp eq i32 %5, %conv
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devfn)
  %cmp.not.i = icmp ne i32 %devfn, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %where)
  %cmp1.i = icmp sgt i32 %where, 2047
  %or.cond.i = or i1 %cmp.not.i, %cmp1.i
  br i1 %or.cond.i, label %if.then13.cleanup_crit_edge, label %if.end.i

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then13
  %10 = and i32 %where, -4
  %pem_reg_base.i = getelementptr inbounds %struct.thunder_pem_pci, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %pem_reg_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pem_reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %14 = ashr i32 %where, 31
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #5, !srcloc !28
  %16 = ptrtoint ptr %pem_reg_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pem_reg_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %17, i32 48
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %add.ptr.i76.i = getelementptr i8, ptr %17, i32 52
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %20 = zext i32 %19 to i64
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #5
  %shr.i = lshr exact i64 %21, 32
  %22 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end.i.sw.epilog.i_crit_edge [
    i32 64, label %sw.bb.i
    i32 112, label %sw.bb6.i
    i32 176, label %sw.bb11.i
    i32 180, label %sw.bb25.i
    i32 184, label %sw.bb26.i
    i32 188, label %sw.bb27.i
    i32 192, label %sw.bb28.i
    i32 196, label %sw.bb29.i
    i32 200, label %sw.bb30.i
    i32 204, label %sw.bb32.i
    i32 208, label %sw.bb36.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %and5.i = and i64 %shr.i, 4294902015
  %or.i = or i64 %and5.i, 28672
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = and i64 %21, 4467570830351532032
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool.not.i = icmp eq i64 %23, 0
  %or9.i = or i64 %shr.i, 67108864
  %spec.select.i = select i1 %tobool.not.i, i64 %or9.i, i64 %shr.i
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end.i
  %and12.i = and i64 %shr.i, 3221225727
  %24 = ptrtoint ptr %pem_reg_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pem_reg_base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %25, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 1879048192) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %add.ptr.i77.i = getelementptr i8, ptr %25, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 0) #5, !srcloc !28
  %26 = ptrtoint ptr %pem_reg_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pem_reg_base.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %27, i32 48
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %add.ptr.i78.i = getelementptr i8, ptr %27, i32 52
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %30 = and i32 %29, 62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool20.not.i = icmp eq i32 %30, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #7
  %or22.i = or i64 %and12.i, 244736
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #7
  %or23.i = or i64 %and12.i, 113664
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb27.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb29.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb30.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %9, align 4
  %conv31.i = zext i32 %32 to i64
  br label %sw.epilog.i

sw.bb32.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx34.i = getelementptr [3 x i32], ptr %9, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx34.i, align 4
  %conv35.i = zext i32 %34 to i64
  br label %sw.epilog.i

sw.bb36.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx38.i = getelementptr [3 x i32], ptr %9, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx38.i, align 4
  %conv39.i = zext i32 %36 to i64
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb36.i, %sw.bb32.i, %sw.bb30.i, %sw.bb29.i, %sw.bb28.i, %sw.bb27.i, %sw.bb26.i, %sw.bb25.i, %if.else.i, %if.then21.i, %sw.bb6.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %read_val.0.i = phi i64 [ %shr.i, %if.end.i.sw.epilog.i_crit_edge ], [ %conv39.i, %sw.bb36.i ], [ %conv35.i, %sw.bb32.i ], [ %conv31.i, %sw.bb30.i ], [ 2164195331, %sw.bb29.i ], [ 0, %sw.bb28.i ], [ 65556, %sw.bb27.i ], [ 983040, %sw.bb26.i ], [ 0, %sw.bb25.i ], [ %or23.i, %if.else.i ], [ %or22.i, %if.then21.i ], [ %or.i, %sw.bb.i ], [ %spec.select.i, %sw.bb6.i ]
  %and40.i = shl i32 %where, 3
  %mul.i = and i32 %and40.i, 24
  %sh_prom.i = zext i32 %mul.i to i64
  %shr41.i = lshr i64 %read_val.0.i, %sh_prom.i
  %extract.t.i = trunc i64 %shr41.i to i32
  %37 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %size, label %sw.epilog.i.sw.epilog47.i_crit_edge [
    i32 1, label %sw.bb42.i
    i32 2, label %sw.bb44.i
  ]

sw.epilog.i.sw.epilog47.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog47.i

sw.bb42.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t75.i = and i32 %extract.t.i, 255
  br label %sw.epilog47.i

sw.bb44.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t74.i = and i32 %extract.t.i, 65535
  br label %sw.epilog47.i

sw.epilog47.i:                                    ; preds = %sw.bb44.i, %sw.bb42.i, %sw.epilog.i.sw.epilog47.i_crit_edge
  %read_val.1.off0.i = phi i32 [ %extract.t.i, %sw.epilog.i.sw.epilog47.i_crit_edge ], [ %extract.t74.i, %sw.bb44.i ], [ %extract.t75.i, %sw.bb42.i ]
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %read_val.1.off0.i, ptr %val, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 @pci_generic_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %sw.epilog47.i, %if.then13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end14 ], [ 134, %lor.lhs.false.cleanup_crit_edge ], [ 134, %entry.cleanup_crit_edge ], [ 0, %sw.epilog47.i ], [ 134, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thunder_pem_config_write(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  %conv = zext i8 %3 to i32
  %busr = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %busr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %busr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp ugt i32 %5, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %end = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp5 = icmp ult i32 %7, %conv
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp11 = icmp eq i32 %5, %conv
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 4
  %conv.i = sext i32 %where to i64
  %and.i = and i64 %conv.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devfn)
  %cmp.not.i = icmp ne i32 %devfn, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %where)
  %cmp2.i = icmp sgt i32 %where, 2047
  %or.cond.i = or i1 %cmp.not.i, %cmp2.i
  br i1 %or.cond.i, label %if.then13.cleanup_crit_edge, label %if.end.i

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then13
  %10 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %size, label %if.end.i.if.end42.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb14.i
  ]

if.end.i.if.end42.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %pem_reg_base.i = getelementptr inbounds %struct.thunder_pem_pci, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %pem_reg_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pem_reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %conv.i.i = trunc i64 %and.i to i32
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %conv3.i.i = ashr i32 %where, 31
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #5
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %14) #5, !srcloc !28
  %15 = ptrtoint ptr %pem_reg_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pem_reg_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %16, i32 48
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %add.ptr.i84.i = getelementptr i8, ptr %16, i32 52
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %and6.i = shl i32 %where, 3
  %mul.i = and i32 %and6.i, 24
  %shl.i = shl nuw i32 255, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and9.i = and i32 %val, 255
  %shl12.i = shl nuw i32 %and9.i, %mul.i
  %conv13.i = and i32 %19, %neg.i
  %or.i = or i32 %conv13.i, %shl12.i
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %pem_reg_base15.i = getelementptr inbounds %struct.thunder_pem_pci, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %pem_reg_base15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pem_reg_base15.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %21, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %conv.i85.i = trunc i64 %and.i to i32
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv.i85.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %22) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %conv3.i87.i = ashr i32 %where, 31
  %23 = tail call i32 @llvm.bswap.i32(i32 %conv3.i87.i) #5
  %add.ptr.i88.i = getelementptr i8, ptr %21, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i, i32 %23) #5, !srcloc !28
  %24 = ptrtoint ptr %pem_reg_base15.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pem_reg_base15.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %25, i32 48
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %add.ptr.i89.i = getelementptr i8, ptr %25, i32 52
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  %and21.i = shl i32 %where, 3
  %mul22.i = and i32 %and21.i, 24
  %shl23.i = shl i32 65535, %mul22.i
  %neg24.i = xor i32 %shl23.i, -1
  %and27.i = and i32 %val, 65535
  %shl30.i = shl i32 %and27.i, %mul22.i
  %conv31.i = and i32 %28, %neg24.i
  %or32.i = or i32 %conv31.i, %shl30.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb14.i, %sw.bb.i
  %val.addr.0.i = phi i32 [ %or32.i, %sw.bb14.i ], [ %or.i, %sw.bb.i ]
  %mask.0.i = phi i32 [ %neg24.i, %sw.bb14.i ], [ %neg.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.0.i)
  %tobool.not.i = icmp eq i32 %mask.0.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.if.end42.i_crit_edge, label %if.then33.i

sw.epilog.i.if.end42.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.then33.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_switch(i64 %conv.i, ptr @__sancov_gen_cov_switch_values.8)
  switch i64 %conv.i, label %if.then33.i.if.end42.i_crit_edge [
    i64 4, label %if.then33.i.thunder_pem_bridge_w1c_bits.exit.thread.i_crit_edge
    i64 28, label %if.then33.i.thunder_pem_bridge_w1c_bits.exit.thread.i_crit_edge27
    i64 68, label %sw.bb1.i.i
    i64 120, label %if.then33.i.sw.bb2.i.i_crit_edge
    i64 128, label %if.then33.i.sw.bb2.i.i_crit_edge28
    i64 136, label %if.then33.i.sw.bb2.i.i_crit_edge29
    i64 144, label %if.then33.i.sw.bb2.i.i_crit_edge30
    i64 160, label %if.then33.i.sw.bb2.i.i_crit_edge31
    i64 260, label %if.then33.i.sw.bb3.i.i_crit_edge
    i64 272, label %if.then33.i.sw.bb3.i.i_crit_edge32
    i64 304, label %if.then33.i.sw.bb3.i.i_crit_edge33
    i64 352, label %if.then33.i.sw.bb3.i.i_crit_edge34
  ]

if.then33.i.sw.bb3.i.i_crit_edge34:               ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i

if.then33.i.sw.bb3.i.i_crit_edge33:               ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i

if.then33.i.sw.bb3.i.i_crit_edge32:               ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i

if.then33.i.sw.bb3.i.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i

if.then33.i.sw.bb2.i.i_crit_edge31:               ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i.i

if.then33.i.sw.bb2.i.i_crit_edge30:               ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i.i

if.then33.i.sw.bb2.i.i_crit_edge29:               ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i.i

if.then33.i.sw.bb2.i.i_crit_edge28:               ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i.i

if.then33.i.sw.bb2.i.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i.i

if.then33.i.thunder_pem_bridge_w1c_bits.exit.thread.i_crit_edge27: ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %thunder_pem_bridge_w1c_bits.exit.thread.i

if.then33.i.thunder_pem_bridge_w1c_bits.exit.thread.i_crit_edge: ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %thunder_pem_bridge_w1c_bits.exit.thread.i

if.then33.i.if.end42.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

sw.bb1.i.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %thunder_pem_bridge_w1c_bits.exit.thread.i

sw.bb2.i.i:                                       ; preds = %if.then33.i.sw.bb2.i.i_crit_edge, %if.then33.i.sw.bb2.i.i_crit_edge28, %if.then33.i.sw.bb2.i.i_crit_edge29, %if.then33.i.sw.bb2.i.i_crit_edge30, %if.then33.i.sw.bb2.i.i_crit_edge31
  br label %thunder_pem_bridge_w1c_bits.exit.thread.i

sw.bb3.i.i:                                       ; preds = %if.then33.i.sw.bb3.i.i_crit_edge, %if.then33.i.sw.bb3.i.i_crit_edge32, %if.then33.i.sw.bb3.i.i_crit_edge33, %if.then33.i.sw.bb3.i.i_crit_edge34
  br label %thunder_pem_bridge_w1c_bits.exit.thread.i

thunder_pem_bridge_w1c_bits.exit.thread.i:        ; preds = %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then33.i.thunder_pem_bridge_w1c_bits.exit.thread.i_crit_edge, %if.then33.i.thunder_pem_bridge_w1c_bits.exit.thread.i_crit_edge27
  %w1c_bits.0.i.ph.i = phi i32 [ -512, %sw.bb1.i.i ], [ -65536, %sw.bb2.i.i ], [ -1, %sw.bb3.i.i ], [ -16777216, %if.then33.i.thunder_pem_bridge_w1c_bits.exit.thread.i_crit_edge ], [ -16777216, %if.then33.i.thunder_pem_bridge_w1c_bits.exit.thread.i_crit_edge27 ]
  %and3899.i = and i32 %w1c_bits.0.i.ph.i, %mask.0.i
  %neg39100.i = xor i32 %and3899.i, -1
  %and40101.i = and i32 %val.addr.0.i, %neg39100.i
  br label %if.end42.i

if.end42.i:                                       ; preds = %thunder_pem_bridge_w1c_bits.exit.thread.i, %if.then33.i.if.end42.i_crit_edge, %sw.epilog.i.if.end42.i_crit_edge, %if.end.i.if.end42.i_crit_edge
  %val.addr.2.i = phi i32 [ %val.addr.0.i, %sw.epilog.i.if.end42.i_crit_edge ], [ %and40101.i, %thunder_pem_bridge_w1c_bits.exit.thread.i ], [ %val, %if.end.i.if.end42.i_crit_edge ], [ %val.addr.0.i, %if.then33.i.if.end42.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 36, i64 %and.i)
  %switch.selectcmp.i.i = icmp eq i64 %and.i, 36
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 65537, i32 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 28, i64 %and.i)
  %switch.selectcmp2.i.i = icmp eq i64 %and.i, 28
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 257, i32 %switch.select.i.i
  %or44.i = or i32 %val.addr.2.i, %switch.select3.i.i
  %conv45.i = zext i32 %or44.i to i64
  %shl46.i = shl nuw i64 %conv45.i, 32
  %or47.i = or i64 %shl46.i, %conv.i
  %pem_reg_base48.i = getelementptr inbounds %struct.thunder_pem_pci, ptr %9, i32 0, i32 1
  %29 = ptrtoint ptr %pem_reg_base48.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pem_reg_base48.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %30, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %conv.i90.i = trunc i64 %and.i to i32
  %31 = tail call i32 @llvm.bswap.i32(i32 %conv.i90.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 %31) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %shr.i91.i = lshr i64 %or47.i, 32
  %conv3.i92.i = trunc i64 %shr.i91.i to i32
  %32 = tail call i32 @llvm.bswap.i32(i32 %conv3.i92.i) #5
  %add.ptr.i93.i = getelementptr i8, ptr %30, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i, i32 %32) #5, !srcloc !28
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 @pci_generic_config_write(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end42.i, %if.then13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end14 ], [ 134, %lor.lhs.false.cleanup_crit_edge ], [ 134, %entry.cleanup_crit_edge ], [ 0, %if.end42.i ], [ 134, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thunder_pem_platform_init(ptr nocapture noundef %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.pci_config_window, ptr %cfg, i32 0, i32 6
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 1) #5
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end3.cleanup_crit_edge, label %if.end.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 4
  %call1.i = tail call ptr @devm_ioremap(ptr noundef %1, i32 noundef %5, i32 noundef 65536) #5
  %pem_reg_base.i = getelementptr inbounds %struct.thunder_pem_pci, ptr %call.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %pem_reg_base.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1.i, ptr %pem_reg_base.i, align 4
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 4
  %add.i = add i32 %8, 15728640
  %or.i = or i32 %add.i, 2
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %call.i.i, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 %11, %add.i
  %and8.i = and i32 %sub.i, -4
  %arrayidx10.i = getelementptr [3 x i32], ptr %call.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and8.i, ptr %arrayidx10.i, align 4
  %arrayidx13.i = getelementptr [3 x i32], ptr %call.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx13.i, align 4
  %priv.i = getelementptr inbounds %struct.pci_config_window, ptr %cfg, i32 0, i32 3
  %14 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %if.end.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end5.i ], [ -12, %if.end3.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_pci_thunder_pem__236_477_thunder_pem_driver_init6, !1, !"__initcall__kmod_pci_thunder_pem__236_477_thunder_pem_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pci-thunder-pem.c", i32 477, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pci-thunder-pem.c", i32 471, i32 11}
!4 = !{ptr @thunder_pem_driver, !5, !"thunder_pem_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pci-thunder-pem.c", i32 469, i32 31}
!6 = !{ptr @thunder_pem_of_match, !7, !"thunder_pem_of_match", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pci-thunder-pem.c", i32 461, i32 34}
!8 = !{ptr @pci_thunder_pem_ops, !9, !"pci_thunder_pem_ops", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/pci-thunder-pem.c", i32 451, i32 34}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/pci-thunder-pem.c", i32 444, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @thunder_pem_platform_init._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @thunder_pem_platform_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2155059874}
!28 = !{i64 5017726}
!29 = !{i64 2155060247}
!30 = !{i64 5018144}
!31 = !{i64 2155059066}
!32 = !{i64 2155059504}
