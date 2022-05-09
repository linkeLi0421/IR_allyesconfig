; ModuleID = '/llk/IR_all_yes/drivers/dma/dw-edma/dw-edma-v0-debugfs.c_pt.bc'
source_filename = "../drivers/dma/dw-edma/dw-edma-v0-debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.102 = type { ptr, ptr }
%struct.debugfs_entries = type { ptr, ptr }
%struct.dw_edma_chip = type { ptr, i32, i32, ptr }
%struct.dw_edma = type { [20 x i8], %struct.dma_device, i16, %struct.dma_device, i16, %struct.dw_edma_region, [8 x %struct.dw_edma_region], [8 x %struct.dw_edma_region], [8 x %struct.dw_edma_region], [8 x %struct.dw_edma_region], ptr, i32, i32, ptr, ptr, %struct.raw_spinlock, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dw_edma_region = type { i32, ptr, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.dw_edma_v0_regs = type <{ i32, i32, i32, i32, i32, i32, %union.anon.78, [3 x i32], i32, i32, i32, %union.anon.80, [3 x i32], i32, i32, i32, i32, i32, %union.anon.82, %union.anon.84, i32, i32, i32, i32, [4 x i32], i32, [3 x i32], i32, i32, i32, i32, i32, %union.anon.86, [2 x i32], i32, i32, %union.anon.88, %union.anon.90, i32, i32, i32, i32, [4 x i32], %union.dw_edma_v0_type }>
%union.anon.78 = type { i64 }
%union.anon.80 = type { i64 }
%union.anon.82 = type { i64 }
%union.anon.84 = type { i64 }
%union.anon.86 = type { i64 }
%union.anon.88 = type { i64 }
%union.anon.90 = type { i64 }
%union.dw_edma_v0_type = type { %struct.dw_edma_v0_legacy, [4316 x i8] }
%struct.dw_edma_v0_legacy = type { i32, %struct.dw_edma_v0_ch_regs }
%struct.dw_edma_v0_ch_regs = type <{ i32, i32, i32, %union.anon.92, %union.anon.94, %union.anon.96 }>
%union.anon.92 = type { i64 }
%union.anon.94 = type { i64 }
%union.anon.96 = type { i64 }
%struct.anon.79 = type { i32, i32 }
%struct.anon.83 = type { i32, i32 }
%struct.anon.85 = type { i32, i32 }
%struct.dw_edma_v0_ch = type { %struct.dw_edma_v0_ch_regs, [55 x i32], %struct.dw_edma_v0_ch_regs, [55 x i32] }
%struct.anon.93 = type { i32, i32 }
%struct.anon.95 = type { i32, i32 }
%struct.anon.97 = type { i32, i32 }
%struct.anon.81 = type { i32, i32 }
%struct.anon.87 = type { i32, i32 }
%struct.anon.89 = type { i32, i32 }
%struct.anon.91 = type { i32, i32 }
%struct.dw_edma_v0_unroll = type <{ i32, i32, i32, %union.anon.98, [2 x i32], %union.anon.100, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [30 x i32], [8 x %struct.dw_edma_v0_ch] }>
%union.anon.98 = type { i64 }
%union.anon.100 = type { i64 }
%struct.anon.101 = type { i32, i32 }

@dw = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@regs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mf\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wr_ch_cnt\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rd_ch_cnt\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ctrl_data_arb_prior\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"registers\00", [22 x i8] zeroinitializer }, align 32
@fops_x32 = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_x32_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0x%08llx\0A\00", [22 x i8] zeroinitializer }, align 32
@lim = internal global { [2 x [8 x %struct.anon.102]], [32 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"engine_en\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"doorbell\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ch_arb_weight.lsb\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ch_arb_weight.msb\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"int_status\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"int_mask\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"int_clear\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"err_status\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"done_imwr.lsb\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"done_imwr.msb\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abort_imwr.lsb\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abort_imwr.msb\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch01_imwr_data\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch23_imwr_data\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch45_imwr_data\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch67_imwr_data\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"linked_list_err_en\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"engine_chgroup\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"engine_hshake_cnt.lsb\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"engine_hshake_cnt.msb\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ch0_pwr_en\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ch1_pwr_en\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ch2_pwr_en\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ch3_pwr_en\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ch4_pwr_en\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ch5_pwr_en\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ch6_pwr_en\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ch7_pwr_en\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%d\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ch_control1\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ch_control2\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"transfer_size\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sar.lsb\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sar.msb\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dar.lsb\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dar.msb\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"llp.lsb\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"llp.msb\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"err_status.lsb\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"err_status.msb\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant [3 x i8] c"dw\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 41, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 42, i32 42 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 299, i32 21 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 300, i32 21 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 301, i32 21 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 268, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 269, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 274, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant [9 x i8] c"fops_x32\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 94, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [4 x i8] c"lim\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 47, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 132, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 133, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 134, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 135, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 137, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 138, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 139, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 140, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 141, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 142, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 143, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 144, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 145, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 146, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 147, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 148, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 149, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 153, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 154, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 155, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 156, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 157, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 158, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 159, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 160, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 161, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 162, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 163, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 169, i32 32 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 183, i32 32 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 183, i32 41 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 113, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 114, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 115, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 116, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 117, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 118, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 119, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 120, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 121, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 208, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 209, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private constant [44 x i8] c"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 238, i32 32 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @dw, ptr @regs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @fops_x32, ptr @.str.6, ptr @lim, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_x32 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lim to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_edma_v0_debugfs_on(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  %debugfs_regs.i.i14.i = alloca [9 x %struct.debugfs_entries], align 4
  %debugfs_regs.i15.i = alloca [18 x %struct.debugfs_entries], align 4
  %debugfs_unroll_regs.i16.i = alloca [11 x %struct.debugfs_entries], align 4
  %name107.i.i = alloca [16 x i8], align 1
  %debugfs_regs.i.i.i = alloca [9 x %struct.debugfs_entries], align 4
  %debugfs_regs.i.i = alloca [17 x %struct.debugfs_entries], align 4
  %debugfs_unroll_regs.i.i = alloca [11 x %struct.debugfs_entries], align 4
  %name101.i.i = alloca [16 x i8], align 1
  %debugfs_regs.i = alloca [2 x %struct.debugfs_entries], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dw = getelementptr inbounds %struct.dw_edma_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dw, align 4
  store ptr %1, ptr @dw, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %vaddr = getelementptr inbounds %struct.dw_edma, ptr %1, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vaddr, align 4
  store ptr %3, ptr @regs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end3:                                          ; preds = %if.end
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull %1, ptr noundef null) #5
  %4 = load ptr, ptr @dw, align 4
  %debugfs = getelementptr inbounds %struct.dw_edma, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %debugfs, align 4
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end3.return_crit_edge, label %if.end7

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end7:                                          ; preds = %if.end3
  %mf = getelementptr inbounds %struct.dw_edma, ptr %4, i32 0, i32 12
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef nonnull %call, ptr noundef %mf) #5
  %6 = load ptr, ptr @dw, align 4
  %debugfs9 = getelementptr inbounds %struct.dw_edma, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %debugfs9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %debugfs9, align 4
  %wr_ch_cnt = getelementptr inbounds %struct.dw_edma, ptr %6, i32 0, i32 2
  tail call void @debugfs_create_u16(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %8, ptr noundef %wr_ch_cnt) #5
  %9 = load ptr, ptr @dw, align 4
  %debugfs10 = getelementptr inbounds %struct.dw_edma, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %debugfs10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %debugfs10, align 4
  %rd_ch_cnt = getelementptr inbounds %struct.dw_edma, ptr %9, i32 0, i32 4
  tail call void @debugfs_create_u16(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %11, ptr noundef %rd_ch_cnt) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %debugfs_regs.i) #5
  %12 = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i, i32 0, i32 1
  %13 = getelementptr inbounds [2 x %struct.debugfs_entries], ptr %debugfs_regs.i, i32 0, i32 1
  %14 = getelementptr inbounds [2 x %struct.debugfs_entries], ptr %debugfs_regs.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %debugfs_regs.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.3, ptr %debugfs_regs.i, align 4
  %16 = load ptr, ptr @regs, align 4
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %12, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.4, ptr %13, align 4
  %ctrl.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ctrl.i, ptr %14, align 4
  %20 = load ptr, ptr @dw, align 4
  %debugfs.i = getelementptr inbounds %struct.dw_edma, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %debugfs.i, align 4
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.5, ptr noundef %22) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end7.dw_edma_debugfs_regs.exit_crit_edge, label %for.body.i.i

if.end7.dw_edma_debugfs_regs.exit_crit_edge:      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %dw_edma_debugfs_regs.exit

for.body.i.i:                                     ; preds = %if.end7
  %23 = ptrtoint ptr %debugfs_regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %debugfs_regs.i, align 4
  %reg.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i, i32 0, i32 1
  %25 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i, align 4
  %call.i.i = tail call ptr @debugfs_create_file_unsafe(ptr noundef %24, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef %26, ptr noundef nonnull @fops_x32) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.i.dw_edma_debugfs_create_x32.exit.i_crit_edge, label %for.body.i.i.1

