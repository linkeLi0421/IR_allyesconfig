; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.133, %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nv50_clk = type { %struct.nvkm_clk, %struct.nv50_clk_hwsq }
%struct.nv50_clk_hwsq = type { %struct.hwsq, %struct.hwsq_reg, [2 x %struct.hwsq_reg], [2 x %struct.hwsq_reg], %struct.hwsq_reg, %struct.hwsq_reg }
%struct.hwsq = type { ptr, ptr, i32 }
%struct.hwsq_reg = type { i32, i8, i32, i32, i32, i32 }

@nv50_clk_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 321, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: unknown clock source %d %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nv50_clk_read\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_clk_read._entry_ptr = internal global ptr @nv50_clk_read._entry, section ".printk_index", align 4
@read_pll_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 147, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: bad pll %06x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"read_pll_ref\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@read_pll_ref._entry_ptr = internal global ptr @read_pll_ref._entry, section ".printk_index", align 4
@read_pll_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 69, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: ref: bad pll %06x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"read_pll_src\00", [19 x i8] zeroinitializer }, align 32
@read_pll_src._entry_ptr = internal global ptr @read_pll_src._entry, section ".printk_index", align 4
@read_pll_src._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 97, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@read_pll_src._entry_ptr.11 = internal global ptr @read_pll_src._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shader\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@nv50_clk = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [6 x %struct.nvkm_domain] }, [32 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [6 x %struct.nvkm_domain] } { ptr null, ptr null, ptr @nv50_clk_read, ptr @nv50_clk_calc, ptr @nv50_clk_prog, ptr @nv50_clk_tidy, ptr null, i32 0, [6 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 1, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 15, i8 -1, i8 0, ptr @.str.12, i32 1000 }, %struct.nvkm_domain { i32 17, i8 -1, i8 0, ptr @.str.13, i32 1000 }, %struct.nvkm_domain { i32 18, i8 -1, i8 0, ptr @.str.14, i32 1000 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, [32 x i8] zeroinitializer }, align 32
@switch.table.nv50_clk_new_ = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 18432, i32 18176, i32 18432, i32 18176, i32 18432], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8, i64 15, i64 17, i64 18, i64 27, i64 28]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32, i64 48]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 32768, i64 49152]
@__sancov_gen_cov_switch_values.20 = internal global [10 x i64] [i64 8, i64 32, i64 80, i64 132, i64 134, i64 146, i64 148, i64 150, i64 152, i64 160]
@__sancov_gen_cov_switch_values.21 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 7, i64 8, i64 9, i64 10, i64 14]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [10 x i64] [i64 8, i64 32, i64 80, i64 132, i64 134, i64 146, i64 148, i64 150, i64 152, i64 160]
@__sancov_gen_cov_switch_values.25 = internal global [10 x i64] [i64 8, i64 32, i64 80, i64 132, i64 134, i64 146, i64 148, i64 150, i64 152, i64 160]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 134217728, i64 201326592]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 32, i64 16392, i64 16416, i64 16424, i64 16432, i64 59408]
@__sancov_gen_cov_switch_values.28 = internal global [10 x i64] [i64 8, i64 32, i64 80, i64 132, i64 134, i64 146, i64 148, i64 150, i64 152, i64 160]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 321, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 147, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 69, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 97, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 551, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 552, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 553, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant [9 x i8] c"nv50_clk\00", align 1
@___asan_gen_.84 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 543, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [27 x i8] c"switch.table.nv50_clk_new_\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @nv50_clk_read._entry, ptr @nv50_clk_read._entry_ptr, ptr @read_pll_ref._entry, ptr @read_pll_ref._entry_ptr, ptr @read_pll_src._entry, ptr @read_pll_src._entry.10, ptr @read_pll_src._entry_ptr, ptr @read_pll_src._entry_ptr.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @nv50_clk, ptr @switch.table.nv50_clk_new_], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_clk_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pll_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pll_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_pll_src._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_clk to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nv50_clk_new_ to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_clk_read(ptr noundef %base, i32 noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 49216
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %5 = zext i32 %src to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %src, label %entry.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %sw.bb7
    i32 3, label %sw.bb12
    i32 4, label %sw.bb16
    i32 8, label %sw.bb20
    i32 15, label %sw.bb27
    i32 17, label %sw.bb50
    i32 18, label %sw.bb77
    i32 27, label %sw.bb106
    i32 28, label %sw.bb155
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %crystal = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %crystal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crystal, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 1) #6
  %conv = sext i32 %call9 to i64
  %mul = mul nsw i64 %conv, 27778
  %8 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %mul) #9, !srcloc !41
  %9 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %mul, i64 %8) #9, !srcloc !42
  %div1581.i.i = lshr i64 %9, 11
  %conv11 = trunc i64 %div1581.i.i to i32
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 2) #6
  %mul15 = mul i32 %call14, 3
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 2) #6
  %mul19 = mul i32 %call18, 3
  %div = sdiv i32 %mul19, 2
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  %and = and i32 %4, 805306368
  %10 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %and, label %sw.bb20.do.body_crit_edge [
    i32 0, label %sw.bb21
    i32 805306368, label %sw.bb20.sw.bb24_crit_edge
    i32 536870912, label %sw.bb20.sw.bb24_crit_edge333
  ]

sw.bb20.sw.bb24_crit_edge333:                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24

sw.bb20.sw.bb24_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24

sw.bb20.do.body_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb21:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 1) #6
  br label %cleanup

sw.bb24:                                          ; preds = %sw.bb20.sw.bb24_crit_edge, %sw.bb20.sw.bb24_crit_edge333
  %call26 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 2) #6
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  %and28 = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool.not = icmp eq i32 %and28, 0
  br i1 %tobool.not, label %if.then, label %sw.bb27.if.end_crit_edge

sw.bb27.if.end_crit_edge:                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr31 = getelementptr i8, ptr %12, i32 16424
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  %and34 = lshr i32 %13, 16
  %shr = and i32 %and34, 7
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb27.if.end_crit_edge
  %P.0 = phi i32 [ 0, %sw.bb27.if.end_crit_edge ], [ %shr, %if.then ]
  %and35 = and i32 %4, 3
  %14 = zext i32 %and35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %and35, label %if.end.unreachabledefault [
    i32 0, label %sw.bb36
    i32 1, label %sw.bb40
    i32 2, label %sw.bb43
    i32 3, label %sw.bb46
  ]

sw.bb36:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 0) #6
  %shr39 = ashr i32 %call38, %P.0
  br label %cleanup

sw.bb40:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 28) #6
  br label %cleanup

sw.bb43:                                          ; preds = %if.end
  %15 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device3, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 49216
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %20 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %21, i32 16416
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  %23 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %24, i32 16420
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  %call14.i = tail call fastcc i32 @read_pll_ref(ptr noundef %base, i32 noundef 16416) #6
  %shr.i = lshr i32 %25, 24
  %and21.i = lshr i32 %25, 16
  %shr22.i = and i32 %and21.i, 255
  %and25.i = and i32 %25, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool27.not.i = icmp sgt i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool29.not.i = icmp eq i32 %and25.i, 0
  %or.cond65.i = select i1 %tobool27.not.i, i1 true, i1 %tobool29.not.i
  br i1 %or.cond65.i, label %sw.bb43.read_pll.exit_crit_edge, label %if.then30.i

sw.bb43.read_pll.exit_crit_edge:                  ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pll.exit

if.then30.i:                                      ; preds = %sw.bb43
  %and23.i = lshr i32 %25, 8
  %shr24.i = and i32 %and23.i, 255
  %mul.i = mul i32 %call14.i, %shr24.i
  %div.i = udiv i32 %mul.i, %and25.i
  %and31.i = and i32 %22, 1073742080
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %and31.i)
  %cmp32.i = icmp eq i32 %and31.i, 1073741824
  br i1 %cmp32.i, label %if.then33.i, label %if.then30.i.read_pll.exit_crit_edge

if.then30.i.read_pll.exit_crit_edge:              ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pll.exit

if.then33.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr22.i)
  %tobool34.not.i = icmp eq i32 %shr22.i, 0
  br i1 %tobool34.not.i, label %if.then33.i.read_pll.exit_crit_edge, label %if.then35.i

if.then33.i.read_pll.exit_crit_edge:              ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pll.exit

if.then35.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul36.i = mul i32 %div.i, %shr.i
  %div37.i = udiv i32 %mul36.i, %shr22.i
  br label %read_pll.exit

read_pll.exit:                                    ; preds = %if.then35.i, %if.then33.i.read_pll.exit_crit_edge, %if.then30.i.read_pll.exit_crit_edge, %sw.bb43.read_pll.exit_crit_edge
  %retval.0.i = phi i32 [ %div37.i, %if.then35.i ], [ %div.i, %if.then30.i.read_pll.exit_crit_edge ], [ 0, %sw.bb43.read_pll.exit_crit_edge ], [ 0, %if.then33.i.read_pll.exit_crit_edge ]
  %shr45 = lshr i32 %retval.0.i, %P.0
  br label %cleanup

sw.bb46:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call fastcc i32 @read_pll(ptr noundef %base, i32 noundef 16424)
  %shr48 = lshr i32 %call47, %P.0
  br label %cleanup

if.end.unreachabledefault:                        ; preds = %if.end
  unreachable

sw.bb50:                                          ; preds = %entry
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr53 = getelementptr i8, ptr %27, i32 16416
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  %and56 = lshr i32 %28, 16
  %shr57 = and i32 %and56, 7
  %and58 = and i32 %4, 48
  %29 = zext i32 %and58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and58, label %sw.bb50.do.body_crit_edge [
    i32 0, label %sw.bb59
    i32 48, label %sw.bb73
    i32 32, label %sw.bb70
  ]

sw.bb50.do.body_crit_edge:                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb59:                                          ; preds = %sw.bb50
  %and60 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end66, label %if.then62

if.then62:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 8) #6
  %shr65 = ashr i32 %call64, %shr57
  br label %cleanup

if.end66:                                         ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  %call68 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 0) #6
  %shr69 = ashr i32 %call68, %shr57
  br label %cleanup

sw.bb70:                                          ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #8
  %call71 = tail call fastcc i32 @read_pll(ptr noundef %base, i32 noundef 16424)
  %shr72 = lshr i32 %call71, %shr57
  br label %cleanup

sw.bb73:                                          ; preds = %sw.bb50
  %30 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device3, align 4
  %pri.i262 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %pri.i262 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri.i262, align 4
  %add.ptr.i263 = getelementptr i8, ptr %33, i32 49216
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i263) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %35 = ptrtoint ptr %pri.i262 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri.i262, align 4
  %add.ptr5.i264 = getelementptr i8, ptr %36, i32 16416
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i264) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  %38 = ptrtoint ptr %pri.i262 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri.i262, align 4
  %add.ptr11.i265 = getelementptr i8, ptr %39, i32 16420
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i265) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  %call14.i266 = tail call fastcc i32 @read_pll_ref(ptr noundef %base, i32 noundef 16416) #6
  %shr.i269 = lshr i32 %40, 24
  %and21.i270 = lshr i32 %40, 16
  %shr22.i271 = and i32 %and21.i270, 255
  %and25.i272 = and i32 %40, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %tobool27.not.i273 = icmp sgt i32 %37, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i272)
  %tobool29.not.i274 = icmp eq i32 %and25.i272, 0
  %or.cond65.i275 = select i1 %tobool27.not.i273, i1 true, i1 %tobool29.not.i274
  br i1 %or.cond65.i275, label %sw.bb73.read_pll.exit289_crit_edge, label %if.then30.i282

sw.bb73.read_pll.exit289_crit_edge:               ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pll.exit289

if.then30.i282:                                   ; preds = %sw.bb73
  %and23.i276 = lshr i32 %40, 8
  %shr24.i277 = and i32 %and23.i276, 255
  %mul.i278 = mul i32 %call14.i266, %shr24.i277
  %div.i279 = udiv i32 %mul.i278, %and25.i272
  %and31.i280 = and i32 %37, 1073742080
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %and31.i280)
  %cmp32.i281 = icmp eq i32 %and31.i280, 1073741824
  br i1 %cmp32.i281, label %if.then33.i284, label %if.then30.i282.read_pll.exit289_crit_edge

if.then30.i282.read_pll.exit289_crit_edge:        ; preds = %if.then30.i282
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pll.exit289

if.then33.i284:                                   ; preds = %if.then30.i282
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr22.i271)
  %tobool34.not.i283 = icmp eq i32 %shr22.i271, 0
  br i1 %tobool34.not.i283, label %if.then33.i284.read_pll.exit289_crit_edge, label %if.then35.i287

if.then33.i284.read_pll.exit289_crit_edge:        ; preds = %if.then33.i284
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pll.exit289

if.then35.i287:                                   ; preds = %if.then33.i284
  call void @__sanitizer_cov_trace_pc() #8
  %mul36.i285 = mul i32 %div.i279, %shr.i269
  %div37.i286 = udiv i32 %mul36.i285, %shr22.i271
  br label %read_pll.exit289

read_pll.exit289:                                 ; preds = %if.then35.i287, %if.then33.i284.read_pll.exit289_crit_edge, %if.then30.i282.read_pll.exit289_crit_edge, %sw.bb73.read_pll.exit289_crit_edge
  %retval.0.i288 = phi i32 [ %div37.i286, %if.then35.i287 ], [ %div.i279, %if.then30.i282.read_pll.exit289_crit_edge ], [ 0, %sw.bb73.read_pll.exit289_crit_edge ], [ 0, %if.then33.i284.read_pll.exit289_crit_edge ]
  %shr75 = lshr i32 %retval.0.i288, %shr57
  br label %cleanup

sw.bb77:                                          ; preds = %entry
  %41 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri, align 4
  %add.ptr80 = getelementptr i8, ptr %42, i32 16392
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %and83 = lshr i32 %43, 16
  %shr84 = and i32 %and83, 7
  %44 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri, align 4
  %add.ptr87 = getelementptr i8, ptr %45, i32 16392
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %and90 = and i32 %46, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.else, label %if.then92

if.then92:                                        ; preds = %sw.bb77
  %47 = trunc i32 %4 to i16
  %trunc = and i16 %47, -16384
  %48 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %trunc, label %if.then92.do.body_crit_edge [
    i16 0, label %sw.bb94
    i16 -32768, label %if.then92.sw.bb98_crit_edge
    i16 -16384, label %if.then92.sw.bb98_crit_edge334
  ]

if.then92.sw.bb98_crit_edge334:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb98

if.then92.sw.bb98_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb98

if.then92.do.body_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb94:                                          ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  %call96 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 0) #6
  %shr97 = ashr i32 %call96, %shr84
  br label %cleanup

sw.bb98:                                          ; preds = %if.then92.sw.bb98_crit_edge, %if.then92.sw.bb98_crit_edge334
  %call100 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 1) #6
  %shr101 = ashr i32 %call100, %shr84
  br label %cleanup

if.else:                                          ; preds = %sw.bb77
  %49 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device3, align 4
  %pri.i291 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %pri.i291 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri.i291, align 4
  %add.ptr.i292 = getelementptr i8, ptr %52, i32 49216
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i292) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %54 = ptrtoint ptr %pri.i291 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pri.i291, align 4
  %add.ptr5.i293 = getelementptr i8, ptr %55, i32 16392
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i293) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  %57 = ptrtoint ptr %pri.i291 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri.i291, align 4
  %add.ptr11.i294 = getelementptr i8, ptr %58, i32 16396
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i294) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  %call14.i295 = tail call fastcc i32 @read_pll_ref(ptr noundef %base, i32 noundef 16392) #6
  %shr.i298 = lshr i32 %59, 24
  %and21.i299 = lshr i32 %59, 16
  %shr22.i300 = and i32 %and21.i299, 255
  %and25.i301 = and i32 %59, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %tobool27.not.i302 = icmp sgt i32 %56, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i301)
  %tobool29.not.i303 = icmp eq i32 %and25.i301, 0
  %or.cond65.i304 = select i1 %tobool27.not.i302, i1 true, i1 %tobool29.not.i303
  br i1 %or.cond65.i304, label %if.else.read_pll.exit318_crit_edge, label %if.then30.i311

if.else.read_pll.exit318_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pll.exit318

if.then30.i311:                                   ; preds = %if.else
  %and23.i305 = lshr i32 %59, 8
  %shr24.i306 = and i32 %and23.i305, 255
  %mul.i307 = mul i32 %call14.i295, %shr24.i306
  %div.i308 = udiv i32 %mul.i307, %and25.i301
  %and31.i309 = and i32 %56, 1073742080
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %and31.i309)
  %cmp32.i310 = icmp eq i32 %and31.i309, 1073741824
  br i1 %cmp32.i310, label %if.then33.i313, label %if.then30.i311.read_pll.exit318_crit_edge

if.then30.i311.read_pll.exit318_crit_edge:        ; preds = %if.then30.i311
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pll.exit318

if.then33.i313:                                   ; preds = %if.then30.i311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr22.i300)
  %tobool34.not.i312 = icmp eq i32 %shr22.i300, 0
  br i1 %tobool34.not.i312, label %if.then33.i313.read_pll.exit318_crit_edge, label %if.then35.i316

if.then33.i313.read_pll.exit318_crit_edge:        ; preds = %if.then33.i313
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pll.exit318

if.then35.i316:                                   ; preds = %if.then33.i313
  call void @__sanitizer_cov_trace_pc() #8
  %mul36.i314 = mul i32 %div.i308, %shr.i298
  %div37.i315 = udiv i32 %mul36.i314, %shr22.i300
  br label %read_pll.exit318

read_pll.exit318:                                 ; preds = %if.then35.i316, %if.then33.i313.read_pll.exit318_crit_edge, %if.then30.i311.read_pll.exit318_crit_edge, %if.else.read_pll.exit318_crit_edge
  %retval.0.i317 = phi i32 [ %div37.i315, %if.then35.i316 ], [ %div.i308, %if.then30.i311.read_pll.exit318_crit_edge ], [ 0, %if.else.read_pll.exit318_crit_edge ], [ 0, %if.then33.i313.read_pll.exit318_crit_edge ]
  %shr104 = lshr i32 %retval.0.i317, %shr84
  br label %cleanup

sw.bb106:                                         ; preds = %entry
  %60 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device3, align 4
  %chipset.i = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 16
  %62 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %chipset.i, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %63, label %sw.bb106.read_div.exit_crit_edge [
    i32 80, label %sw.bb106.sw.bb.i_crit_edge
    i32 132, label %sw.bb106.sw.bb.i_crit_edge335
    i32 134, label %sw.bb106.sw.bb.i_crit_edge336
    i32 152, label %sw.bb106.sw.bb.i_crit_edge337
    i32 160, label %sw.bb106.sw.bb.i_crit_edge338
    i32 146, label %sw.bb106.sw.bb2.i_crit_edge
    i32 148, label %sw.bb106.sw.bb2.i_crit_edge339
    i32 150, label %sw.bb106.sw.bb2.i_crit_edge340
  ]

sw.bb106.sw.bb2.i_crit_edge340:                   ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

sw.bb106.sw.bb2.i_crit_edge339:                   ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

sw.bb106.sw.bb2.i_crit_edge:                      ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

sw.bb106.sw.bb.i_crit_edge338:                    ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb106.sw.bb.i_crit_edge337:                    ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb106.sw.bb.i_crit_edge336:                    ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb106.sw.bb.i_crit_edge335:                    ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb106.sw.bb.i_crit_edge:                       ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb106.read_div.exit_crit_edge:                 ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_div.exit

sw.bb.i:                                          ; preds = %sw.bb106.sw.bb.i_crit_edge, %sw.bb106.sw.bb.i_crit_edge335, %sw.bb106.sw.bb.i_crit_edge336, %sw.bb106.sw.bb.i_crit_edge337, %sw.bb106.sw.bb.i_crit_edge338
  %pri.i319 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 11
  %65 = ptrtoint ptr %pri.i319 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri.i319, align 4
  %add.ptr.i320 = getelementptr i8, ptr %66, i32 18176
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i320) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  br label %read_div.exit

sw.bb2.i:                                         ; preds = %sw.bb106.sw.bb2.i_crit_edge, %sw.bb106.sw.bb2.i_crit_edge339, %sw.bb106.sw.bb2.i_crit_edge340
  %pri4.i = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 11
  %68 = ptrtoint ptr %pri4.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pri4.i, align 4
  %add.ptr5.i321 = getelementptr i8, ptr %69, i32 18432
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i321) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  br label %read_div.exit

read_div.exit:                                    ; preds = %sw.bb2.i, %sw.bb.i, %sw.bb106.read_div.exit_crit_edge
  %retval.0.i322 = phi i32 [ %70, %sw.bb2.i ], [ %67, %sw.bb.i ], [ 0, %sw.bb106.read_div.exit_crit_edge ]
  %and108 = lshr i32 %retval.0.i322, 8
  %shr109 = and i32 %and108, 7
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %71 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %chipset, align 4
  %73 = add i32 %72, -132
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 31)
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %74, label %read_div.exit.do.body_crit_edge [
    i32 0, label %read_div.exit.sw.bb110_crit_edge
    i32 1, label %read_div.exit.sw.bb110_crit_edge341
    i32 7, label %read_div.exit.sw.bb110_crit_edge342
    i32 8, label %read_div.exit.sw.bb110_crit_edge343
    i32 9, label %read_div.exit.sw.bb110_crit_edge344
    i32 14, label %read_div.exit.sw.bb110_crit_edge345
    i32 10, label %sw.bb138
  ]

read_div.exit.sw.bb110_crit_edge345:              ; preds = %read_div.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb110

read_div.exit.sw.bb110_crit_edge344:              ; preds = %read_div.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb110

read_div.exit.sw.bb110_crit_edge343:              ; preds = %read_div.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb110

read_div.exit.sw.bb110_crit_edge342:              ; preds = %read_div.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb110

read_div.exit.sw.bb110_crit_edge341:              ; preds = %read_div.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb110

