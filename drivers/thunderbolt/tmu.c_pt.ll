; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/tmu.c_pt.bc'
source_filename = "../drivers/thunderbolt/tmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tb_switch = type { %struct.device, %struct.tb_regs_switch_header, ptr, ptr, %struct.tb_switch_tmu, ptr, i64, ptr, i16, i16, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, i8, i8, i8, i8, %struct.completion, i32, i8, i32, i32, i32, i32, i32, i32 }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.tb_regs_switch_header = type <{ i16, i16, i32, i32, i64 }>
%struct.tb_switch_tmu = type { i32, i8, i32, i8, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tb_port = type { %struct.tb_regs_port_header, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, ptr, i8, %struct.ida, %struct.ida, %struct.list_head, i32, i32, i32 }
%struct.tb_regs_port_header = type { i16, i16, [12 x i8], i32, i32, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }

@tb_switch_tmu_init.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thunderbolt\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tb_switch_tmu_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/thunderbolt/tmu.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%llx: TMU: supports uni-directional mode\0A\00", [54 x i8] zeroinitializer }, align 32
@tb_switch_tmu_init.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%llx: TMU: current mode: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@tb_switch_tmu_post_time.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tb_switch_tmu_post_time\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%llx: local_time[%d]=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@tb_switch_tmu_post_time.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%llx: TMU: updated local time to %#llx\0A\00", [56 x i8] zeroinitializer }, align 32
@tb_switch_tmu_disable.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tb_switch_tmu_disable\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%llx: TMU: disabled\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HiFi\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uni-directional, HiFi\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bi-directional, HiFi\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uni-directional, normal\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@tb_switch_type = external dso_local global %struct.device_type, align 4
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/thunderbolt/tb.h\00", [39 x i8] zeroinitializer }, align 32
@tb_switch_tmu_hifi_enable.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tb_switch_tmu_hifi_enable\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%llx: TMU: mode set to: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 1000]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 1000]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 16, i64 5607, i64 5610, i64 5615]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 16, i64 5607, i64 5610, i64 5615]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 16, i64 5607, i64 5610, i64 5615]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 214, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 226, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 262, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 322, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 389, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 20, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 25, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 27, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 28, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 32, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 33, i32 10 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 36, i32 10 }
@___asan_gen_.76 = private unnamed_addr constant [28 x i8] c"../drivers/thunderbolt/tb.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 538, i32 6 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [29 x i8] c"../drivers/thunderbolt/tmu.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 584, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_switch_tmu_init(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  %val.i127 = alloca i32, align 4
  %val.i102 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %enabled.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load.i = load i64, ptr %enabled.i, align 4
  %1 = and i64 %bf.load.i, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %bf.cast.not.i = icmp eq i64 %1, 0
  br i1 %bf.cast.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @tb_switch_find_cap(ptr noundef %sw, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tmu = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4
  %2 = ptrtoint ptr %tmu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %tmu, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %3 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %port.0164 = getelementptr %struct.tb_port, ptr %4, i32 1
  %5 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load165 = load i32, ptr %max_port_number, align 4
  %bf.lshr166 = lshr i32 %bf.load165, 12
  %bf.clear167 = and i32 %bf.lshr166, 63
  %arrayidx5168 = getelementptr %struct.tb_port, ptr %4, i32 %bf.clear167
  %cmp6.not169 = icmp ugt ptr %port.0164, %arrayidx5168
  br i1 %cmp6.not169, label %if.end3.for.end_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %if.end3.for.body_crit_edge
  %port.0171 = phi ptr [ %port.0, %if.end11.for.body_crit_edge ], [ %port.0164, %if.end3.for.body_crit_edge ]
  %.pn170 = phi ptr [ %port.0171, %if.end11.for.body_crit_edge ], [ %4, %if.end3.for.body_crit_edge ]
  %call8 = tail call i32 @tb_port_find_cap(ptr noundef %port.0171, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp sgt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %cap_tmu = getelementptr %struct.tb_port, ptr %.pn170, i32 1, i32 5
  %6 = ptrtoint ptr %cap_tmu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call8, ptr %cap_tmu, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %for.body.if.end11_crit_edge
  %port.0 = getelementptr %struct.tb_port, ptr %port.0171, i32 1
  %7 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ports, align 4
  %9 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx5 = getelementptr %struct.tb_port, ptr %8, i32 %bf.clear
  %cmp6.not = icmp ugt ptr %port.0, %arrayidx5
  br i1 %cmp6.not, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %if.end3.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !49
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %11 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_unplugged.i.i, align 8, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %tb_sw_read.exit.i, label %tb_switch_tmu_rate_read.exit.thread

tb_switch_tmu_rate_read.exit.thread:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

tb_sw_read.exit.i:                                ; preds = %for.end
  %tmu.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4
  %13 = ptrtoint ptr %tmu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmu.i, align 4
  %add.i = add i32 %14, 3
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %15 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctl.i.i, align 8
  %19 = ptrtoint ptr %enabled.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %bf.load.i.i.i = load i64, ptr %enabled.i, align 4
  %20 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %20, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %22 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %call1.i.i = call i32 @tb_cfg_read(ptr noundef %18, ptr noundef nonnull %val.i, i64 noundef %or.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %tb_switch_tmu_rate_read.exit.thread155, label %tb_switch_tmu_rate_read.exit

tb_switch_tmu_rate_read.exit.thread155:           ; preds = %tb_sw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  %shr.i = lshr i32 %24, 16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end15

tb_switch_tmu_rate_read.exit:                     ; preds = %tb_sw_read.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp13 = icmp slt i32 %call1.i.i, 0
  br i1 %cmp13, label %tb_switch_tmu_rate_read.exit.cleanup_crit_edge, label %tb_switch_tmu_rate_read.exit.if.end15_crit_edge

tb_switch_tmu_rate_read.exit.if.end15_crit_edge:  ; preds = %tb_switch_tmu_rate_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

tb_switch_tmu_rate_read.exit.cleanup_crit_edge:   ; preds = %tb_switch_tmu_rate_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %tb_switch_tmu_rate_read.exit.if.end15_crit_edge, %tb_switch_tmu_rate_read.exit.thread155
  %retval.0.i101158 = phi i32 [ %shr.i, %tb_switch_tmu_rate_read.exit.thread155 ], [ %call1.i.i, %tb_switch_tmu_rate_read.exit.if.end15_crit_edge ]
  %rate = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i101158, ptr %rate, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i102) #6
  %26 = ptrtoint ptr %val.i102 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %val.i102, align 4, !annotation !49
  %27 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_unplugged.i.i, align 8, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i104 = icmp eq i8 %28, 0
  br i1 %tobool.not.i.i104, label %tb_sw_read.exit.i116, label %if.end15.tb_switch_tmu_ucap_supported.exit.thread_crit_edge

if.end15.tb_switch_tmu_ucap_supported.exit.thread_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_switch_tmu_ucap_supported.exit.thread

tb_sw_read.exit.i116:                             ; preds = %if.end15
  %29 = ptrtoint ptr %tmu.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tmu.i, align 4
  %31 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i107 = getelementptr inbounds %struct.tb, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %ctl.i.i107 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctl.i.i107, align 8
  %35 = ptrtoint ptr %enabled.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %bf.load.i.i.i109 = load i64, ptr %enabled.i, align 4
  %36 = lshr i64 %bf.load.i.i.i109, 1
  %shl.i.i.i110 = and i64 %36, 9223372032559808512
  %37 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i112 = zext i32 %38 to i64
  %or.i.i.i113 = or i64 %shl.i.i.i110, %conv2.i.i.i112
  %call1.i.i114 = call i32 @tb_cfg_read(ptr noundef %34, ptr noundef nonnull %val.i102, i64 noundef %or.i.i.i113, i32 noundef 0, i32 noundef 2, i32 noundef %30, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i114)
  %tobool.not.i115 = icmp eq i32 %call1.i.i114, 0
  br i1 %tobool.not.i115, label %tb_switch_tmu_ucap_supported.exit, label %tb_sw_read.exit.i116.tb_switch_tmu_ucap_supported.exit.thread_crit_edge

tb_sw_read.exit.i116.tb_switch_tmu_ucap_supported.exit.thread_crit_edge: ; preds = %tb_sw_read.exit.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_switch_tmu_ucap_supported.exit.thread

tb_switch_tmu_ucap_supported.exit.thread:         ; preds = %tb_sw_read.exit.i116.tb_switch_tmu_ucap_supported.exit.thread_crit_edge, %if.end15.tb_switch_tmu_ucap_supported.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i102) #6
  %has_ucap160 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %has_ucap160 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %has_ucap160, align 4
  br label %if.else

tb_switch_tmu_ucap_supported.exit:                ; preds = %tb_sw_read.exit.i116
  %40 = ptrtoint ptr %val.i102 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val.i102, align 4
  %and.i = and i32 %41, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i102) #6
  %has_ucap = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 1
  %and.i.lobit = lshr exact i32 %and.i, 30
  %42 = trunc i32 %and.i.lobit to i8
  %43 = ptrtoint ptr %has_ucap to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %has_ucap, align 4
  br i1 %tobool1.i.not, label %tb_switch_tmu_ucap_supported.exit.if.else_crit_edge, label %do.body

tb_switch_tmu_ucap_supported.exit.if.else_crit_edge: ; preds = %tb_switch_tmu_ucap_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

do.body:                                          ; preds = %tb_switch_tmu_ucap_supported.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_switch_tmu_init.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_switch_tmu_init, %if.then28)) #6
          to label %do.end [label %if.then28], !srcloc !51

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tb.i.i, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %50 = ptrtoint ptr %enabled.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %bf.load.i119 = load i64, ptr %enabled.i, align 4
  %51 = lshr i64 %bf.load.i119, 1
  %shl.i = and i64 %51, 9223372032559808512
  %52 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i = zext i32 %53 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_switch_tmu_init.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.3, i64 noundef %or.i) #6
  br label %do.end