for.body.i.i.dw_edma_debugfs_create_x32.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dw_edma_debugfs_create_x32.exit.i

for.body.i.i.1:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i.1 = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i, i32 1
  %27 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i.1, align 4
  %reg.i.i.1 = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i, i32 1, i32 1
  %29 = ptrtoint ptr %reg.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i.i.1, align 4
  %call.i.i.1 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %28, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef %30, ptr noundef nonnull @fops_x32) #5
  br label %dw_edma_debugfs_create_x32.exit.i

dw_edma_debugfs_create_x32.exit.i:                ; preds = %for.body.i.i.1, %for.body.i.i.dw_edma_debugfs_create_x32.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %debugfs_regs.i.i) #5
  %31 = ptrtoint ptr %debugfs_regs.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.7, ptr %debugfs_regs.i.i, align 4
  %reg.i8.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 0, i32 1
  %32 = load ptr, ptr @regs, align 4
  %wr_engine_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %reg.i8.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %wr_engine_en.i.i, ptr %reg.i8.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 1
  %34 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.8, ptr %arrayinit.element.i.i, align 4
  %reg2.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 1, i32 1
  %wr_doorbell.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 4
  %35 = ptrtoint ptr %reg2.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %wr_doorbell.i.i, ptr %reg2.i.i, align 4
  %arrayinit.element3.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 2
  %36 = ptrtoint ptr %arrayinit.element3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.9, ptr %arrayinit.element3.i.i, align 4
  %reg5.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 2, i32 1
  %wr_ch_arb_weight.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 6
  %37 = ptrtoint ptr %reg5.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %wr_ch_arb_weight.i.i, ptr %reg5.i.i, align 4
  %arrayinit.element6.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 3
  %38 = ptrtoint ptr %arrayinit.element6.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.10, ptr %arrayinit.element6.i.i, align 4
  %reg8.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 3, i32 1
  %msb.i.i = getelementptr inbounds %struct.anon.79, ptr %wr_ch_arb_weight.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %reg8.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msb.i.i, ptr %reg8.i.i, align 4
  %arrayinit.element10.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 4
  %40 = ptrtoint ptr %arrayinit.element10.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.11, ptr %arrayinit.element10.i.i, align 4
  %reg12.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 4, i32 1
  %wr_int_status.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 13
  %41 = ptrtoint ptr %reg12.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %wr_int_status.i.i, ptr %reg12.i.i, align 4
  %arrayinit.element13.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 5
  %42 = ptrtoint ptr %arrayinit.element13.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.12, ptr %arrayinit.element13.i.i, align 4
  %reg15.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 5, i32 1
  %wr_int_mask.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 15
  %43 = ptrtoint ptr %reg15.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %wr_int_mask.i.i, ptr %reg15.i.i, align 4
  %arrayinit.element16.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 6
  %44 = ptrtoint ptr %arrayinit.element16.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.13, ptr %arrayinit.element16.i.i, align 4
  %reg18.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 6, i32 1
  %wr_int_clear.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 16
  %45 = ptrtoint ptr %reg18.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %wr_int_clear.i.i, ptr %reg18.i.i, align 4
  %arrayinit.element19.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 7
  %46 = ptrtoint ptr %arrayinit.element19.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.14, ptr %arrayinit.element19.i.i, align 4
  %reg21.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 7, i32 1
  %wr_err_status.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 17
  %47 = ptrtoint ptr %reg21.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %wr_err_status.i.i, ptr %reg21.i.i, align 4
  %arrayinit.element22.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 8
  %48 = ptrtoint ptr %arrayinit.element22.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.15, ptr %arrayinit.element22.i.i, align 4
  %reg24.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 8, i32 1
  %wr_done_imwr.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 18
  %49 = ptrtoint ptr %reg24.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %wr_done_imwr.i.i, ptr %reg24.i.i, align 4
  %arrayinit.element26.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 9
  %50 = ptrtoint ptr %arrayinit.element26.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.16, ptr %arrayinit.element26.i.i, align 4
  %reg28.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 9, i32 1
  %msb30.i.i = getelementptr inbounds %struct.anon.83, ptr %wr_done_imwr.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %reg28.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msb30.i.i, ptr %reg28.i.i, align 4
  %arrayinit.element31.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 10
  %52 = ptrtoint ptr %arrayinit.element31.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.17, ptr %arrayinit.element31.i.i, align 4
  %reg33.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 10, i32 1
  %wr_abort_imwr.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 19
  %53 = ptrtoint ptr %reg33.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %wr_abort_imwr.i.i, ptr %reg33.i.i, align 4
  %arrayinit.element35.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 11
  %54 = ptrtoint ptr %arrayinit.element35.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.18, ptr %arrayinit.element35.i.i, align 4
  %reg37.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 11, i32 1
  %msb39.i.i = getelementptr inbounds %struct.anon.85, ptr %wr_abort_imwr.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %reg37.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msb39.i.i, ptr %reg37.i.i, align 4
  %arrayinit.element40.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 12
  %56 = ptrtoint ptr %arrayinit.element40.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.19, ptr %arrayinit.element40.i.i, align 4
  %reg42.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 12, i32 1
  %wr_ch01_imwr_data.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 20
  %57 = ptrtoint ptr %reg42.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %wr_ch01_imwr_data.i.i, ptr %reg42.i.i, align 4
  %arrayinit.element43.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 13
  %58 = ptrtoint ptr %arrayinit.element43.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.20, ptr %arrayinit.element43.i.i, align 4
  %reg45.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 13, i32 1
  %wr_ch23_imwr_data.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 21
  %59 = ptrtoint ptr %reg45.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %wr_ch23_imwr_data.i.i, ptr %reg45.i.i, align 4
  %arrayinit.element46.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 14
  %60 = ptrtoint ptr %arrayinit.element46.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.21, ptr %arrayinit.element46.i.i, align 4
  %reg48.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 14, i32 1
  %wr_ch45_imwr_data.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 22
  %61 = ptrtoint ptr %reg48.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %wr_ch45_imwr_data.i.i, ptr %reg48.i.i, align 4
  %arrayinit.element49.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 15
  %62 = ptrtoint ptr %arrayinit.element49.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.22, ptr %arrayinit.element49.i.i, align 4
  %reg51.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 15, i32 1
  %wr_ch67_imwr_data.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 23
  %63 = ptrtoint ptr %reg51.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %wr_ch67_imwr_data.i.i, ptr %reg51.i.i, align 4
  %arrayinit.element52.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 16
  %64 = ptrtoint ptr %arrayinit.element52.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.23, ptr %arrayinit.element52.i.i, align 4
  %reg54.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 16, i32 1
  %wr_linked_list_err_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 25
  %65 = ptrtoint ptr %reg54.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %wr_linked_list_err_en.i.i, ptr %reg54.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %debugfs_unroll_regs.i.i) #5
  %66 = ptrtoint ptr %debugfs_unroll_regs.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.24, ptr %debugfs_unroll_regs.i.i, align 4
  %reg57.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 0, i32 1
  %wr_engine_chgroup.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 43, i32 0, i32 1
  %67 = ptrtoint ptr %reg57.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %wr_engine_chgroup.i.i, ptr %reg57.i.i, align 4
  %arrayinit.element58.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 1
  %68 = ptrtoint ptr %arrayinit.element58.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.25, ptr %arrayinit.element58.i.i, align 4
  %reg60.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 1, i32 1
  %wr_engine_hshake_cnt.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 43, i32 0, i32 1, i32 2
  %69 = ptrtoint ptr %reg60.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %wr_engine_hshake_cnt.i.i, ptr %reg60.i.i, align 4
  %arrayinit.element63.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 2
  %70 = ptrtoint ptr %arrayinit.element63.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.26, ptr %arrayinit.element63.i.i, align 4
  %reg65.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 2, i32 1
  %msb68.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 43, i32 0, i32 1, i32 3
  %71 = ptrtoint ptr %reg65.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %msb68.i.i, ptr %reg65.i.i, align 4
  %arrayinit.element69.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 3
  %72 = ptrtoint ptr %arrayinit.element69.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.27, ptr %arrayinit.element69.i.i, align 4
  %reg71.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 3, i32 1
  %wr_ch0_pwr_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 43, i32 1, i32 4
  %73 = ptrtoint ptr %reg71.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %wr_ch0_pwr_en.i.i, ptr %reg71.i.i, align 4
  %arrayinit.element73.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 4
  %74 = ptrtoint ptr %arrayinit.element73.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.28, ptr %arrayinit.element73.i.i, align 4
  %reg75.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 4, i32 1
  %wr_ch1_pwr_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 43, i32 1, i32 8
  %75 = ptrtoint ptr %reg75.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %wr_ch1_pwr_en.i.i, ptr %reg75.i.i, align 4
  %arrayinit.element77.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 5
  %76 = ptrtoint ptr %arrayinit.element77.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.29, ptr %arrayinit.element77.i.i, align 4
  %reg79.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 5, i32 1
  %wr_ch2_pwr_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 43, i32 1, i32 12
  %77 = ptrtoint ptr %reg79.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %wr_ch2_pwr_en.i.i, ptr %reg79.i.i, align 4
  %arrayinit.element81.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 6
  %78 = ptrtoint ptr %arrayinit.element81.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.30, ptr %arrayinit.element81.i.i, align 4
  %reg83.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 6, i32 1
  %wr_ch3_pwr_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 43, i32 1, i32 16
  %79 = ptrtoint ptr %reg83.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %wr_ch3_pwr_en.i.i, ptr %reg83.i.i, align 4
  %arrayinit.element85.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 7
  %80 = ptrtoint ptr %arrayinit.element85.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.31, ptr %arrayinit.element85.i.i, align 4
  %reg87.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 7, i32 1
  %wr_ch4_pwr_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 43, i32 1, i32 20
  %81 = ptrtoint ptr %reg87.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %wr_ch4_pwr_en.i.i, ptr %reg87.i.i, align 4
  %arrayinit.element89.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 8
  %82 = ptrtoint ptr %arrayinit.element89.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.32, ptr %arrayinit.element89.i.i, align 4
  %reg91.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 8, i32 1
  %wr_ch5_pwr_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 43, i32 1, i32 24
  %83 = ptrtoint ptr %reg91.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %wr_ch5_pwr_en.i.i, ptr %reg91.i.i, align 4
  %arrayinit.element93.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 9
  %84 = ptrtoint ptr %arrayinit.element93.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @.str.33, ptr %arrayinit.element93.i.i, align 4
  %reg95.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 9, i32 1
  %wr_ch6_pwr_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 43, i32 1, i32 28
  %85 = ptrtoint ptr %reg95.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %wr_ch6_pwr_en.i.i, ptr %reg95.i.i, align 4
  %arrayinit.element97.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 10
  %86 = ptrtoint ptr %arrayinit.element97.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.34, ptr %arrayinit.element97.i.i, align 4
  %reg99.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 10, i32 1
  %wr_ch7_pwr_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %32, i32 0, i32 43, i32 1, i32 32
  %87 = ptrtoint ptr %reg99.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %wr_ch7_pwr_en.i.i, ptr %reg99.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name101.i.i) #5
  %88 = call ptr @memset(ptr %name101.i.i, i32 255, i32 16)
  %call.i9.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.35, ptr noundef nonnull %call.i) #5
  %tobool.not.i10.i = icmp eq ptr %call.i9.i, null
  br i1 %tobool.not.i10.i, label %dw_edma_debugfs_create_x32.exit.i.dw_edma_debugfs_regs_wr.exit.i_crit_edge, label %dw_edma_debugfs_create_x32.exit.i.for.body.i.i.i_crit_edge