read_div.exit.sw.bb110_crit_edge:                 ; preds = %read_div.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb110

read_div.exit.do.body_crit_edge:                  ; preds = %read_div.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb110:                                         ; preds = %read_div.exit.sw.bb110_crit_edge, %read_div.exit.sw.bb110_crit_edge341, %read_div.exit.sw.bb110_crit_edge342, %read_div.exit.sw.bb110_crit_edge343, %read_div.exit.sw.bb110_crit_edge344, %read_div.exit.sw.bb110_crit_edge345
  %and111 = lshr i32 %4, 10
  %76 = and i32 %and111, 3
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %76, label %sw.bb110.unreachabledefault [
    i32 0, label %sw.bb112
    i32 1, label %sw.bb110.cleanup_crit_edge
    i32 2, label %sw.bb124
    i32 3, label %sw.bb133
  ]

sw.bb110.cleanup_crit_edge:                       ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb112:                                         ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %72)
  %cmp = icmp eq i32 %72, 160
  br i1 %cmp, label %if.then115, label %if.end119

if.then115:                                       ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #8
  %call117 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 15) #6
  %shr118 = ashr i32 %call117, %shr109
  br label %cleanup

if.end119:                                        ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #8
  %call121 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 0) #6
  %shr122 = ashr i32 %call121, %shr109
  br label %cleanup

sw.bb124:                                         ; preds = %sw.bb110
  %and125 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.end130, label %if.then127

if.then127:                                       ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #8
  %call128 = tail call fastcc i32 @read_pll(ptr noundef %base, i32 noundef 16424)
  %shr129 = lshr i32 %call128, %shr109
  br label %cleanup

if.end130:                                        ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #8
  %call131 = tail call fastcc i32 @read_pll(ptr noundef %base, i32 noundef 16432)
  %shr132 = lshr i32 %call131, %shr109
  br label %cleanup

sw.bb133:                                         ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #8
  %call135 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 15) #6
  %shr136 = ashr i32 %call135, %shr109
  br label %cleanup

sw.bb110.unreachabledefault:                      ; preds = %sw.bb110
  unreachable

sw.bb138:                                         ; preds = %read_div.exit
  %and139 = lshr i32 %4, 10
  %78 = and i32 %and139, 3
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %78, label %sw.bb138.unreachabledefault [
    i32 0, label %sw.bb140
    i32 1, label %sw.bb138.cleanup_crit_edge
    i32 2, label %sw.bb145
    i32 3, label %sw.bb149
  ]

sw.bb138.cleanup_crit_edge:                       ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb140:                                         ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #8
  %call142 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 15) #6
  %shr143 = ashr i32 %call142, %shr109
  br label %cleanup

sw.bb145:                                         ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #8
  %call147 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 4) #6
  %shr148 = ashr i32 %call147, %shr109
  br label %cleanup

sw.bb149:                                         ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #8
  %call151 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 18) #6
  %shr152 = ashr i32 %call151, %shr109
  br label %cleanup

sw.bb138.unreachabledefault:                      ; preds = %sw.bb138
  unreachable

sw.bb155:                                         ; preds = %entry
  %chipset156 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %80 = ptrtoint ptr %chipset156 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %chipset156, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %81, label %sw.bb155.do.body_crit_edge [
    i32 80, label %sw.bb155.sw.bb157_crit_edge
    i32 160, label %sw.bb155.sw.bb157_crit_edge346
    i32 132, label %sw.bb155.sw.bb160_crit_edge
    i32 134, label %sw.bb155.sw.bb160_crit_edge347
    i32 146, label %sw.bb155.sw.bb160_crit_edge348
    i32 148, label %sw.bb155.sw.bb160_crit_edge349
    i32 150, label %sw.bb155.sw.bb160_crit_edge350
    i32 152, label %sw.bb155.sw.bb160_crit_edge351
  ]

sw.bb155.sw.bb160_crit_edge351:                   ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb160

sw.bb155.sw.bb160_crit_edge350:                   ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb160

sw.bb155.sw.bb160_crit_edge349:                   ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb160

sw.bb155.sw.bb160_crit_edge348:                   ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb160

sw.bb155.sw.bb160_crit_edge347:                   ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb160

sw.bb155.sw.bb160_crit_edge:                      ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb160

sw.bb155.sw.bb157_crit_edge346:                   ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb157

sw.bb155.sw.bb157_crit_edge:                      ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb157

sw.bb155.do.body_crit_edge:                       ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb157:                                         ; preds = %sw.bb155.sw.bb157_crit_edge, %sw.bb155.sw.bb157_crit_edge346
  %call158 = tail call fastcc i32 @read_pll(ptr noundef %base, i32 noundef 59408)
  %shr159 = lshr i32 %call158, 2
  br label %cleanup

sw.bb160:                                         ; preds = %sw.bb155.sw.bb160_crit_edge, %sw.bb155.sw.bb160_crit_edge347, %sw.bb155.sw.bb160_crit_edge348, %sw.bb155.sw.bb160_crit_edge349, %sw.bb155.sw.bb160_crit_edge350, %sw.bb155.sw.bb160_crit_edge351
  %83 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %device3, align 4
  %chipset.i324 = getelementptr inbounds %struct.nvkm_device, ptr %84, i32 0, i32 16
  %85 = ptrtoint ptr %chipset.i324 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %chipset.i324, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %86, label %sw.bb160.read_div.exit332_crit_edge [
    i32 80, label %sw.bb160.sw.bb.i327_crit_edge
    i32 132, label %sw.bb160.sw.bb.i327_crit_edge352
    i32 134, label %sw.bb160.sw.bb.i327_crit_edge353
    i32 152, label %sw.bb160.sw.bb.i327_crit_edge354
    i32 160, label %sw.bb160.sw.bb.i327_crit_edge355
    i32 146, label %sw.bb160.sw.bb2.i330_crit_edge
    i32 148, label %sw.bb160.sw.bb2.i330_crit_edge356
    i32 150, label %sw.bb160.sw.bb2.i330_crit_edge357
  ]

sw.bb160.sw.bb2.i330_crit_edge357:                ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i330

sw.bb160.sw.bb2.i330_crit_edge356:                ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i330

sw.bb160.sw.bb2.i330_crit_edge:                   ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i330

sw.bb160.sw.bb.i327_crit_edge355:                 ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i327

sw.bb160.sw.bb.i327_crit_edge354:                 ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i327

sw.bb160.sw.bb.i327_crit_edge353:                 ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i327

sw.bb160.sw.bb.i327_crit_edge352:                 ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i327

sw.bb160.sw.bb.i327_crit_edge:                    ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i327

sw.bb160.read_div.exit332_crit_edge:              ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_div.exit332

sw.bb.i327:                                       ; preds = %sw.bb160.sw.bb.i327_crit_edge, %sw.bb160.sw.bb.i327_crit_edge352, %sw.bb160.sw.bb.i327_crit_edge353, %sw.bb160.sw.bb.i327_crit_edge354, %sw.bb160.sw.bb.i327_crit_edge355
  %pri.i325 = getelementptr inbounds %struct.nvkm_device, ptr %84, i32 0, i32 11
  %88 = ptrtoint ptr %pri.i325 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pri.i325, align 4
  %add.ptr.i326 = getelementptr i8, ptr %89, i32 18176
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i326) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  br label %read_div.exit332

sw.bb2.i330:                                      ; preds = %sw.bb160.sw.bb2.i330_crit_edge, %sw.bb160.sw.bb2.i330_crit_edge356, %sw.bb160.sw.bb2.i330_crit_edge357
  %pri4.i328 = getelementptr inbounds %struct.nvkm_device, ptr %84, i32 0, i32 11
  %91 = ptrtoint ptr %pri4.i328 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pri4.i328, align 4
  %add.ptr5.i329 = getelementptr i8, ptr %92, i32 18432
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i329) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  br label %read_div.exit332

read_div.exit332:                                 ; preds = %sw.bb2.i330, %sw.bb.i327, %sw.bb160.read_div.exit332_crit_edge
  %retval.0.i331 = phi i32 [ %93, %sw.bb2.i330 ], [ %90, %sw.bb.i327 ], [ 0, %sw.bb160.read_div.exit332_crit_edge ]
  %and164 = and i32 %4, 201326592
  %94 = zext i32 %and164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %and164, label %read_div.exit332.do.body_crit_edge [
    i32 0, label %sw.bb165
    i32 201326592, label %sw.bb171
    i32 134217728, label %sw.bb168
  ]

read_div.exit332.do.body_crit_edge:               ; preds = %read_div.exit332
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb165:                                         ; preds = %read_div.exit332
  call void @__sanitizer_cov_trace_pc() #8
  %call167 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 1) #6
  br label %cleanup

sw.bb168:                                         ; preds = %read_div.exit332
  call void @__sanitizer_cov_trace_pc() #8
  %call170 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 2) #6
  br label %cleanup

sw.bb171:                                         ; preds = %read_div.exit332
  call void @__sanitizer_cov_trace_pc() #8
  %and162 = and i32 %retval.0.i331, 7
  %call173 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 3) #6
  %shr174 = ashr i32 %call173, %and162
  br label %cleanup

do.body:                                          ; preds = %read_div.exit332.do.body_crit_edge, %sw.bb155.do.body_crit_edge, %read_div.exit.do.body_crit_edge, %if.then92.do.body_crit_edge, %sw.bb50.do.body_crit_edge, %sw.bb20.do.body_crit_edge, %entry.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 5
  %95 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %96)
  %cmp179 = icmp ugt i32 %96, 3
  br i1 %cmp179, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %100, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %src, i32 noundef %4) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %sw.bb171, %sw.bb168, %sw.bb165, %sw.bb157, %sw.bb149, %sw.bb145, %sw.bb140, %sw.bb138.cleanup_crit_edge, %sw.bb133, %if.end130, %if.then127, %if.end119, %if.then115, %sw.bb110.cleanup_crit_edge, %read_pll.exit318, %sw.bb98, %sw.bb94, %read_pll.exit289, %sw.bb70, %if.end66, %if.then62, %sw.bb46, %read_pll.exit, %sw.bb40, %sw.bb36, %sw.bb24, %sw.bb21, %sw.bb16, %sw.bb12, %sw.bb7, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call170, %sw.bb168 ], [ %shr174, %sw.bb171 ], [ %call167, %sw.bb165 ], [ %shr159, %sw.bb157 ], [ %shr152, %sw.bb149 ], [ %shr148, %sw.bb145 ], [ %shr143, %sw.bb140 ], [ %shr136, %sw.bb133 ], [ %shr129, %if.then127 ], [ %shr132, %if.end130 ], [ %shr118, %if.then115 ], [ %shr122, %if.end119 ], [ %shr101, %sw.bb98 ], [ %shr97, %sw.bb94 ], [ %shr104, %read_pll.exit318 ], [ %shr72, %sw.bb70 ], [ %shr75, %read_pll.exit289 ], [ %shr65, %if.then62 ], [ %shr69, %if.end66 ], [ %shr48, %sw.bb46 ], [ %shr45, %read_pll.exit ], [ %call42, %sw.bb40 ], [ %shr39, %sw.bb36 ], [ %call26, %sw.bb24 ], [ %call23, %sw.bb21 ], [ %div, %sw.bb16 ], [ %mul15, %sw.bb12 ], [ %conv11, %sw.bb7 ], [ %7, %sw.bb ], [ 100000, %entry.cleanup_crit_edge ], [ 0, %sw.bb110.cleanup_crit_edge ], [ 0, %sw.bb138.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_pll(ptr noundef %clk, i32 noundef %base) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 49216
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 %base
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add10 = add i32 %base, 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 %add10
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  %call14 = tail call fastcc i32 @read_pll_ref(ptr noundef %clk, i32 noundef %base)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16424, i32 %base)
  %cmp = icmp ne i32 %base, 16424
  %and = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then:                                          ; preds = %entry
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %12)
  %cmp15.not = icmp eq i32 %12, 160
  br i1 %cmp15.not, label %if.then.if.end19_crit_edge, label %if.then16

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 @nvkm_clk_read(ptr noundef %clk, i32 noundef 28) #6
  br label %cleanup

if.end19:                                         ; preds = %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %shr = lshr i32 %10, 24
  %and21 = lshr i32 %10, 16
  %shr22 = and i32 %and21, 255
  %and25 = and i32 %10, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool27.not = icmp sgt i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool29.not = icmp eq i32 %and25, 0
  %or.cond65 = select i1 %tobool27.not, i1 true, i1 %tobool29.not
  br i1 %or.cond65, label %if.end19.cleanup_crit_edge, label %if.then30

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30:                                        ; preds = %if.end19
  %and23 = lshr i32 %10, 8
  %shr24 = and i32 %and23, 255
  %mul = mul i32 %call14, %shr24
  %div = udiv i32 %mul, %and25
  %and31 = and i32 %7, 1073742080
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %and31)
  %cmp32 = icmp eq i32 %and31, 1073741824
  br i1 %cmp32, label %if.then33, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr22)
  %tobool34.not = icmp eq i32 %shr22, 0
  br i1 %tobool34.not, label %if.then33.cleanup_crit_edge, label %if.then35

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %mul36 = mul i32 %div, %shr
  %div37 = udiv i32 %mul36, %shr22
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.then33.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then16
  %retval.0 = phi i32 [ %call18, %if.then16 ], [ %div37, %if.then35 ], [ %div, %if.then30.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %if.then33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_clk_calc(ptr noundef %base, ptr nocapture noundef readonly %cstate) #0 align 64 {
entry:
  %pll.i648 = alloca %struct.nvbios_pll, align 4
  %pll.i = alloca %struct.nvbios_pll, align 4
  %N = alloca i32, align 4
  %M = alloca i32, align 4
  %P1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwsq1 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1
  %subdev3 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1
  %device4 = getelementptr inbounds %struct.nvkm_clk, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device4, align 4
  %arrayidx = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 17
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 15
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 27
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.nvkm_cstate, ptr %cstate, i32 0, i32 2, i32 28
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #6
  %10 = ptrtoint ptr %N to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %N, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M) #6
  %11 = ptrtoint ptr %M to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %M, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %P1) #6
  %12 = ptrtoint ptr %P1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %P1, align 4, !annotation !52
  %hwsq.i = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 0, i32 1
  %call.i = tail call i32 @nvkm_hwsq_init(ptr noundef %subdev3, ptr noundef %hwsq.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sequence.i = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sequence.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %sequence.i, align 4
  %15 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %subdev3, ptr %hwsq1, align 4
  %r_fifo = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %r_fifo to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc.i, ptr %r_fifo, align 4
  %data2.i = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 1, i32 5
  %17 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %data2.i, align 4
  %mask3.i = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 1, i32 4
  %18 = ptrtoint ptr %mask3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not16.i = icmp eq i32 %19, 0
  br i1 %cmp.not16.i, label %if.end.hwsq_wr32.exit_crit_edge, label %for.body.lr.ph.i

if.end.hwsq_wr32.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_wr32.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %addr.i = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 1, i32 2
  %stride.i = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i254.for.body.i_crit_edge, %for.body.lr.ph.i
  %off.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %if.end.i254.for.body.i_crit_edge ]
  %mask.017.i = phi i32 [ %19, %for.body.lr.ph.i ], [ %shr.i, %if.end.i254.for.body.i_crit_edge ]
  %and.i = and i32 %mask.017.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i253 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i253, label %for.body.i.if.end.i254_crit_edge, label %if.then.i

for.body.i.if.end.i254_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i254

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwsq.i, align 4
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 4
  %add.i = add i32 %23, %off.018.i
  %24 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data2.i, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %21, i32 noundef %add.i, i32 noundef %25) #6
  br label %if.end.i254

if.end.i254:                                      ; preds = %if.then.i, %for.body.i.if.end.i254_crit_edge
  %26 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stride.i, align 4
  %add5.i = add i32 %27, %off.018.i
  %shr.i = lshr i32 %mask.017.i, 1
  %cmp.not.i = icmp ult i32 %mask.017.i, 2
  br i1 %cmp.not.i, label %if.end.i254.hwsq_wr32.exit_crit_edge, label %if.end.i254.for.body.i_crit_edge

if.end.i254.for.body.i_crit_edge:                 ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i254.hwsq_wr32.exit_crit_edge:             ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_wr32.exit

hwsq_wr32.exit:                                   ; preds = %if.end.i254.hwsq_wr32.exit_crit_edge, %if.end.hwsq_wr32.exit_crit_edge
  %28 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hwsq.i, align 4
  tail call void @nvkm_hwsq_nsec(ptr noundef %29, i32 noundef 8000) #6
  %30 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hwsq.i, align 4
  tail call void @nvkm_hwsq_setf(ptr noundef %31, i8 noundef zeroext 16, i32 noundef 0) #6
  %32 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hwsq.i, align 4
  tail call void @nvkm_hwsq_wait(ptr noundef %33, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool16.not = icmp eq i32 %7, 0
  br i1 %tobool16.not, label %hwsq_wr32.exit.if.end51_crit_edge, label %if.then17

hwsq_wr32.exit.if.end51_crit_edge:                ; preds = %hwsq_wr32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then17:                                        ; preds = %hwsq_wr32.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp1.not.i = icmp ugt i32 %5, %7
  br i1 %cmp1.not.i, label %if.end.i260, label %if.then17.if.then.i258_crit_edge

if.then17.if.then.i258_crit_edge:                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i258

if.then.i258:                                     ; preds = %if.end.6.i.if.then.i258_crit_edge, %if.end.5.i.if.then.i258_crit_edge, %if.end.4.i.if.then.i258_crit_edge, %if.end.3.i.if.then.i258_crit_edge, %if.end.2.i.if.then.i258_crit_edge, %if.end.1.i.if.then.i258_crit_edge, %if.end.i260.if.then.i258_crit_edge, %if.then17.if.then.i258_crit_edge
  %clk0.026.lcssa.i = phi i32 [ %5, %if.then17.if.then.i258_crit_edge ], [ %shr.i259, %if.end.i260.if.then.i258_crit_edge ], [ %shr.1.i, %if.end.1.i.if.then.i258_crit_edge ], [ %shr.2.i, %if.end.2.i.if.then.i258_crit_edge ], [ %shr.3.i, %if.end.3.i.if.then.i258_crit_edge ], [ %shr.4.i, %if.end.4.i.if.then.i258_crit_edge ], [ %shr.5.i, %if.end.5.i.if.then.i258_crit_edge ], [ %shr.6.i, %if.end.6.i.if.then.i258_crit_edge ]
  %storemerge25.lcssa.i = phi i32 [ 0, %if.then17.if.then.i258_crit_edge ], [ 1, %if.end.i260.if.then.i258_crit_edge ], [ 2, %if.end.1.i.if.then.i258_crit_edge ], [ 3, %if.end.2.i.if.then.i258_crit_edge ], [ 4, %if.end.3.i.if.then.i258_crit_edge ], [ 5, %if.end.4.i.if.then.i258_crit_edge ], [ 6, %if.end.5.i.if.then.i258_crit_edge ], [ 7, %if.end.6.i.if.then.i258_crit_edge ]
  %34 = ptrtoint ptr %P1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge25.lcssa.i, ptr %P1, align 4
  %cond.i = zext i1 %cmp1.not.i to i32
  %shl.i = shl i32 %clk0.026.lcssa.i, %cond.i
  br label %for.end.i

if.end.i260:                                      ; preds = %if.then17
  %shr.i259 = lshr i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i259, i32 %7)
  %cmp1.not.1.i = icmp ugt i32 %shr.i259, %7
  br i1 %cmp1.not.1.i, label %if.end.1.i, label %if.end.i260.if.then.i258_crit_edge

if.end.i260.if.then.i258_crit_edge:               ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i258

if.end.1.i:                                       ; preds = %if.end.i260
  %shr.1.i = lshr i32 %5, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %7)
  %cmp1.not.2.i = icmp ugt i32 %shr.1.i, %7
  br i1 %cmp1.not.2.i, label %if.end.2.i, label %if.end.1.i.if.then.i258_crit_edge

if.end.1.i.if.then.i258_crit_edge:                ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i258

if.end.2.i:                                       ; preds = %if.end.1.i
  %shr.2.i = lshr i32 %5, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %7)
  %cmp1.not.3.i = icmp ugt i32 %shr.2.i, %7
  br i1 %cmp1.not.3.i, label %if.end.3.i, label %if.end.2.i.if.then.i258_crit_edge

if.end.2.i.if.then.i258_crit_edge:                ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i258

if.end.3.i:                                       ; preds = %if.end.2.i
  %shr.3.i = lshr i32 %5, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i, i32 %7)
  %cmp1.not.4.i = icmp ugt i32 %shr.3.i, %7
  br i1 %cmp1.not.4.i, label %if.end.4.i, label %if.end.3.i.if.then.i258_crit_edge

if.end.3.i.if.then.i258_crit_edge:                ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i258

if.end.4.i:                                       ; preds = %if.end.3.i
  %shr.4.i = lshr i32 %5, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4.i, i32 %7)
  %cmp1.not.5.i = icmp ugt i32 %shr.4.i, %7
  br i1 %cmp1.not.5.i, label %if.end.5.i, label %if.end.4.i.if.then.i258_crit_edge

if.end.4.i.if.then.i258_crit_edge:                ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i258

if.end.5.i:                                       ; preds = %if.end.4.i
  %shr.5.i = lshr i32 %5, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.5.i, i32 %7)
  %cmp1.not.6.i = icmp ugt i32 %shr.5.i, %7
  br i1 %cmp1.not.6.i, label %if.end.6.i, label %if.end.5.i.if.then.i258_crit_edge

if.end.5.i.if.then.i258_crit_edge:                ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i258

if.end.6.i:                                       ; preds = %if.end.5.i
  %shr.6.i = lshr i32 %5, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.6.i, i32 %7)
  %cmp1.not.7.i = icmp ugt i32 %shr.6.i, %7
  br i1 %cmp1.not.7.i, label %if.end.7.i, label %if.end.6.i.if.then.i258_crit_edge

if.end.6.i.if.then.i258_crit_edge:                ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i258

