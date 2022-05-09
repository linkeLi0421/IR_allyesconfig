; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/machine_kexec.c_pt.bc'
source_filename = "../arch/arm/kernel/machine_kexec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kimage = type { i32, ptr, ptr, i32, ptr, ptr, ptr, i32, [16 x %struct.kexec_segment], %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, %struct.kimage_arch, ptr, i32, i32 }
%struct.kexec_segment = type { %union.anon.70, i32, i32, i32 }
%union.anon.70 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.kimage_arch = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pt_regs = type { [18 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kexec_relocate_data = type { i32, i32, i32, i32 }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arch/arm/kernel/machine_kexec.c\00", [32 x i8] zeroinitializer }, align 32
@machine_crash_nonpanic_core._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017CPU %u will stop doing anything useful since another CPU has crashed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"machine_crash_nonpanic_core\00", [36 x i8] zeroinitializer }, align 32
@machine_crash_nonpanic_core._entry_ptr = internal global ptr @machine_crash_nonpanic_core._entry, section ".printk_index", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@waiting_for_crash_ipi = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@crash_smp_send_stop.cpus_stopped = internal global { i1, [31 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@crash_smp_send_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Non-crashing CPUs did not react to IPI\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"crash_smp_send_stop\00", [44 x i8] zeroinitializer }, align 32
@crash_smp_send_stop._entry_ptr = internal global ptr @crash_smp_send_stop._entry, section ".printk_index", align 4
@machine_crash_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016Loading crashdump kernel...\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"machine_crash_shutdown\00", [41 x i8] zeroinitializer }, align 32
@machine_crash_shutdown._entry_ptr = internal global ptr @machine_crash_shutdown._entry, section ".printk_index", align 4
@relocate_new_kernel_size = external dso_local local_unnamed_addr constant i32, align 4
@__machine_arch_type = external dso_local local_unnamed_addr global i32, align 4
@machine_kexec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\016Bye!\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"machine_kexec\00", [18 x i8] zeroinitializer }, align 32
@machine_kexec._entry_ptr = internal global ptr @machine_kexec._entry, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@arch_phys_to_idmap_offset = external dso_local local_unnamed_addr global i64, align 8
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 62, i32 9 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 81, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"waiting_for_crash_ipi\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 26, i32 17 }
@___asan_gen_.25 = private unnamed_addr constant [33 x i8] c"crash_smp_send_stop.cpus_stopped\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 111, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 147, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [35 x i8] c"../arch/arm/kernel/machine_kexec.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 183, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @crash_smp_send_stop._entry, ptr @crash_smp_send_stop._entry_ptr, ptr @machine_crash_nonpanic_core._entry, ptr @machine_crash_nonpanic_core._entry_ptr, ptr @machine_crash_shutdown._entry, ptr @machine_crash_shutdown._entry_ptr, ptr @machine_kexec._entry, ptr @machine_kexec._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @waiting_for_crash_ipi, ptr @crash_smp_send_stop.cpus_stopped, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machine_crash_nonpanic_core._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @waiting_for_crash_ipi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crash_smp_send_stop.cpus_stopped to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crash_smp_send_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machine_crash_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machine_kexec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @machine_kexec_prepare(ptr nocapture noundef %image) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %start = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 3
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start, align 4
  %add = add i32 %1, -28672
  %arch = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 14
  %2 = ptrtoint ptr %arch to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %arch, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i.i)
  %cmp = icmp ugt i32 %call4.i.i, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @platform_can_secondary_boot() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = tail call i32 @platform_can_cpu_hotplug() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %nr_segments = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 7
  %4 = ptrtoint ptr %nr_segments to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_segments, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp540.not = icmp eq i32 %5, 0
  br i1 %cmp540.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %mem = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.041, i32 2
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %8 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %9 = trunc i64 %8 to i32
  %addr.0.i = sub i32 %7, %9
  %memsz = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.041, i32 3
  %10 = ptrtoint ptr %memsz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %memsz, align 4
  %call7 = tail call zeroext i1 @memblock_is_region_memory(i32 noundef %addr.0.i, i32 noundef %11) #8
  br i1 %call7, label %if.end9, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.041
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 62) #8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !38
  %and.i = and i32 %16, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  %17 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %13, i32 -1226833921) #8, !srcloc !41
  %asmresult = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool13.not = icmp eq i32 %asmresult, 0
  br i1 %tobool13.not, label %if.end15, label %cleanup.loopexit.split.loop.exit