dw_edma_debugfs_create_x32.exit.i.for.body.i.i.i_crit_edge: ; preds = %dw_edma_debugfs_create_x32.exit.i
  br label %for.body.i.i.i

dw_edma_debugfs_create_x32.exit.i.dw_edma_debugfs_regs_wr.exit.i_crit_edge: ; preds = %dw_edma_debugfs_create_x32.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dw_edma_debugfs_regs_wr.exit.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %dw_edma_debugfs_create_x32.exit.i.for.body.i.i.i_crit_edge
  %i.07.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %dw_edma_debugfs_create_x32.exit.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 %i.07.i.i.i
  %89 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i.i.i, align 4
  %reg.i.i.i = getelementptr %struct.debugfs_entries, ptr %debugfs_regs.i.i, i32 %i.07.i.i.i, i32 1
  %91 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg.i.i.i, align 4
  %call.i.i.i = tail call ptr @debugfs_create_file_unsafe(ptr noundef %90, i16 noundef zeroext 292, ptr noundef nonnull %call.i9.i, ptr noundef %92, ptr noundef nonnull @fops_x32) #5
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  %inc.i.i.i = add nuw nsw i32 %i.07.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %inc.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 17
  %or.cond.i.i.i = select i1 %tobool.not.i.i.i, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %dw_edma_debugfs_create_x32.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

dw_edma_debugfs_create_x32.exit.i.i:              ; preds = %for.body.i.i.i
  %93 = load ptr, ptr @dw, align 4
  %mf.i.i = getelementptr inbounds %struct.dw_edma, ptr %93, i32 0, i32 12
  %94 = ptrtoint ptr %mf.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mf.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %95)
  %cmp.i.i = icmp eq i32 %95, 5
  br i1 %cmp.i.i, label %dw_edma_debugfs_create_x32.exit.i.i.for.body.i151.i.i_crit_edge, label %dw_edma_debugfs_create_x32.exit.i.i.if.end104.i.i_crit_edge

dw_edma_debugfs_create_x32.exit.i.i.if.end104.i.i_crit_edge: ; preds = %dw_edma_debugfs_create_x32.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104.i.i

dw_edma_debugfs_create_x32.exit.i.i.for.body.i151.i.i_crit_edge: ; preds = %dw_edma_debugfs_create_x32.exit.i.i
  br label %for.body.i151.i.i

for.body.i151.i.i:                                ; preds = %for.body.i151.i.i.for.body.i151.i.i_crit_edge, %dw_edma_debugfs_create_x32.exit.i.i.for.body.i151.i.i_crit_edge
  %i.07.i143.i.i = phi i32 [ %inc.i148.i.i, %for.body.i151.i.i.for.body.i151.i.i_crit_edge ], [ 0, %dw_edma_debugfs_create_x32.exit.i.i.for.body.i151.i.i_crit_edge ]
  %arrayidx.i144.i.i = getelementptr %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 %i.07.i143.i.i
  %96 = ptrtoint ptr %arrayidx.i144.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i144.i.i, align 4
  %reg.i145.i.i = getelementptr %struct.debugfs_entries, ptr %debugfs_unroll_regs.i.i, i32 %i.07.i143.i.i, i32 1
  %98 = ptrtoint ptr %reg.i145.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg.i145.i.i, align 4
  %call.i146.i.i = tail call ptr @debugfs_create_file_unsafe(ptr noundef %97, i16 noundef zeroext 292, ptr noundef nonnull %call.i9.i, ptr noundef %99, ptr noundef nonnull @fops_x32) #5
  %tobool.not.i147.i.i = icmp eq ptr %call.i146.i.i, null
  %inc.i148.i.i = add nuw nsw i32 %i.07.i143.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %inc.i148.i.i)
  %exitcond.not.i149.i.i = icmp eq i32 %inc.i148.i.i, 11
  %or.cond.i150.i.i = select i1 %tobool.not.i147.i.i, i1 true, i1 %exitcond.not.i149.i.i
  br i1 %or.cond.i150.i.i, label %for.body.i151.i.i.if.end104.i.i_crit_edge, label %for.body.i151.i.i.for.body.i151.i.i_crit_edge

for.body.i151.i.i.for.body.i151.i.i_crit_edge:    ; preds = %for.body.i151.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i151.i.i

for.body.i151.i.i.if.end104.i.i_crit_edge:        ; preds = %for.body.i151.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104.i.i

if.end104.i.i:                                    ; preds = %for.body.i151.i.i.if.end104.i.i_crit_edge, %dw_edma_debugfs_create_x32.exit.i.i.if.end104.i.i_crit_edge
  %100 = load ptr, ptr @dw, align 4
  %wr_ch_cnt154.i.i = getelementptr inbounds %struct.dw_edma, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %wr_ch_cnt154.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %wr_ch_cnt154.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %cmp105156.not.i.i = icmp eq i16 %102, 0
  br i1 %cmp105156.not.i.i, label %if.end104.i.i.dw_edma_debugfs_regs_wr.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end104.i.i.dw_edma_debugfs_regs_wr.exit.i_crit_edge: ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dw_edma_debugfs_regs_wr.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end104.i.i
  %reg.i153.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 0, i32 1
  %arrayinit.element.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 1
  %reg2.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 1, i32 1
  %arrayinit.element3.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 2
  %reg5.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 2, i32 1
  %arrayinit.element6.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 3
  %reg8.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 3, i32 1
  %arrayinit.element9.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 4
  %reg11.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 4, i32 1
  %arrayinit.element13.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 5
  %reg15.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 5, i32 1
  %arrayinit.element17.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 6
  %reg19.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 6, i32 1
  %arrayinit.element22.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 7
  %reg24.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 7, i32 1
  %arrayinit.element26.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 8
  %reg28.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 8, i32 1
  br label %for.body.i11.i

for.body.i11.i:                                   ; preds = %dw_edma_debugfs_regs_ch.exit.i.i.for.body.i11.i_crit_edge, %for.body.lr.ph.i.i
  %i.0157.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i13.i, %dw_edma_debugfs_regs_ch.exit.i.i.for.body.i11.i_crit_edge ]
  %call108.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name101.i.i, i32 noundef 16, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %i.0157.i.i) #5
  %call110.i.i = call ptr @debugfs_create_dir(ptr noundef nonnull %name101.i.i, ptr noundef nonnull %call.i9.i) #5
  %tobool111.not.i.i = icmp eq ptr %call110.i.i, null
  br i1 %tobool111.not.i.i, label %for.body.i11.i.dw_edma_debugfs_regs_wr.exit.i_crit_edge, label %if.end113.i.i

