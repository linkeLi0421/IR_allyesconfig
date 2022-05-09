; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/wimmgv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/wimmgv100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nv50_disp_chan = type { ptr, ptr, ptr, %struct.anon.144, i32, %struct.nvkm_object, ptr, i64, i32 }
%struct.anon.144 = type { i32, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.141, %struct.anon.141, %struct.anon.141, %struct.anon.142, %struct.anon.143, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.139 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.139 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.141 = type { i32, i32 }
%struct.anon.142 = type { i32, i32, i32 }
%struct.anon.143 = type { i32, i32, [3 x i8] }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvc37b_window_imm_channel_dma_v0 = type { i8, i8, [6 x i8], i64 }

@gv100_disp_wimm = dso_local constant { %struct.nv50_disp_chan_func, [44 x i8] } { %struct.nv50_disp_chan_func { ptr @gv100_disp_dmac_init, ptr @gv100_disp_dmac_fini, ptr @gv100_disp_wimm_intr, ptr @gv100_disp_chan_user, ptr null }, [44 x i8] zeroinitializer }, align 32
@gv100_disp_wimm_new_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create window imm channel dma size %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gv100_disp_wimm_new_\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/wimmgv100.c\00", [43 x i8] zeroinitializer }, align 32
@gv100_disp_wimm_new_._entry_ptr = internal global ptr @gv100_disp_wimm_new_._entry, section ".printk_index", align 4
@gv100_disp_wimm_new_._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create window imm channel dma vers %d pushbuf %016llx index %d\0A\00", [32 x i8] zeroinitializer }, align 32
@gv100_disp_wimm_new_._entry_ptr.5 = internal global ptr @gv100_disp_wimm_new_._entry.3, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"gv100_disp_wimm\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 39, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 60, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [56 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/wimmgv100.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 62, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @gv100_disp_wimm_new_._entry, ptr @gv100_disp_wimm_new_._entry.3, ptr @gv100_disp_wimm_new_._entry_ptr, ptr @gv100_disp_wimm_new_._entry_ptr.5, ptr @gv100_disp_wimm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_wimm to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_wimm_new_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_wimm_new_._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_disp_dmac_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_disp_dmac_fini(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gv100_disp_wimm_intr(ptr nocapture noundef readonly %chan, i1 noundef zeroext %en) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 8
  %device1 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %head = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 4
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  %shl = shl nuw i32 1, %5
  %spec.select = select i1 %en, i32 %shl, i32 0
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 6364584
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %neg = xor i32 %shl, -1
  %and = and i32 %8, %neg
  %or = or i32 %and, %spec.select
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 6364584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #3, !srcloc !24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gv100_disp_chan_user(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gv100_disp_wimm_new(ptr noundef %oclass, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr noundef %disp, ptr noundef %pobject) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1.i = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %0 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1.i, align 4
  %client.i = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.i = icmp ugt i32 %5, 4
  br i1 %cmp.i, label %do.end.i, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %name.i = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 1
  %handle.i = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle.i, align 8
  %oclass3.i = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %oclass3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oclass3.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef %7, i32 noundef %9, i32 noundef %argc) #6
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end.i, %entry.land.lhs.true.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %argc)
  %cmp7.i = icmp ugt i32 %argc, 15
  br i1 %cmp7.i, label %land.lhs.true11.i, label %land.lhs.true.i.gv100_disp_wimm_new_.exit_crit_edge

land.lhs.true.i.gv100_disp_wimm_new_.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %gv100_disp_wimm_new_.exit

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %10 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %argv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp14.i = icmp eq i8 %11, 0
  br i1 %cmp14.i, label %if.then16.i, label %land.lhs.true11.i.gv100_disp_wimm_new_.exit_crit_edge

land.lhs.true11.i.gv100_disp_wimm_new_.exit_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %gv100_disp_wimm_new_.exit

if.then16.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %argc)
  %tobool.not.i = icmp eq i32 %argc, 16
  br i1 %tobool.not.i, label %do.body23.i, label %if.then16.i.gv100_disp_wimm_new_.exit_crit_edge