if.end.7.i:                                       ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr.7.i = lshr i32 %5, 8
  %35 = ptrtoint ptr %P1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8, ptr %P1, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.7.i, %if.then.i258
  %storemerge22.i = phi i32 [ %storemerge25.lcssa.i, %if.then.i258 ], [ 8, %if.end.7.i ]
  %clk0.020.i = phi i32 [ %clk0.026.lcssa.i, %if.then.i258 ], [ %shr.7.i, %if.end.7.i ]
  %clk1.0.i = phi i32 [ %shl.i, %if.then.i258 ], [ %5, %if.end.7.i ]
  %sub.i = sub i32 %7, %clk0.020.i
  %sub2.i = sub i32 %clk1.0.i, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub2.i)
  %cmp3.not.i = icmp ugt i32 %sub.i, %sub2.i
  br i1 %cmp3.not.i, label %if.end5.i, label %for.end.i.calc_div.exit_crit_edge

for.end.i.calc_div.exit_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_div.exit

if.end5.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add nsw i32 %storemerge22.i, -1
  %36 = ptrtoint ptr %P1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %dec.i, ptr %P1, align 4
  br label %calc_div.exit

calc_div.exit:                                    ; preds = %if.end5.i, %for.end.i.calc_div.exit_crit_edge
  %retval.0.i = phi i32 [ %clk1.0.i, %if.end5.i ], [ %clk0.020.i, %for.end.i.calc_div.exit_crit_edge ]
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 152, i32 %38)
  %cmp.not = icmp eq i32 %38, 152
  br i1 %cmp.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %calc_div.exit
  %39 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device4, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 49216
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %44 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %45, i32 16432
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  %47 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %48, i32 16436
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  %call14.i = tail call fastcc i32 @read_pll_ref(ptr noundef %base, i32 noundef 16432) #6
  %shr.i263 = lshr i32 %49, 24
  %and21.i = lshr i32 %49, 16
  %shr22.i = and i32 %and21.i, 255
  %and25.i = and i32 %49, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %tobool27.not.i = icmp sgt i32 %46, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool29.not.i = icmp eq i32 %and25.i, 0
  %or.cond65.i = select i1 %tobool27.not.i, i1 true, i1 %tobool29.not.i
  br i1 %or.cond65.i, label %if.then19.if.then.i270_crit_edge, label %if.then30.i

if.then19.if.then.i270_crit_edge:                 ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i270

if.then30.i:                                      ; preds = %if.then19
  %and23.i = lshr i32 %49, 8
  %shr24.i = and i32 %and23.i, 255
  %mul.i = mul i32 %call14.i, %shr24.i
  %div.i = udiv i32 %mul.i, %and25.i
  %and31.i = and i32 %46, 1073742080
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %and31.i)
  %cmp32.i = icmp eq i32 %and31.i, 1073741824
  br i1 %cmp32.i, label %if.then33.i, label %if.then30.i.if.end23_crit_edge

if.then30.i.if.end23_crit_edge:                   ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then33.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr22.i)
  %tobool34.not.i = icmp eq i32 %shr22.i, 0
  br i1 %tobool34.not.i, label %if.then33.i.if.then.i270_crit_edge, label %if.then35.i

if.then33.i.if.then.i270_crit_edge:               ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i270

if.then35.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul36.i = mul i32 %div.i, %shr.i263
  %div37.i = udiv i32 %mul36.i, %shr22.i
  br label %if.end23

if.else:                                          ; preds = %calc_div.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 4) #6
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then35.i, %if.then30.i.if.end23_crit_edge
  %out.0 = phi i32 [ %call22, %if.else ], [ %div37.i, %if.then35.i ], [ %div.i, %if.then30.i.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %out.0, i32 %7)
  %cmp1.not.i265 = icmp ugt i32 %out.0, %7
  br i1 %cmp1.not.i265, label %if.end.i273, label %if.end23.if.then.i270_crit_edge

if.end23.if.then.i270_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i270

if.then.i270:                                     ; preds = %if.end.6.i291.if.then.i270_crit_edge, %if.end.5.i288.if.then.i270_crit_edge, %if.end.4.i285.if.then.i270_crit_edge, %if.end.3.i282.if.then.i270_crit_edge, %if.end.2.i279.if.then.i270_crit_edge, %if.end.1.i276.if.then.i270_crit_edge, %if.end.i273.if.then.i270_crit_edge, %if.end23.if.then.i270_crit_edge, %if.then33.i.if.then.i270_crit_edge, %if.then19.if.then.i270_crit_edge
  %cmp1.not.i265796 = phi i32 [ 0, %if.end23.if.then.i270_crit_edge ], [ 1, %if.end.i273.if.then.i270_crit_edge ], [ 1, %if.end.1.i276.if.then.i270_crit_edge ], [ 1, %if.end.2.i279.if.then.i270_crit_edge ], [ 1, %if.end.3.i282.if.then.i270_crit_edge ], [ 1, %if.end.4.i285.if.then.i270_crit_edge ], [ 1, %if.end.5.i288.if.then.i270_crit_edge ], [ 1, %if.end.6.i291.if.then.i270_crit_edge ], [ 0, %if.then19.if.then.i270_crit_edge ], [ 0, %if.then33.i.if.then.i270_crit_edge ]
  %clk0.026.lcssa.i266 = phi i32 [ %out.0, %if.end23.if.then.i270_crit_edge ], [ %shr.i271, %if.end.i273.if.then.i270_crit_edge ], [ %shr.1.i274, %if.end.1.i276.if.then.i270_crit_edge ], [ %shr.2.i277, %if.end.2.i279.if.then.i270_crit_edge ], [ %shr.3.i280, %if.end.3.i282.if.then.i270_crit_edge ], [ %shr.4.i283, %if.end.4.i285.if.then.i270_crit_edge ], [ %shr.5.i286, %if.end.5.i288.if.then.i270_crit_edge ], [ %shr.6.i289, %if.end.6.i291.if.then.i270_crit_edge ], [ 0, %if.then19.if.then.i270_crit_edge ], [ 0, %if.then33.i.if.then.i270_crit_edge ]
  %storemerge25.lcssa.i267 = phi i32 [ 0, %if.end23.if.then.i270_crit_edge ], [ 1, %if.end.i273.if.then.i270_crit_edge ], [ 2, %if.end.1.i276.if.then.i270_crit_edge ], [ 3, %if.end.2.i279.if.then.i270_crit_edge ], [ 4, %if.end.3.i282.if.then.i270_crit_edge ], [ 5, %if.end.4.i285.if.then.i270_crit_edge ], [ 6, %if.end.5.i288.if.then.i270_crit_edge ], [ 7, %if.end.6.i291.if.then.i270_crit_edge ], [ 0, %if.then19.if.then.i270_crit_edge ], [ 0, %if.then33.i.if.then.i270_crit_edge ]
  %shl.i269 = shl i32 %clk0.026.lcssa.i266, %cmp1.not.i265796
  br label %for.end.i300

if.end.i273:                                      ; preds = %if.end23
  %shr.i271 = lshr i32 %out.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i271, i32 %7)
  %cmp1.not.1.i272 = icmp ugt i32 %shr.i271, %7
  br i1 %cmp1.not.1.i272, label %if.end.1.i276, label %if.end.i273.if.then.i270_crit_edge

if.end.i273.if.then.i270_crit_edge:               ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i270

if.end.1.i276:                                    ; preds = %if.end.i273
  %shr.1.i274 = lshr i32 %out.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i274, i32 %7)
  %cmp1.not.2.i275 = icmp ugt i32 %shr.1.i274, %7
  br i1 %cmp1.not.2.i275, label %if.end.2.i279, label %if.end.1.i276.if.then.i270_crit_edge

if.end.1.i276.if.then.i270_crit_edge:             ; preds = %if.end.1.i276
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i270

if.end.2.i279:                                    ; preds = %if.end.1.i276
  %shr.2.i277 = lshr i32 %out.0, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i277, i32 %7)
  %cmp1.not.3.i278 = icmp ugt i32 %shr.2.i277, %7
  br i1 %cmp1.not.3.i278, label %if.end.3.i282, label %if.end.2.i279.if.then.i270_crit_edge

if.end.2.i279.if.then.i270_crit_edge:             ; preds = %if.end.2.i279
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i270

if.end.3.i282:                                    ; preds = %if.end.2.i279
  %shr.3.i280 = lshr i32 %out.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i280, i32 %7)
  %cmp1.not.4.i281 = icmp ugt i32 %shr.3.i280, %7
  br i1 %cmp1.not.4.i281, label %if.end.4.i285, label %if.end.3.i282.if.then.i270_crit_edge

if.end.3.i282.if.then.i270_crit_edge:             ; preds = %if.end.3.i282
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i270

if.end.4.i285:                                    ; preds = %if.end.3.i282
  %shr.4.i283 = lshr i32 %out.0, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4.i283, i32 %7)
  %cmp1.not.5.i284 = icmp ugt i32 %shr.4.i283, %7
  br i1 %cmp1.not.5.i284, label %if.end.5.i288, label %if.end.4.i285.if.then.i270_crit_edge

if.end.4.i285.if.then.i270_crit_edge:             ; preds = %if.end.4.i285
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i270

if.end.5.i288:                                    ; preds = %if.end.4.i285
  %shr.5.i286 = lshr i32 %out.0, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.5.i286, i32 %7)
  %cmp1.not.6.i287 = icmp ugt i32 %shr.5.i286, %7
  br i1 %cmp1.not.6.i287, label %if.end.6.i291, label %if.end.5.i288.if.then.i270_crit_edge

if.end.5.i288.if.then.i270_crit_edge:             ; preds = %if.end.5.i288
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i270

if.end.6.i291:                                    ; preds = %if.end.5.i288
  %shr.6.i289 = lshr i32 %out.0, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.6.i289, i32 %7)
  %cmp1.not.7.i290 = icmp ugt i32 %shr.6.i289, %7
  br i1 %cmp1.not.7.i290, label %if.end.7.i293, label %if.end.6.i291.if.then.i270_crit_edge

if.end.6.i291.if.then.i270_crit_edge:             ; preds = %if.end.6.i291
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i270

if.end.7.i293:                                    ; preds = %if.end.6.i291
  call void @__sanitizer_cov_trace_pc() #8
  %shr.7.i292 = lshr i32 %out.0, 8
  br label %for.end.i300

for.end.i300:                                     ; preds = %if.end.7.i293, %if.then.i270
  %P2.0 = phi i32 [ 8, %if.end.7.i293 ], [ %storemerge25.lcssa.i267, %if.then.i270 ]
  %clk0.020.i295 = phi i32 [ %shr.7.i292, %if.end.7.i293 ], [ %clk0.026.lcssa.i266, %if.then.i270 ]
  %clk1.0.i296 = phi i32 [ %out.0, %if.end.7.i293 ], [ %shl.i269, %if.then.i270 ]
  %sub.i297 = sub i32 %7, %clk0.020.i295
  %sub2.i298 = sub i32 %clk1.0.i296, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i297, i32 %sub2.i298)
  %cmp3.not.i299 = icmp ugt i32 %sub.i297, %sub2.i298
  %dec.i301 = sext i1 %cmp3.not.i299 to i32
  %P2.1 = add nsw i32 %P2.0, %dec.i301
  %retval.0.i303 = select i1 %cmp3.not.i299, i32 %clk1.0.i296, i32 %clk0.020.i295
  %sub = sub i32 %7, %retval.0.i
  %50 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %sub29 = sub i32 %7, %retval.0.i303
  %51 = tail call i32 @llvm.abs.i32(i32 %sub29, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %51)
  %cmp37.not = icmp sgt i32 %50, %51
  br i1 %cmp37.not, label %for.end.i300.if.end48_crit_edge, label %if.then38

for.end.i300.if.end48_crit_edge:                  ; preds = %for.end.i300
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then38:                                        ; preds = %for.end.i300
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 152, i32 %53)
  %cmp40.not = icmp eq i32 %53, 152
  %spec.select = select i1 %cmp40.not, i32 0, i32 3072
  %54 = ptrtoint ptr %P1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %divsv.0.in.in.sroa.speculate.load.if.then38 = load i32, ptr %P1, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then38, %for.end.i300.if.end48_crit_edge
  %mastv.1 = phi i32 [ %spec.select, %if.then38 ], [ 2048, %for.end.i300.if.end48_crit_edge ]
  %divsv.0.in.in.sroa.speculated = phi i32 [ %divsv.0.in.in.sroa.speculate.load.if.then38, %if.then38 ], [ %P2.1, %for.end.i300.if.end48_crit_edge ]
  %divsv.0 = shl i32 %divsv.0.in.in.sroa.speculated, 8
  br label %if.end51

if.end51:                                         ; preds = %if.end48, %hwsq_wr32.exit.if.end51_crit_edge
  %mastm.0 = phi i32 [ 3072, %if.end48 ], [ 0, %hwsq_wr32.exit.if.end51_crit_edge ]
  %mastv.2 = phi i32 [ %mastv.1, %if.end48 ], [ 0, %hwsq_wr32.exit.if.end51_crit_edge ]
  %divsm.0 = phi i32 [ 1792, %if.end48 ], [ 0, %hwsq_wr32.exit.if.end51_crit_edge ]
  %divsv.1 = phi i32 [ %divsv.0, %if.end48 ], [ 0, %hwsq_wr32.exit.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool52.not = icmp eq i32 %9, 0
  br i1 %tobool52.not, label %if.end51.if.end77_crit_edge, label %if.then53

if.end51.if.end77_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then53:                                        ; preds = %if.end51
  %call55 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 1) #6
  %div.i305 = udiv i32 %9, 1000
  %div1.i = udiv i32 %call55, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i305, i32 %div1.i)
  %cmp.i.not = icmp eq i32 %div.i305, %div1.i
  br i1 %cmp.i.not, label %if.then53.if.end74_crit_edge, label %if.else60

if.then53.if.end74_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.else60:                                        ; preds = %if.then53
  %call62 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 2) #6
  %div1.i307 = udiv i32 %call62, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i305, i32 %div1.i307)
  %cmp.i308.not = icmp eq i32 %div.i305, %div1.i307
  br i1 %cmp.i308.not, label %if.then65, label %if.else67

if.then65:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #8
  %or66 = or i32 %mastv.2, 134217728
  br label %if.end74

if.else67:                                        ; preds = %if.else60
  %call69 = tail call i32 @nvkm_clk_read(ptr noundef %base, i32 noundef 2) #6
  %mul = mul i32 %call69, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %9)
  %cmp1.not.i310 = icmp ugt i32 %mul, %9
  br i1 %cmp1.not.i310, label %if.end.i318, label %if.else67.if.then.i315_crit_edge

if.else67.if.then.i315_crit_edge:                 ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i315

if.then.i315:                                     ; preds = %if.end.6.i336.if.then.i315_crit_edge, %if.end.5.i333.if.then.i315_crit_edge, %if.end.4.i330.if.then.i315_crit_edge, %if.end.3.i327.if.then.i315_crit_edge, %if.end.2.i324.if.then.i315_crit_edge, %if.end.1.i321.if.then.i315_crit_edge, %if.end.i318.if.then.i315_crit_edge, %if.else67.if.then.i315_crit_edge
  %clk0.026.lcssa.i311 = phi i32 [ %mul, %if.else67.if.then.i315_crit_edge ], [ %shr.i316, %if.end.i318.if.then.i315_crit_edge ], [ %shr.1.i319, %if.end.1.i321.if.then.i315_crit_edge ], [ %shr.2.i322, %if.end.2.i324.if.then.i315_crit_edge ], [ %shr.3.i325, %if.end.3.i327.if.then.i315_crit_edge ], [ %shr.4.i328, %if.end.4.i330.if.then.i315_crit_edge ], [ %shr.5.i331, %if.end.5.i333.if.then.i315_crit_edge ], [ %shr.6.i334, %if.end.6.i336.if.then.i315_crit_edge ]
  %storemerge25.lcssa.i312 = phi i32 [ 0, %if.else67.if.then.i315_crit_edge ], [ 1, %if.end.i318.if.then.i315_crit_edge ], [ 2, %if.end.1.i321.if.then.i315_crit_edge ], [ 3, %if.end.2.i324.if.then.i315_crit_edge ], [ 4, %if.end.3.i327.if.then.i315_crit_edge ], [ 5, %if.end.4.i330.if.then.i315_crit_edge ], [ 6, %if.end.5.i333.if.then.i315_crit_edge ], [ 7, %if.end.6.i336.if.then.i315_crit_edge ]
  %55 = ptrtoint ptr %P1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %storemerge25.lcssa.i312, ptr %P1, align 4
  %cond.i313 = zext i1 %cmp1.not.i310 to i32
  %shl.i314 = shl i32 %clk0.026.lcssa.i311, %cond.i313
  br label %for.end.i345

if.end.i318:                                      ; preds = %if.else67
  %shr.i316 = lshr i32 %mul, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i316, i32 %9)
  %cmp1.not.1.i317 = icmp ugt i32 %shr.i316, %9
  br i1 %cmp1.not.1.i317, label %if.end.1.i321, label %if.end.i318.if.then.i315_crit_edge

if.end.i318.if.then.i315_crit_edge:               ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i315

if.end.1.i321:                                    ; preds = %if.end.i318
  %shr.1.i319 = lshr i32 %mul, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i319, i32 %9)
  %cmp1.not.2.i320 = icmp ugt i32 %shr.1.i319, %9
  br i1 %cmp1.not.2.i320, label %if.end.2.i324, label %if.end.1.i321.if.then.i315_crit_edge

if.end.1.i321.if.then.i315_crit_edge:             ; preds = %if.end.1.i321
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i315

if.end.2.i324:                                    ; preds = %if.end.1.i321
  %shr.2.i322 = lshr i32 %mul, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i322, i32 %9)
  %cmp1.not.3.i323 = icmp ugt i32 %shr.2.i322, %9
  br i1 %cmp1.not.3.i323, label %if.end.3.i327, label %if.end.2.i324.if.then.i315_crit_edge

if.end.2.i324.if.then.i315_crit_edge:             ; preds = %if.end.2.i324
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i315

if.end.3.i327:                                    ; preds = %if.end.2.i324
  %shr.3.i325 = lshr i32 %mul, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i325, i32 %9)
  %cmp1.not.4.i326 = icmp ugt i32 %shr.3.i325, %9
  br i1 %cmp1.not.4.i326, label %if.end.4.i330, label %if.end.3.i327.if.then.i315_crit_edge

if.end.3.i327.if.then.i315_crit_edge:             ; preds = %if.end.3.i327
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i315

if.end.4.i330:                                    ; preds = %if.end.3.i327
  %shr.4.i328 = lshr i32 %mul, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4.i328, i32 %9)
  %cmp1.not.5.i329 = icmp ugt i32 %shr.4.i328, %9
  br i1 %cmp1.not.5.i329, label %if.end.5.i333, label %if.end.4.i330.if.then.i315_crit_edge

if.end.4.i330.if.then.i315_crit_edge:             ; preds = %if.end.4.i330
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i315

if.end.5.i333:                                    ; preds = %if.end.4.i330
  %shr.5.i331 = lshr i32 %mul, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.5.i331, i32 %9)
  %cmp1.not.6.i332 = icmp ugt i32 %shr.5.i331, %9
  br i1 %cmp1.not.6.i332, label %if.end.6.i336, label %if.end.5.i333.if.then.i315_crit_edge

if.end.5.i333.if.then.i315_crit_edge:             ; preds = %if.end.5.i333
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i315

if.end.6.i336:                                    ; preds = %if.end.5.i333
  %shr.6.i334 = lshr i32 %mul, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.6.i334, i32 %9)
  %cmp1.not.7.i335 = icmp ugt i32 %shr.6.i334, %9
  br i1 %cmp1.not.7.i335, label %if.end.7.i338, label %if.end.6.i336.if.then.i315_crit_edge

if.end.6.i336.if.then.i315_crit_edge:             ; preds = %if.end.6.i336
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i315

if.end.7.i338:                                    ; preds = %if.end.6.i336
  call void @__sanitizer_cov_trace_pc() #8
  %shr.7.i337 = lshr i32 %mul, 8
  %56 = ptrtoint ptr %P1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 8, ptr %P1, align 4
  br label %for.end.i345

for.end.i345:                                     ; preds = %if.end.7.i338, %if.then.i315
  %storemerge22.i339 = phi i32 [ %storemerge25.lcssa.i312, %if.then.i315 ], [ 8, %if.end.7.i338 ]
  %clk0.020.i340 = phi i32 [ %clk0.026.lcssa.i311, %if.then.i315 ], [ %shr.7.i337, %if.end.7.i338 ]
  %clk1.0.i341 = phi i32 [ %shl.i314, %if.then.i315 ], [ %mul, %if.end.7.i338 ]
  %sub.i342 = sub i32 %9, %clk0.020.i340
  %sub2.i343 = sub i32 %clk1.0.i341, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i342, i32 %sub2.i343)
  %cmp3.not.i344 = icmp ugt i32 %sub.i342, %sub2.i343
  br i1 %cmp3.not.i344, label %if.end5.i347, label %for.end.i345.calc_div.exit349_crit_edge

for.end.i345.calc_div.exit349_crit_edge:          ; preds = %for.end.i345
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_div.exit349

if.end5.i347:                                     ; preds = %for.end.i345
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i346 = add nsw i32 %storemerge22.i339, -1
  %57 = ptrtoint ptr %P1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %dec.i346, ptr %P1, align 4
  br label %calc_div.exit349

calc_div.exit349:                                 ; preds = %if.end5.i347, %for.end.i345.calc_div.exit349_crit_edge
  %or71 = or i32 %mastv.2, 201326592
  %58 = ptrtoint ptr %P1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %P1, align 4
  %or72 = or i32 %59, %divsv.1
  br label %if.end74

