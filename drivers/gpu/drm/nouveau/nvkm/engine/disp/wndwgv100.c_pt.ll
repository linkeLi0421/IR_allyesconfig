; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/wndwgv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/wndwgv100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.0 = type { ptr, i32, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nv50_disp_chan = type { ptr, ptr, ptr, %struct.anon.144, i32, %struct.nvkm_object, ptr, i64, i32 }
%struct.anon.144 = type { i32, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.141, %struct.anon.141, %struct.anon.141, %struct.anon.142, %struct.anon.143, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.139 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.138 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.138 = type { %struct.refcount_struct, %struct.mutex, i8 }
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
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvc37e_window_channel_dma_v0 = type { i8, i8, [6 x i8], i64 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Window\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Global\00", [25 x i8] zeroinitializer }, align 32
@gv100_disp_wndw_mthd = dso_local constant { { ptr, i32, i32, [2 x %struct.anon.0] }, [60 x i8] } { { ptr, i32, i32, [2 x %struct.anon.0] } { ptr @.str, i32 4096, i32 2048, [2 x %struct.anon.0] [%struct.anon.0 { ptr @.str.1, i32 1, ptr @gv100_disp_wndw_mthd_base }, %struct.anon.0 zeroinitializer] }, [60 x i8] zeroinitializer }, align 32
@gv100_disp_wndw = dso_local constant { %struct.nv50_disp_chan_func, [44 x i8] } { %struct.nv50_disp_chan_func { ptr @gv100_disp_dmac_init, ptr @gv100_disp_dmac_fini, ptr @gv100_disp_wndw_intr, ptr @gv100_disp_chan_user, ptr @gv100_disp_dmac_bind }, [44 x i8] zeroinitializer }, align 32
@gv100_disp_wndw_mthd_base = internal constant { { i32, i32, [82 x %struct.anon] }, [224 x i8] } { { i32, i32, [82 x %struct.anon] } { i32 0, i32 0, [82 x %struct.anon] [%struct.anon { i32 512, i32 6881792, ptr null }, %struct.anon { i32 524, i32 6881804, ptr null }, %struct.anon { i32 528, i32 6881808, ptr null }, %struct.anon { i32 532, i32 6881812, ptr null }, %struct.anon { i32 536, i32 6881816, ptr null }, %struct.anon { i32 540, i32 6881820, ptr null }, %struct.anon { i32 544, i32 6881824, ptr null }, %struct.anon { i32 548, i32 6881828, ptr null }, %struct.anon { i32 552, i32 6881832, ptr null }, %struct.anon { i32 556, i32 6881836, ptr null }, %struct.anon { i32 560, i32 6881840, ptr null }, %struct.anon { i32 564, i32 6881844, ptr null }, %struct.anon { i32 568, i32 6881848, ptr null }, %struct.anon { i32 576, i32 6881856, ptr null }, %struct.anon { i32 580, i32 6881860, ptr null }, %struct.anon { i32 584, i32 6881864, ptr null }, %struct.anon { i32 588, i32 6881868, ptr null }, %struct.anon { i32 592, i32 6881872, ptr null }, %struct.anon { i32 596, i32 6881876, ptr null }, %struct.anon { i32 608, i32 6881888, ptr null }, %struct.anon { i32 612, i32 6881892, ptr null }, %struct.anon { i32 616, i32 6881896, ptr null }, %struct.anon { i32 620, i32 6881900, ptr null }, %struct.anon { i32 624, i32 6881904, ptr null }, %struct.anon { i32 628, i32 6881908, ptr null }, %struct.anon { i32 640, i32 6881920, ptr null }, %struct.anon { i32 644, i32 6881924, ptr null }, %struct.anon { i32 648, i32 6881928, ptr null }, %struct.anon { i32 652, i32 6881932, ptr null }, %struct.anon { i32 656, i32 6881936, ptr null }, %struct.anon { i32 664, i32 6881944, ptr null }, %struct.anon { i32 668, i32 6881948, ptr null }, %struct.anon { i32 672, i32 6881952, ptr null }, %struct.anon { i32 676, i32 6881956, ptr null }, %struct.anon { i32 680, i32 6881960, ptr null }, %struct.anon { i32 684, i32 6881964, ptr null }, %struct.anon { i32 688, i32 6881968, ptr null }, %struct.anon { i32 692, i32 6881972, ptr null }, %struct.anon { i32 696, i32 6881976, ptr null }, %struct.anon { i32 700, i32 6881980, ptr null }, %struct.anon { i32 704, i32 6881984, ptr null }, %struct.anon { i32 708, i32 6881988, ptr null }, %struct.anon { i32 712, i32 6881992, ptr null }, %struct.anon { i32 716, i32 6881996, ptr null }, %struct.anon { i32 720, i32 6882000, ptr null }, %struct.anon { i32 724, i32 6882004, ptr null }, %struct.anon { i32 728, i32 6882008, ptr null }, %struct.anon { i32 732, i32 6882012, ptr null }, %struct.anon { i32 736, i32 6882016, ptr null }, %struct.anon { i32 740, i32 6882020, ptr null }, %struct.anon { i32 744, i32 6882024, ptr null }, %struct.anon { i32 748, i32 6882028, ptr null }, %struct.anon { i32 752, i32 6882032, ptr null }, %struct.anon { i32 756, i32 6882036, ptr null }, %struct.anon { i32 760, i32 6882040, ptr null }, %struct.anon { i32 764, i32 6882044, ptr null }, %struct.anon { i32 768, i32 6882048, ptr null }, %struct.anon { i32 772, i32 6882052, ptr null }, %struct.anon { i32 776, i32 6882056, ptr null }, %struct.anon { i32 784, i32 6882064, ptr null }, %struct.anon { i32 788, i32 6882068, ptr null }, %struct.anon { i32 792, i32 6882072, ptr null }, %struct.anon { i32 796, i32 6882076, ptr null }, %struct.anon { i32 800, i32 6882080, ptr null }, %struct.anon { i32 804, i32 6882084, ptr null }, %struct.anon { i32 808, i32 6882088, ptr null }, %struct.anon { i32 812, i32 6882092, ptr null }, %struct.anon { i32 828, i32 6882108, ptr null }, %struct.anon { i32 832, i32 6882112, ptr null }, %struct.anon { i32 836, i32 6882116, ptr null }, %struct.anon { i32 840, i32 6882120, ptr null }, %struct.anon { i32 844, i32 6882124, ptr null }, %struct.anon { i32 848, i32 6882128, ptr null }, %struct.anon { i32 852, i32 6882132, ptr null }, %struct.anon { i32 856, i32 6882136, ptr null }, %struct.anon { i32 868, i32 6882148, ptr null }, %struct.anon { i32 872, i32 6882152, ptr null }, %struct.anon { i32 876, i32 6882156, ptr null }, %struct.anon { i32 880, i32 6882160, ptr null }, %struct.anon { i32 884, i32 6882164, ptr null }, %struct.anon { i32 896, i32 6882176, ptr null }, %struct.anon zeroinitializer] }, [224 x i8] zeroinitializer }, align 32
@gv100_disp_wndw_new_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create window channel dma size %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gv100_disp_wndw_new_\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/wndwgv100.c\00", [43 x i8] zeroinitializer }, align 32
@gv100_disp_wndw_new_._entry_ptr = internal global ptr @gv100_disp_wndw_new_._entry, section ".printk_index", align 4
@gv100_disp_wndw_new_._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create window channel dma vers %d pushbuf %016llx index %d\0A\00", [36 x i8] zeroinitializer }, align 32
@gv100_disp_wndw_new_._entry_ptr.8 = internal global ptr @gv100_disp_wndw_new_._entry.6, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 121, i32 10 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 125, i32 5 }
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"gv100_disp_wndw_mthd\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 120, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"gv100_disp_wndw\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 140, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"gv100_disp_wndw_mthd_base\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 30, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 162, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [56 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/wndwgv100.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 164, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @gv100_disp_wndw_new_._entry, ptr @gv100_disp_wndw_new_._entry.6, ptr @gv100_disp_wndw_new_._entry_ptr, ptr @gv100_disp_wndw_new_._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @gv100_disp_wndw_mthd, ptr @gv100_disp_wndw, ptr @gv100_disp_wndw_mthd_base, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_wndw_mthd to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_wndw to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_wndw_mthd_base to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_wndw_new_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_wndw_new_._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_disp_dmac_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_disp_dmac_fini(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gv100_disp_wndw_intr(ptr nocapture noundef readonly %chan, i1 noundef zeroext %en) #1 align 64 {
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
  %add.ptr = getelementptr i8, ptr %7, i32 6364580
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  %neg = xor i32 %shl, -1
  %and = and i32 %8, %neg
  %or = or i32 %and, %spec.select
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 6364580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #3, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gv100_disp_chan_user(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_disp_dmac_bind(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gv100_disp_wndw_new(ptr noundef %oclass, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr noundef %disp, ptr noundef %pobject) local_unnamed_addr #1 align 64 {
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
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i, i32 noundef %7, i32 noundef %9, i32 noundef %argc) #6
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end.i, %entry.land.lhs.true.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %argc)
  %cmp7.i = icmp ugt i32 %argc, 15
  br i1 %cmp7.i, label %land.lhs.true11.i, label %land.lhs.true.i.gv100_disp_wndw_new_.exit_crit_edge

