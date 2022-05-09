; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gf100_gr = type { ptr, %struct.nvkm_gr, %struct.anon.138, %struct.anon.144, i8, ptr, ptr, ptr, ptr, [16 x %struct.gf100_gr_zbc_color], [16 x %struct.gf100_gr_zbc_depth], [16 x %struct.gf100_gr_zbc_stencil], i8, i8, [32 x i8], i8, i8, [32 x i8], [32 x i8], [32 x [4 x i8]], [32 x [4 x i8]], i8, i8, i8, [256 x i8], [256 x %struct.anon.145], i8, [4 x %struct.gf100_gr_data], [512 x %struct.gf100_gr_mmio], i32, ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.135 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.135 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.138 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob, %struct.mutex, i32 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.142, %struct.anon.143, %struct.nvkm_engine }
%struct.anon.142 = type { i32, ptr, i32, i8 }
%struct.anon.143 = type { i32, ptr, i32, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.144 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob }
%struct.gf100_gr_zbc_color = type { i32, [4 x i32], [4 x i32] }
%struct.gf100_gr_zbc_depth = type { i32, i32, i32 }
%struct.gf100_gr_zbc_stencil = type { i32, i32, i32 }
%struct.anon.145 = type { i8, i8 }
%struct.gf100_gr_data = type { i32, i32, i8 }
%struct.gf100_gr_mmio = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gf108_grctx_init_9097_0 = dso_local constant { [298 x %struct.gf100_gr_init], [1184 x i8] } { [298 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 2048, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2052, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2056, i8 8, i32 64, i32 1024 }, %struct.gf100_gr_init { i32 2060, i8 8, i32 64, i32 768 }, %struct.gf100_gr_init { i32 2064, i8 1, i32 4, i32 207 }, %struct.gf100_gr_init { i32 2128, i8 7, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2068, i8 8, i32 64, i32 64 }, %struct.gf100_gr_init { i32 2072, i8 8, i32 64, i32 1 }, %struct.gf100_gr_init { i32 2076, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2080, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 9984, i8 8, i32 32, i32 0 }, %struct.gf100_gr_init { i32 9988, i8 8, i32 32, i32 0 }, %struct.gf100_gr_init { i32 9992, i8 8, i32 32, i32 0 }, %struct.gf100_gr_init { i32 9996, i8 8, i32 32, i32 0 }, %struct.gf100_gr_init { i32 10000, i8 8, i32 32, i32 81920 }, %struct.gf100_gr_init { i32 10004, i8 8, i32 32, i32 64 }, %struct.gf100_gr_init { i32 7168, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7172, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7176, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7180, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7424, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7428, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7432, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7436, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7936, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 7940, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 8064, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 8068, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 8704, i8 5, i32 16, i32 34 }, %struct.gf100_gr_init { i32 8192, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 8256, i8 1, i32 4, i32 17 }, %struct.gf100_gr_init { i32 8320, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 8384, i8 1, i32 4, i32 48 }, %struct.gf100_gr_init { i32 8448, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 8512, i8 1, i32 4, i32 81 }, %struct.gf100_gr_init { i32 8204, i8 6, i32 64, i32 1 }, %struct.gf100_gr_init { i32 8208, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 8272, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 8336, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 8400, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 8464, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 8528, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 896, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 900, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 904, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 908, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 1792, i8 4, i32 16, i32 0 }, %struct.gf100_gr_init { i32 1796, i8 4, i32 16, i32 0 }, %struct.gf100_gr_init { i32 1800, i8 4, i32 16, i32 0 }, %struct.gf100_gr_init { i32 10240, i8 -128, i32 4, i32 0 }, %struct.gf100_gr_init { i32 2560, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2564, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2568, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2572, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2576, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2580, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 3072, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3076, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3080, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3084, i8 16, i32 16, i32 1065353216 }, %struct.gf100_gr_init { i32 3328, i8 8, i32 8, i32 -65536 }, %struct.gf100_gr_init { i32 3332, i8 8, i32 8, i32 -65536 }, %struct.gf100_gr_init { i32 3584, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3588, i8 16, i32 16, i32 -65536 }, %struct.gf100_gr_init { i32 3592, i8 16, i32 16, i32 -65536 }, %struct.gf100_gr_init { i32 3392, i8 4, i32 8, i32 0 }, %struct.gf100_gr_init { i32 3396, i8 4, i32 8, i32 0 }, %struct.gf100_gr_init { i32 7680, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7684, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7688, i8 8, i32 32, i32 2 }, %struct.gf100_gr_init { i32 7692, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7696, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7700, i8 8, i32 32, i32 2 }, %struct.gf100_gr_init { i32 7704, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 780, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6468, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5396, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3432, i8 1, i32 4, i32 65535 }, %struct.gf100_gr_init { i32 4636, i8 1, i32 4, i32 262957185 }, %struct.gf100_gr_init { i32 4012, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5432, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4064, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4072, i8 1, i32 4, i32 20 }, %struct.gf100_gr_init { i32 4076, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4080, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6044, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4648, i8 1, i32 4, i32 1024 }, %struct.gf100_gr_init { i32 4652, i8 1, i32 4, i32 768 }, %struct.gf100_gr_init { i32 4656, i8 1, i32 4, i32 65537 }, %struct.gf100_gr_init { i32 2040, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5556, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5580, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5428, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4016, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5584, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5436, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5812, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4028, i8 4, i32 4, i32 65535 }, %struct.gf100_gr_init { i32 3576, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6472, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6512, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5660, i8 1, i32 4, i32 2544 }, %struct.gf100_gr_init { i32 3532, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 5692, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5604, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4448, i8 32, i32 4, i32 635437120 }, %struct.gf100_gr_init { i32 6272, i8 32, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3972, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6088, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6096, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 6100, i8 1, i32 4, i32 -1 }, %struct.gf100_gr_init { i32 6104, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 6108, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5620, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5172, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3444, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3564, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5028, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4888, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5700, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1864, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3560, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5704, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4772, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4384, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4376, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5708, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5720, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6416, i8 1, i32 4, i32 656 }, %struct.gf100_gr_init { i32 5400, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5724, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5408, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5636, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5488, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5040, i8 2, i32 4, i32 1065353216 }, %struct.gf100_gr_init { i32 524, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5744, i8 1, i32 4, i32 807407616 }, %struct.gf100_gr_init { i32 5748, i8 1, i32 4, i32 1885360192 }, %struct.gf100_gr_init { i32 5752, i8 1, i32 4, i32 -1196910456 }, %struct.gf100_gr_init { i32 5756, i8 1, i32 4, i32 -118957880 }, %struct.gf100_gr_init { i32 5740, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5760, i8 1, i32 4, i32 16776960 }, %struct.gf100_gr_init { i32 4816, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4820, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 5764, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3500, i8 2, i32 4, i32 6914 }, %struct.gf100_gr_init { i32 3508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5772, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5564, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5484, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6268, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4368, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 3520, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4660, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5776, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4780, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 708, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1936, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 4348, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4752, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 536, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 4824, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4828, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 3476, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5468, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5476, i8 1, i32 4, i32 8191 }, %struct.gf100_gr_init { i32 5492, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5500, i8 1, i32 4, i32 4194303 }, %struct.gf100_gr_init { i32 4948, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5732, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5648, i8 1, i32 4, i32 18 }, %struct.gf100_gr_init { i32 5640, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5676, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 528, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 800, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 804, i8 6, i32 4, i32 1065353216 }, %struct.gf100_gr_init { i32 1872, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1888, i8 1, i32 4, i32 958994697 }, %struct.gf100_gr_init { i32 1892, i8 1, i32 4, i32 2036947273 }, %struct.gf100_gr_init { i32 1896, i8 1, i32 4, i32 -1180067447 }, %struct.gf100_gr_init { i32 1900, i8 1, i32 4, i32 -102114871 }, %struct.gf100_gr_init { i32 1904, i8 1, i32 4, i32 807407616 }, %struct.gf100_gr_init { i32 1908, i8 1, i32 4, i32 1885360192 }, %struct.gf100_gr_init { i32 1912, i8 1, i32 4, i32 36992 }, %struct.gf100_gr_init { i32 1920, i8 1, i32 4, i32 958994697 }, %struct.gf100_gr_init { i32 1924, i8 1, i32 4, i32 2036947273 }, %struct.gf100_gr_init { i32 1928, i8 1, i32 4, i32 -1180067447 }, %struct.gf100_gr_init { i32 1932, i8 1, i32 4, i32 -102114871 }, %struct.gf100_gr_init { i32 2000, i8 1, i32 4, i32 807407616 }, %struct.gf100_gr_init { i32 2004, i8 1, i32 4, i32 1885360192 }, %struct.gf100_gr_init { i32 2008, i8 1, i32 4, i32 36992 }, %struct.gf100_gr_init { i32 892, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 1856, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 9728, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6424, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6428, i8 1, i32 4, i32 2304 }, %struct.gf100_gr_init { i32 6432, i8 1, i32 4, i32 1029 }, %struct.gf100_gr_init { i32 4872, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6436, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5036, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6444, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6460, i8 1, i32 4, i32 11292 }, %struct.gf100_gr_init { i32 3452, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3980, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 704, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5392, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6464, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4084, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6476, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6504, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5520, i8 1, i32 4, i32 63 }, %struct.gf100_gr_init { i32 2024, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6508, i8 1, i32 4, i32 17 }, %struct.gf100_gr_init { i32 6524, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4044, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 728, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 6528, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 5380, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 6532, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 768, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5032, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4844, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4880, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4884, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4992, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4996, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5012, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5020, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5016, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5524, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5528, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 3924, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6588, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3996, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4812, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4840, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4876, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4960, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4924, i8 2, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4932, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4936, i8 2, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4944, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4952, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4836, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4892, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6592, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4416, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6596, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6600, i8 1, i32 4, i32 5376 }, %struct.gf100_gr_init { i32 4956, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3984, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6624, i8 8, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6604, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5560, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6656, i8 1, i32 4, i32 4369 }, %struct.gf100_gr_init { i32 6660, i8 7, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3436, i8 2, i32 4, i32 -65536 }, %struct.gf100_gr_init { i32 4344, i8 1, i32 4, i32 4112 }, %struct.gf100_gr_init { i32 3456, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3488, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5384, i8 1, i32 4, i32 -2147483648 }, %struct.gf100_gr_init { i32 5388, i8 1, i32 4, i32 1073741824 }, %struct.gf100_gr_init { i32 5736, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 792, i8 2, i32 4, i32 8 }, %struct.gf100_gr_init { i32 3484, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 2012, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1868, i8 1, i32 4, i32 85 }, %struct.gf100_gr_init { i32 5152, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 6076, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6084, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4104, i8 1, i32 4, i32 8 }, %struct.gf100_gr_init { i32 4108, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4112, i8 1, i32 4, i32 300 }, %struct.gf100_gr_init { i32 3424, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 1884, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4120, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 4124, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4128, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 4132, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5188, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 864, i8 1, i32 4, i32 538329104 }, %struct.gf100_gr_init { i32 868, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 872, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3556, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 516, i8 1, i32 4, i32 6 }, %struct.gf100_gr_init { i32 520, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 716, i8 1, i32 4, i32 4194303 }, %struct.gf100_gr_init { i32 720, i8 1, i32 4, i32 3144 }, %struct.gf100_gr_init { i32 4640, i8 1, i32 4, i32 5 }, %struct.gf100_gr_init { i32 4060, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3992, i8 1, i32 4, i32 3145736 }, %struct.gf100_gr_init { i32 4740, i8 1, i32 4, i32 67108992 }, %struct.gf100_gr_init { i32 5200, i8 1, i32 4, i32 3145736 }, %struct.gf100_gr_init { i32 5204, i8 1, i32 4, i32 67108992 }, %struct.gf100_gr_init { i32 532, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [1184 x i8] zeroinitializer }, align 32
@gf108_grctx_init_gpm_0 = dso_local constant { [6 x %struct.gf100_gr_init], [32 x i8] } { [6 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295688, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4295696, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295788, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4295808, i8 1, i32 4, i32 538968068 }, %struct.gf100_gr_init { i32 4295820, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf108_grctx_init_pe_0 = dso_local constant { [6 x %struct.gf100_gr_init], [32 x i8] } { [6 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4298776, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298812, i8 1, i32 4, i32 232391 }, %struct.gf100_gr_init { i32 4298824, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298852, i8 1, i32 4, i32 297 }, %struct.gf100_gr_init { i32 4298888, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf108_grctx_init_wwdx_0 = dso_local constant { [10 x %struct.gf100_gr_init], [32 x i8] } { [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299520, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4299524, i8 1, i32 4, i32 102793446 }, %struct.gf100_gr_init { i32 4299528, i8 1, i32 4, i32 33790116 }, %struct.gf100_gr_init { i32 4299532, i8 1, i32 4, i32 241340514 }, %struct.gf100_gr_init { i32 4299536, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4299540, i8 1, i32 4, i32 230 }, %struct.gf100_gr_init { i32 4299728, i8 1, i32 4, i32 9437443 }, %struct.gf100_gr_init { i32 4299744, i8 1, i32 4, i32 4194305 }, %struct.gf100_gr_init { i32 4299748, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf108_grctx_init_tpccs_0 = dso_local constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300064, i8 1, i32 4, i32 303562752 }, %struct.gf100_gr_init { i32 4300068, i8 1, i32 4, i32 8191 }, %struct.gf100_gr_init { i32 4300100, i8 1, i32 4, i32 35127832 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf108_grctx_pack_hub = internal constant { [10 x %struct.gf100_gr_pack], [48 x i8] } { [10 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_memfmt_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_grctx_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_grctx_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_grctx_init_be_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf108_grctx_pack_gpc_0 = internal constant { [6 x %struct.gf100_gr_pack], [48 x i8] } { [6 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_grctx_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_zcull_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf108_grctx_pack_gpc_1 = internal constant { [4 x %struct.gf100_gr_pack], [32 x i8] } { [4 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_grctx_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_gcc_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_pack_zcull = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gf108_grctx_pack_tpc = internal constant { [8 x %struct.gf100_gr_pack], [32 x i8] } { [8 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf108_grctx_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf104_grctx_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_grctx_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf104_grctx_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_grctx_init_tpccs_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf104_grctx_init_sm_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf108_grctx_pack_icmd = internal constant { [2 x %struct.gf100_gr_pack], [16 x i8] } { [2 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf108_grctx_init_icmd_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [16 x i8] zeroinitializer }, align 32
@gf108_grctx_pack_mthd = internal constant { [6 x %struct.gf100_gr_pack], [48 x i8] } { [6 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf108_grctx_init_9097_0, i32 37015 }, %struct.gf100_gr_pack { ptr @gf108_grctx_init_9197_0, i32 37271 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_902d_0, i32 36909 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_9039_0, i32 36921 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_90c0_0, i32 37056 }, %struct.gf100_gr_pack zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf108_grctx = dso_local constant { %struct.gf100_grctx_func, [36 x i8] } { %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gf108_grctx_generate_unkn, ptr @gf108_grctx_pack_hub, ptr @gf108_grctx_pack_gpc_0, ptr @gf108_grctx_pack_gpc_1, ptr @gf100_grctx_pack_zcull, ptr @gf108_grctx_pack_tpc, ptr null, ptr @gf108_grctx_pack_icmd, ptr @gf108_grctx_pack_mthd, ptr null, ptr @gf100_grctx_generate_bundle, i32 6144, i32 0, i32 0, ptr @gf100_grctx_generate_pagepool, i32 32768, ptr @gf108_grctx_generate_attrib, i32 804, i32 536, i32 804, i32 536, i32 0, ptr null, ptr @gf100_grctx_generate_sm_id, ptr @gf100_grctx_generate_tpc_nr, i8 0, ptr @gf100_grctx_generate_r4060a8, ptr @gf100_grctx_generate_rop_mapping, ptr @gf100_grctx_generate_alpha_beta_tables, ptr @gf100_grctx_generate_max_ways_evict, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gf100_grctx_generate_r419cb8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gf100_grctx_init_main_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_fe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_pri_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_memfmt_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_grctx_init_ds_0 = internal constant { [8 x %struct.gf100_gr_init], [32 x i8] } { [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4216832, i8 1, i32 4, i32 260047039 }, %struct.gf100_gr_init { i32 4216880, i8 1, i32 4, i32 35127832 }, %struct.gf100_gr_init { i32 4216884, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4216916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4216944, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4217344, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217368, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf108_grctx_init_pd_0 = internal constant { [8 x %struct.gf100_gr_init], [32 x i8] } { [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4218912, i8 1, i32 4, i32 66497 }, %struct.gf100_gr_init { i32 4218920, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4220072, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4220076, i8 1, i32 4, i32 16383 }, %struct.gf100_gr_init { i32 4220084, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4220096, i8 1, i32 4, i32 -2146172808 }, %struct.gf100_gr_init { i32 4220100, i8 1, i32 4, i32 8847359 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_init_rstr2d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_scc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_grctx_init_be_0 = internal constant { [8 x %struct.gf100_gr_init], [32 x i8] } { [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4229120, i8 1, i32 4, i32 41953852 }, %struct.gf100_gr_init { i32 4229124, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4229128, i8 1, i32 4, i32 268689413 }, %struct.gf100_gr_init { i32 4229376, i8 1, i32 4, i32 813742081 }, %struct.gf100_gr_init { i32 4229380, i8 1, i32 4, i32 1644167169 }, %struct.gf100_gr_init { i32 4229384, i8 1, i32 4, i32 13109545 }, %struct.gf100_gr_init { i32 4229504, i8 1, i32 4, i32 285 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_init_gpc_unk_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_prop_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_gpc_unk_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_grctx_init_setup_0 = internal constant { [9 x %struct.gf100_gr_init], [48 x i8] } { [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294656, i8 1, i32 4, i32 427530 }, %struct.gf100_gr_init { i32 4294664, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294696, i8 1, i32 4, i32 33858 }, %struct.gf100_gr_init { i32 4294704, i8 1, i32 4, i32 268435457 }, %struct.gf100_gr_init { i32 4294872, i8 1, i32 4, i32 8 }, %struct.gf100_gr_init { i32 4294880, i8 1, i32 4, i32 16777216 }, %struct.gf100_gr_init { i32 4294888, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294908, i8 1, i32 4, i32 1048600 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_zcull_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_crstr_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_gcc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf104_grctx_init_tex_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_mpc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf104_grctx_init_l1c_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf104_grctx_init_sm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_grctx_init_icmd_0 = internal constant { [235 x %struct.gf100_gr_init], [944 x i8] } { [235 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 169, i8 1, i32 1, i32 65535 }, %struct.gf100_gr_init { i32 56, i8 1, i32 1, i32 262957185 }, %struct.gf100_gr_init { i32 61, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 232, i8 8, i32 1, i32 1024 }, %struct.gf100_gr_init { i32 120, i8 8, i32 1, i32 768 }, %struct.gf100_gr_init { i32 80, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 88, i8 8, i32 1, i32 8 }, %struct.gf100_gr_init { i32 520, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 129, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 133, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 136, i8 1, i32 1, i32 1024 }, %struct.gf100_gr_init { i32 144, i8 1, i32 1, i32 768 }, %struct.gf100_gr_init { i32 152, i8 1, i32 1, i32 4097 }, %struct.gf100_gr_init { i32 227, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 218, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 248, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 250, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 159, i8 4, i32 1, i32 65535 }, %struct.gf100_gr_init { i32 177, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 178, i8 40, i32 1, i32 0 }, %struct.gf100_gr_init { i32 528, i8 8, i32 1, i32 64 }, %struct.gf100_gr_init { i32 536, i8 8, i32 1, i32 49280 }, %struct.gf100_gr_init { i32 173, i8 1, i32 1, i32 318 }, %struct.gf100_gr_init { i32 225, i8 1, i32 1, i32 16 }, %struct.gf100_gr_init { i32 656, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 944, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 672, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1056, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 688, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1072, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 704, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1232, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1824, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2240, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2192, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2272, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2208, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2288, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2380, i8 1, i32 1, i32 255 }, %struct.gf100_gr_init { i32 2381, i8 1, i32 1, i32 -1 }, %struct.gf100_gr_init { i32 2382, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 748, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 771, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 742, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1126, i8 1, i32 1, i32 82 }, %struct.gf100_gr_init { i32 769, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 772, i8 1, i32 1, i32 807407616 }, %struct.gf100_gr_init { i32 773, i8 1, i32 1, i32 1885360192 }, %struct.gf100_gr_init { i32 774, i8 1, i32 1, i32 -1196910456 }, %struct.gf100_gr_init { i32 775, i8 1, i32 1, i32 -118957880 }, %struct.gf100_gr_init { i32 778, i8 1, i32 1, i32 16776960 }, %struct.gf100_gr_init { i32 779, i8 1, i32 1, i32 26 }, %struct.gf100_gr_init { i32 780, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 792, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 832, i8 1, i32 1, i32 0 }, %struct.gf100_gr_init { i32 885, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 849, i8 1, i32 1, i32 256 }, %struct.gf100_gr_init { i32 893, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 928, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 938, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 937, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 896, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 864, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 870, i8 2, i32 1, i32 0 }, %struct.gf100_gr_init { i32 872, i8 1, i32 1, i32 8191 }, %struct.gf100_gr_init { i32 880, i8 2, i32 1, i32 0 }, %struct.gf100_gr_init { i32 882, i8 1, i32 1, i32 4194303 }, %struct.gf100_gr_init { i32 890, i8 1, i32 1, i32 18 }, %struct.gf100_gr_init { i32 1504, i8 5, i32 1, i32 34 }, %struct.gf100_gr_init { i32 1561, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2065, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2066, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 2067, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 2068, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2069, i8 1, i32 1, i32 11 }, %struct.gf100_gr_init { i32 2048, i8 6, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1586, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1587, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1588, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 1589, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 1620, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1623, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1621, i8 2, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1741, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 2037, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 2012, i8 1, i32 1, i32 958994697 }, %struct.gf100_gr_init { i32 2013, i8 1, i32 1, i32 2036947273 }, %struct.gf100_gr_init { i32 2014, i8 1, i32 1, i32 -1180067447 }, %struct.gf100_gr_init { i32 2015, i8 1, i32 1, i32 -102114871 }, %struct.gf100_gr_init { i32 2024, i8 1, i32 1, i32 12816 }, %struct.gf100_gr_init { i32 2025, i8 1, i32 1, i32 30292 }, %struct.gf100_gr_init { i32 2026, i8 1, i32 1, i32 152 }, %struct.gf100_gr_init { i32 2028, i8 1, i32 1, i32 958994697 }, %struct.gf100_gr_init { i32 2029, i8 1, i32 1, i32 2036947273 }, %struct.gf100_gr_init { i32 2030, i8 1, i32 1, i32 -1180067447 }, %struct.gf100_gr_init { i32 2031, i8 1, i32 1, i32 -102114871 }, %struct.gf100_gr_init { i32 2032, i8 1, i32 1, i32 12816 }, %struct.gf100_gr_init { i32 2033, i8 1, i32 1, i32 30292 }, %struct.gf100_gr_init { i32 2034, i8 1, i32 1, i32 152 }, %struct.gf100_gr_init { i32 1445, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2432, i8 -128, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1128, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 1132, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1136, i8 96, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1296, i8 16, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1312, i8 1, i32 1, i32 694 }, %struct.gf100_gr_init { i32 1321, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1328, i8 16, i32 1, i32 -65536 }, %struct.gf100_gr_init { i32 1413, i8 1, i32 1, i32 63 }, %struct.gf100_gr_init { i32 1398, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 1403, i8 1, i32 1, i32 89 }, %struct.gf100_gr_init { i32 1414, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 1410, i8 2, i32 1, i32 128 }, %struct.gf100_gr_init { i32 1474, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1592, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1594, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1595, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1597, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1598, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2232, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2304, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2312, i8 8, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2320, i8 16, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2336, i8 8, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2344, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1608, i8 9, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1624, i8 1, i32 1, i32 15 }, %struct.gf100_gr_init { i32 2047, i8 1, i32 1, i32 10 }, %struct.gf100_gr_init { i32 1642, i8 1, i32 1, i32 1073741824 }, %struct.gf100_gr_init { i32 1643, i8 1, i32 1, i32 268435456 }, %struct.gf100_gr_init { i32 1644, i8 2, i32 1, i32 -65536 }, %struct.gf100_gr_init { i32 1967, i8 2, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2038, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1714, i8 1, i32 1, i32 85 }, %struct.gf100_gr_init { i32 1965, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2359, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2417, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2418, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 2419, i8 1, i32 1, i32 300 }, %struct.gf100_gr_init { i32 2428, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 2425, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2421, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 2422, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2423, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 2424, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2391, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2398, i8 1, i32 1, i32 538329104 }, %struct.gf100_gr_init { i32 2399, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 1667, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 1669, i8 1, i32 1, i32 4194303 }, %struct.gf100_gr_init { i32 1671, i8 1, i32 1, i32 3144 }, %struct.gf100_gr_init { i32 1696, i8 1, i32 1, i32 5 }, %struct.gf100_gr_init { i32 2112, i8 1, i32 1, i32 3145736 }, %struct.gf100_gr_init { i32 2113, i8 1, i32 1, i32 67108992 }, %struct.gf100_gr_init { i32 2114, i8 1, i32 1, i32 3145736 }, %struct.gf100_gr_init { i32 2115, i8 1, i32 1, i32 67108992 }, %struct.gf100_gr_init { i32 2072, i8 8, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2120, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1848, i8 1, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1706, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1707, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1708, i8 1, i32 1, i32 128 }, %struct.gf100_gr_init { i32 1709, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 1713, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 1723, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 1742, i8 1, i32 1, i32 712057992 }, %struct.gf100_gr_init { i32 1849, i8 1, i32 1, i32 1082507264 }, %struct.gf100_gr_init { i32 1850, i8 1, i32 1, i32 128 }, %struct.gf100_gr_init { i32 1926, i8 1, i32 1, i32 -2147483392 }, %struct.gf100_gr_init { i32 1852, i8 1, i32 1, i32 65792 }, %struct.gf100_gr_init { i32 1853, i8 1, i32 1, i32 41943040 }, %struct.gf100_gr_init { i32 1927, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 1932, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 1938, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1940, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1943, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 2102, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1946, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2099, i8 1, i32 1, i32 71582848 }, %struct.gf100_gr_init { i32 1953, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1955, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2097, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 2060, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2061, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2063, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2083, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2084, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2086, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2397, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2091, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 2370, i8 1, i32 1, i32 65537 }, %struct.gf100_gr_init { i32 2371, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2372, i8 1, i32 1, i32 34 }, %struct.gf100_gr_init { i32 1989, i8 1, i32 1, i32 65537 }, %struct.gf100_gr_init { i32 2100, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1991, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 49584, i8 8, i32 1, i32 15 }, %struct.gf100_gr_init { i32 49592, i8 1, i32 1, i32 262957185 }, %struct.gf100_gr_init { i32 49593, i8 1, i32 1, i32 16434824 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1706, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1709, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 1713, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 1932, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 1938, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1940, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1943, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 1946, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2099, i8 1, i32 1, i32 71582848 }, %struct.gf100_gr_init { i32 1953, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1955, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2097, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 20 }, %struct.gf100_gr_init { i32 849, i8 1, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2391, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2397, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2091, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 2370, i8 1, i32 1, i32 65537 }, %struct.gf100_gr_init { i32 2371, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1989, i8 1, i32 1, i32 65537 }, %struct.gf100_gr_init { i32 2100, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1991, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2060, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2061, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2063, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2083, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2084, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2086, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init zeroinitializer], [944 x i8] zeroinitializer }, align 32
@gf108_grctx_init_9197_0 = internal constant { [3 x %struct.gf100_gr_init], [48 x i8] } { [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 13312, i8 -128, i32 4, i32 0 }, %struct.gf100_gr_init { i32 740, i8 1, i32 4, i32 45057 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_902d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_9039_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_90c0_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"gf108_grctx_init_9097_0\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 278, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"gf108_grctx_init_gpm_0\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 660, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"gf108_grctx_init_pe_0\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 688, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [24 x i8] c"gf108_grctx_init_wwdx_0\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 698, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [25 x i8] c"gf108_grctx_init_tpccs_0\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 712, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"gf108_grctx_pack_hub\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 633, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"gf108_grctx_pack_gpc_0\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 670, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [23 x i8] c"gf108_grctx_pack_gpc_1\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 680, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"gf108_grctx_pack_tpc\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 720, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"gf108_grctx_pack_icmd\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 272, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"gf108_grctx_pack_mthd\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 587, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"gf108_grctx\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 784, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"gf108_grctx_init_ds_0\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 597, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"gf108_grctx_init_pd_0\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 609, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"gf108_grctx_init_be_0\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 621, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [25 x i8] c"gf108_grctx_init_setup_0\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 647, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [24 x i8] c"gf108_grctx_init_icmd_0\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 33, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"gf108_grctx_init_9197_0\00", align 1
@___asan_gen_.53 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 580, i32 1 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @gf108_grctx_init_9097_0, ptr @gf108_grctx_init_gpm_0, ptr @gf108_grctx_init_pe_0, ptr @gf108_grctx_init_wwdx_0, ptr @gf108_grctx_init_tpccs_0, ptr @gf108_grctx_pack_hub, ptr @gf108_grctx_pack_gpc_0, ptr @gf108_grctx_pack_gpc_1, ptr @gf108_grctx_pack_tpc, ptr @gf108_grctx_pack_icmd, ptr @gf108_grctx_pack_mthd, ptr @gf108_grctx, ptr @gf108_grctx_init_ds_0, ptr @gf108_grctx_init_pd_0, ptr @gf108_grctx_init_be_0, ptr @gf108_grctx_init_setup_0, ptr @gf108_grctx_init_icmd_0, ptr @gf108_grctx_init_9197_0], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_init_9097_0 to i32), i32 4768, i32 5952, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_init_gpm_0 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_init_pe_0 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_init_wwdx_0 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_init_tpccs_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_pack_hub to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_pack_gpc_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_pack_gpc_1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_pack_tpc to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_pack_icmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_pack_mthd to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_init_ds_0 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_init_pd_0 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_init_be_0 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_init_setup_0 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_init_icmd_0 to i32), i32 3760, i32 4704, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_grctx_init_9197_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf108_grctx_generate_attrib(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %grctx2 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %grctx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grctx2, align 4
  %alpha_nr = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %alpha_nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alpha_nr, align 4
  %attrib_nr = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %attrib_nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attrib_nr, align 4
  %attrib_nr_max = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 19
  %10 = ptrtoint ptr %attrib_nr_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attrib_nr_max, align 4
  %alpha_nr_max = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 21
  %12 = ptrtoint ptr %alpha_nr_max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %alpha_nr_max, align 4
  %add = add i32 %13, %11
  %mul = shl i32 %add, 5
  %tpc_total = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tpc_total, align 1
  %conv = zext i8 %15 to i32
  %mul3 = mul i32 %mul, %conv
  %call = tail call i32 @gf100_grctx_mmio_data(ptr noundef %info, i32 noundef %mul3, i32 noundef 4096, i1 noundef zeroext false) #2
  %16 = ptrtoint ptr %attrib_nr_max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attrib_nr_max, align 4
  %18 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tpc_total, align 1
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4294672, i32 noundef -2147483648, i32 noundef 12, i32 noundef %call) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4298824, i32 noundef 268435456, i32 noundef 12, i32 noundef %call) #2
  %shl = shl i32 %9, 16
  %or = or i32 %shl, %7
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4216880, i32 noundef %or, i32 noundef 0, i32 noundef -1) #2
  %20 = shl i32 %7, 14
  %or10 = or i32 %20, 65535
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4220100, i32 noundef %or10, i32 noundef 0, i32 noundef -1) #2
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %gpc_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp85.not = icmp eq i8 %22, 0
  br i1 %cmp85.not, label %entry.for.end42_crit_edge, label %for.cond13.preheader.lr.ph

entry.for.end42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end42

for.cond13.preheader.lr.ph:                       ; preds = %entry
  %conv6 = zext i8 %19 to i32
  %mul7 = mul i32 %17, %conv6
  %or26 = or i32 %shl, 268435456
  %shl35 = shl i32 %7, 16
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.inc40.for.cond13.preheader_crit_edge, %for.cond13.preheader.lr.ph
  %gpc.088 = phi i32 [ 0, %for.cond13.preheader.lr.ph ], [ %inc41, %for.inc40.for.cond13.preheader_crit_edge ]
  %ao.087 = phi i32 [ %mul7, %for.cond13.preheader.lr.ph ], [ %ao.1.lcssa, %for.inc40.for.cond13.preheader_crit_edge ]
  %bo.086 = phi i32 [ 0, %for.cond13.preheader.lr.ph ], [ %bo.1.lcssa, %for.inc40.for.cond13.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 14, i32 %gpc.088
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp1579.not = icmp eq i8 %24, 0
  br i1 %cmp1579.not, label %for.cond13.preheader.for.inc40_crit_edge, label %for.body17.lr.ph

for.cond13.preheader.for.inc40_crit_edge:         ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc40

for.body17.lr.ph:                                 ; preds = %for.cond13.preheader
  %mul19 = shl i32 %gpc.088, 15
  %add20 = add nuw nsw i32 %mul19, 5259264
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.body17.lr.ph
  %tpc.082 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc39, %for.body17.for.body17_crit_edge ]
  %ao.181 = phi i32 [ %ao.087, %for.body17.lr.ph ], [ %add38, %for.body17.for.body17_crit_edge ]
  %bo.180 = phi i32 [ %bo.086, %for.body17.lr.ph ], [ %add33, %for.body17.for.body17_crit_edge ]
  %mul21 = shl i32 %tpc.082, 11
  %add22 = add nuw nsw i32 %add20, %mul21
  %add24 = or i32 %add22, 1312
  %inc = add i32 %bo.180, 1
  %or27 = or i32 %inc, %or26
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add24, i32 noundef %or27, i32 noundef -1, i32 noundef -1) #2
  %or31 = or i32 %bo.180, %or26
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add24, i32 noundef %or31, i32 noundef 0, i32 noundef -1) #2
  %25 = ptrtoint ptr %attrib_nr_max to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %attrib_nr_max, align 4
  %add33 = add i32 %26, %bo.180
  %add34 = or i32 %add22, 1348
  %or36 = or i32 %ao.181, %shl35
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add34, i32 noundef %or36, i32 noundef 0, i32 noundef -1) #2
  %27 = ptrtoint ptr %alpha_nr_max to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %alpha_nr_max, align 4
  %add38 = add i32 %28, %ao.181
  %inc39 = add nuw nsw i32 %tpc.082, 1
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %30 to i32
  %cmp15 = icmp ult i32 %inc39, %conv14
  br i1 %cmp15, label %for.body17.for.body17_crit_edge, label %for.body17.for.inc40_crit_edge

for.body17.for.inc40_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc40

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body17

for.inc40:                                        ; preds = %for.body17.for.inc40_crit_edge, %for.cond13.preheader.for.inc40_crit_edge
  %bo.1.lcssa = phi i32 [ %bo.086, %for.cond13.preheader.for.inc40_crit_edge ], [ %add33, %for.body17.for.inc40_crit_edge ]
  %ao.1.lcssa = phi i32 [ %ao.087, %for.cond13.preheader.for.inc40_crit_edge ], [ %add38, %for.body17.for.inc40_crit_edge ]
  %inc41 = add nuw nsw i32 %gpc.088, 1
  %31 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %gpc_nr, align 1
  %conv11 = zext i8 %32 to i32
  %cmp = icmp ult i32 %inc41, %conv11
  br i1 %cmp, label %for.inc40.for.cond13.preheader_crit_edge, label %for.inc40.for.end42_crit_edge

for.inc40.for.end42_crit_edge:                    ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end42

for.inc40.for.cond13.preheader_crit_edge:         ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond13.preheader

for.end42:                                        ; preds = %for.inc40.for.end42_crit_edge, %entry.for.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_grctx_mmio_data(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_mmio_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf108_grctx_generate_unkn(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4295788
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !47
  tail call void @arm_heavy_mb() #2
  %or = or i32 %4, 1
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4295788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #2, !srcloc !48
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 4298764
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #2, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !50
  tail call void @arm_heavy_mb() #2
  %or17 = or i32 %9, 16
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %11, i32 4298764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %or17) #2, !srcloc !48
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %13, i32 4298772
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #2, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !52
  tail call void @arm_heavy_mb() #2
  %or33 = or i32 %14, 4
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr35 = getelementptr i8, ptr %16, i32 4298772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %or33) #2, !srcloc !48
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr42 = getelementptr i8, ptr %18, i32 4220096
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #2, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !54
  tail call void @arm_heavy_mb() #2
  %or49 = or i32 %19, -2147483648
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr51 = getelementptr i8, ptr %21, i32 4220096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %or49) #2, !srcloc !48
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr58 = getelementptr i8, ptr %23, i32 4216832
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #2, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !56
  tail call void @arm_heavy_mb() #2
  %or65 = or i32 %24, 134217728
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr67 = getelementptr i8, ptr %26, i32 4216832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %or65) #2, !srcloc !48
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr74 = getelementptr i8, ptr %28, i32 4299776
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #2, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !58
  tail call void @arm_heavy_mb() #2
  %or81 = or i32 %29, 8
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr83 = getelementptr i8, ptr %31, i32 4299776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %or81) #2, !srcloc !48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_bundle(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_pagepool(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_sm_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_tpc_nr(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_r4060a8(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_rop_mapping(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_alpha_beta_tables(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_max_ways_evict(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_r419cb8(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @gf108_grctx_init_9097_0, !1, !"gf108_grctx_init_9097_0", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 278, i32 1}
!2 = !{ptr @gf108_grctx_init_gpm_0, !3, !"gf108_grctx_init_gpm_0", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 660, i32 1}
!4 = !{ptr @gf108_grctx_init_pe_0, !5, !"gf108_grctx_init_pe_0", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 688, i32 1}
!6 = !{ptr @gf108_grctx_init_wwdx_0, !7, !"gf108_grctx_init_wwdx_0", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 698, i32 1}
!8 = !{ptr @gf108_grctx_init_tpccs_0, !9, !"gf108_grctx_init_tpccs_0", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 712, i32 1}
!10 = !{ptr @gf108_grctx, !11, !"gf108_grctx", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 784, i32 1}
!12 = !{ptr @gf108_grctx_pack_hub, !13, !"gf108_grctx_pack_hub", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 633, i32 1}
!14 = !{ptr @gf108_grctx_init_ds_0, !15, !"gf108_grctx_init_ds_0", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 597, i32 1}
!16 = !{ptr @gf108_grctx_init_pd_0, !17, !"gf108_grctx_init_pd_0", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 609, i32 1}
!18 = !{ptr @gf108_grctx_init_be_0, !19, !"gf108_grctx_init_be_0", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 621, i32 1}
!20 = !{ptr @gf108_grctx_pack_gpc_0, !21, !"gf108_grctx_pack_gpc_0", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 670, i32 1}
!22 = !{ptr @gf108_grctx_init_setup_0, !23, !"gf108_grctx_init_setup_0", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 647, i32 1}
!24 = !{ptr @gf108_grctx_pack_gpc_1, !25, !"gf108_grctx_pack_gpc_1", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 680, i32 1}
!26 = !{ptr @gf108_grctx_pack_tpc, !27, !"gf108_grctx_pack_tpc", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 720, i32 1}
!28 = !{ptr @gf108_grctx_pack_icmd, !29, !"gf108_grctx_pack_icmd", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 272, i32 1}
!30 = !{ptr @gf108_grctx_init_icmd_0, !31, !"gf108_grctx_init_icmd_0", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 33, i32 1}
!32 = !{ptr @gf108_grctx_pack_mthd, !33, !"gf108_grctx_pack_mthd", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 587, i32 1}
!34 = !{ptr @gf108_grctx_init_9197_0, !35, !"gf108_grctx_init_9197_0", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf108.c", i32 580, i32 1}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 5441217}
!46 = !{i64 2156318832}
!47 = !{i64 2156319234}
!48 = !{i64 5440799}
!49 = !{i64 2156320107}
!50 = !{i64 2156320509}
!51 = !{i64 2156321382}
!52 = !{i64 2156321784}
!53 = !{i64 2156322657}
!54 = !{i64 2156323059}
!55 = !{i64 2156323932}
!56 = !{i64 2156324334}
!57 = !{i64 2156325207}
!58 = !{i64 2156325609}
