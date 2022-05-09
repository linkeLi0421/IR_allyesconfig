; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_grctx = type { ptr, ptr, ptr, i32, [4 x i64], i64 }
%struct.gf100_gr_data = type { i32, i32, i8 }
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
%struct.gf100_gr_mmio = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.rb_root = type { ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }

@gf100_grctx_init_icmd_0 = internal constant { [234 x %struct.gf100_gr_init], [928 x i8] } { [234 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 169, i8 1, i32 1, i32 65535 }, %struct.gf100_gr_init { i32 56, i8 1, i32 1, i32 262957185 }, %struct.gf100_gr_init { i32 61, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 232, i8 8, i32 1, i32 1024 }, %struct.gf100_gr_init { i32 120, i8 8, i32 1, i32 768 }, %struct.gf100_gr_init { i32 80, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 88, i8 8, i32 1, i32 8 }, %struct.gf100_gr_init { i32 520, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 129, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 133, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 136, i8 1, i32 1, i32 1024 }, %struct.gf100_gr_init { i32 144, i8 1, i32 1, i32 768 }, %struct.gf100_gr_init { i32 152, i8 1, i32 1, i32 4097 }, %struct.gf100_gr_init { i32 227, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 218, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 248, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 250, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 159, i8 4, i32 1, i32 65535 }, %struct.gf100_gr_init { i32 177, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 178, i8 40, i32 1, i32 0 }, %struct.gf100_gr_init { i32 528, i8 8, i32 1, i32 64 }, %struct.gf100_gr_init { i32 536, i8 8, i32 1, i32 49280 }, %struct.gf100_gr_init { i32 173, i8 1, i32 1, i32 318 }, %struct.gf100_gr_init { i32 225, i8 1, i32 1, i32 16 }, %struct.gf100_gr_init { i32 656, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 944, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 672, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1056, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 688, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1072, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 704, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1232, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1824, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2240, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2192, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2272, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2208, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2288, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2380, i8 1, i32 1, i32 255 }, %struct.gf100_gr_init { i32 2381, i8 1, i32 1, i32 -1 }, %struct.gf100_gr_init { i32 2382, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 748, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 771, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 742, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1126, i8 1, i32 1, i32 82 }, %struct.gf100_gr_init { i32 769, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 772, i8 1, i32 1, i32 807407616 }, %struct.gf100_gr_init { i32 773, i8 1, i32 1, i32 1885360192 }, %struct.gf100_gr_init { i32 774, i8 1, i32 1, i32 -1196910456 }, %struct.gf100_gr_init { i32 775, i8 1, i32 1, i32 -118957880 }, %struct.gf100_gr_init { i32 778, i8 1, i32 1, i32 16776960 }, %struct.gf100_gr_init { i32 779, i8 1, i32 1, i32 26 }, %struct.gf100_gr_init { i32 780, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 792, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 832, i8 1, i32 1, i32 0 }, %struct.gf100_gr_init { i32 885, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 849, i8 1, i32 1, i32 256 }, %struct.gf100_gr_init { i32 893, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 928, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 938, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 937, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 896, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 864, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 870, i8 2, i32 1, i32 0 }, %struct.gf100_gr_init { i32 872, i8 1, i32 1, i32 8191 }, %struct.gf100_gr_init { i32 880, i8 2, i32 1, i32 0 }, %struct.gf100_gr_init { i32 882, i8 1, i32 1, i32 4194303 }, %struct.gf100_gr_init { i32 890, i8 1, i32 1, i32 18 }, %struct.gf100_gr_init { i32 1504, i8 5, i32 1, i32 34 }, %struct.gf100_gr_init { i32 1561, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2065, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2066, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 2067, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 2068, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2069, i8 1, i32 1, i32 11 }, %struct.gf100_gr_init { i32 2048, i8 6, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1586, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1587, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1588, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 1589, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 1620, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1623, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1621, i8 2, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1741, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 2037, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 2012, i8 1, i32 1, i32 958994697 }, %struct.gf100_gr_init { i32 2013, i8 1, i32 1, i32 2036947273 }, %struct.gf100_gr_init { i32 2014, i8 1, i32 1, i32 -1180067447 }, %struct.gf100_gr_init { i32 2015, i8 1, i32 1, i32 -102114871 }, %struct.gf100_gr_init { i32 2024, i8 1, i32 1, i32 12816 }, %struct.gf100_gr_init { i32 2025, i8 1, i32 1, i32 30292 }, %struct.gf100_gr_init { i32 2026, i8 1, i32 1, i32 152 }, %struct.gf100_gr_init { i32 2028, i8 1, i32 1, i32 958994697 }, %struct.gf100_gr_init { i32 2029, i8 1, i32 1, i32 2036947273 }, %struct.gf100_gr_init { i32 2030, i8 1, i32 1, i32 -1180067447 }, %struct.gf100_gr_init { i32 2031, i8 1, i32 1, i32 -102114871 }, %struct.gf100_gr_init { i32 2032, i8 1, i32 1, i32 12816 }, %struct.gf100_gr_init { i32 2033, i8 1, i32 1, i32 30292 }, %struct.gf100_gr_init { i32 2034, i8 1, i32 1, i32 152 }, %struct.gf100_gr_init { i32 1445, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2432, i8 -128, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1128, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 1132, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1136, i8 96, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1296, i8 16, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1312, i8 1, i32 1, i32 694 }, %struct.gf100_gr_init { i32 1321, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1328, i8 16, i32 1, i32 -65536 }, %struct.gf100_gr_init { i32 1413, i8 1, i32 1, i32 63 }, %struct.gf100_gr_init { i32 1398, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 1414, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 1410, i8 2, i32 1, i32 128 }, %struct.gf100_gr_init { i32 1474, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1592, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1594, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1595, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1597, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1598, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2232, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2304, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2312, i8 8, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2320, i8 16, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2336, i8 8, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2344, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1608, i8 9, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1624, i8 1, i32 1, i32 15 }, %struct.gf100_gr_init { i32 2047, i8 1, i32 1, i32 10 }, %struct.gf100_gr_init { i32 1642, i8 1, i32 1, i32 1073741824 }, %struct.gf100_gr_init { i32 1643, i8 1, i32 1, i32 268435456 }, %struct.gf100_gr_init { i32 1644, i8 2, i32 1, i32 -65536 }, %struct.gf100_gr_init { i32 1967, i8 2, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2038, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1714, i8 1, i32 1, i32 85 }, %struct.gf100_gr_init { i32 1965, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2359, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2417, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2418, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 2419, i8 1, i32 1, i32 300 }, %struct.gf100_gr_init { i32 2428, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 2425, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2421, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 2422, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2423, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 2424, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2391, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2398, i8 1, i32 1, i32 538329104 }, %struct.gf100_gr_init { i32 2399, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 1667, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 1669, i8 1, i32 1, i32 4194303 }, %struct.gf100_gr_init { i32 1671, i8 1, i32 1, i32 3144 }, %struct.gf100_gr_init { i32 1696, i8 1, i32 1, i32 5 }, %struct.gf100_gr_init { i32 2112, i8 1, i32 1, i32 3145736 }, %struct.gf100_gr_init { i32 2113, i8 1, i32 1, i32 67108992 }, %struct.gf100_gr_init { i32 2114, i8 1, i32 1, i32 3145736 }, %struct.gf100_gr_init { i32 2115, i8 1, i32 1, i32 67108992 }, %struct.gf100_gr_init { i32 2072, i8 8, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2120, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1848, i8 1, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1706, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1707, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1708, i8 1, i32 1, i32 128 }, %struct.gf100_gr_init { i32 1709, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 1713, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 1723, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 1742, i8 1, i32 1, i32 712057992 }, %struct.gf100_gr_init { i32 1849, i8 1, i32 1, i32 1082507264 }, %struct.gf100_gr_init { i32 1850, i8 1, i32 1, i32 128 }, %struct.gf100_gr_init { i32 1926, i8 1, i32 1, i32 -2147483392 }, %struct.gf100_gr_init { i32 1852, i8 1, i32 1, i32 65792 }, %struct.gf100_gr_init { i32 1853, i8 1, i32 1, i32 41943040 }, %struct.gf100_gr_init { i32 1927, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 1932, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 1938, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1940, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1943, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 2102, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1946, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2099, i8 1, i32 1, i32 71582848 }, %struct.gf100_gr_init { i32 1953, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1955, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2097, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 2060, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2061, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2063, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2083, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2084, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2086, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2397, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2091, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 2370, i8 1, i32 1, i32 65537 }, %struct.gf100_gr_init { i32 2371, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2372, i8 1, i32 1, i32 34 }, %struct.gf100_gr_init { i32 1989, i8 1, i32 1, i32 65537 }, %struct.gf100_gr_init { i32 2100, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1991, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 49584, i8 8, i32 1, i32 15 }, %struct.gf100_gr_init { i32 49592, i8 1, i32 1, i32 262957185 }, %struct.gf100_gr_init { i32 49593, i8 1, i32 1, i32 16434824 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1706, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1709, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 1713, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 1932, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 1938, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1940, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1943, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 1946, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2099, i8 1, i32 1, i32 71582848 }, %struct.gf100_gr_init { i32 1953, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1955, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2097, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 20 }, %struct.gf100_gr_init { i32 849, i8 1, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2391, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2397, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2091, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 2370, i8 1, i32 1, i32 65537 }, %struct.gf100_gr_init { i32 2371, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1989, i8 1, i32 1, i32 65537 }, %struct.gf100_gr_init { i32 2100, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1991, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2060, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2061, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2063, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2083, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2084, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2086, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init zeroinitializer], [928 x i8] zeroinitializer }, align 32
@gf100_grctx_pack_icmd = dso_local constant { [2 x %struct.gf100_gr_pack], [16 x i8] } { [2 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_icmd_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [16 x i8] zeroinitializer }, align 32
@gf100_grctx_init_902d_0 = dso_local constant { [15 x %struct.gf100_gr_init], [48 x i8] } { [15 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 512, i8 1, i32 4, i32 207 }, %struct.gf100_gr_init { i32 516, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 520, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 524, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 528, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 532, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 536, i8 2, i32 4, i32 256 }, %struct.gf100_gr_init { i32 544, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 560, i8 1, i32 4, i32 207 }, %struct.gf100_gr_init { i32 564, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 568, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 572, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 580, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 584, i8 2, i32 4, i32 256 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_9039_0 = dso_local constant { [5 x %struct.gf100_gr_init], [48 x i8] } { [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 780, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 800, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 568, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 792, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_90c0_0 = dso_local constant { [14 x %struct.gf100_gr_init], [32 x i8] } { [14 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 9996, i8 8, i32 32, i32 0 }, %struct.gf100_gr_init { i32 780, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6468, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1880, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 708, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1936, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 516, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 532, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 588, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3476, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5640, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5732, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_init_9097_0 = internal constant { [299 x %struct.gf100_gr_init], [1200 x i8] } { [299 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 2048, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2052, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2056, i8 8, i32 64, i32 1024 }, %struct.gf100_gr_init { i32 2060, i8 8, i32 64, i32 768 }, %struct.gf100_gr_init { i32 2064, i8 1, i32 4, i32 207 }, %struct.gf100_gr_init { i32 2128, i8 7, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2068, i8 8, i32 64, i32 64 }, %struct.gf100_gr_init { i32 2072, i8 8, i32 64, i32 1 }, %struct.gf100_gr_init { i32 2076, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2080, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 9984, i8 8, i32 32, i32 0 }, %struct.gf100_gr_init { i32 9988, i8 8, i32 32, i32 0 }, %struct.gf100_gr_init { i32 9992, i8 8, i32 32, i32 0 }, %struct.gf100_gr_init { i32 9996, i8 8, i32 32, i32 0 }, %struct.gf100_gr_init { i32 10000, i8 8, i32 32, i32 81920 }, %struct.gf100_gr_init { i32 10004, i8 8, i32 32, i32 64 }, %struct.gf100_gr_init { i32 7168, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7172, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7176, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7180, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7424, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7428, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7432, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7436, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7936, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 7940, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 8064, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 8068, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 8704, i8 5, i32 16, i32 34 }, %struct.gf100_gr_init { i32 8192, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 8256, i8 1, i32 4, i32 17 }, %struct.gf100_gr_init { i32 8320, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 8384, i8 1, i32 4, i32 48 }, %struct.gf100_gr_init { i32 8448, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 8512, i8 1, i32 4, i32 81 }, %struct.gf100_gr_init { i32 8204, i8 6, i32 64, i32 1 }, %struct.gf100_gr_init { i32 8208, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 8272, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 8336, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 8400, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 8464, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 8528, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 896, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 900, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 904, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 908, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 1792, i8 4, i32 16, i32 0 }, %struct.gf100_gr_init { i32 1796, i8 4, i32 16, i32 0 }, %struct.gf100_gr_init { i32 1800, i8 4, i32 16, i32 0 }, %struct.gf100_gr_init { i32 10240, i8 -128, i32 4, i32 0 }, %struct.gf100_gr_init { i32 2560, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2564, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2568, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2572, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2576, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2580, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 3072, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3076, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3080, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3084, i8 16, i32 16, i32 1065353216 }, %struct.gf100_gr_init { i32 3328, i8 8, i32 8, i32 -65536 }, %struct.gf100_gr_init { i32 3332, i8 8, i32 8, i32 -65536 }, %struct.gf100_gr_init { i32 3584, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3588, i8 16, i32 16, i32 -65536 }, %struct.gf100_gr_init { i32 3592, i8 16, i32 16, i32 -65536 }, %struct.gf100_gr_init { i32 3392, i8 4, i32 8, i32 0 }, %struct.gf100_gr_init { i32 3396, i8 4, i32 8, i32 0 }, %struct.gf100_gr_init { i32 7680, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7684, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7688, i8 8, i32 32, i32 2 }, %struct.gf100_gr_init { i32 7692, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7696, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7700, i8 8, i32 32, i32 2 }, %struct.gf100_gr_init { i32 7704, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 13312, i8 -128, i32 4, i32 0 }, %struct.gf100_gr_init { i32 780, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6468, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5396, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3432, i8 1, i32 4, i32 65535 }, %struct.gf100_gr_init { i32 4636, i8 1, i32 4, i32 262957185 }, %struct.gf100_gr_init { i32 4012, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5432, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4064, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4072, i8 1, i32 4, i32 20 }, %struct.gf100_gr_init { i32 4076, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4080, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6044, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4648, i8 1, i32 4, i32 1024 }, %struct.gf100_gr_init { i32 4652, i8 1, i32 4, i32 768 }, %struct.gf100_gr_init { i32 4656, i8 1, i32 4, i32 65537 }, %struct.gf100_gr_init { i32 2040, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5556, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5580, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5428, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4016, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5584, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5436, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5812, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4028, i8 4, i32 4, i32 65535 }, %struct.gf100_gr_init { i32 3576, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6472, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6512, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5660, i8 1, i32 4, i32 2544 }, %struct.gf100_gr_init { i32 3532, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 5692, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5604, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4448, i8 32, i32 4, i32 635437120 }, %struct.gf100_gr_init { i32 6272, i8 32, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3972, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6088, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6096, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 6100, i8 1, i32 4, i32 -1 }, %struct.gf100_gr_init { i32 6104, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 6108, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5620, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5172, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3444, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3564, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5028, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4888, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5700, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1864, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3560, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5704, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4772, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4384, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4376, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5708, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5720, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6416, i8 1, i32 4, i32 656 }, %struct.gf100_gr_init { i32 5400, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5724, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5408, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5636, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5488, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5040, i8 2, i32 4, i32 1065353216 }, %struct.gf100_gr_init { i32 524, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5744, i8 1, i32 4, i32 807407616 }, %struct.gf100_gr_init { i32 5748, i8 1, i32 4, i32 1885360192 }, %struct.gf100_gr_init { i32 5752, i8 1, i32 4, i32 -1196910456 }, %struct.gf100_gr_init { i32 5756, i8 1, i32 4, i32 -118957880 }, %struct.gf100_gr_init { i32 5740, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5760, i8 1, i32 4, i32 16776960 }, %struct.gf100_gr_init { i32 4816, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4820, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 5764, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3500, i8 2, i32 4, i32 6914 }, %struct.gf100_gr_init { i32 3508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5772, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5564, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5484, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6268, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4368, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 3520, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4660, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5776, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4780, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 708, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1936, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 4348, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4752, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 536, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 4824, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4828, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 3476, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5468, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5476, i8 1, i32 4, i32 8191 }, %struct.gf100_gr_init { i32 5492, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5500, i8 1, i32 4, i32 4194303 }, %struct.gf100_gr_init { i32 4948, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5732, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5648, i8 1, i32 4, i32 18 }, %struct.gf100_gr_init { i32 5640, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5676, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 528, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 800, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 804, i8 6, i32 4, i32 1065353216 }, %struct.gf100_gr_init { i32 1872, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1888, i8 1, i32 4, i32 958994697 }, %struct.gf100_gr_init { i32 1892, i8 1, i32 4, i32 2036947273 }, %struct.gf100_gr_init { i32 1896, i8 1, i32 4, i32 -1180067447 }, %struct.gf100_gr_init { i32 1900, i8 1, i32 4, i32 -102114871 }, %struct.gf100_gr_init { i32 1904, i8 1, i32 4, i32 807407616 }, %struct.gf100_gr_init { i32 1908, i8 1, i32 4, i32 1885360192 }, %struct.gf100_gr_init { i32 1912, i8 1, i32 4, i32 36992 }, %struct.gf100_gr_init { i32 1920, i8 1, i32 4, i32 958994697 }, %struct.gf100_gr_init { i32 1924, i8 1, i32 4, i32 2036947273 }, %struct.gf100_gr_init { i32 1928, i8 1, i32 4, i32 -1180067447 }, %struct.gf100_gr_init { i32 1932, i8 1, i32 4, i32 -102114871 }, %struct.gf100_gr_init { i32 2000, i8 1, i32 4, i32 807407616 }, %struct.gf100_gr_init { i32 2004, i8 1, i32 4, i32 1885360192 }, %struct.gf100_gr_init { i32 2008, i8 1, i32 4, i32 36992 }, %struct.gf100_gr_init { i32 892, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 1856, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 9728, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6424, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6428, i8 1, i32 4, i32 2304 }, %struct.gf100_gr_init { i32 6432, i8 1, i32 4, i32 1029 }, %struct.gf100_gr_init { i32 4872, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6436, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5036, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6444, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6460, i8 1, i32 4, i32 11292 }, %struct.gf100_gr_init { i32 3452, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3980, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 704, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5392, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6464, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4084, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6476, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6504, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5520, i8 1, i32 4, i32 63 }, %struct.gf100_gr_init { i32 2024, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6508, i8 1, i32 4, i32 17 }, %struct.gf100_gr_init { i32 6524, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4044, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 728, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 6528, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 5380, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 6532, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 768, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5032, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4844, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4880, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4884, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4992, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4996, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5012, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5020, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5016, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5524, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5528, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 3924, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6588, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3996, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4812, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4840, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4876, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4960, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4924, i8 2, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4932, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4936, i8 2, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4944, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4952, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4836, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4892, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6592, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4416, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6596, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6600, i8 1, i32 4, i32 5376 }, %struct.gf100_gr_init { i32 4956, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3984, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6624, i8 8, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6604, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5560, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6656, i8 1, i32 4, i32 4369 }, %struct.gf100_gr_init { i32 6660, i8 7, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3436, i8 2, i32 4, i32 -65536 }, %struct.gf100_gr_init { i32 4344, i8 1, i32 4, i32 4112 }, %struct.gf100_gr_init { i32 3456, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3488, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5384, i8 1, i32 4, i32 -2147483648 }, %struct.gf100_gr_init { i32 5388, i8 1, i32 4, i32 1073741824 }, %struct.gf100_gr_init { i32 5736, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 792, i8 2, i32 4, i32 8 }, %struct.gf100_gr_init { i32 3484, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 2012, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1868, i8 1, i32 4, i32 85 }, %struct.gf100_gr_init { i32 5152, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 6076, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6084, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4104, i8 1, i32 4, i32 8 }, %struct.gf100_gr_init { i32 4108, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4112, i8 1, i32 4, i32 300 }, %struct.gf100_gr_init { i32 3424, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 1884, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4120, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 4124, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4128, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 4132, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5188, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 864, i8 1, i32 4, i32 538329104 }, %struct.gf100_gr_init { i32 868, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 872, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3556, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 516, i8 1, i32 4, i32 6 }, %struct.gf100_gr_init { i32 520, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 716, i8 1, i32 4, i32 4194303 }, %struct.gf100_gr_init { i32 720, i8 1, i32 4, i32 3144 }, %struct.gf100_gr_init { i32 4640, i8 1, i32 4, i32 5 }, %struct.gf100_gr_init { i32 4060, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3992, i8 1, i32 4, i32 3145736 }, %struct.gf100_gr_init { i32 4740, i8 1, i32 4, i32 67108992 }, %struct.gf100_gr_init { i32 5200, i8 1, i32 4, i32 3145736 }, %struct.gf100_gr_init { i32 5204, i8 1, i32 4, i32 67108992 }, %struct.gf100_gr_init { i32 532, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [1200 x i8] zeroinitializer }, align 32
@gf100_grctx_pack_mthd = dso_local constant { [5 x %struct.gf100_gr_pack], [56 x i8] } { [5 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_9097_0, i32 37015 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_902d_0, i32 36909 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_9039_0, i32 36921 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_90c0_0, i32 37056 }, %struct.gf100_gr_pack zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gf100_grctx_init_main_0 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4194820, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_init_fe_0 = dso_local constant { [17 x %struct.gf100_gr_init], [80 x i8] } { [17 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4210692, i8 11, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210756, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210836, i8 13, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210888, i8 1, i32 4, i32 -268435321 }, %struct.gf100_gr_init { i32 4210896, i8 6, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210920, i8 1, i32 4, i32 4096 }, %struct.gf100_gr_init { i32 4210936, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210992, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211000, i8 1, i32 4, i32 536870976 }, %struct.gf100_gr_init { i32 4211024, i8 1, i32 4, i32 46 }, %struct.gf100_gr_init { i32 4211028, i8 1, i32 4, i32 1024 }, %struct.gf100_gr_init { i32 4211032, i8 1, i32 4, i32 512 }, %struct.gf100_gr_init { i32 4211044, i8 1, i32 4, i32 85 }, %struct.gf100_gr_init { i32 4211048, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211060, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211200, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [80 x i8] zeroinitializer }, align 32
@gf100_grctx_init_pri_0 = dso_local constant { [7 x %struct.gf100_gr_init], [48 x i8] } { [7 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4211716, i8 14, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211808, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211816, i8 1, i32 4, i32 16777215 }, %struct.gf100_gr_init { i32 4211820, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211840, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4211864, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_memfmt_0 = dso_local constant { [18 x %struct.gf100_gr_init], [64 x i8] } { [18 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4212228, i8 1, i32 4, i32 21 }, %struct.gf100_gr_init { i32 4212232, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4212236, i8 1, i32 4, i32 11776 }, %struct.gf100_gr_init { i32 4212240, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4212248, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4212280, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 4212284, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4212316, i8 1, i32 4, i32 8323328 }, %struct.gf100_gr_init { i32 4212320, i8 7, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4212348, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4212352, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4212384, i8 1, i32 4, i32 8323200 }, %struct.gf100_gr_init { i32 4212388, i8 18, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4212464, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4212480, i8 13, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4212532, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4212536, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [64 x i8] zeroinitializer }, align 32
@gf100_grctx_init_rstr2d_0 = dso_local constant { [9 x %struct.gf100_gr_init], [48 x i8] } { [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4225028, i8 1, i32 4, i32 35 }, %struct.gf100_gr_init { i32 4225036, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4225040, i8 1, i32 4, i32 102793446 }, %struct.gf100_gr_init { i32 4225044, i8 1, i32 4, i32 33790116 }, %struct.gf100_gr_init { i32 4225048, i8 1, i32 4, i32 241340514 }, %struct.gf100_gr_init { i32 4225052, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4225056, i8 1, i32 4, i32 230 }, %struct.gf100_gr_init { i32 4225212, i8 1, i32 4, i32 259 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_scc_0 = dso_local constant { [7 x %struct.gf100_gr_init], [48 x i8] } { [7 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4227072, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4227080, i8 1, i32 4, i32 24 }, %struct.gf100_gr_init { i32 4227084, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4227092, i8 1, i32 4, i32 105 }, %struct.gf100_gr_init { i32 4227096, i8 1, i32 4, i32 -520036096 }, %struct.gf100_gr_init { i32 4227172, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_ds_0 = internal constant { [8 x %struct.gf100_gr_init], [32 x i8] } { [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4216832, i8 1, i32 4, i32 125829311 }, %struct.gf100_gr_init { i32 4216880, i8 1, i32 4, i32 35127296 }, %struct.gf100_gr_init { i32 4216884, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4216916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4216944, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4217344, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217368, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_init_pd_0 = internal constant { [6 x %struct.gf100_gr_init], [32 x i8] } { [6 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4218912, i8 1, i32 4, i32 66497 }, %struct.gf100_gr_init { i32 4218920, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4220072, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4220076, i8 1, i32 4, i32 16383 }, %struct.gf100_gr_init { i32 4220084, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_init_be_0 = internal constant { [8 x %struct.gf100_gr_init], [32 x i8] } { [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4229120, i8 1, i32 4, i32 41953852 }, %struct.gf100_gr_init { i32 4229124, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4229128, i8 1, i32 4, i32 253965 }, %struct.gf100_gr_init { i32 4229376, i8 1, i32 4, i32 813742081 }, %struct.gf100_gr_init { i32 4229380, i8 1, i32 4, i32 33554433 }, %struct.gf100_gr_init { i32 4229384, i8 1, i32 4, i32 13109545 }, %struct.gf100_gr_init { i32 4229504, i8 1, i32 4, i32 285 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_pack_hub = dso_local constant { [10 x %struct.gf100_gr_pack], [48 x i8] } { [10 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_memfmt_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_be_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_gpc_unk_0 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4293504, i8 1, i32 4, i32 22 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_init_prop_0 = dso_local constant { [10 x %struct.gf100_gr_init], [32 x i8] } { [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4293632, i8 1, i32 4, i32 939544064 }, %struct.gf100_gr_init { i32 4293636, i8 1, i32 4, i32 1910571007 }, %struct.gf100_gr_init { i32 4293640, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4293644, i8 1, i32 4, i32 4104 }, %struct.gf100_gr_init { i32 4293648, i8 1, i32 4, i32 268374015 }, %struct.gf100_gr_init { i32 4293652, i8 1, i32 4, i32 2101247 }, %struct.gf100_gr_init { i32 4293712, i8 6, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4293736, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4293740, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_init_gpc_unk_1 = dso_local constant { [8 x %struct.gf100_gr_init], [32 x i8] } { [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294144, i8 1, i32 4, i32 31 }, %struct.gf100_gr_init { i32 4294276, i8 1, i32 4, i32 15 }, %struct.gf100_gr_init { i32 4294400, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4294404, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 4294408, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294412, i8 1, i32 4, i32 130547712 }, %struct.gf100_gr_init { i32 4294416, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_init_zcull_0 = dso_local constant { [5 x %struct.gf100_gr_init], [48 x i8] } { [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294940, i8 1, i32 4, i32 16711935 }, %struct.gf100_gr_init { i32 4294948, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294952, i8 1, i32 4, i32 16776960 }, %struct.gf100_gr_init { i32 4294956, i8 1, i32 4, i32 65280 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_crstr_0 = dso_local constant { [9 x %struct.gf100_gr_init], [48 x i8] } { [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295424, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295432, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4295436, i8 1, i32 4, i32 102793446 }, %struct.gf100_gr_init { i32 4295440, i8 1, i32 4, i32 33790116 }, %struct.gf100_gr_init { i32 4295444, i8 1, i32 4, i32 241340514 }, %struct.gf100_gr_init { i32 4295448, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4295452, i8 1, i32 4, i32 230 }, %struct.gf100_gr_init { i32 4295608, i8 1, i32 4, i32 259 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_gpm_0 = dso_local constant { [5 x %struct.gf100_gr_init], [48 x i8] } { [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295688, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4295696, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295808, i8 1, i32 4, i32 538968068 }, %struct.gf100_gr_init { i32 4295820, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_gcc_0 = dso_local constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4296704, i8 1, i32 4, i32 1920 }, %struct.gf100_gr_init { i32 4296708, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296724, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_init_setup_0 = internal constant { [9 x %struct.gf100_gr_init], [48 x i8] } { [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294656, i8 1, i32 4, i32 427530 }, %struct.gf100_gr_init { i32 4294664, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294696, i8 1, i32 4, i32 33858 }, %struct.gf100_gr_init { i32 4294704, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4294872, i8 1, i32 4, i32 8 }, %struct.gf100_gr_init { i32 4294880, i8 1, i32 4, i32 16777216 }, %struct.gf100_gr_init { i32 4294888, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294908, i8 1, i32 4, i32 1048576 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_pack_gpc_0 = dso_local constant { [6 x %struct.gf100_gr_pack], [48 x i8] } { [6 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_zcull_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_pack_gpc_1 = dso_local constant { [4 x %struct.gf100_gr_pack], [32 x i8] } { [4 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_gcc_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_init_zcullr_0 = internal constant { [25 x %struct.gf100_gr_init], [112 x i8] } { [25 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295168, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295180, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4295184, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295200, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295212, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4295216, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295232, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295244, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4295248, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295264, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295276, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4295280, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295296, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295308, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4295312, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295328, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295340, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4295344, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295360, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295372, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4295376, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295392, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295404, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4295408, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [112 x i8] zeroinitializer }, align 32
@gf100_grctx_pack_zcull = dso_local constant { [2 x %struct.gf100_gr_pack], [16 x i8] } { [2 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_zcullr_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [16 x i8] zeroinitializer }, align 32
@gf100_grctx_init_pe_0 = dso_local constant { [6 x %struct.gf100_gr_init], [32 x i8] } { [6 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4298776, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298812, i8 1, i32 4, i32 232391 }, %struct.gf100_gr_init { i32 4298824, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298852, i8 1, i32 4, i32 298 }, %struct.gf100_gr_init { i32 4298888, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_init_wwdx_0 = dso_local constant { [10 x %struct.gf100_gr_init], [32 x i8] } { [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299520, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4299524, i8 1, i32 4, i32 102793446 }, %struct.gf100_gr_init { i32 4299528, i8 1, i32 4, i32 33790116 }, %struct.gf100_gr_init { i32 4299532, i8 1, i32 4, i32 241340514 }, %struct.gf100_gr_init { i32 4299536, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4299540, i8 1, i32 4, i32 230 }, %struct.gf100_gr_init { i32 4299728, i8 1, i32 4, i32 9437443 }, %struct.gf100_gr_init { i32 4299744, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4299748, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_init_mpc_0 = dso_local constant { [5 x %struct.gf100_gr_init], [48 x i8] } { [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299776, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4299780, i8 1, i32 4, i32 6 }, %struct.gf100_gr_init { i32 4299784, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4299808, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_tpccs_0 = dso_local constant { [3 x %struct.gf100_gr_init], [48 x i8] } { [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300064, i8 1, i32 4, i32 35127296 }, %struct.gf100_gr_init { i32 4300068, i8 1, i32 4, i32 8191 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_tex_0 = internal constant { [7 x %struct.gf100_gr_init], [48 x i8] } { [7 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299264, i8 1, i32 4, i32 496 }, %struct.gf100_gr_init { i32 4299268, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4299272, i8 1, i32 4, i32 35 }, %struct.gf100_gr_init { i32 4299276, i8 1, i32 4, i32 131072 }, %struct.gf100_gr_init { i32 4299280, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299284, i8 1, i32 4, i32 512 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_l1c_0 = internal constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299952, i8 1, i32 4, i32 393288 }, %struct.gf100_gr_init { i32 4300008, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300020, i8 1, i32 4, i32 387 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_init_sm_0 = internal constant { [9 x %struct.gf100_gr_init], [48 x i8] } { [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300292, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300304, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4300356, i8 1, i32 4, i32 1830898 }, %struct.gf100_gr_init { i32 4300360, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300364, i8 1, i32 4, i32 15 }, %struct.gf100_gr_init { i32 4300368, i8 17, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300440, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300624, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_pack_tpc = dso_local constant { [8 x %struct.gf100_gr_pack], [32 x i8] } { [8 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_tpccs_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_sm_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_alpha_beta_map = internal constant { [17 x [32 x i32]], [544 x i8] } { [17 x [32 x i32]] [[32 x i32] zeroinitializer, [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [32 x i32] zeroinitializer, [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3], [32 x i32] zeroinitializer, [32 x i32] zeroinitializer, [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6], [32 x i32] [i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7], [32 x i32] zeroinitializer, [32 x i32] zeroinitializer, [32 x i32] [i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 10, i32 10], [32 x i32] zeroinitializer, [32 x i32] zeroinitializer, [32 x i32] [i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 10, i32 11, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], [32 x i32] [i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14], [32 x i32] [i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15]], [544 x i8] zeroinitializer }, align 32
@gf100_grctx_generate_alpha_beta_tables._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1282, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: missing alpha/beta mapping table\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"gf100_grctx_generate_alpha_beta_tables\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gf100_grctx_generate_alpha_beta_tables._entry_ptr = internal global ptr @gf100_grctx_generate_alpha_beta_tables._entry, section ".printk_index", align 4
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"grctx\00", [26 x i8] zeroinitializer }, align 32
@gf100_grctx = dso_local constant { %struct.gf100_grctx_func, [36 x i8] } { %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gf100_grctx_generate_unkn, ptr @gf100_grctx_pack_hub, ptr @gf100_grctx_pack_gpc_0, ptr @gf100_grctx_pack_gpc_1, ptr @gf100_grctx_pack_zcull, ptr @gf100_grctx_pack_tpc, ptr null, ptr @gf100_grctx_pack_icmd, ptr @gf100_grctx_pack_mthd, ptr null, ptr @gf100_grctx_generate_bundle, i32 6144, i32 0, i32 0, ptr @gf100_grctx_generate_pagepool, i32 32768, ptr @gf100_grctx_generate_attrib, i32 804, i32 536, i32 0, i32 0, i32 0, ptr null, ptr @gf100_grctx_generate_sm_id, ptr @gf100_grctx_generate_tpc_nr, i8 0, ptr @gf100_grctx_generate_r4060a8, ptr @gf100_grctx_generate_rop_mapping, ptr @gf100_grctx_generate_alpha_beta_tables, ptr @gf100_grctx_generate_max_ways_evict, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gf100_grctx_generate_r419cb8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [24 x i8] c"gf100_grctx_init_icmd_0\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 35, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"gf100_grctx_pack_icmd\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 273, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"gf100_grctx_init_902d_0\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 582, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [24 x i8] c"gf100_grctx_init_9039_0\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 601, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [24 x i8] c"gf100_grctx_init_90c0_0\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 610, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"gf100_grctx_init_9097_0\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 279, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"gf100_grctx_pack_mthd\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 628, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [24 x i8] c"gf100_grctx_init_main_0\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 637, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"gf100_grctx_init_fe_0\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 643, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"gf100_grctx_init_pri_0\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 664, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [26 x i8] c"gf100_grctx_init_memfmt_0\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 675, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"gf100_grctx_init_rstr2d_0\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 719, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"gf100_grctx_init_scc_0\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 732, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"gf100_grctx_init_ds_0\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 697, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [22 x i8] c"gf100_grctx_init_pd_0\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 709, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"gf100_grctx_init_be_0\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 743, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"gf100_grctx_pack_hub\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 755, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"gf100_grctx_init_gpc_unk_0\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 769, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"gf100_grctx_init_prop_0\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 775, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [27 x i8] c"gf100_grctx_init_gpc_unk_1\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 789, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant [25 x i8] c"gf100_grctx_init_zcull_0\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 814, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant [25 x i8] c"gf100_grctx_init_crstr_0\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 823, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant [23 x i8] c"gf100_grctx_init_gpm_0\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 836, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [23 x i8] c"gf100_grctx_init_gcc_0\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 845, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant [25 x i8] c"gf100_grctx_init_setup_0\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 801, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant [23 x i8] c"gf100_grctx_pack_gpc_0\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 853, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [23 x i8] c"gf100_grctx_pack_gpc_1\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 863, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant [26 x i8] c"gf100_grctx_init_zcullr_0\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 871, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant [23 x i8] c"gf100_grctx_pack_zcull\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 900, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant [22 x i8] c"gf100_grctx_init_pe_0\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 906, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant [24 x i8] c"gf100_grctx_init_wwdx_0\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 927, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant [23 x i8] c"gf100_grctx_init_mpc_0\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 941, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [25 x i8] c"gf100_grctx_init_tpccs_0\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 958, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant [23 x i8] c"gf100_grctx_init_tex_0\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 916, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [23 x i8] c"gf100_grctx_init_l1c_0\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 950, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [22 x i8] c"gf100_grctx_init_sm_0\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 965, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant [21 x i8] c"gf100_grctx_pack_tpc\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 978, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [27 x i8] c"gf100_grctx_alpha_beta_map\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1170, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1282, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1451, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1483, i32 50 }
@___asan_gen_.145 = private unnamed_addr constant [12 x i8] c"gf100_grctx\00", align 1
@___asan_gen_.146 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1579, i32 1 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @gf100_grctx_generate_alpha_beta_tables._entry, ptr @gf100_grctx_generate_alpha_beta_tables._entry_ptr, ptr @gf100_grctx_init_icmd_0, ptr @gf100_grctx_pack_icmd, ptr @gf100_grctx_init_902d_0, ptr @gf100_grctx_init_9039_0, ptr @gf100_grctx_init_90c0_0, ptr @gf100_grctx_init_9097_0, ptr @gf100_grctx_pack_mthd, ptr @gf100_grctx_init_main_0, ptr @gf100_grctx_init_fe_0, ptr @gf100_grctx_init_pri_0, ptr @gf100_grctx_init_memfmt_0, ptr @gf100_grctx_init_rstr2d_0, ptr @gf100_grctx_init_scc_0, ptr @gf100_grctx_init_ds_0, ptr @gf100_grctx_init_pd_0, ptr @gf100_grctx_init_be_0, ptr @gf100_grctx_pack_hub, ptr @gf100_grctx_init_gpc_unk_0, ptr @gf100_grctx_init_prop_0, ptr @gf100_grctx_init_gpc_unk_1, ptr @gf100_grctx_init_zcull_0, ptr @gf100_grctx_init_crstr_0, ptr @gf100_grctx_init_gpm_0, ptr @gf100_grctx_init_gcc_0, ptr @gf100_grctx_init_setup_0, ptr @gf100_grctx_pack_gpc_0, ptr @gf100_grctx_pack_gpc_1, ptr @gf100_grctx_init_zcullr_0, ptr @gf100_grctx_pack_zcull, ptr @gf100_grctx_init_pe_0, ptr @gf100_grctx_init_wwdx_0, ptr @gf100_grctx_init_mpc_0, ptr @gf100_grctx_init_tpccs_0, ptr @gf100_grctx_init_tex_0, ptr @gf100_grctx_init_l1c_0, ptr @gf100_grctx_init_sm_0, ptr @gf100_grctx_pack_tpc, ptr @gf100_grctx_alpha_beta_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @gf100_grctx], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_icmd_0 to i32), i32 3744, i32 4672, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_pack_icmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_902d_0 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_9039_0 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_90c0_0 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_9097_0 to i32), i32 4784, i32 5984, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_pack_mthd to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_main_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_fe_0 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_pri_0 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_memfmt_0 to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_rstr2d_0 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_scc_0 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_ds_0 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_pd_0 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_be_0 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_pack_hub to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_gpc_unk_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_prop_0 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_gpc_unk_1 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_zcull_0 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_crstr_0 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_gpm_0 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_gcc_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_setup_0 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_pack_gpc_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_pack_gpc_1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_zcullr_0 to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_pack_zcull to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_pe_0 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_wwdx_0 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_mpc_0 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_tpccs_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_tex_0 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_l1c_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_init_sm_0 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_pack_tpc to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_alpha_beta_map to i32), i32 2176, i32 2720, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx_generate_alpha_beta_tables._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_grctx to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gf100_grctx_mmio_data(ptr nocapture noundef %info, i32 noundef %size, i32 noundef %align, i1 noundef zeroext %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %frombool = zext i1 %priv to i8
  %addr = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %addr, align 8
  %sub = add i64 %3, -1
  %sub1 = add i32 %align, -1
  %conv = zext i32 %sub1 to i64
  %or = or i64 %sub, %conv
  %add = add i64 %or, 1
  %buffer_nr = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 3
  %4 = ptrtoint ptr %buffer_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_nr, align 4
  %arrayidx = getelementptr %struct.gf100_grctx, ptr %info, i32 0, i32 4, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %add, ptr %arrayidx, align 8
  %7 = load i32, ptr %buffer_nr, align 4
  %arrayidx4 = getelementptr %struct.gf100_grctx, ptr %info, i32 0, i32 4, i32 %7
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx4, align 8
  %conv5 = zext i32 %size to i64
  %add6 = add i64 %9, %conv5
  store i64 %add6, ptr %addr, align 8
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %size, ptr %11, align 4
  %13 = load ptr, ptr %data, align 4
  %align11 = getelementptr inbounds %struct.gf100_gr_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %align11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %align, ptr %align11, align 4
  %15 = load ptr, ptr %data, align 4
  %priv14 = getelementptr inbounds %struct.gf100_gr_data, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %priv14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %priv14, align 4
  %17 = load ptr, ptr %data, align 4
  %incdec.ptr = getelementptr %struct.gf100_gr_data, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %data, align 4
  %18 = load i32, ptr %buffer_nr, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %buffer_nr, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %18, %if.then ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_grctx_mmio_item(ptr nocapture noundef %info, i32 noundef %addr, i32 noundef %data, i32 noundef %shift, i32 noundef %buffer) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %data2 = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else17, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shift)
  %cmp = icmp sgt i32 %shift, -1
  br i1 %cmp, label %if.then3, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.then
  %mmio = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %addr, ptr %7, align 4
  %9 = load ptr, ptr %mmio, align 8
  %data6 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %data, ptr %data6, align 4
  %11 = load ptr, ptr %mmio, align 8
  %shift8 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %shift8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shift, ptr %shift8, align 4
  %13 = load ptr, ptr %mmio, align 8
  %buffer10 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %buffer10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %buffer, ptr %buffer10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %buffer)
  %cmp11 = icmp sgt i32 %buffer, -1
  br i1 %cmp11, label %if.then12, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then12:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.gf100_grctx, ptr %info, i32 0, i32 4, i32 %buffer
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx, align 8
  %sh_prom = zext i32 %shift to i64
  %shr = lshr i64 %16, %sh_prom
  %17 = trunc i64 %shr to i32
  %conv14 = or i32 %17, %data
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then3.if.end_crit_edge
  %data.addr.0 = phi i32 [ %conv14, %if.then12 ], [ %data, %if.then3.if.end_crit_edge ]
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 8
  %incdec.ptr = getelementptr %struct.gf100_gr_mmio, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %mmio, align 8
  br label %do.body

if.else17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %buffer)
  %cmp18 = icmp sgt i32 %buffer, -1
  br i1 %cmp18, label %if.else17.cleanup_crit_edge, label %if.else17.do.body_crit_edge

if.else17.do.body_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else17.cleanup_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.else17.do.body_crit_edge, %if.end
  %data.addr.1 = phi i32 [ %data.addr.0, %if.end ], [ %data, %if.else17.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %addr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %data.addr.1) #8, !srcloc !100
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.else17.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_r419cb8(ptr nocapture noundef readonly %gr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4299960
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %and = and i32 %4, -31745
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4299960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %and) #8, !srcloc !100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_bundle(ptr nocapture noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %grctx1 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %grctx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grctx1, align 4
  %bundle_size = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 13
  %data.i = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else17.i.thread, label %gf100_grctx_mmio_data.exit

if.else17.i.thread:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 8
  %device1.i75 = getelementptr inbounds %struct.gf100_gr, ptr %9, i32 0, i32 1, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %device1.i75 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device1.i75, align 4
  br label %do.body.i

gf100_grctx_mmio_data.exit:                       ; preds = %entry
  %12 = ptrtoint ptr %bundle_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bundle_size, align 4
  %addr.i = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 5
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %addr.i, align 8
  %sub.i = add i64 %15, -1
  %or.i = or i64 %sub.i, 255
  %add.i = add i64 %or.i, 1
  %buffer_nr.i = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 3
  %16 = ptrtoint ptr %buffer_nr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffer_nr.i, align 4
  %arrayidx.i = getelementptr %struct.gf100_grctx, ptr %info, i32 0, i32 4, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add.i, ptr %arrayidx.i, align 8
  %19 = load i32, ptr %buffer_nr.i, align 4
  %arrayidx4.i = getelementptr %struct.gf100_grctx, ptr %info, i32 0, i32 4, i32 %19
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx4.i, align 8
  %conv5.i = zext i32 %13 to i64
  %add6.i = add i64 %21, %conv5.i
  store i64 %add6.i, ptr %addr.i, align 8
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %13, ptr %23, align 4
  %25 = load ptr, ptr %data.i, align 4
  %align11.i = getelementptr inbounds %struct.gf100_gr_data, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %align11.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 256, ptr %align11.i, align 4
  %27 = load ptr, ptr %data.i, align 4
  %priv14.i = getelementptr inbounds %struct.gf100_gr_data, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %priv14.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %priv14.i, align 4
  %29 = load ptr, ptr %data.i, align 4
  %incdec.ptr.i = getelementptr %struct.gf100_gr_data, ptr %29, i32 1
  store ptr %incdec.ptr.i, ptr %data.i, align 4
  %30 = load i32, ptr %buffer_nr.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %buffer_nr.i, align 4
  %31 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %info, align 8
  %device1.i = getelementptr inbounds %struct.gf100_gr, ptr %32, i32 0, i32 1, i32 1, i32 1, i32 1
  %33 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device1.i, align 4
  %tobool.not.i14 = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool.not.i14, label %if.else17.i, label %if.then.i15

if.then.i15:                                      ; preds = %gf100_grctx_mmio_data.exit
  %mmio.i = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 2
  %35 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4227076, ptr %36, align 4
  %38 = load ptr, ptr %mmio.i, align 8
  %data6.i = getelementptr inbounds %struct.gf100_gr_mmio, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %data6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %data6.i, align 4
  %40 = load ptr, ptr %mmio.i, align 8
  %shift8.i = getelementptr inbounds %struct.gf100_gr_mmio, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %shift8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8, ptr %shift8.i, align 4
  %42 = load ptr, ptr %mmio.i, align 8
  %buffer10.i = getelementptr inbounds %struct.gf100_gr_mmio, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %buffer10.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %30, ptr %buffer10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp11.i = icmp sgt i32 %30, -1
  br i1 %cmp11.i, label %if.then12.i, label %if.then.i15.if.end.i_crit_edge

if.then.i15.if.end.i_crit_edge:                   ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then12.i:                                      ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i16 = getelementptr %struct.gf100_grctx, ptr %info, i32 0, i32 4, i32 %30
  %44 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx.i16, align 8
  %shr.i = lshr i64 %45, 8
  %46 = trunc i64 %shr.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then12.i, %if.then.i15.if.end.i_crit_edge
  %data.addr.0.i = phi i32 [ %46, %if.then12.i ], [ 0, %if.then.i15.if.end.i_crit_edge ]
  %47 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i, align 8
  %incdec.ptr.i17 = getelementptr %struct.gf100_gr_mmio, ptr %48, i32 1
  store ptr %incdec.ptr.i17, ptr %mmio.i, align 8
  br label %do.body.i

if.else17.i:                                      ; preds = %gf100_grctx_mmio_data.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp18.i = icmp sgt i32 %30, -1
  br i1 %cmp18.i, label %if.else17.i.gf100_grctx_mmio_item.exit_crit_edge, label %if.else17.i.do.body.i_crit_edge

if.else17.i.do.body.i_crit_edge:                  ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.else17.i.gf100_grctx_mmio_item.exit_crit_edge: ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_grctx_mmio_item.exit

do.body.i:                                        ; preds = %if.else17.i.do.body.i_crit_edge, %if.end.i, %if.else17.i.thread
  %49 = phi ptr [ %34, %if.end.i ], [ %34, %if.else17.i.do.body.i_crit_edge ], [ %11, %if.else17.i.thread ]
  %retval.0.i78 = phi i32 [ %30, %if.end.i ], [ %30, %if.else17.i.do.body.i_crit_edge ], [ -1, %if.else17.i.thread ]
  %data.addr.1.i = phi i32 [ %data.addr.0.i, %if.end.i ], [ 0, %if.else17.i.do.body.i_crit_edge ], [ 0, %if.else17.i.thread ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %51, i32 4227076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %data.addr.1.i) #8, !srcloc !100
  br label %gf100_grctx_mmio_item.exit

gf100_grctx_mmio_item.exit:                       ; preds = %do.body.i, %if.else17.i.gf100_grctx_mmio_item.exit_crit_edge
  %retval.0.i79 = phi i32 [ %30, %if.else17.i.gf100_grctx_mmio_item.exit_crit_edge ], [ %retval.0.i78, %do.body.i ]
  %52 = ptrtoint ptr %bundle_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bundle_size, align 4
  %shr = lshr i32 %53, 8
  %or = or i32 %shr, -2147483648
  %54 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info, align 8
  %device1.i18 = getelementptr inbounds %struct.gf100_gr, ptr %55, i32 0, i32 1, i32 1, i32 1, i32 1
  %56 = ptrtoint ptr %device1.i18 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device1.i18, align 4
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i, align 4
  %tobool.not.i20 = icmp eq ptr %59, null
  br i1 %tobool.not.i20, label %gf100_grctx_mmio_item.exit.gf100_grctx_mmio_item.exit34_crit_edge, label %if.then.i21

gf100_grctx_mmio_item.exit.gf100_grctx_mmio_item.exit34_crit_edge: ; preds = %gf100_grctx_mmio_item.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_grctx_mmio_item.exit34

if.then.i21:                                      ; preds = %gf100_grctx_mmio_item.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mmio.i22 = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 2
  %60 = ptrtoint ptr %mmio.i22 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i22, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4227080, ptr %61, align 4
  %63 = load ptr, ptr %mmio.i22, align 8
  %data6.i23 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %data6.i23 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or, ptr %data6.i23, align 4
  %65 = load ptr, ptr %mmio.i22, align 8
  %shift8.i24 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %shift8.i24 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %shift8.i24, align 4
  %67 = load ptr, ptr %mmio.i22, align 8
  %buffer10.i25 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %buffer10.i25 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %buffer10.i25, align 4
  %69 = load ptr, ptr %mmio.i22, align 8
  %incdec.ptr.i27 = getelementptr %struct.gf100_gr_mmio, ptr %69, i32 1
  store ptr %incdec.ptr.i27, ptr %mmio.i22, align 8
  br label %gf100_grctx_mmio_item.exit34

gf100_grctx_mmio_item.exit34:                     ; preds = %if.then.i21, %gf100_grctx_mmio_item.exit.gf100_grctx_mmio_item.exit34_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %pri.i31 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 11
  %70 = ptrtoint ptr %pri.i31 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pri.i31, align 4
  %add.ptr.i32 = getelementptr i8, ptr %71, i32 4227080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %or) #8, !srcloc !100
  %72 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %info, align 8
  %device1.i35 = getelementptr inbounds %struct.gf100_gr, ptr %73, i32 0, i32 1, i32 1, i32 1, i32 1
  %74 = ptrtoint ptr %device1.i35 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device1.i35, align 4
  %76 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i, align 4
  %tobool.not.i37 = icmp eq ptr %77, null
  br i1 %tobool.not.i37, label %if.else17.i51, label %if.then.i38

if.then.i38:                                      ; preds = %gf100_grctx_mmio_item.exit34
  %mmio.i39 = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 2
  %78 = ptrtoint ptr %mmio.i39 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio.i39, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4294664, ptr %79, align 4
  %81 = load ptr, ptr %mmio.i39, align 8
  %data6.i40 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %data6.i40 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %data6.i40, align 4
  %83 = load ptr, ptr %mmio.i39, align 8
  %shift8.i41 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %shift8.i41 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 8, ptr %shift8.i41, align 4
  %85 = load ptr, ptr %mmio.i39, align 8
  %buffer10.i42 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %buffer10.i42 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %retval.0.i79, ptr %buffer10.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i79)
  %cmp11.i43 = icmp sgt i32 %retval.0.i79, -1
  br i1 %cmp11.i43, label %if.then12.i46, label %if.then.i38.if.end.i49_crit_edge

if.then.i38.if.end.i49_crit_edge:                 ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i49

if.then12.i46:                                    ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i44 = getelementptr %struct.gf100_grctx, ptr %info, i32 0, i32 4, i32 %retval.0.i79
  %87 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx.i44, align 8
  %shr.i45 = lshr i64 %88, 8
  %89 = trunc i64 %shr.i45 to i32
  br label %if.end.i49

if.end.i49:                                       ; preds = %if.then12.i46, %if.then.i38.if.end.i49_crit_edge
  %data.addr.0.i47 = phi i32 [ %89, %if.then12.i46 ], [ 0, %if.then.i38.if.end.i49_crit_edge ]
  %90 = ptrtoint ptr %mmio.i39 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio.i39, align 8
  %incdec.ptr.i48 = getelementptr %struct.gf100_gr_mmio, ptr %91, i32 1
  store ptr %incdec.ptr.i48, ptr %mmio.i39, align 8
  br label %gf100_grctx_mmio_item.exit56

if.else17.i51:                                    ; preds = %gf100_grctx_mmio_item.exit34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i79)
  %cmp18.i50 = icmp sgt i32 %retval.0.i79, -1
  br i1 %cmp18.i50, label %gf100_grctx_mmio_item.exit56.thread, label %if.else17.i51.gf100_grctx_mmio_item.exit56_crit_edge

if.else17.i51.gf100_grctx_mmio_item.exit56_crit_edge: ; preds = %if.else17.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_grctx_mmio_item.exit56

gf100_grctx_mmio_item.exit56.thread:              ; preds = %if.else17.i51
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %bundle_size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bundle_size, align 4
  %shr483 = lshr i32 %93, 8
  %or584 = or i32 %shr483, -2147483648
  %94 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %info, align 8
  %device1.i5785 = getelementptr inbounds %struct.gf100_gr, ptr %95, i32 0, i32 1, i32 1, i32 1, i32 1
  %96 = ptrtoint ptr %device1.i5785 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %device1.i5785, align 4
  br label %gf100_grctx_mmio_item.exit73

gf100_grctx_mmio_item.exit56:                     ; preds = %if.else17.i51.gf100_grctx_mmio_item.exit56_crit_edge, %if.end.i49
  %data.addr.1.i52 = phi i32 [ %data.addr.0.i47, %if.end.i49 ], [ 0, %if.else17.i51.gf100_grctx_mmio_item.exit56_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %pri.i53 = getelementptr inbounds %struct.nvkm_device, ptr %75, i32 0, i32 11
  %98 = ptrtoint ptr %pri.i53 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pri.i53, align 4
  %add.ptr.i54 = getelementptr i8, ptr %99, i32 4294664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %data.addr.1.i52) #8, !srcloc !100
  %100 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pr = load ptr, ptr %data.i, align 4
  %101 = ptrtoint ptr %bundle_size to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bundle_size, align 4
  %shr4 = lshr i32 %102, 8
  %or5 = or i32 %shr4, -2147483648
  %103 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %info, align 8
  %device1.i57 = getelementptr inbounds %struct.gf100_gr, ptr %104, i32 0, i32 1, i32 1, i32 1, i32 1
  %105 = ptrtoint ptr %device1.i57 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device1.i57, align 4
  %tobool.not.i59 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i59, label %gf100_grctx_mmio_item.exit56.gf100_grctx_mmio_item.exit73_crit_edge, label %if.then.i60

gf100_grctx_mmio_item.exit56.gf100_grctx_mmio_item.exit73_crit_edge: ; preds = %gf100_grctx_mmio_item.exit56
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_grctx_mmio_item.exit73

if.then.i60:                                      ; preds = %gf100_grctx_mmio_item.exit56
  call void @__sanitizer_cov_trace_pc() #10
  %mmio.i61 = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 2
  %107 = ptrtoint ptr %mmio.i61 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmio.i61, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 4294668, ptr %108, align 4
  %110 = load ptr, ptr %mmio.i61, align 8
  %data6.i62 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %data6.i62 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or5, ptr %data6.i62, align 4
  %112 = load ptr, ptr %mmio.i61, align 8
  %shift8.i63 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %shift8.i63 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %shift8.i63, align 4
  %114 = load ptr, ptr %mmio.i61, align 8
  %buffer10.i64 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %buffer10.i64 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -1, ptr %buffer10.i64, align 4
  %116 = load ptr, ptr %mmio.i61, align 8
  %incdec.ptr.i66 = getelementptr %struct.gf100_gr_mmio, ptr %116, i32 1
  store ptr %incdec.ptr.i66, ptr %mmio.i61, align 8
  br label %gf100_grctx_mmio_item.exit73

gf100_grctx_mmio_item.exit73:                     ; preds = %if.then.i60, %gf100_grctx_mmio_item.exit56.gf100_grctx_mmio_item.exit73_crit_edge, %gf100_grctx_mmio_item.exit56.thread
  %117 = phi ptr [ %106, %if.then.i60 ], [ %97, %gf100_grctx_mmio_item.exit56.thread ], [ %106, %gf100_grctx_mmio_item.exit56.gf100_grctx_mmio_item.exit73_crit_edge ]
  %or587 = phi i32 [ %or5, %if.then.i60 ], [ %or584, %gf100_grctx_mmio_item.exit56.thread ], [ %or5, %gf100_grctx_mmio_item.exit56.gf100_grctx_mmio_item.exit73_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %pri.i70 = getelementptr inbounds %struct.nvkm_device, ptr %117, i32 0, i32 11
  %118 = ptrtoint ptr %pri.i70 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pri.i70, align 4
  %add.ptr.i71 = getelementptr i8, ptr %119, i32 4294668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %or587) #8, !srcloc !100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_pagepool(ptr nocapture noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  br i1 %tobool.not.i, label %if.else17.i.thread, label %gf100_grctx_mmio_data.exit

if.else17.i.thread:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device1.i69 = getelementptr inbounds %struct.gf100_gr, ptr %3, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %device1.i69 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1.i69, align 4
  br label %do.body.i

gf100_grctx_mmio_data.exit:                       ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %grctx1 = getelementptr inbounds %struct.gf100_gr_func, ptr %7, i32 0, i32 36
  %8 = ptrtoint ptr %grctx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %grctx1, align 4
  %pagepool_size = getelementptr inbounds %struct.gf100_grctx_func, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %pagepool_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pagepool_size, align 4
  %addr.i = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 5
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %addr.i, align 8
  %sub.i = add i64 %13, -1
  %or.i = or i64 %sub.i, 255
  %add.i = add i64 %or.i, 1
  %buffer_nr.i = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %buffer_nr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_nr.i, align 4
  %arrayidx.i = getelementptr %struct.gf100_grctx, ptr %info, i32 0, i32 4, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add.i, ptr %arrayidx.i, align 8
  %17 = load i32, ptr %buffer_nr.i, align 4
  %arrayidx4.i = getelementptr %struct.gf100_grctx, ptr %info, i32 0, i32 4, i32 %17
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx4.i, align 8
  %conv5.i = zext i32 %11 to i64
  %add6.i = add i64 %19, %conv5.i
  store i64 %add6.i, ptr %addr.i, align 8
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %11, ptr %21, align 4
  %23 = load ptr, ptr %data.i, align 4
  %align11.i = getelementptr inbounds %struct.gf100_gr_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %align11.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 256, ptr %align11.i, align 4
  %25 = load ptr, ptr %data.i, align 4
  %priv14.i = getelementptr inbounds %struct.gf100_gr_data, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %priv14.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %priv14.i, align 4
  %27 = load ptr, ptr %data.i, align 4
  %incdec.ptr.i = getelementptr %struct.gf100_gr_data, ptr %27, i32 1
  store ptr %incdec.ptr.i, ptr %data.i, align 4
  %28 = load i32, ptr %buffer_nr.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %buffer_nr.i, align 4
  %29 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info, align 8
  %device1.i = getelementptr inbounds %struct.gf100_gr, ptr %30, i32 0, i32 1, i32 1, i32 1, i32 1
  %31 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device1.i, align 4
  %tobool.not.i8 = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool.not.i8, label %if.else17.i, label %if.then.i9

if.then.i9:                                       ; preds = %gf100_grctx_mmio_data.exit
  %mmio.i = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 2
  %33 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4227084, ptr %34, align 4
  %36 = load ptr, ptr %mmio.i, align 8
  %data6.i = getelementptr inbounds %struct.gf100_gr_mmio, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %data6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %data6.i, align 4
  %38 = load ptr, ptr %mmio.i, align 8
  %shift8.i = getelementptr inbounds %struct.gf100_gr_mmio, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %shift8.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %shift8.i, align 4
  %40 = load ptr, ptr %mmio.i, align 8
  %buffer10.i = getelementptr inbounds %struct.gf100_gr_mmio, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %buffer10.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %28, ptr %buffer10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp11.i = icmp sgt i32 %28, -1
  br i1 %cmp11.i, label %if.then12.i, label %if.then.i9.if.end.i_crit_edge

if.then.i9.if.end.i_crit_edge:                    ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then12.i:                                      ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i10 = getelementptr %struct.gf100_grctx, ptr %info, i32 0, i32 4, i32 %28
  %42 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx.i10, align 8
  %shr.i = lshr i64 %43, 8
  %44 = trunc i64 %shr.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then12.i, %if.then.i9.if.end.i_crit_edge
  %data.addr.0.i = phi i32 [ %44, %if.then12.i ], [ 0, %if.then.i9.if.end.i_crit_edge ]
  %45 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio.i, align 8
  %incdec.ptr.i11 = getelementptr %struct.gf100_gr_mmio, ptr %46, i32 1
  store ptr %incdec.ptr.i11, ptr %mmio.i, align 8
  br label %do.body.i

if.else17.i:                                      ; preds = %gf100_grctx_mmio_data.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp18.i = icmp sgt i32 %28, -1
  br i1 %cmp18.i, label %if.else17.i.gf100_grctx_mmio_item.exit_crit_edge, label %if.else17.i.do.body.i_crit_edge

if.else17.i.do.body.i_crit_edge:                  ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.else17.i.gf100_grctx_mmio_item.exit_crit_edge: ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_grctx_mmio_item.exit

do.body.i:                                        ; preds = %if.else17.i.do.body.i_crit_edge, %if.end.i, %if.else17.i.thread
  %47 = phi ptr [ %32, %if.end.i ], [ %32, %if.else17.i.do.body.i_crit_edge ], [ %5, %if.else17.i.thread ]
  %retval.0.i72 = phi i32 [ %28, %if.end.i ], [ %28, %if.else17.i.do.body.i_crit_edge ], [ -1, %if.else17.i.thread ]
  %data.addr.1.i = phi i32 [ %data.addr.0.i, %if.end.i ], [ 0, %if.else17.i.do.body.i_crit_edge ], [ 0, %if.else17.i.thread ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 4227084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %data.addr.1.i) #8, !srcloc !100
  br label %gf100_grctx_mmio_item.exit

gf100_grctx_mmio_item.exit:                       ; preds = %do.body.i, %if.else17.i.gf100_grctx_mmio_item.exit_crit_edge
  %retval.0.i73 = phi i32 [ %28, %if.else17.i.gf100_grctx_mmio_item.exit_crit_edge ], [ %retval.0.i72, %do.body.i ]
  %50 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info, align 8
  %device1.i12 = getelementptr inbounds %struct.gf100_gr, ptr %51, i32 0, i32 1, i32 1, i32 1, i32 1
  %52 = ptrtoint ptr %device1.i12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device1.i12, align 4
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  %tobool.not.i14 = icmp eq ptr %55, null
  br i1 %tobool.not.i14, label %gf100_grctx_mmio_item.exit.gf100_grctx_mmio_item.exit28_crit_edge, label %if.then.i15

gf100_grctx_mmio_item.exit.gf100_grctx_mmio_item.exit28_crit_edge: ; preds = %gf100_grctx_mmio_item.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_grctx_mmio_item.exit28

if.then.i15:                                      ; preds = %gf100_grctx_mmio_item.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mmio.i16 = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 2
  %56 = ptrtoint ptr %mmio.i16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i16, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4227088, ptr %57, align 4
  %59 = load ptr, ptr %mmio.i16, align 8
  %data6.i17 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %data6.i17 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -2147483648, ptr %data6.i17, align 4
  %61 = load ptr, ptr %mmio.i16, align 8
  %shift8.i18 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %shift8.i18 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %shift8.i18, align 4
  %63 = load ptr, ptr %mmio.i16, align 8
  %buffer10.i19 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %buffer10.i19 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %buffer10.i19, align 4
  %65 = load ptr, ptr %mmio.i16, align 8
  %incdec.ptr.i21 = getelementptr %struct.gf100_gr_mmio, ptr %65, i32 1
  store ptr %incdec.ptr.i21, ptr %mmio.i16, align 8
  br label %gf100_grctx_mmio_item.exit28

gf100_grctx_mmio_item.exit28:                     ; preds = %if.then.i15, %gf100_grctx_mmio_item.exit.gf100_grctx_mmio_item.exit28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %pri.i25 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 11
  %66 = ptrtoint ptr %pri.i25 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pri.i25, align 4
  %add.ptr.i26 = getelementptr i8, ptr %67, i32 4227088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 -2147483648) #8, !srcloc !100
  %68 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %info, align 8
  %device1.i29 = getelementptr inbounds %struct.gf100_gr, ptr %69, i32 0, i32 1, i32 1, i32 1, i32 1
  %70 = ptrtoint ptr %device1.i29 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device1.i29, align 4
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i, align 4
  %tobool.not.i31 = icmp eq ptr %73, null
  br i1 %tobool.not.i31, label %if.else17.i45, label %if.then.i32

if.then.i32:                                      ; preds = %gf100_grctx_mmio_item.exit28
  %mmio.i33 = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 2
  %74 = ptrtoint ptr %mmio.i33 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i33, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4296708, ptr %75, align 4
  %77 = load ptr, ptr %mmio.i33, align 8
  %data6.i34 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %data6.i34 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %data6.i34, align 4
  %79 = load ptr, ptr %mmio.i33, align 8
  %shift8.i35 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %shift8.i35 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 8, ptr %shift8.i35, align 4
  %81 = load ptr, ptr %mmio.i33, align 8
  %buffer10.i36 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %buffer10.i36 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %retval.0.i73, ptr %buffer10.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i73)
  %cmp11.i37 = icmp sgt i32 %retval.0.i73, -1
  br i1 %cmp11.i37, label %if.then12.i40, label %if.then.i32.if.end.i43_crit_edge

if.then.i32.if.end.i43_crit_edge:                 ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i43

if.then12.i40:                                    ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i38 = getelementptr %struct.gf100_grctx, ptr %info, i32 0, i32 4, i32 %retval.0.i73
  %83 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx.i38, align 8
  %shr.i39 = lshr i64 %84, 8
  %85 = trunc i64 %shr.i39 to i32
  br label %if.end.i43

if.end.i43:                                       ; preds = %if.then12.i40, %if.then.i32.if.end.i43_crit_edge
  %data.addr.0.i41 = phi i32 [ %85, %if.then12.i40 ], [ 0, %if.then.i32.if.end.i43_crit_edge ]
  %86 = ptrtoint ptr %mmio.i33 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio.i33, align 8
  %incdec.ptr.i42 = getelementptr %struct.gf100_gr_mmio, ptr %87, i32 1
  store ptr %incdec.ptr.i42, ptr %mmio.i33, align 8
  br label %gf100_grctx_mmio_item.exit50

if.else17.i45:                                    ; preds = %gf100_grctx_mmio_item.exit28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i73)
  %cmp18.i44 = icmp sgt i32 %retval.0.i73, -1
  br i1 %cmp18.i44, label %gf100_grctx_mmio_item.exit50.thread, label %if.else17.i45.gf100_grctx_mmio_item.exit50_crit_edge

if.else17.i45.gf100_grctx_mmio_item.exit50_crit_edge: ; preds = %if.else17.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_grctx_mmio_item.exit50

gf100_grctx_mmio_item.exit50.thread:              ; preds = %if.else17.i45
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %info, align 8
  %device1.i5177 = getelementptr inbounds %struct.gf100_gr, ptr %89, i32 0, i32 1, i32 1, i32 1, i32 1
  %90 = ptrtoint ptr %device1.i5177 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device1.i5177, align 4
  br label %gf100_grctx_mmio_item.exit67

gf100_grctx_mmio_item.exit50:                     ; preds = %if.else17.i45.gf100_grctx_mmio_item.exit50_crit_edge, %if.end.i43
  %data.addr.1.i46 = phi i32 [ %data.addr.0.i41, %if.end.i43 ], [ 0, %if.else17.i45.gf100_grctx_mmio_item.exit50_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %pri.i47 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 11
  %92 = ptrtoint ptr %pri.i47 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pri.i47, align 4
  %add.ptr.i48 = getelementptr i8, ptr %93, i32 4296708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %data.addr.1.i46) #8, !srcloc !100
  %94 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pr = load ptr, ptr %data.i, align 4
  %95 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %info, align 8
  %device1.i51 = getelementptr inbounds %struct.gf100_gr, ptr %96, i32 0, i32 1, i32 1, i32 1, i32 1
  %97 = ptrtoint ptr %device1.i51 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %device1.i51, align 4
  %tobool.not.i53 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i53, label %gf100_grctx_mmio_item.exit50.gf100_grctx_mmio_item.exit67_crit_edge, label %if.then.i54

gf100_grctx_mmio_item.exit50.gf100_grctx_mmio_item.exit67_crit_edge: ; preds = %gf100_grctx_mmio_item.exit50
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_grctx_mmio_item.exit67

if.then.i54:                                      ; preds = %gf100_grctx_mmio_item.exit50
  call void @__sanitizer_cov_trace_pc() #10
  %mmio.i55 = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 2
  %99 = ptrtoint ptr %mmio.i55 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio.i55, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 4296712, ptr %100, align 4
  %102 = load ptr, ptr %mmio.i55, align 8
  %data6.i56 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %data6.i56 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %data6.i56, align 4
  %104 = load ptr, ptr %mmio.i55, align 8
  %shift8.i57 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %shift8.i57 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %shift8.i57, align 4
  %106 = load ptr, ptr %mmio.i55, align 8
  %buffer10.i58 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %buffer10.i58 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %buffer10.i58, align 4
  %108 = load ptr, ptr %mmio.i55, align 8
  %incdec.ptr.i60 = getelementptr %struct.gf100_gr_mmio, ptr %108, i32 1
  store ptr %incdec.ptr.i60, ptr %mmio.i55, align 8
  br label %gf100_grctx_mmio_item.exit67

gf100_grctx_mmio_item.exit67:                     ; preds = %if.then.i54, %gf100_grctx_mmio_item.exit50.gf100_grctx_mmio_item.exit67_crit_edge, %gf100_grctx_mmio_item.exit50.thread
  %109 = phi ptr [ %98, %if.then.i54 ], [ %91, %gf100_grctx_mmio_item.exit50.thread ], [ %98, %gf100_grctx_mmio_item.exit50.gf100_grctx_mmio_item.exit67_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %pri.i64 = getelementptr inbounds %struct.nvkm_device, ptr %109, i32 0, i32 11
  %110 = ptrtoint ptr %pri.i64 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pri.i64, align 4
  %add.ptr.i65 = getelementptr i8, ptr %111, i32 4296712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 0) #8, !srcloc !100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_attrib(ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %attrib_nr = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %attrib_nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attrib_nr, align 4
  %attrib_nr_max = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 19
  %data.i = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else17.i.thread, label %gf100_grctx_mmio_data.exit

if.else17.i.thread:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 8
  %device1.i120 = getelementptr inbounds %struct.gf100_gr, ptr %11, i32 0, i32 1, i32 1, i32 1, i32 1
  %12 = ptrtoint ptr %device1.i120 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device1.i120, align 4
  br label %do.body.i

gf100_grctx_mmio_data.exit:                       ; preds = %entry
  %14 = ptrtoint ptr %attrib_nr_max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %attrib_nr_max, align 4
  %alpha_nr_max = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 21
  %16 = ptrtoint ptr %alpha_nr_max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alpha_nr_max, align 4
  %add = add i32 %17, %15
  %mul = shl i32 %add, 5
  %tpc_total = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tpc_total, align 1
  %conv = zext i8 %19 to i32
  %mul3 = mul i32 %mul, %conv
  %addr.i = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 5
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %addr.i, align 8
  %sub.i = add i64 %21, -1
  %or.i = or i64 %sub.i, 4095
  %add.i = add i64 %or.i, 1
  %buffer_nr.i = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 3
  %22 = ptrtoint ptr %buffer_nr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buffer_nr.i, align 4
  %arrayidx.i = getelementptr %struct.gf100_grctx, ptr %info, i32 0, i32 4, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add.i, ptr %arrayidx.i, align 8
  %25 = load i32, ptr %buffer_nr.i, align 4
  %arrayidx4.i = getelementptr %struct.gf100_grctx, ptr %info, i32 0, i32 4, i32 %25
  %26 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx4.i, align 8
  %conv5.i = zext i32 %mul3 to i64
  %add6.i = add i64 %27, %conv5.i
  store i64 %add6.i, ptr %addr.i, align 8
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul3, ptr %29, align 4
  %31 = load ptr, ptr %data.i, align 4
  %align11.i = getelementptr inbounds %struct.gf100_gr_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %align11.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4096, ptr %align11.i, align 4
  %33 = load ptr, ptr %data.i, align 4
  %priv14.i = getelementptr inbounds %struct.gf100_gr_data, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %priv14.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %priv14.i, align 4
  %35 = load ptr, ptr %data.i, align 4
  %incdec.ptr.i = getelementptr %struct.gf100_gr_data, ptr %35, i32 1
  store ptr %incdec.ptr.i, ptr %data.i, align 4
  %36 = load i32, ptr %buffer_nr.i, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr %buffer_nr.i, align 4
  %37 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %info, align 8
  %device1.i = getelementptr inbounds %struct.gf100_gr, ptr %38, i32 0, i32 1, i32 1, i32 1, i32 1
  %39 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device1.i, align 4
  %tobool.not.i48 = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool.not.i48, label %if.else17.i, label %if.then.i49

if.then.i49:                                      ; preds = %gf100_grctx_mmio_data.exit
  %mmio.i = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 2
  %41 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4294672, ptr %42, align 4
  %44 = load ptr, ptr %mmio.i, align 8
  %data6.i = getelementptr inbounds %struct.gf100_gr_mmio, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %data6.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -2147483648, ptr %data6.i, align 4
  %46 = load ptr, ptr %mmio.i, align 8
  %shift8.i = getelementptr inbounds %struct.gf100_gr_mmio, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %shift8.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 12, ptr %shift8.i, align 4
  %48 = load ptr, ptr %mmio.i, align 8
  %buffer10.i = getelementptr inbounds %struct.gf100_gr_mmio, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %buffer10.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %36, ptr %buffer10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp11.i = icmp sgt i32 %36, -1
  br i1 %cmp11.i, label %if.then12.i, label %if.then.i49.if.end.i_crit_edge

if.then.i49.if.end.i_crit_edge:                   ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then12.i:                                      ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i50 = getelementptr %struct.gf100_grctx, ptr %info, i32 0, i32 4, i32 %36
  %50 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx.i50, align 8
  %shr.i = lshr i64 %51, 12
  %52 = trunc i64 %shr.i to i32
  %conv14.i = or i32 %52, -2147483648
  br label %if.end.i

if.end.i:                                         ; preds = %if.then12.i, %if.then.i49.if.end.i_crit_edge
  %data.addr.0.i = phi i32 [ %conv14.i, %if.then12.i ], [ -2147483648, %if.then.i49.if.end.i_crit_edge ]
  %53 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i, align 8
  %incdec.ptr.i51 = getelementptr %struct.gf100_gr_mmio, ptr %54, i32 1
  store ptr %incdec.ptr.i51, ptr %mmio.i, align 8
  br label %do.body.i

if.else17.i:                                      ; preds = %gf100_grctx_mmio_data.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp18.i = icmp sgt i32 %36, -1
  br i1 %cmp18.i, label %if.else17.i.gf100_grctx_mmio_item.exit_crit_edge, label %if.else17.i.do.body.i_crit_edge

if.else17.i.do.body.i_crit_edge:                  ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.else17.i.gf100_grctx_mmio_item.exit_crit_edge: ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_grctx_mmio_item.exit

do.body.i:                                        ; preds = %if.else17.i.do.body.i_crit_edge, %if.end.i, %if.else17.i.thread
  %55 = phi ptr [ %40, %if.end.i ], [ %40, %if.else17.i.do.body.i_crit_edge ], [ %13, %if.else17.i.thread ]
  %retval.0.i123 = phi i32 [ %36, %if.end.i ], [ %36, %if.else17.i.do.body.i_crit_edge ], [ -1, %if.else17.i.thread ]
  %data.addr.1.i = phi i32 [ %data.addr.0.i, %if.end.i ], [ -2147483648, %if.else17.i.do.body.i_crit_edge ], [ -2147483648, %if.else17.i.thread ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %57, i32 4294672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %data.addr.1.i) #8, !srcloc !100
  br label %gf100_grctx_mmio_item.exit

gf100_grctx_mmio_item.exit:                       ; preds = %do.body.i, %if.else17.i.gf100_grctx_mmio_item.exit_crit_edge
  %retval.0.i124 = phi i32 [ %36, %if.else17.i.gf100_grctx_mmio_item.exit_crit_edge ], [ %retval.0.i123, %do.body.i ]
  %58 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %info, align 8
  %device1.i52 = getelementptr inbounds %struct.gf100_gr, ptr %59, i32 0, i32 1, i32 1, i32 1, i32 1
  %60 = ptrtoint ptr %device1.i52 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device1.i52, align 4
  %62 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i, align 4
  %tobool.not.i54 = icmp eq ptr %63, null
  br i1 %tobool.not.i54, label %if.else17.i69, label %if.then.i55

if.then.i55:                                      ; preds = %gf100_grctx_mmio_item.exit
  %mmio.i56 = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 2
  %64 = ptrtoint ptr %mmio.i56 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i56, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4298824, ptr %65, align 4
  %67 = load ptr, ptr %mmio.i56, align 8
  %data6.i57 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %data6.i57 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 268435456, ptr %data6.i57, align 4
  %69 = load ptr, ptr %mmio.i56, align 8
  %shift8.i58 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %shift8.i58 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 12, ptr %shift8.i58, align 4
  %71 = load ptr, ptr %mmio.i56, align 8
  %buffer10.i59 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %buffer10.i59 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.i124, ptr %buffer10.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i124)
  %cmp11.i60 = icmp sgt i32 %retval.0.i124, -1
  br i1 %cmp11.i60, label %if.then12.i64, label %if.then.i55.if.end.i67_crit_edge

if.then.i55.if.end.i67_crit_edge:                 ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i67

if.then12.i64:                                    ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i61 = getelementptr %struct.gf100_grctx, ptr %info, i32 0, i32 4, i32 %retval.0.i124
  %73 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx.i61, align 8
  %shr.i62 = lshr i64 %74, 12
  %75 = trunc i64 %shr.i62 to i32
  %conv14.i63 = or i32 %75, 268435456
  br label %if.end.i67

if.end.i67:                                       ; preds = %if.then12.i64, %if.then.i55.if.end.i67_crit_edge
  %data.addr.0.i65 = phi i32 [ %conv14.i63, %if.then12.i64 ], [ 268435456, %if.then.i55.if.end.i67_crit_edge ]
  %76 = ptrtoint ptr %mmio.i56 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio.i56, align 8
  %incdec.ptr.i66 = getelementptr %struct.gf100_gr_mmio, ptr %77, i32 1
  store ptr %incdec.ptr.i66, ptr %mmio.i56, align 8
  br label %gf100_grctx_mmio_item.exit74

if.else17.i69:                                    ; preds = %gf100_grctx_mmio_item.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i124)
  %cmp18.i68 = icmp sgt i32 %retval.0.i124, -1
  br i1 %cmp18.i68, label %gf100_grctx_mmio_item.exit74.thread, label %if.else17.i69.gf100_grctx_mmio_item.exit74_crit_edge

if.else17.i69.gf100_grctx_mmio_item.exit74_crit_edge: ; preds = %if.else17.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_grctx_mmio_item.exit74

gf100_grctx_mmio_item.exit74.thread:              ; preds = %if.else17.i69
  call void @__sanitizer_cov_trace_pc() #10
  %shl128 = shl i32 %7, 16
  %78 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %info, align 8
  %device1.i75129 = getelementptr inbounds %struct.gf100_gr, ptr %79, i32 0, i32 1, i32 1, i32 1, i32 1
  %80 = ptrtoint ptr %device1.i75129 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %device1.i75129, align 4
  br label %gf100_grctx_mmio_item.exit91

gf100_grctx_mmio_item.exit74:                     ; preds = %if.else17.i69.gf100_grctx_mmio_item.exit74_crit_edge, %if.end.i67
  %data.addr.1.i70 = phi i32 [ %data.addr.0.i65, %if.end.i67 ], [ 268435456, %if.else17.i69.gf100_grctx_mmio_item.exit74_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %pri.i71 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 11
  %82 = ptrtoint ptr %pri.i71 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pri.i71, align 4
  %add.ptr.i72 = getelementptr i8, ptr %83, i32 4298824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %data.addr.1.i70) #8, !srcloc !100
  %84 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pr = load ptr, ptr %data.i, align 4
  %shl = shl i32 %7, 16
  %85 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %info, align 8
  %device1.i75 = getelementptr inbounds %struct.gf100_gr, ptr %86, i32 0, i32 1, i32 1, i32 1, i32 1
  %87 = ptrtoint ptr %device1.i75 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device1.i75, align 4
  %tobool.not.i77 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i77, label %gf100_grctx_mmio_item.exit74.gf100_grctx_mmio_item.exit91_crit_edge, label %if.then.i78

gf100_grctx_mmio_item.exit74.gf100_grctx_mmio_item.exit91_crit_edge: ; preds = %gf100_grctx_mmio_item.exit74
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_grctx_mmio_item.exit91

if.then.i78:                                      ; preds = %gf100_grctx_mmio_item.exit74
  call void @__sanitizer_cov_trace_pc() #10
  %mmio.i79 = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 2
  %89 = ptrtoint ptr %mmio.i79 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mmio.i79, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 4216880, ptr %90, align 4
  %92 = load ptr, ptr %mmio.i79, align 8
  %data6.i80 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %data6.i80 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %shl, ptr %data6.i80, align 4
  %94 = load ptr, ptr %mmio.i79, align 8
  %shift8.i81 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %shift8.i81 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %shift8.i81, align 4
  %96 = load ptr, ptr %mmio.i79, align 8
  %buffer10.i82 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %buffer10.i82 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %buffer10.i82, align 4
  %98 = load ptr, ptr %mmio.i79, align 8
  %incdec.ptr.i84 = getelementptr %struct.gf100_gr_mmio, ptr %98, i32 1
  store ptr %incdec.ptr.i84, ptr %mmio.i79, align 8
  br label %gf100_grctx_mmio_item.exit91

gf100_grctx_mmio_item.exit91:                     ; preds = %if.then.i78, %gf100_grctx_mmio_item.exit74.gf100_grctx_mmio_item.exit91_crit_edge, %gf100_grctx_mmio_item.exit74.thread
  %99 = phi ptr [ %88, %if.then.i78 ], [ %81, %gf100_grctx_mmio_item.exit74.thread ], [ %88, %gf100_grctx_mmio_item.exit74.gf100_grctx_mmio_item.exit91_crit_edge ]
  %shl131 = phi i32 [ %shl, %if.then.i78 ], [ %shl128, %gf100_grctx_mmio_item.exit74.thread ], [ %shl, %gf100_grctx_mmio_item.exit74.gf100_grctx_mmio_item.exit91_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %pri.i88 = getelementptr inbounds %struct.nvkm_device, ptr %99, i32 0, i32 11
  %100 = ptrtoint ptr %pri.i88 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pri.i88, align 4
  %add.ptr.i89 = getelementptr i8, ptr %101, i32 4216880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %shl131) #8, !srcloc !100
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 13
  %102 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %gpc_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp146.not = icmp eq i8 %103, 0
  br i1 %cmp146.not, label %gf100_grctx_mmio_item.exit91.for.end24_crit_edge, label %for.cond6.preheader.lr.ph

gf100_grctx_mmio_item.exit91.for.end24_crit_edge: ; preds = %gf100_grctx_mmio_item.exit91
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end24

for.cond6.preheader.lr.ph:                        ; preds = %gf100_grctx_mmio_item.exit91
  %mmio.i106 = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 2
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.inc22.for.cond6.preheader_crit_edge, %for.cond6.preheader.lr.ph
  %bo.0149 = phi i32 [ 0, %for.cond6.preheader.lr.ph ], [ %bo.1.lcssa, %for.inc22.for.cond6.preheader_crit_edge ]
  %gpc.0147 = phi i32 [ 0, %for.cond6.preheader.lr.ph ], [ %inc23, %for.inc22.for.cond6.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 14, i32 %gpc.0147
  %104 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %cmp8140.not = icmp eq i8 %105, 0
  br i1 %cmp8140.not, label %for.cond6.preheader.for.inc22_crit_edge, label %for.body10.lr.ph

for.cond6.preheader.for.inc22_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc22

for.body10.lr.ph:                                 ; preds = %for.cond6.preheader
  %mul11 = shl i32 %gpc.0147, 15
  %add14 = add nuw nsw i32 %mul11, 5260576
  br label %for.body10

for.body10:                                       ; preds = %gf100_grctx_mmio_item.exit118.for.body10_crit_edge, %for.body10.lr.ph
  %bo.1142 = phi i32 [ %bo.0149, %for.body10.lr.ph ], [ %add20, %gf100_grctx_mmio_item.exit118.for.body10_crit_edge ]
  %tpc.0141 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc21, %gf100_grctx_mmio_item.exit118.for.body10_crit_edge ]
  %mul13 = shl i32 %tpc.0141, 11
  %add15 = add nuw nsw i32 %add14, %mul13
  %106 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i, align 4
  %tobool.not.i94 = icmp eq ptr %107, null
  br i1 %tobool.not.i94, label %gf100_grctx_mmio_item.exit101, label %gf100_grctx_mmio_item.exit101.thread

gf100_grctx_mmio_item.exit101.thread:             ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  %or18134 = or i32 %bo.1142, %shl131
  %108 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %info, align 8
  %device1.i102135 = getelementptr inbounds %struct.gf100_gr, ptr %109, i32 0, i32 1, i32 1, i32 1, i32 1
  %110 = ptrtoint ptr %device1.i102135 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %device1.i102135, align 4
  br label %if.then.i105

gf100_grctx_mmio_item.exit101:                    ; preds = %for.body10
  %112 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %info, align 8
  %device1.i92 = getelementptr inbounds %struct.gf100_gr, ptr %113, i32 0, i32 1, i32 1, i32 1, i32 1
  %114 = ptrtoint ptr %device1.i92 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %device1.i92, align 4
  %inc = add i32 %bo.1142, 1
  %or = or i32 %inc, %shl131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %pri.i98 = getelementptr inbounds %struct.nvkm_device, ptr %115, i32 0, i32 11
  %116 = ptrtoint ptr %pri.i98 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pri.i98, align 4
  %add.ptr.i99 = getelementptr i8, ptr %117, i32 %add15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %or) #8, !srcloc !100
  %118 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pr133 = load ptr, ptr %data.i, align 4
  %or18 = or i32 %bo.1142, %shl131
  %119 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %info, align 8
  %device1.i102 = getelementptr inbounds %struct.gf100_gr, ptr %120, i32 0, i32 1, i32 1, i32 1, i32 1
  %121 = ptrtoint ptr %device1.i102 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %device1.i102, align 4
  %tobool.not.i104 = icmp eq ptr %.pr133, null
  br i1 %tobool.not.i104, label %gf100_grctx_mmio_item.exit101.gf100_grctx_mmio_item.exit118_crit_edge, label %gf100_grctx_mmio_item.exit101.if.then.i105_crit_edge

gf100_grctx_mmio_item.exit101.if.then.i105_crit_edge: ; preds = %gf100_grctx_mmio_item.exit101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i105

gf100_grctx_mmio_item.exit101.gf100_grctx_mmio_item.exit118_crit_edge: ; preds = %gf100_grctx_mmio_item.exit101
  call void @__sanitizer_cov_trace_pc() #10
  br label %gf100_grctx_mmio_item.exit118

if.then.i105:                                     ; preds = %gf100_grctx_mmio_item.exit101.if.then.i105_crit_edge, %gf100_grctx_mmio_item.exit101.thread
  %123 = phi ptr [ %111, %gf100_grctx_mmio_item.exit101.thread ], [ %122, %gf100_grctx_mmio_item.exit101.if.then.i105_crit_edge ]
  %or18137 = phi i32 [ %or18134, %gf100_grctx_mmio_item.exit101.thread ], [ %or18, %gf100_grctx_mmio_item.exit101.if.then.i105_crit_edge ]
  %124 = ptrtoint ptr %mmio.i106 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mmio.i106, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %add15, ptr %125, align 4
  %127 = load ptr, ptr %mmio.i106, align 8
  %data6.i107 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %data6.i107 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %or18137, ptr %data6.i107, align 4
  %129 = load ptr, ptr %mmio.i106, align 8
  %shift8.i108 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %shift8.i108 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %shift8.i108, align 4
  %131 = load ptr, ptr %mmio.i106, align 8
  %buffer10.i109 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %buffer10.i109 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %buffer10.i109, align 4
  %133 = load ptr, ptr %mmio.i106, align 8
  %incdec.ptr.i111 = getelementptr %struct.gf100_gr_mmio, ptr %133, i32 1
  store ptr %incdec.ptr.i111, ptr %mmio.i106, align 8
  br label %gf100_grctx_mmio_item.exit118

gf100_grctx_mmio_item.exit118:                    ; preds = %if.then.i105, %gf100_grctx_mmio_item.exit101.gf100_grctx_mmio_item.exit118_crit_edge
  %134 = phi ptr [ %123, %if.then.i105 ], [ %122, %gf100_grctx_mmio_item.exit101.gf100_grctx_mmio_item.exit118_crit_edge ]
  %or18138 = phi i32 [ %or18137, %if.then.i105 ], [ %or18, %gf100_grctx_mmio_item.exit101.gf100_grctx_mmio_item.exit118_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %pri.i115 = getelementptr inbounds %struct.nvkm_device, ptr %134, i32 0, i32 11
  %135 = ptrtoint ptr %pri.i115 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pri.i115, align 4
  %add.ptr.i116 = getelementptr i8, ptr %136, i32 %add15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %or18138) #8, !srcloc !100
  %137 = ptrtoint ptr %attrib_nr_max to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %attrib_nr_max, align 4
  %add20 = add i32 %138, %bo.1142
  %inc21 = add nuw nsw i32 %tpc.0141, 1
  %139 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %140 to i32
  %cmp8 = icmp ult i32 %inc21, %conv7
  br i1 %cmp8, label %gf100_grctx_mmio_item.exit118.for.body10_crit_edge, label %gf100_grctx_mmio_item.exit118.for.inc22_crit_edge

gf100_grctx_mmio_item.exit118.for.inc22_crit_edge: ; preds = %gf100_grctx_mmio_item.exit118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc22

gf100_grctx_mmio_item.exit118.for.body10_crit_edge: ; preds = %gf100_grctx_mmio_item.exit118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10

for.inc22:                                        ; preds = %gf100_grctx_mmio_item.exit118.for.inc22_crit_edge, %for.cond6.preheader.for.inc22_crit_edge
  %bo.1.lcssa = phi i32 [ %bo.0149, %for.cond6.preheader.for.inc22_crit_edge ], [ %add20, %gf100_grctx_mmio_item.exit118.for.inc22_crit_edge ]
  %inc23 = add nuw nsw i32 %gpc.0147, 1
  %141 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %gpc_nr, align 1
  %conv4 = zext i8 %142 to i32
  %cmp = icmp ult i32 %inc23, %conv4
  br i1 %cmp, label %for.inc22.for.cond6.preheader_crit_edge, label %for.inc22.for.end24_crit_edge

for.inc22.for.end24_crit_edge:                    ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end24

for.inc22.for.cond6.preheader_crit_edge:          ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond6.preheader

for.end24:                                        ; preds = %for.inc22.for.end24_crit_edge, %gf100_grctx_mmio_item.exit91.for.end24_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @gf100_grctx_generate_unkn(ptr nocapture %gr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_r4060a8(ptr nocapture noundef readonly %gr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 140336
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 140340
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  %mul = mul i32 %7, %4
  %conv9 = and i32 %mul, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %cmp49.not = icmp eq i32 %conv9, 0
  br i1 %cmp49.not, label %entry.for.end31_crit_edge, label %for.cond11.preheader.lr.ph

entry.for.end31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end31

for.cond11.preheader.lr.ph:                       ; preds = %entry
  %sub = add nuw nsw i32 %conv9, 3
  %div44 = lshr i32 %sub, 2
  %sm_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 26
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.inc.3.for.cond11.preheader_crit_edge, %for.cond11.preheader.lr.ph
  %sm.051 = phi i32 [ 0, %for.cond11.preheader.lr.ph ], [ %sm.2.3, %for.inc.3.for.cond11.preheader_crit_edge ]
  %i.050 = phi i32 [ 0, %for.cond11.preheader.lr.ph ], [ %inc30, %for.inc.3.for.cond11.preheader_crit_edge ]
  %8 = ptrtoint ptr %sm_nr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sm_nr, align 1
  %conv15 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sm.051, i32 %conv15)
  %cmp16 = icmp slt i32 %sm.051, %conv15
  br i1 %cmp16, label %if.then, label %for.cond11.preheader.for.inc_crit_edge

for.cond11.preheader.for.inc_crit_edge:           ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nsw i32 %sm.051, 1
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 25, i32 %sm.051
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv19 = zext i8 %11 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.cond11.preheader.for.inc_crit_edge
  %sm.2 = phi i32 [ %inc, %if.then ], [ %sm.051, %for.cond11.preheader.for.inc_crit_edge ]
  %shl.pn = phi i32 [ %conv19, %if.then ], [ 31, %for.cond11.preheader.for.inc_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sm.2, i32 %conv15)
  %cmp16.1 = icmp slt i32 %sm.2, %conv15
  br i1 %cmp16.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %inc.1 = add nsw i32 %sm.2, 1
  %arrayidx.1 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 25, i32 %sm.2
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1, align 1
  %conv19.1 = zext i8 %13 to i32
  %shl.1 = shl nuw nsw i32 %conv19.1, 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %sm.2.1 = phi i32 [ %inc.1, %if.then.1 ], [ %sm.2, %for.inc.for.inc.1_crit_edge ]
  %shl.pn.1 = phi i32 [ %shl.1, %if.then.1 ], [ 7936, %for.inc.for.inc.1_crit_edge ]
  %data.1.1 = or i32 %shl.pn.1, %shl.pn
  call void @__sanitizer_cov_trace_cmp4(i32 %sm.2.1, i32 %conv15)
  %cmp16.2 = icmp slt i32 %sm.2.1, %conv15
  br i1 %cmp16.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %inc.2 = add nsw i32 %sm.2.1, 1
  %arrayidx.2 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 25, i32 %sm.2.1
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.2, align 1
  %conv19.2 = zext i8 %15 to i32
  %shl.2 = shl nuw nsw i32 %conv19.2, 16
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %sm.2.2 = phi i32 [ %inc.2, %if.then.2 ], [ %sm.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %shl.pn.2 = phi i32 [ %shl.2, %if.then.2 ], [ 2031616, %for.inc.1.for.inc.2_crit_edge ]
  %data.1.2 = or i32 %shl.pn.2, %data.1.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sm.2.2, i32 %conv15)
  %cmp16.3 = icmp slt i32 %sm.2.2, %conv15
  br i1 %cmp16.3, label %if.then.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %inc.3 = add nsw i32 %sm.2.2, 1
  %arrayidx.3 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 25, i32 %sm.2.2
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3, align 1
  %conv19.3 = zext i8 %17 to i32
  %shl.3 = shl nuw i32 %conv19.3, 24
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %sm.2.3 = phi i32 [ %inc.3, %if.then.3 ], [ %sm.2.2, %for.inc.2.for.inc.3_crit_edge ]
  %shl.pn.3 = phi i32 [ %shl.3, %if.then.3 ], [ 520093696, %for.inc.2.for.inc.3_crit_edge ]
  %data.1.3 = or i32 %shl.pn.3, %data.1.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %mul26 = shl i32 %i.050, 2
  %add27 = add nuw nsw i32 %mul26, 4219048
  %add.ptr28 = getelementptr i8, ptr %19, i32 %add27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %data.1.3) #8, !srcloc !100
  %inc30 = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc30, %div44
  br i1 %exitcond.not, label %for.inc.3.for.end31_crit_edge, label %for.inc.3.for.cond11.preheader_crit_edge

for.inc.3.for.cond11.preheader_crit_edge:         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond11.preheader

for.inc.3.for.end31_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end31

for.end31:                                        ; preds = %for.inc.3.for.end31_crit_edge, %entry.for.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_rop_mapping(ptr nocapture noundef readonly %gr) #1 align 64 {
entry:
  %data = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #8
  %2 = call ptr @memset(ptr %data, i32 0, i32 24)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0160 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %i.0160
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = and i8 %4, 7
  %and = zext i8 %5 to i32
  %i.0160.frozen = freeze i32 %i.0160
  %div = udiv i32 %i.0160.frozen, 6
  %6 = mul i32 %div, 6
  %rem.decomposed = sub i32 %i.0160.frozen, %6
  %mul = mul nuw nsw i32 %rem.decomposed, 5
  %shl = shl nuw nsw i32 %and, %mul
  %arrayidx2 = getelementptr [6 x i32], ptr %data, i32 0, i32 %div
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  %or = or i32 %shl, %8
  store i32 %or, ptr %arrayidx2, align 4
  %inc = add nuw nsw i32 %i.0160, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %tpc_total = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 16
  %9 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tpc_total, align 1
  %conv3161 = zext i8 %10 to i32
  %and4162 = and i32 %conv3161, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4162)
  %tobool.not163 = icmp eq i32 %and4162, 0
  br i1 %tobool.not163, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  %ntpcv.0165 = phi i8 [ %shl6, %while.body.while.body_crit_edge ], [ %10, %for.end.while.body_crit_edge ]
  %shift.0164 = phi i8 [ %inc8, %while.body.while.body_crit_edge ], [ 0, %for.end.while.body_crit_edge ]
  %shl6 = shl i8 %ntpcv.0165, 1
  %inc8 = add i8 %shift.0164, 1
  %conv3 = zext i8 %shl6 to i32
  %and4 = and i32 %conv3, 16
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast = zext i8 %inc8 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 21
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %for.end.while.end_crit_edge
  %shift.0.lcssa = phi i32 [ 0, %for.end.while.end_crit_edge ], [ %phi.bo, %while.end.loopexit ]
  %ntpcv.0.lcssa = phi i8 [ %10, %for.end.while.end_crit_edge ], [ %shl6, %while.end.loopexit ]
  %conv3.lcssa = phi i32 [ %conv3161, %for.end.while.end_crit_edge ], [ %conv3, %while.end.loopexit ]
  %rem17159 = urem i8 32, %ntpcv.0.lcssa
  %rem17.zext = zext i8 %rem17159 to i32
  %rem27.rhs.trunc = trunc i32 %conv3.lcssa to i8
  %rem27178 = urem i8 64, %rem27.rhs.trunc
  %rem27.zext = zext i8 %rem27178 to i32
  %rem27.1.rhs.trunc = trunc i32 %conv3.lcssa to i8
  %rem27.1179 = urem i8 -128, %rem27.1.rhs.trunc
  %rem27.1.zext = zext i8 %rem27.1179 to i32
  %shl29.1 = shl nuw nsw i32 %rem27.1.zext, 5
  %or31.1 = or i32 %shl29.1, %rem27.zext
  %rem27.2.rhs.trunc = trunc i32 %conv3.lcssa to i16
  %rem27.2180 = urem i16 256, %rem27.2.rhs.trunc
  %rem27.2.zext = zext i16 %rem27.2180 to i32
  %shl29.2 = shl nuw nsw i32 %rem27.2.zext, 10
  %or31.2 = or i32 %shl29.2, %or31.1
  %rem27.3.rhs.trunc = trunc i32 %conv3.lcssa to i16
  %rem27.3181 = urem i16 512, %rem27.3.rhs.trunc
  %rem27.3.zext = zext i16 %rem27.3181 to i32
  %shl29.3 = shl nuw nsw i32 %rem27.3.zext, 15
  %or31.3 = or i32 %shl29.3, %or31.2
  %rem27.4.rhs.trunc = trunc i32 %conv3.lcssa to i16
  %rem27.4182 = urem i16 1024, %rem27.4.rhs.trunc
  %rem27.4.zext = zext i16 %rem27.4182 to i32
  %shl29.4 = shl nuw nsw i32 %rem27.4.zext, 20
  %or31.4 = or i32 %shl29.4, %or31.3
  %rem27.5.rhs.trunc = trunc i32 %conv3.lcssa to i16
  %rem27.5183 = urem i16 2048, %rem27.5.rhs.trunc
  %rem27.5.zext = zext i16 %rem27.5183 to i32
  %shl29.5 = shl i32 %rem27.5.zext, 25
  %or31.5 = or i32 %shl29.5, %or31.4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tpc_total, align 1
  %conv36 = zext i8 %12 to i32
  %shl37 = shl nuw nsw i32 %conv36, 8
  %screen_tile_row_offset = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %13 = ptrtoint ptr %screen_tile_row_offset to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %screen_tile_row_offset, align 2
  %conv38 = zext i8 %14 to i32
  %or39 = or i32 %shl37, %conv38
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 4295608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or39) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data, align 4
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr51 = getelementptr i8, ptr %20, i32 4295432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %18) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %arrayidx47.1 = getelementptr inbounds [6 x i32], ptr %data, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx47.1, align 4
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr51.1 = getelementptr i8, ptr %24, i32 4295436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.1, i32 %22) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %arrayidx47.2 = getelementptr inbounds [6 x i32], ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx47.2, align 4
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr51.2 = getelementptr i8, ptr %28, i32 4295440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.2, i32 %26) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %arrayidx47.3 = getelementptr inbounds [6 x i32], ptr %data, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx47.3, align 4
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr51.3 = getelementptr i8, ptr %32, i32 4295444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.3, i32 %30) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %arrayidx47.4 = getelementptr inbounds [6 x i32], ptr %data, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx47.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx47.4, align 4
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr51.4 = getelementptr i8, ptr %36, i32 4295448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.4, i32 %34) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %arrayidx47.5 = getelementptr inbounds [6 x i32], ptr %data, i32 0, i32 5
  %37 = ptrtoint ptr %arrayidx47.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx47.5, align 4
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr51.5 = getelementptr i8, ptr %40, i32 4295452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.5, i32 %38) #8, !srcloc !100
  %shl10 = shl nuw nsw i32 %conv3.lcssa, 16
  %shl18 = shl nuw nsw i32 %rem17.zext, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %tpc_total, align 1
  %conv59 = zext i8 %42 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %43 = ptrtoint ptr %screen_tile_row_offset to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %screen_tile_row_offset, align 2
  %conv62 = zext i8 %44 to i32
  %or63 = or i32 %shl10, %shift.0.lcssa
  %or15 = or i32 %or63, %shl18
  %or20 = or i32 %or15, %conv62
  %or65 = or i32 %or20, %shl60
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %add.ptr67 = getelementptr i8, ptr %46, i32 4299728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %or65) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri, align 4
  %add.ptr73 = getelementptr i8, ptr %48, i32 4299748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %or31.5) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri, align 4
  %add.ptr85 = getelementptr i8, ptr %50, i32 4299520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %18) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri, align 4
  %add.ptr85.1 = getelementptr i8, ptr %52, i32 4299524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.1, i32 %22) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %53 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri, align 4
  %add.ptr85.2 = getelementptr i8, ptr %54, i32 4299528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.2, i32 %26) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %55 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri, align 4
  %add.ptr85.3 = getelementptr i8, ptr %56, i32 4299532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.3, i32 %30) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri, align 4
  %add.ptr85.4 = getelementptr i8, ptr %58, i32 4299536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.4, i32 %34) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pri, align 4
  %add.ptr85.5 = getelementptr i8, ptr %60, i32 4299540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.5, i32 %38) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %tpc_total, align 1
  %conv93 = zext i8 %62 to i32
  %shl94 = shl nuw nsw i32 %conv93, 8
  %63 = ptrtoint ptr %screen_tile_row_offset to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %screen_tile_row_offset, align 2
  %conv96 = zext i8 %64 to i32
  %or97 = or i32 %shl94, %conv96
  %65 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri, align 4
  %add.ptr99 = getelementptr i8, ptr %66, i32 4225212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %or97) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data, align 4
  %69 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri, align 4
  %add.ptr111 = getelementptr i8, ptr %70, i32 4225036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 %68) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %71 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx47.1, align 4
  %73 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pri, align 4
  %add.ptr111.1 = getelementptr i8, ptr %74, i32 4225040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.1, i32 %72) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %75 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx47.2, align 4
  %77 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pri, align 4
  %add.ptr111.2 = getelementptr i8, ptr %78, i32 4225044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.2, i32 %76) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %79 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx47.3, align 4
  %81 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pri, align 4
  %add.ptr111.3 = getelementptr i8, ptr %82, i32 4225048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.3, i32 %80) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %83 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pri, align 4
  %add.ptr111.4 = getelementptr i8, ptr %84, i32 4225052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.4, i32 %34) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %85 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pri, align 4
  %add.ptr111.5 = getelementptr i8, ptr %86, i32 4225056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.5, i32 %38) #8, !srcloc !100
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_max_ways_evict(ptr nocapture noundef readonly %gr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1186932
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 1567004
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %and = and i32 %7, -2031617
  %or = or i32 %and, 589824
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 1567004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %or) #8, !srcloc !100
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_alpha_beta_tables(ptr noundef %gr) #1 align 64 {
entry:
  %abits = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %tpc_total = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 16
  %debug = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 5
  %name = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 4
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 13
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %do.body54.for.body_crit_edge, %entry
  %i.0116 = phi i32 [ 0, %entry ], [ %inc66, %do.body54.for.body_crit_edge ]
  %2 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tpc_total, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx3 = getelementptr [17 x [32 x i32]], ptr @gf100_grctx_alpha_beta_map, i32 0, i32 %idxprom, i32 %i.0116
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %abits) #8
  %6 = call ptr @memset(ptr %abits, i32 0, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body, label %for.body.for.cond15.preheader.lr.ph_crit_edge

for.body.for.cond15.preheader.lr.ph_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond15.preheader.lr.ph

do.body:                                          ; preds = %for.body
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp4 = icmp ugt i32 %8, 1
  br i1 %cmp4, label %do.end, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body.if.end_crit_edge
  %13 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tpc_total, align 1
  %conv = zext i8 %14 to i32
  %mul = mul i32 %i.0116, %conv
  %div = sdiv i32 %mul, 32
  %15 = tail call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.cond15.preheader.lr.ph

for.cond15.preheader.lr.ph:                       ; preds = %if.end, %for.body.for.cond15.preheader.lr.ph_crit_edge
  %atarget.0 = phi i32 [ %5, %for.body.for.cond15.preheader.lr.ph_crit_edge ], [ %15, %if.end ]
  %16 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %gpc_nr, align 1
  %conv17 = zext i8 %17 to i32
  %exitcond.not = icmp eq i8 %17, 0
  br label %land.rhs.outer

for.cond30.preheader:                             ; preds = %for.inc
  %18 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %gpc_nr, align 1
  %conv32 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp33110.not = icmp eq i8 %19, 0
  br i1 %cmp33110.not, label %for.cond30.preheader.do.body54_crit_edge, label %for.cond30.preheader.for.body35_crit_edge

for.cond30.preheader.for.body35_crit_edge:        ; preds = %for.cond30.preheader
  br label %for.body35

for.cond30.preheader.do.body54_crit_edge:         ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

land.rhs:                                         ; preds = %land.rhs.outer.land.rhs_crit_edge, %land.rhs.land.rhs_crit_edge
  br i1 %exitcond.not, label %land.rhs.land.rhs_crit_edge, label %land.rhs.for.body20_crit_edge, !llvm.loop !117

land.rhs.for.body20_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body20

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.body20:                                       ; preds = %land.rhs.outer.for.body20_crit_edge, %land.rhs.for.body20_crit_edge
  %gpc.0105.lcssa = phi i32 [ %gpc.0105.ph, %land.rhs.outer.for.body20_crit_edge ], [ 0, %land.rhs.for.body20_crit_edge ]
  %arrayidx21 = getelementptr [32 x i32], ptr %abits, i32 0, i32 %gpc.0105.lcssa
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx21, align 4
  %arrayidx22 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %gpc.0105.lcssa
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv23)
  %cmp24 = icmp ult i32 %21, %conv23
  br i1 %cmp24, label %if.then26, label %for.body20.for.inc_crit_edge

for.body20.for.inc_crit_edge:                     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then26:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nuw i32 %21, 1
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc, ptr %arrayidx21, align 4
  %dec = add i32 %atarget.2106.ph, -1
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %for.body20.for.inc_crit_edge
  %atarget.3 = phi i32 [ %dec, %if.then26 ], [ %atarget.2106.ph, %for.body20.for.inc_crit_edge ]
  %inc29 = add nuw nsw i32 %gpc.0105.lcssa, 1
  %tobool16.not = icmp eq i32 %atarget.3, 0
  br i1 %tobool16.not, label %for.cond30.preheader, label %for.inc.land.rhs.outer_crit_edge

for.inc.land.rhs.outer_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.outer

land.rhs.outer:                                   ; preds = %for.inc.land.rhs.outer_crit_edge, %for.cond15.preheader.lr.ph
  %atarget.2106.ph = phi i32 [ %atarget.0, %for.cond15.preheader.lr.ph ], [ %atarget.3, %for.inc.land.rhs.outer_crit_edge ]
  %gpc.0105.ph = phi i32 [ 0, %for.cond15.preheader.lr.ph ], [ %inc29, %for.inc.land.rhs.outer_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %gpc.0105.ph, i32 %conv17)
  %exitcond.not.peel = icmp eq i32 %gpc.0105.ph, %conv17
  br i1 %exitcond.not.peel, label %land.rhs.outer.land.rhs_crit_edge, label %land.rhs.outer.for.body20_crit_edge

land.rhs.outer.for.body20_crit_edge:              ; preds = %land.rhs.outer
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body20

land.rhs.outer.land.rhs_crit_edge:                ; preds = %land.rhs.outer
  br label %land.rhs

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.cond30.preheader.for.body35_crit_edge
  %bmask.0113 = phi i32 [ %or50, %for.body35.for.body35_crit_edge ], [ 0, %for.cond30.preheader.for.body35_crit_edge ]
  %amask.0112 = phi i32 [ %or, %for.body35.for.body35_crit_edge ], [ 0, %for.cond30.preheader.for.body35_crit_edge ]
  %gpc.1111 = phi i32 [ %inc52, %for.body35.for.body35_crit_edge ], [ 0, %for.cond30.preheader.for.body35_crit_edge ]
  %arrayidx37 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %gpc.1111
  %25 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %26 to i32
  %arrayidx39 = getelementptr [32 x i32], ptr %abits, i32 0, i32 %gpc.1111
  %27 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx39, align 4
  %sub = sub i32 %conv38, %28
  %notmask = shl nsw i32 -1, %28
  %sub41 = xor i32 %notmask, -1
  %mul42 = shl i32 %gpc.1111, 3
  %shl43 = shl i32 %sub41, %mul42
  %or = or i32 %shl43, %amask.0112
  %notmask103 = shl nsw i32 -1, %sub
  %sub45 = xor i32 %notmask103, -1
  %shl47 = shl i32 %sub45, %28
  %shl49 = shl i32 %shl47, %mul42
  %or50 = or i32 %shl49, %bmask.0113
  %inc52 = add nuw nsw i32 %gpc.1111, 1
  %exitcond117.not = icmp eq i32 %inc52, %conv32
  br i1 %exitcond117.not, label %for.body35.do.body54_crit_edge, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35

for.body35.do.body54_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

do.body54:                                        ; preds = %for.body35.do.body54_crit_edge, %for.cond30.preheader.do.body54_crit_edge
  %amask.0.lcssa = phi i32 [ 0, %for.cond30.preheader.do.body54_crit_edge ], [ %or, %for.body35.do.body54_crit_edge ]
  %bmask.0.lcssa = phi i32 [ 0, %for.cond30.preheader.do.body54_crit_edge ], [ %or50, %for.body35.do.body54_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %mul57 = shl i32 %i.0116, 5
  %add = add nuw nsw i32 %mul57, 4220928
  %add.ptr = getelementptr i8, ptr %30, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %amask.0.lcssa) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add63 = add nuw nsw i32 %mul57, 4221952
  %add.ptr64 = getelementptr i8, ptr %32, i32 %add63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %bmask.0.lcssa) #8, !srcloc !100
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %abits) #8
  %inc66 = add nuw nsw i32 %i.0116, 1
  %exitcond118.not = icmp eq i32 %inc66, 32
  br i1 %exitcond118.not, label %for.end67, label %do.body54.for.body_crit_edge

do.body54.for.body_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end67:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_tpc_nr(ptr nocapture noundef readonly %gr, i32 noundef %gpc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %gpc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %mul = shl i32 %gpc, 15
  %add2 = add i32 %mul, 5245960
  %add.ptr = getelementptr i8, ptr %5, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %7 to i32
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add12 = add i32 %mul, 5246092
  %add.ptr13 = getelementptr i8, ptr %9, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %conv8) #8, !srcloc !100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_sm_id(ptr nocapture noundef readonly %gr, i32 noundef %gpc, i32 noundef %tpc, i32 noundef %sm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %gpc, 15
  %add = add i32 %mul, 5259264
  %mul2 = shl i32 %tpc, 11
  %add3 = add i32 %add, %mul2
  %add4 = or i32 %add3, 1688
  %add.ptr = getelementptr i8, ptr %3, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %sm) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add13 = or i32 %add3, 1256
  %add.ptr14 = getelementptr i8, ptr %5, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %sm) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %mul21 = shl i32 %tpc, 2
  %add22 = add i32 %mul, 5245968
  %add23 = add i32 %add22, %mul21
  %add.ptr24 = getelementptr i8, ptr %7, i32 %add23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %sm) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add33 = or i32 %add3, 136
  %add.ptr34 = getelementptr i8, ptr %9, i32 %add33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %sm) #8, !srcloc !100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_floorsweep(ptr noundef %gr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr, align 4
  %grctx = getelementptr inbounds %struct.gf100_gr_func, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %grctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grctx, align 4
  %sm_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 26
  %4 = ptrtoint ptr %sm_nr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sm_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp107.not = icmp eq i8 %5, 0
  br i1 %cmp107.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sm_id = getelementptr inbounds %struct.gf100_grctx_func, ptr %3, i32 0, i32 25
  %tpc_nr = getelementptr inbounds %struct.gf100_grctx_func, ptr %3, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sm.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %sm_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm_id, align 4
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 25, i32 %sm.0108
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %9 to i32
  %tpc = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 25, i32 %sm.0108, i32 1
  %10 = ptrtoint ptr %tpc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tpc, align 1
  %conv7 = zext i8 %11 to i32
  tail call void %7(ptr noundef %gr, i32 noundef %conv4, i32 noundef %conv7, i32 noundef %sm.0108) #8
  %12 = ptrtoint ptr %tpc_nr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tpc_nr, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %15 to i32
  tail call void %13(ptr noundef %gr, i32 noundef %conv12) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %sm.0108, 1
  %16 = ptrtoint ptr %sm_nr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sm_nr, align 1
  %conv = zext i8 %17 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @gf100_gr_init_num_tpc_per_gpc(ptr noundef %gr, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %skip_pd_num_tpc_per_gpc = getelementptr inbounds %struct.gf100_grctx_func, ptr %3, i32 0, i32 27
  %18 = ptrtoint ptr %skip_pd_num_tpc_per_gpc to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %skip_pd_num_tpc_per_gpc, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not = icmp eq i8 %19, 0
  br i1 %tobool13.not, label %if.then14, label %for.end.if.end15_crit_edge

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gf100_gr_init_num_tpc_per_gpc(ptr noundef %gr, i1 noundef zeroext true, i1 noundef zeroext false) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %for.end.if.end15_crit_edge
  %r4060a8 = getelementptr inbounds %struct.gf100_grctx_func, ptr %3, i32 0, i32 28
  %20 = ptrtoint ptr %r4060a8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %r4060a8, align 4
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %if.end15.if.end19_crit_edge, label %if.then17

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %21(ptr noundef %gr) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %rop_mapping = getelementptr inbounds %struct.gf100_grctx_func, ptr %3, i32 0, i32 29
  %22 = ptrtoint ptr %rop_mapping to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rop_mapping, align 4
  tail call void %23(ptr noundef %gr) #8
  %alpha_beta_tables = getelementptr inbounds %struct.gf100_grctx_func, ptr %3, i32 0, i32 30
  %24 = ptrtoint ptr %alpha_beta_tables to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %alpha_beta_tables, align 4
  %tobool20.not = icmp eq ptr %25, null
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %25(ptr noundef %gr) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %max_ways_evict = getelementptr inbounds %struct.gf100_grctx_func, ptr %3, i32 0, i32 31
  %26 = ptrtoint ptr %max_ways_evict to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %max_ways_evict, align 4
  %tobool24.not = icmp eq ptr %27, null
  br i1 %tobool24.not, label %if.end23.if.end27_crit_edge, label %if.then25

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %27(ptr noundef %gr) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.if.end27_crit_edge
  %dist_skip_table = getelementptr inbounds %struct.gf100_grctx_func, ptr %3, i32 0, i32 32
  %28 = ptrtoint ptr %dist_skip_table to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dist_skip_table, align 4
  %tobool28.not = icmp eq ptr %29, null
  br i1 %tobool28.not, label %if.end27.if.end31_crit_edge, label %if.then29

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %29(ptr noundef %gr) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  %r406500 = getelementptr inbounds %struct.gf100_grctx_func, ptr %3, i32 0, i32 33
  %30 = ptrtoint ptr %r406500 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %r406500, align 4
  %tobool32.not = icmp eq ptr %31, null
  br i1 %tobool32.not, label %if.end31.if.end35_crit_edge, label %if.then33

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %31(ptr noundef %gr) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31.if.end35_crit_edge
  %gpc_tpc_nr = getelementptr inbounds %struct.gf100_grctx_func, ptr %3, i32 0, i32 34
  %32 = ptrtoint ptr %gpc_tpc_nr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gpc_tpc_nr, align 4
  %tobool36.not = icmp eq ptr %33, null
  br i1 %tobool36.not, label %if.end35.if.end39_crit_edge, label %if.then37

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %33(ptr noundef %gr) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35.if.end39_crit_edge
  %r419f78 = getelementptr inbounds %struct.gf100_grctx_func, ptr %3, i32 0, i32 35
  %34 = ptrtoint ptr %r419f78 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %r419f78, align 4
  %tobool40.not = icmp eq ptr %35, null
  br i1 %tobool40.not, label %if.end39.if.end43_crit_edge, label %if.then41

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %35(ptr noundef %gr) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39.if.end43_crit_edge
  %tpc_mask = getelementptr inbounds %struct.gf100_grctx_func, ptr %3, i32 0, i32 36
  %36 = ptrtoint ptr %tpc_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tpc_mask, align 4
  %tobool44.not = icmp eq ptr %37, null
  br i1 %tobool44.not, label %if.end43.if.end47_crit_edge, label %if.then45

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %37(ptr noundef %gr) #8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end43.if.end47_crit_edge
  %smid_config = getelementptr inbounds %struct.gf100_grctx_func, ptr %3, i32 0, i32 37
  %38 = ptrtoint ptr %smid_config to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %smid_config, align 4
  %tobool48.not = icmp eq ptr %39, null
  br i1 %tobool48.not, label %if.end47.if.end51_crit_edge, label %if.then49

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %39(ptr noundef %gr) #8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47.if.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_num_tpc_per_gpc(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_main(ptr noundef %gr, ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %2 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gr, align 4
  %grctx2 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %grctx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grctx2, align 4
  tail call void @nvkm_mc_unk260(ptr noundef %1, i32 noundef 0) #8
  %sw_ctx = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 6
  %6 = ptrtoint ptr %sw_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw_ctx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hub = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %hub to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hub, align 4
  tail call void @gf100_gr_mmio(ptr noundef %gr, ptr noundef %9) #8
  %gpc_0 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %gpc_0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpc_0, align 4
  tail call void @gf100_gr_mmio(ptr noundef %gr, ptr noundef %11) #8
  %zcull = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %zcull to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %zcull, align 4
  tail call void @gf100_gr_mmio(ptr noundef %gr, ptr noundef %13) #8
  %gpc_1 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %gpc_1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpc_1, align 4
  tail call void @gf100_gr_mmio(ptr noundef %gr, ptr noundef %15) #8
  %tpc = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %tpc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tpc, align 4
  tail call void @gf100_gr_mmio(ptr noundef %gr, ptr noundef %17) #8
  %ppc = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 8
  %18 = ptrtoint ptr %ppc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ppc, align 4
  tail call void @gf100_gr_mmio(ptr noundef %gr, ptr noundef %19) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gf100_gr_mmio(ptr noundef %gr, ptr noundef nonnull %7) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = tail call i32 @gf100_gr_wait_idle(ptr noundef %gr) #8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 4211028
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %24, i32 4211028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #8, !srcloc !100
  %pagepool = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 16
  %25 = ptrtoint ptr %pagepool to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pagepool, align 4
  tail call void %26(ptr noundef %info) #8
  %bundle = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 12
  %27 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bundle, align 4
  tail call void %28(ptr noundef %info) #8
  %attrib = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 18
  %29 = ptrtoint ptr %attrib to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %attrib, align 4
  tail call void %30(ptr noundef %info) #8
  %patch_ltc = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 24
  %31 = ptrtoint ptr %patch_ltc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %patch_ltc, align 4
  %tobool8.not = icmp eq ptr %32, null
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %32(ptr noundef %info) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %unkn = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 2
  %33 = ptrtoint ptr %unkn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %unkn, align 4
  tail call void %34(ptr noundef %gr) #8
  tail call void @gf100_grctx_generate_floorsweep(ptr noundef %gr)
  %call12 = tail call i32 @gf100_gr_wait_idle(ptr noundef %gr) #8
  %r400088 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 38
  %35 = ptrtoint ptr %r400088 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %r400088, align 4
  %tobool13.not = icmp eq ptr %36, null
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %36(ptr noundef %gr, i1 noundef zeroext false) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %bundle17 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 7
  %37 = ptrtoint ptr %bundle17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bundle17, align 4
  %tobool18.not = icmp eq ptr %38, null
  br i1 %tobool18.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gf100_gr_icmd(ptr noundef %gr, ptr noundef nonnull %38) #8
  br label %if.end22

if.else21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %icmd = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 9
  %39 = ptrtoint ptr %icmd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %icmd, align 4
  tail call void @gf100_gr_icmd(ptr noundef %gr, ptr noundef %40) #8
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then19
  %sw_veid_bundle_init = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 11
  %41 = ptrtoint ptr %sw_veid_bundle_init to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sw_veid_bundle_init, align 4
  %tobool23.not = icmp eq ptr %42, null
  br i1 %tobool23.not, label %if.end22.if.end26_crit_edge, label %if.then24

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gf100_gr_icmd(ptr noundef %gr, ptr noundef nonnull %42) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22.if.end26_crit_edge
  %43 = ptrtoint ptr %r400088 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %r400088, align 4
  %tobool28.not = icmp eq ptr %44, null
  br i1 %tobool28.not, label %if.end26.do.body32_crit_edge, label %if.then29

if.end26.do.body32_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %44(ptr noundef %gr, i1 noundef zeroext true) #8
  br label %do.body32

do.body32:                                        ; preds = %if.then29, %if.end26.do.body32_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %46, i32 4211028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %22) #8, !srcloc !100
  %method = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 8
  %47 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %method, align 4
  %tobool37.not = icmp eq ptr %48, null
  br i1 %tobool37.not, label %if.else40, label %if.then38

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gf100_gr_mthd(ptr noundef %gr, ptr noundef nonnull %48) #8
  br label %if.end41

if.else40:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %mthd = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 10
  %49 = ptrtoint ptr %mthd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mthd, align 4
  tail call void @gf100_gr_mthd(ptr noundef %gr, ptr noundef %50) #8
  br label %if.end41

if.end41:                                         ; preds = %if.else40, %if.then38
  tail call void @nvkm_mc_unk260(ptr noundef %1, i32 noundef 1) #8
  %r419cb8 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 39
  %51 = ptrtoint ptr %r419cb8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %r419cb8, align 4
  %tobool42.not = icmp eq ptr %52, null
  br i1 %tobool42.not, label %if.end41.if.end45_crit_edge, label %if.then43

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %52(ptr noundef %gr) #8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41.if.end45_crit_edge
  %r418800 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 40
  %53 = ptrtoint ptr %r418800 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %r418800, align 4
  %tobool46.not = icmp eq ptr %54, null
  br i1 %tobool46.not, label %if.end45.if.end49_crit_edge, label %if.then47

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %54(ptr noundef %gr) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45.if.end49_crit_edge
  %r419eb0 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 41
  %55 = ptrtoint ptr %r419eb0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %r419eb0, align 4
  %tobool50.not = icmp eq ptr %56, null
  br i1 %tobool50.not, label %if.end49.if.end53_crit_edge, label %if.then51

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %56(ptr noundef %gr) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end49.if.end53_crit_edge
  %r419e00 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 42
  %57 = ptrtoint ptr %r419e00 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %r419e00, align 4
  %tobool54.not = icmp eq ptr %58, null
  br i1 %tobool54.not, label %if.end53.if.end57_crit_edge, label %if.then55

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %58(ptr noundef %gr) #8
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end53.if.end57_crit_edge
  %r418e94 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 43
  %59 = ptrtoint ptr %r418e94 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %r418e94, align 4
  %tobool58.not = icmp eq ptr %60, null
  br i1 %tobool58.not, label %if.end57.if.end61_crit_edge, label %if.then59

if.end57.if.end61_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %60(ptr noundef %gr) #8
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end57.if.end61_crit_edge
  %r419a3c = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 44
  %61 = ptrtoint ptr %r419a3c to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %r419a3c, align 4
  %tobool62.not = icmp eq ptr %62, null
  br i1 %tobool62.not, label %if.end61.if.end65_crit_edge, label %if.then63

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %62(ptr noundef %gr) #8
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end61.if.end65_crit_edge
  %r408840 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 45
  %63 = ptrtoint ptr %r408840 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %r408840, align 4
  %tobool66.not = icmp eq ptr %64, null
  br i1 %tobool66.not, label %if.end65.if.end69_crit_edge, label %if.then67

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %64(ptr noundef %gr) #8
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end65.if.end69_crit_edge
  %r419c0c = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 46
  %65 = ptrtoint ptr %r419c0c to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %r419c0c, align 4
  %tobool70.not = icmp eq ptr %66, null
  br i1 %tobool70.not, label %if.end69.if.end73_crit_edge, label %if.then71

if.end69.if.end73_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %66(ptr noundef %gr) #8
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end69.if.end73_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_unk260(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_mmio(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_wait_idle(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_icmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_mthd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_grctx_generate(ptr noundef %gr) local_unnamed_addr #1 align 64 {
entry:
  %inst = alloca ptr, align 4
  %data = alloca ptr, align 4
  %vmm = alloca ptr, align 4
  %ctx = alloca ptr, align 4
  %info = alloca %struct.gf100_grctx, align 8
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  %_wait53 = alloca %struct.nvkm_timer_wait, align 8
  %_wait115 = alloca %struct.nvkm_timer_wait, align 8
  %_wait275 = alloca %struct.nvkm_timer_wait, align 8
  %_wait359 = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr, align 4
  %grctx1 = getelementptr inbounds %struct.gf100_gr_func, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %grctx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grctx1, align 4
  %device3 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inst) #8
  %6 = ptrtoint ptr %inst to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %inst, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vmm) #8
  %8 = ptrtoint ptr %vmm to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %vmm, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctx) #8
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #8
  %10 = call ptr @memset(ptr %info, i32 255, i32 56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 4211056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 18) #8, !srcloc !100
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #8
  %13 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 2000000000, ptr noundef nonnull %_wait) #8
  br label %do.body4

do.body4:                                         ; preds = %do.cond7.do.body4_crit_edge, %entry
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %15, i32 4211056
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  %and = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4.if.end42_crit_edge, label %do.cond7

do.body4.if.end42_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.cond7:                                         ; preds = %do.body4
  %call8 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #8
  %cmp = icmp sgt i64 %call8, -1
  br i1 %cmp, label %do.cond7.do.body4_crit_edge, label %do.end20

do.cond7.do.body4_crit_edge:                      ; preds = %do.cond7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

do.end20:                                         ; preds = %do.cond7
  %17 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_wait, align 8
  %device22 = getelementptr inbounds %struct.nvkm_timer, ptr %18, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device22, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %call23 = call ptr @dev_driver_string(ptr noundef %22) #8
  %23 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_wait, align 8
  %device26 = getelementptr inbounds %struct.nvkm_timer, ptr %24, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %device26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device26, align 4
  %dev27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev27, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.i516, label %do.end20.dev_name.exit_crit_edge

do.end20.dev_name.exit_crit_edge:                 ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i516:                                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i516, %do.end20.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %32, %if.end.i516 ], [ %30, %do.end20.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1454, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call23, ptr noundef %retval.0.i) #8
  br label %if.end42

if.end42:                                         ; preds = %dev_name.exit, %do.body4.if.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #8
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %tobool44.not = icmp eq ptr %34, null
  br i1 %tobool44.not, label %if.end42.do.body48_crit_edge, label %if.then45

if.end42.do.body48_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  call void %34(ptr noundef %gr, i1 noundef zeroext true) #8
  br label %do.body48

do.body48:                                        ; preds = %if.then45, %if.end42.do.body48_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr52 = getelementptr i8, ptr %36, i32 4232724
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 112) #8, !srcloc !100
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait53) #8
  %37 = call ptr @memset(ptr %_wait53, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 10000, ptr noundef nonnull %_wait53) #8
  br label %do.body56

do.body56:                                        ; preds = %do.body56.do.body56_crit_edge, %do.body48
  %call58 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait53) #8
  %cmp59 = icmp sgt i64 %call58, -1
  br i1 %cmp59, label %do.body56.do.body56_crit_edge, label %if.end101

do.body56.do.body56_crit_edge:                    ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56

if.end101:                                        ; preds = %do.body56
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait53) #8
  %38 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri, align 4
  %add.ptr105 = getelementptr i8, ptr %39, i32 4232724
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #8, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %or = or i32 %40, 1792
  %41 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri, align 4
  %add.ptr113 = getelementptr i8, ptr %42, i32 4232724
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %or) #8, !srcloc !100
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait115) #8
  %43 = call ptr @memset(ptr %_wait115, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 10000, ptr noundef nonnull %_wait115) #8
  br label %do.body118

do.body118:                                       ; preds = %do.body118.do.body118_crit_edge, %if.end101
  %call120 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait115) #8
  %cmp121 = icmp sgt i64 %call120, -1
  br i1 %cmp121, label %do.body118.do.body118_crit_edge, label %if.end163

do.body118.do.body118_crit_edge:                  ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body118

if.end163:                                        ; preds = %do.body118
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait115) #8
  %44 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri, align 4
  %add.ptr167 = getelementptr i8, ptr %45, i32 4232724
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr167) #8, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 4
  %tobool171.not = icmp eq ptr %48, null
  br i1 %tobool171.not, label %if.end163.do.body175_crit_edge, label %if.then172

if.end163.do.body175_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body175

if.then172:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  call void %48(ptr noundef %gr, i1 noundef zeroext false) #8
  br label %do.body175

do.body175:                                       ; preds = %if.then172, %if.end163.do.body175_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri, align 4
  %add.ptr179 = getelementptr i8, ptr %50, i32 4211056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 16) #8, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri, align 4
  %add.ptr184 = getelementptr i8, ptr %52, i32 4227116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr184, i32 1) #8, !srcloc !100
  %call185 = call i32 @nvkm_memory_new(ptr noundef %5, i32 noundef 0, i64 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, ptr noundef nonnull %inst) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end188, label %do.body175.done_crit_edge