for.body.i11.i.dw_edma_debugfs_regs_wr.exit.i_crit_edge: ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dw_edma_debugfs_regs_wr.exit.i

if.end113.i.i:                                    ; preds = %for.body.i11.i
  %103 = load ptr, ptr @regs, align 4
  %ch.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %103, i32 0, i32 43, i32 1, i32 220
  %arrayidx.i12.i = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch.i.i, i32 0, i32 %i.0157.i.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %debugfs_regs.i.i.i) #5
  %104 = ptrtoint ptr %debugfs_regs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.38, ptr %debugfs_regs.i.i.i, align 4
  %105 = ptrtoint ptr %reg.i153.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %arrayidx.i12.i, ptr %reg.i153.i.i, align 4
  %106 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @.str.39, ptr %arrayinit.element.i.i.i, align 4
  %ch_control2.i.i.i = getelementptr inbounds %struct.dw_edma_v0_ch_regs, ptr %arrayidx.i12.i, i32 0, i32 1
  %107 = ptrtoint ptr %reg2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %ch_control2.i.i.i, ptr %reg2.i.i.i, align 4
  %108 = ptrtoint ptr %arrayinit.element3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.40, ptr %arrayinit.element3.i.i.i, align 4
  %transfer_size.i.i.i = getelementptr inbounds %struct.dw_edma_v0_ch_regs, ptr %arrayidx.i12.i, i32 0, i32 2
  %109 = ptrtoint ptr %reg5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %transfer_size.i.i.i, ptr %reg5.i.i.i, align 4
  %110 = ptrtoint ptr %arrayinit.element6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @.str.41, ptr %arrayinit.element6.i.i.i, align 4
  %sar.i.i.i = getelementptr inbounds %struct.dw_edma_v0_ch_regs, ptr %arrayidx.i12.i, i32 0, i32 3
  %111 = ptrtoint ptr %reg8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %sar.i.i.i, ptr %reg8.i.i.i, align 4
  %112 = ptrtoint ptr %arrayinit.element9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @.str.42, ptr %arrayinit.element9.i.i.i, align 4
  %msb.i.i.i = getelementptr inbounds %struct.anon.93, ptr %sar.i.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %reg11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %msb.i.i.i, ptr %reg11.i.i.i, align 4
  %114 = ptrtoint ptr %arrayinit.element13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @.str.43, ptr %arrayinit.element13.i.i.i, align 4
  %dar.i.i.i = getelementptr inbounds %struct.dw_edma_v0_ch_regs, ptr %arrayidx.i12.i, i32 0, i32 4
  %115 = ptrtoint ptr %reg15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %dar.i.i.i, ptr %reg15.i.i.i, align 4
  %116 = ptrtoint ptr %arrayinit.element17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @.str.44, ptr %arrayinit.element17.i.i.i, align 4
  %msb21.i.i.i = getelementptr inbounds %struct.anon.95, ptr %dar.i.i.i, i32 0, i32 1
  %117 = ptrtoint ptr %reg19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %msb21.i.i.i, ptr %reg19.i.i.i, align 4
  %118 = ptrtoint ptr %arrayinit.element22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.45, ptr %arrayinit.element22.i.i.i, align 4
  %llp.i.i.i = getelementptr inbounds %struct.dw_edma_v0_ch_regs, ptr %arrayidx.i12.i, i32 0, i32 5
  %119 = ptrtoint ptr %reg24.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %llp.i.i.i, ptr %reg24.i.i.i, align 4
  %120 = ptrtoint ptr %arrayinit.element26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.46, ptr %arrayinit.element26.i.i.i, align 4
  %msb30.i.i.i = getelementptr inbounds %struct.anon.97, ptr %llp.i.i.i, i32 0, i32 1
  %121 = ptrtoint ptr %reg28.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %msb30.i.i.i, ptr %reg28.i.i.i, align 4
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end113.i.i
  %i.07.i.i.i.i = phi i32 [ 0, %if.end113.i.i ], [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 %i.07.i.i.i.i
  %122 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %reg.i.i.i.i = getelementptr %struct.debugfs_entries, ptr %debugfs_regs.i.i.i, i32 %i.07.i.i.i.i, i32 1
  %124 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %reg.i.i.i.i, align 4
  %call.i.i.i.i = call ptr @debugfs_create_file_unsafe(ptr noundef %123, i16 noundef zeroext 292, ptr noundef nonnull %call110.i.i, ptr noundef %125, ptr noundef nonnull @fops_x32) #5
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  %inc.i.i.i.i = add nuw nsw i32 %i.07.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc.i.i.i.i)
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 9
  %or.cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %dw_edma_debugfs_regs_ch.exit.i.i, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i

dw_edma_debugfs_regs_ch.exit.i.i:                 ; preds = %for.body.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %debugfs_regs.i.i.i) #5
  %126 = load ptr, ptr @regs, align 4
  %ch116.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %126, i32 0, i32 43, i32 1, i32 220
  %arrayidx117.i.i = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch116.i.i, i32 0, i32 %i.0157.i.i
  %arrayidx119.i.i = getelementptr [8 x %struct.anon.102], ptr @lim, i32 0, i32 %i.0157.i.i
  %127 = ptrtoint ptr %arrayidx119.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %arrayidx117.i.i, ptr %arrayidx119.i.i, align 4
  %padding_1.i.i = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch116.i.i, i32 0, i32 %i.0157.i.i, i32 1
  %end.i.i = getelementptr [8 x %struct.anon.102], ptr @lim, i32 0, i32 %i.0157.i.i, i32 1
  %128 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %padding_1.i.i, ptr %end.i.i, align 4
  %inc.i13.i = add nuw nsw i32 %i.0157.i.i, 1
  %129 = load ptr, ptr @dw, align 4
  %wr_ch_cnt.i.i = getelementptr inbounds %struct.dw_edma, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %wr_ch_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %wr_ch_cnt.i.i, align 4
  %conv.i.i = zext i16 %131 to i32
  %cmp105.i.i = icmp ult i32 %inc.i13.i, %conv.i.i
  br i1 %cmp105.i.i, label %dw_edma_debugfs_regs_ch.exit.i.i.for.body.i11.i_crit_edge, label %dw_edma_debugfs_regs_ch.exit.i.i.dw_edma_debugfs_regs_wr.exit.i_crit_edge

dw_edma_debugfs_regs_ch.exit.i.i.dw_edma_debugfs_regs_wr.exit.i_crit_edge: ; preds = %dw_edma_debugfs_regs_ch.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dw_edma_debugfs_regs_wr.exit.i

dw_edma_debugfs_regs_ch.exit.i.i.for.body.i11.i_crit_edge: ; preds = %dw_edma_debugfs_regs_ch.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i11.i