do.end:                                           ; preds = %if.then28, %do.body
  %54 = ptrtoint ptr %enabled.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %bf.load.i121 = load i64, ptr %enabled.i, align 4
  %55 = lshr i64 %bf.load.i121, 1
  %shl.i122 = and i64 %55, 9223372032559808512
  %56 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i124 = zext i32 %57 to i64
  %or.i125 = or i64 %shl.i122, %conv2.i124
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i125)
  %tobool34.not = icmp eq i64 %or.i125, 0
  br i1 %tobool34.not, label %do.end.do.body44_crit_edge, label %if.then35

do.end.do.body44_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body44

if.then35:                                        ; preds = %do.end
  %58 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ports, align 4
  %60 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %60)
  %bf.load.i126 = load i32, ptr %max_port_number, align 4
  %bf.lshr.i = lshr i32 %bf.load.i126, 18
  %bf.clear.i = and i32 %bf.lshr.i, 63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i127) #6
  %61 = ptrtoint ptr %val.i127 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %val.i127, align 4, !annotation !49
  %sw.i.i = getelementptr %struct.tb_port, ptr %59, i32 %bf.clear.i, i32 1
  %62 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sw.i.i, align 4
  %is_unplugged.i.i128 = getelementptr inbounds %struct.tb_switch, ptr %63, i32 0, i32 20
  %64 = ptrtoint ptr %is_unplugged.i.i128 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %is_unplugged.i.i128, align 8, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i.i129 = icmp eq i8 %65, 0
  br i1 %tobool.not.i.i129, label %tb_port_read.exit.i, label %if.then35.tb_port_tmu_is_unidirectional.exit_crit_edge

if.then35.tb_port_tmu_is_unidirectional.exit_crit_edge: ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_port_tmu_is_unidirectional.exit

tb_port_read.exit.i:                              ; preds = %if.then35
  %cap_tmu.i = getelementptr %struct.tb_port, ptr %59, i32 %bf.clear.i, i32 5
  %66 = ptrtoint ptr %cap_tmu.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cap_tmu.i, align 4
  %add.i130 = add i32 %67, 3
  %tb.i.i131 = getelementptr inbounds %struct.tb_switch, ptr %63, i32 0, i32 5
  %68 = ptrtoint ptr %tb.i.i131 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tb.i.i131, align 8
  %ctl.i.i132 = getelementptr inbounds %struct.tb, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %ctl.i.i132 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctl.i.i132, align 8
  %route_hi.i.i.i133 = getelementptr inbounds %struct.tb_switch, ptr %63, i32 0, i32 1, i32 4
  %72 = ptrtoint ptr %route_hi.i.i.i133 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %bf.load.i.i.i134 = load i64, ptr %route_hi.i.i.i133, align 4
  %73 = lshr i64 %bf.load.i.i.i134, 1
  %shl.i.i.i135 = and i64 %73, 9223372032559808512
  %route_lo.i.i.i136 = getelementptr inbounds %struct.tb_switch, ptr %63, i32 0, i32 1, i32 3
  %74 = ptrtoint ptr %route_lo.i.i.i136 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %route_lo.i.i.i136, align 8
  %conv2.i.i.i137 = zext i32 %75 to i64
  %or.i.i.i138 = or i64 %shl.i.i.i135, %conv2.i.i.i137
  %port3.i.i = getelementptr %struct.tb_port, ptr %59, i32 %bf.clear.i, i32 9
  %76 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %port3.i.i, align 4
  %conv.i.i = zext i8 %77 to i32
  %call4.i.i = call i32 @tb_cfg_read(ptr noundef %71, ptr noundef nonnull %val.i127, i64 noundef %or.i.i.i138, i32 noundef %conv.i.i, i32 noundef 1, i32 noundef %add.i130, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i139 = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i139, label %if.end.i142, label %tb_port_read.exit.i.tb_port_tmu_is_unidirectional.exit_crit_edge

tb_port_read.exit.i.tb_port_tmu_is_unidirectional.exit_crit_edge: ; preds = %tb_port_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_port_tmu_is_unidirectional.exit

if.end.i142:                                      ; preds = %tb_port_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %val.i127 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val.i127, align 4
  %and.i140 = and i32 %79, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140)
  %tobool1.i141 = icmp ne i32 %and.i140, 0
  br label %tb_port_tmu_is_unidirectional.exit

tb_port_tmu_is_unidirectional.exit:               ; preds = %if.end.i142, %tb_port_read.exit.i.tb_port_tmu_is_unidirectional.exit_crit_edge, %if.then35.tb_port_tmu_is_unidirectional.exit_crit_edge
  %retval.0.i143 = phi i1 [ %tobool1.i141, %if.end.i142 ], [ false, %tb_port_read.exit.i.tb_port_tmu_is_unidirectional.exit_crit_edge ], [ false, %if.then35.tb_port_tmu_is_unidirectional.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i127) #6
  %unidirectional = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 3
  %frombool39 = zext i1 %retval.0.i143 to i8
  %80 = ptrtoint ptr %unidirectional to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %frombool39, ptr %unidirectional, align 4
  br label %do.body44

if.else:                                          ; preds = %tb_switch_tmu_ucap_supported.exit.if.else_crit_edge, %tb_switch_tmu_ucap_supported.exit.thread
  %unidirectional42 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 3
  %81 = ptrtoint ptr %unidirectional42 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %unidirectional42, align 4
  br label %do.body44

do.body44:                                        ; preds = %if.else, %tb_port_tmu_is_unidirectional.exit, %do.end.do.body44_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_switch_tmu_init.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_switch_tmu_init, %if.then58)) #6
          to label %cleanup [label %if.then58], !srcloc !51

if.then58:                                        ; preds = %do.body44
  %82 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tb.i.i, align 8
  %nhi60 = getelementptr inbounds %struct.tb, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %nhi60 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %nhi60, align 4
  %pdev61 = getelementptr inbounds %struct.tb_nhi, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %pdev61 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev61, align 4
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %88 = ptrtoint ptr %enabled.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 8)
  %bf.load.i145 = load i64, ptr %enabled.i, align 4
  %89 = lshr i64 %bf.load.i145, 1
  %shl.i146 = and i64 %89, 9223372032559808512
  %90 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i148 = zext i32 %91 to i64
  %or.i149 = or i64 %shl.i146, %conv2.i148
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i149)
  %tobool.not.i150 = icmp eq i64 %or.i149, 0
  %92 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rate, align 4
  %94 = zext i32 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values)
  switch i32 %93, label %sw.default.i [
    i32 0, label %if.then58.tb_switch_tmu_mode_name.exit_crit_edge
    i32 16, label %sw.bb1.i
    i32 1000, label %sw.bb7.i
  ]

if.then58.tb_switch_tmu_mode_name.exit_crit_edge: ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_switch_tmu_mode_name.exit

sw.bb1.i:                                         ; preds = %if.then58
  br i1 %tobool.not.i150, label %sw.bb1.i.tb_switch_tmu_mode_name.exit_crit_edge, label %if.end.i151

sw.bb1.i.tb_switch_tmu_mode_name.exit_crit_edge:  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_switch_tmu_mode_name.exit

if.end.i151:                                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  %unidirectional.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 3
  %95 = ptrtoint ptr %unidirectional.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %unidirectional.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool4.not.i = icmp eq i8 %96, 0
  %.str.13..str.12.i = select i1 %tobool4.not.i, ptr @.str.13, ptr @.str.12
  br label %tb_switch_tmu_mode_name.exit

sw.bb7.i:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  %.str.14..str.15.i = select i1 %tobool.not.i150, ptr @.str.14, ptr @.str.15
  br label %tb_switch_tmu_mode_name.exit

sw.default.i:                                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_switch_tmu_mode_name.exit

tb_switch_tmu_mode_name.exit:                     ; preds = %sw.default.i, %sw.bb7.i, %if.end.i151, %sw.bb1.i.tb_switch_tmu_mode_name.exit_crit_edge, %if.then58.tb_switch_tmu_mode_name.exit_crit_edge
  %retval.0.i152 = phi ptr [ @.str.16, %sw.default.i ], [ @.str.10, %if.then58.tb_switch_tmu_mode_name.exit_crit_edge ], [ @.str.11, %sw.bb1.i.tb_switch_tmu_mode_name.exit_crit_edge ], [ %.str.13..str.12.i, %if.end.i151 ], [ %.str.14..str.15.i, %sw.bb7.i ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_switch_tmu_init.__UNIQUE_ID_ddebug237, ptr noundef %dev62, ptr noundef nonnull @.str.4, i64 noundef %or.i149, ptr noundef nonnull %retval.0.i152) #6
  br label %cleanup