do.body175.done_crit_edge:                        ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end188:                                        ; preds = %do.body175
  %call189 = call i32 @nvkm_vmm_new(ptr noundef %5, i64 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull %vmm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end192, label %if.end188.done_crit_edge

if.end188.done_crit_edge:                         ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end192:                                        ; preds = %if.end188
  %debug = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 5
  %53 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %debug, align 4
  %55 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vmm, align 4
  %debug193 = getelementptr inbounds %struct.nvkm_vmm, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %debug193 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %54, ptr %debug193, align 4
  %58 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %inst, align 4
  %call194 = call i32 @nvkm_vmm_join(ptr noundef %56, ptr noundef %59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end197, label %if.end192.done_crit_edge

if.end192.done_crit_edge:                         ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end197:                                        ; preds = %if.end192
  %size = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 29
  %60 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size, align 4
  %add = add i32 %61, 524288
  %conv = zext i32 %add to i64
  %call198 = call i32 @nvkm_memory_new(ptr noundef %5, i32 noundef 0, i64 noundef %conv, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %if.end201, label %if.end197.done_crit_edge

if.end197.done_crit_edge:                         ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end201:                                        ; preds = %if.end197
  %62 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vmm, align 4
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %size203 = getelementptr inbounds %struct.nvkm_memory_func, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %size203 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %size203, align 4
  %call204 = call i64 %69(ptr noundef %65) #8
  %call205 = call i32 @nvkm_vmm_get(ptr noundef %63, i8 noundef zeroext 0, i64 noundef %call204, ptr noundef nonnull %ctx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.end208, label %if.end201.done_crit_edge

if.end201.done_crit_edge:                         ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end208:                                        ; preds = %if.end201
  %70 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %map = getelementptr inbounds %struct.nvkm_memory_func, ptr %73, i32 0, i32 9
  %74 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %map, align 4
  %76 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vmm, align 4
  %78 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctx, align 4
  %call210 = call i32 %75(ptr noundef %71, i64 noundef 0, ptr noundef %77, ptr noundef %79, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %if.end213, label %if.end208.done_crit_edge

if.end208.done_crit_edge:                         ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end213:                                        ; preds = %if.end208
  %80 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %inst, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %acquire, align 4
  %call215 = call ptr %85(ptr noundef %81) #8
  %86 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %inst, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wr32, align 4
  %92 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ctx, align 4
  %addr216 = getelementptr inbounds %struct.nvkm_vma, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %addr216 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %addr216, align 8
  %96 = trunc i64 %95 to i32
  %conv219 = add i32 %96, 524288
  %or220 = or i32 %conv219, 4
  call void %91(ptr noundef %87, i64 noundef 528, i32 noundef %or220) #8
  %97 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %inst, align 4
  %ptrs221 = getelementptr inbounds %struct.nvkm_memory, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %ptrs221 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ptrs221, align 4
  %wr32222 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %wr32222 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %wr32222, align 4
  %103 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ctx, align 4
  %addr223 = getelementptr inbounds %struct.nvkm_vma, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %addr223 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %addr223, align 8
  %add224 = add i64 %106, 524288
  %shr = lshr i64 %add224, 32
  %conv226 = trunc i64 %shr to i32
  call void %102(ptr noundef %98, i64 noundef 532, i32 noundef %conv226) #8
  %107 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %inst, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %110, i32 0, i32 8
  %111 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %release, align 4
  call void %112(ptr noundef %108) #8
  %113 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %gr, ptr %info, align 8
  %mmio_data = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 27
  %data229 = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 1
  %114 = ptrtoint ptr %data229 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %mmio_data, ptr %data229, align 4
  %mmio_list = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 28
  %mmio = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 2
  %115 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %mmio_list, ptr %mmio, align 8
  %116 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ctx, align 4
  %addr231 = getelementptr inbounds %struct.nvkm_vma, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %addr231 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %addr231, align 8
  %addr232 = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 5
  %120 = ptrtoint ptr %addr232 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %119, ptr %addr232, align 8
  %buffer_nr = getelementptr inbounds %struct.gf100_grctx, ptr %info, i32 0, i32 3
  %121 = ptrtoint ptr %buffer_nr to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %buffer_nr, align 4
  %122 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %inst, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %addr234 = getelementptr inbounds %struct.nvkm_memory_func, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %addr234 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %addr234, align 4
  %call235 = call i64 %127(ptr noundef %123) #8
  %shr236 = lshr i64 %call235, 12
  %firmware = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 4
  %128 = ptrtoint ptr %firmware to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %firmware, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool237.not = icmp eq i8 %129, 0
  br i1 %tobool237.not, label %do.body258, label %if.then238

if.then238:                                       ; preds = %if.end213
  %130 = trunc i64 %shr236 to i32
  %conv240 = or i32 %130, -2147483648
  %call241 = call i32 @gf100_gr_fecs_bind_pointer(ptr noundef %gr, i32 noundef %conv240) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241)
  %tobool242.not = icmp eq i32 %call241, 0
  br i1 %tobool242.not, label %if.end244, label %if.then238.done_crit_edge

if.then238.done_crit_edge:                        ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end244:                                        ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %data, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %acquire246 = getelementptr inbounds %struct.nvkm_memory_func, ptr %134, i32 0, i32 7
  %135 = ptrtoint ptr %acquire246 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %acquire246, align 4
  %call247 = call ptr %136(ptr noundef %132) #8
  %137 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data, align 4
  %ptrs248 = getelementptr inbounds %struct.nvkm_memory, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %ptrs248 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ptrs248, align 4
  %wr32249 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %wr32249 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %wr32249, align 4
  call void %142(ptr noundef %138, i64 noundef 28, i32 noundef 1) #8
  %143 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %data, align 4
  %ptrs250 = getelementptr inbounds %struct.nvkm_memory, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %ptrs250 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ptrs250, align 4
  %wr32251 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %wr32251 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %wr32251, align 4
  call void %148(ptr noundef %144, i64 noundef 32, i32 noundef 0) #8
  %149 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %data, align 4
  %ptrs252 = getelementptr inbounds %struct.nvkm_memory, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %ptrs252 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ptrs252, align 4
  %wr32253 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %wr32253 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %wr32253, align 4
  call void %154(ptr noundef %150, i64 noundef 40, i32 noundef 0) #8
  %155 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %data, align 4
  %ptrs254 = getelementptr inbounds %struct.nvkm_memory, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %ptrs254 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ptrs254, align 4
  %wr32255 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %wr32255 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %wr32255, align 4
  call void %160(ptr noundef %156, i64 noundef 44, i32 noundef 0) #8
  %161 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %data, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 4
  %release257 = getelementptr inbounds %struct.nvkm_memory_func, ptr %164, i32 0, i32 8
  %165 = ptrtoint ptr %release257 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %release257, align 4
  call void %166(ptr noundef %162) #8
  br label %if.end337

do.body258:                                       ; preds = %if.end213
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  call void @arm_heavy_mb() #8
  %167 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pri, align 4
  %add.ptr262 = getelementptr i8, ptr %168, i32 4233280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr262, i32 -2147483648) #8, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void @arm_heavy_mb() #8
  %169 = trunc i64 %shr236 to i32
  %conv267 = or i32 %169, -2147483648
  %170 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pri, align 4
  %add.ptr269 = getelementptr i8, ptr %171, i32 4232448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr269, i32 %conv267) #8, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %172 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pri, align 4
  %add.ptr274 = getelementptr i8, ptr %173, i32 4232452
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr274, i32 1) #8, !srcloc !100
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait275) #8
  %174 = call ptr @memset(ptr %_wait275, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 2000000000, ptr noundef nonnull %_wait275) #8
  br label %do.body278