if.end74:                                         ; preds = %calc_div.exit349, %if.then65, %if.then53.if.end74_crit_edge
  %mastv.3 = phi i32 [ %or66, %if.then65 ], [ %or71, %calc_div.exit349 ], [ %mastv.2, %if.then53.if.end74_crit_edge ]
  %divsv.2 = phi i32 [ %divsv.1, %if.then65 ], [ %or72, %calc_div.exit349 ], [ %divsv.1, %if.then53.if.end74_crit_edge ]
  %or75 = or i32 %mastm.0, 201326592
  %or76 = or i32 %divsm.0, 7
  br label %if.end77

if.end77:                                         ; preds = %if.end74, %if.end51.if.end77_crit_edge
  %mastm.1 = phi i32 [ %or75, %if.end74 ], [ %mastm.0, %if.end51.if.end77_crit_edge ]
  %mastv.4 = phi i32 [ %mastv.3, %if.end74 ], [ %mastv.2, %if.end51.if.end77_crit_edge ]
  %divsm.1 = phi i32 [ %or76, %if.end74 ], [ %divsm.0, %if.end51.if.end77_crit_edge ]
  %divsv.3 = phi i32 [ %divsv.2, %if.end74 ], [ %divsv.1, %if.end51.if.end77_crit_edge ]
  %r_mast = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5
  %60 = ptrtoint ptr %r_mast to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %r_mast, align 4
  %62 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp.not.i.i = icmp eq i32 %61, %63
  br i1 %cmp.not.i.i, label %if.end77.hwsq_rd32.exit.i_crit_edge, label %if.then.i.i

if.end77.hwsq_rd32.exit.i_crit_edge:              ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_rd32.exit.i

if.then.i.i:                                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hwsq1, align 4
  %device1.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device1.i.i, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pri.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 2
  %70 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 %71
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %data.i.i = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 5
  %73 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %data.i.i, align 4
  br label %hwsq_rd32.exit.i

hwsq_rd32.exit.i:                                 ; preds = %if.then.i.i, %if.end77.hwsq_rd32.exit.i_crit_edge
  %data3.i.i = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 5
  %74 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %data3.i.i, align 4
  %neg.i = xor i32 %mastm.1, -1
  %and.i350 = and i32 %75, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %and.i350)
  %cmp.not.i351 = icmp eq i32 %75, %and.i350
  br i1 %cmp.not.i351, label %lor.lhs.false.i, label %hwsq_rd32.exit.i.if.then.i353_crit_edge

hwsq_rd32.exit.i.if.then.i353_crit_edge:          ; preds = %hwsq_rd32.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i353

lor.lhs.false.i:                                  ; preds = %hwsq_rd32.exit.i
  %force.i = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 1
  %76 = ptrtoint ptr %force.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %force.i, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i352 = icmp eq i8 %77, 0
  br i1 %tobool.not.i352, label %lor.lhs.false.i.hwsq_mask.exit_crit_edge, label %lor.lhs.false.i.if.then.i353_crit_edge

lor.lhs.false.i.if.then.i353_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i353

lor.lhs.false.i.hwsq_mask.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit

if.then.i353:                                     ; preds = %lor.lhs.false.i.if.then.i353_crit_edge, %hwsq_rd32.exit.i.if.then.i353_crit_edge
  %78 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sequence.i, align 4
  %80 = ptrtoint ptr %r_mast to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %r_mast, align 4
  %81 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and.i350, ptr %data3.i.i, align 4
  %mask3.i.i = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 4
  %82 = ptrtoint ptr %mask3.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mask3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.not16.i.i = icmp eq i32 %83, 0
  br i1 %cmp.not16.i.i, label %if.then.i353.hwsq_mask.exit_crit_edge, label %for.body.lr.ph.i.i

if.then.i353.hwsq_mask.exit_crit_edge:            ; preds = %if.then.i353
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit

for.body.lr.ph.i.i:                               ; preds = %if.then.i353
  %addr.i1.i = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 2
  %stride.i.i = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %off.018.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %mask.017.i.i = phi i32 [ %83, %for.body.lr.ph.i.i ], [ %shr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %and.i.i = and i32 %mask.017.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i2.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i2.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hwsq.i, align 4
  %86 = ptrtoint ptr %addr.i1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %addr.i1.i, align 4
  %add.i.i = add i32 %87, %off.018.i.i
  %88 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %data3.i.i, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %85, i32 noundef %add.i.i, i32 noundef %89) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i2.i, %for.body.i.i.if.end.i.i_crit_edge
  %90 = ptrtoint ptr %stride.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %stride.i.i, align 4
  %add5.i.i = add i32 %91, %off.018.i.i
  %shr.i.i = lshr i32 %mask.017.i.i, 1
  %cmp.not.i3.i = icmp ult i32 %mask.017.i.i, 2
  br i1 %cmp.not.i3.i, label %if.end.i.i.hwsq_mask.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end.i.i.hwsq_mask.exit_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit

hwsq_mask.exit:                                   ; preds = %if.end.i.i.hwsq_mask.exit_crit_edge, %if.then.i353.hwsq_mask.exit_crit_edge, %lor.lhs.false.i.hwsq_mask.exit_crit_edge
  %r_divs = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 4
  %92 = ptrtoint ptr %r_divs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %r_divs, align 4
  %94 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp.not.i.i356 = icmp eq i32 %93, %95
  br i1 %cmp.not.i.i356, label %hwsq_mask.exit.hwsq_rd32.exit.i367_crit_edge, label %if.then.i.i362

hwsq_mask.exit.hwsq_rd32.exit.i367_crit_edge:     ; preds = %hwsq_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_rd32.exit.i367

if.then.i.i362:                                   ; preds = %hwsq_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hwsq1, align 4
  %device1.i.i357 = getelementptr inbounds %struct.nvkm_subdev, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %device1.i.i357 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device1.i.i357, align 4
  %pri.i.i358 = getelementptr inbounds %struct.nvkm_device, ptr %99, i32 0, i32 11
  %100 = ptrtoint ptr %pri.i.i358 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pri.i.i358, align 4
  %addr.i.i359 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 4, i32 2
  %102 = ptrtoint ptr %addr.i.i359 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %addr.i.i359, align 4
  %add.ptr.i.i360 = getelementptr i8, ptr %101, i32 %103
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i360) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %data.i.i361 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 4, i32 5
  %105 = ptrtoint ptr %data.i.i361 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %data.i.i361, align 4
  br label %hwsq_rd32.exit.i367

hwsq_rd32.exit.i367:                              ; preds = %if.then.i.i362, %hwsq_mask.exit.hwsq_rd32.exit.i367_crit_edge
  %data3.i.i363 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 4, i32 5
  %106 = ptrtoint ptr %data3.i.i363 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %data3.i.i363, align 4
  %neg.i364 = xor i32 %divsm.1, -1
  %and.i365 = and i32 %107, %neg.i364
  %or.i = or i32 %and.i365, %divsv.3
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %or.i)
  %cmp.not.i366 = icmp eq i32 %107, %or.i
  br i1 %cmp.not.i366, label %lor.lhs.false.i370, label %hwsq_rd32.exit.i367.if.then.i373_crit_edge

hwsq_rd32.exit.i367.if.then.i373_crit_edge:       ; preds = %hwsq_rd32.exit.i367
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i373

lor.lhs.false.i370:                               ; preds = %hwsq_rd32.exit.i367
  %force.i368 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 4, i32 1
  %108 = ptrtoint ptr %force.i368 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %force.i368, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i369 = icmp eq i8 %109, 0
  br i1 %tobool.not.i369, label %lor.lhs.false.i370.hwsq_mask.exit390_crit_edge, label %lor.lhs.false.i370.if.then.i373_crit_edge

lor.lhs.false.i370.if.then.i373_crit_edge:        ; preds = %lor.lhs.false.i370
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i373

lor.lhs.false.i370.hwsq_mask.exit390_crit_edge:   ; preds = %lor.lhs.false.i370
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit390

if.then.i373:                                     ; preds = %lor.lhs.false.i370.if.then.i373_crit_edge, %hwsq_rd32.exit.i367.if.then.i373_crit_edge
  %110 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sequence.i, align 4
  %112 = ptrtoint ptr %r_divs to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %r_divs, align 4
  %113 = ptrtoint ptr %data3.i.i363 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %or.i, ptr %data3.i.i363, align 4
  %mask3.i.i371 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 4, i32 4
  %114 = ptrtoint ptr %mask3.i.i371 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %mask3.i.i371, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp.not16.i.i372 = icmp eq i32 %115, 0
  br i1 %cmp.not16.i.i372, label %if.then.i373.hwsq_mask.exit390_crit_edge, label %for.body.lr.ph.i.i377

if.then.i373.hwsq_mask.exit390_crit_edge:         ; preds = %if.then.i373
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit390

for.body.lr.ph.i.i377:                            ; preds = %if.then.i373
  %addr.i1.i375 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 4, i32 2
  %stride.i.i376 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 4, i32 3
  br label %for.body.i.i382

for.body.i.i382:                                  ; preds = %if.end.i.i388.for.body.i.i382_crit_edge, %for.body.lr.ph.i.i377
  %off.018.i.i378 = phi i32 [ 0, %for.body.lr.ph.i.i377 ], [ %add5.i.i385, %if.end.i.i388.for.body.i.i382_crit_edge ]
  %mask.017.i.i379 = phi i32 [ %115, %for.body.lr.ph.i.i377 ], [ %shr.i.i386, %if.end.i.i388.for.body.i.i382_crit_edge ]
  %and.i.i380 = and i32 %mask.017.i.i379, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i380)
  %tobool.not.i.i381 = icmp eq i32 %and.i.i380, 0
  br i1 %tobool.not.i.i381, label %for.body.i.i382.if.end.i.i388_crit_edge, label %if.then.i2.i384

for.body.i.i382.if.end.i.i388_crit_edge:          ; preds = %for.body.i.i382
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i388

if.then.i2.i384:                                  ; preds = %for.body.i.i382
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hwsq.i, align 4
  %118 = ptrtoint ptr %addr.i1.i375 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %addr.i1.i375, align 4
  %add.i.i383 = add i32 %119, %off.018.i.i378
  %120 = ptrtoint ptr %data3.i.i363 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %data3.i.i363, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %117, i32 noundef %add.i.i383, i32 noundef %121) #6
  br label %if.end.i.i388

if.end.i.i388:                                    ; preds = %if.then.i2.i384, %for.body.i.i382.if.end.i.i388_crit_edge
  %122 = ptrtoint ptr %stride.i.i376 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %stride.i.i376, align 4
  %add5.i.i385 = add i32 %123, %off.018.i.i378
  %shr.i.i386 = lshr i32 %mask.017.i.i379, 1
  %cmp.not.i3.i387 = icmp ult i32 %mask.017.i.i379, 2
  br i1 %cmp.not.i3.i387, label %if.end.i.i388.hwsq_mask.exit390_crit_edge, label %if.end.i.i388.for.body.i.i382_crit_edge

if.end.i.i388.for.body.i.i382_crit_edge:          ; preds = %if.end.i.i388
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i382

if.end.i.i388.hwsq_mask.exit390_crit_edge:        ; preds = %if.end.i.i388
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit390

hwsq_mask.exit390:                                ; preds = %if.end.i.i388.hwsq_mask.exit390_crit_edge, %if.then.i373.hwsq_mask.exit390_crit_edge, %lor.lhs.false.i370.hwsq_mask.exit390_crit_edge
  %124 = ptrtoint ptr %r_mast to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %r_mast, align 4
  %126 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %127)
  %cmp.not.i.i392 = icmp eq i32 %125, %127
  br i1 %cmp.not.i.i392, label %hwsq_mask.exit390.hwsq_rd32.exit.i404_crit_edge, label %if.then.i.i398

hwsq_mask.exit390.hwsq_rd32.exit.i404_crit_edge:  ; preds = %hwsq_mask.exit390
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_rd32.exit.i404

if.then.i.i398:                                   ; preds = %hwsq_mask.exit390
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hwsq1, align 4
  %device1.i.i393 = getelementptr inbounds %struct.nvkm_subdev, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %device1.i.i393 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %device1.i.i393, align 4
  %pri.i.i394 = getelementptr inbounds %struct.nvkm_device, ptr %131, i32 0, i32 11
  %132 = ptrtoint ptr %pri.i.i394 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pri.i.i394, align 4
  %addr.i.i395 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 2
  %134 = ptrtoint ptr %addr.i.i395 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %addr.i.i395, align 4
  %add.ptr.i.i396 = getelementptr i8, ptr %133, i32 %135
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i396) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %137 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %data3.i.i, align 4
  br label %hwsq_rd32.exit.i404

hwsq_rd32.exit.i404:                              ; preds = %if.then.i.i398, %hwsq_mask.exit390.hwsq_rd32.exit.i404_crit_edge
  %138 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %data3.i.i, align 4
  %and.i401 = and i32 %139, %neg.i
  %or.i402 = or i32 %and.i401, %mastv.4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %or.i402)
  %cmp.not.i403 = icmp eq i32 %139, %or.i402
  br i1 %cmp.not.i403, label %lor.lhs.false.i407, label %hwsq_rd32.exit.i404.if.then.i410_crit_edge

hwsq_rd32.exit.i404.if.then.i410_crit_edge:       ; preds = %hwsq_rd32.exit.i404
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i410

lor.lhs.false.i407:                               ; preds = %hwsq_rd32.exit.i404
  %force.i405 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 1
  %140 = ptrtoint ptr %force.i405 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %force.i405, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.not.i406 = icmp eq i8 %141, 0
  br i1 %tobool.not.i406, label %lor.lhs.false.i407.hwsq_mask.exit427_crit_edge, label %lor.lhs.false.i407.if.then.i410_crit_edge

lor.lhs.false.i407.if.then.i410_crit_edge:        ; preds = %lor.lhs.false.i407
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i410

lor.lhs.false.i407.hwsq_mask.exit427_crit_edge:   ; preds = %lor.lhs.false.i407
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit427

if.then.i410:                                     ; preds = %lor.lhs.false.i407.if.then.i410_crit_edge, %hwsq_rd32.exit.i404.if.then.i410_crit_edge
  %142 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %sequence.i, align 4
  %144 = ptrtoint ptr %r_mast to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %r_mast, align 4
  %145 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %or.i402, ptr %data3.i.i, align 4
  %mask3.i.i408 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 4
  %146 = ptrtoint ptr %mask3.i.i408 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %mask3.i.i408, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp.not16.i.i409 = icmp eq i32 %147, 0
  br i1 %cmp.not16.i.i409, label %if.then.i410.hwsq_mask.exit427_crit_edge, label %for.body.lr.ph.i.i414

if.then.i410.hwsq_mask.exit427_crit_edge:         ; preds = %if.then.i410
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit427

for.body.lr.ph.i.i414:                            ; preds = %if.then.i410
  %addr.i1.i412 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 2
  %stride.i.i413 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 3
  br label %for.body.i.i419

for.body.i.i419:                                  ; preds = %if.end.i.i425.for.body.i.i419_crit_edge, %for.body.lr.ph.i.i414
  %off.018.i.i415 = phi i32 [ 0, %for.body.lr.ph.i.i414 ], [ %add5.i.i422, %if.end.i.i425.for.body.i.i419_crit_edge ]
  %mask.017.i.i416 = phi i32 [ %147, %for.body.lr.ph.i.i414 ], [ %shr.i.i423, %if.end.i.i425.for.body.i.i419_crit_edge ]
  %and.i.i417 = and i32 %mask.017.i.i416, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i417)
  %tobool.not.i.i418 = icmp eq i32 %and.i.i417, 0
  br i1 %tobool.not.i.i418, label %for.body.i.i419.if.end.i.i425_crit_edge, label %if.then.i2.i421

for.body.i.i419.if.end.i.i425_crit_edge:          ; preds = %for.body.i.i419
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i425

if.then.i2.i421:                                  ; preds = %for.body.i.i419
  call void @__sanitizer_cov_trace_pc() #8
  %148 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hwsq.i, align 4
  %150 = ptrtoint ptr %addr.i1.i412 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %addr.i1.i412, align 4
  %add.i.i420 = add i32 %151, %off.018.i.i415
  %152 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %data3.i.i, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %149, i32 noundef %add.i.i420, i32 noundef %153) #6
  br label %if.end.i.i425

if.end.i.i425:                                    ; preds = %if.then.i2.i421, %for.body.i.i419.if.end.i.i425_crit_edge
  %154 = ptrtoint ptr %stride.i.i413 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %stride.i.i413, align 4
  %add5.i.i422 = add i32 %155, %off.018.i.i415
  %shr.i.i423 = lshr i32 %mask.017.i.i416, 1
  %cmp.not.i3.i424 = icmp ult i32 %mask.017.i.i416, 2
  br i1 %cmp.not.i3.i424, label %if.end.i.i425.hwsq_mask.exit427_crit_edge, label %if.end.i.i425.for.body.i.i419_crit_edge

if.end.i.i425.for.body.i.i419_crit_edge:          ; preds = %if.end.i.i425
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i419

if.end.i.i425.hwsq_mask.exit427_crit_edge:        ; preds = %if.end.i.i425
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit427

hwsq_mask.exit427:                                ; preds = %if.end.i.i425.hwsq_mask.exit427_crit_edge, %if.then.i410.hwsq_mask.exit427_crit_edge, %lor.lhs.false.i407.hwsq_mask.exit427_crit_edge
  %chipset85 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %156 = ptrtoint ptr %chipset85 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %chipset85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 146, i32 %157)
  %cmp86 = icmp ult i32 %157, 146
  %158 = ptrtoint ptr %r_mast to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %r_mast, align 4
  %160 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %161)
  %cmp.not.i.i429 = icmp eq i32 %159, %161
  br i1 %cmp86, label %if.then87, label %if.else91

if.then87:                                        ; preds = %hwsq_mask.exit427
  br i1 %cmp.not.i.i429, label %if.then87.hwsq_rd32.exit.i440_crit_edge, label %if.then.i.i435

if.then87.hwsq_rd32.exit.i440_crit_edge:          ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_rd32.exit.i440

if.then.i.i435:                                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  %162 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hwsq1, align 4
  %device1.i.i430 = getelementptr inbounds %struct.nvkm_subdev, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %device1.i.i430 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %device1.i.i430, align 4
  %pri.i.i431 = getelementptr inbounds %struct.nvkm_device, ptr %165, i32 0, i32 11
  %166 = ptrtoint ptr %pri.i.i431 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pri.i.i431, align 4
  %addr.i.i432 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 2
  %168 = ptrtoint ptr %addr.i.i432 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %addr.i.i432, align 4
  %add.ptr.i.i433 = getelementptr i8, ptr %167, i32 %169
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i433) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %171 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %data3.i.i, align 4
  br label %hwsq_rd32.exit.i440

hwsq_rd32.exit.i440:                              ; preds = %if.then.i.i435, %if.then87.hwsq_rd32.exit.i440_crit_edge
  %172 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %data3.i.i, align 4
  %and.i437 = and i32 %173, -1048753
  %or.i438 = or i32 %and.i437, 1048704
  call void @__sanitizer_cov_trace_cmp4(i32 %173, i32 %or.i438)
  %cmp.not.i439 = icmp eq i32 %173, %or.i438
  br i1 %cmp.not.i439, label %lor.lhs.false.i443, label %hwsq_rd32.exit.i440.if.then.i446_crit_edge

hwsq_rd32.exit.i440.if.then.i446_crit_edge:       ; preds = %hwsq_rd32.exit.i440
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i446

lor.lhs.false.i443:                               ; preds = %hwsq_rd32.exit.i440
  %force.i441 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 1
  %174 = ptrtoint ptr %force.i441 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %force.i441, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool.not.i442 = icmp eq i8 %175, 0
  br i1 %tobool.not.i442, label %lor.lhs.false.i443.if.end95_crit_edge, label %lor.lhs.false.i443.if.then.i446_crit_edge

lor.lhs.false.i443.if.then.i446_crit_edge:        ; preds = %lor.lhs.false.i443
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i446

lor.lhs.false.i443.if.end95_crit_edge:            ; preds = %lor.lhs.false.i443
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then.i446:                                     ; preds = %lor.lhs.false.i443.if.then.i446_crit_edge, %hwsq_rd32.exit.i440.if.then.i446_crit_edge
  %176 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %sequence.i, align 4
  %178 = ptrtoint ptr %r_mast to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %r_mast, align 4
  %179 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %or.i438, ptr %data3.i.i, align 4
  %mask3.i.i444 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 4
  %180 = ptrtoint ptr %mask3.i.i444 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %mask3.i.i444, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp.not16.i.i445 = icmp eq i32 %181, 0
  br i1 %cmp.not16.i.i445, label %if.then.i446.if.end95_crit_edge, label %for.body.lr.ph.i.i450

if.then.i446.if.end95_crit_edge:                  ; preds = %if.then.i446
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

for.body.lr.ph.i.i450:                            ; preds = %if.then.i446
  %addr.i1.i448 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 2
  %stride.i.i449 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 3
  br label %for.body.i.i455

for.body.i.i455:                                  ; preds = %if.end.i.i461.for.body.i.i455_crit_edge, %for.body.lr.ph.i.i450
  %off.018.i.i451 = phi i32 [ 0, %for.body.lr.ph.i.i450 ], [ %add5.i.i458, %if.end.i.i461.for.body.i.i455_crit_edge ]
  %mask.017.i.i452 = phi i32 [ %181, %for.body.lr.ph.i.i450 ], [ %shr.i.i459, %if.end.i.i461.for.body.i.i455_crit_edge ]
  %and.i.i453 = and i32 %mask.017.i.i452, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i453)
  %tobool.not.i.i454 = icmp eq i32 %and.i.i453, 0
  br i1 %tobool.not.i.i454, label %for.body.i.i455.if.end.i.i461_crit_edge, label %if.then.i2.i457

for.body.i.i455.if.end.i.i461_crit_edge:          ; preds = %for.body.i.i455
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i461

