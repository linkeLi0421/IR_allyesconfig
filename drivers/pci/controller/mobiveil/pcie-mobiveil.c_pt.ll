; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/mobiveil/pcie-mobiveil.c_pt.bc'
source_filename = "../drivers/pci/controller/mobiveil/pcie-mobiveil.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mobiveil_pcie = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, %struct.mobiveil_root_port }
%struct.mobiveil_root_port = type { ptr, ptr, ptr, i32, %struct.raw_spinlock, ptr, %struct.mobiveil_msi, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mobiveil_msi = type { %struct.mutex, ptr, ptr, i32, i32, [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@mobiveil_csr_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"read CSR address failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mobiveil_csr_read\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/pci/controller/mobiveil/pcie-mobiveil.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mobiveil_csr_read._entry_ptr = internal global ptr @mobiveil_csr_read._entry, section ".printk_index", align 4
@mobiveil_csr_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"write CSR address failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mobiveil_csr_write\00", [45 x i8] zeroinitializer }, align 32
@mobiveil_csr_write._entry_ptr = internal global ptr @mobiveil_csr_write._entry, section ".printk_index", align 4
@program_ib_windows._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ERROR: max inbound windows reached !\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"program_ib_windows\00", [45 x i8] zeroinitializer }, align 32
@program_ib_windows._entry_ptr = internal global ptr @program_ib_windows._entry, section ".printk_index", align 4
@program_ob_windows._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 181, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ERROR: max outbound windows reached !\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"program_ob_windows\00", [45 x i8] zeroinitializer }, align 32
@program_ob_windows._entry_ptr = internal global ptr @program_ob_windows._entry, section ".printk_index", align 4
@mobiveil_bringup_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 228, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"link never came up\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mobiveil_bringup_link\00", [42 x i8] zeroinitializer }, align 32
@mobiveil_bringup_link._entry_ptr = internal global ptr @mobiveil_bringup_link._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 109, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 124, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 143, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 180, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [51 x i8] c"../drivers/pci/controller/mobiveil/pcie-mobiveil.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 228, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @mobiveil_bringup_link._entry, ptr @mobiveil_bringup_link._entry_ptr, ptr @mobiveil_csr_read._entry, ptr @mobiveil_csr_read._entry_ptr, ptr @mobiveil_csr_write._entry, ptr @mobiveil_csr_write._entry_ptr, ptr @program_ib_windows._entry, ptr @program_ib_windows._entry_ptr, ptr @program_ob_windows._entry, ptr @program_ob_windows._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_csr_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_csr_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @program_ib_windows._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @program_ob_windows._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mobiveil_bringup_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mobiveil_csr_read(ptr nocapture noundef readonly %pcie, i32 noundef %off, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %off)
  %cmp.i = icmp ult i32 %off, 3072
  %csr_axi_slave_base.i.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2056
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  %3 = and i32 %2, -14681857
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %3) #4, !srcloc !38
  %6 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %off
  br label %mobiveil_pcie_comp_addr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  %9 = shl i32 %off, 3
  %shl.i.i = and i32 %9, 516096
  %or.i.i = or i32 %8, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #4
  %11 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %add.ptr4.i12.i = getelementptr i8, ptr %12, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i12.i, i32 %10) #4, !srcloc !38
  %13 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %and2.i = and i32 %off, 1023
  %or.i = or i32 %and2.i, 3072
  %add.ptr3.i = getelementptr i8, ptr %14, i32 %or.i
  br label %mobiveil_pcie_comp_addr.exit

mobiveil_pcie_comp_addr.exit:                     ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr3.i, %if.end.i ]
  %15 = ptrtoint ptr %retval.0.i to i32
  %sub.i = add i32 %size, -1
  %and.i = and i32 %sub.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i3, label %mobiveil_pcie_comp_addr.exit.do.end_crit_edge