land.lhs.true.i.gv100_disp_wndw_new_.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %gv100_disp_wndw_new_.exit

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %10 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %argv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp14.i = icmp eq i8 %11, 0
  br i1 %cmp14.i, label %if.then16.i, label %land.lhs.true11.i.gv100_disp_wndw_new_.exit_crit_edge

land.lhs.true11.i.gv100_disp_wndw_new_.exit_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %gv100_disp_wndw_new_.exit

if.then16.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %argc)
  %tobool.not.i = icmp eq i32 %argc, 16
  br i1 %tobool.not.i, label %do.body23.i, label %if.then16.i.gv100_disp_wndw_new_.exit_crit_edge

if.then16.i.gv100_disp_wndw_new_.exit_crit_edge:  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %gv100_disp_wndw_new_.exit

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
  %pushbuf.i = getelementptr inbounds %struct.nvc37e_window_channel_dma_v0, ptr %argv, i32 0, i32 3
  %20 = ptrtoint ptr %pushbuf.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pushbuf.i, align 8
  %index.i = getelementptr inbounds %struct.nvc37e_window_channel_dma_v0, ptr %argv, i32 0, i32 1
  %22 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index.i, align 1
  %conv41.i = zext i8 %23 to i32
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name35.i, i32 noundef %17, i32 noundef %19, i32 noundef 0, i64 noundef %21, i32 noundef %conv41.i) #6
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end33.i, %do.body23.i.if.end43.i_crit_edge
  %wndw46.i = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 6
  %24 = ptrtoint ptr %wndw46.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wndw46.i, align 4
  %index47.i = getelementptr inbounds %struct.nvc37e_window_channel_dma_v0, ptr %argv, i32 0, i32 1
  %26 = ptrtoint ptr %index47.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %index47.i, align 1
  %conv48.i = zext i8 %27 to i32
  %shl.i = shl nuw i32 1, %conv48.i
  %and.i = and i32 %shl.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool49.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool49.not.i, label %if.end43.i.gv100_disp_wndw_new_.exit_crit_edge, label %if.end51.i