do.body278:                                       ; preds = %do.cond288.do.body278_crit_edge, %do.body258
  %175 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pri, align 4
  %add.ptr281 = getelementptr i8, ptr %176, i32 4233216
  %177 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr281) #8, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %177)
  %tobool285.not = icmp sgt i32 %177, -1
  br i1 %tobool285.not, label %do.cond288, label %do.body278.if.end335_crit_edge

do.body278.if.end335_crit_edge:                   ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end335

do.cond288:                                       ; preds = %do.body278
  %call289 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait275) #8
  %cmp290 = icmp sgt i64 %call289, -1
  br i1 %cmp290, label %do.cond288.do.body278_crit_edge, label %do.end311

do.cond288.do.body278_crit_edge:                  ; preds = %do.cond288
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body278

do.end311:                                        ; preds = %do.cond288
  %178 = ptrtoint ptr %_wait275 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %_wait275, align 8
  %device314 = getelementptr inbounds %struct.nvkm_timer, ptr %179, i32 0, i32 1, i32 1
  %180 = ptrtoint ptr %device314 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %device314, align 4
  %dev315 = getelementptr inbounds %struct.nvkm_device, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %dev315 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev315, align 8
  %call316 = call ptr @dev_driver_string(ptr noundef %183) #8
  %184 = ptrtoint ptr %_wait275 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %_wait275, align 8
  %device319 = getelementptr inbounds %struct.nvkm_timer, ptr %185, i32 0, i32 1, i32 1
  %186 = ptrtoint ptr %device319 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %device319, align 4
  %dev320 = getelementptr inbounds %struct.nvkm_device, ptr %187, i32 0, i32 2
  %188 = ptrtoint ptr %dev320 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev320, align 8
  %init_name.i517 = getelementptr inbounds %struct.device, ptr %189, i32 0, i32 3
  %190 = ptrtoint ptr %init_name.i517 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %init_name.i517, align 8
  %tobool.not.i518 = icmp eq ptr %191, null
  br i1 %tobool.not.i518, label %if.end.i519, label %do.end311.dev_name.exit521_crit_edge

