; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gk104_fifo_runlist_func = type { i8, ptr, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.gk104_fifo_func = type { %struct.anon.146, ptr, %struct.anon.147, ptr, %struct.gk104_fifo_user_user, %struct.gk104_fifo_chan_user, i8 }
%struct.anon.146 = type { ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo_user_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gk104_fifo_chan_user = type { %struct.nvkm_sclass, ptr }
%struct.gk104_fifo_pbdma_func = type { ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_gpuobj = type { %union.anon.81, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.81 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_fault_data = type { i64, i64, i64, i8, i8, i8, i8, i8, i8, i8 }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.139 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.139 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.133, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.133 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gm107_fifo_runlist = dso_local constant { %struct.gk104_fifo_runlist_func, [16 x i8] } { %struct.gk104_fifo_runlist_func { i8 8, ptr @gk110_fifo_runlist_cgrp, ptr @gm107_fifo_runlist_chan, ptr @gk104_fifo_runlist_commit }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DISPLAY\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CAPTURE\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IFB\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BAR1\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BAR2\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SCHED\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST0\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST1\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST2\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST3\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST4\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST5\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST6\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST7\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOSTSR\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PERF\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PMU\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PTP\00", [28 x i8] zeroinitializer }, align 32
@gm107_fifo_fault_engine = dso_local constant { [19 x %struct.nvkm_enum], [68 x i8] } { [19 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 1, ptr @.str, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.1, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.2, ptr null, i32 34, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.3, ptr null, i32 16, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.4, ptr null, i32 12, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.5, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.6, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.7, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.8, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.9, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.10, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.11, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.12, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.13, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.14, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 19, ptr @.str.15, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 23, ptr @.str.16, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 24, ptr @.str.17, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [68 x i8] zeroinitializer }, align 32
@gm107_fifo = internal constant { %struct.gk104_fifo_func, [44 x i8] } { %struct.gk104_fifo_func { %struct.anon.146 { ptr @gm107_fifo_intr_fault }, ptr @gk208_fifo_pbdma, %struct.anon.147 { ptr @gk104_fifo_fault_access, ptr @gm107_fifo_fault_engine, ptr @gk104_fifo_fault_reason, ptr @gk104_fifo_fault_hubclient, ptr @gk104_fifo_fault_gpcclient }, ptr @gm107_fifo_runlist, %struct.gk104_fifo_user_user zeroinitializer, %struct.gk104_fifo_chan_user { %struct.nvkm_sclass { i32 0, i32 0, i32 41327, ptr null, ptr null }, ptr @gk104_fifo_gpfifo_new }, i8 0 }, [44 x i8] zeroinitializer }, align 32
@gk208_fifo_pbdma = external dso_local constant %struct.gk104_fifo_pbdma_func, align 4
@gk104_fifo_fault_access = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gk104_fifo_fault_reason = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gk104_fifo_fault_hubclient = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gk104_fifo_fault_gpcclient = external dso_local constant [0 x %struct.nvkm_enum], align 4
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"gm107_fifo_runlist\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 41, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 50, i32 10 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 51, i32 10 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 52, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 53, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 54, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 55, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 56, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 57, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 58, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 59, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 60, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 61, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 62, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 63, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 64, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 65, i32 10 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 66, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 67, i32 10 }
@___asan_gen_.75 = private unnamed_addr constant [24 x i8] c"gm107_fifo_fault_engine\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 49, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant [11 x i8] c"gm107_fifo\00", align 1
@___asan_gen_.79 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 96, i32 1 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @gm107_fifo_runlist, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @gm107_fifo_fault_engine, ptr @gm107_fifo], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_fifo_runlist to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_fifo_fault_engine to i32), i32 380, i32 448, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_fifo to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk110_fifo_runlist_cgrp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm107_fifo_runlist_chan(ptr nocapture noundef readonly %chan, ptr noundef %memory, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr32, align 4
  %conv = zext i32 %offset to i64
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chid, align 8
  %conv1 = zext i16 %5 to i32
  tail call void %3(ptr noundef %memory, i64 noundef %conv, i32 noundef %conv1) #3
  %6 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptrs, align 4
  %wr323 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wr323 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr323, align 4
  %add4 = add i32 %offset, 4
  %conv5 = zext i32 %add4 to i64
  %inst = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 6
  %10 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inst, align 4
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %addr, align 8
  %shr = lshr i64 %13, 12
  %conv7 = trunc i64 %shr to i32
  tail call void %9(ptr noundef %memory, i64 noundef %conv5, i32 noundef %conv7) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_runlist_commit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm107_fifo_intr_fault(ptr noundef %fifo, i32 noundef %unit) #1 align 64 {
entry:
  %info = alloca %struct.nvkm_fault_data, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %unit, 4
  %add = add i32 %mul, 10240
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add5 = add i32 %mul, 10244
  %add.ptr6 = getelementptr i8, ptr %6, i32 %add5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #3, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add12 = add i32 %mul, 10248
  %add.ptr13 = getelementptr i8, ptr %9, i32 %add12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #3, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !54
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add19 = add i32 %mul, 10252
  %add.ptr20 = getelementptr i8, ptr %12, i32 %add19
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #3, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !55
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info) #3
  %14 = getelementptr inbounds i8, ptr %info, i32 24
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %14, align 8
  %conv = zext i32 %4 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %inst23 = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 1
  %16 = ptrtoint ptr %inst23 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %shl, ptr %inst23, align 8
  %conv24 = zext i32 %10 to i64
  %shl25 = shl nuw i64 %conv24, 32
  %conv26 = zext i32 %7 to i64
  %or = or i64 %shl25, %conv26
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %or, ptr %info, align 8
  %time = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 2
  %18 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %time, align 8
  %conv27 = trunc i32 %unit to i8
  %engine28 = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 3
  %19 = ptrtoint ptr %engine28 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv27, ptr %engine28, align 8
  %valid = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 4
  %20 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %valid, align 1
  %and = lshr i32 %13, 24
  %21 = trunc i32 %and to i8
  %conv29 = and i8 %21, 31
  %gpc = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 5
  %22 = ptrtoint ptr %gpc to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv29, ptr %gpc, align 2
  %and30 = lshr i32 %13, 8
  %23 = trunc i32 %and30 to i8
  %conv32 = and i8 %23, 63
  %client = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 8
  %24 = ptrtoint ptr %client to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv32, ptr %client, align 1
  %25 = trunc i32 %13 to i8
  %26 = lshr i8 %25, 7
  %access = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 7
  %27 = ptrtoint ptr %access to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %access, align 4
  %28 = lshr i8 %25, 6
  %conv38 = and i8 %28, 1
  %hub = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 6
  %29 = ptrtoint ptr %hub to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv38, ptr %hub, align 1
  %conv40 = and i8 %25, 15
  %reason = getelementptr inbounds %struct.nvkm_fault_data, ptr %info, i32 0, i32 9
  %30 = ptrtoint ptr %reason to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv40, ptr %reason, align 2
  call void @nvkm_fifo_fault(ptr noundef %fifo, ptr noundef nonnull %info) #3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_fault(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm107_fifo_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfifo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gk104_fifo_new_(ptr noundef nonnull @gm107_fifo, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef 2048, ptr noundef %pfifo) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_gpfifo_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @gm107_fifo_runlist, !1, !"gm107_fifo_runlist", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 41, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 50, i32 10}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 51, i32 10}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 52, i32 10}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 53, i32 10}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 54, i32 10}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 55, i32 10}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 56, i32 10}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 57, i32 10}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 58, i32 10}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 59, i32 10}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 60, i32 10}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 61, i32 10}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 62, i32 10}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 63, i32 10}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 64, i32 10}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 65, i32 10}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 66, i32 10}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 67, i32 10}
!38 = !{ptr @gm107_fifo_fault_engine, !39, !"gm107_fifo_fault_engine", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 49, i32 1}
!40 = !{ptr @gm107_fifo, !41, !"gm107_fifo", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gm107.c", i32 96, i32 1}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 5396195}
!52 = !{i64 2156272767}
!53 = !{i64 2156273200}
!54 = !{i64 2156273633}
!55 = !{i64 2156274066}
