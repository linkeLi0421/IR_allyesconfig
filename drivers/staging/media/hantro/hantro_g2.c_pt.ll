; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/hantro_g2.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/hantro_g2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hantro_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.delayed_work }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@hantro_g2_check_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 21, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"device still running, aborting\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hantro_g2_check_idle\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/media/hantro/hantro_g2.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hantro_g2_check_idle._entry_ptr = internal global ptr @hantro_g2_check_idle._entry, section ".printk_index", align 4
@hantro_debug = external dso_local local_unnamed_addr global i32, align 4
@vdpu_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s:%d: 0x%04x = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdpu_read\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/hantro/hantro.h\00", [58 x i8] zeroinitializer }, align 32
@vdpu_read._entry_ptr = internal global ptr @vdpu_read._entry, section ".printk_index", align 4
@vdpu_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.8, ptr @.str.7, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdpu_write\00", [21 x i8] zeroinitializer }, align 32
@vdpu_write._entry_ptr = internal global ptr @vdpu_write._entry, section ".printk_index", align 4
@___asan_gen_.25 = private constant [44 x i8] c"../drivers/staging/media/hantro/hantro_g2.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 21, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 413, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [41 x i8] c"../drivers/staging/media/hantro/hantro.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 398, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @hantro_g2_check_idle._entry, ptr @hantro_g2_check_idle._entry_ptr, ptr @vdpu_read._entry, ptr @vdpu_read._entry_ptr, ptr @vdpu_write._entry, ptr @vdpu_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_g2_check_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_g2_check_idle(ptr nocapture noundef readonly %vpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dec_base.i = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 11
  %dev = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 6
  %0 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !27
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %4 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.vdpu_read.exit_crit_edge, label %do.end.i

entry.vdpu_read.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 413, i32 noundef 1, i32 noundef %3) #7
  br label %vdpu_read.exit

vdpu_read.exit:                                   ; preds = %do.end.i, %entry.vdpu_read.exit_crit_edge
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %vdpu_read.exit.if.end_crit_edge, label %do.end

vdpu_read.exit.if.end_crit_edge:                  ; preds = %vdpu_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %vdpu_read.exit
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str) #7
  %or = or i32 %3, 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %7 = load i32, ptr @hantro_debug, align 4
  %and.i6 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool.not.i7 = icmp eq i32 %and.i6, 0
  br i1 %tobool.not.i7, label %do.end.vdpu_write.exit_crit_edge, label %do.end.i8

do.end.vdpu_write.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit

do.end.i8:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, i32 noundef 398, i32 noundef 1, i32 noundef %or) #7
  br label %vdpu_write.exit

vdpu_write.exit:                                  ; preds = %do.end.i8, %do.end.vdpu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %9 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i10 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %8) #4, !srcloc !30
  br label %if.end

if.end:                                           ; preds = %vdpu_write.exit, %vdpu_read.exit.if.end_crit_edge
  %11 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.1 = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #4, !srcloc !27
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %15 = load i32, ptr @hantro_debug, align 4
  %and.i.1 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.vdpu_read.exit.1_crit_edge, label %do.end.i.1

if.end.vdpu_read.exit.1_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read.exit.1

do.end.i.1:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 413, i32 noundef 1, i32 noundef %14) #7
  br label %vdpu_read.exit.1

vdpu_read.exit.1:                                 ; preds = %do.end.i.1, %if.end.vdpu_read.exit.1_crit_edge
  %and.1 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %vdpu_read.exit.1.if.end.1_crit_edge, label %do.end.1

vdpu_read.exit.1.if.end.1_crit_edge:              ; preds = %vdpu_read.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.1

do.end.1:                                         ; preds = %vdpu_read.exit.1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str) #7
  %or.1 = or i32 %14, 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %18 = load i32, ptr @hantro_debug, align 4
  %and.i6.1 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.1)
  %tobool.not.i7.1 = icmp eq i32 %and.i6.1, 0
  br i1 %tobool.not.i7.1, label %do.end.1.vdpu_write.exit.1_crit_edge, label %do.end.i8.1

do.end.1.vdpu_write.exit.1_crit_edge:             ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit.1

do.end.i8.1:                                      ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, i32 noundef 398, i32 noundef 1, i32 noundef %or.1) #7
  br label %vdpu_write.exit.1