dw_edma_debugfs_regs_wr.exit.i:                   ; preds = %dw_edma_debugfs_regs_ch.exit.i.i.dw_edma_debugfs_regs_wr.exit.i_crit_edge, %for.body.i11.i.dw_edma_debugfs_regs_wr.exit.i_crit_edge, %if.end104.i.i.dw_edma_debugfs_regs_wr.exit.i_crit_edge, %dw_edma_debugfs_create_x32.exit.i.dw_edma_debugfs_regs_wr.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name101.i.i) #5
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %debugfs_unroll_regs.i.i) #5
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %debugfs_regs.i.i) #5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %debugfs_regs.i15.i) #5
  %132 = ptrtoint ptr %debugfs_regs.i15.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @.str.7, ptr %debugfs_regs.i15.i, align 4
  %reg.i17.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 0, i32 1
  %133 = load ptr, ptr @regs, align 4
  %rd_engine_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 8
  %134 = ptrtoint ptr %reg.i17.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %rd_engine_en.i.i, ptr %reg.i17.i, align 4
  %arrayinit.element.i18.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 1
  %135 = ptrtoint ptr %arrayinit.element.i18.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @.str.8, ptr %arrayinit.element.i18.i, align 4
  %reg2.i19.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 1, i32 1
  %rd_doorbell.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 9
  %136 = ptrtoint ptr %reg2.i19.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %rd_doorbell.i.i, ptr %reg2.i19.i, align 4
  %arrayinit.element3.i20.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 2
  %137 = ptrtoint ptr %arrayinit.element3.i20.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @.str.9, ptr %arrayinit.element3.i20.i, align 4
  %reg5.i21.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 2, i32 1
  %rd_ch_arb_weight.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 11
  %138 = ptrtoint ptr %reg5.i21.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %rd_ch_arb_weight.i.i, ptr %reg5.i21.i, align 4
  %arrayinit.element6.i22.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 3
  %139 = ptrtoint ptr %arrayinit.element6.i22.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @.str.10, ptr %arrayinit.element6.i22.i, align 4
  %reg8.i23.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 3, i32 1
  %msb.i24.i = getelementptr inbounds %struct.anon.81, ptr %rd_ch_arb_weight.i.i, i32 0, i32 1
  %140 = ptrtoint ptr %reg8.i23.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %msb.i24.i, ptr %reg8.i23.i, align 4
  %arrayinit.element10.i25.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 4
  %141 = ptrtoint ptr %arrayinit.element10.i25.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @.str.11, ptr %arrayinit.element10.i25.i, align 4
  %reg12.i26.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 4, i32 1
  %rd_int_status.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 27
  %142 = ptrtoint ptr %reg12.i26.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %rd_int_status.i.i, ptr %reg12.i26.i, align 4
  %arrayinit.element13.i27.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 5
  %143 = ptrtoint ptr %arrayinit.element13.i27.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @.str.12, ptr %arrayinit.element13.i27.i, align 4
  %reg15.i28.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 5, i32 1
  %rd_int_mask.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 29
  %144 = ptrtoint ptr %reg15.i28.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %rd_int_mask.i.i, ptr %reg15.i28.i, align 4
  %arrayinit.element16.i29.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 6
  %145 = ptrtoint ptr %arrayinit.element16.i29.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @.str.13, ptr %arrayinit.element16.i29.i, align 4
  %reg18.i30.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 6, i32 1
  %rd_int_clear.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 30
  %146 = ptrtoint ptr %reg18.i30.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %rd_int_clear.i.i, ptr %reg18.i30.i, align 4
  %arrayinit.element19.i31.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 7
  %147 = ptrtoint ptr %arrayinit.element19.i31.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @.str.47, ptr %arrayinit.element19.i31.i, align 4
  %reg21.i32.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 7, i32 1
  %rd_err_status.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 32
  %148 = ptrtoint ptr %reg21.i32.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %rd_err_status.i.i, ptr %reg21.i32.i, align 4
  %arrayinit.element23.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 8
  %149 = ptrtoint ptr %arrayinit.element23.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @.str.48, ptr %arrayinit.element23.i.i, align 4
  %reg25.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 8, i32 1
  %msb27.i.i = getelementptr inbounds %struct.anon.87, ptr %rd_err_status.i.i, i32 0, i32 1
  %150 = ptrtoint ptr %reg25.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %msb27.i.i, ptr %reg25.i.i, align 4
  %arrayinit.element28.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 9
  %151 = ptrtoint ptr %arrayinit.element28.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @.str.23, ptr %arrayinit.element28.i.i, align 4
  %reg30.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 9, i32 1
  %rd_linked_list_err_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 34
  %152 = ptrtoint ptr %reg30.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %rd_linked_list_err_en.i.i, ptr %reg30.i.i, align 4
  %arrayinit.element31.i33.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 10
  %153 = ptrtoint ptr %arrayinit.element31.i33.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @.str.15, ptr %arrayinit.element31.i33.i, align 4
  %reg33.i34.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 10, i32 1
  %rd_done_imwr.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 36
  %154 = ptrtoint ptr %reg33.i34.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %rd_done_imwr.i.i, ptr %reg33.i34.i, align 4
  %arrayinit.element35.i35.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 11
  %155 = ptrtoint ptr %arrayinit.element35.i35.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @.str.16, ptr %arrayinit.element35.i35.i, align 4
  %reg37.i36.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 11, i32 1
  %msb39.i37.i = getelementptr inbounds %struct.anon.89, ptr %rd_done_imwr.i.i, i32 0, i32 1
  %156 = ptrtoint ptr %reg37.i36.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %msb39.i37.i, ptr %reg37.i36.i, align 4
  %arrayinit.element40.i38.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 12
  %157 = ptrtoint ptr %arrayinit.element40.i38.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @.str.17, ptr %arrayinit.element40.i38.i, align 4
  %reg42.i39.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 12, i32 1
  %rd_abort_imwr.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 37
  %158 = ptrtoint ptr %reg42.i39.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %rd_abort_imwr.i.i, ptr %reg42.i39.i, align 4
  %arrayinit.element44.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 13
  %159 = ptrtoint ptr %arrayinit.element44.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @.str.18, ptr %arrayinit.element44.i.i, align 4
  %reg46.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 13, i32 1
  %msb48.i.i = getelementptr inbounds %struct.anon.91, ptr %rd_abort_imwr.i.i, i32 0, i32 1
  %160 = ptrtoint ptr %reg46.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %msb48.i.i, ptr %reg46.i.i, align 4
  %arrayinit.element49.i40.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 14
  %161 = ptrtoint ptr %arrayinit.element49.i40.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @.str.19, ptr %arrayinit.element49.i40.i, align 4
  %reg51.i41.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 14, i32 1
  %rd_ch01_imwr_data.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 38
  %162 = ptrtoint ptr %reg51.i41.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %rd_ch01_imwr_data.i.i, ptr %reg51.i41.i, align 4
  %arrayinit.element52.i42.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 15
  %163 = ptrtoint ptr %arrayinit.element52.i42.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @.str.20, ptr %arrayinit.element52.i42.i, align 4
  %reg54.i43.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 15, i32 1
  %rd_ch23_imwr_data.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 39
  %164 = ptrtoint ptr %reg54.i43.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %rd_ch23_imwr_data.i.i, ptr %reg54.i43.i, align 4
  %arrayinit.element55.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 16
  %165 = ptrtoint ptr %arrayinit.element55.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @.str.21, ptr %arrayinit.element55.i.i, align 4
  %reg57.i44.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 16, i32 1
  %rd_ch45_imwr_data.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 40
  %166 = ptrtoint ptr %reg57.i44.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %rd_ch45_imwr_data.i.i, ptr %reg57.i44.i, align 4
  %arrayinit.element58.i45.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 17
  %167 = ptrtoint ptr %arrayinit.element58.i45.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @.str.22, ptr %arrayinit.element58.i45.i, align 4
  %reg60.i46.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 17, i32 1
  %rd_ch67_imwr_data.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 41
  %168 = ptrtoint ptr %reg60.i46.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %rd_ch67_imwr_data.i.i, ptr %reg60.i46.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %debugfs_unroll_regs.i16.i) #5
  %169 = ptrtoint ptr %debugfs_unroll_regs.i16.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @.str.24, ptr %debugfs_unroll_regs.i16.i, align 4
  %reg63.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 0, i32 1
  %rd_engine_chgroup.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 43, i32 0, i32 1, i32 1
  %170 = ptrtoint ptr %reg63.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %rd_engine_chgroup.i.i, ptr %reg63.i.i, align 4
  %arrayinit.element64.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 1
  %171 = ptrtoint ptr %arrayinit.element64.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @.str.25, ptr %arrayinit.element64.i.i, align 4
  %reg66.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 1, i32 1
  %type67.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 43
  %rd_engine_hshake_cnt.i.i = getelementptr inbounds %struct.dw_edma_v0_unroll, ptr %type67.i.i, i32 0, i32 5
  %172 = ptrtoint ptr %reg66.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %rd_engine_hshake_cnt.i.i, ptr %reg66.i.i, align 4
  %arrayinit.element69.i47.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 2
  %173 = ptrtoint ptr %arrayinit.element69.i47.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @.str.26, ptr %arrayinit.element69.i47.i, align 4
  %reg71.i48.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 2, i32 1
  %msb74.i.i = getelementptr inbounds %struct.anon.101, ptr %rd_engine_hshake_cnt.i.i, i32 0, i32 1
  %174 = ptrtoint ptr %reg71.i48.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %msb74.i.i, ptr %reg71.i48.i, align 4
  %arrayinit.element75.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 3
  %175 = ptrtoint ptr %arrayinit.element75.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @.str.27, ptr %arrayinit.element75.i.i, align 4
  %reg77.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 3, i32 1
  %rd_ch0_pwr_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 43, i32 1, i32 68
  %176 = ptrtoint ptr %reg77.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %rd_ch0_pwr_en.i.i, ptr %reg77.i.i, align 4
  %arrayinit.element79.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 4
  %177 = ptrtoint ptr %arrayinit.element79.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @.str.28, ptr %arrayinit.element79.i.i, align 4
  %reg81.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 4, i32 1
  %rd_ch1_pwr_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 43, i32 1, i32 72
  %178 = ptrtoint ptr %reg81.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %rd_ch1_pwr_en.i.i, ptr %reg81.i.i, align 4
  %arrayinit.element83.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 5
  %179 = ptrtoint ptr %arrayinit.element83.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @.str.29, ptr %arrayinit.element83.i.i, align 4
  %reg85.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 5, i32 1
  %rd_ch2_pwr_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 43, i32 1, i32 76
  %180 = ptrtoint ptr %reg85.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %rd_ch2_pwr_en.i.i, ptr %reg85.i.i, align 4
  %arrayinit.element87.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 6
  %181 = ptrtoint ptr %arrayinit.element87.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @.str.30, ptr %arrayinit.element87.i.i, align 4
  %reg89.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 6, i32 1
  %rd_ch3_pwr_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 43, i32 1, i32 80
  %182 = ptrtoint ptr %reg89.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %rd_ch3_pwr_en.i.i, ptr %reg89.i.i, align 4
  %arrayinit.element91.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 7
  %183 = ptrtoint ptr %arrayinit.element91.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @.str.31, ptr %arrayinit.element91.i.i, align 4
  %reg93.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 7, i32 1
  %rd_ch4_pwr_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 43, i32 1, i32 84
  %184 = ptrtoint ptr %reg93.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %rd_ch4_pwr_en.i.i, ptr %reg93.i.i, align 4
  %arrayinit.element95.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 8
  %185 = ptrtoint ptr %arrayinit.element95.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @.str.32, ptr %arrayinit.element95.i.i, align 4
  %reg97.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 8, i32 1
  %rd_ch5_pwr_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 43, i32 1, i32 88
  %186 = ptrtoint ptr %reg97.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %rd_ch5_pwr_en.i.i, ptr %reg97.i.i, align 4
  %arrayinit.element99.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 9
  %187 = ptrtoint ptr %arrayinit.element99.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @.str.33, ptr %arrayinit.element99.i.i, align 4
  %reg101.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 9, i32 1
  %rd_ch6_pwr_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 43, i32 1, i32 92
  %188 = ptrtoint ptr %reg101.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %rd_ch6_pwr_en.i.i, ptr %reg101.i.i, align 4
  %arrayinit.element103.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 10
  %189 = ptrtoint ptr %arrayinit.element103.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr @.str.34, ptr %arrayinit.element103.i.i, align 4
  %reg105.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 10, i32 1
  %rd_ch7_pwr_en.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %133, i32 0, i32 43, i32 1, i32 96
  %190 = ptrtoint ptr %reg105.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %rd_ch7_pwr_en.i.i, ptr %reg105.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name107.i.i) #5
  %191 = call ptr @memset(ptr %name107.i.i, i32 255, i32 16)
  %call.i49.i = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.49, ptr noundef nonnull %call.i) #5
  %tobool.not.i50.i = icmp eq ptr %call.i49.i, null
  br i1 %tobool.not.i50.i, label %dw_edma_debugfs_regs_wr.exit.i.dw_edma_debugfs_regs_rd.exit.i_crit_edge, label %dw_edma_debugfs_regs_wr.exit.i.for.body.i.i59.i_crit_edge