if.then.i2.i457:                                  ; preds = %for.body.i.i455
  call void @__sanitizer_cov_trace_pc() #8
  %182 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hwsq.i, align 4
  %184 = ptrtoint ptr %addr.i1.i448 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %addr.i1.i448, align 4
  %add.i.i456 = add i32 %185, %off.018.i.i451
  %186 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %data3.i.i, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %183, i32 noundef %add.i.i456, i32 noundef %187) #6
  br label %if.end.i.i461

if.end.i.i461:                                    ; preds = %if.then.i2.i457, %for.body.i.i455.if.end.i.i461_crit_edge
  %188 = ptrtoint ptr %stride.i.i449 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %stride.i.i449, align 4
  %add5.i.i458 = add i32 %189, %off.018.i.i451
  %shr.i.i459 = lshr i32 %mask.017.i.i452, 1
  %cmp.not.i3.i460 = icmp ult i32 %mask.017.i.i452, 2
  br i1 %cmp.not.i3.i460, label %if.end.i.i461.if.end95_crit_edge, label %if.end.i.i461.for.body.i.i455_crit_edge

if.end.i.i461.for.body.i.i455_crit_edge:          ; preds = %if.end.i.i461
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i455

if.end.i.i461.if.end95_crit_edge:                 ; preds = %if.end.i.i461
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.else91:                                        ; preds = %hwsq_mask.exit427
  br i1 %cmp.not.i.i429, label %if.else91.hwsq_rd32.exit.i476_crit_edge, label %if.then.i.i471

if.else91.hwsq_rd32.exit.i476_crit_edge:          ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_rd32.exit.i476

if.then.i.i471:                                   ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #8
  %190 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hwsq1, align 4
  %device1.i.i466 = getelementptr inbounds %struct.nvkm_subdev, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %device1.i.i466 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %device1.i.i466, align 4
  %pri.i.i467 = getelementptr inbounds %struct.nvkm_device, ptr %193, i32 0, i32 11
  %194 = ptrtoint ptr %pri.i.i467 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pri.i.i467, align 4
  %addr.i.i468 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 2
  %196 = ptrtoint ptr %addr.i.i468 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %addr.i.i468, align 4
  %add.ptr.i.i469 = getelementptr i8, ptr %195, i32 %197
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i469) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %199 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %data3.i.i, align 4
  br label %hwsq_rd32.exit.i476

hwsq_rd32.exit.i476:                              ; preds = %if.then.i.i471, %if.else91.hwsq_rd32.exit.i476_crit_edge
  %200 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %data3.i.i, align 4
  %and.i473 = and i32 %201, -180
  %or.i474 = or i32 %and.i473, 129
  call void @__sanitizer_cov_trace_cmp4(i32 %201, i32 %or.i474)
  %cmp.not.i475 = icmp eq i32 %201, %or.i474
  br i1 %cmp.not.i475, label %lor.lhs.false.i479, label %hwsq_rd32.exit.i476.if.then.i482_crit_edge

hwsq_rd32.exit.i476.if.then.i482_crit_edge:       ; preds = %hwsq_rd32.exit.i476
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i482

lor.lhs.false.i479:                               ; preds = %hwsq_rd32.exit.i476
  %force.i477 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 1
  %202 = ptrtoint ptr %force.i477 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %force.i477, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool.not.i478 = icmp eq i8 %203, 0
  br i1 %tobool.not.i478, label %lor.lhs.false.i479.if.end95_crit_edge, label %lor.lhs.false.i479.if.then.i482_crit_edge

lor.lhs.false.i479.if.then.i482_crit_edge:        ; preds = %lor.lhs.false.i479
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i482

lor.lhs.false.i479.if.end95_crit_edge:            ; preds = %lor.lhs.false.i479
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then.i482:                                     ; preds = %lor.lhs.false.i479.if.then.i482_crit_edge, %hwsq_rd32.exit.i476.if.then.i482_crit_edge
  %204 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %sequence.i, align 4
  %206 = ptrtoint ptr %r_mast to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %r_mast, align 4
  %207 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %or.i474, ptr %data3.i.i, align 4
  %mask3.i.i480 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 4
  %208 = ptrtoint ptr %mask3.i.i480 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %mask3.i.i480, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp.not16.i.i481 = icmp eq i32 %209, 0
  br i1 %cmp.not16.i.i481, label %if.then.i482.if.end95_crit_edge, label %for.body.lr.ph.i.i486

if.then.i482.if.end95_crit_edge:                  ; preds = %if.then.i482
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

for.body.lr.ph.i.i486:                            ; preds = %if.then.i482
  %addr.i1.i484 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 2
  %stride.i.i485 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 3
  br label %for.body.i.i491

for.body.i.i491:                                  ; preds = %if.end.i.i497.for.body.i.i491_crit_edge, %for.body.lr.ph.i.i486
  %off.018.i.i487 = phi i32 [ 0, %for.body.lr.ph.i.i486 ], [ %add5.i.i494, %if.end.i.i497.for.body.i.i491_crit_edge ]
  %mask.017.i.i488 = phi i32 [ %209, %for.body.lr.ph.i.i486 ], [ %shr.i.i495, %if.end.i.i497.for.body.i.i491_crit_edge ]
  %and.i.i489 = and i32 %mask.017.i.i488, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i489)
  %tobool.not.i.i490 = icmp eq i32 %and.i.i489, 0
  br i1 %tobool.not.i.i490, label %for.body.i.i491.if.end.i.i497_crit_edge, label %if.then.i2.i493

for.body.i.i491.if.end.i.i497_crit_edge:          ; preds = %for.body.i.i491
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i497

if.then.i2.i493:                                  ; preds = %for.body.i.i491
  call void @__sanitizer_cov_trace_pc() #8
  %210 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %hwsq.i, align 4
  %212 = ptrtoint ptr %addr.i1.i484 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %addr.i1.i484, align 4
  %add.i.i492 = add i32 %213, %off.018.i.i487
  %214 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %data3.i.i, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %211, i32 noundef %add.i.i492, i32 noundef %215) #6
  br label %if.end.i.i497

if.end.i.i497:                                    ; preds = %if.then.i2.i493, %for.body.i.i491.if.end.i.i497_crit_edge
  %216 = ptrtoint ptr %stride.i.i485 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %stride.i.i485, align 4
  %add5.i.i494 = add i32 %217, %off.018.i.i487
  %shr.i.i495 = lshr i32 %mask.017.i.i488, 1
  %cmp.not.i3.i496 = icmp ult i32 %mask.017.i.i488, 2
  br i1 %cmp.not.i3.i496, label %if.end.i.i497.if.end95_crit_edge, label %if.end.i.i497.for.body.i.i491_crit_edge

if.end.i.i497.for.body.i.i491_crit_edge:          ; preds = %if.end.i.i497
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i491

if.end.i.i497.if.end95_crit_edge:                 ; preds = %if.end.i.i497
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.end95:                                         ; preds = %if.end.i.i497.if.end95_crit_edge, %if.then.i482.if.end95_crit_edge, %lor.lhs.false.i479.if.end95_crit_edge, %if.end.i.i461.if.end95_crit_edge, %if.then.i446.if.end95_crit_edge, %lor.lhs.false.i443.if.end95_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pll.i) #6
  %218 = call ptr @memset(ptr %pll.i, i32 255, i32 56)
  %219 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %device4, align 4
  %bios.i = getelementptr inbounds %struct.nvkm_device, ptr %220, i32 0, i32 21
  %221 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %bios.i, align 8
  %call.i500 = call i32 @nvbios_pll_parse(ptr noundef %222, i32 noundef 16424, ptr noundef nonnull %pll.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i500)
  %tobool.not.i501 = icmp eq i32 %call.i500, 0
  br i1 %tobool.not.i501, label %if.end.i502, label %if.end95.calc_pll.exit.thread_crit_edge

if.end95.calc_pll.exit.thread_crit_edge:          ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_pll.exit.thread

if.end.i502:                                      ; preds = %if.end95
  %max_freq.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll.i, i32 0, i32 8, i32 1
  %223 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 0, ptr %max_freq.i, align 4
  %call2.i = call fastcc i32 @read_pll_ref(ptr noundef %base, i32 noundef 16424) #6
  %refclk.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll.i, i32 0, i32 2
  %224 = ptrtoint ptr %refclk.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %call2.i, ptr %refclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool4.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool4.not.i, label %if.end.i502.calc_pll.exit.thread_crit_edge, label %calc_pll.exit

if.end.i502.calc_pll.exit.thread_crit_edge:       ; preds = %if.end.i502
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_pll.exit.thread

calc_pll.exit.thread:                             ; preds = %if.end.i502.calc_pll.exit.thread_crit_edge, %if.end95.calc_pll.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pll.i) #6
  br label %cleanup

calc_pll.exit:                                    ; preds = %if.end.i502
  %call7.i = call i32 @nv04_pll_calc(ptr noundef %subdev3, ptr noundef nonnull %pll.i, i32 noundef %5, ptr noundef nonnull %N, ptr noundef nonnull %M, ptr noundef null, ptr noundef null, ptr noundef nonnull %P1) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pll.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp97 = icmp eq i32 %call7.i, 0
  br i1 %cmp97, label %calc_pll.exit.cleanup_crit_edge, label %if.end99

calc_pll.exit.cleanup_crit_edge:                  ; preds = %calc_pll.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end99:                                         ; preds = %calc_pll.exit
  %r_nvpll = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 3
  %225 = ptrtoint ptr %P1 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %P1, align 4
  %shl102 = shl i32 %226, 19
  %shl104 = shl i32 %226, 16
  %227 = ptrtoint ptr %r_nvpll to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %r_nvpll, align 4
  %229 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %228, i32 %230)
  %cmp.not.i.i505 = icmp eq i32 %228, %230
  br i1 %cmp.not.i.i505, label %if.end99.hwsq_rd32.exit.i516_crit_edge, label %if.then.i.i511

if.end99.hwsq_rd32.exit.i516_crit_edge:           ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_rd32.exit.i516

if.then.i.i511:                                   ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %231 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %hwsq1, align 4
  %device1.i.i506 = getelementptr inbounds %struct.nvkm_subdev, ptr %232, i32 0, i32 1
  %233 = ptrtoint ptr %device1.i.i506 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %device1.i.i506, align 4
  %pri.i.i507 = getelementptr inbounds %struct.nvkm_device, ptr %234, i32 0, i32 11
  %235 = ptrtoint ptr %pri.i.i507 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %pri.i.i507, align 4
  %addr.i.i508 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 3, i32 0, i32 2
  %237 = ptrtoint ptr %addr.i.i508 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %addr.i.i508, align 4
  %add.ptr.i.i509 = getelementptr i8, ptr %236, i32 %238
  %239 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i509) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %data.i.i510 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 3, i32 0, i32 5
  %240 = ptrtoint ptr %data.i.i510 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %data.i.i510, align 4
  br label %hwsq_rd32.exit.i516

hwsq_rd32.exit.i516:                              ; preds = %if.then.i.i511, %if.end99.hwsq_rd32.exit.i516_crit_edge
  %data3.i.i512 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 3, i32 0, i32 5
  %241 = ptrtoint ptr %data3.i.i512 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %data3.i.i512, align 4
  %and.i513 = and i32 %242, 1069612799
  %or103 = or i32 %shl104, %shl102
  %or105 = or i32 %or103, %and.i513
  %or.i514 = or i32 %or105, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %242, i32 %or.i514)
  %cmp.not.i515 = icmp eq i32 %242, %or.i514
  br i1 %cmp.not.i515, label %lor.lhs.false.i519, label %hwsq_rd32.exit.i516.if.then.i522_crit_edge

hwsq_rd32.exit.i516.if.then.i522_crit_edge:       ; preds = %hwsq_rd32.exit.i516
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i522

lor.lhs.false.i519:                               ; preds = %hwsq_rd32.exit.i516
  %force.i517 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 3, i32 0, i32 1
  %243 = ptrtoint ptr %force.i517 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %force.i517, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool.not.i518 = icmp eq i8 %244, 0
  br i1 %tobool.not.i518, label %lor.lhs.false.i519.hwsq_mask.exit539_crit_edge, label %lor.lhs.false.i519.if.then.i522_crit_edge

lor.lhs.false.i519.if.then.i522_crit_edge:        ; preds = %lor.lhs.false.i519
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i522

lor.lhs.false.i519.hwsq_mask.exit539_crit_edge:   ; preds = %lor.lhs.false.i519
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit539

if.then.i522:                                     ; preds = %lor.lhs.false.i519.if.then.i522_crit_edge, %hwsq_rd32.exit.i516.if.then.i522_crit_edge
  %245 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %sequence.i, align 4
  %247 = ptrtoint ptr %r_nvpll to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %r_nvpll, align 4
  %248 = ptrtoint ptr %data3.i.i512 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %or.i514, ptr %data3.i.i512, align 4
  %mask3.i.i520 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 3, i32 0, i32 4
  %249 = ptrtoint ptr %mask3.i.i520 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %mask3.i.i520, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %cmp.not16.i.i521 = icmp eq i32 %250, 0
  br i1 %cmp.not16.i.i521, label %if.then.i522.hwsq_mask.exit539_crit_edge, label %for.body.lr.ph.i.i526

if.then.i522.hwsq_mask.exit539_crit_edge:         ; preds = %if.then.i522
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit539

for.body.lr.ph.i.i526:                            ; preds = %if.then.i522
  %addr.i1.i524 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 3, i32 0, i32 2
  %stride.i.i525 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 3, i32 0, i32 3
  br label %for.body.i.i531

for.body.i.i531:                                  ; preds = %if.end.i.i537.for.body.i.i531_crit_edge, %for.body.lr.ph.i.i526
  %off.018.i.i527 = phi i32 [ 0, %for.body.lr.ph.i.i526 ], [ %add5.i.i534, %if.end.i.i537.for.body.i.i531_crit_edge ]
  %mask.017.i.i528 = phi i32 [ %250, %for.body.lr.ph.i.i526 ], [ %shr.i.i535, %if.end.i.i537.for.body.i.i531_crit_edge ]
  %and.i.i529 = and i32 %mask.017.i.i528, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i529)
  %tobool.not.i.i530 = icmp eq i32 %and.i.i529, 0
  br i1 %tobool.not.i.i530, label %for.body.i.i531.if.end.i.i537_crit_edge, label %if.then.i2.i533

for.body.i.i531.if.end.i.i537_crit_edge:          ; preds = %for.body.i.i531
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i537

if.then.i2.i533:                                  ; preds = %for.body.i.i531
  call void @__sanitizer_cov_trace_pc() #8
  %251 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %hwsq.i, align 4
  %253 = ptrtoint ptr %addr.i1.i524 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %addr.i1.i524, align 4
  %add.i.i532 = add i32 %254, %off.018.i.i527
  %255 = ptrtoint ptr %data3.i.i512 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %data3.i.i512, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %252, i32 noundef %add.i.i532, i32 noundef %256) #6
  br label %if.end.i.i537

if.end.i.i537:                                    ; preds = %if.then.i2.i533, %for.body.i.i531.if.end.i.i537_crit_edge
  %257 = ptrtoint ptr %stride.i.i525 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %stride.i.i525, align 4
  %add5.i.i534 = add i32 %258, %off.018.i.i527
  %shr.i.i535 = lshr i32 %mask.017.i.i528, 1
  %cmp.not.i3.i536 = icmp ult i32 %mask.017.i.i528, 2
  br i1 %cmp.not.i3.i536, label %if.end.i.i537.hwsq_mask.exit539_crit_edge, label %if.end.i.i537.for.body.i.i531_crit_edge

if.end.i.i537.for.body.i.i531_crit_edge:          ; preds = %if.end.i.i537
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i531

if.end.i.i537.hwsq_mask.exit539_crit_edge:        ; preds = %if.end.i.i537
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit539

hwsq_mask.exit539:                                ; preds = %if.end.i.i537.hwsq_mask.exit539_crit_edge, %if.then.i522.hwsq_mask.exit539_crit_edge, %lor.lhs.false.i519.hwsq_mask.exit539_crit_edge
  %arrayidx109 = getelementptr %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 3, i32 1
  %259 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %N, align 4
  %shl110 = shl i32 %260, 8
  %261 = ptrtoint ptr %M to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %M, align 4
  %or111 = or i32 %shl110, %262
  %263 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx109, align 4
  %265 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %266)
  %cmp.not.i.i541 = icmp eq i32 %264, %266
  br i1 %cmp.not.i.i541, label %hwsq_mask.exit539.hwsq_rd32.exit.i552_crit_edge, label %if.then.i.i547

hwsq_mask.exit539.hwsq_rd32.exit.i552_crit_edge:  ; preds = %hwsq_mask.exit539
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_rd32.exit.i552

if.then.i.i547:                                   ; preds = %hwsq_mask.exit539
  call void @__sanitizer_cov_trace_pc() #8
  %267 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %hwsq1, align 4
  %device1.i.i542 = getelementptr inbounds %struct.nvkm_subdev, ptr %268, i32 0, i32 1
  %269 = ptrtoint ptr %device1.i.i542 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %device1.i.i542, align 4
  %pri.i.i543 = getelementptr inbounds %struct.nvkm_device, ptr %270, i32 0, i32 11
  %271 = ptrtoint ptr %pri.i.i543 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %pri.i.i543, align 4
  %addr.i.i544 = getelementptr %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 3, i32 1, i32 2
  %273 = ptrtoint ptr %addr.i.i544 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %addr.i.i544, align 4
  %add.ptr.i.i545 = getelementptr i8, ptr %272, i32 %274
  %275 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i545) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %data.i.i546 = getelementptr %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 3, i32 1, i32 5
  %276 = ptrtoint ptr %data.i.i546 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %275, ptr %data.i.i546, align 4
  br label %hwsq_rd32.exit.i552

hwsq_rd32.exit.i552:                              ; preds = %if.then.i.i547, %hwsq_mask.exit539.hwsq_rd32.exit.i552_crit_edge
  %data3.i.i548 = getelementptr %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 3, i32 1, i32 5
  %277 = ptrtoint ptr %data3.i.i548 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %data3.i.i548, align 4
  %and.i549 = and i32 %278, -65536
  %or.i550 = or i32 %or111, %and.i549
  call void @__sanitizer_cov_trace_cmp4(i32 %278, i32 %or.i550)
  %cmp.not.i551 = icmp eq i32 %278, %or.i550
  br i1 %cmp.not.i551, label %lor.lhs.false.i555, label %hwsq_rd32.exit.i552.if.then.i558_crit_edge

hwsq_rd32.exit.i552.if.then.i558_crit_edge:       ; preds = %hwsq_rd32.exit.i552
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i558

lor.lhs.false.i555:                               ; preds = %hwsq_rd32.exit.i552
  %force.i553 = getelementptr %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 3, i32 1, i32 1
  %279 = ptrtoint ptr %force.i553 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %force.i553, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %tobool.not.i554 = icmp eq i8 %280, 0
  br i1 %tobool.not.i554, label %lor.lhs.false.i555.hwsq_mask.exit575_crit_edge, label %lor.lhs.false.i555.if.then.i558_crit_edge

lor.lhs.false.i555.if.then.i558_crit_edge:        ; preds = %lor.lhs.false.i555
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i558

lor.lhs.false.i555.hwsq_mask.exit575_crit_edge:   ; preds = %lor.lhs.false.i555
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit575

if.then.i558:                                     ; preds = %lor.lhs.false.i555.if.then.i558_crit_edge, %hwsq_rd32.exit.i552.if.then.i558_crit_edge
  %281 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %sequence.i, align 4
  %283 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %282, ptr %arrayidx109, align 4
  %284 = ptrtoint ptr %data3.i.i548 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %or.i550, ptr %data3.i.i548, align 4
  %mask3.i.i556 = getelementptr %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 3, i32 1, i32 4
  %285 = ptrtoint ptr %mask3.i.i556 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %mask3.i.i556, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %cmp.not16.i.i557 = icmp eq i32 %286, 0
  br i1 %cmp.not16.i.i557, label %if.then.i558.hwsq_mask.exit575_crit_edge, label %for.body.lr.ph.i.i562

if.then.i558.hwsq_mask.exit575_crit_edge:         ; preds = %if.then.i558
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit575

for.body.lr.ph.i.i562:                            ; preds = %if.then.i558
  %addr.i1.i560 = getelementptr %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 3, i32 1, i32 2
  %stride.i.i561 = getelementptr %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 3, i32 1, i32 3
  br label %for.body.i.i567

for.body.i.i567:                                  ; preds = %if.end.i.i573.for.body.i.i567_crit_edge, %for.body.lr.ph.i.i562
  %off.018.i.i563 = phi i32 [ 0, %for.body.lr.ph.i.i562 ], [ %add5.i.i570, %if.end.i.i573.for.body.i.i567_crit_edge ]
  %mask.017.i.i564 = phi i32 [ %286, %for.body.lr.ph.i.i562 ], [ %shr.i.i571, %if.end.i.i573.for.body.i.i567_crit_edge ]
  %and.i.i565 = and i32 %mask.017.i.i564, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i565)
  %tobool.not.i.i566 = icmp eq i32 %and.i.i565, 0
  br i1 %tobool.not.i.i566, label %for.body.i.i567.if.end.i.i573_crit_edge, label %if.then.i2.i569

for.body.i.i567.if.end.i.i573_crit_edge:          ; preds = %for.body.i.i567
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i573

if.then.i2.i569:                                  ; preds = %for.body.i.i567
  call void @__sanitizer_cov_trace_pc() #8
  %287 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %hwsq.i, align 4
  %289 = ptrtoint ptr %addr.i1.i560 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %addr.i1.i560, align 4
  %add.i.i568 = add i32 %290, %off.018.i.i563
  %291 = ptrtoint ptr %data3.i.i548 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %data3.i.i548, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %288, i32 noundef %add.i.i568, i32 noundef %292) #6
  br label %if.end.i.i573