if.end43.i.gv100_disp_wndw_new_.exit_crit_edge:   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %gv100_disp_wndw_new_.exit

if.end51.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #5
  %pushbuf52.i = getelementptr inbounds %struct.nvc37e_window_channel_dma_v0, ptr %argv, i32 0, i32 3
  %28 = ptrtoint ptr %pushbuf52.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %pushbuf52.i, align 8
  %add.i = add nuw nsw i32 %conv48.i, 1
  %call56.i = tail call i32 @nv50_disp_dmac_new_(ptr noundef nonnull @gv100_disp_wndw, ptr noundef nonnull @gv100_disp_wndw_mthd, ptr noundef %disp, i32 noundef %add.i, i32 noundef %conv48.i, i64 noundef %29, ptr noundef %oclass, ptr noundef %pobject) #3
  br label %gv100_disp_wndw_new_.exit

gv100_disp_wndw_new_.exit:                        ; preds = %if.end51.i, %if.end43.i.gv100_disp_wndw_new_.exit_crit_edge, %if.then16.i.gv100_disp_wndw_new_.exit_crit_edge, %land.lhs.true11.i.gv100_disp_wndw_new_.exit_crit_edge, %land.lhs.true.i.gv100_disp_wndw_new_.exit_crit_edge
  %retval.0.i = phi i32 [ %call56.i, %if.end51.i ], [ -22, %if.end43.i.gv100_disp_wndw_new_.exit_crit_edge ], [ -38, %land.lhs.true.i.gv100_disp_wndw_new_.exit_crit_edge ], [ -38, %land.lhs.true11.i.gv100_disp_wndw_new_.exit_crit_edge ], [ -7, %if.then16.i.gv100_disp_wndw_new_.exit_crit_edge ]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/wndwgv100.c", i32 121, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/wndwgv100.c", i32 125, i32 5}
!4 = !{ptr @gv100_disp_wndw_mthd, !5, !"gv100_disp_wndw_mthd", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/wndwgv100.c", i32 120, i32 1}
!6 = !{ptr @gv100_disp_wndw, !7, !"gv100_disp_wndw", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/wndwgv100.c", i32 140, i32 1}
!8 = !{ptr @gv100_disp_wndw_mthd_base, !9, !"gv100_disp_wndw_mthd_base", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/wndwgv100.c", i32 30, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/wndwgv100.c", i32 162, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @gv100_disp_wndw_new_._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @gv100_disp_wndw_new_._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/wndwgv100.c", i32 164, i32 3}
!18 = !{ptr @gv100_disp_wndw_new_._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @gv100_disp_wndw_new_._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 5388745}
!30 = !{i64 2156247775}
!31 = !{i64 2156248153}
!32 = !{i64 5388327}