do.end311.dev_name.exit521_crit_edge:             ; preds = %do.end311
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit521

if.end.i519:                                      ; preds = %do.end311
  call void @__sanitizer_cov_trace_pc() #10
  %192 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %189, align 4
  br label %dev_name.exit521

dev_name.exit521:                                 ; preds = %if.end.i519, %do.end311.dev_name.exit521_crit_edge
  %retval.0.i520 = phi ptr [ %193, %if.end.i519 ], [ %191, %do.end311.dev_name.exit521_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1540, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call316, ptr noundef %retval.0.i520) #8
  br label %if.end335

if.end335:                                        ; preds = %dev_name.exit521, %do.body278.if.end335_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait275) #8
  br label %if.end337

if.end337:                                        ; preds = %if.end335, %if.end244
  %main = getelementptr inbounds %struct.gf100_grctx_func, ptr %3, i32 0, i32 1
  %194 = ptrtoint ptr %main to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %main, align 4
  call void %195(ptr noundef %gr, ptr noundef nonnull %info) #8
  %196 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pri, align 4
  %add.ptr343 = getelementptr i8, ptr %197, i32 4233988
  %198 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr343) #8, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %and349 = and i32 %198, 2147483647
  %199 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %pri, align 4
  %add.ptr352 = getelementptr i8, ptr %200, i32 4233988
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr352, i32 %and349) #8, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %201 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %pri, align 4
  %add.ptr358 = getelementptr i8, ptr %202, i32 4231168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr358, i32 256) #8, !srcloc !100
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait359) #8
  %203 = call ptr @memset(ptr %_wait359, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 2000000000, ptr noundef nonnull %_wait359) #8
  br label %do.body362