vdpu_write.exit.1:                                ; preds = %do.end.i8.1, %do.end.1.vdpu_write.exit.1_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.1) #4
  %20 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i10.1 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.1, i32 %19) #4, !srcloc !30
  br label %if.end.1

if.end.1:                                         ; preds = %vdpu_write.exit.1, %vdpu_read.exit.1.if.end.1_crit_edge
  %22 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.2 = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #4, !srcloc !27
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %26 = load i32, ptr @hantro_debug, align 4
  %and.i.2 = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool.not.i.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool.not.i.2, label %if.end.1.vdpu_read.exit.2_crit_edge, label %do.end.i.2

if.end.1.vdpu_read.exit.2_crit_edge:              ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read.exit.2

do.end.i.2:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 413, i32 noundef 1, i32 noundef %25) #7
  br label %vdpu_read.exit.2

vdpu_read.exit.2:                                 ; preds = %do.end.i.2, %if.end.1.vdpu_read.exit.2_crit_edge
  %and.2 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %vdpu_read.exit.2.if.end.2_crit_edge, label %do.end.2

vdpu_read.exit.2.if.end.2_crit_edge:              ; preds = %vdpu_read.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.2

do.end.2:                                         ; preds = %vdpu_read.exit.2
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str) #7
  %or.2 = or i32 %25, 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %29 = load i32, ptr @hantro_debug, align 4
  %and.i6.2 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.2)
  %tobool.not.i7.2 = icmp eq i32 %and.i6.2, 0
  br i1 %tobool.not.i7.2, label %do.end.2.vdpu_write.exit.2_crit_edge, label %do.end.i8.2

do.end.2.vdpu_write.exit.2_crit_edge:             ; preds = %do.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit.2

do.end.i8.2:                                      ; preds = %do.end.2
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, i32 noundef 398, i32 noundef 1, i32 noundef %or.2) #7
  br label %vdpu_write.exit.2

vdpu_write.exit.2:                                ; preds = %do.end.i8.2, %do.end.2.vdpu_write.exit.2_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.2) #4
  %31 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i10.2 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.2, i32 %30) #4, !srcloc !30
  br label %if.end.2

if.end.2:                                         ; preds = %vdpu_write.exit.2, %vdpu_read.exit.2.if.end.2_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_g2_irq(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dec_base.i = getelementptr inbounds %struct.hantro_dev, ptr %dev_id, i32 0, i32 11
  %0 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !27
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %4 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.vdpu_read.exit_crit_edge, label %do.end.i

entry.vdpu_read.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 413, i32 noundef 1, i32 noundef %3) #7
  br label %vdpu_read.exit

vdpu_read.exit:                                   ; preds = %do.end.i, %entry.vdpu_read.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %5 = load i32, ptr @hantro_debug, align 4
  %and.i4 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i5 = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i5, label %vdpu_read.exit.vdpu_write.exit_crit_edge, label %do.end.i6

vdpu_read.exit.vdpu_write.exit_crit_edge:         ; preds = %vdpu_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit

do.end.i6:                                        ; preds = %vdpu_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, i32 noundef 398, i32 noundef 1, i32 noundef 0) #7
  br label %vdpu_write.exit

vdpu_write.exit:                                  ; preds = %do.end.i6, %vdpu_read.exit.vdpu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #4, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %8 = load i32, ptr @hantro_debug, align 4
  %and.i9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %vdpu_write.exit.vdpu_write.exit15_crit_edge, label %do.end.i12

vdpu_write.exit.vdpu_write.exit15_crit_edge:      ; preds = %vdpu_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit15

do.end.i12:                                       ; preds = %vdpu_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, i32 noundef 398, i32 noundef 58, i32 noundef 65536) #7
  br label %vdpu_write.exit15

vdpu_write.exit15:                                ; preds = %do.end.i12, %vdpu_write.exit.vdpu_write.exit15_crit_edge
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 6, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %10, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 256) #4, !srcloc !30
  tail call void @hantro_irq_done(ptr noundef %dev_id, i32 noundef %cond) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_irq_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/hantro_g2.c", i32 21, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hantro_g2_check_idle._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hantro_g2_check_idle._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/hantro/hantro.h", i32 413, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @vdpu_read._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @vdpu_read._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/hantro/hantro.h", i32 398, i32 2}
!16 = !{ptr @vdpu_write._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @vdpu_write._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 4210672}
!28 = !{i64 2156559950}
!29 = !{i64 2156558941}
!30 = !{i64 4210254}