cleanup:                                          ; preds = %tb_switch_tmu_mode_name.exit, %do.body44, %tb_switch_tmu_rate_read.exit.cleanup_crit_edge, %tb_switch_tmu_rate_read.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call1.i.i, %tb_switch_tmu_rate_read.exit.cleanup_crit_edge ], [ 0, %tb_switch_tmu_mode_name.exit ], [ -19, %tb_switch_tmu_rate_read.exit.thread ], [ 0, %do.body44 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_switch_find_cap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_port_find_cap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @tb_switch_tmu_mode_name(ptr nocapture noundef readonly %sw) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %1 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %1, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %3 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool.not = icmp eq i64 %or.i, 0
  %rate = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %5, label %sw.default [
    i32 0, label %entry.cleanup_crit_edge
    i32 16, label %sw.bb1
    i32 1000, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  br i1 %tobool.not, label %sw.bb1.cleanup_crit_edge, label %if.end

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %unidirectional = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %unidirectional to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %unidirectional, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  %.str.13..str.12 = select i1 %tobool4.not, ptr @.str.13, ptr @.str.12
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.str.14..str.15 = select i1 %tobool.not, ptr @.str.14, ptr @.str.15
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb7, %if.end, %sw.bb1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @.str.16, %sw.default ], [ @.str.10, %entry.cleanup_crit_edge ], [ @.str.11, %sw.bb1.cleanup_crit_edge ], [ %.str.13..str.12, %if.end ], [ %.str.14..str.15, %sw.bb7 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_switch_tmu_post_time(ptr nocapture noundef readonly %sw) local_unnamed_addr #0 align 64 {
entry:
  %post_time_high = alloca i32, align 4
  %local_time = alloca i64, align 8
  %post_time = alloca i64, align 8
  %gm_local_time = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %post_time_high) #6
  %0 = ptrtoint ptr %post_time_high to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %post_time_high, align 4
  %tb = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %1 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tb, align 8
  %root_switch1 = getelementptr inbounds %struct.tb, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %root_switch1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %root_switch1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %local_time) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %post_time) #6
  %5 = ptrtoint ptr %post_time to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %post_time, align 8, !annotation !49
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %gm_local_time) #6
  %6 = ptrtoint ptr %gm_local_time to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %gm_local_time, align 4, !annotation !49
  %7 = getelementptr inbounds [3 x i32], ptr %gm_local_time, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !49
  %9 = getelementptr inbounds [3 x i32], ptr %gm_local_time, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !49
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %12 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %12, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %14 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool.not = icmp ne i64 %or.i, 0
  %bf.cast1.i = and i64 %bf.load.i, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i)
  %cmp.i = icmp eq i64 %bf.cast1.i, 32
  %or.cond = select i1 %tobool.not, i1 %cmp.i, i1 false
  br i1 %or.cond, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %entry
  %tmu = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 4
  %15 = ptrtoint ptr %tmu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not = icmp eq i32 %16, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 20
  %17 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_unplugged.i, align 8, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %tb_sw_read.exit, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %if.end7
  %add = add i32 %16, 1
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 5
  %19 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %24 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %24, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %26 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %22, ptr noundef nonnull %gm_local_time, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool11.not = icmp eq i32 %call1.i, 0
  br i1 %tobool11.not, label %tb_sw_read.exit.do.body_crit_edge, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_sw_read.exit.do.body_crit_edge:                ; preds = %tb_sw_read.exit
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %tb_sw_read.exit.do.body_crit_edge
  %i.0175 = phi i32 [ %inc, %do.end.do.body_crit_edge ], [ 0, %tb_sw_read.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_switch_tmu_post_time.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_switch_tmu_post_time, %if.then19)) #6
          to label %do.end [label %if.then19], !srcloc !51

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tb.i, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %bf.load.i145 = load i64, ptr %route_hi.i.i, align 4
  %34 = lshr i64 %bf.load.i145, 1
  %shl.i146 = and i64 %34, 9223372032559808512
  %35 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i148 = zext i32 %36 to i64
  %or.i149 = or i64 %shl.i146, %conv2.i148
  %arrayidx = getelementptr [3 x i32], ptr %gm_local_time, i32 0, i32 %i.0175
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_switch_tmu_post_time.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.6, i64 noundef %or.i149, i32 noundef %i.0175, i32 noundef %38) #6
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  %inc = add nuw nsw i32 %i.0175, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %do.end.do.body_crit_edge

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.end:                                          ; preds = %do.end
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %9, align 4
  %conv = zext i32 %40 to i64
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %7, align 4
  %conv27 = zext i32 %42 to i64
  %43 = ptrtoint ptr %gm_local_time to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %gm_local_time, align 4
  %shr = lshr i32 %44, 16
  %conv30 = zext i32 %shr to i64
  %shl = shl i64 %conv, 48
  %shl31 = shl nuw nsw i64 %conv27, 16
  %or = or i64 %shl31, %shl
  %or32 = or i64 %or, %conv30
  %45 = ptrtoint ptr %local_time to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %or32, ptr %local_time, align 8
  %call33 = call fastcc i32 @tb_switch_tmu_set_time_disruption(ptr noundef %sw, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %for.end
  %tmu37 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4
  %46 = ptrtoint ptr %tmu37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tmu37, align 4
  %add42 = add i32 %47, 24
  %add45 = add i32 %47, 25
  %is_unplugged.i150 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %48 = ptrtoint ptr %is_unplugged.i150 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_unplugged.i150, align 8, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i151 = icmp eq i8 %49, 0
  br i1 %tobool.not.i151, label %tb_sw_write.exit, label %if.end36.out_crit_edge

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

tb_sw_write.exit:                                 ; preds = %if.end36
  %add39 = add i32 %47, 22
  %50 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tb, align 8
  %ctl.i153 = getelementptr inbounds %struct.tb, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %ctl.i153 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctl.i153, align 8
  %54 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %bf.load.i.i155 = load i64, ptr %route_hi.i, align 4
  %55 = lshr i64 %bf.load.i.i155, 1
  %shl.i.i156 = and i64 %55, 9223372032559808512
  %56 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %route_lo.i, align 8
  %conv2.i.i158 = zext i32 %57 to i64
  %or.i.i159 = or i64 %shl.i.i156, %conv2.i.i158
  %call1.i160 = call i32 @tb_cfg_write(ptr noundef %53, ptr noundef nonnull %local_time, i64 noundef %or.i.i159, i32 noundef 0, i32 noundef 2, i32 noundef %add39, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i160)
  %tobool47.not = icmp eq i32 %call1.i160, 0
  br i1 %tobool47.not, label %if.end49, label %tb_sw_write.exit.out_crit_edge

tb_sw_write.exit.out_crit_edge:                   ; preds = %tb_sw_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end49:                                         ; preds = %tb_sw_write.exit
  %58 = ptrtoint ptr %post_time to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 -4294967295, ptr %post_time, align 8
  %call50 = call fastcc i32 @tb_sw_write(ptr noundef %sw, ptr noundef nonnull %post_time, i32 noundef %add42, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.out_crit_edge

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end53:                                         ; preds = %if.end49
  %call54 = call fastcc i32 @tb_sw_write(ptr noundef %sw, ptr noundef nonnull %post_time_high, i32 noundef %add45, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end53.do.body58_crit_edge, label %if.end53.out_crit_edge

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end53.do.body58_crit_edge:                     ; preds = %if.end53
  br label %do.body58

do.body58:                                        ; preds = %land.rhs.do.body58_crit_edge, %if.end53.do.body58_crit_edge
  %retries.0 = phi i32 [ %dec, %land.rhs.do.body58_crit_edge ], [ 100, %if.end53.do.body58_crit_edge ]
  call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #6
  %call59 = call fastcc i32 @tb_sw_read(ptr noundef %sw, ptr noundef nonnull %post_time, i32 noundef %add42, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %do.cond63, label %do.body58.out_crit_edge

do.body58.out_crit_edge:                          ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.cond63:                                        ; preds = %do.body58
  %dec = add nsw i32 %retries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool64.not = icmp eq i32 %dec, 0
  br i1 %tobool64.not, label %do.cond63.out_crit_edge, label %land.rhs

do.cond63.out_crit_edge:                          ; preds = %do.cond63
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.rhs:                                         ; preds = %do.cond63
  %59 = ptrtoint ptr %post_time to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %post_time, align 8
  %tobool65.not = icmp eq i64 %60, 0
  br i1 %tobool65.not, label %do.body70, label %land.rhs.do.body58_crit_edge

land.rhs.do.body58_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body58

do.body70:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_switch_tmu_post_time.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_switch_tmu_post_time, %if.then84)) #6
          to label %out [label %if.then84], !srcloc !51

if.then84:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tb, align 8
  %nhi86 = getelementptr inbounds %struct.tb, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %nhi86 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %nhi86, align 4
  %pdev87 = getelementptr inbounds %struct.tb_nhi, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %pdev87 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev87, align 4
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %67 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 8)
  %bf.load.i164 = load i64, ptr %route_hi.i, align 4
  %68 = lshr i64 %bf.load.i164, 1
  %shl.i165 = and i64 %68, 9223372032559808512
  %69 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %route_lo.i, align 8
  %conv2.i167 = zext i32 %70 to i64
  %or.i168 = or i64 %shl.i165, %conv2.i167
  %71 = ptrtoint ptr %local_time to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %local_time, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_switch_tmu_post_time.__UNIQUE_ID_ddebug239, ptr noundef %dev88, ptr noundef nonnull @.str.7, i64 noundef %or.i168, i64 noundef %72) #6
  br label %out