do.body362:                                       ; preds = %do.cond372.do.body362_crit_edge, %if.end337
  %204 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %pri, align 4
  %add.ptr365 = getelementptr i8, ptr %205, i32 4233984
  %206 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr365) #8, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %206)
  %tobool369.not = icmp sgt i32 %206, -1
  br i1 %tobool369.not, label %if.end424, label %do.cond372

do.cond372:                                       ; preds = %do.body362
  %call373 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait359) #8
  %cmp374 = icmp sgt i64 %call373, -1
  br i1 %cmp374, label %do.cond372.do.body362_crit_edge, label %do.end395

do.cond372.do.body362_crit_edge:                  ; preds = %do.cond372
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body362

do.end395:                                        ; preds = %do.cond372
  %207 = ptrtoint ptr %_wait359 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %_wait359, align 8
  %device398 = getelementptr inbounds %struct.nvkm_timer, ptr %208, i32 0, i32 1, i32 1
  %209 = ptrtoint ptr %device398 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %device398, align 4
  %dev399 = getelementptr inbounds %struct.nvkm_device, ptr %210, i32 0, i32 2
  %211 = ptrtoint ptr %dev399 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev399, align 8
  %call400 = call ptr @dev_driver_string(ptr noundef %212) #8
  %213 = ptrtoint ptr %_wait359 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %_wait359, align 8
  %device403 = getelementptr inbounds %struct.nvkm_timer, ptr %214, i32 0, i32 1, i32 1
  %215 = ptrtoint ptr %device403 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %device403, align 4
  %dev404 = getelementptr inbounds %struct.nvkm_device, ptr %216, i32 0, i32 2
  %217 = ptrtoint ptr %dev404 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev404, align 8
  %init_name.i522 = getelementptr inbounds %struct.device, ptr %218, i32 0, i32 3
  %219 = ptrtoint ptr %init_name.i522 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %init_name.i522, align 8
  %tobool.not.i523 = icmp eq ptr %220, null
  br i1 %tobool.not.i523, label %if.end.i524, label %do.end395.if.end419_crit_edge