if.end15:                                         ; preds = %if.end9
  %asmresult11 = extractvalue { i32, i32 } %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -804389139, i32 %asmresult11)
  %cmp16 = icmp eq i32 %asmresult11, -804389139
  br i1 %cmp16, label %if.then17, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mem, align 4
  %20 = ptrtoint ptr %arch to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arch, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %if.end15.for.inc_crit_edge
  %inc = add nuw i32 %i.041, 1
  %21 = ptrtoint ptr %nr_segments to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_segments, align 4
  %cmp5 = icmp ult i32 %inc, %22
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.loopexit.split.loop.exit:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %asmresult.le = extractvalue { i32, i32 } %17, 0
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true2.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %asmresult.le, %cleanup.loopexit.split.loop.exit ], [ 0, %for.inc.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_can_secondary_boot() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_can_cpu_hotplug() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_memory(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @machine_kexec_cleanup(ptr nocapture noundef %image) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @machine_crash_nonpanic_core(ptr nocapture readnone %unused) #4 align 64 {
entry:
  %regs = alloca %struct.pt_regs, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %regs) #8
  %0 = call ptr @memset(ptr %regs, i32 255, i32 72)
  %1 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %6, ptrtoint (ptr @__irq_regs to i32)
  %7 = inttoptr i32 %add.i to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = call ptr @memcpy(ptr %regs, ptr %9, i32 72)
  br label %crash_setup_regs.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i16 = getelementptr inbounds [18 x i32], ptr %regs, i32 0, i32 15
  %arrayidx2.i = getelementptr inbounds [18 x i32], ptr %regs, i32 0, i32 16
  %arrayidx4.i = getelementptr inbounds [18 x i32], ptr %regs, i32 0, i32 13
  %arrayidx6.i = getelementptr inbounds [18 x i32], ptr %regs, i32 0, i32 14
  %11 = call { i32, i32, i32 } asm sideeffect "stmia\09$4, {r0-r12}\0A\09mov\09$2, sp\0A\09str\09lr, $3\0A\09adr\09$0, 1f\0A\09mrs\09$1, cpsr\0A\091:", "=r,=r,=r,=*o,r,~{memory}"(ptr elementtype(i32) %arrayidx6.i, ptr nonnull %regs) #8, !srcloc !42
  %asmresult.i = extractvalue { i32, i32, i32 } %11, 0
  %asmresult9.i = extractvalue { i32, i32, i32 } %11, 1
  %asmresult10.i = extractvalue { i32, i32, i32 } %11, 2
  %12 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %asmresult.i, ptr %arrayidx.i16, align 4
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %asmresult9.i, ptr %arrayidx2.i, align 4
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %asmresult10.i, ptr %arrayidx4.i, align 4
  br label %crash_setup_regs.exit

crash_setup_regs.exit:                            ; preds = %if.else.i, %if.then.i
  %15 = call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %18) #11
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  call void @crash_save_cpu(ptr noundef nonnull %regs, i32 noundef %20) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  call void %21() #8
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  call void @set_cpu_online(i32 noundef %23, i1 noundef zeroext false) #8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @waiting_for_crash_ipi, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @waiting_for_crash_ipi, i32 1, i32 3, i32 1) #8
  %24 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @waiting_for_crash_ipi, ptr nonnull @waiting_for_crash_ipi, i32 1, ptr nonnull elementtype(i32) @waiting_for_crash_ipi) #8, !srcloc !43
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %crash_setup_regs.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !44
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !45
  call void asm sideeffect "wfe", "~{memory}"() #8, !srcloc !46
  br label %while.cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crash_save_cpu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cpu_online(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crash_smp_send_stop() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @crash_smp_send_stop.cpus_stopped, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %0 = load volatile i32, ptr @__num_online_cpus, align 4
  %sub = add i32 %0, -1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @waiting_for_crash_ipi, i32 noundef 4) #8
  store volatile i32 %sub, ptr @waiting_for_crash_ipi, align 4
  tail call void @smp_call_function(ptr noundef nonnull @machine_crash_nonpanic_core, ptr noundef null, i32 noundef 0) #8
  %call.i.i911 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @waiting_for_crash_ipi, i32 noundef 4) #8
  %1 = load volatile i32, ptr @waiting_for_crash_ipi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp12 = icmp slt i32 %1, 1
  br i1 %cmp12, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %msecs.013 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 1000, %if.end.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #8
  %dec = add nsw i32 %msecs.013, -1
  %call.i.i9 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @waiting_for_crash_ipi, i32 noundef 4) #8
  %3 = load volatile i32, ptr @waiting_for_crash_ipi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %call.i.i10 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @waiting_for_crash_ipi, i32 noundef 4) #8
  %4 = load volatile i32, ptr @waiting_for_crash_ipi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4 = icmp sgt i32 %4, 0
  br i1 %cmp4, label %do.end, label %while.end.if.end7_crit_edge