mobiveil_pcie_comp_addr.exit.do.end_crit_edge:    ; preds = %mobiveil_pcie_comp_addr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.i3:                                        ; preds = %mobiveil_pcie_comp_addr.exit
  %16 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %if.end.i3.do.end_crit_edge [
    i32 4, label %sw.bb.i
    i32 2, label %sw.bb2.i
    i32 1, label %sw.bb8.i
  ]

if.end.i3.do.end_crit_edge:                       ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

sw.bb.i:                                          ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #6
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %retval.0.i) #4, !srcloc !39
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  br label %if.end

sw.bb2.i:                                         ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #6
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %retval.0.i) #4, !srcloc !41
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  %conv.i = zext i16 %20 to i32
  br label %if.end

sw.bb8.i:                                         ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #6
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %retval.0.i) #4, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  %conv14.i = zext i8 %21 to i32
  br label %if.end

do.end:                                           ; preds = %if.end.i3.do.end_crit_edge, %mobiveil_pcie_comp_addr.exit.do.end_crit_edge
  %22 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcie, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %.sink.i8 = phi i32 [ 0, %do.end ], [ %conv14.i, %sw.bb8.i ], [ %conv.i, %sw.bb2.i ], [ %18, %sw.bb.i ]
  ret i32 %.sink.i8
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mobiveil_csr_write(ptr nocapture noundef readonly %pcie, i32 noundef %val, i32 noundef %off, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %off)
  %cmp.i = icmp ult i32 %off, 3072
  %csr_axi_slave_base.i.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2056
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  %3 = and i32 %2, -14681857
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %3) #4, !srcloc !38
  %6 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %off
  br label %mobiveil_pcie_comp_addr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  %9 = shl i32 %off, 3
  %shl.i.i = and i32 %9, 516096
  %or.i.i = or i32 %8, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #4
  %11 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %add.ptr4.i12.i = getelementptr i8, ptr %12, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i12.i, i32 %10) #4, !srcloc !38
  %13 = ptrtoint ptr %csr_axi_slave_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr_axi_slave_base.i.i, align 4
  %and2.i = and i32 %off, 1023
  %or.i = or i32 %and2.i, 3072
  %add.ptr3.i = getelementptr i8, ptr %14, i32 %or.i
  br label %mobiveil_pcie_comp_addr.exit

mobiveil_pcie_comp_addr.exit:                     ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr3.i, %if.end.i ]
  %15 = ptrtoint ptr %retval.0.i to i32
  %sub.i = add i32 %size, -1
  %and.i = and i32 %sub.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i3, label %mobiveil_pcie_comp_addr.exit.do.end_crit_edge

mobiveil_pcie_comp_addr.exit.do.end_crit_edge:    ; preds = %mobiveil_pcie_comp_addr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.i3:                                        ; preds = %mobiveil_pcie_comp_addr.exit
  %16 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %size, label %if.end.i3.do.end_crit_edge [
    i32 4, label %do.body.i
    i32 2, label %do.body2.i
    i32 1, label %do.body5.i
  ]

if.end.i3.do.end_crit_edge:                       ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.body.i:                                        ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %17 = tail call i32 @llvm.bswap.i32(i32 %val) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %retval.0.i, i32 %17) #4, !srcloc !38
  br label %if.end

do.body2.i:                                       ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %conv.i = trunc i32 %val to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %retval.0.i, i16 %18) #4, !srcloc !47
  br label %if.end

do.body5.i:                                       ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %conv7.i = trunc i32 %val to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %retval.0.i, i8 %conv7.i) #4, !srcloc !49
  br label %if.end

do.end:                                           ; preds = %if.end.i3.do.end_crit_edge, %mobiveil_pcie_comp_addr.exit.do.end_crit_edge
  %19 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcie, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body5.i, %do.body2.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mobiveil_pcie_link_up(ptr noundef %pcie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 8
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef %pcie) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3 = icmp ne i32 %call, 0
  br label %return

if.end:                                           ; preds = %entry
  %csr_axi_slave_base.i.i.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 1
  %4 = ptrtoint ptr %csr_axi_slave_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_axi_slave_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 2056
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  %7 = and i32 %6, -14681857
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %csr_axi_slave_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr_axi_slave_base.i.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %9, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %7) #4, !srcloc !38
  %10 = ptrtoint ptr %csr_axi_slave_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr_axi_slave_base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 1028
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  %and.i.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i3.i, label %do.end.i