do.end395.if.end419_crit_edge:                    ; preds = %do.end395
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end419

if.end.i524:                                      ; preds = %do.end395
  call void @__sanitizer_cov_trace_pc() #10
  %221 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %218, align 4
  br label %if.end419

if.end419:                                        ; preds = %if.end.i524, %do.end395.if.end419_crit_edge
  %retval.0.i525 = phi ptr [ %222, %if.end.i524 ], [ %220, %do.end395.if.end419_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1553, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call400, ptr noundef %retval.0.i525) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait359) #8
  br label %done

if.end424:                                        ; preds = %do.body362
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait359) #8
  %223 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %size, align 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %224, i32 noundef 3264) #12
  %data427 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 30
  %225 = ptrtoint ptr %data427 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %call9.i, ptr %data427, align 4
  %tobool429.not = icmp eq ptr %call9.i, null
  br i1 %tobool429.not, label %if.end424.done_crit_edge, label %if.then430

if.end424.done_crit_edge:                         ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then430:                                       ; preds = %if.end424
  %226 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %data, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %227, align 4
  %acquire432 = getelementptr inbounds %struct.nvkm_memory_func, ptr %229, i32 0, i32 7
  %230 = ptrtoint ptr %acquire432 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %acquire432, align 4
  %call433 = call ptr %231(ptr noundef %227) #8
  %232 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %cmp435540.not = icmp eq i32 %233, 0
  br i1 %cmp435540.not, label %if.then430.for.end_crit_edge, label %if.then430.for.body_crit_edge