out:                                              ; preds = %if.then84, %do.body70, %do.cond63.out_crit_edge, %do.body58.out_crit_edge, %if.end53.out_crit_edge, %if.end49.out_crit_edge, %tb_sw_write.exit.out_crit_edge, %if.end36.out_crit_edge
  %ret.0 = phi i32 [ %call1.i160, %tb_sw_write.exit.out_crit_edge ], [ %call50, %if.end49.out_crit_edge ], [ %call54, %if.end53.out_crit_edge ], [ 0, %if.then84 ], [ 0, %do.body70 ], [ -19, %if.end36.out_crit_edge ], [ -110, %do.cond63.out_crit_edge ], [ %call59, %do.body58.out_crit_edge ]
  %call95 = call fastcc i32 @tb_switch_tmu_set_time_disruption(ptr noundef %sw, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %out, %for.end.cleanup_crit_edge, %tb_sw_read.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %call1.i, %tb_sw_read.exit.cleanup_crit_edge ], [ %call33, %for.end.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %gm_local_time) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %post_time) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %local_time) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %post_time_high) #6
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_sw_read(ptr nocapture noundef readonly %sw, ptr noundef %buffer, i32 noundef %offset, i32 noundef %length) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %is_unplugged = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %0 = ptrtoint ptr %is_unplugged to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_unplugged, align 8, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tb = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %2 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tb, align 8
  %ctl = getelementptr inbounds %struct.tb, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl, align 8
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %7 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %7, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %9 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %call1 = tail call i32 @tb_cfg_read(ptr noundef %5, ptr noundef %buffer, i64 noundef %or.i, i32 noundef 0, i32 noundef 2, i32 noundef %offset, i32 noundef %length) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_switch_tmu_set_time_disruption(ptr nocapture noundef readonly %sw, i1 noundef zeroext %set) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !49
  %thunderbolt_version.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %1 = ptrtoint ptr %thunderbolt_version.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %bf.load.i = load i64, ptr %thunderbolt_version.i, align 4
  %bf.cast1.i = and i64 %bf.load.i, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i)
  %cmp.i = icmp eq i64 %bf.cast1.i, 32
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tmu = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4
  %2 = ptrtoint ptr %tmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tmu, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cap_vsec_tmu = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 17
  %4 = ptrtoint ptr %cap_vsec_tmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cap_vsec_tmu, align 4
  %add1 = add i32 %5, 26
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %offset.0 = phi i32 [ %3, %if.then ], [ %add1, %if.else ]
  %bit.0 = phi i32 [ 134217728, %if.then ], [ 4194304, %if.else ]
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %6 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_unplugged.i, align 8, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %tb_sw_read.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %if.end
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %8 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl.i, align 8
  %12 = lshr i64 %bf.load.i, 1
  %shl.i.i = and i64 %12, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %14 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %11, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %offset.0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end4, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %tb_sw_read.exit
  br i1 %set, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %or = or i32 %16, %bit.0
  br label %if.end8

if.else7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %bit.0, -1
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and = and i32 %18, %neg
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then6
  %storemerge = phi i32 [ %and, %if.else7 ], [ %or, %if.then6 ]
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %val, align 4
  %20 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_unplugged.i, align 8, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i21 = icmp eq i8 %21, 0
  br i1 %tobool.not.i21, label %if.end.i31, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i31:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tb.i, align 8
  %ctl.i23 = getelementptr inbounds %struct.tb, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ctl.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctl.i23, align 8
  %26 = ptrtoint ptr %thunderbolt_version.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %bf.load.i.i25 = load i64, ptr %thunderbolt_version.i, align 4
  %27 = lshr i64 %bf.load.i.i25, 1
  %shl.i.i26 = and i64 %27, 9223372032559808512
  %28 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i28 = zext i32 %29 to i64
  %or.i.i29 = or i64 %shl.i.i26, %conv2.i.i28
  %call1.i30 = call i32 @tb_cfg_write(ptr noundef %25, ptr noundef nonnull %val, i64 noundef %or.i.i29, i32 noundef 0, i32 noundef 2, i32 noundef %offset.0, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i31, %if.end8.cleanup_crit_edge, %tb_sw_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %tb_sw_read.exit.cleanup_crit_edge ], [ %call1.i30, %if.end.i31 ], [ -19, %if.end8.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_sw_write(ptr nocapture noundef readonly %sw, ptr noundef %buffer, i32 noundef %offset, i32 noundef %length) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %is_unplugged = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %0 = ptrtoint ptr %is_unplugged to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_unplugged, align 8, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tb = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %2 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tb, align 8
  %ctl = getelementptr inbounds %struct.tb, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl, align 8
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %7 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %7, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %9 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %call1 = tail call i32 @tb_cfg_write(ptr noundef %5, ptr noundef %buffer, i64 noundef %or.i, i32 noundef 0, i32 noundef 2, i32 noundef %offset, i32 noundef %length) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_switch_tmu_disable(ptr nocapture noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %thunderbolt_version.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %thunderbolt_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load.i.i = load i64, ptr %thunderbolt_version.i.i, align 4
  %bf.cast1.i.i = and i64 %bf.load.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i.i)
  %cmp.i.i = icmp eq i64 %bf.cast1.i.i, 32
  br i1 %cmp.i.i, label %entry.if.end_crit_edge, label %lor.rhs.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.rhs.i:                                        ; preds = %entry
  %config.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1
  %1 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %config.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %2)
  %cmp.i3.i = icmp eq i16 %2, -32634
  br i1 %cmp.i3.i, label %if.then.i.i, label %lor.rhs.i.return_crit_edge

lor.rhs.i.return_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then.i.i:                                      ; preds = %lor.rhs.i
  %device_id.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device_id.i.i, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %4, label %if.then.i.i.return_crit_edge [
    i16 5607, label %if.then.i.i.if.end_crit_edge
    i16 5610, label %if.then.i.i.if.end_crit_edge103
    i16 5615, label %if.then.i.i.if.end_crit_edge104
  ]

if.then.i.i.if.end_crit_edge104:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i.i.if.end_crit_edge103:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i.i.return_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %if.then.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge103, %if.then.i.i.if.end_crit_edge104, %entry.if.end_crit_edge
  %rate = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end2:                                          ; preds = %if.end
  %8 = lshr i64 %bf.load.i.i, 1
  %shl.i = and i64 %8, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %10 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool.not = icmp eq i64 %or.i, 0
  br i1 %tobool.not, label %if.else32, label %if.then4

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp.i = icmp eq i32 %7, 16
  br i1 %cmp.i, label %land.rhs.i, label %if.then4.tb_switch_tmu_hifi_is_enabled.exit_crit_edge

if.then4.tb_switch_tmu_hifi_is_enabled.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_switch_tmu_hifi_is_enabled.exit

land.rhs.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %unidirectional2.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %unidirectional2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %unidirectional2.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp5.i = icmp eq i8 %12, 1
  br label %tb_switch_tmu_hifi_is_enabled.exit

tb_switch_tmu_hifi_is_enabled.exit:               ; preds = %land.rhs.i, %if.then4.tb_switch_tmu_hifi_is_enabled.exit_crit_edge
  %13 = phi i1 [ false, %if.then4.tb_switch_tmu_hifi_is_enabled.exit_crit_edge ], [ %cmp5.i, %land.rhs.i ]
  %parent.i = getelementptr inbounds %struct.device, ptr %sw, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %17, @tb_switch_type
  %dev..i.i = select i1 %cmp.i.i.i, ptr %15, ptr null
  %depth.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i75 = load i32, ptr %depth.i, align 4
  %19 = lshr i32 %bf.load.i75, 6
  %mul.i = and i32 %19, 56
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %or.i, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv1.i = and i32 %conv.i, 255
  %bf.lshr4.i = lshr i32 %bf.load.i75, 12
  %bf.clear5.i = and i32 %bf.lshr4.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %bf.clear5.i)
  %cmp.i76 = icmp ugt i32 %conv1.i, %bf.clear5.i
  br i1 %cmp.i76, label %do.end.i, label %if.end27.i, !prof !52

do.end.i:                                         ; preds = %tb_switch_tmu_hifi_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 538, i32 noundef 9, ptr noundef null) #6
  br label %tb_port_at.exit

if.end27.i:                                       ; preds = %tb_switch_tmu_hifi_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 2
  %20 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.tb_port, ptr %21, i32 %conv1.i
  br label %tb_port_at.exit

tb_port_at.exit:                                  ; preds = %if.end27.i, %do.end.i
  %retval.0.i77 = phi ptr [ null, %do.end.i ], [ %arrayidx.i, %if.end27.i ]
  %ports.i78 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %22 = ptrtoint ptr %ports.i78 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ports.i78, align 4
  %upstream_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %upstream_port_number.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load.i79 = load i32, ptr %upstream_port_number.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i79, 18
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %arrayidx.i80 = getelementptr %struct.tb_port, ptr %23, i32 %bf.clear.i
  %dev..i.i.sw = select i1 %13, ptr %dev..i.i, ptr %sw
  %call13 = tail call fastcc i32 @tb_switch_tmu_rate_write(ptr noundef %dev..i.i.sw, i32 noundef 0)
  %call.i.i = tail call fastcc i32 @tb_port_tmu_write(ptr noundef %arrayidx.i80, i8 noundef zeroext 6, i32 noundef 2, i32 noundef 2) #6
  %call.i.i81 = tail call fastcc i32 @tb_port_tmu_write(ptr noundef %retval.0.i77, i8 noundef zeroext 6, i32 noundef 2, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81)
  %tobool17.not = icmp eq i32 %call.i.i81, 0
  br i1 %tobool17.not, label %if.end19, label %tb_port_at.exit.return_crit_edge

tb_port_at.exit.return_crit_edge:                 ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end19:                                         ; preds = %tb_port_at.exit
  br i1 %13, label %if.then21, label %if.end19.if.end34_crit_edge