while.end.if.end7_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %if.end7

if.end7:                                          ; preds = %do.end, %while.end.if.end7_crit_edge
  store i1 true, ptr @crash_smp_send_stop.cpus_stopped, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_call_function(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @machine_crash_shutdown(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !47
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #8, !srcloc !48
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @crash_smp_send_stop()
  %1 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  tail call void @crash_save_cpu(ptr noundef %regs, i32 noundef %4) #8
  %call.i = tail call ptr @irq_to_desc(i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %5 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp43.not.i = icmp eq i32 %5, 0
  br i1 %cmp43.not.i, label %if.end.machine_kexec_mask_interrupts.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.machine_kexec_mask_interrupts.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %machine_kexec_mask_interrupts.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %desc.045.i = phi ptr [ %call24.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  %i.044.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %desc.045.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %chip.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc.045.i, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip.i.i, align 8
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.end.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %if.else.i
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_eoi.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %if.end.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %common.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc.045.i, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %common.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and.i.i6 = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i6)
  %tobool.i.not.i = icmp eq i32 %and.i.i6, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc.045.i, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data.i) #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 7
  %14 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_mask.i, align 4
  %tobool10.not.i = icmp eq ptr %15, null
  br i1 %tobool10.not.i, label %if.end9.i.if.end14.i_crit_edge, label %if.then11.i

if.end9.i.if.end14.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data13.i = getelementptr inbounds %struct.irq_desc, ptr %desc.045.i, i32 0, i32 1
  tail call void %15(ptr noundef %irq_data13.i) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end9.i.if.end14.i_crit_edge
  %irq_disable.i = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %irq_disable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_disable.i, align 4
  %tobool15.not.i = icmp eq ptr %17, null
  br i1 %tobool15.not.i, label %if.end14.i.for.inc.i_crit_edge, label %land.lhs.true16.i

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true16.i:                                ; preds = %if.end14.i
  %common.i40.i = getelementptr inbounds %struct.irq_desc, ptr %desc.045.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %common.i40.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %common.i40.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and.i41.i = and i32 %21, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41.i)
  %tobool.i42.not.i = icmp eq i32 %and.i41.i, 0
  br i1 %tobool.i42.not.i, label %if.then19.i, label %land.lhs.true16.i.for.inc.i_crit_edge

land.lhs.true16.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then19.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data17.i = getelementptr inbounds %struct.irq_desc, ptr %desc.045.i, i32 0, i32 1
  tail call void %17(ptr noundef %irq_data17.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then19.i, %land.lhs.true16.i.for.inc.i_crit_edge, %if.end14.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.044.i, 1
  %call24.i = tail call ptr @irq_to_desc(i32 noundef %inc.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %22 = load i32, ptr @nr_irqs, align 4
  %cmp.i = icmp ult i32 %inc.i, %22
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.machine_kexec_mask_interrupts.exit_crit_edge

for.inc.i.machine_kexec_mask_interrupts.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %machine_kexec_mask_interrupts.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

machine_kexec_mask_interrupts.exit:               ; preds = %for.inc.i.machine_kexec_mask_interrupts.exit_crit_edge, %if.end.machine_kexec_mask_interrupts.exit_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @machine_kexec(ptr nocapture noundef readonly %image) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %0 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %do.body2, label %do.end7, !prof !49

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/machine_kexec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #8, !srcloc !50
  unreachable

do.end7:                                          ; preds = %entry
  %1 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %image, align 4
  %control_code_page = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 4
  %3 = ptrtoint ptr %control_code_page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %control_code_page, align 4
  %call8 = tail call ptr @page_address(ptr noundef %4) #8
  %5 = tail call i32 asm "", "=r,0"(ptr nonnull @relocate_new_kernel) #12, !srcloc !51
  %6 = ptrtoint ptr %call8 to i32
  %and10 = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp ne i32 %and10, 0
  %and13 = and i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14 = icmp ne i32 %and13, 0
  %7 = select i1 %tobool11.not, i1 true, i1 %tobool14
  br i1 %7, label %do.body22, label %do.end30, !prof !49

do.body22:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/machine_kexec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #8, !srcloc !52
  unreachable

do.end30:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %2, -4096
  %and31 = and i32 %5, -2
  %8 = inttoptr i32 %and31 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @relocate_new_kernel_size to i32))
  %9 = load i32, ptr @relocate_new_kernel_size, align 4
  %10 = call ptr @memcpy(ptr %call8, ptr %8, i32 %9)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %add = add i32 %9, %6
  tail call void %11(i32 noundef %6, i32 noundef %add) #8
  %and32 = and i32 %5, 1
  %or = or i32 %and32, %6
  %12 = tail call ptr asm "", "=r,0"(i32 %or) #12, !srcloc !53
  %add.ptr = getelementptr i8, ptr %call8, i32 %9
  %start = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 3
  %13 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr, align 4
  %kexec_indirection_page = getelementptr inbounds %struct.kexec_relocate_data, ptr %add.ptr, i32 0, i32 1
  %16 = ptrtoint ptr %kexec_indirection_page to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %kexec_indirection_page, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__machine_arch_type to i32))
  %17 = load i32, ptr @__machine_arch_type, align 4
  %kexec_mach_type = getelementptr inbounds %struct.kexec_relocate_data, ptr %add.ptr, i32 0, i32 2
  %18 = ptrtoint ptr %kexec_mach_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %kexec_mach_type, align 4
  %arch = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 14
  %19 = ptrtoint ptr %arch to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arch, align 4
  %kexec_r2 = getelementptr inbounds %struct.kexec_relocate_data, ptr %add.ptr, i32 0, i32 3
  %21 = ptrtoint ptr %kexec_r2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %kexec_r2, align 4
  %22 = ptrtoint ptr %12 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %22) #8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %23 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %24 = trunc i64 %23 to i32
  %addr.addr.0.i.i = add i32 %call.i, %24
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  tail call void @soft_restart(i32 noundef %addr.addr.0.i.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @relocate_new_kernel() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @soft_restart(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @arch_crash_save_vmcoreinfo() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/machine_kexec.c", i32 62, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/machine_kexec.c", i32 81, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @machine_crash_nonpanic_core._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @machine_crash_nonpanic_core._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = distinct !{null, !8, !"cpus_stopped", i1 false, i1 false}
!8 = !{!"../arch/arm/kernel/machine_kexec.c", i32 97, i32 13}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../arch/arm/kernel/machine_kexec.c", i32 111, i32 3}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @crash_smp_send_stop._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @crash_smp_send_stop._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/kernel/machine_kexec.c", i32 147, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @machine_crash_shutdown._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @machine_crash_shutdown._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/kernel/machine_kexec.c", i32 183, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @machine_kexec._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @machine_kexec._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @waiting_for_crash_ipi, !25, !"waiting_for_crash_ipi", i1 false, i1 false}
!25 = !{!"../arch/arm/kernel/machine_kexec.c", i32 26, i32 17}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/asm-generic/irq_regs.h", i32 21, i32 9}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 5223890}
!39 = !{i64 5224087}
!40 = !{i64 2152709320}
!41 = !{i64 2154436975, i64 2154437255, i64 2154437589, i64 2154437923}
!42 = !{i64 6233896, i64 6233927, i64 6233955, i64 6233983, i64 6234011, i64 6234043}
!43 = !{i64 2148670570, i64 2148670596, i64 2148670625, i64 2148670659, i64 2148670690, i64 2148670713}
!44 = !{i64 2154442899}
!45 = !{i64 2154442741}
!46 = !{i64 2154442984}
!47 = !{i64 1075517}
!48 = !{i64 1073220}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2154448291, i64 2154448787, i64 2154448328, i64 2154448384, i64 2154448418, i64 2154448442, i64 2154448483, i64 2154448504, i64 2154448532, i64 2154448566}
!51 = !{i64 2154449731}
!52 = !{i64 2154451004, i64 2154451500, i64 2154451041, i64 2154451097, i64 2154451131, i64 2154451155, i64 2154451196, i64 2154451217, i64 2154451245, i64 2154451279}
!53 = !{i64 2154450226}