dw_edma_debugfs_regs_wr.exit.i.for.body.i.i59.i_crit_edge: ; preds = %dw_edma_debugfs_regs_wr.exit.i
  br label %for.body.i.i59.i

dw_edma_debugfs_regs_wr.exit.i.dw_edma_debugfs_regs_rd.exit.i_crit_edge: ; preds = %dw_edma_debugfs_regs_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dw_edma_debugfs_regs_rd.exit.i

for.body.i.i59.i:                                 ; preds = %for.body.i.i59.i.for.body.i.i59.i_crit_edge, %dw_edma_debugfs_regs_wr.exit.i.for.body.i.i59.i_crit_edge
  %i.07.i.i51.i = phi i32 [ %inc.i.i56.i, %for.body.i.i59.i.for.body.i.i59.i_crit_edge ], [ 0, %dw_edma_debugfs_regs_wr.exit.i.for.body.i.i59.i_crit_edge ]
  %arrayidx.i.i52.i = getelementptr %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 %i.07.i.i51.i
  %192 = ptrtoint ptr %arrayidx.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx.i.i52.i, align 4
  %reg.i.i53.i = getelementptr %struct.debugfs_entries, ptr %debugfs_regs.i15.i, i32 %i.07.i.i51.i, i32 1
  %194 = ptrtoint ptr %reg.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %reg.i.i53.i, align 4
  %call.i.i54.i = call ptr @debugfs_create_file_unsafe(ptr noundef %193, i16 noundef zeroext 292, ptr noundef nonnull %call.i49.i, ptr noundef %195, ptr noundef nonnull @fops_x32) #5
  %tobool.not.i.i55.i = icmp eq ptr %call.i.i54.i, null
  %inc.i.i56.i = add nuw nsw i32 %i.07.i.i51.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %inc.i.i56.i)
  %exitcond.not.i.i57.i = icmp eq i32 %inc.i.i56.i, 18
  %or.cond.i.i58.i = select i1 %tobool.not.i.i55.i, i1 true, i1 %exitcond.not.i.i57.i
  br i1 %or.cond.i.i58.i, label %dw_edma_debugfs_create_x32.exit.i62.i, label %for.body.i.i59.i.for.body.i.i59.i_crit_edge

for.body.i.i59.i.for.body.i.i59.i_crit_edge:      ; preds = %for.body.i.i59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i59.i

dw_edma_debugfs_create_x32.exit.i62.i:            ; preds = %for.body.i.i59.i
  %196 = load ptr, ptr @dw, align 4
  %mf.i60.i = getelementptr inbounds %struct.dw_edma, ptr %196, i32 0, i32 12
  %197 = ptrtoint ptr %mf.i60.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %mf.i60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %198)
  %cmp.i61.i = icmp eq i32 %198, 5
  br i1 %cmp.i61.i, label %dw_edma_debugfs_create_x32.exit.i62.i.for.body.i157.i.i_crit_edge, label %dw_edma_debugfs_create_x32.exit.i62.i.if.end110.i.i_crit_edge

dw_edma_debugfs_create_x32.exit.i62.i.if.end110.i.i_crit_edge: ; preds = %dw_edma_debugfs_create_x32.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110.i.i

dw_edma_debugfs_create_x32.exit.i62.i.for.body.i157.i.i_crit_edge: ; preds = %dw_edma_debugfs_create_x32.exit.i62.i
  br label %for.body.i157.i.i

for.body.i157.i.i:                                ; preds = %for.body.i157.i.i.for.body.i157.i.i_crit_edge, %dw_edma_debugfs_create_x32.exit.i62.i.for.body.i157.i.i_crit_edge
  %i.07.i149.i.i = phi i32 [ %inc.i154.i.i, %for.body.i157.i.i.for.body.i157.i.i_crit_edge ], [ 0, %dw_edma_debugfs_create_x32.exit.i62.i.for.body.i157.i.i_crit_edge ]
  %arrayidx.i150.i.i = getelementptr %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 %i.07.i149.i.i
  %199 = ptrtoint ptr %arrayidx.i150.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arrayidx.i150.i.i, align 4
  %reg.i151.i.i = getelementptr %struct.debugfs_entries, ptr %debugfs_unroll_regs.i16.i, i32 %i.07.i149.i.i, i32 1
  %201 = ptrtoint ptr %reg.i151.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %reg.i151.i.i, align 4
  %call.i152.i.i = call ptr @debugfs_create_file_unsafe(ptr noundef %200, i16 noundef zeroext 292, ptr noundef nonnull %call.i49.i, ptr noundef %202, ptr noundef nonnull @fops_x32) #5
  %tobool.not.i153.i.i = icmp eq ptr %call.i152.i.i, null
  %inc.i154.i.i = add nuw nsw i32 %i.07.i149.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %inc.i154.i.i)
  %exitcond.not.i155.i.i = icmp eq i32 %inc.i154.i.i, 11
  %or.cond.i156.i.i = select i1 %tobool.not.i153.i.i, i1 true, i1 %exitcond.not.i155.i.i
  br i1 %or.cond.i156.i.i, label %for.body.i157.i.i.if.end110.i.i_crit_edge, label %for.body.i157.i.i.for.body.i157.i.i_crit_edge

for.body.i157.i.i.for.body.i157.i.i_crit_edge:    ; preds = %for.body.i157.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i157.i.i

for.body.i157.i.i.if.end110.i.i_crit_edge:        ; preds = %for.body.i157.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110.i.i

if.end110.i.i:                                    ; preds = %for.body.i157.i.i.if.end110.i.i_crit_edge, %dw_edma_debugfs_create_x32.exit.i62.i.if.end110.i.i_crit_edge
  %203 = load ptr, ptr @dw, align 4
  %rd_ch_cnt160.i.i = getelementptr inbounds %struct.dw_edma, ptr %203, i32 0, i32 4
  %204 = ptrtoint ptr %rd_ch_cnt160.i.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %rd_ch_cnt160.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %205)
  %cmp111162.not.i.i = icmp eq i16 %205, 0
  br i1 %cmp111162.not.i.i, label %if.end110.i.i.dw_edma_debugfs_regs_rd.exit.i_crit_edge, label %for.body.lr.ph.i79.i

if.end110.i.i.dw_edma_debugfs_regs_rd.exit.i_crit_edge: ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dw_edma_debugfs_regs_rd.exit.i

for.body.lr.ph.i79.i:                             ; preds = %if.end110.i.i
  %reg.i159.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 0, i32 1
  %arrayinit.element.i.i63.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 1
  %reg2.i.i64.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 1, i32 1
  %arrayinit.element3.i.i65.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 2
  %reg5.i.i66.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 2, i32 1
  %arrayinit.element6.i.i67.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 3
  %reg8.i.i68.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 3, i32 1
  %arrayinit.element9.i.i69.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 4
  %reg11.i.i70.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 4, i32 1
  %arrayinit.element13.i.i71.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 5
  %reg15.i.i72.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 5, i32 1
  %arrayinit.element17.i.i73.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 6
  %reg19.i.i74.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 6, i32 1
  %arrayinit.element22.i.i75.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 7
  %reg24.i.i76.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 7, i32 1
  %arrayinit.element26.i.i77.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 8
  %reg28.i.i78.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 8, i32 1
  br label %for.body.i80.i