if.then430.for.body_crit_edge:                    ; preds = %if.then430
  br label %for.body

if.then430.for.end_crit_edge:                     ; preds = %if.then430
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then430.for.body_crit_edge
  %i.0541 = phi i32 [ %add442, %for.body.for.body_crit_edge ], [ 0, %if.then430.for.body_crit_edge ]
  %234 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %data, align 4
  %ptrs437 = getelementptr inbounds %struct.nvkm_memory, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %ptrs437 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %ptrs437, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %237, align 4
  %add438 = add i32 %i.0541, 524288
  %conv439 = sext i32 %add438 to i64
  %call440 = call i32 %239(ptr noundef %235, i64 noundef %conv439) #8
  %240 = ptrtoint ptr %data427 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %data427, align 4
  %div = sdiv i32 %i.0541, 4
  %arrayidx = getelementptr i32, ptr %241, i32 %div
  %242 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %call440, ptr %arrayidx, align 4
  %add442 = add i32 %i.0541, 4
  %243 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %size, align 4
  %cmp435 = icmp ult i32 %add442, %244
  br i1 %cmp435, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then430.for.end_crit_edge
  %245 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %data, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %246, align 4
  %release444 = getelementptr inbounds %struct.nvkm_memory_func, ptr %248, i32 0, i32 8
  %249 = ptrtoint ptr %release444 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %release444, align 4
  call void %250(ptr noundef %246) #8
  br label %done