if.end19.if.end34_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then21:                                        ; preds = %if.end19
  %sw.i.i = getelementptr %struct.tb_port, ptr %23, i32 %bf.clear.i, i32 1
  %25 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sw.i.i, align 4
  %has_ucap.i.i = getelementptr inbounds %struct.tb_switch, ptr %26, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %has_ucap.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %has_ucap.i.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i.i, label %if.then21.tb_port_tmu_unidirectional_disable.exit_crit_edge, label %if.end.i.i83

if.then21.tb_port_tmu_unidirectional_disable.exit_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_port_tmu_unidirectional_disable.exit

if.end.i.i83:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i82 = tail call fastcc i32 @tb_port_tmu_write(ptr noundef %arrayidx.i80, i8 noundef zeroext 3, i32 noundef 536870912, i32 noundef 0) #6
  br label %tb_port_tmu_unidirectional_disable.exit

tb_port_tmu_unidirectional_disable.exit:          ; preds = %if.end.i.i83, %if.then21.tb_port_tmu_unidirectional_disable.exit_crit_edge
  %sw.i.i84 = getelementptr inbounds %struct.tb_port, ptr %retval.0.i77, i32 0, i32 1
  %29 = ptrtoint ptr %sw.i.i84 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sw.i.i84, align 4
  %has_ucap.i.i85 = getelementptr inbounds %struct.tb_switch, ptr %30, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %has_ucap.i.i85 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %has_ucap.i.i85, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i86 = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i86, label %tb_port_tmu_unidirectional_disable.exit.if.end34_crit_edge, label %tb_port_tmu_unidirectional_disable.exit90

tb_port_tmu_unidirectional_disable.exit.if.end34_crit_edge: ; preds = %tb_port_tmu_unidirectional_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

tb_port_tmu_unidirectional_disable.exit90:        ; preds = %tb_port_tmu_unidirectional_disable.exit
  %call.i.i87 = tail call fastcc i32 @tb_port_tmu_write(ptr noundef %retval.0.i77, i8 noundef zeroext 3, i32 noundef 536870912, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i87)
  %tobool24.not = icmp eq i32 %call.i.i87, 0
  br i1 %tobool24.not, label %tb_port_tmu_unidirectional_disable.exit90.if.end34_crit_edge, label %tb_port_tmu_unidirectional_disable.exit90.return_crit_edge

tb_port_tmu_unidirectional_disable.exit90.return_crit_edge: ; preds = %tb_port_tmu_unidirectional_disable.exit90
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

tb_port_tmu_unidirectional_disable.exit90.if.end34_crit_edge: ; preds = %tb_port_tmu_unidirectional_disable.exit90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.else32:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = tail call fastcc i32 @tb_switch_tmu_rate_write(ptr noundef %sw, i32 noundef 0)
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %tb_port_tmu_unidirectional_disable.exit90.if.end34_crit_edge, %tb_port_tmu_unidirectional_disable.exit.if.end34_crit_edge, %if.end19.if.end34_crit_edge
  %unidirectional36 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 3
  %33 = ptrtoint ptr %unidirectional36 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %unidirectional36, align 4
  %34 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %rate, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_switch_tmu_disable.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_switch_tmu_disable, %if.then45)) #6
          to label %return [label %if.then45], !srcloc !51

if.then45:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %tb = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %35 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tb, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %41 = ptrtoint ptr %thunderbolt_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %bf.load.i92 = load i64, ptr %thunderbolt_version.i.i, align 4
  %42 = lshr i64 %bf.load.i92, 1
  %shl.i93 = and i64 %42, 9223372032559808512
  %43 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %route_lo.i, align 8
  %conv2.i95 = zext i32 %44 to i64
  %or.i96 = or i64 %shl.i93, %conv2.i95
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_switch_tmu_disable.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.9, i64 noundef %or.i96) #6
  br label %return

return:                                           ; preds = %if.then45, %if.end34, %tb_port_tmu_unidirectional_disable.exit90.return_crit_edge, %tb_port_at.exit.return_crit_edge, %if.end.return_crit_edge, %if.then.i.i.return_crit_edge, %lor.rhs.i.return_crit_edge
  %retval.1 = phi i32 [ 0, %if.end.return_crit_edge ], [ 0, %if.then45 ], [ 0, %lor.rhs.i.return_crit_edge ], [ 0, %if.then.i.i.return_crit_edge ], [ 0, %if.end34 ], [ %call.i.i87, %tb_port_tmu_unidirectional_disable.exit90.return_crit_edge ], [ %call.i.i81, %tb_port_at.exit.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_switch_tmu_rate_write(ptr nocapture noundef readonly %sw, i32 noundef %rate) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !49
  %tmu = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %1 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_unplugged.i, align 8, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %tb_sw_read.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %entry
  %3 = ptrtoint ptr %tmu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmu, align 4
  %add = add i32 %4, 3
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %5 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %10 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %10, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %12 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %8, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %tb_sw_read.exit
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and = and i32 %14, 65535
  %shl = shl i32 %rate, 16
  %or = or i32 %and, %shl
  store i32 %or, ptr %val, align 4
  %15 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_unplugged.i, align 8, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i11 = icmp eq i8 %16, 0
  br i1 %tobool.not.i11, label %if.end.i21, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i21:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %tmu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tmu, align 4
  %add3 = add i32 %18, 3
  %19 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tb.i, align 8
  %ctl.i13 = getelementptr inbounds %struct.tb, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %ctl.i13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctl.i13, align 8
  %23 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %bf.load.i.i15 = load i64, ptr %route_hi.i.i, align 4
  %24 = lshr i64 %bf.load.i.i15, 1
  %shl.i.i16 = and i64 %24, 9223372032559808512
  %25 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i18 = zext i32 %26 to i64
  %or.i.i19 = or i64 %shl.i.i16, %conv2.i.i18
  %call1.i20 = call i32 @tb_cfg_write(ptr noundef %22, ptr noundef nonnull %val, i64 noundef %or.i.i19, i32 noundef 0, i32 noundef 2, i32 noundef %add3, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i21, %if.end.cleanup_crit_edge, %tb_sw_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %tb_sw_read.exit.cleanup_crit_edge ], [ %call1.i20, %if.end.i21 ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_switch_tmu_enable(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_request = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 5
  %0 = ptrtoint ptr %rate_request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %1)
  %cmp = icmp eq i32 %1, 1000
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @tb_switch_tmu_hifi_enable(ptr noundef %sw)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_switch_tmu_hifi_enable(ptr noundef %sw) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %unidirectional_request = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %unidirectional_request to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %unidirectional_request, align 1, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %has_ucap = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %has_ucap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_ucap, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %thunderbolt_version.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %thunderbolt_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %bf.load.i.i = load i64, ptr %thunderbolt_version.i.i, align 4
  %bf.cast1.i.i = and i64 %bf.load.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i.i)
  %cmp.i.i = icmp eq i64 %bf.cast1.i.i, 32
  br i1 %cmp.i.i, label %if.end.if.end5_crit_edge, label %lor.rhs.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

lor.rhs.i:                                        ; preds = %if.end
  %config.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1
  %5 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %config.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %6)
  %cmp.i3.i = icmp eq i16 %6, -32634
  br i1 %cmp.i3.i, label %if.then.i.i, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i:                                      ; preds = %lor.rhs.i
  %device_id.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device_id.i.i, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %8, label %if.then.i.i.cleanup_crit_edge [
    i16 5607, label %if.then.i.i.if.end5_crit_edge
    i16 5610, label %if.then.i.i.if.end5_crit_edge122
    i16 5615, label %if.then.i.i.if.end5_crit_edge123
  ]

if.then.i.i.if.end5_crit_edge123:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then.i.i.if.end5_crit_edge122:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then.i.i.if.end5_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.then.i.i.if.end5_crit_edge, %if.then.i.i.if.end5_crit_edge122, %if.then.i.i.if.end5_crit_edge123, %if.end.if.end5_crit_edge
  %rate.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp.i = icmp eq i32 %11, 16
  br i1 %cmp.i, label %tb_switch_tmu_hifi_is_enabled.exit, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

tb_switch_tmu_hifi_is_enabled.exit:               ; preds = %if.end5
  %unidirectional2.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %unidirectional2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %unidirectional2.i, align 4, !range !50
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %1)
  %cmp5.i = icmp eq i8 %13, %1
  br i1 %cmp5.i, label %tb_switch_tmu_hifi_is_enabled.exit.cleanup_crit_edge, label %tb_switch_tmu_hifi_is_enabled.exit.if.end11_crit_edge

tb_switch_tmu_hifi_is_enabled.exit.if.end11_crit_edge: ; preds = %tb_switch_tmu_hifi_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

tb_switch_tmu_hifi_is_enabled.exit.cleanup_crit_edge: ; preds = %tb_switch_tmu_hifi_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %tb_switch_tmu_hifi_is_enabled.exit.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  %config.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1
  %14 = ptrtoint ptr %config.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %config.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %15)
  %cmp.i104 = icmp eq i16 %15, -32634
  br i1 %cmp.i104, label %if.then.i, label %if.end11.if.end27_crit_edge

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then.i:                                        ; preds = %if.end11
  %device_id.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device_id.i, align 2
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %17, label %if.then.i.if.end27_crit_edge [
    i16 5607, label %if.then.i.tb_switch_is_titan_ridge.exit_crit_edge
    i16 5610, label %if.then.i.tb_switch_is_titan_ridge.exit_crit_edge124
    i16 5615, label %if.then.i.tb_switch_is_titan_ridge.exit_crit_edge125
  ]

if.then.i.tb_switch_is_titan_ridge.exit_crit_edge125: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_switch_is_titan_ridge.exit

if.then.i.tb_switch_is_titan_ridge.exit_crit_edge124: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_switch_is_titan_ridge.exit