if.end.i3.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  %14 = and i32 %13, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 754974720, i32 %14)
  %phi.cmp = icmp eq i32 %14, 754974720
  br label %return

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcie, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str) #7
  br label %return

return:                                           ; preds = %do.end.i, %if.end.i3.i, %if.then
  %retval.0 = phi i1 [ %tobool3, %if.then ], [ false, %do.end.i ], [ %phi.cmp, %if.end.i3.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @program_ib_windows(ptr nocapture noundef %pcie, i32 noundef %win_num, i64 noundef %cpu_addr, i64 noundef %pci_addr, i32 noundef %type, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ppio_wins = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 5
  %0 = ptrtoint ptr %ppio_wins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ppio_wins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %win_num)
  %cmp.not = icmp sgt i32 %1, %win_num
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %neg = sub i64 0, %size
  %mul = shl i32 %win_num, 4
  %add = add i32 %mul, 19360
  %call.i = tail call i32 @mobiveil_csr_read(ptr noundef %pcie, i32 noundef %add, i32 noundef 4) #4
  %and = and i32 %call.i, 1016
  %shl = shl i32 %type, 1
  %conv = trunc i64 %neg to i32
  %and2 = and i32 %conv, -1024
  %or = or i32 %shl, %and2
  %or3 = or i32 %or, %and
  %or4 = or i32 %or3, 1
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %or4, i32 noundef %add, i32 noundef 4) #4
  %shr = lshr i64 %neg, 32
  %conv8 = trunc i64 %shr to i32
  %mul9 = shl i32 %win_num, 2
  %add10 = add i32 %mul9, 48880
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %conv8, i32 noundef %add10, i32 noundef 4) #4
  %conv12 = trunc i64 %cpu_addr to i32
  %add14 = add i32 %mul, 19364
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %conv12, i32 noundef %add14, i32 noundef 4) #4
  %shr15 = lshr i64 %cpu_addr, 32
  %conv17 = trunc i64 %shr15 to i32
  %add19 = add i32 %mul9, 46240
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %conv17, i32 noundef %add19, i32 noundef 4) #4
  %conv21 = trunc i64 %pci_addr to i32
  %add23 = add i32 %mul, 19368
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %conv21, i32 noundef %add23, i32 noundef 4) #4
  %shr24 = lshr i64 %pci_addr, 32
  %conv26 = trunc i64 %shr24 to i32
  %add28 = add i32 %mul, 19372
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %conv26, i32 noundef %add28, i32 noundef 4) #4
  %ib_wins_configured = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 7
  %4 = ptrtoint ptr %ib_wins_configured to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ib_wins_configured, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ib_wins_configured, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @program_ob_windows(ptr nocapture noundef %pcie, i32 noundef %win_num, i64 noundef %cpu_addr, i64 noundef %pci_addr, i32 noundef %type, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %apio_wins = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 4
  %0 = ptrtoint ptr %apio_wins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %apio_wins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %win_num)
  %cmp.not = icmp sgt i32 %1, %win_num
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %neg = sub i64 0, %size
  %mul = shl i32 %win_num, 4
  %add = add i32 %mul, 2976
  %call.i = tail call i32 @mobiveil_csr_read(ptr noundef %pcie, i32 noundef %add, i32 noundef 4) #4
  %and = and i32 %call.i, 1016
  %shl = shl i32 %type, 1
  %conv = trunc i64 %neg to i32
  %and2 = and i32 %conv, -1024
  %or = or i32 %shl, %and2
  %or3 = or i32 %or, %and
  %or4 = or i32 %or3, 1
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %or4, i32 noundef %add, i32 noundef 4) #4
  %shr = lshr i64 %neg, 32
  %conv8 = trunc i64 %shr to i32
  %mul9 = shl i32 %win_num, 2
  %add10 = add i32 %mul9, 47856
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %conv8, i32 noundef %add10, i32 noundef 4) #4
  %conv12 = trunc i64 %cpu_addr to i32
  %and13 = and i32 %conv12, -4
  %add15 = add i32 %mul, 2980
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %and13, i32 noundef %add15, i32 noundef 4) #4
  %shr16 = lshr i64 %cpu_addr, 32
  %conv18 = trunc i64 %shr16 to i32
  %add20 = add i32 %mul9, 32928
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %conv18, i32 noundef %add20, i32 noundef 4) #4
  %conv22 = trunc i64 %pci_addr to i32
  %add24 = add i32 %mul, 2984
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %conv22, i32 noundef %add24, i32 noundef 4) #4
  %shr25 = lshr i64 %pci_addr, 32
  %conv27 = trunc i64 %shr25 to i32
  %add29 = add i32 %mul, 2988
  tail call void @mobiveil_csr_write(ptr noundef %pcie, i32 noundef %conv27, i32 noundef %add29, i32 noundef 4) #4
  %ob_wins_configured = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 6
  %4 = ptrtoint ptr %ob_wins_configured to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ob_wins_configured, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ob_wins_configured, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mobiveil_bringup_link(ptr noundef %pcie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 8
  %csr_axi_slave_base.i.i.i.i = getelementptr inbounds %struct.mobiveil_pcie, ptr %pcie, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %retries.04 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %call.i = tail call i32 %3(ptr noundef %pcie) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.i.not, label %if.then.i.if.end_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %for.body
  %4 = ptrtoint ptr %csr_axi_slave_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_axi_slave_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 2056
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  %7 = and i32 %6, -14681857
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %csr_axi_slave_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr_axi_slave_base.i.i.i.i, align 4
  %add.ptr4.i.i.i.i = getelementptr i8, ptr %9, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i.i, i32 %7) #4, !srcloc !38
  %10 = ptrtoint ptr %csr_axi_slave_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr_axi_slave_base.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 1028
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  %and.i.i.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %mobiveil_pcie_link_up.exit, label %mobiveil_pcie_link_up.exit.thread