if.end.i.i573:                                    ; preds = %if.then.i2.i569, %for.body.i.i567.if.end.i.i573_crit_edge
  %293 = ptrtoint ptr %stride.i.i561 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %stride.i.i561, align 4
  %add5.i.i570 = add i32 %294, %off.018.i.i563
  %shr.i.i571 = lshr i32 %mask.017.i.i564, 1
  %cmp.not.i3.i572 = icmp ult i32 %mask.017.i.i564, 2
  br i1 %cmp.not.i3.i572, label %if.end.i.i573.hwsq_mask.exit575_crit_edge, label %if.end.i.i573.for.body.i.i567_crit_edge

if.end.i.i573.for.body.i.i567_crit_edge:          ; preds = %if.end.i.i573
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i567

if.end.i.i573.hwsq_mask.exit575_crit_edge:        ; preds = %if.end.i.i573
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit575

hwsq_mask.exit575:                                ; preds = %if.end.i.i573.hwsq_mask.exit575_crit_edge, %if.then.i558.hwsq_mask.exit575_crit_edge, %lor.lhs.false.i555.hwsq_mask.exit575_crit_edge
  %295 = ptrtoint ptr %P1 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %P1, align 4
  %dec = add i32 %296, -1
  store i32 %dec, ptr %P1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %tobool113.not = icmp ne i32 %296, 0
  %shl114 = shl i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %shl114)
  %cmp115 = icmp eq i32 %3, %shl114
  %or.cond = select i1 %tobool113.not, i1 %cmp115, i1 false
  br i1 %or.cond, label %if.then116, label %if.else126

if.then116:                                       ; preds = %hwsq_mask.exit575
  %r_spll = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2
  %shl119 = shl i32 %dec, 19
  %shl120 = shl i32 %dec, 16
  %or121 = or i32 %shl119, %shl120
  %297 = ptrtoint ptr %r_spll to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %r_spll, align 4
  %299 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %298, i32 %300)
  %cmp.not.i.i577 = icmp eq i32 %298, %300
  br i1 %cmp.not.i.i577, label %if.then116.hwsq_rd32.exit.i588_crit_edge, label %if.then.i.i583

if.then116.hwsq_rd32.exit.i588_crit_edge:         ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_rd32.exit.i588

if.then.i.i583:                                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #8
  %301 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %hwsq1, align 4
  %device1.i.i578 = getelementptr inbounds %struct.nvkm_subdev, ptr %302, i32 0, i32 1
  %303 = ptrtoint ptr %device1.i.i578 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %device1.i.i578, align 4
  %pri.i.i579 = getelementptr inbounds %struct.nvkm_device, ptr %304, i32 0, i32 11
  %305 = ptrtoint ptr %pri.i.i579 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %pri.i.i579, align 4
  %addr.i.i580 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 0, i32 2
  %307 = ptrtoint ptr %addr.i.i580 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %addr.i.i580, align 4
  %add.ptr.i.i581 = getelementptr i8, ptr %306, i32 %308
  %309 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i581) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %data.i.i582 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 0, i32 5
  %310 = ptrtoint ptr %data.i.i582 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %309, ptr %data.i.i582, align 4
  br label %hwsq_rd32.exit.i588

hwsq_rd32.exit.i588:                              ; preds = %if.then.i.i583, %if.then116.hwsq_rd32.exit.i588_crit_edge
  %data3.i.i584 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 0, i32 5
  %311 = ptrtoint ptr %data3.i.i584 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %data3.i.i584, align 4
  %and.i585 = and i32 %312, 1069612799
  %or.i586 = or i32 %or121, %and.i585
  call void @__sanitizer_cov_trace_cmp4(i32 %312, i32 %or.i586)
  %cmp.not.i587 = icmp eq i32 %312, %or.i586
  br i1 %cmp.not.i587, label %lor.lhs.false.i591, label %hwsq_rd32.exit.i588.if.then.i594_crit_edge

hwsq_rd32.exit.i588.if.then.i594_crit_edge:       ; preds = %hwsq_rd32.exit.i588
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i594

lor.lhs.false.i591:                               ; preds = %hwsq_rd32.exit.i588
  %force.i589 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 0, i32 1
  %313 = ptrtoint ptr %force.i589 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %force.i589, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %314)
  %tobool.not.i590 = icmp eq i8 %314, 0
  br i1 %tobool.not.i590, label %lor.lhs.false.i591.hwsq_mask.exit611_crit_edge, label %lor.lhs.false.i591.if.then.i594_crit_edge

lor.lhs.false.i591.if.then.i594_crit_edge:        ; preds = %lor.lhs.false.i591
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i594

lor.lhs.false.i591.hwsq_mask.exit611_crit_edge:   ; preds = %lor.lhs.false.i591
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit611

if.then.i594:                                     ; preds = %lor.lhs.false.i591.if.then.i594_crit_edge, %hwsq_rd32.exit.i588.if.then.i594_crit_edge
  %315 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %sequence.i, align 4
  %317 = ptrtoint ptr %r_spll to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %316, ptr %r_spll, align 4
  %318 = ptrtoint ptr %data3.i.i584 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %or.i586, ptr %data3.i.i584, align 4
  %mask3.i.i592 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 0, i32 4
  %319 = ptrtoint ptr %mask3.i.i592 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %mask3.i.i592, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %320)
  %cmp.not16.i.i593 = icmp eq i32 %320, 0
  br i1 %cmp.not16.i.i593, label %if.then.i594.hwsq_mask.exit611_crit_edge, label %for.body.lr.ph.i.i598

if.then.i594.hwsq_mask.exit611_crit_edge:         ; preds = %if.then.i594
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit611

for.body.lr.ph.i.i598:                            ; preds = %if.then.i594
  %addr.i1.i596 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 0, i32 2
  %stride.i.i597 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 0, i32 3
  br label %for.body.i.i603

for.body.i.i603:                                  ; preds = %if.end.i.i609.for.body.i.i603_crit_edge, %for.body.lr.ph.i.i598
  %off.018.i.i599 = phi i32 [ 0, %for.body.lr.ph.i.i598 ], [ %add5.i.i606, %if.end.i.i609.for.body.i.i603_crit_edge ]
  %mask.017.i.i600 = phi i32 [ %320, %for.body.lr.ph.i.i598 ], [ %shr.i.i607, %if.end.i.i609.for.body.i.i603_crit_edge ]
  %and.i.i601 = and i32 %mask.017.i.i600, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i601)
  %tobool.not.i.i602 = icmp eq i32 %and.i.i601, 0
  br i1 %tobool.not.i.i602, label %for.body.i.i603.if.end.i.i609_crit_edge, label %if.then.i2.i605

for.body.i.i603.if.end.i.i609_crit_edge:          ; preds = %for.body.i.i603
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i609

if.then.i2.i605:                                  ; preds = %for.body.i.i603
  call void @__sanitizer_cov_trace_pc() #8
  %321 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %hwsq.i, align 4
  %323 = ptrtoint ptr %addr.i1.i596 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %addr.i1.i596, align 4
  %add.i.i604 = add i32 %324, %off.018.i.i599
  %325 = ptrtoint ptr %data3.i.i584 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %data3.i.i584, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %322, i32 noundef %add.i.i604, i32 noundef %326) #6
  br label %if.end.i.i609

if.end.i.i609:                                    ; preds = %if.then.i2.i605, %for.body.i.i603.if.end.i.i609_crit_edge
  %327 = ptrtoint ptr %stride.i.i597 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %stride.i.i597, align 4
  %add5.i.i606 = add i32 %328, %off.018.i.i599
  %shr.i.i607 = lshr i32 %mask.017.i.i600, 1
  %cmp.not.i3.i608 = icmp ult i32 %mask.017.i.i600, 2
  br i1 %cmp.not.i3.i608, label %if.end.i.i609.hwsq_mask.exit611_crit_edge, label %if.end.i.i609.for.body.i.i603_crit_edge

if.end.i.i609.for.body.i.i603_crit_edge:          ; preds = %if.end.i.i609
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i603

if.end.i.i609.hwsq_mask.exit611_crit_edge:        ; preds = %if.end.i.i609
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit611

hwsq_mask.exit611:                                ; preds = %if.end.i.i609.hwsq_mask.exit611_crit_edge, %if.then.i594.hwsq_mask.exit611_crit_edge, %lor.lhs.false.i591.hwsq_mask.exit611_crit_edge
  %329 = ptrtoint ptr %r_mast to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %r_mast, align 4
  %331 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %330, i32 %332)
  %cmp.not.i.i613 = icmp eq i32 %330, %332
  br i1 %cmp.not.i.i613, label %hwsq_mask.exit611.hwsq_rd32.exit.i624_crit_edge, label %if.then.i.i619

hwsq_mask.exit611.hwsq_rd32.exit.i624_crit_edge:  ; preds = %hwsq_mask.exit611
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_rd32.exit.i624

if.then.i.i619:                                   ; preds = %hwsq_mask.exit611
  call void @__sanitizer_cov_trace_pc() #8
  %333 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %hwsq1, align 4
  %device1.i.i614 = getelementptr inbounds %struct.nvkm_subdev, ptr %334, i32 0, i32 1
  %335 = ptrtoint ptr %device1.i.i614 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %device1.i.i614, align 4
  %pri.i.i615 = getelementptr inbounds %struct.nvkm_device, ptr %336, i32 0, i32 11
  %337 = ptrtoint ptr %pri.i.i615 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %pri.i.i615, align 4
  %addr.i.i616 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 2
  %339 = ptrtoint ptr %addr.i.i616 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %addr.i.i616, align 4
  %add.ptr.i.i617 = getelementptr i8, ptr %338, i32 %340
  %341 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i617) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %342 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %341, ptr %data3.i.i, align 4
  br label %hwsq_rd32.exit.i624

hwsq_rd32.exit.i624:                              ; preds = %if.then.i.i619, %hwsq_mask.exit611.hwsq_rd32.exit.i624_crit_edge
  %343 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %data3.i.i, align 4
  %and.i621 = and i32 %344, -1048628
  %or.i622 = or i32 %and.i621, 35
  call void @__sanitizer_cov_trace_cmp4(i32 %344, i32 %or.i622)
  %cmp.not.i623 = icmp eq i32 %344, %or.i622
  br i1 %cmp.not.i623, label %lor.lhs.false.i627, label %hwsq_rd32.exit.i624.if.then.i630_crit_edge

hwsq_rd32.exit.i624.if.then.i630_crit_edge:       ; preds = %hwsq_rd32.exit.i624
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i630

lor.lhs.false.i627:                               ; preds = %hwsq_rd32.exit.i624
  %force.i625 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 1
  %345 = ptrtoint ptr %force.i625 to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %force.i625, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %346)
  %tobool.not.i626 = icmp eq i8 %346, 0
  br i1 %tobool.not.i626, label %lor.lhs.false.i627.if.end148_crit_edge, label %lor.lhs.false.i627.if.then.i630_crit_edge

lor.lhs.false.i627.if.then.i630_crit_edge:        ; preds = %lor.lhs.false.i627
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i630

lor.lhs.false.i627.if.end148_crit_edge:           ; preds = %lor.lhs.false.i627
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148

if.then.i630:                                     ; preds = %lor.lhs.false.i627.if.then.i630_crit_edge, %hwsq_rd32.exit.i624.if.then.i630_crit_edge
  %347 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %sequence.i, align 4
  %349 = ptrtoint ptr %r_mast to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %348, ptr %r_mast, align 4
  %350 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %or.i622, ptr %data3.i.i, align 4
  %mask3.i.i628 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 4
  %351 = ptrtoint ptr %mask3.i.i628 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %mask3.i.i628, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %cmp.not16.i.i629 = icmp eq i32 %352, 0
  br i1 %cmp.not16.i.i629, label %if.then.i630.if.end148_crit_edge, label %for.body.lr.ph.i.i634

if.then.i630.if.end148_crit_edge:                 ; preds = %if.then.i630
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148

for.body.lr.ph.i.i634:                            ; preds = %if.then.i630
  %addr.i1.i632 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 2
  %stride.i.i633 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 3
  br label %for.body.i.i639

for.body.i.i639:                                  ; preds = %if.end.i.i645.for.body.i.i639_crit_edge, %for.body.lr.ph.i.i634
  %off.018.i.i635 = phi i32 [ 0, %for.body.lr.ph.i.i634 ], [ %add5.i.i642, %if.end.i.i645.for.body.i.i639_crit_edge ]
  %mask.017.i.i636 = phi i32 [ %352, %for.body.lr.ph.i.i634 ], [ %shr.i.i643, %if.end.i.i645.for.body.i.i639_crit_edge ]
  %and.i.i637 = and i32 %mask.017.i.i636, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i637)
  %tobool.not.i.i638 = icmp eq i32 %and.i.i637, 0
  br i1 %tobool.not.i.i638, label %for.body.i.i639.if.end.i.i645_crit_edge, label %if.then.i2.i641

for.body.i.i639.if.end.i.i645_crit_edge:          ; preds = %for.body.i.i639
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i645

if.then.i2.i641:                                  ; preds = %for.body.i.i639
  call void @__sanitizer_cov_trace_pc() #8
  %353 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %hwsq.i, align 4
  %355 = ptrtoint ptr %addr.i1.i632 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %addr.i1.i632, align 4
  %add.i.i640 = add i32 %356, %off.018.i.i635
  %357 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %data3.i.i, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %354, i32 noundef %add.i.i640, i32 noundef %358) #6
  br label %if.end.i.i645

if.end.i.i645:                                    ; preds = %if.then.i2.i641, %for.body.i.i639.if.end.i.i645_crit_edge
  %359 = ptrtoint ptr %stride.i.i633 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %stride.i.i633, align 4
  %add5.i.i642 = add i32 %360, %off.018.i.i635
  %shr.i.i643 = lshr i32 %mask.017.i.i636, 1
  %cmp.not.i3.i644 = icmp ult i32 %mask.017.i.i636, 2
  br i1 %cmp.not.i3.i644, label %if.end.i.i645.if.end148_crit_edge, label %if.end.i.i645.for.body.i.i639_crit_edge

if.end.i.i645.for.body.i.i639_crit_edge:          ; preds = %if.end.i.i645
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i639

if.end.i.i645.if.end148_crit_edge:                ; preds = %if.end.i.i645
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148

if.else126:                                       ; preds = %hwsq_mask.exit575
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pll.i648) #6
  %361 = call ptr @memset(ptr %pll.i648, i32 255, i32 56)
  %362 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %device4, align 4
  %bios.i651 = getelementptr inbounds %struct.nvkm_device, ptr %363, i32 0, i32 21
  %364 = ptrtoint ptr %bios.i651 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %bios.i651, align 8
  %call.i652 = call i32 @nvbios_pll_parse(ptr noundef %365, i32 noundef 16416, ptr noundef nonnull %pll.i648) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i652)
  %tobool.not.i653 = icmp eq i32 %call.i652, 0
  br i1 %tobool.not.i653, label %if.end.i658, label %if.else126.calc_pll.exit662.thread_crit_edge

if.else126.calc_pll.exit662.thread_crit_edge:     ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_pll.exit662.thread

if.end.i658:                                      ; preds = %if.else126
  %max_freq.i654 = getelementptr inbounds %struct.nvbios_pll, ptr %pll.i648, i32 0, i32 8, i32 1
  %366 = ptrtoint ptr %max_freq.i654 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 0, ptr %max_freq.i654, align 4
  %call2.i655 = call fastcc i32 @read_pll_ref(ptr noundef %base, i32 noundef 16416) #6
  %refclk.i656 = getelementptr inbounds %struct.nvbios_pll, ptr %pll.i648, i32 0, i32 2
  %367 = ptrtoint ptr %refclk.i656 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %call2.i655, ptr %refclk.i656, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i655)
  %tobool4.not.i657 = icmp eq i32 %call2.i655, 0
  br i1 %tobool4.not.i657, label %if.end.i658.calc_pll.exit662.thread_crit_edge, label %calc_pll.exit662

if.end.i658.calc_pll.exit662.thread_crit_edge:    ; preds = %if.end.i658
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_pll.exit662.thread

calc_pll.exit662.thread:                          ; preds = %if.end.i658.calc_pll.exit662.thread_crit_edge, %if.else126.calc_pll.exit662.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pll.i648) #6
  br label %cleanup

calc_pll.exit662:                                 ; preds = %if.end.i658
  %call7.i659 = call i32 @nv04_pll_calc(ptr noundef %subdev3, ptr noundef nonnull %pll.i648, i32 noundef %3, ptr noundef nonnull %N, ptr noundef nonnull %M, ptr noundef null, ptr noundef null, ptr noundef nonnull %P1) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pll.i648) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i659)
  %cmp128 = icmp eq i32 %call7.i659, 0
  br i1 %cmp128, label %calc_pll.exit662.cleanup_crit_edge, label %if.end130

calc_pll.exit662.cleanup_crit_edge:               ; preds = %calc_pll.exit662
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end130:                                        ; preds = %calc_pll.exit662
  %r_spll132 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2
  %368 = ptrtoint ptr %P1 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %P1, align 4
  %shl134 = shl i32 %369, 19
  %shl136 = shl i32 %369, 16
  %370 = ptrtoint ptr %r_spll132 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %r_spll132, align 4
  %372 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %371, i32 %373)
  %cmp.not.i.i664 = icmp eq i32 %371, %373
  br i1 %cmp.not.i.i664, label %if.end130.hwsq_rd32.exit.i675_crit_edge, label %if.then.i.i670

if.end130.hwsq_rd32.exit.i675_crit_edge:          ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_rd32.exit.i675

if.then.i.i670:                                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  %374 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %hwsq1, align 4
  %device1.i.i665 = getelementptr inbounds %struct.nvkm_subdev, ptr %375, i32 0, i32 1
  %376 = ptrtoint ptr %device1.i.i665 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %device1.i.i665, align 4
  %pri.i.i666 = getelementptr inbounds %struct.nvkm_device, ptr %377, i32 0, i32 11
  %378 = ptrtoint ptr %pri.i.i666 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %pri.i.i666, align 4
  %addr.i.i667 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 0, i32 2
  %380 = ptrtoint ptr %addr.i.i667 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %addr.i.i667, align 4
  %add.ptr.i.i668 = getelementptr i8, ptr %379, i32 %381
  %382 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i668) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %data.i.i669 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 0, i32 5
  %383 = ptrtoint ptr %data.i.i669 to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %382, ptr %data.i.i669, align 4
  br label %hwsq_rd32.exit.i675

hwsq_rd32.exit.i675:                              ; preds = %if.then.i.i670, %if.end130.hwsq_rd32.exit.i675_crit_edge
  %data3.i.i671 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 0, i32 5
  %384 = ptrtoint ptr %data3.i.i671 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %data3.i.i671, align 4
  %and.i672 = and i32 %385, 1069612799
  %or135 = or i32 %shl136, %shl134
  %or137 = or i32 %or135, %and.i672
  %or.i673 = or i32 %or137, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %385, i32 %or.i673)
  %cmp.not.i674 = icmp eq i32 %385, %or.i673
  br i1 %cmp.not.i674, label %lor.lhs.false.i678, label %hwsq_rd32.exit.i675.if.then.i681_crit_edge

hwsq_rd32.exit.i675.if.then.i681_crit_edge:       ; preds = %hwsq_rd32.exit.i675
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i681

lor.lhs.false.i678:                               ; preds = %hwsq_rd32.exit.i675
  %force.i676 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 0, i32 1
  %386 = ptrtoint ptr %force.i676 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %force.i676, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %387)
  %tobool.not.i677 = icmp eq i8 %387, 0
  br i1 %tobool.not.i677, label %lor.lhs.false.i678.hwsq_mask.exit698_crit_edge, label %lor.lhs.false.i678.if.then.i681_crit_edge

lor.lhs.false.i678.if.then.i681_crit_edge:        ; preds = %lor.lhs.false.i678
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i681

lor.lhs.false.i678.hwsq_mask.exit698_crit_edge:   ; preds = %lor.lhs.false.i678
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit698

if.then.i681:                                     ; preds = %lor.lhs.false.i678.if.then.i681_crit_edge, %hwsq_rd32.exit.i675.if.then.i681_crit_edge
  %388 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %sequence.i, align 4
  %390 = ptrtoint ptr %r_spll132 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 %389, ptr %r_spll132, align 4
  %391 = ptrtoint ptr %data3.i.i671 to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %or.i673, ptr %data3.i.i671, align 4
  %mask3.i.i679 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 0, i32 4
  %392 = ptrtoint ptr %mask3.i.i679 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %mask3.i.i679, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %393)
  %cmp.not16.i.i680 = icmp eq i32 %393, 0
  br i1 %cmp.not16.i.i680, label %if.then.i681.hwsq_mask.exit698_crit_edge, label %for.body.lr.ph.i.i685

if.then.i681.hwsq_mask.exit698_crit_edge:         ; preds = %if.then.i681
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit698

for.body.lr.ph.i.i685:                            ; preds = %if.then.i681
  %addr.i1.i683 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 0, i32 2
  %stride.i.i684 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 0, i32 3
  br label %for.body.i.i690

for.body.i.i690:                                  ; preds = %if.end.i.i696.for.body.i.i690_crit_edge, %for.body.lr.ph.i.i685
  %off.018.i.i686 = phi i32 [ 0, %for.body.lr.ph.i.i685 ], [ %add5.i.i693, %if.end.i.i696.for.body.i.i690_crit_edge ]
  %mask.017.i.i687 = phi i32 [ %393, %for.body.lr.ph.i.i685 ], [ %shr.i.i694, %if.end.i.i696.for.body.i.i690_crit_edge ]
  %and.i.i688 = and i32 %mask.017.i.i687, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i688)
  %tobool.not.i.i689 = icmp eq i32 %and.i.i688, 0
  br i1 %tobool.not.i.i689, label %for.body.i.i690.if.end.i.i696_crit_edge, label %if.then.i2.i692

for.body.i.i690.if.end.i.i696_crit_edge:          ; preds = %for.body.i.i690
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i696