if.then.i.tb_switch_is_titan_ridge.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_switch_is_titan_ridge.exit

if.then.i.if.end27_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

tb_switch_is_titan_ridge.exit:                    ; preds = %if.then.i.tb_switch_is_titan_ridge.exit_crit_edge, %if.then.i.tb_switch_is_titan_ridge.exit_crit_edge124, %if.then.i.tb_switch_is_titan_ridge.exit_crit_edge125
  br i1 %tobool.not, label %tb_switch_is_titan_ridge.exit.if.end27_crit_edge, label %if.then15

tb_switch_is_titan_ridge.exit.if.end27_crit_edge: ; preds = %tb_switch_is_titan_ridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then15:                                        ; preds = %tb_switch_is_titan_ridge.exit
  %clx.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 43
  %19 = ptrtoint ptr %clx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i106 = icmp eq i32 %20, 1
  br i1 %cmp.i106, label %if.end18, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i, align 4, !annotation !49
  %cap_vsec_tmu.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 17
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %22 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_unplugged.i.i, align 8, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i, label %tb_sw_read.exit.i, label %if.end18.tb_switch_tmu_objection_mask.exit.thread_crit_edge

if.end18.tb_switch_tmu_objection_mask.exit.thread_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_switch_tmu_objection_mask.exit.thread