for.body.i80.i:                                   ; preds = %dw_edma_debugfs_regs_ch.exit.i102.i.for.body.i80.i_crit_edge, %for.body.lr.ph.i79.i
  %i.0163.i.i = phi i32 [ 0, %for.body.lr.ph.i79.i ], [ %inc.i100.i, %dw_edma_debugfs_regs_ch.exit.i102.i.for.body.i80.i_crit_edge ]
  %call114.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name107.i.i, i32 noundef 16, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %i.0163.i.i) #5
  %call116.i.i = call ptr @debugfs_create_dir(ptr noundef nonnull %name107.i.i, ptr noundef nonnull %call.i49.i) #5
  %tobool117.not.i.i = icmp eq ptr %call116.i.i, null
  br i1 %tobool117.not.i.i, label %for.body.i80.i.dw_edma_debugfs_regs_rd.exit.i_crit_edge, label %if.end119.i.i

for.body.i80.i.dw_edma_debugfs_regs_rd.exit.i_crit_edge: ; preds = %for.body.i80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dw_edma_debugfs_regs_rd.exit.i

if.end119.i.i:                                    ; preds = %for.body.i80.i
  %206 = load ptr, ptr @regs, align 4
  %ch.i81.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %206, i32 0, i32 43, i32 1, i32 220
  %rd.i.i = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch.i81.i, i32 0, i32 %i.0163.i.i, i32 2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %debugfs_regs.i.i14.i) #5
  %207 = ptrtoint ptr %debugfs_regs.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @.str.38, ptr %debugfs_regs.i.i14.i, align 4
  %208 = ptrtoint ptr %reg.i159.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %rd.i.i, ptr %reg.i159.i.i, align 4
  %209 = ptrtoint ptr %arrayinit.element.i.i63.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr @.str.39, ptr %arrayinit.element.i.i63.i, align 4
  %ch_control2.i.i82.i = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch.i81.i, i32 0, i32 %i.0163.i.i, i32 2, i32 1
  %210 = ptrtoint ptr %reg2.i.i64.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %ch_control2.i.i82.i, ptr %reg2.i.i64.i, align 4
  %211 = ptrtoint ptr %arrayinit.element3.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr @.str.40, ptr %arrayinit.element3.i.i65.i, align 4
  %transfer_size.i.i83.i = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch.i81.i, i32 0, i32 %i.0163.i.i, i32 2, i32 2
  %212 = ptrtoint ptr %reg5.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %transfer_size.i.i83.i, ptr %reg5.i.i66.i, align 4
  %213 = ptrtoint ptr %arrayinit.element6.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr @.str.41, ptr %arrayinit.element6.i.i67.i, align 4
  %sar.i.i84.i = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch.i81.i, i32 0, i32 %i.0163.i.i, i32 2, i32 3
  %214 = ptrtoint ptr %reg8.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %sar.i.i84.i, ptr %reg8.i.i68.i, align 4
  %215 = ptrtoint ptr %arrayinit.element9.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @.str.42, ptr %arrayinit.element9.i.i69.i, align 4
  %msb.i.i85.i = getelementptr inbounds %struct.anon.93, ptr %sar.i.i84.i, i32 0, i32 1
  %216 = ptrtoint ptr %reg11.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %msb.i.i85.i, ptr %reg11.i.i70.i, align 4
  %217 = ptrtoint ptr %arrayinit.element13.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr @.str.43, ptr %arrayinit.element13.i.i71.i, align 4
  %dar.i.i86.i = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch.i81.i, i32 0, i32 %i.0163.i.i, i32 2, i32 4
  %218 = ptrtoint ptr %reg15.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %dar.i.i86.i, ptr %reg15.i.i72.i, align 4
  %219 = ptrtoint ptr %arrayinit.element17.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr @.str.44, ptr %arrayinit.element17.i.i73.i, align 4
  %msb21.i.i87.i = getelementptr inbounds %struct.anon.95, ptr %dar.i.i86.i, i32 0, i32 1
  %220 = ptrtoint ptr %reg19.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %msb21.i.i87.i, ptr %reg19.i.i74.i, align 4
  %221 = ptrtoint ptr %arrayinit.element22.i.i75.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr @.str.45, ptr %arrayinit.element22.i.i75.i, align 4
  %llp.i.i88.i = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch.i81.i, i32 0, i32 %i.0163.i.i, i32 2, i32 5
  %222 = ptrtoint ptr %reg24.i.i76.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %llp.i.i88.i, ptr %reg24.i.i76.i, align 4
  %223 = ptrtoint ptr %arrayinit.element26.i.i77.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr @.str.46, ptr %arrayinit.element26.i.i77.i, align 4
  %msb30.i.i89.i = getelementptr inbounds %struct.anon.97, ptr %llp.i.i88.i, i32 0, i32 1
  %224 = ptrtoint ptr %reg28.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %msb30.i.i89.i, ptr %reg28.i.i78.i, align 4
  br label %for.body.i.i.i98.i

for.body.i.i.i98.i:                               ; preds = %for.body.i.i.i98.i.for.body.i.i.i98.i_crit_edge, %if.end119.i.i
  %i.07.i.i.i90.i = phi i32 [ 0, %if.end119.i.i ], [ %inc.i.i.i95.i, %for.body.i.i.i98.i.for.body.i.i.i98.i_crit_edge ]
  %arrayidx.i.i.i91.i = getelementptr %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 %i.07.i.i.i90.i
  %225 = ptrtoint ptr %arrayidx.i.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx.i.i.i91.i, align 4
  %reg.i.i.i92.i = getelementptr %struct.debugfs_entries, ptr %debugfs_regs.i.i14.i, i32 %i.07.i.i.i90.i, i32 1
  %227 = ptrtoint ptr %reg.i.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %reg.i.i.i92.i, align 4
  %call.i.i.i93.i = call ptr @debugfs_create_file_unsafe(ptr noundef %226, i16 noundef zeroext 292, ptr noundef nonnull %call116.i.i, ptr noundef %228, ptr noundef nonnull @fops_x32) #5
  %tobool.not.i.i.i94.i = icmp eq ptr %call.i.i.i93.i, null
  %inc.i.i.i95.i = add nuw nsw i32 %i.07.i.i.i90.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc.i.i.i95.i)
  %exitcond.not.i.i.i96.i = icmp eq i32 %inc.i.i.i95.i, 9
  %or.cond.i.i.i97.i = select i1 %tobool.not.i.i.i94.i, i1 true, i1 %exitcond.not.i.i.i96.i
  br i1 %or.cond.i.i.i97.i, label %dw_edma_debugfs_regs_ch.exit.i102.i, label %for.body.i.i.i98.i.for.body.i.i.i98.i_crit_edge

for.body.i.i.i98.i.for.body.i.i.i98.i_crit_edge:  ; preds = %for.body.i.i.i98.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i98.i

dw_edma_debugfs_regs_ch.exit.i102.i:              ; preds = %for.body.i.i.i98.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %debugfs_regs.i.i14.i) #5
  %229 = load ptr, ptr @regs, align 4
  %ch122.i.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %229, i32 0, i32 43, i32 1, i32 220
  %rd124.i.i = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch122.i.i, i32 0, i32 %i.0163.i.i, i32 2
  %arrayidx125.i.i = getelementptr [2 x [8 x %struct.anon.102]], ptr @lim, i32 0, i32 1, i32 %i.0163.i.i
  %230 = ptrtoint ptr %arrayidx125.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %rd124.i.i, ptr %arrayidx125.i.i, align 4
  %padding_2.i.i = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch122.i.i, i32 0, i32 %i.0163.i.i, i32 3
  %end.i99.i = getelementptr [2 x [8 x %struct.anon.102]], ptr @lim, i32 0, i32 1, i32 %i.0163.i.i, i32 1
  %231 = ptrtoint ptr %end.i99.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %padding_2.i.i, ptr %end.i99.i, align 4
  %inc.i100.i = add nuw nsw i32 %i.0163.i.i, 1
  %232 = load ptr, ptr @dw, align 4
  %rd_ch_cnt.i.i = getelementptr inbounds %struct.dw_edma, ptr %232, i32 0, i32 4
  %233 = ptrtoint ptr %rd_ch_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %rd_ch_cnt.i.i, align 4
  %conv.i101.i = zext i16 %234 to i32
  %cmp111.i.i = icmp ult i32 %inc.i100.i, %conv.i101.i
  br i1 %cmp111.i.i, label %dw_edma_debugfs_regs_ch.exit.i102.i.for.body.i80.i_crit_edge, label %dw_edma_debugfs_regs_ch.exit.i102.i.dw_edma_debugfs_regs_rd.exit.i_crit_edge

dw_edma_debugfs_regs_ch.exit.i102.i.dw_edma_debugfs_regs_rd.exit.i_crit_edge: ; preds = %dw_edma_debugfs_regs_ch.exit.i102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dw_edma_debugfs_regs_rd.exit.i

dw_edma_debugfs_regs_ch.exit.i102.i.for.body.i80.i_crit_edge: ; preds = %dw_edma_debugfs_regs_ch.exit.i102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i80.i