if.then.i2.i692:                                  ; preds = %for.body.i.i690
  call void @__sanitizer_cov_trace_pc() #8
  %394 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %hwsq.i, align 4
  %396 = ptrtoint ptr %addr.i1.i683 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %addr.i1.i683, align 4
  %add.i.i691 = add i32 %397, %off.018.i.i686
  %398 = ptrtoint ptr %data3.i.i671 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %data3.i.i671, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %395, i32 noundef %add.i.i691, i32 noundef %399) #6
  br label %if.end.i.i696

if.end.i.i696:                                    ; preds = %if.then.i2.i692, %for.body.i.i690.if.end.i.i696_crit_edge
  %400 = ptrtoint ptr %stride.i.i684 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %stride.i.i684, align 4
  %add5.i.i693 = add i32 %401, %off.018.i.i686
  %shr.i.i694 = lshr i32 %mask.017.i.i687, 1
  %cmp.not.i3.i695 = icmp ult i32 %mask.017.i.i687, 2
  br i1 %cmp.not.i3.i695, label %if.end.i.i696.hwsq_mask.exit698_crit_edge, label %if.end.i.i696.for.body.i.i690_crit_edge

if.end.i.i696.for.body.i.i690_crit_edge:          ; preds = %if.end.i.i696
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i690

if.end.i.i696.hwsq_mask.exit698_crit_edge:        ; preds = %if.end.i.i696
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit698

hwsq_mask.exit698:                                ; preds = %if.end.i.i696.hwsq_mask.exit698_crit_edge, %if.then.i681.hwsq_mask.exit698_crit_edge, %lor.lhs.false.i678.hwsq_mask.exit698_crit_edge
  %arrayidx141 = getelementptr %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 1
  %402 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %N, align 4
  %shl142 = shl i32 %403, 8
  %404 = ptrtoint ptr %M to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %M, align 4
  %or143 = or i32 %shl142, %405
  %406 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %arrayidx141, align 4
  %408 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %407, i32 %409)
  %cmp.not.i.i700 = icmp eq i32 %407, %409
  br i1 %cmp.not.i.i700, label %hwsq_mask.exit698.hwsq_rd32.exit.i711_crit_edge, label %if.then.i.i706

hwsq_mask.exit698.hwsq_rd32.exit.i711_crit_edge:  ; preds = %hwsq_mask.exit698
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_rd32.exit.i711

if.then.i.i706:                                   ; preds = %hwsq_mask.exit698
  call void @__sanitizer_cov_trace_pc() #8
  %410 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %hwsq1, align 4
  %device1.i.i701 = getelementptr inbounds %struct.nvkm_subdev, ptr %411, i32 0, i32 1
  %412 = ptrtoint ptr %device1.i.i701 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %device1.i.i701, align 4
  %pri.i.i702 = getelementptr inbounds %struct.nvkm_device, ptr %413, i32 0, i32 11
  %414 = ptrtoint ptr %pri.i.i702 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %pri.i.i702, align 4
  %addr.i.i703 = getelementptr %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 1, i32 2
  %416 = ptrtoint ptr %addr.i.i703 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %addr.i.i703, align 4
  %add.ptr.i.i704 = getelementptr i8, ptr %415, i32 %417
  %418 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i704) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %data.i.i705 = getelementptr %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 1, i32 5
  %419 = ptrtoint ptr %data.i.i705 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %418, ptr %data.i.i705, align 4
  br label %hwsq_rd32.exit.i711

hwsq_rd32.exit.i711:                              ; preds = %if.then.i.i706, %hwsq_mask.exit698.hwsq_rd32.exit.i711_crit_edge
  %data3.i.i707 = getelementptr %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 1, i32 5
  %420 = ptrtoint ptr %data3.i.i707 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %data3.i.i707, align 4
  %and.i708 = and i32 %421, -65536
  %or.i709 = or i32 %or143, %and.i708
  call void @__sanitizer_cov_trace_cmp4(i32 %421, i32 %or.i709)
  %cmp.not.i710 = icmp eq i32 %421, %or.i709
  br i1 %cmp.not.i710, label %lor.lhs.false.i714, label %hwsq_rd32.exit.i711.if.then.i717_crit_edge

hwsq_rd32.exit.i711.if.then.i717_crit_edge:       ; preds = %hwsq_rd32.exit.i711
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i717

lor.lhs.false.i714:                               ; preds = %hwsq_rd32.exit.i711
  %force.i712 = getelementptr %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 1, i32 1
  %422 = ptrtoint ptr %force.i712 to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %force.i712, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %423)
  %tobool.not.i713 = icmp eq i8 %423, 0
  br i1 %tobool.not.i713, label %lor.lhs.false.i714.hwsq_mask.exit734_crit_edge, label %lor.lhs.false.i714.if.then.i717_crit_edge

lor.lhs.false.i714.if.then.i717_crit_edge:        ; preds = %lor.lhs.false.i714
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i717

lor.lhs.false.i714.hwsq_mask.exit734_crit_edge:   ; preds = %lor.lhs.false.i714
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit734

if.then.i717:                                     ; preds = %lor.lhs.false.i714.if.then.i717_crit_edge, %hwsq_rd32.exit.i711.if.then.i717_crit_edge
  %424 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %sequence.i, align 4
  %426 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 %425, ptr %arrayidx141, align 4
  %427 = ptrtoint ptr %data3.i.i707 to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 %or.i709, ptr %data3.i.i707, align 4
  %mask3.i.i715 = getelementptr %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 1, i32 4
  %428 = ptrtoint ptr %mask3.i.i715 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %mask3.i.i715, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %429)
  %cmp.not16.i.i716 = icmp eq i32 %429, 0
  br i1 %cmp.not16.i.i716, label %if.then.i717.hwsq_mask.exit734_crit_edge, label %for.body.lr.ph.i.i721

if.then.i717.hwsq_mask.exit734_crit_edge:         ; preds = %if.then.i717
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit734

for.body.lr.ph.i.i721:                            ; preds = %if.then.i717
  %addr.i1.i719 = getelementptr %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 1, i32 2
  %stride.i.i720 = getelementptr %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 2, i32 1, i32 3
  br label %for.body.i.i726

for.body.i.i726:                                  ; preds = %if.end.i.i732.for.body.i.i726_crit_edge, %for.body.lr.ph.i.i721
  %off.018.i.i722 = phi i32 [ 0, %for.body.lr.ph.i.i721 ], [ %add5.i.i729, %if.end.i.i732.for.body.i.i726_crit_edge ]
  %mask.017.i.i723 = phi i32 [ %429, %for.body.lr.ph.i.i721 ], [ %shr.i.i730, %if.end.i.i732.for.body.i.i726_crit_edge ]
  %and.i.i724 = and i32 %mask.017.i.i723, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i724)
  %tobool.not.i.i725 = icmp eq i32 %and.i.i724, 0
  br i1 %tobool.not.i.i725, label %for.body.i.i726.if.end.i.i732_crit_edge, label %if.then.i2.i728

for.body.i.i726.if.end.i.i732_crit_edge:          ; preds = %for.body.i.i726
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i732

if.then.i2.i728:                                  ; preds = %for.body.i.i726
  call void @__sanitizer_cov_trace_pc() #8
  %430 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %hwsq.i, align 4
  %432 = ptrtoint ptr %addr.i1.i719 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %addr.i1.i719, align 4
  %add.i.i727 = add i32 %433, %off.018.i.i722
  %434 = ptrtoint ptr %data3.i.i707 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %data3.i.i707, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %431, i32 noundef %add.i.i727, i32 noundef %435) #6
  br label %if.end.i.i732

if.end.i.i732:                                    ; preds = %if.then.i2.i728, %for.body.i.i726.if.end.i.i732_crit_edge
  %436 = ptrtoint ptr %stride.i.i720 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %stride.i.i720, align 4
  %add5.i.i729 = add i32 %437, %off.018.i.i722
  %shr.i.i730 = lshr i32 %mask.017.i.i723, 1
  %cmp.not.i3.i731 = icmp ult i32 %mask.017.i.i723, 2
  br i1 %cmp.not.i3.i731, label %if.end.i.i732.hwsq_mask.exit734_crit_edge, label %if.end.i.i732.for.body.i.i726_crit_edge

if.end.i.i732.for.body.i.i726_crit_edge:          ; preds = %if.end.i.i732
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i726

if.end.i.i732.hwsq_mask.exit734_crit_edge:        ; preds = %if.end.i.i732
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_mask.exit734

hwsq_mask.exit734:                                ; preds = %if.end.i.i732.hwsq_mask.exit734_crit_edge, %if.then.i717.hwsq_mask.exit734_crit_edge, %lor.lhs.false.i714.hwsq_mask.exit734_crit_edge
  %438 = ptrtoint ptr %r_mast to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %r_mast, align 4
  %440 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %439, i32 %441)
  %cmp.not.i.i736 = icmp eq i32 %439, %441
  br i1 %cmp.not.i.i736, label %hwsq_mask.exit734.hwsq_rd32.exit.i747_crit_edge, label %if.then.i.i742

hwsq_mask.exit734.hwsq_rd32.exit.i747_crit_edge:  ; preds = %hwsq_mask.exit734
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_rd32.exit.i747

if.then.i.i742:                                   ; preds = %hwsq_mask.exit734
  call void @__sanitizer_cov_trace_pc() #8
  %442 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %hwsq1, align 4
  %device1.i.i737 = getelementptr inbounds %struct.nvkm_subdev, ptr %443, i32 0, i32 1
  %444 = ptrtoint ptr %device1.i.i737 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %device1.i.i737, align 4
  %pri.i.i738 = getelementptr inbounds %struct.nvkm_device, ptr %445, i32 0, i32 11
  %446 = ptrtoint ptr %pri.i.i738 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %pri.i.i738, align 4
  %addr.i.i739 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 2
  %448 = ptrtoint ptr %addr.i.i739 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %addr.i.i739, align 4
  %add.ptr.i.i740 = getelementptr i8, ptr %447, i32 %449
  %450 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i740) #6, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %451 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %450, ptr %data3.i.i, align 4
  br label %hwsq_rd32.exit.i747

hwsq_rd32.exit.i747:                              ; preds = %if.then.i.i742, %hwsq_mask.exit734.hwsq_rd32.exit.i747_crit_edge
  %452 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %data3.i.i, align 4
  %and.i744 = and i32 %453, -1048628
  %or.i745 = or i32 %and.i744, 51
  call void @__sanitizer_cov_trace_cmp4(i32 %453, i32 %or.i745)
  %cmp.not.i746 = icmp eq i32 %453, %or.i745
  br i1 %cmp.not.i746, label %lor.lhs.false.i750, label %hwsq_rd32.exit.i747.if.then.i753_crit_edge

hwsq_rd32.exit.i747.if.then.i753_crit_edge:       ; preds = %hwsq_rd32.exit.i747
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i753

lor.lhs.false.i750:                               ; preds = %hwsq_rd32.exit.i747
  %force.i748 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 1
  %454 = ptrtoint ptr %force.i748 to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %force.i748, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %455)
  %tobool.not.i749 = icmp eq i8 %455, 0
  br i1 %tobool.not.i749, label %lor.lhs.false.i750.if.end148_crit_edge, label %lor.lhs.false.i750.if.then.i753_crit_edge

lor.lhs.false.i750.if.then.i753_crit_edge:        ; preds = %lor.lhs.false.i750
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i753

lor.lhs.false.i750.if.end148_crit_edge:           ; preds = %lor.lhs.false.i750
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148

if.then.i753:                                     ; preds = %lor.lhs.false.i750.if.then.i753_crit_edge, %hwsq_rd32.exit.i747.if.then.i753_crit_edge
  %456 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %sequence.i, align 4
  %458 = ptrtoint ptr %r_mast to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %457, ptr %r_mast, align 4
  %459 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %or.i745, ptr %data3.i.i, align 4
  %mask3.i.i751 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 4
  %460 = ptrtoint ptr %mask3.i.i751 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %mask3.i.i751, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %461)
  %cmp.not16.i.i752 = icmp eq i32 %461, 0
  br i1 %cmp.not16.i.i752, label %if.then.i753.if.end148_crit_edge, label %for.body.lr.ph.i.i757

if.then.i753.if.end148_crit_edge:                 ; preds = %if.then.i753
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148

for.body.lr.ph.i.i757:                            ; preds = %if.then.i753
  %addr.i1.i755 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 2
  %stride.i.i756 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 5, i32 3
  br label %for.body.i.i762

for.body.i.i762:                                  ; preds = %if.end.i.i768.for.body.i.i762_crit_edge, %for.body.lr.ph.i.i757
  %off.018.i.i758 = phi i32 [ 0, %for.body.lr.ph.i.i757 ], [ %add5.i.i765, %if.end.i.i768.for.body.i.i762_crit_edge ]
  %mask.017.i.i759 = phi i32 [ %461, %for.body.lr.ph.i.i757 ], [ %shr.i.i766, %if.end.i.i768.for.body.i.i762_crit_edge ]
  %and.i.i760 = and i32 %mask.017.i.i759, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i760)
  %tobool.not.i.i761 = icmp eq i32 %and.i.i760, 0
  br i1 %tobool.not.i.i761, label %for.body.i.i762.if.end.i.i768_crit_edge, label %if.then.i2.i764

for.body.i.i762.if.end.i.i768_crit_edge:          ; preds = %for.body.i.i762
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i768

if.then.i2.i764:                                  ; preds = %for.body.i.i762
  call void @__sanitizer_cov_trace_pc() #8
  %462 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %hwsq.i, align 4
  %464 = ptrtoint ptr %addr.i1.i755 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %addr.i1.i755, align 4
  %add.i.i763 = add i32 %465, %off.018.i.i758
  %466 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %data3.i.i, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %463, i32 noundef %add.i.i763, i32 noundef %467) #6
  br label %if.end.i.i768

if.end.i.i768:                                    ; preds = %if.then.i2.i764, %for.body.i.i762.if.end.i.i768_crit_edge
  %468 = ptrtoint ptr %stride.i.i756 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %stride.i.i756, align 4
  %add5.i.i765 = add i32 %469, %off.018.i.i758
  %shr.i.i766 = lshr i32 %mask.017.i.i759, 1
  %cmp.not.i3.i767 = icmp ult i32 %mask.017.i.i759, 2
  br i1 %cmp.not.i3.i767, label %if.end.i.i768.if.end148_crit_edge, label %if.end.i.i768.for.body.i.i762_crit_edge

if.end.i.i768.for.body.i.i762_crit_edge:          ; preds = %if.end.i.i768
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i762

if.end.i.i768.if.end148_crit_edge:                ; preds = %if.end.i.i768
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148

if.end148:                                        ; preds = %if.end.i.i768.if.end148_crit_edge, %if.then.i753.if.end148_crit_edge, %lor.lhs.false.i750.if.end148_crit_edge, %if.end.i.i645.if.end148_crit_edge, %if.then.i630.if.end148_crit_edge, %lor.lhs.false.i627.if.end148_crit_edge
  %470 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %hwsq.i, align 4
  call void @nvkm_hwsq_setf(ptr noundef %471, i8 noundef zeroext 16, i32 noundef 1) #6
  %472 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %hwsq.i, align 4
  call void @nvkm_hwsq_wait(ptr noundef %473, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %474 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %sequence.i, align 4
  %476 = ptrtoint ptr %r_fifo to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 %475, ptr %r_fifo, align 4
  %477 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 0, ptr %data2.i, align 4
  %478 = ptrtoint ptr %mask3.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %mask3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %479)
  %cmp.not16.i776 = icmp eq i32 %479, 0
  br i1 %cmp.not16.i776, label %if.end148.cleanup_crit_edge, label %for.body.lr.ph.i780

if.end148.cleanup_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i780:                              ; preds = %if.end148
  %addr.i778 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 1, i32 2
  %stride.i779 = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 1, i32 3
  br label %for.body.i785

for.body.i785:                                    ; preds = %if.end.i791.for.body.i785_crit_edge, %for.body.lr.ph.i780
  %off.018.i781 = phi i32 [ 0, %for.body.lr.ph.i780 ], [ %add5.i788, %if.end.i791.for.body.i785_crit_edge ]
  %mask.017.i782 = phi i32 [ %479, %for.body.lr.ph.i780 ], [ %shr.i789, %if.end.i791.for.body.i785_crit_edge ]
  %and.i783 = and i32 %mask.017.i782, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i783)
  %tobool.not.i784 = icmp eq i32 %and.i783, 0
  br i1 %tobool.not.i784, label %for.body.i785.if.end.i791_crit_edge, label %if.then.i787

for.body.i785.if.end.i791_crit_edge:              ; preds = %for.body.i785
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i791

if.then.i787:                                     ; preds = %for.body.i785
  call void @__sanitizer_cov_trace_pc() #8
  %480 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %hwsq.i, align 4
  %482 = ptrtoint ptr %addr.i778 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %addr.i778, align 4
  %add.i786 = add i32 %483, %off.018.i781
  %484 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %data2.i, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %481, i32 noundef %add.i786, i32 noundef %485) #6
  br label %if.end.i791

if.end.i791:                                      ; preds = %if.then.i787, %for.body.i785.if.end.i791_crit_edge
  %486 = ptrtoint ptr %stride.i779 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %stride.i779, align 4
  %add5.i788 = add i32 %487, %off.018.i781
  %shr.i789 = lshr i32 %mask.017.i782, 1
  %cmp.not.i790 = icmp ult i32 %mask.017.i782, 2
  br i1 %cmp.not.i790, label %if.end.i791.cleanup_crit_edge, label %if.end.i791.for.body.i785_crit_edge

if.end.i791.for.body.i785_crit_edge:              ; preds = %if.end.i791
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i785