mobiveil_pcie_link_up.exit.thread:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcie, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str) #7
  br label %if.end

mobiveil_pcie_link_up.exit:                       ; preds = %if.end.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  %16 = and i32 %15, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 754974720, i32 %16)
  %phi.cmp.i = icmp eq i32 %16, 754974720
  br i1 %phi.cmp.i, label %mobiveil_pcie_link_up.exit.cleanup_crit_edge, label %mobiveil_pcie_link_up.exit.if.end_crit_edge

mobiveil_pcie_link_up.exit.if.end_crit_edge:      ; preds = %mobiveil_pcie_link_up.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

mobiveil_pcie_link_up.exit.cleanup_crit_edge:     ; preds = %mobiveil_pcie_link_up.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %mobiveil_pcie_link_up.exit.if.end_crit_edge, %mobiveil_pcie_link_up.exit.thread, %if.then.i.if.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #4
  %inc = add nuw nsw i32 %retries.04, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcie, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %mobiveil_pcie_link_up.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %mobiveil_pcie_link_up.exit.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil.c", i32 109, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mobiveil_csr_read._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mobiveil_csr_read._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil.c", i32 124, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mobiveil_csr_write._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mobiveil_csr_write._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil.c", i32 143, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @program_ib_windows._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @program_ib_windows._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil.c", i32 180, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @program_ob_windows._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @program_ob_windows._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pci/controller/mobiveil/pcie-mobiveil.c", i32 228, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mobiveil_bringup_link._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @mobiveil_bringup_link._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2154497811}
!38 = !{i64 4991599}
!39 = !{i64 4992017}
!40 = !{i64 2154498566}
!41 = !{i64 4991179}
!42 = !{i64 2154499000}
!43 = !{i64 4991797}
!44 = !{i64 2154499206}
!45 = !{i64 2154499422}
!46 = !{i64 2154499785}
!47 = !{i64 4990979}
!48 = !{i64 2154500148}
!49 = !{i64 4991402}