if.then16.i.gv100_disp_wimm_new_.exit_crit_edge:  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %gv100_disp_wimm_new_.exit

do.body23.i:                                      ; preds = %if.then16.i
  %12 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client.i, align 4
  %debug27.i = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %debug27.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug27.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp28.i = icmp ugt i32 %15, 4
  br i1 %cmp28.i, label %do.end33.i, label %do.body23.i.if.end43.i_crit_edge

do.body23.i.if.end43.i_crit_edge:                 ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43.i

do.end33.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #5
  %name35.i = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 1
  %handle37.i = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %handle37.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle37.i, align 8
  %oclass38.i = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %oclass38.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oclass38.i, align 4
  %pushbuf.i = getelementptr inbounds %struct.nvc37b_window_imm_channel_dma_v0, ptr %argv, i32 0, i32 3
  %20 = ptrtoint ptr %pushbuf.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pushbuf.i, align 8
  %index.i = getelementptr inbounds %struct.nvc37b_window_imm_channel_dma_v0, ptr %argv, i32 0, i32 1
  %22 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index.i, align 1
  %conv41.i = zext i8 %23 to i32
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name35.i, i32 noundef %17, i32 noundef %19, i32 noundef 0, i64 noundef %21, i32 noundef %conv41.i) #6
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end33.i, %do.body23.i.if.end43.i_crit_edge
  %wndw46.i = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 6
  %24 = ptrtoint ptr %wndw46.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wndw46.i, align 4
  %index47.i = getelementptr inbounds %struct.nvc37b_window_imm_channel_dma_v0, ptr %argv, i32 0, i32 1
  %26 = ptrtoint ptr %index47.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %index47.i, align 1
  %conv48.i = zext i8 %27 to i32
  %shl.i = shl nuw i32 1, %conv48.i
  %and.i = and i32 %shl.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool49.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool49.not.i, label %if.end43.i.gv100_disp_wimm_new_.exit_crit_edge, label %if.end51.i

if.end43.i.gv100_disp_wimm_new_.exit_crit_edge:   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %gv100_disp_wimm_new_.exit

if.end51.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #5
  %pushbuf52.i = getelementptr inbounds %struct.nvc37b_window_imm_channel_dma_v0, ptr %argv, i32 0, i32 3
  %28 = ptrtoint ptr %pushbuf52.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %pushbuf52.i, align 8
  %add.i = add nuw nsw i32 %conv48.i, 33
  %call56.i = tail call i32 @nv50_disp_dmac_new_(ptr noundef nonnull @gv100_disp_wimm, ptr noundef null, ptr noundef %disp, i32 noundef %add.i, i32 noundef %conv48.i, i64 noundef %29, ptr noundef %oclass, ptr noundef %pobject) #3
  br label %gv100_disp_wimm_new_.exit

gv100_disp_wimm_new_.exit:                        ; preds = %if.end51.i, %if.end43.i.gv100_disp_wimm_new_.exit_crit_edge, %if.then16.i.gv100_disp_wimm_new_.exit_crit_edge, %land.lhs.true11.i.gv100_disp_wimm_new_.exit_crit_edge, %land.lhs.true.i.gv100_disp_wimm_new_.exit_crit_edge
  %retval.0.i = phi i32 [ %call56.i, %if.end51.i ], [ -22, %if.end43.i.gv100_disp_wimm_new_.exit_crit_edge ], [ -38, %land.lhs.true.i.gv100_disp_wimm_new_.exit_crit_edge ], [ -38, %land.lhs.true11.i.gv100_disp_wimm_new_.exit_crit_edge ], [ -7, %if.then16.i.gv100_disp_wimm_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_dmac_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @gv100_disp_wimm, !1, !"gv100_disp_wimm", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/wimmgv100.c", i32 39, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/wimmgv100.c", i32 60, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gv100_disp_wimm_new_._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @gv100_disp_wimm_new_._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/wimmgv100.c", i32 62, i32 3}
!10 = !{ptr @gv100_disp_wimm_new_._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gv100_disp_wimm_new_._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 5386452}
!22 = !{i64 2156245405}
!23 = !{i64 2156245783}
!24 = !{i64 5386034}