if.end.i791.cleanup_crit_edge:                    ; preds = %if.end.i791
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i791.cleanup_crit_edge, %if.end148.cleanup_crit_edge, %calc_pll.exit662.cleanup_crit_edge, %calc_pll.exit662.thread, %calc_pll.exit.cleanup_crit_edge, %calc_pll.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %calc_pll.exit.cleanup_crit_edge ], [ -34, %calc_pll.exit662.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ -34, %calc_pll.exit.thread ], [ -34, %calc_pll.exit662.thread ], [ 0, %if.end148.cleanup_crit_edge ], [ 0, %if.end.i791.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %P1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_clk_prog(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwsq = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwsq, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hwsq_exec.exit_crit_edge, label %if.then.i

entry.hwsq_exec.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_exec.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hwsq.i = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 0, i32 1
  %call.i = tail call i32 @nvkm_hwsq_fini(ptr noundef %hwsq.i, i1 noundef zeroext true) #6
  %2 = ptrtoint ptr %hwsq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %hwsq, align 4
  br label %hwsq_exec.exit

hwsq_exec.exit:                                   ; preds = %if.then.i, %entry.hwsq_exec.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %entry.hwsq_exec.exit_crit_edge ]
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_clk_tidy(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwsq = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwsq, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hwsq_exec.exit_crit_edge, label %if.then.i

entry.hwsq_exec.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwsq_exec.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hwsq.i = getelementptr inbounds %struct.nv50_clk, ptr %base, i32 0, i32 1, i32 0, i32 1
  %call.i = tail call i32 @nvkm_hwsq_fini(ptr noundef %hwsq.i, i1 noundef zeroext false) #6
  %2 = ptrtoint ptr %hwsq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %hwsq, align 4
  br label %hwsq_exec.exit

hwsq_exec.exit:                                   ; preds = %if.then.i, %entry.hwsq_exec.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_clk_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext %allow_reclock, ptr nocapture noundef writeonly %pclk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 640) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @nvkm_clk_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext %allow_reclock, ptr noundef nonnull %call7.i.i) #6
  %1 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %r_fifo = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %r_fifo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %r_fifo, align 8
  %tmp.sroa.4.0.r_fifo.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %3 = ptrtoint ptr %tmp.sroa.4.0.r_fifo.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %tmp.sroa.4.0.r_fifo.sroa_idx, align 4
  %tmp.sroa.581.0.r_fifo.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 2
  %4 = ptrtoint ptr %tmp.sroa.581.0.r_fifo.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9476, ptr %tmp.sroa.581.0.r_fifo.sroa_idx, align 8
  %tmp.sroa.6.0.r_fifo.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 3
  %5 = ptrtoint ptr %tmp.sroa.6.0.r_fifo.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tmp.sroa.6.0.r_fifo.sroa_idx, align 4
  %tmp.sroa.7.0.r_fifo.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 4
  %6 = ptrtoint ptr %tmp.sroa.7.0.r_fifo.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %tmp.sroa.7.0.r_fifo.sroa_idx, align 8
  %tmp.sroa.8.0.r_fifo.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 5
  %7 = ptrtoint ptr %tmp.sroa.8.0.r_fifo.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -559038737, ptr %tmp.sroa.8.0.r_fifo.sroa_idx, align 4
  %r_spll = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %r_spll to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %r_spll, align 8
  %tmp8.sroa.4.0.r_spll.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %tmp8.sroa.4.0.r_spll.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %tmp8.sroa.4.0.r_spll.sroa_idx, align 4
  %tmp8.sroa.580.0.r_spll.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %tmp8.sroa.580.0.r_spll.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16416, ptr %tmp8.sroa.580.0.r_spll.sroa_idx, align 8
  %tmp8.sroa.6.0.r_spll.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 0, i32 3
  %11 = ptrtoint ptr %tmp8.sroa.6.0.r_spll.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tmp8.sroa.6.0.r_spll.sroa_idx, align 4
  %tmp8.sroa.7.0.r_spll.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 0, i32 4
  %12 = ptrtoint ptr %tmp8.sroa.7.0.r_spll.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %tmp8.sroa.7.0.r_spll.sroa_idx, align 8
  %tmp8.sroa.8.0.r_spll.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 0, i32 5
  %13 = ptrtoint ptr %tmp8.sroa.8.0.r_spll.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -559038737, ptr %tmp8.sroa.8.0.r_spll.sroa_idx, align 4
  %arrayidx11 = getelementptr %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx11, align 8
  %tmp12.sroa.4.0.arrayidx11.sroa_idx = getelementptr %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1, i32 1
  %15 = ptrtoint ptr %tmp12.sroa.4.0.arrayidx11.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %tmp12.sroa.4.0.arrayidx11.sroa_idx, align 4
  %tmp12.sroa.579.0.arrayidx11.sroa_idx = getelementptr %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1, i32 2
  %16 = ptrtoint ptr %tmp12.sroa.579.0.arrayidx11.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16420, ptr %tmp12.sroa.579.0.arrayidx11.sroa_idx, align 8
  %tmp12.sroa.6.0.arrayidx11.sroa_idx = getelementptr %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1, i32 3
  %17 = ptrtoint ptr %tmp12.sroa.6.0.arrayidx11.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tmp12.sroa.6.0.arrayidx11.sroa_idx, align 4
  %tmp12.sroa.7.0.arrayidx11.sroa_idx = getelementptr %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1, i32 4
  %18 = ptrtoint ptr %tmp12.sroa.7.0.arrayidx11.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %tmp12.sroa.7.0.arrayidx11.sroa_idx, align 8
  %tmp12.sroa.8.0.arrayidx11.sroa_idx = getelementptr %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1, i32 5
  %19 = ptrtoint ptr %tmp12.sroa.8.0.arrayidx11.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -559038737, ptr %tmp12.sroa.8.0.arrayidx11.sroa_idx, align 4
  %r_nvpll = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %r_nvpll to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %r_nvpll, align 8
  %tmp15.sroa.4.0.r_nvpll.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 0, i32 1
  %21 = ptrtoint ptr %tmp15.sroa.4.0.r_nvpll.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %tmp15.sroa.4.0.r_nvpll.sroa_idx, align 4
  %tmp15.sroa.578.0.r_nvpll.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 0, i32 2
  %22 = ptrtoint ptr %tmp15.sroa.578.0.r_nvpll.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16424, ptr %tmp15.sroa.578.0.r_nvpll.sroa_idx, align 8
  %tmp15.sroa.6.0.r_nvpll.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 0, i32 3
  %23 = ptrtoint ptr %tmp15.sroa.6.0.r_nvpll.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tmp15.sroa.6.0.r_nvpll.sroa_idx, align 4
  %tmp15.sroa.7.0.r_nvpll.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 0, i32 4
  %24 = ptrtoint ptr %tmp15.sroa.7.0.r_nvpll.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %tmp15.sroa.7.0.r_nvpll.sroa_idx, align 8
  %tmp15.sroa.8.0.r_nvpll.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 0, i32 5
  %25 = ptrtoint ptr %tmp15.sroa.8.0.r_nvpll.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -559038737, ptr %tmp15.sroa.8.0.r_nvpll.sroa_idx, align 4
  %arrayidx18 = getelementptr %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 1
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx18, align 8
  %tmp19.sroa.4.0.arrayidx18.sroa_idx = getelementptr %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 1, i32 1
  %27 = ptrtoint ptr %tmp19.sroa.4.0.arrayidx18.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %tmp19.sroa.4.0.arrayidx18.sroa_idx, align 4
  %tmp19.sroa.577.0.arrayidx18.sroa_idx = getelementptr %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 1, i32 2
  %28 = ptrtoint ptr %tmp19.sroa.577.0.arrayidx18.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16428, ptr %tmp19.sroa.577.0.arrayidx18.sroa_idx, align 8
  %tmp19.sroa.6.0.arrayidx18.sroa_idx = getelementptr %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 1, i32 3
  %29 = ptrtoint ptr %tmp19.sroa.6.0.arrayidx18.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %tmp19.sroa.6.0.arrayidx18.sroa_idx, align 4
  %tmp19.sroa.7.0.arrayidx18.sroa_idx = getelementptr %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 1, i32 4
  %30 = ptrtoint ptr %tmp19.sroa.7.0.arrayidx18.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %tmp19.sroa.7.0.arrayidx18.sroa_idx, align 8
  %tmp19.sroa.8.0.arrayidx18.sroa_idx = getelementptr %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 1, i32 5
  %31 = ptrtoint ptr %tmp19.sroa.8.0.arrayidx18.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -559038737, ptr %tmp19.sroa.8.0.arrayidx18.sroa_idx, align 4
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 16
  %32 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chipset, align 4
  %switch.tableidx = add i32 %33, -146
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %34 = icmp ult i32 %switch.tableidx, 5
  br i1 %34, label %switch.lookup, label %if.end6.sw.epilog_crit_edge

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.nv50_clk_new_, i32 0, i32 %switch.tableidx
  %35 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end6.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 18176, %if.end6.sw.epilog_crit_edge ]
  %r_divs23 = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %r_divs23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %r_divs23, align 8
  %tmp24.sroa.4.0.r_divs23.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 1
  %37 = ptrtoint ptr %tmp24.sroa.4.0.r_divs23.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %tmp24.sroa.4.0.r_divs23.sroa_idx, align 4
  %tmp24.sroa.575.0.r_divs23.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 2
  %38 = ptrtoint ptr %tmp24.sroa.575.0.r_divs23.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %tmp24.sroa.575.0.r_divs23.sroa_idx, align 8
  %tmp24.sroa.6.0.r_divs23.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 3
  %39 = ptrtoint ptr %tmp24.sroa.6.0.r_divs23.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %tmp24.sroa.6.0.r_divs23.sroa_idx, align 4
  %tmp24.sroa.7.0.r_divs23.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 4
  %40 = ptrtoint ptr %tmp24.sroa.7.0.r_divs23.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %tmp24.sroa.7.0.r_divs23.sroa_idx, align 8
  %tmp24.sroa.8.0.r_divs23.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 5
  %41 = ptrtoint ptr %tmp24.sroa.8.0.r_divs23.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -559038737, ptr %tmp24.sroa.8.0.r_divs23.sroa_idx, align 4
  %r_mast = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 5
  %42 = ptrtoint ptr %r_mast to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %r_mast, align 8
  %tmp26.sroa.4.0.r_mast.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 1
  %43 = ptrtoint ptr %tmp26.sroa.4.0.r_mast.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %tmp26.sroa.4.0.r_mast.sroa_idx, align 4
  %tmp26.sroa.574.0.r_mast.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 2
  %44 = ptrtoint ptr %tmp26.sroa.574.0.r_mast.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 49216, ptr %tmp26.sroa.574.0.r_mast.sroa_idx, align 8
  %tmp26.sroa.6.0.r_mast.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 3
  %45 = ptrtoint ptr %tmp26.sroa.6.0.r_mast.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tmp26.sroa.6.0.r_mast.sroa_idx, align 4
  %tmp26.sroa.7.0.r_mast.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 4
  %46 = ptrtoint ptr %tmp26.sroa.7.0.r_mast.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %tmp26.sroa.7.0.r_mast.sroa_idx, align 8
  %tmp26.sroa.8.0.r_mast.sroa_idx = getelementptr inbounds %struct.nv50_clk, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 5
  %47 = ptrtoint ptr %tmp26.sroa.8.0.r_mast.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -559038737, ptr %tmp26.sroa.8.0.r_mast.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_clk_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pclk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv50_clk_new_(ptr noundef nonnull @nv50_clk, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext false, ptr noundef %pclk)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_pll_ref(ptr noundef %clk, i32 noundef %base) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 49216
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %5 = zext i32 %base to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %base, label %do.body [
    i32 16424, label %entry.sw.epilog_crit_edge
    i32 16416, label %sw.bb5
    i32 16392, label %sw.bb12
    i32 16432, label %sw.bb19
    i32 59408, label %sw.bb26
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 @nvkm_clk_read(ptr noundef %clk, i32 noundef 0) #6
  br label %cleanup

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %base) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb12, %sw.bb5, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 25, %sw.bb19 ], [ 16, %sw.bb12 ], [ 22, %sw.bb5 ], [ 21, %entry.sw.epilog_crit_edge ]
  %12 = shl i32 1, %.sink
  %13 = and i32 %4, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool33.not = icmp eq i32 %13, 0
  br i1 %tobool33.not, label %if.end37, label %if.then34

if.then34:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call i32 @nvkm_clk_read(ptr noundef %clk, i32 noundef 1) #6
  br label %cleanup

if.end37:                                         ; preds = %sw.epilog
  %14 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device3, align 4
  %call.i = tail call i32 @nvkm_clk_read(ptr noundef %clk, i32 noundef 0) #6
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 57740
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %chipset.i = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 16
  %19 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chipset.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %20, label %do.body113.i [
    i32 80, label %if.end37.sw.bb.i_crit_edge
    i32 160, label %if.end37.sw.bb.i_crit_edge53
    i32 132, label %if.end37.sw.bb35.i_crit_edge
    i32 134, label %if.end37.sw.bb35.i_crit_edge54
    i32 146, label %if.end37.sw.bb35.i_crit_edge55
    i32 148, label %if.end37.sw.bb47.i_crit_edge
    i32 150, label %if.end37.sw.bb47.i_crit_edge56
    i32 152, label %if.end37.sw.bb47.i_crit_edge57
  ]

if.end37.sw.bb47.i_crit_edge57:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47.i

if.end37.sw.bb47.i_crit_edge56:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47.i

if.end37.sw.bb47.i_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47.i

if.end37.sw.bb35.i_crit_edge55:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb35.i

if.end37.sw.bb35.i_crit_edge54:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb35.i

if.end37.sw.bb35.i_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb35.i

if.end37.sw.bb.i_crit_edge53:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end37.sw.bb.i_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end37.sw.bb.i_crit_edge, %if.end37.sw.bb.i_crit_edge53
  %22 = add nsw i32 %base, -16392
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 29) #6
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %23, label %do.body.i [
    i32 3, label %sw.bb.i.sw.epilog.i_crit_edge
    i32 4, label %sw.bb.i.sw.epilog.i_crit_edge58
    i32 0, label %sw.bb8.i
    i32 5, label %sw.epilog.thread.i
  ]

sw.bb.i.sw.epilog.i_crit_edge58:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.thread.i:                               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i, align 4
  br label %sw.epilog119.thread.i

sw.bb8.i:                                         ; preds = %sw.bb.i
  %and9.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %27 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri.i, align 4
  br i1 %tobool10.not.i, label %sw.bb8.i.sw.epilog119.thread.i_crit_edge, label %sw.bb8.i._crit_edge

sw.bb8.i._crit_edge:                              ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %37

sw.bb8.i.sw.epilog119.thread.i_crit_edge:         ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog119.thread.i

do.body.i:                                        ; preds = %sw.bb.i
  %debug.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 5
  %29 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i = icmp eq i32 %30, 0
  br i1 %cmp.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device3, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef %base) #10
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge58
  %and.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %35 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri.i, align 4
  br i1 %tobool.not.i, label %sw.epilog.i.sw.epilog119.thread.i_crit_edge, label %sw.epilog.i._crit_edge

sw.epilog.i._crit_edge:                           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %37

sw.epilog.i.sw.epilog119.thread.i_crit_edge:      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog119.thread.i

37:                                               ; preds = %sw.epilog.i._crit_edge, %sw.bb8.i._crit_edge
  %38 = phi ptr [ %28, %sw.bb8.i._crit_edge ], [ %36, %sw.epilog.i._crit_edge ]
  br label %sw.epilog119.thread.i

sw.epilog119.thread.i:                            ; preds = %37, %sw.epilog.i.sw.epilog119.thread.i_crit_edge, %sw.bb8.i.sw.epilog119.thread.i_crit_edge, %sw.epilog.thread.i
  %39 = phi ptr [ %38, %37 ], [ %36, %sw.epilog.i.sw.epilog119.thread.i_crit_edge ], [ %26, %sw.epilog.thread.i ], [ %28, %sw.bb8.i.sw.epilog119.thread.i_crit_edge ]
  %40 = phi i32 [ 59432, %37 ], [ 59420, %sw.epilog.i.sw.epilog119.thread.i_crit_edge ], [ 59420, %sw.epilog.thread.i ], [ 59420, %sw.bb8.i.sw.epilog119.thread.i_crit_edge ]
  %add.ptr22.i = getelementptr i8, ptr %39, i32 %40
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %and25.i = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %cond.i = select i1 %tobool26.not.i, i32 4, i32 2
  %mul27.i = mul i32 %cond.i, %call.i
  %and28.i = lshr i32 %41, 16
  %shr.i = and i32 %and28.i, 7
  %and29.i = lshr i32 %41, 8
  %shr30.i = and i32 %and29.i, 255
  %add31.i = add nuw nsw i32 %shr30.i, 1
  %and32.i = and i32 %41, 255
  %add34.i = add nuw nsw i32 %and32.i, 1
  br label %if.then121.i

sw.bb35.i:                                        ; preds = %if.end37.sw.bb35.i_crit_edge, %if.end37.sw.bb35.i_crit_edge54, %if.end37.sw.bb35.i_crit_edge55
  %42 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %43, i32 59420
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %and41.i = lshr i32 %44, 16
  %shr42.i = and i32 %and41.i, 7
  br label %sw.epilog119.i

sw.bb47.i:                                        ; preds = %if.end37.sw.bb47.i_crit_edge, %if.end37.sw.bb47.i_crit_edge56, %if.end37.sw.bb47.i_crit_edge57
  %45 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %46, i32 49232
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %48 = add nsw i32 %base, -16392
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 29) #6
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %49, label %do.body64.i [
    i32 3, label %sw.bb47.i.sw.epilog79.i_crit_edge
    i32 0, label %sw.bb56.i
    i32 4, label %sw.bb59.i
    i32 5, label %sw.bb47.i.sw.bb87.i_crit_edge
  ]

sw.bb47.i.sw.bb87.i_crit_edge:                    ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb87.i

sw.bb47.i.sw.epilog79.i_crit_edge:                ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog79.i

sw.bb56.i:                                        ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #8
  %and57.i = lshr i32 %47, 2
  br label %sw.epilog79.i

sw.bb59.i:                                        ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #8
  %and60.i = lshr i32 %47, 11
  br label %sw.epilog79.i

do.body64.i:                                      ; preds = %sw.bb47.i
  %debug66.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 5
  %51 = ptrtoint ptr %debug66.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %debug66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp67.not.i = icmp eq i32 %52, 0
  br i1 %cmp67.not.i, label %do.body64.i.cleanup_crit_edge, label %do.end71.i

do.body64.i.cleanup_crit_edge:                    ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end71.i:                                       ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device3, align 4
  %dev73.i = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dev73.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev73.i, align 8
  %name74.i = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.8, ptr noundef %name74.i, i32 noundef %base) #10
  br label %cleanup

sw.epilog79.i:                                    ; preds = %sw.bb59.i, %sw.bb56.i, %sw.bb47.i.sw.epilog79.i_crit_edge
  %rsel.0.in.i = phi i32 [ %and60.i, %sw.bb59.i ], [ %and57.i, %sw.bb56.i ], [ %47, %sw.bb47.i.sw.epilog79.i_crit_edge ]
  %rsel.0.i = and i32 %rsel.0.in.i, 3
  %57 = zext i32 %rsel.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %rsel.0.i, label %sw.epilog79.unreachabledefault.i [
    i32 0, label %sw.epilog79.i.sw.epilog88.i_crit_edge
    i32 1, label %sw.bb81.i
    i32 2, label %sw.bb84.i
    i32 3, label %sw.epilog79.i.sw.bb87.i_crit_edge
  ]

sw.epilog79.i.sw.bb87.i_crit_edge:                ; preds = %sw.epilog79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb87.i

sw.epilog79.i.sw.epilog88.i_crit_edge:            ; preds = %sw.epilog79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog88.i

sw.bb81.i:                                        ; preds = %sw.epilog79.i
  call void @__sanitizer_cov_trace_pc() #8
  %call83.i = tail call i32 @nvkm_clk_read(ptr noundef %clk, i32 noundef 0) #6
  br label %cleanup

sw.bb84.i:                                        ; preds = %sw.epilog79.i
  call void @__sanitizer_cov_trace_pc() #8
  %call86.i = tail call i32 @nvkm_clk_read(ptr noundef %clk, i32 noundef 1) #6
  br label %cleanup

sw.bb87.i:                                        ; preds = %sw.epilog79.i.sw.bb87.i_crit_edge, %sw.bb47.i.sw.bb87.i_crit_edge
  br label %sw.epilog88.i

sw.epilog79.unreachabledefault.i:                 ; preds = %sw.epilog79.i
  unreachable

sw.epilog88.i:                                    ; preds = %sw.bb87.i, %sw.epilog79.i.sw.epilog88.i_crit_edge
  %id.1.i = phi i32 [ 0, %sw.bb87.i ], [ 40, %sw.epilog79.i.sw.epilog88.i_crit_edge ]
  %58 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri.i, align 4
  %add92.i = add nuw nsw i32 %id.1.i, 59420
  %add.ptr93.i = getelementptr i8, ptr %59, i32 %add92.i
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %61 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pri.i, align 4
  %add99.i = add nuw nsw i32 %id.1.i, 59428
  %add.ptr100.i = getelementptr i8, ptr %62, i32 %add99.i
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100.i) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %shr103.i = lshr i32 %63, 16
  %and104.i = and i32 %shr103.i, 7
  %and105.i = lshr i32 %60, 16
  %shr106.i = and i32 %and105.i, 7
  %add107.i = add nuw nsw i32 %and104.i, %shr106.i
  br label %sw.epilog119.i

do.body113.i:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 115, 0\0A.popsection", ""() #6, !srcloc !62
  unreachable

sw.epilog119.i:                                   ; preds = %sw.epilog88.i, %sw.bb35.i
  %M.0.in.i = phi i32 [ %60, %sw.epilog88.i ], [ %44, %sw.bb35.i ]
  %P.0.i = phi i32 [ %add107.i, %sw.epilog88.i ], [ %shr42.i, %sw.bb35.i ]
  %N.0.in.i = lshr i32 %M.0.in.i, 8
  %N.0.i = and i32 %N.0.in.i, 255
  %M.0.i = and i32 %M.0.in.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %M.0.i)
  %tobool120.not.i = icmp eq i32 %M.0.i, 0
  br i1 %tobool120.not.i, label %sw.epilog119.i.cleanup_crit_edge, label %sw.epilog119.i.if.then121.i_crit_edge

sw.epilog119.i.if.then121.i_crit_edge:            ; preds = %sw.epilog119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then121.i

sw.epilog119.i.cleanup_crit_edge:                 ; preds = %sw.epilog119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then121.i:                                     ; preds = %sw.epilog119.i.if.then121.i_crit_edge, %sw.epilog119.thread.i
  %ref.0180.i = phi i32 [ %mul27.i, %sw.epilog119.thread.i ], [ %call.i, %sw.epilog119.i.if.then121.i_crit_edge ]
  %P.0179.i = phi i32 [ %shr.i, %sw.epilog119.thread.i ], [ %P.0.i, %sw.epilog119.i.if.then121.i_crit_edge ]
  %N.0178.i = phi i32 [ %add31.i, %sw.epilog119.thread.i ], [ %N.0.i, %sw.epilog119.i.if.then121.i_crit_edge ]
  %M.0177.i = phi i32 [ %add34.i, %sw.epilog119.thread.i ], [ %M.0.i, %sw.epilog119.i.if.then121.i_crit_edge ]
  %mul122.i = mul i32 %N.0178.i, %ref.0180.i
  %div.i = udiv i32 %mul122.i, %M.0177.i
  %shr123.i = lshr i32 %div.i, %P.0179.i
  br label %cleanup

cleanup:                                          ; preds = %if.then121.i, %sw.epilog119.i.cleanup_crit_edge, %sw.bb84.i, %sw.bb81.i, %do.end71.i, %do.body64.i.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %if.then34, %do.end, %do.body.cleanup_crit_edge, %sw.bb26
  %retval.0 = phi i32 [ %call28, %sw.bb26 ], [ %call36, %if.then34 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ %shr123.i, %if.then121.i ], [ %call86.i, %sw.bb84.i ], [ %call83.i, %sw.bb81.i ], [ 0, %do.end.i ], [ 0, %do.body.i.cleanup_crit_edge ], [ 0, %do.end71.i ], [ 0, %do.body64.i.cleanup_crit_edge ], [ 0, %sw.epilog119.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_hwsq_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_nsec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_setf(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_wait(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_hwsq_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c", i32 321, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nv50_clk_read._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nv50_clk_read._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c", i32 147, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @read_pll_ref._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @read_pll_ref._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c", i32 69, i32 4}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @read_pll_src._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @read_pll_src._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @read_pll_src._entry.10, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c", i32 97, i32 4}
!21 = !{ptr @read_pll_src._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c", i32 551, i32 34}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c", i32 552, i32 34}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c", i32 553, i32 34}
!28 = !{ptr @nv50_clk, !29, !"nv50_clk", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c", i32 543, i32 1}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 5400585}
!40 = !{i64 2156262958}
!41 = !{i64 972586, i64 972613}
!42 = !{i64 973096, i64 973123, i64 973157, i64 973178}
!43 = !{i64 2156263343}
!44 = !{i64 2156260578}
!45 = !{i64 2156260963}
!46 = !{i64 2156261348}
!47 = !{i64 2156263728}
!48 = !{i64 2156264113}
!49 = !{i64 2156264498}
!50 = !{i64 2156248884}
!51 = !{i64 2156249269}
!52 = !{!"auto-init"}
!53 = !{i64 2156243918}
!54 = !{i8 0, i8 2}
!55 = !{i64 2156258051}
!56 = !{i64 2156249654}
!57 = !{i64 2156252282}
!58 = !{i64 2156252667}
!59 = !{i64 2156253052}
!60 = !{i64 2156255680}
!61 = !{i64 2156256107}
!62 = !{i64 2156256395, i64 2156256906, i64 2156256432, i64 2156256488, i64 2156256522, i64 2156256546, i64 2156256587, i64 2156256608, i64 2156256636, i64 2156256670}