done:                                             ; preds = %for.end, %if.end424.done_crit_edge, %if.end419, %if.then238.done_crit_edge, %if.end208.done_crit_edge, %if.end201.done_crit_edge, %if.end197.done_crit_edge, %if.end192.done_crit_edge, %if.end188.done_crit_edge, %do.body175.done_crit_edge
  %ret.0 = phi i32 [ %call185, %do.body175.done_crit_edge ], [ %call189, %if.end188.done_crit_edge ], [ %call194, %if.end192.done_crit_edge ], [ %call198, %if.end197.done_crit_edge ], [ %call205, %if.end201.done_crit_edge ], [ %call210, %if.end208.done_crit_edge ], [ %call241, %if.then238.done_crit_edge ], [ 0, %for.end ], [ -16, %if.end419 ], [ -12, %if.end424.done_crit_edge ]
  %251 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %vmm, align 4
  call void @nvkm_vmm_put(ptr noundef %252, ptr noundef nonnull %ctx) #8
  call void @nvkm_memory_unref(ptr noundef nonnull %data) #8
  %253 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %vmm, align 4
  %255 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %inst, align 4
  call void @nvkm_vmm_part(ptr noundef %254, ptr noundef %256) #8
  call void @nvkm_vmm_unref(ptr noundef nonnull %vmm) #8
  call void @nvkm_memory_unref(ptr noundef nonnull %inst) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vmm) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inst) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_new(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_join(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_fecs_bind_pointer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_part(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @gf100_grctx_pack_icmd, !1, !"gf100_grctx_pack_icmd", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 273, i32 1}
!2 = !{ptr @gf100_grctx_init_902d_0, !3, !"gf100_grctx_init_902d_0", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 582, i32 1}
!4 = !{ptr @gf100_grctx_init_9039_0, !5, !"gf100_grctx_init_9039_0", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 601, i32 1}
!6 = !{ptr @gf100_grctx_init_90c0_0, !7, !"gf100_grctx_init_90c0_0", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 610, i32 1}
!8 = !{ptr @gf100_grctx_pack_mthd, !9, !"gf100_grctx_pack_mthd", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 628, i32 1}
!10 = !{ptr @gf100_grctx_init_main_0, !11, !"gf100_grctx_init_main_0", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 637, i32 1}
!12 = !{ptr @gf100_grctx_init_fe_0, !13, !"gf100_grctx_init_fe_0", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 643, i32 1}
!14 = !{ptr @gf100_grctx_init_pri_0, !15, !"gf100_grctx_init_pri_0", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 664, i32 1}
!16 = !{ptr @gf100_grctx_init_memfmt_0, !17, !"gf100_grctx_init_memfmt_0", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 675, i32 1}
!18 = !{ptr @gf100_grctx_init_rstr2d_0, !19, !"gf100_grctx_init_rstr2d_0", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 719, i32 1}
!20 = !{ptr @gf100_grctx_init_scc_0, !21, !"gf100_grctx_init_scc_0", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 732, i32 1}
!22 = !{ptr @gf100_grctx_pack_hub, !23, !"gf100_grctx_pack_hub", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 755, i32 1}
!24 = !{ptr @gf100_grctx_init_gpc_unk_0, !25, !"gf100_grctx_init_gpc_unk_0", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 769, i32 1}
!26 = !{ptr @gf100_grctx_init_prop_0, !27, !"gf100_grctx_init_prop_0", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 775, i32 1}
!28 = !{ptr @gf100_grctx_init_gpc_unk_1, !29, !"gf100_grctx_init_gpc_unk_1", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 789, i32 1}
!30 = !{ptr @gf100_grctx_init_zcull_0, !31, !"gf100_grctx_init_zcull_0", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 814, i32 1}
!32 = !{ptr @gf100_grctx_init_crstr_0, !33, !"gf100_grctx_init_crstr_0", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 823, i32 1}
!34 = !{ptr @gf100_grctx_init_gpm_0, !35, !"gf100_grctx_init_gpm_0", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 836, i32 1}
!36 = !{ptr @gf100_grctx_init_gcc_0, !37, !"gf100_grctx_init_gcc_0", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 845, i32 1}
!38 = !{ptr @gf100_grctx_pack_gpc_0, !39, !"gf100_grctx_pack_gpc_0", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 853, i32 1}
!40 = !{ptr @gf100_grctx_pack_gpc_1, !41, !"gf100_grctx_pack_gpc_1", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 863, i32 1}
!42 = !{ptr @gf100_grctx_pack_zcull, !43, !"gf100_grctx_pack_zcull", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 900, i32 1}
!44 = !{ptr @gf100_grctx_init_pe_0, !45, !"gf100_grctx_init_pe_0", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 906, i32 1}
!46 = !{ptr @gf100_grctx_init_wwdx_0, !47, !"gf100_grctx_init_wwdx_0", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 927, i32 1}
!48 = !{ptr @gf100_grctx_init_mpc_0, !49, !"gf100_grctx_init_mpc_0", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 941, i32 1}
!50 = !{ptr @gf100_grctx_init_tpccs_0, !51, !"gf100_grctx_init_tpccs_0", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 958, i32 1}
!52 = !{ptr @gf100_grctx_pack_tpc, !53, !"gf100_grctx_pack_tpc", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 978, i32 1}
!54 = !{ptr @.str, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 1282, i32 4}
!56 = !{ptr @.str.1, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.2, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.3, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.4, !55, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @gf100_grctx_generate_alpha_beta_tables._entry, !55, !"_entry", i1 false, i1 false}
!61 = !{ptr @gf100_grctx_generate_alpha_beta_tables._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.5, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 1451, i32 2}
!64 = !{ptr @.str.6, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 1483, i32 50}
!66 = !{ptr @gf100_grctx, !67, !"gf100_grctx", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 1579, i32 1}
!68 = !{ptr @gf100_grctx_init_icmd_0, !69, !"gf100_grctx_init_icmd_0", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 35, i32 1}
!70 = !{ptr @gf100_grctx_init_9097_0, !71, !"gf100_grctx_init_9097_0", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 279, i32 1}
!72 = !{ptr @gf100_grctx_init_ds_0, !73, !"gf100_grctx_init_ds_0", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 697, i32 1}
!74 = !{ptr @gf100_grctx_init_pd_0, !75, !"gf100_grctx_init_pd_0", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 709, i32 1}
!76 = !{ptr @gf100_grctx_init_be_0, !77, !"gf100_grctx_init_be_0", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 743, i32 1}
!78 = !{ptr @gf100_grctx_init_setup_0, !79, !"gf100_grctx_init_setup_0", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 801, i32 1}
!80 = !{ptr @gf100_grctx_init_zcullr_0, !81, !"gf100_grctx_init_zcullr_0", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 871, i32 1}
!82 = !{ptr @gf100_grctx_init_tex_0, !83, !"gf100_grctx_init_tex_0", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 916, i32 1}
!84 = !{ptr @gf100_grctx_init_l1c_0, !85, !"gf100_grctx_init_l1c_0", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 950, i32 1}
!86 = !{ptr @gf100_grctx_init_sm_0, !87, !"gf100_grctx_init_sm_0", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 965, i32 1}
!88 = !{ptr @gf100_grctx_alpha_beta_map, !89, !"gf100_grctx_alpha_beta_map", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c", i32 1170, i32 1}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 2156341913}
!100 = !{i64 5459786}
!101 = !{i64 5460204}
!102 = !{i64 2156342748}
!103 = !{i64 2156343150}
!104 = !{i64 2156345566}
!105 = !{i64 2156345951}
!106 = !{i64 2156346358}
!107 = !{i64 2156346861}
!108 = !{i64 2156347336}
!109 = !{i64 2156347864}
!110 = !{i64 2156348332}
!111 = !{i64 2156348757}
!112 = !{i64 2156349263}
!113 = !{i64 2156349738}
!114 = !{i64 2156350191}
!115 = !{i64 2156350961}
!116 = !{i64 2156351363}
!117 = distinct !{!117, !118}
!118 = !{!"llvm.loop.peeled.count", i32 1}
!119 = !{i64 2156355965}
!120 = !{i64 2156356389}
!121 = !{i64 2156356918}
!122 = !{i64 2156357457}
!123 = !{i64 2156358021}
!124 = !{i64 2156358572}
!125 = !{i64 2156359102}
!126 = !{i64 2156359653}
!127 = !{i8 0, i8 2}
!128 = !{i64 2156360486}
!129 = !{i64 2156360888}
!130 = !{i64 2156361337}
!131 = !{i64 2156361800}
!132 = !{i64 2156363683}
!133 = !{i64 2156364921}
!134 = !{i64 2156367681}
!135 = !{i64 2156368083}
!136 = !{i64 2156370490}
!137 = !{i64 2156370832}
!138 = !{i64 2156371245}
!139 = !{i64 2156372460}
!140 = !{i64 2156372887}
!141 = !{i64 2156373307}
!142 = !{i64 2156375184}
!143 = !{i64 2156376850}
!144 = !{i64 2156377252}
!145 = !{i64 2156377697}
!146 = !{i64 2156379580}