dw_edma_debugfs_regs_rd.exit.i:                   ; preds = %dw_edma_debugfs_regs_ch.exit.i102.i.dw_edma_debugfs_regs_rd.exit.i_crit_edge, %for.body.i80.i.dw_edma_debugfs_regs_rd.exit.i_crit_edge, %if.end110.i.i.dw_edma_debugfs_regs_rd.exit.i_crit_edge, %dw_edma_debugfs_regs_wr.exit.i.dw_edma_debugfs_regs_rd.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name107.i.i) #5
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %debugfs_unroll_regs.i16.i) #5
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %debugfs_regs.i15.i) #5
  br label %dw_edma_debugfs_regs.exit

dw_edma_debugfs_regs.exit:                        ; preds = %dw_edma_debugfs_regs_rd.exit.i, %if.end7.dw_edma_debugfs_regs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %debugfs_regs.i) #5
  br label %return

return:                                           ; preds = %dw_edma_debugfs_regs.exit, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u16(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_edma_v0_debugfs_off(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dw = getelementptr inbounds %struct.dw_edma_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dw, align 4
  store ptr %1, ptr @dw, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %debugfs = getelementptr inbounds %struct.dw_edma, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %3) #5
  %4 = load ptr, ptr @dw, align 4
  %debugfs1 = getelementptr inbounds %struct.dw_edma, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %debugfs1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %debugfs1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_x32_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @dw_edma_debugfs_u32_get, ptr noundef null, ptr noundef nonnull @.str.6) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_edma_debugfs_u32_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dw, align 4
  %mf = getelementptr inbounds %struct.dw_edma, ptr %0, i32 0, i32 12
  %1 = ptrtoint ptr %mf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr @regs, align 4
  %ch = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %3, i32 0, i32 43, i32 0, i32 1
  %cmp1.not = icmp ugt ptr %ch, %data
  br i1 %cmp1.not, label %land.lhs.true.if.else_crit_edge, label %for.cond.preheader

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

for.cond.preheader:                               ; preds = %land.lhs.true
  %wr_ch_cnt = getelementptr inbounds %struct.dw_edma, ptr %0, i32 0, i32 2
  %4 = ptrtoint ptr %wr_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wr_ch_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp6127.not = icmp eq i16 %5, 0
  br i1 %cmp6127.not, label %for.cond.preheader.for.cond19.preheader_crit_edge, label %for.body.preheader

for.cond.preheader.for.cond19.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond19.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i16 %5 to i32
  br label %for.body

for.cond19.preheader:                             ; preds = %for.inc.for.cond19.preheader_crit_edge, %for.cond.preheader.for.cond19.preheader_crit_edge
  %rd_ch_cnt = getelementptr inbounds %struct.dw_edma, ptr %0, i32 0, i32 4
  %6 = ptrtoint ptr %rd_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rd_ch_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp22130.not = icmp eq i16 %7, 0
  br i1 %cmp22130.not, label %for.cond19.preheader.cleanup99_crit_edge, label %for.body24.preheader

for.cond19.preheader.cleanup99_crit_edge:         ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup99

for.body24.preheader:                             ; preds = %for.cond19.preheader
  %wide.trip.count140 = zext i16 %7 to i32
  br label %for.body24

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.anon.102], ptr @lim, i32 0, i32 %indvars.iv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp8.not = icmp ult ptr %9, %data
  br i1 %cmp8.not, label %for.body.for.inc_crit_edge, label %land.lhs.true10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true10:                                  ; preds = %for.body
  %end = getelementptr [8 x %struct.anon.102], ptr @lim, i32 0, i32 %indvars.iv, i32 1
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end, align 4
  %cmp13 = icmp ugt ptr %11, %data
  br i1 %cmp13, label %land.lhs.true10.do.end62_crit_edge, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true10.do.end62_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end62

for.inc:                                          ; preds = %land.lhs.true10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.for.cond19.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.cond19.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond19.preheader

for.body24:                                       ; preds = %for.inc45.for.body24_crit_edge, %for.body24.preheader
  %indvars.iv138 = phi i32 [ 0, %for.body24.preheader ], [ %indvars.iv.next139, %for.inc45.for.body24_crit_edge ]
  %arrayidx26 = getelementptr [2 x [8 x %struct.anon.102]], ptr @lim, i32 0, i32 1, i32 %indvars.iv138
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx26, align 4
  %cmp28.not = icmp ult ptr %13, %data
  br i1 %cmp28.not, label %for.body24.for.inc45_crit_edge, label %land.lhs.true30

for.body24.for.inc45_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc45

land.lhs.true30:                                  ; preds = %for.body24
  %end33 = getelementptr [2 x [8 x %struct.anon.102]], ptr @lim, i32 0, i32 1, i32 %indvars.iv138, i32 1
  %14 = ptrtoint ptr %end33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end33, align 4
  %cmp34 = icmp ugt ptr %15, %data
  br i1 %cmp34, label %land.lhs.true30.do.end62_crit_edge, label %land.lhs.true30.for.inc45_crit_edge

land.lhs.true30.for.inc45_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc45

land.lhs.true30.do.end62_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end62

for.inc45:                                        ; preds = %land.lhs.true30.for.inc45_crit_edge, %for.body24.for.inc45_crit_edge
  %indvars.iv.next139 = add nuw nsw i32 %indvars.iv138, 1
  %exitcond141.not = icmp eq i32 %indvars.iv.next139, %wide.trip.count140
  br i1 %exitcond141.not, label %for.inc45.cleanup99_crit_edge, label %for.inc45.for.body24_crit_edge

for.inc45.for.body24_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body24

for.inc45.cleanup99_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup99

do.end62:                                         ; preds = %land.lhs.true30.do.end62_crit_edge, %land.lhs.true10.do.end62_crit_edge
  %.lcssa144.sink = phi ptr [ %13, %land.lhs.true30.do.end62_crit_edge ], [ %9, %land.lhs.true10.do.end62_crit_edge ]
  %ch4.2.in = phi i32 [ %indvars.iv138, %land.lhs.true30.do.end62_crit_edge ], [ %indvars.iv, %land.lhs.true10.do.end62_crit_edge ]
  %viewport_sel.0 = phi i32 [ -2147483648, %land.lhs.true30.do.end62_crit_edge ], [ 0, %land.lhs.true10.do.end62_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %.lcssa144.sink to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %ptr.0 = getelementptr i8, ptr %ch, i32 %sub.ptr.sub
  %16 = and i32 %ch4.2.in, 7
  %or = or i32 %viewport_sel.0, %16
  %lock = getelementptr inbounds %struct.dw_edma, ptr %0, i32 0, i32 15
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  %18 = load ptr, ptr @regs, align 4
  %type74 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %18, i32 0, i32 43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %type74, i32 %17) #5, !srcloc !117
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ptr.0) #5, !srcloc !118
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  %conv79 = zext i32 %20 to i64
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv79, ptr %val, align 8
  %22 = load ptr, ptr @dw, align 4
  %lock86 = getelementptr inbounds %struct.dw_edma, ptr %22, i32 0, i32 15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock86, i32 noundef %call) #5
  br label %cleanup99

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %data) #5, !srcloc !118
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  %conv97 = zext i32 %24 to i64
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv97, ptr %val, align 8
  br label %cleanup99

cleanup99:                                        ; preds = %if.else, %do.end62, %for.inc45.cleanup99_crit_edge, %for.cond19.preheader.cleanup99_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 299, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 300, i32 21}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 301, i32 21}
!6 = !{ptr @dw, !7, !"dw", i1 false, i1 false}
!7 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 41, i32 27}
!8 = !{ptr @regs, !9, !"regs", i1 false, i1 false}
!9 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 42, i32 42}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 268, i32 3}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 269, i32 3}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 274, i32 32}
!16 = !{ptr @fops_x32, !17, !"fops_x32", i1 false, i1 false}
!17 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 94, i32 1}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @lim, !20, !"lim", i1 false, i1 false}
!20 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 47, i32 3}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 132, i32 3}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 133, i32 3}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 134, i32 3}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 135, i32 3}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 137, i32 3}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 138, i32 3}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 139, i32 3}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 140, i32 3}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 141, i32 3}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 142, i32 3}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 143, i32 3}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 144, i32 3}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 145, i32 3}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 146, i32 3}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 147, i32 3}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 148, i32 3}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 149, i32 3}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 153, i32 3}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 154, i32 3}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 155, i32 3}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 156, i32 3}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 157, i32 3}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 158, i32 3}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 159, i32 3}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 160, i32 3}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 161, i32 3}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 162, i32 3}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 163, i32 3}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 169, i32 32}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 183, i32 32}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 183, i32 41}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 113, i32 3}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 114, i32 3}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 115, i32 3}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 116, i32 3}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 117, i32 3}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 118, i32 3}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 119, i32 3}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 120, i32 3}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 121, i32 3}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 208, i32 3}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 209, i32 3}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/dma/dw-edma/dw-edma-v0-debugfs.c", i32 238, i32 32}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i64 2154304957}
!117 = !{i64 6336792}
!118 = !{i64 6337210}
!119 = !{i64 2154305603}
!120 = !{i64 2154306272}