tb_sw_read.exit.i:                                ; preds = %if.end18
  %24 = ptrtoint ptr %cap_vsec_tmu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cap_vsec_tmu.i, align 4
  %add.i = add i32 %25, 9
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %26 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctl.i.i, align 8
  %30 = lshr i64 %bf.load.i.i, 1
  %shl.i.i.i = and i64 %30, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %32 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %call1.i.i = call i32 @tb_cfg_read(ptr noundef %29, ptr noundef nonnull %val.i, i64 noundef %or.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i107, label %tb_sw_read.exit.i.tb_switch_tmu_objection_mask.exit.thread_crit_edge

tb_sw_read.exit.i.tb_switch_tmu_objection_mask.exit.thread_crit_edge: ; preds = %tb_sw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_switch_tmu_objection_mask.exit.thread

if.end.i107:                                      ; preds = %tb_sw_read.exit.i
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i, align 4
  %and.i = and i32 %34, -196609
  store i32 %and.i, ptr %val.i, align 4
  %35 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %is_unplugged.i.i, align 8, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i10.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i10.i, label %tb_switch_tmu_objection_mask.exit, label %if.end.i107.tb_switch_tmu_objection_mask.exit.thread_crit_edge

if.end.i107.tb_switch_tmu_objection_mask.exit.thread_crit_edge: ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_switch_tmu_objection_mask.exit.thread

tb_switch_tmu_objection_mask.exit.thread:         ; preds = %if.end.i107.tb_switch_tmu_objection_mask.exit.thread_crit_edge, %tb_sw_read.exit.i.tb_switch_tmu_objection_mask.exit.thread_crit_edge, %if.end18.tb_switch_tmu_objection_mask.exit.thread_crit_edge
  %retval.0.i108.ph = phi i32 [ -19, %if.end18.tb_switch_tmu_objection_mask.exit.thread_crit_edge ], [ -19, %if.end.i107.tb_switch_tmu_objection_mask.exit.thread_crit_edge ], [ %call1.i.i, %tb_sw_read.exit.i.tb_switch_tmu_objection_mask.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

tb_switch_tmu_objection_mask.exit:                ; preds = %if.end.i107
  %37 = ptrtoint ptr %cap_vsec_tmu.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cap_vsec_tmu.i, align 4
  %add2.i = add i32 %38, 9
  %39 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tb.i.i, align 8
  %ctl.i12.i = getelementptr inbounds %struct.tb, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %ctl.i12.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctl.i12.i, align 8
  %43 = ptrtoint ptr %thunderbolt_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %bf.load.i.i14.i = load i64, ptr %thunderbolt_version.i.i, align 4
  %44 = lshr i64 %bf.load.i.i14.i, 1
  %shl.i.i15.i = and i64 %44, 9223372032559808512
  %45 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i17.i = zext i32 %46 to i64
  %or.i.i18.i = or i64 %shl.i.i15.i, %conv2.i.i17.i
  %call1.i19.i = call i32 @tb_cfg_write(ptr noundef %42, ptr noundef nonnull %val.i, i64 noundef %or.i.i18.i, i32 noundef 0, i32 noundef 2, i32 noundef %add2.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i)
  %tobool20.not = icmp eq i32 %call1.i19.i, 0
  br i1 %tobool20.not, label %if.end22, label %tb_switch_tmu_objection_mask.exit.cleanup_crit_edge

tb_switch_tmu_objection_mask.exit.cleanup_crit_edge: ; preds = %tb_switch_tmu_objection_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %tb_switch_tmu_objection_mask.exit
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %47 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ports.i.i, align 4
  %upstream_port_number.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %upstream_port_number.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load.i.i109 = load i32, ptr %upstream_port_number.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i109, 18
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 63
  %arrayidx.i.i = getelementptr %struct.tb_port, ptr %48, i32 %bf.clear.i.i
  %call1.i = call fastcc i32 @tb_port_tmu_write(ptr noundef %arrayidx.i.i, i8 noundef zeroext 6, i32 noundef 12, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool24.not = icmp eq i32 %call1.i, 0
  br i1 %tobool24.not, label %if.end22.if.end27_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end27:                                         ; preds = %if.end22.if.end27_crit_edge, %tb_switch_is_titan_ridge.exit.if.end27_crit_edge, %if.then.i.if.end27_crit_edge, %if.end11.if.end27_crit_edge
  %call28 = call fastcc i32 @tb_switch_tmu_set_time_disruption(ptr noundef %sw, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %50 = ptrtoint ptr %thunderbolt_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %bf.load.i = load i64, ptr %thunderbolt_version.i.i, align 4
  %51 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %51, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %52 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %53 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool33.not = icmp eq i64 %or.i, 0
  br i1 %tobool33.not, label %if.else50, label %if.then34

if.then34:                                        ; preds = %if.end31
  %54 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp = icmp eq i32 %55, 0
  br i1 %cmp, label %if.then36, label %if.then34.if.end45_crit_edge

if.then34.if.end45_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then36:                                        ; preds = %if.then34
  br i1 %tobool.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = call fastcc i32 @__tb_switch_tmu_enable_unidirectional(ptr noundef %sw)
  br label %if.end41

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = call fastcc i32 @__tb_switch_tmu_enable_bidirectional(ptr noundef %sw)
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then38
  %ret.0 = phi i32 [ %call39, %if.then38 ], [ %call40, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool42.not = icmp eq i32 %ret.0, 0
  br i1 %tobool42.not, label %if.end41.if.end45_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.end45:                                         ; preds = %if.end41.if.end45_crit_edge, %if.then34.if.end45_crit_edge
  %unidirectional48 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 3
  %56 = ptrtoint ptr %unidirectional48 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %1, ptr %unidirectional48, align 4
  br label %if.end55

if.else50:                                        ; preds = %if.end31
  %call51 = call fastcc i32 @tb_switch_tmu_rate_write(ptr noundef %sw, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.else50.if.end55_crit_edge, label %if.else50.cleanup_crit_edge

if.else50.cleanup_crit_edge:                      ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else50.if.end55_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.end55:                                         ; preds = %if.else50.if.end55_crit_edge, %if.end45
  %57 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 16, ptr %rate.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_switch_tmu_hifi_enable.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_switch_tmu_hifi_enable, %if.then64)) #6
          to label %do.end [label %if.then64], !srcloc !51

if.then64:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %tb = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %58 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tb, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %64 = ptrtoint ptr %thunderbolt_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 8)
  %bf.load.i111 = load i64, ptr %thunderbolt_version.i.i, align 4
  %65 = lshr i64 %bf.load.i111, 1
  %shl.i112 = and i64 %65, 9223372032559808512
  %66 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %route_lo.i, align 8
  %conv2.i114 = zext i32 %67 to i64
  %or.i115 = or i64 %shl.i112, %conv2.i114
  %call66 = call fastcc ptr @tb_switch_tmu_mode_name(ptr noundef %sw)
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_switch_tmu_hifi_enable.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.19, i64 noundef %or.i115, ptr noundef nonnull %call66) #6
  br label %do.end

do.end:                                           ; preds = %if.then64, %if.end55
  %call70 = call fastcc i32 @tb_switch_tmu_set_time_disruption(ptr noundef %sw, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else50.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %tb_switch_tmu_objection_mask.exit.cleanup_crit_edge, %tb_switch_tmu_objection_mask.exit.thread, %if.then15.cleanup_crit_edge, %tb_switch_tmu_hifi_is_enabled.exit.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call70, %do.end ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ 0, %tb_switch_tmu_hifi_is_enabled.exit.cleanup_crit_edge ], [ -95, %if.then15.cleanup_crit_edge ], [ %call1.i19.i, %tb_switch_tmu_objection_mask.exit.cleanup_crit_edge ], [ %call1.i, %if.end22.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ %ret.0, %if.end41.cleanup_crit_edge ], [ %call51, %if.else50.cleanup_crit_edge ], [ 0, %lor.rhs.i.cleanup_crit_edge ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ %retval.0.i108.ph, %tb_switch_tmu_objection_mask.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tb_switch_tmu_configure(ptr nocapture noundef writeonly %sw, i32 noundef %rate, i1 noundef zeroext %unidirectional) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %unidirectional to i8
  %unidirectional_request = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %unidirectional_request to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %unidirectional_request, align 1
  %rate_request = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 5
  %1 = ptrtoint ptr %rate_request to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %rate, ptr %rate_request, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_read(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_write(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_port_tmu_write(ptr nocapture noundef readonly %port, i8 noundef zeroext %offset, i32 noundef %mask, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !49
  %cap_tmu = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 5
  %conv = zext i8 %offset to i32
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_unplugged.i, align 8, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %tb_port_read.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_read.exit:                                ; preds = %entry
  %5 = ptrtoint ptr %cap_tmu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cap_tmu, align 4
  %add = add i32 %6, %conv
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %12 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %12, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %14 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %15 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %16 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %10, ptr noundef nonnull %data, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %tb_port_read.exit.cleanup_crit_edge

tb_port_read.exit.cleanup_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %tb_port_read.exit
  %neg = xor i32 %mask, -1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data, align 4
  %and = and i32 %18, %neg
  %or = or i32 %and, %value
  store i32 %or, ptr %data, align 4
  %19 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i12 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %is_unplugged.i12 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_unplugged.i12, align 8, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i13 = icmp eq i8 %22, 0
  br i1 %tobool.not.i13, label %if.end.i25, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i25:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %cap_tmu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cap_tmu, align 4
  %add3 = add i32 %24, %conv
  %tb.i14 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 5
  %25 = ptrtoint ptr %tb.i14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tb.i14, align 8
  %ctl.i15 = getelementptr inbounds %struct.tb, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %ctl.i15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctl.i15, align 8
  %route_hi.i.i16 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %route_hi.i.i16 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %bf.load.i.i17 = load i64, ptr %route_hi.i.i16, align 4
  %30 = lshr i64 %bf.load.i.i17, 1
  %shl.i.i18 = and i64 %30, 9223372032559808512
  %route_lo.i.i19 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %route_lo.i.i19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %route_lo.i.i19, align 8
  %conv2.i.i20 = zext i32 %32 to i64
  %or.i.i21 = or i64 %shl.i.i18, %conv2.i.i20
  %33 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port3.i, align 4
  %conv.i23 = zext i8 %34 to i32
  %call4.i24 = call i32 @tb_cfg_write(ptr noundef %28, ptr noundef nonnull %data, i64 noundef %or.i.i21, i32 noundef %conv.i23, i32 noundef 1, i32 noundef %add3, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i25, %if.end.cleanup_crit_edge, %tb_port_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %tb_port_read.exit.cleanup_crit_edge ], [ %call4.i24, %if.end.i25 ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__tb_switch_tmu_enable_unidirectional(ptr nocapture noundef readonly %sw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %sw, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %3, @tb_switch_type
  %dev..i.i = select i1 %cmp.i.i.i, ptr %1, ptr null
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  %upstream_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %upstream_port_number.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i = load i32, ptr %upstream_port_number.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 18
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %arrayidx.i = getelementptr %struct.tb_port, ptr %5, i32 %bf.clear.i
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %bf.load.i36 = load i64, ptr %route_hi.i, align 4
  %8 = lshr i64 %bf.load.i36, 1
  %shl.i = and i64 %8, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %10 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %depth.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i37 = load i32, ptr %depth.i, align 4
  %12 = lshr i32 %bf.load.i37, 6
  %mul.i = and i32 %12, 56
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %or.i, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv1.i = and i32 %conv.i, 255
  %bf.lshr4.i = lshr i32 %bf.load.i37, 12
  %bf.clear5.i = and i32 %bf.lshr4.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %bf.clear5.i)
  %cmp.i = icmp ugt i32 %conv1.i, %bf.clear5.i
  br i1 %cmp.i, label %do.end.i, label %if.end27.i, !prof !52

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 538, i32 noundef 9, ptr noundef null) #6
  br label %tb_port_at.exit

if.end27.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ports.i38 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ports.i38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ports.i38, align 4
  %arrayidx.i39 = getelementptr %struct.tb_port, ptr %14, i32 %conv1.i
  br label %tb_port_at.exit

tb_port_at.exit:                                  ; preds = %if.end27.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %arrayidx.i39, %if.end27.i ]
  %call4 = tail call fastcc i32 @tb_switch_tmu_rate_write(ptr noundef %dev..i.i, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %tb_port_at.exit.cleanup_crit_edge

tb_port_at.exit.cleanup_crit_edge:                ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %tb_port_at.exit
  %sw.i.i = getelementptr %struct.tb_port, ptr %5, i32 %bf.clear.i, i32 1
  %15 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw.i.i, align 4
  %has_ucap.i.i = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %has_ucap.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_ucap.i.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %if.end.if.end8_crit_edge, label %tb_port_tmu_unidirectional_enable.exit

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

tb_port_tmu_unidirectional_enable.exit:           ; preds = %if.end
  %call.i.i = tail call fastcc i32 @tb_port_tmu_write(ptr noundef %arrayidx.i, i8 noundef zeroext 3, i32 noundef 536870912, i32 noundef 536870912) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not, label %tb_port_tmu_unidirectional_enable.exit.if.end8_crit_edge, label %tb_port_tmu_unidirectional_enable.exit.out_crit_edge

tb_port_tmu_unidirectional_enable.exit.out_crit_edge: ; preds = %tb_port_tmu_unidirectional_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

tb_port_tmu_unidirectional_enable.exit.if.end8_crit_edge: ; preds = %tb_port_tmu_unidirectional_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %tb_port_tmu_unidirectional_enable.exit.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call.i.i40 = tail call fastcc i32 @tb_port_tmu_write(ptr noundef %arrayidx.i, i8 noundef zeroext 6, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40)
  %tobool10.not = icmp eq i32 %call.i.i40, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end12:                                         ; preds = %if.end8
  %sw.i.i41 = getelementptr inbounds %struct.tb_port, ptr %retval.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %sw.i.i41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sw.i.i41, align 4
  %has_ucap.i.i42 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %has_ucap.i.i42 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %has_ucap.i.i42, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i43 = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i43, label %if.end12.if.end16_crit_edge, label %tb_port_tmu_unidirectional_enable.exit47

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

tb_port_tmu_unidirectional_enable.exit47:         ; preds = %if.end12
  %call.i.i44 = tail call fastcc i32 @tb_port_tmu_write(ptr noundef %retval.0.i, i8 noundef zeroext 3, i32 noundef 536870912, i32 noundef 536870912) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %tobool14.not = icmp eq i32 %call.i.i44, 0
  br i1 %tobool14.not, label %tb_port_tmu_unidirectional_enable.exit47.if.end16_crit_edge, label %tb_port_tmu_unidirectional_enable.exit47.out_crit_edge

tb_port_tmu_unidirectional_enable.exit47.out_crit_edge: ; preds = %tb_port_tmu_unidirectional_enable.exit47
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

tb_port_tmu_unidirectional_enable.exit47.if.end16_crit_edge: ; preds = %tb_port_tmu_unidirectional_enable.exit47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end16:                                         ; preds = %tb_port_tmu_unidirectional_enable.exit47.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  %call.i.i48 = tail call fastcc i32 @tb_port_tmu_write(ptr noundef %retval.0.i, i8 noundef zeroext 6, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %tobool18.not = icmp eq i32 %call.i.i48, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out:                                              ; preds = %if.end16.out_crit_edge, %tb_port_tmu_unidirectional_enable.exit47.out_crit_edge, %if.end8.out_crit_edge, %tb_port_tmu_unidirectional_enable.exit.out_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %tb_port_tmu_unidirectional_enable.exit.out_crit_edge ], [ %call.i.i40, %if.end8.out_crit_edge ], [ %call.i.i44, %tb_port_tmu_unidirectional_enable.exit47.out_crit_edge ], [ %call.i.i48, %if.end16.out_crit_edge ]
  tail call fastcc void @__tb_switch_tmu_off(ptr noundef %sw, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end16.cleanup_crit_edge, %tb_port_at.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call4, %tb_port_at.exit.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__tb_switch_tmu_enable_bidirectional(ptr nocapture noundef readonly %sw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %sw, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %3, @tb_switch_type
  %dev..i.i = select i1 %cmp.i.i.i, ptr %1, ptr null
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  %upstream_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %upstream_port_number.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i = load i32, ptr %upstream_port_number.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 18
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %arrayidx.i = getelementptr %struct.tb_port, ptr %5, i32 %bf.clear.i
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %bf.load.i36 = load i64, ptr %route_hi.i, align 4
  %8 = lshr i64 %bf.load.i36, 1
  %shl.i = and i64 %8, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %10 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %depth.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i37 = load i32, ptr %depth.i, align 4
  %12 = lshr i32 %bf.load.i37, 6
  %mul.i = and i32 %12, 56
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %or.i, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv1.i = and i32 %conv.i, 255
  %bf.lshr4.i = lshr i32 %bf.load.i37, 12
  %bf.clear5.i = and i32 %bf.lshr4.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %bf.clear5.i)
  %cmp.i = icmp ugt i32 %conv1.i, %bf.clear5.i
  br i1 %cmp.i, label %do.end.i, label %if.end27.i, !prof !52

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 538, i32 noundef 9, ptr noundef null) #6
  br label %tb_port_at.exit

if.end27.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ports.i38 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ports.i38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ports.i38, align 4
  %arrayidx.i39 = getelementptr %struct.tb_port, ptr %14, i32 %conv1.i
  br label %tb_port_at.exit

tb_port_at.exit:                                  ; preds = %if.end27.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %arrayidx.i39, %if.end27.i ]
  %sw.i.i = getelementptr %struct.tb_port, ptr %5, i32 %bf.clear.i, i32 1
  %15 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw.i.i, align 4
  %has_ucap.i.i = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %has_ucap.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_ucap.i.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %tb_port_at.exit.if.end_crit_edge, label %tb_port_tmu_unidirectional_disable.exit

tb_port_at.exit.if.end_crit_edge:                 ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

tb_port_tmu_unidirectional_disable.exit:          ; preds = %tb_port_at.exit
  %call.i.i = tail call fastcc i32 @tb_port_tmu_write(ptr noundef %arrayidx.i, i8 noundef zeroext 3, i32 noundef 536870912, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %tb_port_tmu_unidirectional_disable.exit.if.end_crit_edge, label %tb_port_tmu_unidirectional_disable.exit.cleanup_crit_edge

tb_port_tmu_unidirectional_disable.exit.cleanup_crit_edge: ; preds = %tb_port_tmu_unidirectional_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_tmu_unidirectional_disable.exit.if.end_crit_edge: ; preds = %tb_port_tmu_unidirectional_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %tb_port_tmu_unidirectional_disable.exit.if.end_crit_edge, %tb_port_at.exit.if.end_crit_edge
  %sw.i.i40 = getelementptr inbounds %struct.tb_port, ptr %retval.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %sw.i.i40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sw.i.i40, align 4
  %has_ucap.i.i41 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %has_ucap.i.i41 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %has_ucap.i.i41, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i42 = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i42, label %if.end.if.end8_crit_edge, label %tb_port_tmu_unidirectional_disable.exit46

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

tb_port_tmu_unidirectional_disable.exit46:        ; preds = %if.end
  %call.i.i43 = tail call fastcc i32 @tb_port_tmu_write(ptr noundef %retval.0.i, i8 noundef zeroext 3, i32 noundef 536870912, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43)
  %tobool6.not = icmp eq i32 %call.i.i43, 0
  br i1 %tobool6.not, label %tb_port_tmu_unidirectional_disable.exit46.if.end8_crit_edge, label %tb_port_tmu_unidirectional_disable.exit46.out_crit_edge

tb_port_tmu_unidirectional_disable.exit46.out_crit_edge: ; preds = %tb_port_tmu_unidirectional_disable.exit46
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

tb_port_tmu_unidirectional_disable.exit46.if.end8_crit_edge: ; preds = %tb_port_tmu_unidirectional_disable.exit46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %tb_port_tmu_unidirectional_disable.exit46.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = tail call fastcc i32 @tb_switch_tmu_rate_write(ptr noundef %sw, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end12:                                         ; preds = %if.end8
  %call.i.i47 = tail call fastcc i32 @tb_port_tmu_write(ptr noundef %arrayidx.i, i8 noundef zeroext 6, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47)
  %tobool14.not = icmp eq i32 %call.i.i47, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end16:                                         ; preds = %if.end12
  %call.i.i48 = tail call fastcc i32 @tb_port_tmu_write(ptr noundef %retval.0.i, i8 noundef zeroext 6, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %tobool18.not = icmp eq i32 %call.i.i48, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out:                                              ; preds = %if.end16.out_crit_edge, %if.end12.out_crit_edge, %if.end8.out_crit_edge, %tb_port_tmu_unidirectional_disable.exit46.out_crit_edge
  %ret.0 = phi i32 [ %call.i.i43, %tb_port_tmu_unidirectional_disable.exit46.out_crit_edge ], [ %call9, %if.end8.out_crit_edge ], [ %call.i.i47, %if.end12.out_crit_edge ], [ %call.i.i48, %if.end16.out_crit_edge ]
  tail call fastcc void @__tb_switch_tmu_off(ptr noundef %sw, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end16.cleanup_crit_edge, %tb_port_tmu_unidirectional_disable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call.i.i, %tb_port_tmu_unidirectional_disable.exit.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tb_switch_tmu_off(ptr nocapture noundef readonly %sw, i1 noundef zeroext %unidirectional) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %sw, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %3, @tb_switch_type
  %dev..i.i = select i1 %cmp.i.i.i, ptr %1, ptr null
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %5 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %5, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %7 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %depth.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i16 = load i32, ptr %depth.i, align 4
  %9 = lshr i32 %bf.load.i16, 6
  %mul.i = and i32 %9, 56
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %or.i, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv1.i = and i32 %conv.i, 255
  %bf.lshr4.i = lshr i32 %bf.load.i16, 12
  %bf.clear5.i = and i32 %bf.lshr4.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %bf.clear5.i)
  %cmp.i = icmp ugt i32 %conv1.i, %bf.clear5.i
  br i1 %cmp.i, label %do.end.i, label %if.end27.i, !prof !52

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 538, i32 noundef 9, ptr noundef null) #6
  br label %tb_port_at.exit

if.end27.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 2
  %10 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.tb_port, ptr %11, i32 %conv1.i
  br label %tb_port_at.exit

tb_port_at.exit:                                  ; preds = %if.end27.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %arrayidx.i, %if.end27.i ]
  %ports.i17 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %12 = ptrtoint ptr %ports.i17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ports.i17, align 4
  %upstream_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %upstream_port_number.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i18 = load i32, ptr %upstream_port_number.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i18, 18
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %arrayidx.i19 = getelementptr %struct.tb_port, ptr %13, i32 %bf.clear.i
  %call.i.i = tail call fastcc i32 @tb_port_tmu_write(ptr noundef %retval.0.i, i8 noundef zeroext 6, i32 noundef 2, i32 noundef 2) #6
  %call.i.i20 = tail call fastcc i32 @tb_port_tmu_write(ptr noundef %arrayidx.i19, i8 noundef zeroext 6, i32 noundef 2, i32 noundef 2) #6
  %dev..i.i.sw = select i1 %unidirectional, ptr %dev..i.i, ptr %sw
  %call7 = tail call fastcc i32 @tb_switch_tmu_rate_write(ptr noundef %dev..i.i.sw, i32 noundef 0)
  %sw.i.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw.i.i, align 4
  %has_ucap.i.i = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %has_ucap.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_ucap.i.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %tb_port_at.exit.tb_port_tmu_unidirectional_disable.exit_crit_edge, label %if.end.i.i

tb_port_at.exit.tb_port_tmu_unidirectional_disable.exit_crit_edge: ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_port_tmu_unidirectional_disable.exit

if.end.i.i:                                       ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i21 = tail call fastcc i32 @tb_port_tmu_write(ptr noundef %retval.0.i, i8 noundef zeroext 3, i32 noundef 536870912, i32 noundef 0) #6
  br label %tb_port_tmu_unidirectional_disable.exit

tb_port_tmu_unidirectional_disable.exit:          ; preds = %if.end.i.i, %tb_port_at.exit.tb_port_tmu_unidirectional_disable.exit_crit_edge
  %sw.i.i22 = getelementptr %struct.tb_port, ptr %13, i32 %bf.clear.i, i32 1
  %19 = ptrtoint ptr %sw.i.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sw.i.i22, align 4
  %has_ucap.i.i23 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %has_ucap.i.i23 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %has_ucap.i.i23, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i24 = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i24, label %tb_port_tmu_unidirectional_disable.exit.tb_port_tmu_unidirectional_disable.exit28_crit_edge, label %if.end.i.i26

tb_port_tmu_unidirectional_disable.exit.tb_port_tmu_unidirectional_disable.exit28_crit_edge: ; preds = %tb_port_tmu_unidirectional_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_port_tmu_unidirectional_disable.exit28

if.end.i.i26:                                     ; preds = %tb_port_tmu_unidirectional_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i25 = tail call fastcc i32 @tb_port_tmu_write(ptr noundef %arrayidx.i19, i8 noundef zeroext 3, i32 noundef 536870912, i32 noundef 0) #6
  br label %tb_port_tmu_unidirectional_disable.exit28

tb_port_tmu_unidirectional_disable.exit28:        ; preds = %if.end.i.i26, %tb_port_tmu_unidirectional_disable.exit.tb_port_tmu_unidirectional_disable.exit28_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/tmu.c", i32 214, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tb_switch_tmu_init.__UNIQUE_ID_ddebug236, !1, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/thunderbolt/tmu.c", i32 226, i32 2}
!8 = !{ptr @tb_switch_tmu_init.__UNIQUE_ID_ddebug237, !7, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/thunderbolt/tmu.c", i32 262, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tb_switch_tmu_post_time.__UNIQUE_ID_ddebug238, !10, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/thunderbolt/tmu.c", i32 322, i32 2}
!15 = !{ptr @tb_switch_tmu_post_time.__UNIQUE_ID_ddebug239, !14, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thunderbolt/tmu.c", i32 389, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @tb_switch_tmu_disable.__UNIQUE_ID_ddebug240, !17, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/thunderbolt/tmu.c", i32 20, i32 10}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/thunderbolt/tmu.c", i32 25, i32 11}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/thunderbolt/tmu.c", i32 27, i32 11}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thunderbolt/tmu.c", i32 28, i32 10}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/thunderbolt/tmu.c", i32 32, i32 11}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/thunderbolt/tmu.c", i32 33, i32 10}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/thunderbolt/tmu.c", i32 36, i32 10}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/thunderbolt/tb.h", i32 538, i32 6}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/thunderbolt/tmu.c", i32 584, i32 2}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @tb_switch_tmu_hifi_enable.__UNIQUE_ID_ddebug241, !37, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{i8 0, i8 2}
!51 = !{i64 2148769770, i64 2148769775, i64 2148769788, i64 2148769832, i64 2148769866, i64 2148769887}
!52 = !{!"branch_weights", i32 1, i32 2000}
