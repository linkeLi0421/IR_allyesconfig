; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_device_pci_device = type { i16, ptr, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_device_pci_vendor = type { i16, i16, ptr, %struct.nvkm_device_quirk }
%struct.nvkm_device_quirk = type { i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.81, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.81 = type { ptr }
%struct.nvkm_device_pci = type { %struct.nvkm_device, ptr, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.173, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.173 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.nvkm_pci = type { ptr, %struct.nvkm_subdev, ptr, i32, %struct.anon.92, %struct.anon.93, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.92 = type { ptr, i32, i64, i64, i32, i8, i8 }
%struct.anon.93 = type { i32, i8 }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.123], i32, [16 x %struct.anon.124], ptr, %struct.anon.125, %struct.anon.125, %struct.mutex, %struct.nvkm_device_oclass }
%struct.anon.123 = type { i8, i64 }
%struct.anon.124 = type { i8, i8 }
%struct.anon.125 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@nvkm_device_pci_10de = internal constant { [753 x %struct.nvkm_device_pci_device], [2260 x i8] } { [753 x %struct.nvkm_device_pci_device] [%struct.nvkm_device_pci_device { i16 32, ptr @.str, ptr null }, %struct.nvkm_device_pci_device { i16 40, ptr @.str.1, ptr null }, %struct.nvkm_device_pci_device { i16 41, ptr @.str.2, ptr null }, %struct.nvkm_device_pci_device { i16 44, ptr @.str.3, ptr null }, %struct.nvkm_device_pci_device { i16 45, ptr @.str.4, ptr null }, %struct.nvkm_device_pci_device { i16 64, ptr @.str.5, ptr null }, %struct.nvkm_device_pci_device { i16 65, ptr @.str.6, ptr null }, %struct.nvkm_device_pci_device { i16 66, ptr @.str.7, ptr null }, %struct.nvkm_device_pci_device { i16 67, ptr @.str.8, ptr null }, %struct.nvkm_device_pci_device { i16 68, ptr @.str.9, ptr null }, %struct.nvkm_device_pci_device { i16 69, ptr @.str.10, ptr null }, %struct.nvkm_device_pci_device { i16 70, ptr @.str.10, ptr null }, %struct.nvkm_device_pci_device { i16 71, ptr @.str.11, ptr null }, %struct.nvkm_device_pci_device { i16 72, ptr @.str.9, ptr null }, %struct.nvkm_device_pci_device { i16 78, ptr @.str.12, ptr null }, %struct.nvkm_device_pci_device { i16 144, ptr @.str.13, ptr null }, %struct.nvkm_device_pci_device { i16 145, ptr @.str.13, ptr null }, %struct.nvkm_device_pci_device { i16 146, ptr @.str.14, ptr null }, %struct.nvkm_device_pci_device { i16 147, ptr @.str.15, ptr null }, %struct.nvkm_device_pci_device { i16 149, ptr @.str.16, ptr null }, %struct.nvkm_device_pci_device { i16 152, ptr @.str.17, ptr null }, %struct.nvkm_device_pci_device { i16 153, ptr @.str.18, ptr null }, %struct.nvkm_device_pci_device { i16 157, ptr @.str.19, ptr null }, %struct.nvkm_device_pci_device { i16 160, ptr @.str.20, ptr null }, %struct.nvkm_device_pci_device { i16 192, ptr @.str.11, ptr null }, %struct.nvkm_device_pci_device { i16 193, ptr @.str.6, ptr null }, %struct.nvkm_device_pci_device { i16 194, ptr @.str.7, ptr null }, %struct.nvkm_device_pci_device { i16 195, ptr @.str.9, ptr null }, %struct.nvkm_device_pci_device { i16 200, ptr @.str.21, ptr null }, %struct.nvkm_device_pci_device { i16 201, ptr @.str.22, ptr null }, %struct.nvkm_device_pci_device { i16 204, ptr @.str.23, ptr null }, %struct.nvkm_device_pci_device { i16 205, ptr @.str.24, ptr null }, %struct.nvkm_device_pci_device { i16 206, ptr @.str.25, ptr null }, %struct.nvkm_device_pci_device { i16 241, ptr @.str.26, ptr null }, %struct.nvkm_device_pci_device { i16 242, ptr @.str.27, ptr null }, %struct.nvkm_device_pci_device { i16 243, ptr @.str.28, ptr null }, %struct.nvkm_device_pci_device { i16 244, ptr @.str.29, ptr null }, %struct.nvkm_device_pci_device { i16 245, ptr @.str.15, ptr null }, %struct.nvkm_device_pci_device { i16 246, ptr @.str.11, ptr null }, %struct.nvkm_device_pci_device { i16 248, ptr @.str.30, ptr null }, %struct.nvkm_device_pci_device { i16 249, ptr @.str.5, ptr null }, %struct.nvkm_device_pci_device { i16 250, ptr @.str.31, ptr null }, %struct.nvkm_device_pci_device { i16 251, ptr @.str.32, ptr null }, %struct.nvkm_device_pci_device { i16 252, ptr @.str.33, ptr null }, %struct.nvkm_device_pci_device { i16 253, ptr @.str.34, ptr null }, %struct.nvkm_device_pci_device { i16 254, ptr @.str.35, ptr null }, %struct.nvkm_device_pci_device { i16 256, ptr @.str.36, ptr null }, %struct.nvkm_device_pci_device { i16 257, ptr @.str.37, ptr null }, %struct.nvkm_device_pci_device { i16 259, ptr @.str.38, ptr null }, %struct.nvkm_device_pci_device { i16 272, ptr @.str.39, ptr null }, %struct.nvkm_device_pci_device { i16 273, ptr @.str.40, ptr null }, %struct.nvkm_device_pci_device { i16 274, ptr @.str.41, ptr null }, %struct.nvkm_device_pci_device { i16 275, ptr @.str.42, ptr null }, %struct.nvkm_device_pci_device { i16 320, ptr @.str.26, ptr null }, %struct.nvkm_device_pci_device { i16 321, ptr @.str.27, ptr null }, %struct.nvkm_device_pci_device { i16 322, ptr @.str.29, ptr null }, %struct.nvkm_device_pci_device { i16 323, ptr @.str.43, ptr null }, %struct.nvkm_device_pci_device { i16 324, ptr @.str.44, ptr null }, %struct.nvkm_device_pci_device { i16 325, ptr @.str.45, ptr null }, %struct.nvkm_device_pci_device { i16 326, ptr @.str.46, ptr null }, %struct.nvkm_device_pci_device { i16 327, ptr @.str.47, ptr null }, %struct.nvkm_device_pci_device { i16 328, ptr @.str.44, ptr null }, %struct.nvkm_device_pci_device { i16 329, ptr @.str.48, ptr null }, %struct.nvkm_device_pci_device { i16 330, ptr @.str.49, ptr null }, %struct.nvkm_device_pci_device { i16 332, ptr @.str.50, ptr null }, %struct.nvkm_device_pci_device { i16 333, ptr @.str.51, ptr null }, %struct.nvkm_device_pci_device { i16 334, ptr @.str.52, ptr null }, %struct.nvkm_device_pci_device { i16 335, ptr @.str.28, ptr null }, %struct.nvkm_device_pci_device { i16 336, ptr @.str.53, ptr null }, %struct.nvkm_device_pci_device { i16 337, ptr @.str.54, ptr null }, %struct.nvkm_device_pci_device { i16 338, ptr @.str.55, ptr null }, %struct.nvkm_device_pci_device { i16 339, ptr @.str.56, ptr null }, %struct.nvkm_device_pci_device { i16 352, ptr @.str.57, ptr null }, %struct.nvkm_device_pci_device { i16 353, ptr @.str.58, ptr null }, %struct.nvkm_device_pci_device { i16 354, ptr @.str.59, ptr null }, %struct.nvkm_device_pci_device { i16 355, ptr @.str.60, ptr null }, %struct.nvkm_device_pci_device { i16 356, ptr @.str.61, ptr null }, %struct.nvkm_device_pci_device { i16 357, ptr @.str.62, ptr null }, %struct.nvkm_device_pci_device { i16 358, ptr @.str.63, ptr null }, %struct.nvkm_device_pci_device { i16 359, ptr @.str.61, ptr null }, %struct.nvkm_device_pci_device { i16 360, ptr @.str.63, ptr null }, %struct.nvkm_device_pci_device { i16 361, ptr @.str.64, ptr null }, %struct.nvkm_device_pci_device { i16 362, ptr @.str.65, ptr null }, %struct.nvkm_device_pci_device { i16 368, ptr @.str.66, ptr null }, %struct.nvkm_device_pci_device { i16 369, ptr @.str.67, ptr null }, %struct.nvkm_device_pci_device { i16 370, ptr @.str.68, ptr null }, %struct.nvkm_device_pci_device { i16 371, ptr @.str.69, ptr null }, %struct.nvkm_device_pci_device { i16 372, ptr @.str.70, ptr null }, %struct.nvkm_device_pci_device { i16 373, ptr @.str.71, ptr null }, %struct.nvkm_device_pci_device { i16 374, ptr @.str.72, ptr null }, %struct.nvkm_device_pci_device { i16 375, ptr @.str.73, ptr null }, %struct.nvkm_device_pci_device { i16 376, ptr @.str.74, ptr null }, %struct.nvkm_device_pci_device { i16 377, ptr @.str.75, ptr null }, %struct.nvkm_device_pci_device { i16 378, ptr @.str.76, ptr null }, %struct.nvkm_device_pci_device { i16 380, ptr @.str.77, ptr null }, %struct.nvkm_device_pci_device { i16 381, ptr @.str.78, ptr null }, %struct.nvkm_device_pci_device { i16 385, ptr @.str.79, ptr null }, %struct.nvkm_device_pci_device { i16 386, ptr @.str.80, ptr null }, %struct.nvkm_device_pci_device { i16 387, ptr @.str.81, ptr null }, %struct.nvkm_device_pci_device { i16 389, ptr @.str.82, ptr null }, %struct.nvkm_device_pci_device { i16 392, ptr @.str.83, ptr null }, %struct.nvkm_device_pci_device { i16 393, ptr @.str.84, ptr @nvkm_device_pci_10de_0189 }, %struct.nvkm_device_pci_device { i16 394, ptr @.str.85, ptr null }, %struct.nvkm_device_pci_device { i16 395, ptr @.str.86, ptr null }, %struct.nvkm_device_pci_device { i16 396, ptr @.str.87, ptr null }, %struct.nvkm_device_pci_device { i16 401, ptr @.str.88, ptr null }, %struct.nvkm_device_pci_device { i16 403, ptr @.str.89, ptr null }, %struct.nvkm_device_pci_device { i16 404, ptr @.str.90, ptr null }, %struct.nvkm_device_pci_device { i16 407, ptr @.str.91, ptr null }, %struct.nvkm_device_pci_device { i16 413, ptr @.str.92, ptr null }, %struct.nvkm_device_pci_device { i16 414, ptr @.str.93, ptr null }, %struct.nvkm_device_pci_device { i16 416, ptr @.str.94, ptr null }, %struct.nvkm_device_pci_device { i16 464, ptr @.str.95, ptr null }, %struct.nvkm_device_pci_device { i16 465, ptr @.str.96, ptr null }, %struct.nvkm_device_pci_device { i16 466, ptr @.str.97, ptr null }, %struct.nvkm_device_pci_device { i16 467, ptr @.str.98, ptr null }, %struct.nvkm_device_pci_device { i16 470, ptr @.str.99, ptr null }, %struct.nvkm_device_pci_device { i16 471, ptr @.str.100, ptr null }, %struct.nvkm_device_pci_device { i16 472, ptr @.str.101, ptr null }, %struct.nvkm_device_pci_device { i16 474, ptr @.str.102, ptr null }, %struct.nvkm_device_pci_device { i16 475, ptr @.str.103, ptr null }, %struct.nvkm_device_pci_device { i16 476, ptr @.str.104, ptr null }, %struct.nvkm_device_pci_device { i16 477, ptr @.str.105, ptr null }, %struct.nvkm_device_pci_device { i16 478, ptr @.str.106, ptr null }, %struct.nvkm_device_pci_device { i16 479, ptr @.str.107, ptr null }, %struct.nvkm_device_pci_device { i16 496, ptr @.str.108, ptr @nvkm_device_pci_10de_01f0 }, %struct.nvkm_device_pci_device { i16 512, ptr @.str.109, ptr null }, %struct.nvkm_device_pci_device { i16 513, ptr @.str.110, ptr null }, %struct.nvkm_device_pci_device { i16 514, ptr @.str.111, ptr null }, %struct.nvkm_device_pci_device { i16 515, ptr @.str.112, ptr null }, %struct.nvkm_device_pci_device { i16 529, ptr @.str.6, ptr null }, %struct.nvkm_device_pci_device { i16 530, ptr @.str.7, ptr null }, %struct.nvkm_device_pci_device { i16 533, ptr @.str.10, ptr null }, %struct.nvkm_device_pci_device { i16 536, ptr @.str.9, ptr null }, %struct.nvkm_device_pci_device { i16 545, ptr @.str.28, ptr null }, %struct.nvkm_device_pci_device { i16 546, ptr @.str.113, ptr null }, %struct.nvkm_device_pci_device { i16 576, ptr @.str.114, ptr null }, %struct.nvkm_device_pci_device { i16 577, ptr @.str.115, ptr null }, %struct.nvkm_device_pci_device { i16 578, ptr @.str.116, ptr null }, %struct.nvkm_device_pci_device { i16 580, ptr @.str.117, ptr null }, %struct.nvkm_device_pci_device { i16 581, ptr @.str.118, ptr null }, %struct.nvkm_device_pci_device { i16 583, ptr @.str.119, ptr null }, %struct.nvkm_device_pci_device { i16 592, ptr @.str.120, ptr null }, %struct.nvkm_device_pci_device { i16 593, ptr @.str.121, ptr null }, %struct.nvkm_device_pci_device { i16 595, ptr @.str.122, ptr null }, %struct.nvkm_device_pci_device { i16 600, ptr @.str.123, ptr null }, %struct.nvkm_device_pci_device { i16 601, ptr @.str.124, ptr null }, %struct.nvkm_device_pci_device { i16 603, ptr @.str.125, ptr null }, %struct.nvkm_device_pci_device { i16 640, ptr @.str.126, ptr null }, %struct.nvkm_device_pci_device { i16 641, ptr @.str.127, ptr null }, %struct.nvkm_device_pci_device { i16 642, ptr @.str.128, ptr null }, %struct.nvkm_device_pci_device { i16 646, ptr @.str.129, ptr null }, %struct.nvkm_device_pci_device { i16 648, ptr @.str.130, ptr null }, %struct.nvkm_device_pci_device { i16 649, ptr @.str.131, ptr null }, %struct.nvkm_device_pci_device { i16 652, ptr @.str.132, ptr null }, %struct.nvkm_device_pci_device { i16 656, ptr @.str.133, ptr null }, %struct.nvkm_device_pci_device { i16 657, ptr @.str.134, ptr null }, %struct.nvkm_device_pci_device { i16 658, ptr @.str.135, ptr null }, %struct.nvkm_device_pci_device { i16 659, ptr @.str.136, ptr null }, %struct.nvkm_device_pci_device { i16 660, ptr @.str.136, ptr null }, %struct.nvkm_device_pci_device { i16 661, ptr @.str.137, ptr null }, %struct.nvkm_device_pci_device { i16 663, ptr @.str.138, ptr null }, %struct.nvkm_device_pci_device { i16 664, ptr @.str.139, ptr null }, %struct.nvkm_device_pci_device { i16 665, ptr @.str.140, ptr null }, %struct.nvkm_device_pci_device { i16 666, ptr @.str.141, ptr null }, %struct.nvkm_device_pci_device { i16 667, ptr @.str.142, ptr null }, %struct.nvkm_device_pci_device { i16 668, ptr @.str.143, ptr null }, %struct.nvkm_device_pci_device { i16 669, ptr @.str.144, ptr null }, %struct.nvkm_device_pci_device { i16 670, ptr @.str.145, ptr null }, %struct.nvkm_device_pci_device { i16 671, ptr @.str.146, ptr null }, %struct.nvkm_device_pci_device { i16 736, ptr @.str.147, ptr null }, %struct.nvkm_device_pci_device { i16 737, ptr @.str.148, ptr null }, %struct.nvkm_device_pci_device { i16 738, ptr @.str.149, ptr null }, %struct.nvkm_device_pci_device { i16 739, ptr @.str.135, ptr null }, %struct.nvkm_device_pci_device { i16 740, ptr @.str.137, ptr null }, %struct.nvkm_device_pci_device { i16 769, ptr @.str.150, ptr null }, %struct.nvkm_device_pci_device { i16 770, ptr @.str.151, ptr null }, %struct.nvkm_device_pci_device { i16 776, ptr @.str.152, ptr null }, %struct.nvkm_device_pci_device { i16 777, ptr @.str.153, ptr null }, %struct.nvkm_device_pci_device { i16 785, ptr @.str.154, ptr null }, %struct.nvkm_device_pci_device { i16 786, ptr @.str.155, ptr null }, %struct.nvkm_device_pci_device { i16 788, ptr @.str.156, ptr null }, %struct.nvkm_device_pci_device { i16 794, ptr @.str.157, ptr null }, %struct.nvkm_device_pci_device { i16 795, ptr @.str.158, ptr null }, %struct.nvkm_device_pci_device { i16 796, ptr @.str.159, ptr null }, %struct.nvkm_device_pci_device { i16 800, ptr @.str.160, ptr null }, %struct.nvkm_device_pci_device { i16 801, ptr @.str.161, ptr null }, %struct.nvkm_device_pci_device { i16 802, ptr @.str.160, ptr @nvkm_device_pci_10de_0322 }, %struct.nvkm_device_pci_device { i16 803, ptr @.str.162, ptr null }, %struct.nvkm_device_pci_device { i16 804, ptr @.str.163, ptr null }, %struct.nvkm_device_pci_device { i16 805, ptr @.str.164, ptr null }, %struct.nvkm_device_pci_device { i16 806, ptr @.str.165, ptr null }, %struct.nvkm_device_pci_device { i16 807, ptr @.str.166, ptr null }, %struct.nvkm_device_pci_device { i16 808, ptr @.str.167, ptr null }, %struct.nvkm_device_pci_device { i16 810, ptr @.str.168, ptr null }, %struct.nvkm_device_pci_device { i16 811, ptr @.str.169, ptr null }, %struct.nvkm_device_pci_device { i16 812, ptr @.str.170, ptr null }, %struct.nvkm_device_pci_device { i16 813, ptr @.str.171, ptr null }, %struct.nvkm_device_pci_device { i16 816, ptr @.str.172, ptr null }, %struct.nvkm_device_pci_device { i16 817, ptr @.str.173, ptr null }, %struct.nvkm_device_pci_device { i16 818, ptr @.str.174, ptr null }, %struct.nvkm_device_pci_device { i16 819, ptr @.str.175, ptr null }, %struct.nvkm_device_pci_device { i16 820, ptr @.str.176, ptr null }, %struct.nvkm_device_pci_device { i16 824, ptr @.str.177, ptr null }, %struct.nvkm_device_pci_device { i16 831, ptr @.str.178, ptr null }, %struct.nvkm_device_pci_device { i16 833, ptr @.str.179, ptr null }, %struct.nvkm_device_pci_device { i16 834, ptr @.str.180, ptr null }, %struct.nvkm_device_pci_device { i16 835, ptr @.str.181, ptr null }, %struct.nvkm_device_pci_device { i16 836, ptr @.str.182, ptr null }, %struct.nvkm_device_pci_device { i16 839, ptr @.str.183, ptr null }, %struct.nvkm_device_pci_device { i16 840, ptr @.str.183, ptr null }, %struct.nvkm_device_pci_device { i16 844, ptr @.str.184, ptr null }, %struct.nvkm_device_pci_device { i16 846, ptr @.str.185, ptr null }, %struct.nvkm_device_pci_device { i16 907, ptr @.str.186, ptr null }, %struct.nvkm_device_pci_device { i16 912, ptr @.str.186, ptr null }, %struct.nvkm_device_pci_device { i16 913, ptr @.str.147, ptr null }, %struct.nvkm_device_pci_device { i16 914, ptr @.str.148, ptr null }, %struct.nvkm_device_pci_device { i16 915, ptr @.str.149, ptr null }, %struct.nvkm_device_pci_device { i16 916, ptr @.str.187, ptr null }, %struct.nvkm_device_pci_device { i16 917, ptr @.str.149, ptr null }, %struct.nvkm_device_pci_device { i16 919, ptr @.str.188, ptr null }, %struct.nvkm_device_pci_device { i16 920, ptr @.str.189, ptr null }, %struct.nvkm_device_pci_device { i16 921, ptr @.str.190, ptr null }, %struct.nvkm_device_pci_device { i16 924, ptr @.str.191, ptr null }, %struct.nvkm_device_pci_device { i16 926, ptr @.str.192, ptr null }, %struct.nvkm_device_pci_device { i16 976, ptr @.str.193, ptr null }, %struct.nvkm_device_pci_device { i16 977, ptr @.str.194, ptr null }, %struct.nvkm_device_pci_device { i16 978, ptr @.str.195, ptr null }, %struct.nvkm_device_pci_device { i16 981, ptr @.str.196, ptr null }, %struct.nvkm_device_pci_device { i16 982, ptr @.str.197, ptr null }, %struct.nvkm_device_pci_device { i16 1024, ptr @.str.198, ptr null }, %struct.nvkm_device_pci_device { i16 1025, ptr @.str.199, ptr null }, %struct.nvkm_device_pci_device { i16 1026, ptr @.str.199, ptr null }, %struct.nvkm_device_pci_device { i16 1027, ptr @.str.200, ptr null }, %struct.nvkm_device_pci_device { i16 1028, ptr @.str.201, ptr null }, %struct.nvkm_device_pci_device { i16 1029, ptr @.str.202, ptr null }, %struct.nvkm_device_pci_device { i16 1030, ptr @.str.203, ptr null }, %struct.nvkm_device_pci_device { i16 1031, ptr @.str.204, ptr null }, %struct.nvkm_device_pci_device { i16 1032, ptr @.str.205, ptr null }, %struct.nvkm_device_pci_device { i16 1033, ptr @.str.206, ptr null }, %struct.nvkm_device_pci_device { i16 1034, ptr @.str.207, ptr null }, %struct.nvkm_device_pci_device { i16 1035, ptr @.str.208, ptr null }, %struct.nvkm_device_pci_device { i16 1036, ptr @.str.209, ptr null }, %struct.nvkm_device_pci_device { i16 1037, ptr @.str.210, ptr null }, %struct.nvkm_device_pci_device { i16 1038, ptr @.str.211, ptr null }, %struct.nvkm_device_pci_device { i16 1039, ptr @.str.212, ptr null }, %struct.nvkm_device_pci_device { i16 1040, ptr @.str.213, ptr null }, %struct.nvkm_device_pci_device { i16 1056, ptr @.str.214, ptr null }, %struct.nvkm_device_pci_device { i16 1057, ptr @.str.215, ptr null }, %struct.nvkm_device_pci_device { i16 1058, ptr @.str.201, ptr null }, %struct.nvkm_device_pci_device { i16 1059, ptr @.str.203, ptr null }, %struct.nvkm_device_pci_device { i16 1060, ptr @.str.201, ptr null }, %struct.nvkm_device_pci_device { i16 1061, ptr @.str.216, ptr null }, %struct.nvkm_device_pci_device { i16 1062, ptr @.str.217, ptr null }, %struct.nvkm_device_pci_device { i16 1063, ptr @.str.218, ptr null }, %struct.nvkm_device_pci_device { i16 1064, ptr @.str.219, ptr null }, %struct.nvkm_device_pci_device { i16 1065, ptr @.str.220, ptr null }, %struct.nvkm_device_pci_device { i16 1066, ptr @.str.221, ptr null }, %struct.nvkm_device_pci_device { i16 1067, ptr @.str.222, ptr null }, %struct.nvkm_device_pci_device { i16 1068, ptr @.str.223, ptr null }, %struct.nvkm_device_pci_device { i16 1069, ptr @.str.224, ptr null }, %struct.nvkm_device_pci_device { i16 1070, ptr @.str.225, ptr null }, %struct.nvkm_device_pci_device { i16 1071, ptr @.str.226, ptr null }, %struct.nvkm_device_pci_device { i16 1329, ptr @.str.227, ptr null }, %struct.nvkm_device_pci_device { i16 1331, ptr @.str.228, ptr null }, %struct.nvkm_device_pci_device { i16 1338, ptr @.str.229, ptr null }, %struct.nvkm_device_pci_device { i16 1339, ptr @.str.229, ptr null }, %struct.nvkm_device_pci_device { i16 1342, ptr @.str.197, ptr null }, %struct.nvkm_device_pci_device { i16 1504, ptr @.str.230, ptr null }, %struct.nvkm_device_pci_device { i16 1505, ptr @.str.231, ptr null }, %struct.nvkm_device_pci_device { i16 1506, ptr @.str.232, ptr null }, %struct.nvkm_device_pci_device { i16 1507, ptr @.str.233, ptr null }, %struct.nvkm_device_pci_device { i16 1510, ptr @.str.234, ptr null }, %struct.nvkm_device_pci_device { i16 1511, ptr @.str.235, ptr @nvkm_device_pci_10de_05e7 }, %struct.nvkm_device_pci_device { i16 1514, ptr @.str.232, ptr null }, %struct.nvkm_device_pci_device { i16 1515, ptr @.str.230, ptr null }, %struct.nvkm_device_pci_device { i16 1517, ptr @.str.236, ptr null }, %struct.nvkm_device_pci_device { i16 1528, ptr @.str.237, ptr null }, %struct.nvkm_device_pci_device { i16 1529, ptr @.str.238, ptr null }, %struct.nvkm_device_pci_device { i16 1533, ptr @.str.239, ptr null }, %struct.nvkm_device_pci_device { i16 1534, ptr @.str.240, ptr null }, %struct.nvkm_device_pci_device { i16 1535, ptr @.str.241, ptr null }, %struct.nvkm_device_pci_device { i16 1536, ptr @.str.242, ptr null }, %struct.nvkm_device_pci_device { i16 1537, ptr @.str.243, ptr null }, %struct.nvkm_device_pci_device { i16 1538, ptr @.str.244, ptr null }, %struct.nvkm_device_pci_device { i16 1539, ptr @.str.245, ptr null }, %struct.nvkm_device_pci_device { i16 1540, ptr @.str.246, ptr null }, %struct.nvkm_device_pci_device { i16 1541, ptr @.str.243, ptr null }, %struct.nvkm_device_pci_device { i16 1542, ptr @.str.247, ptr null }, %struct.nvkm_device_pci_device { i16 1543, ptr @.str.248, ptr null }, %struct.nvkm_device_pci_device { i16 1544, ptr @.str.249, ptr null }, %struct.nvkm_device_pci_device { i16 1545, ptr @.str.250, ptr @nvkm_device_pci_10de_0609 }, %struct.nvkm_device_pci_device { i16 1546, ptr @.str.251, ptr null }, %struct.nvkm_device_pci_device { i16 1547, ptr @.str.252, ptr null }, %struct.nvkm_device_pci_device { i16 1548, ptr @.str.253, ptr null }, %struct.nvkm_device_pci_device { i16 1549, ptr @.str.247, ptr null }, %struct.nvkm_device_pci_device { i16 1551, ptr @.str.254, ptr null }, %struct.nvkm_device_pci_device { i16 1552, ptr @.str.255, ptr null }, %struct.nvkm_device_pci_device { i16 1553, ptr @.str.244, ptr null }, %struct.nvkm_device_pci_device { i16 1554, ptr @.str.256, ptr null }, %struct.nvkm_device_pci_device { i16 1555, ptr @.str.257, ptr null }, %struct.nvkm_device_pci_device { i16 1556, ptr @.str.243, ptr null }, %struct.nvkm_device_pci_device { i16 1557, ptr @.str.258, ptr null }, %struct.nvkm_device_pci_device { i16 1559, ptr @.str.249, ptr null }, %struct.nvkm_device_pci_device { i16 1560, ptr @.str.259, ptr null }, %struct.nvkm_device_pci_device { i16 1561, ptr @.str.260, ptr null }, %struct.nvkm_device_pci_device { i16 1562, ptr @.str.261, ptr null }, %struct.nvkm_device_pci_device { i16 1563, ptr @.str.262, ptr null }, %struct.nvkm_device_pci_device { i16 1564, ptr @.str.263, ptr null }, %struct.nvkm_device_pci_device { i16 1565, ptr @.str.264, ptr null }, %struct.nvkm_device_pci_device { i16 1566, ptr @.str.265, ptr null }, %struct.nvkm_device_pci_device { i16 1567, ptr @.str.266, ptr null }, %struct.nvkm_device_pci_device { i16 1569, ptr @.str.245, ptr null }, %struct.nvkm_device_pci_device { i16 1570, ptr @.str.267, ptr null }, %struct.nvkm_device_pci_device { i16 1571, ptr @.str.268, ptr null }, %struct.nvkm_device_pci_device { i16 1573, ptr @.str.269, ptr null }, %struct.nvkm_device_pci_device { i16 1574, ptr @.str.270, ptr null }, %struct.nvkm_device_pci_device { i16 1575, ptr @.str.271, ptr null }, %struct.nvkm_device_pci_device { i16 1576, ptr @.str.272, ptr null }, %struct.nvkm_device_pci_device { i16 1578, ptr @.str.273, ptr null }, %struct.nvkm_device_pci_device { i16 1579, ptr @.str.274, ptr null }, %struct.nvkm_device_pci_device { i16 1580, ptr @.str.272, ptr null }, %struct.nvkm_device_pci_device { i16 1581, ptr @.str.267, ptr null }, %struct.nvkm_device_pci_device { i16 1582, ptr @.str.267, ptr @nvkm_device_pci_10de_062e }, %struct.nvkm_device_pci_device { i16 1584, ptr @.str.275, ptr null }, %struct.nvkm_device_pci_device { i16 1585, ptr @.str.276, ptr null }, %struct.nvkm_device_pci_device { i16 1586, ptr @.str.277, ptr null }, %struct.nvkm_device_pci_device { i16 1589, ptr @.str.255, ptr null }, %struct.nvkm_device_pci_device { i16 1591, ptr @.str.267, ptr null }, %struct.nvkm_device_pci_device { i16 1592, ptr @.str.278, ptr null }, %struct.nvkm_device_pci_device { i16 1594, ptr @.str.279, ptr null }, %struct.nvkm_device_pci_device { i16 1600, ptr @.str.280, ptr null }, %struct.nvkm_device_pci_device { i16 1601, ptr @.str.223, ptr null }, %struct.nvkm_device_pci_device { i16 1603, ptr @.str.280, ptr null }, %struct.nvkm_device_pci_device { i16 1604, ptr @.str.281, ptr null }, %struct.nvkm_device_pci_device { i16 1605, ptr @.str.281, ptr null }, %struct.nvkm_device_pci_device { i16 1606, ptr @.str.282, ptr null }, %struct.nvkm_device_pci_device { i16 1607, ptr @.str.283, ptr null }, %struct.nvkm_device_pci_device { i16 1608, ptr @.str.284, ptr null }, %struct.nvkm_device_pci_device { i16 1609, ptr @.str.283, ptr @nvkm_device_pci_10de_0649 }, %struct.nvkm_device_pci_device { i16 1610, ptr @.str.285, ptr null }, %struct.nvkm_device_pci_device { i16 1611, ptr @.str.286, ptr null }, %struct.nvkm_device_pci_device { i16 1612, ptr @.str.287, ptr null }, %struct.nvkm_device_pci_device { i16 1617, ptr @.str.288, ptr null }, %struct.nvkm_device_pci_device { i16 1618, ptr @.str.289, ptr @nvkm_device_pci_10de_0652 }, %struct.nvkm_device_pci_device { i16 1619, ptr @.str.290, ptr null }, %struct.nvkm_device_pci_device { i16 1620, ptr @.str.291, ptr @nvkm_device_pci_10de_0654 }, %struct.nvkm_device_pci_device { i16 1621, ptr null, ptr @nvkm_device_pci_10de_0655 }, %struct.nvkm_device_pci_device { i16 1622, ptr null, ptr @nvkm_device_pci_10de_0656 }, %struct.nvkm_device_pci_device { i16 1624, ptr @.str.292, ptr null }, %struct.nvkm_device_pci_device { i16 1625, ptr @.str.293, ptr null }, %struct.nvkm_device_pci_device { i16 1626, ptr @.str.294, ptr null }, %struct.nvkm_device_pci_device { i16 1627, ptr @.str.223, ptr null }, %struct.nvkm_device_pci_device { i16 1628, ptr @.str.295, ptr null }, %struct.nvkm_device_pci_device { i16 1728, ptr @.str.296, ptr null }, %struct.nvkm_device_pci_device { i16 1732, ptr @.str.297, ptr null }, %struct.nvkm_device_pci_device { i16 1738, ptr @.str.298, ptr null }, %struct.nvkm_device_pci_device { i16 1741, ptr @.str.299, ptr null }, %struct.nvkm_device_pci_device { i16 1745, ptr @.str.300, ptr @nvkm_device_pci_10de_06d1 }, %struct.nvkm_device_pci_device { i16 1746, ptr @.str.301, ptr @nvkm_device_pci_10de_06d2 }, %struct.nvkm_device_pci_device { i16 1752, ptr @.str.302, ptr null }, %struct.nvkm_device_pci_device { i16 1753, ptr @.str.303, ptr null }, %struct.nvkm_device_pci_device { i16 1754, ptr @.str.304, ptr null }, %struct.nvkm_device_pci_device { i16 1756, ptr @.str.302, ptr null }, %struct.nvkm_device_pci_device { i16 1757, ptr @.str.305, ptr null }, %struct.nvkm_device_pci_device { i16 1758, ptr @.str.306, ptr @nvkm_device_pci_10de_06de }, %struct.nvkm_device_pci_device { i16 1759, ptr @.str.307, ptr null }, %struct.nvkm_device_pci_device { i16 1760, ptr @.str.308, ptr null }, %struct.nvkm_device_pci_device { i16 1761, ptr @.str.309, ptr null }, %struct.nvkm_device_pci_device { i16 1762, ptr @.str.310, ptr null }, %struct.nvkm_device_pci_device { i16 1763, ptr @.str.214, ptr null }, %struct.nvkm_device_pci_device { i16 1764, ptr @.str.201, ptr null }, %struct.nvkm_device_pci_device { i16 1765, ptr @.str.311, ptr null }, %struct.nvkm_device_pci_device { i16 1766, ptr @.str.312, ptr null }, %struct.nvkm_device_pci_device { i16 1767, ptr @.str.313, ptr null }, %struct.nvkm_device_pci_device { i16 1768, ptr @.str.314, ptr @nvkm_device_pci_10de_06e8 }, %struct.nvkm_device_pci_device { i16 1769, ptr @.str.311, ptr null }, %struct.nvkm_device_pci_device { i16 1770, ptr @.str.315, ptr null }, %struct.nvkm_device_pci_device { i16 1771, ptr @.str.316, ptr null }, %struct.nvkm_device_pci_device { i16 1772, ptr @.str.317, ptr null }, %struct.nvkm_device_pci_device { i16 1775, ptr @.str.318, ptr null }, %struct.nvkm_device_pci_device { i16 1777, ptr @.str.319, ptr null }, %struct.nvkm_device_pci_device { i16 1784, ptr @.str.320, ptr null }, %struct.nvkm_device_pci_device { i16 1785, ptr @.str.321, ptr @nvkm_device_pci_10de_06f9 }, %struct.nvkm_device_pci_device { i16 1786, ptr @.str.322, ptr null }, %struct.nvkm_device_pci_device { i16 1787, ptr @.str.323, ptr null }, %struct.nvkm_device_pci_device { i16 1789, ptr @.str.324, ptr null }, %struct.nvkm_device_pci_device { i16 1791, ptr @.str.325, ptr @nvkm_device_pci_10de_06ff }, %struct.nvkm_device_pci_device { i16 2016, ptr @.str.326, ptr null }, %struct.nvkm_device_pci_device { i16 2017, ptr @.str.327, ptr null }, %struct.nvkm_device_pci_device { i16 2018, ptr @.str.328, ptr null }, %struct.nvkm_device_pci_device { i16 2019, ptr @.str.329, ptr null }, %struct.nvkm_device_pci_device { i16 2021, ptr @.str.330, ptr null }, %struct.nvkm_device_pci_device { i16 2112, ptr @.str.331, ptr null }, %struct.nvkm_device_pci_device { i16 2116, ptr @.str.332, ptr null }, %struct.nvkm_device_pci_device { i16 2117, ptr @.str.333, ptr null }, %struct.nvkm_device_pci_device { i16 2118, ptr @.str.334, ptr null }, %struct.nvkm_device_pci_device { i16 2119, ptr @.str.335, ptr null }, %struct.nvkm_device_pci_device { i16 2120, ptr @.str.336, ptr null }, %struct.nvkm_device_pci_device { i16 2121, ptr @.str.337, ptr null }, %struct.nvkm_device_pci_device { i16 2122, ptr @.str.338, ptr null }, %struct.nvkm_device_pci_device { i16 2123, ptr @.str.334, ptr null }, %struct.nvkm_device_pci_device { i16 2124, ptr @.str.339, ptr null }, %struct.nvkm_device_pci_device { i16 2125, ptr @.str.340, ptr null }, %struct.nvkm_device_pci_device { i16 2127, ptr @.str.341, ptr null }, %struct.nvkm_device_pci_device { i16 2144, ptr @.str.342, ptr null }, %struct.nvkm_device_pci_device { i16 2145, ptr @.str.342, ptr null }, %struct.nvkm_device_pci_device { i16 2146, ptr @.str.343, ptr null }, %struct.nvkm_device_pci_device { i16 2147, ptr @.str.344, ptr null }, %struct.nvkm_device_pci_device { i16 2148, ptr @.str.345, ptr null }, %struct.nvkm_device_pci_device { i16 2149, ptr @.str.346, ptr null }, %struct.nvkm_device_pci_device { i16 2150, ptr @.str.343, ptr @nvkm_device_pci_10de_0866 }, %struct.nvkm_device_pci_device { i16 2151, ptr @.str.342, ptr null }, %struct.nvkm_device_pci_device { i16 2152, ptr @.str.347, ptr null }, %struct.nvkm_device_pci_device { i16 2153, ptr @.str.342, ptr null }, %struct.nvkm_device_pci_device { i16 2154, ptr @.str.342, ptr null }, %struct.nvkm_device_pci_device { i16 2156, ptr @.str.348, ptr null }, %struct.nvkm_device_pci_device { i16 2157, ptr @.str.334, ptr null }, %struct.nvkm_device_pci_device { i16 2158, ptr @.str.332, ptr null }, %struct.nvkm_device_pci_device { i16 2159, ptr @.str.333, ptr null }, %struct.nvkm_device_pci_device { i16 2160, ptr @.str.344, ptr null }, %struct.nvkm_device_pci_device { i16 2161, ptr @.str.334, ptr null }, %struct.nvkm_device_pci_device { i16 2162, ptr @.str.349, ptr @nvkm_device_pci_10de_0872 }, %struct.nvkm_device_pci_device { i16 2163, ptr @.str.349, ptr @nvkm_device_pci_10de_0873 }, %struct.nvkm_device_pci_device { i16 2164, ptr @.str.346, ptr null }, %struct.nvkm_device_pci_device { i16 2166, ptr @.str.346, ptr null }, %struct.nvkm_device_pci_device { i16 2170, ptr @.str.342, ptr null }, %struct.nvkm_device_pci_device { i16 2173, ptr @.str.346, ptr null }, %struct.nvkm_device_pci_device { i16 2174, ptr @.str.350, ptr null }, %struct.nvkm_device_pci_device { i16 2175, ptr @.str.350, ptr null }, %struct.nvkm_device_pci_device { i16 2208, ptr @.str.351, ptr null }, %struct.nvkm_device_pci_device { i16 2210, ptr @.str.351, ptr null }, %struct.nvkm_device_pci_device { i16 2211, ptr @.str.351, ptr null }, %struct.nvkm_device_pci_device { i16 2212, ptr @.str.351, ptr null }, %struct.nvkm_device_pci_device { i16 2213, ptr @.str.351, ptr null }, %struct.nvkm_device_pci_device { i16 2592, ptr @.str.352, ptr null }, %struct.nvkm_device_pci_device { i16 2594, ptr @.str.353, ptr null }, %struct.nvkm_device_pci_device { i16 2595, ptr @.str.354, ptr null }, %struct.nvkm_device_pci_device { i16 2598, ptr @.str.355, ptr null }, %struct.nvkm_device_pci_device { i16 2599, ptr @.str.355, ptr null }, %struct.nvkm_device_pci_device { i16 2600, ptr @.str.356, ptr null }, %struct.nvkm_device_pci_device { i16 2601, ptr @.str.357, ptr null }, %struct.nvkm_device_pci_device { i16 2602, ptr @.str.356, ptr null }, %struct.nvkm_device_pci_device { i16 2603, ptr @.str.357, ptr null }, %struct.nvkm_device_pci_device { i16 2604, ptr @.str.358, ptr null }, %struct.nvkm_device_pci_device { i16 2605, ptr @.str.359, ptr null }, %struct.nvkm_device_pci_device { i16 2610, ptr @.str.360, ptr null }, %struct.nvkm_device_pci_device { i16 2612, ptr @.str.361, ptr null }, %struct.nvkm_device_pci_device { i16 2613, ptr @.str.362, ptr null }, %struct.nvkm_device_pci_device { i16 2616, ptr @.str.363, ptr null }, %struct.nvkm_device_pci_device { i16 2620, ptr @.str.364, ptr null }, %struct.nvkm_device_pci_device { i16 2656, ptr @.str.365, ptr null }, %struct.nvkm_device_pci_device { i16 2658, ptr @.str.366, ptr null }, %struct.nvkm_device_pci_device { i16 2659, ptr @.str.367, ptr null }, %struct.nvkm_device_pci_device { i16 2660, ptr @.str.368, ptr null }, %struct.nvkm_device_pci_device { i16 2661, ptr @.str.354, ptr null }, %struct.nvkm_device_pci_device { i16 2662, ptr @.str.367, ptr null }, %struct.nvkm_device_pci_device { i16 2663, ptr @.str.353, ptr null }, %struct.nvkm_device_pci_device { i16 2664, ptr @.str.319, ptr null }, %struct.nvkm_device_pci_device { i16 2665, ptr @.str.319, ptr null }, %struct.nvkm_device_pci_device { i16 2666, ptr @.str.369, ptr null }, %struct.nvkm_device_pci_device { i16 2668, ptr @.str.370, ptr null }, %struct.nvkm_device_pci_device { i16 2670, ptr @.str.371, ptr @nvkm_device_pci_10de_0a6e }, %struct.nvkm_device_pci_device { i16 2671, ptr @.str.368, ptr null }, %struct.nvkm_device_pci_device { i16 2672, ptr @.str.372, ptr @nvkm_device_pci_10de_0a70 }, %struct.nvkm_device_pci_device { i16 2673, ptr @.str.371, ptr null }, %struct.nvkm_device_pci_device { i16 2674, ptr @.str.372, ptr null }, %struct.nvkm_device_pci_device { i16 2675, ptr @.str.371, ptr @nvkm_device_pci_10de_0a73 }, %struct.nvkm_device_pci_device { i16 2676, ptr @.str.373, ptr @nvkm_device_pci_10de_0a74 }, %struct.nvkm_device_pci_device { i16 2677, ptr @.str.372, ptr @nvkm_device_pci_10de_0a75 }, %struct.nvkm_device_pci_device { i16 2678, ptr @.str.368, ptr null }, %struct.nvkm_device_pci_device { i16 2680, ptr @.str.374, ptr null }, %struct.nvkm_device_pci_device { i16 2682, ptr @.str.375, ptr @nvkm_device_pci_10de_0a7a }, %struct.nvkm_device_pci_device { i16 2684, ptr @.str.376, ptr null }, %struct.nvkm_device_pci_device { i16 3232, ptr @.str.213, ptr null }, %struct.nvkm_device_pci_device { i16 3234, ptr @.str.377, ptr null }, %struct.nvkm_device_pci_device { i16 3235, ptr @.str.378, ptr null }, %struct.nvkm_device_pci_device { i16 3236, ptr @.str.379, ptr null }, %struct.nvkm_device_pci_device { i16 3237, ptr @.str.352, ptr null }, %struct.nvkm_device_pci_device { i16 3239, ptr @.str.213, ptr null }, %struct.nvkm_device_pci_device { i16 3240, ptr @.str.380, ptr null }, %struct.nvkm_device_pci_device { i16 3241, ptr @.str.381, ptr null }, %struct.nvkm_device_pci_device { i16 3244, ptr @.str.352, ptr null }, %struct.nvkm_device_pci_device { i16 3247, ptr @.str.382, ptr null }, %struct.nvkm_device_pci_device { i16 3248, ptr @.str.383, ptr null }, %struct.nvkm_device_pci_device { i16 3249, ptr @.str.384, ptr null }, %struct.nvkm_device_pci_device { i16 3260, ptr @.str.385, ptr null }, %struct.nvkm_device_pci_device { i16 3520, ptr @.str.386, ptr null }, %struct.nvkm_device_pci_device { i16 3524, ptr @.str.387, ptr null }, %struct.nvkm_device_pci_device { i16 3525, ptr @.str.387, ptr null }, %struct.nvkm_device_pci_device { i16 3526, ptr @.str.387, ptr null }, %struct.nvkm_device_pci_device { i16 3533, ptr @.str.388, ptr null }, %struct.nvkm_device_pci_device { i16 3534, ptr @.str.388, ptr null }, %struct.nvkm_device_pci_device { i16 3537, ptr @.str.389, ptr null }, %struct.nvkm_device_pci_device { i16 3538, ptr @.str.390, ptr null }, %struct.nvkm_device_pci_device { i16 3539, ptr @.str.391, ptr null }, %struct.nvkm_device_pci_device { i16 3542, ptr @.str.392, ptr null }, %struct.nvkm_device_pci_device { i16 3544, ptr @.str.393, ptr @nvkm_device_pci_10de_0dd8 }, %struct.nvkm_device_pci_device { i16 3546, ptr @.str.394, ptr null }, %struct.nvkm_device_pci_device { i16 3552, ptr @.str.386, ptr null }, %struct.nvkm_device_pci_device { i16 3553, ptr @.str.395, ptr null }, %struct.nvkm_device_pci_device { i16 3554, ptr @.str.396, ptr null }, %struct.nvkm_device_pci_device { i16 3555, ptr @.str.397, ptr null }, %struct.nvkm_device_pci_device { i16 3556, ptr @.str.398, ptr null }, %struct.nvkm_device_pci_device { i16 3557, ptr @.str.399, ptr null }, %struct.nvkm_device_pci_device { i16 3559, ptr @.str.400, ptr null }, %struct.nvkm_device_pci_device { i16 3560, ptr @.str.401, ptr null }, %struct.nvkm_device_pci_device { i16 3561, ptr @.str.402, ptr @nvkm_device_pci_10de_0de9 }, %struct.nvkm_device_pci_device { i16 3562, ptr @.str.403, ptr @nvkm_device_pci_10de_0dea }, %struct.nvkm_device_pci_device { i16 3563, ptr @.str.388, ptr null }, %struct.nvkm_device_pci_device { i16 3564, ptr @.str.404, ptr null }, %struct.nvkm_device_pci_device { i16 3565, ptr @.str.405, ptr null }, %struct.nvkm_device_pci_device { i16 3566, ptr @.str.406, ptr null }, %struct.nvkm_device_pci_device { i16 3567, ptr @.str.407, ptr null }, %struct.nvkm_device_pci_device { i16 3568, ptr @.str.408, ptr null }, %struct.nvkm_device_pci_device { i16 3569, ptr @.str.409, ptr null }, %struct.nvkm_device_pci_device { i16 3570, ptr @.str.391, ptr null }, %struct.nvkm_device_pci_device { i16 3571, ptr @.str.409, ptr null }, %struct.nvkm_device_pci_device { i16 3572, ptr @.str.410, ptr @nvkm_device_pci_10de_0df4 }, %struct.nvkm_device_pci_device { i16 3573, ptr @.str.404, ptr null }, %struct.nvkm_device_pci_device { i16 3574, ptr @.str.392, ptr null }, %struct.nvkm_device_pci_device { i16 3575, ptr @.str.405, ptr null }, %struct.nvkm_device_pci_device { i16 3576, ptr @.str.411, ptr null }, %struct.nvkm_device_pci_device { i16 3577, ptr @.str.412, ptr null }, %struct.nvkm_device_pci_device { i16 3578, ptr @.str.413, ptr null }, %struct.nvkm_device_pci_device { i16 3580, ptr @.str.414, ptr null }, %struct.nvkm_device_pci_device { i16 3618, ptr @.str.415, ptr null }, %struct.nvkm_device_pci_device { i16 3619, ptr @.str.416, ptr null }, %struct.nvkm_device_pci_device { i16 3620, ptr @.str.415, ptr null }, %struct.nvkm_device_pci_device { i16 3632, ptr @.str.417, ptr null }, %struct.nvkm_device_pci_device { i16 3633, ptr @.str.418, ptr null }, %struct.nvkm_device_pci_device { i16 3642, ptr @.str.419, ptr null }, %struct.nvkm_device_pci_device { i16 3643, ptr @.str.420, ptr null }, %struct.nvkm_device_pci_device { i16 3840, ptr @.str.421, ptr null }, %struct.nvkm_device_pci_device { i16 3841, ptr @.str.422, ptr null }, %struct.nvkm_device_pci_device { i16 3842, ptr @.str.423, ptr null }, %struct.nvkm_device_pci_device { i16 4032, ptr @.str.424, ptr null }, %struct.nvkm_device_pci_device { i16 4033, ptr @.str.424, ptr null }, %struct.nvkm_device_pci_device { i16 4034, ptr @.str.421, ptr null }, %struct.nvkm_device_pci_device { i16 4038, ptr @.str.425, ptr null }, %struct.nvkm_device_pci_device { i16 4040, ptr @.str.426, ptr null }, %struct.nvkm_device_pci_device { i16 4041, ptr @.str.423, ptr null }, %struct.nvkm_device_pci_device { i16 4045, ptr @.str.427, ptr null }, %struct.nvkm_device_pci_device { i16 4046, ptr @.str.428, ptr null }, %struct.nvkm_device_pci_device { i16 4049, ptr @.str.429, ptr null }, %struct.nvkm_device_pci_device { i16 4050, ptr @.str.430, ptr @nvkm_device_pci_10de_0fd2 }, %struct.nvkm_device_pci_device { i16 4051, ptr @.str.428, ptr null }, %struct.nvkm_device_pci_device { i16 4052, ptr @.str.431, ptr null }, %struct.nvkm_device_pci_device { i16 4053, ptr @.str.429, ptr null }, %struct.nvkm_device_pci_device { i16 4056, ptr @.str.430, ptr null }, %struct.nvkm_device_pci_device { i16 4057, ptr @.str.432, ptr null }, %struct.nvkm_device_pci_device { i16 4063, ptr @.str.433, ptr null }, %struct.nvkm_device_pci_device { i16 4064, ptr @.str.431, ptr null }, %struct.nvkm_device_pci_device { i16 4065, ptr @.str.434, ptr null }, %struct.nvkm_device_pci_device { i16 4066, ptr @.str.435, ptr null }, %struct.nvkm_device_pci_device { i16 4067, ptr @.str.435, ptr @nvkm_device_pci_10de_0fe3 }, %struct.nvkm_device_pci_device { i16 4068, ptr @.str.436, ptr null }, %struct.nvkm_device_pci_device { i16 4073, ptr @.str.436, ptr null }, %struct.nvkm_device_pci_device { i16 4074, ptr @.str.427, ptr null }, %struct.nvkm_device_pci_device { i16 4076, ptr @.str.437, ptr null }, %struct.nvkm_device_pci_device { i16 4079, ptr @.str.438, ptr null }, %struct.nvkm_device_pci_device { i16 4082, ptr @.str.439, ptr null }, %struct.nvkm_device_pci_device { i16 4083, ptr @.str.440, ptr null }, %struct.nvkm_device_pci_device { i16 4086, ptr @.str.441, ptr null }, %struct.nvkm_device_pci_device { i16 4088, ptr @.str.442, ptr null }, %struct.nvkm_device_pci_device { i16 4089, ptr @.str.443, ptr null }, %struct.nvkm_device_pci_device { i16 4090, ptr @.str.444, ptr null }, %struct.nvkm_device_pci_device { i16 4091, ptr @.str.445, ptr null }, %struct.nvkm_device_pci_device { i16 4092, ptr @.str.446, ptr null }, %struct.nvkm_device_pci_device { i16 4093, ptr @.str.447, ptr null }, %struct.nvkm_device_pci_device { i16 4094, ptr @.str.448, ptr null }, %struct.nvkm_device_pci_device { i16 4095, ptr @.str.449, ptr null }, %struct.nvkm_device_pci_device { i16 4097, ptr @.str.450, ptr null }, %struct.nvkm_device_pci_device { i16 4100, ptr @.str.451, ptr null }, %struct.nvkm_device_pci_device { i16 4101, ptr @.str.452, ptr null }, %struct.nvkm_device_pci_device { i16 4103, ptr @.str.451, ptr null }, %struct.nvkm_device_pci_device { i16 4104, ptr @.str.453, ptr null }, %struct.nvkm_device_pci_device { i16 4106, ptr @.str.453, ptr null }, %struct.nvkm_device_pci_device { i16 4108, ptr @.str.454, ptr null }, %struct.nvkm_device_pci_device { i16 4129, ptr @.str.455, ptr null }, %struct.nvkm_device_pci_device { i16 4130, ptr @.str.456, ptr null }, %struct.nvkm_device_pci_device { i16 4131, ptr @.str.457, ptr null }, %struct.nvkm_device_pci_device { i16 4132, ptr @.str.458, ptr null }, %struct.nvkm_device_pci_device { i16 4134, ptr @.str.459, ptr null }, %struct.nvkm_device_pci_device { i16 4135, ptr @.str.460, ptr null }, %struct.nvkm_device_pci_device { i16 4136, ptr @.str.461, ptr null }, %struct.nvkm_device_pci_device { i16 4137, ptr @.str.462, ptr null }, %struct.nvkm_device_pci_device { i16 4138, ptr @.str.463, ptr null }, %struct.nvkm_device_pci_device { i16 4141, ptr @.str.464, ptr null }, %struct.nvkm_device_pci_device { i16 4154, ptr @.str.465, ptr null }, %struct.nvkm_device_pci_device { i16 4156, ptr @.str.466, ptr null }, %struct.nvkm_device_pci_device { i16 4160, ptr @.str.398, ptr null }, %struct.nvkm_device_pci_device { i16 4162, ptr @.str.467, ptr null }, %struct.nvkm_device_pci_device { i16 4168, ptr @.str.468, ptr null }, %struct.nvkm_device_pci_device { i16 4169, ptr @.str.422, ptr null }, %struct.nvkm_device_pci_device { i16 4170, ptr @.str.400, ptr null }, %struct.nvkm_device_pci_device { i16 4171, ptr @.str.469, ptr @nvkm_device_pci_10de_104b }, %struct.nvkm_device_pci_device { i16 4172, ptr @.str.470, ptr null }, %struct.nvkm_device_pci_device { i16 4176, ptr @.str.405, ptr null }, %struct.nvkm_device_pci_device { i16 4177, ptr @.str.471, ptr null }, %struct.nvkm_device_pci_device { i16 4178, ptr @.str.405, ptr null }, %struct.nvkm_device_pci_device { i16 4180, ptr @.str.472, ptr null }, %struct.nvkm_device_pci_device { i16 4181, ptr @.str.472, ptr null }, %struct.nvkm_device_pci_device { i16 4182, ptr @.str.473, ptr null }, %struct.nvkm_device_pci_device { i16 4183, ptr @.str.473, ptr null }, %struct.nvkm_device_pci_device { i16 4184, ptr @.str.403, ptr @nvkm_device_pci_10de_1058 }, %struct.nvkm_device_pci_device { i16 4185, ptr @.str.403, ptr null }, %struct.nvkm_device_pci_device { i16 4186, ptr @.str.403, ptr null }, %struct.nvkm_device_pci_device { i16 4187, ptr @.str.474, ptr @nvkm_device_pci_10de_105b }, %struct.nvkm_device_pci_device { i16 4220, ptr @.str.475, ptr null }, %struct.nvkm_device_pci_device { i16 4221, ptr @.str.476, ptr null }, %struct.nvkm_device_pci_device { i16 4224, ptr @.str.477, ptr null }, %struct.nvkm_device_pci_device { i16 4225, ptr @.str.478, ptr null }, %struct.nvkm_device_pci_device { i16 4226, ptr @.str.479, ptr null }, %struct.nvkm_device_pci_device { i16 4228, ptr @.str.480, ptr null }, %struct.nvkm_device_pci_device { i16 4230, ptr @.str.478, ptr null }, %struct.nvkm_device_pci_device { i16 4231, ptr @.str.479, ptr null }, %struct.nvkm_device_pci_device { i16 4232, ptr @.str.481, ptr null }, %struct.nvkm_device_pci_device { i16 4233, ptr @.str.477, ptr null }, %struct.nvkm_device_pci_device { i16 4235, ptr @.str.477, ptr null }, %struct.nvkm_device_pci_device { i16 4241, ptr @.str.482, ptr @nvkm_device_pci_10de_1091 }, %struct.nvkm_device_pci_device { i16 4244, ptr @.str.483, ptr null }, %struct.nvkm_device_pci_device { i16 4246, ptr @.str.484, ptr @nvkm_device_pci_10de_1096 }, %struct.nvkm_device_pci_device { i16 4250, ptr @.str.485, ptr null }, %struct.nvkm_device_pci_device { i16 4251, ptr @.str.486, ptr null }, %struct.nvkm_device_pci_device { i16 4288, ptr @.str.309, ptr null }, %struct.nvkm_device_pci_device { i16 4291, ptr @.str.487, ptr null }, %struct.nvkm_device_pci_device { i16 4293, ptr @.str.355, ptr null }, %struct.nvkm_device_pci_device { i16 4312, ptr @.str.488, ptr null }, %struct.nvkm_device_pci_device { i16 4416, ptr null, ptr @nvkm_device_pci_10de_1140 }, %struct.nvkm_device_pci_device { i16 4480, ptr @.str.489, ptr null }, %struct.nvkm_device_pci_device { i16 4483, ptr @.str.490, ptr null }, %struct.nvkm_device_pci_device { i16 4484, ptr @.str.491, ptr null }, %struct.nvkm_device_pci_device { i16 4485, ptr @.str.492, ptr @nvkm_device_pci_10de_1185 }, %struct.nvkm_device_pci_device { i16 4487, ptr @.str.493, ptr null }, %struct.nvkm_device_pci_device { i16 4488, ptr @.str.494, ptr null }, %struct.nvkm_device_pci_device { i16 4489, ptr @.str.495, ptr @nvkm_device_pci_10de_1189 }, %struct.nvkm_device_pci_device { i16 4490, ptr @.str.496, ptr null }, %struct.nvkm_device_pci_device { i16 4494, ptr @.str.497, ptr null }, %struct.nvkm_device_pci_device { i16 4495, ptr @.str.498, ptr null }, %struct.nvkm_device_pci_device { i16 4499, ptr @.str.499, ptr null }, %struct.nvkm_device_pci_device { i16 4500, ptr @.str.500, ptr null }, %struct.nvkm_device_pci_device { i16 4501, ptr @.str.492, ptr null }, %struct.nvkm_device_pci_device { i16 4504, ptr @.str.501, ptr null }, %struct.nvkm_device_pci_device { i16 4505, ptr @.str.502, ptr @nvkm_device_pci_10de_1199 }, %struct.nvkm_device_pci_device { i16 4506, ptr @.str.503, ptr null }, %struct.nvkm_device_pci_device { i16 4509, ptr @.str.504, ptr null }, %struct.nvkm_device_pci_device { i16 4510, ptr @.str.505, ptr null }, %struct.nvkm_device_pci_device { i16 4511, ptr @.str.505, ptr null }, %struct.nvkm_device_pci_device { i16 4512, ptr @.str.506, ptr null }, %struct.nvkm_device_pci_device { i16 4513, ptr @.str.507, ptr null }, %struct.nvkm_device_pci_device { i16 4514, ptr @.str.508, ptr null }, %struct.nvkm_device_pci_device { i16 4515, ptr @.str.509, ptr null }, %struct.nvkm_device_pci_device { i16 4519, ptr @.str.508, ptr null }, %struct.nvkm_device_pci_device { i16 4532, ptr @.str.510, ptr null }, %struct.nvkm_device_pci_device { i16 4534, ptr @.str.511, ptr null }, %struct.nvkm_device_pci_device { i16 4535, ptr @.str.512, ptr null }, %struct.nvkm_device_pci_device { i16 4536, ptr @.str.513, ptr null }, %struct.nvkm_device_pci_device { i16 4538, ptr @.str.514, ptr null }, %struct.nvkm_device_pci_device { i16 4540, ptr @.str.515, ptr null }, %struct.nvkm_device_pci_device { i16 4541, ptr @.str.516, ptr null }, %struct.nvkm_device_pci_device { i16 4542, ptr @.str.517, ptr null }, %struct.nvkm_device_pci_device { i16 4543, ptr @.str.518, ptr null }, %struct.nvkm_device_pci_device { i16 4544, ptr @.str.492, ptr null }, %struct.nvkm_device_pci_device { i16 4546, ptr @.str.519, ptr null }, %struct.nvkm_device_pci_device { i16 4547, ptr @.str.520, ptr null }, %struct.nvkm_device_pci_device { i16 4548, ptr @.str.521, ptr null }, %struct.nvkm_device_pci_device { i16 4549, ptr @.str.426, ptr null }, %struct.nvkm_device_pci_device { i16 4550, ptr @.str.520, ptr null }, %struct.nvkm_device_pci_device { i16 4552, ptr @.str.425, ptr null }, %struct.nvkm_device_pci_device { i16 4555, ptr @.str.426, ptr null }, %struct.nvkm_device_pci_device { i16 4576, ptr @.str.522, ptr null }, %struct.nvkm_device_pci_device { i16 4577, ptr @.str.523, ptr null }, %struct.nvkm_device_pci_device { i16 4578, ptr @.str.523, ptr null }, %struct.nvkm_device_pci_device { i16 4579, ptr @.str.524, ptr @nvkm_device_pci_10de_11e3 }, %struct.nvkm_device_pci_device { i16 4602, ptr @.str.525, ptr null }, %struct.nvkm_device_pci_device { i16 4604, ptr @.str.526, ptr null }, %struct.nvkm_device_pci_device { i16 4608, ptr @.str.479, ptr null }, %struct.nvkm_device_pci_device { i16 4609, ptr @.str.480, ptr null }, %struct.nvkm_device_pci_device { i16 4611, ptr @.str.527, ptr null }, %struct.nvkm_device_pci_device { i16 4613, ptr @.str.528, ptr null }, %struct.nvkm_device_pci_device { i16 4614, ptr @.str.529, ptr null }, %struct.nvkm_device_pci_device { i16 4615, ptr @.str.530, ptr null }, %struct.nvkm_device_pci_device { i16 4616, ptr @.str.531, ptr null }, %struct.nvkm_device_pci_device { i16 4624, ptr @.str.532, ptr null }, %struct.nvkm_device_pci_device { i16 4625, ptr @.str.533, ptr null }, %struct.nvkm_device_pci_device { i16 4626, ptr @.str.534, ptr null }, %struct.nvkm_device_pci_device { i16 4627, ptr @.str.535, ptr null }, %struct.nvkm_device_pci_device { i16 4673, ptr @.str.536, ptr null }, %struct.nvkm_device_pci_device { i16 4675, ptr @.str.536, ptr null }, %struct.nvkm_device_pci_device { i16 4676, ptr @.str.537, ptr null }, %struct.nvkm_device_pci_device { i16 4677, ptr @.str.387, ptr null }, %struct.nvkm_device_pci_device { i16 4678, ptr @.str.392, ptr null }, %struct.nvkm_device_pci_device { i16 4679, ptr @.str.388, ptr @nvkm_device_pci_10de_1247 }, %struct.nvkm_device_pci_device { i16 4680, ptr @.str.388, ptr null }, %struct.nvkm_device_pci_device { i16 4681, ptr @.str.387, ptr null }, %struct.nvkm_device_pci_device { i16 4683, ptr @.str.424, ptr null }, %struct.nvkm_device_pci_device { i16 4685, ptr @.str.388, ptr @nvkm_device_pci_10de_124d }, %struct.nvkm_device_pci_device { i16 4689, ptr @.str.538, ptr null }, %struct.nvkm_device_pci_device { i16 4736, ptr @.str.539, ptr null }, %struct.nvkm_device_pci_device { i16 4737, ptr @.str.540, ptr null }, %struct.nvkm_device_pci_device { i16 4738, ptr @.str.424, ptr null }, %struct.nvkm_device_pci_device { i16 4740, ptr @.str.421, ptr null }, %struct.nvkm_device_pci_device { i16 4742, ptr @.str.541, ptr null }, %struct.nvkm_device_pci_device { i16 4743, ptr @.str.423, ptr null }, %struct.nvkm_device_pci_device { i16 4744, ptr @.str.541, ptr null }, %struct.nvkm_device_pci_device { i16 4745, ptr @.str.540, ptr null }, %struct.nvkm_device_pci_device { i16 4752, ptr @.str.434, ptr @nvkm_device_pci_10de_1290 }, %struct.nvkm_device_pci_device { i16 4753, ptr @.str.542, ptr null }, %struct.nvkm_device_pci_device { i16 4754, ptr @.str.433, ptr @nvkm_device_pci_10de_1292 }, %struct.nvkm_device_pci_device { i16 4755, ptr @.str.434, ptr null }, %struct.nvkm_device_pci_device { i16 4757, ptr @.str.543, ptr @nvkm_device_pci_10de_1295 }, %struct.nvkm_device_pci_device { i16 4758, ptr @.str.544, ptr null }, %struct.nvkm_device_pci_device { i16 4760, ptr @.str.545, ptr null }, %struct.nvkm_device_pci_device { i16 4761, ptr @.str.546, ptr @nvkm_device_pci_10de_1299 }, %struct.nvkm_device_pci_device { i16 4762, ptr @.str.547, ptr null }, %struct.nvkm_device_pci_device { i16 4793, ptr @.str.548, ptr null }, %struct.nvkm_device_pci_device { i16 4794, ptr @.str.549, ptr null }, %struct.nvkm_device_pci_device { i16 4928, ptr @.str.550, ptr @nvkm_device_pci_10de_1340 }, %struct.nvkm_device_pci_device { i16 4929, ptr @.str.551, ptr @nvkm_device_pci_10de_1341 }, %struct.nvkm_device_pci_device { i16 4932, ptr @.str.552, ptr null }, %struct.nvkm_device_pci_device { i16 4934, ptr @.str.553, ptr @nvkm_device_pci_10de_1346 }, %struct.nvkm_device_pci_device { i16 4935, ptr @.str.554, ptr @nvkm_device_pci_10de_1347 }, %struct.nvkm_device_pci_device { i16 4986, ptr null, ptr @nvkm_device_pci_10de_137a }, %struct.nvkm_device_pci_device { i16 4989, ptr null, ptr @nvkm_device_pci_10de_137d }, %struct.nvkm_device_pci_device { i16 4992, ptr @.str.555, ptr null }, %struct.nvkm_device_pci_device { i16 4993, ptr @.str.556, ptr null }, %struct.nvkm_device_pci_device { i16 4994, ptr @.str.557, ptr null }, %struct.nvkm_device_pci_device { i16 5008, ptr @.str.552, ptr null }, %struct.nvkm_device_pci_device { i16 5009, ptr @.str.558, ptr @nvkm_device_pci_10de_1391 }, %struct.nvkm_device_pci_device { i16 5010, ptr @.str.503, ptr @nvkm_device_pci_10de_1392 }, %struct.nvkm_device_pci_device { i16 5011, ptr @.str.551, ptr null }, %struct.nvkm_device_pci_device { i16 5016, ptr @.str.552, ptr null }, %struct.nvkm_device_pci_device { i16 5018, ptr @.str.559, ptr @nvkm_device_pci_10de_139a }, %struct.nvkm_device_pci_device { i16 5019, ptr @.str.560, ptr @nvkm_device_pci_10de_139b }, %struct.nvkm_device_pci_device { i16 5020, ptr @.str.554, ptr null }, %struct.nvkm_device_pci_device { i16 5043, ptr @.str.561, ptr null }, %struct.nvkm_device_pci_device { i16 5050, ptr @.str.562, ptr null }, %struct.nvkm_device_pci_device { i16 5051, ptr @.str.563, ptr null }, %struct.nvkm_device_pci_device { i16 5052, ptr @.str.564, ptr null }, %struct.nvkm_device_pci_device { i16 5056, ptr @.str.565, ptr null }, %struct.nvkm_device_pci_device { i16 5058, ptr @.str.566, ptr null }, %struct.nvkm_device_pci_device { i16 5079, ptr @.str.567, ptr null }, %struct.nvkm_device_pci_device { i16 5080, ptr @.str.568, ptr null }, %struct.nvkm_device_pci_device { i16 5081, ptr @.str.569, ptr null }, %struct.nvkm_device_pci_device { i16 5121, ptr @.str.570, ptr null }, %struct.nvkm_device_pci_device { i16 5655, ptr @.str.567, ptr null }, %struct.nvkm_device_pci_device { i16 5656, ptr @.str.568, ptr null }, %struct.nvkm_device_pci_device { i16 5657, ptr @.str.569, ptr null }, %struct.nvkm_device_pci_device { i16 6082, ptr @.str.571, ptr null }, %struct.nvkm_device_pci_device { i16 6088, ptr @.str.572, ptr null }, %struct.nvkm_device_pci_device { i16 6128, ptr @.str.573, ptr null }, %struct.nvkm_device_pci_device zeroinitializer], [2260 x i8] zeroinitializer }, align 32
@nvkm_device_pci_func = internal constant { %struct.nvkm_device_func, [60 x i8] } { %struct.nvkm_device_func { ptr @nvkm_device_pci, ptr null, ptr @nvkm_device_pci_dtor, ptr @nvkm_device_pci_preinit, ptr null, ptr @nvkm_device_pci_fini, ptr @nvkm_device_pci_resource_addr, ptr @nvkm_device_pci_resource_size, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RIVA TNT\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RIVA TNT2/TNT2 Pro\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RIVA TNT2 Ultra\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Vanta/Vanta LT\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RIVA TNT2 Model 64/Model 64 Pro\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce 6800 Ultra\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 6800\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 6800 LE\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 6800 XE\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 6800 XT\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 6800 GT\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 6800 GS\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 4000\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 7800 GTX\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 7800 GT\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 7800 GS\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 7800 SLI\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce Go 7800\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GeForce Go 7800 GTX\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 4500\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Aladdin TNT2\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce Go 6800\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GeForce Go 6800 Ultra\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Quadro FX Go1400\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Quadro FX 3450/4000 SDI\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 1400\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 6600 GT\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 6600\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 6200\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 6600 LE\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Quadro FX 3400/Quadro FX 4000\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce PCX 5750\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce PCX 5900\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Quadro FX 330/GeForce PCX 5300\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Quadro FX 330/Quadro NVS 280 PCI-E\00", [61 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 1300\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GeForce 256\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GeForce DDR\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Quadro\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce2 MX/MX 400\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GeForce2 MX 100/200\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GeForce2 Go\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Quadro2 MXR/EX/Go\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 6600 VE\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce Go 6600\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 6610 XL\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GeForce Go 6600 TE/6200 TE\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 6700 XL\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce Go 6600 GT\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro NVS 440\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 540M\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro FX 550\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro FX 540\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GeForce2 GTS/GeForce2 Pro\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GeForce2 Ti\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce2 Ultra\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Quadro2 Pro\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 6500\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GeForce 6200 TurboCache(TM)\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"GeForce 6200SE TurboCache(TM)\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 6200 LE\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce Go 6200\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro NVS 285\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce Go 6400\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 6250\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 7100 GS\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce4 MX 460\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce4 MX 440\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce4 MX 420\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce4 MX 440-SE\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce4 440 Go\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce4 420 Go\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GeForce4 420 Go 32M\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce4 460 Go\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro4 550 XGL\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GeForce4 440 Go 64M\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro NVS 400\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Quadro4 500 GoGL\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GeForce4 410 Go 16M\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GeForce4 MX 440 with AGP8X\00", [37 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GeForce4 MX 440SE with AGP8X\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GeForce4 MX 420 with AGP8X\00", [37 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce4 MX 4000\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro4 580 XGL\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GeForce4 MX with AGP8X (Mac)\00", [35 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0189 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 16, ptr null, %struct.nvkm_device_quirk { i8 0, i8 4 } }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Quadro NVS 280 SD\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro4 380 XGL\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Quadro NVS 50 PCI\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 8800 GTX\00", [47 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 8800 GTS\00", [47 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce 8800 Ultra\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Tesla C870\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 5600\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 4600\00", [17 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GeForce2 Integrated GPU\00", [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 7350 LE\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 7300 LE\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 7550 LE\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GeForce 7300 SE/7200 GS\00", [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce Go 7200\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce Go 7300\00", [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce Go 7400\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro NVS 110M\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro NVS 120M\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 350M\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 7500 LE\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro FX 350\00", [18 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 7300 GS\00", [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GeForce4 MX Integrated GPU\00", [37 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_01f0 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 5218, i16 22288, ptr null, %struct.nvkm_device_quirk { i8 12, i8 0 } }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GeForce3\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce3 Ti 200\00", [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce3 Ti 500\00", [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Quadro DCC\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce 6200 A-LE\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 6150\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 6150 LE\00", [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 6100\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce Go 6150\00", [16 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Quadro NVS 210S / GeForce 6150LE\00", [63 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce Go 6100\00", [16 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce4 Ti 4600\00", [47 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce4 Ti 4400\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce4 Ti 4200\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro4 900 XGL\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro4 750 XGL\00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro4 700 XGL\00", [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce4 Ti 4800\00", [47 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GeForce4 Ti 4200 with AGP8X\00", [36 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GeForce4 Ti 4800 SE\00", [44 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce4 4200 Go\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro4 980 XGL\00", [16 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro4 780 XGL\00", [16 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Quadro4 700 GoGL\00", [47 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 7900 GTX\00", [47 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GeForce 7900 GT/GTO\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 7900 GS\00", [16 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 7950 GX2\00", [47 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 7950 GT\00", [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GeForce Go 7950 GTX\00", [44 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce Go 7900 GS\00", [45 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro NVS 510M\00", [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro FX 2500M\00", [16 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro FX 1500M\00", [16 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 5500\00", [17 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 3500\00", [17 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 1500\00", [17 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Quadro FX 4500 X2\00", [46 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 7600 GT\00", [16 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 7600 GS\00", [16 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 7300 GT\00", [16 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GeForce FX 5800 Ultra\00", [42 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce FX 5800\00", [16 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 2000\00", [17 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 1000\00", [17 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GeForce FX 5600 Ultra\00", [42 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce FX 5600\00", [16 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce FX 5600XT\00", [46 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce FX Go5600\00", [46 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce FX Go5650\00", [46 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro FX Go700\00", [16 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce FX 5200\00", [16 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GeForce FX 5200 Ultra\00", [42 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0322 = internal constant { [3 x %struct.nvkm_device_pci_vendor], [60 x i8] } { [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6618, i16 4149, ptr null, %struct.nvkm_device_quirk { i8 12, i8 0 } }, %struct.nvkm_device_pci_vendor { i16 6618, i16 8245, ptr null, %struct.nvkm_device_quirk { i8 12, i8 0 } }, %struct.nvkm_device_pci_vendor zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce FX 5200LE\00", [46 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce FX Go5200\00", [46 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce FX Go5250\00", [46 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce FX 5500\00", [16 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce FX 5100\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GeForce FX Go5200 32M/64M\00", [38 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Quadro NVS 55/280 PCI\00", [42 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Quadro FX 500/FX 600\00", [43 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce FX Go53xx\00", [46 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce FX Go5100\00", [46 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GeForce FX 5900 Ultra\00", [42 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce FX 5900\00", [16 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce FX 5900XT\00", [46 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GeForce FX 5950 Ultra\00", [42 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce FX 5900ZT\00", [46 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 3000\00", [17 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro FX 700\00", [18 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GeForce FX 5700 Ultra\00", [42 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce FX 5700\00", [16 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce FX 5700LE\00", [46 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce FX 5700VE\00", [46 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce FX Go5700\00", [46 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Quadro FX Go1000\00", [47 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 1100\00", [17 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 7650 GS\00", [16 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 7600 LE\00", [16 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce Go 7700\00", [16 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce Go 7600\00", [16 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce Go 7600 GT\00", [45 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 560M\00", [17 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro FX 560\00", [18 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GeForce 6150SE nForce 430\00", [38 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GeForce 6100 nForce 405\00", [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GeForce 6100 nForce 400\00", [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GeForce 6100 nForce 420\00", [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GeForce 7025 / nForce 630a\00", [37 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 8600 GTS\00", [47 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 8600 GT\00", [16 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 8600 GS\00", [16 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 8400 GS\00", [16 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 9500M GS\00", [47 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 8300 GS\00", [16 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 8600M GT\00", [47 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 9650M GS\00", [47 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 8700M GT\00", [47 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro FX 370\00", [18 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro NVS 320M\00", [16 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 570M\00", [17 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro FX 1600M\00", [16 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro FX 570\00", [18 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 1700\00", [17 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 330\00", [17 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 8400 SE\00", [16 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 8500 GT\00", [16 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 8600M GS\00", [47 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 8400M GT\00", [47 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 8400M GS\00", [47 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 8400M G\00", [16 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro NVS 140M\00", [16 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro NVS 130M\00", [16 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro NVS 135M\00", [16 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 9400 GT\00", [16 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 360M\00", [17 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 9300M G\00", [16 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro NVS 290\00", [17 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GeForce 7150M / nForce 630M\00", [36 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GeForce 7000M / nForce 610M\00", [36 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"GeForce 7050 PV / nForce 630a\00", [34 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 295\00", [16 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 280\00", [16 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 260\00", [16 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 285\00", [16 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 275\00", [16 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tesla C1060\00", [20 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_05e7 = internal constant { [6 x %struct.nvkm_device_pci_vendor], [56 x i8] } { [6 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 1429, ptr @.str.574, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 1679, ptr @.str.574, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 1687, ptr @.str.575, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 1812, ptr @.str.575, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 1859, ptr @.str.575, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Quadroplex 2200 D2\00", [45 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Quadroplex 2200 S4\00", [45 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Quadro CX\00", [22 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 5800\00", [17 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 4800\00", [17 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 3800\00", [17 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GeForce 8800 GTS 512\00", [43 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 9800 GT\00", [16 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 8800 GT\00", [16 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 230\00", [17 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 9800 GX2\00", [47 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 8800 GS\00", [16 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTS 240\00", [16 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce 9800M GTX\00", [46 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce 8800M GTS\00", [46 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0609 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4203, i16 167, ptr @.str.247, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 280M\00", [47 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 9800M GT\00", [47 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce 8800M GTX\00", [46 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 285M\00", [47 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 9600 GSO\00", [47 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GeForce 9800 GTX/9800 GTX+\00", [37 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce 9800 GTX+\00", [46 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTS 250\00", [16 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 260M\00", [47 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Quadro FX 4700 X2\00", [46 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 3700\00", [17 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro VX 200\00", [18 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro FX 3600M\00", [16 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro FX 2800M\00", [16 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro FX 3700M\00", [16 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro FX 3800M\00", [16 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 9600 GT\00", [16 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 9600 GS\00", [16 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GeForce 9600 GSO 512\00", [43 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 130\00", [17 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 140\00", [17 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce 9800M GTS\00", [46 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce 9700M GTS\00", [46 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 9800M GS\00", [47 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_062e = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4203, i16 1541, ptr @.str.270, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce 9700 S\00", [17 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTS 160M\00", [47 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTS 150M\00", [47 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 1800\00", [17 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro FX 2700M\00", [16 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 9500 GT\00", [16 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 9500 GS\00", [16 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 120\00", [17 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 9600M GT\00", [47 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 9600M GS\00", [47 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0649 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4163, i16 8237, ptr @.str.291, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 9700M GT\00", [47 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 9500M G\00", [16 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 9650M GT\00", [47 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce G 110M\00", [17 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 130M\00", [16 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0652 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 5421, i16 2128, ptr @.str.576, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 120M\00", [16 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 220M\00", [16 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0654 = internal constant { [3 x %struct.nvkm_device_pci_vendor], [60 x i8] } { [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4163, i16 5282, ptr @.str.359, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5330, ptr @.str.359, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [60 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0655 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4203, i16 1587, ptr @.str.282, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0656 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4203, i16 1683, ptr @.str.282, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro FX 380\00", [18 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro FX 580\00", [18 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro FX 1700M\00", [16 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 770M\00", [17 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 480\00", [16 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 465\00", [16 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 480M\00", [47 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 470\00", [16 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Tesla C2050 / C2070\00", [44 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_06d1 = internal constant { [3 x %struct.nvkm_device_pci_vendor], [60 x i8] } { [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 1905, ptr @.str.577, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 1906, ptr @.str.578, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tesla M2070\00", [20 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_06d2 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 2191, ptr @.str.579, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Quadro 6000\00", [20 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Quadro 5000\00", [20 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro 5000M\00", [19 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Quadro 4000\00", [20 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Tesla T20 Processor\00", [44 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_06de = internal constant { [9 x %struct.nvkm_device_pci_vendor], [52 x i8] } { [9 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 1907, ptr @.str.580, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2095, ptr @.str.581, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2112, ptr @.str.579, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2114, ptr @.str.581, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2118, ptr @.str.581, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2150, ptr @.str.581, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2311, ptr @.str.581, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2334, ptr @.str.581, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Tesla M2070-Q\00", [18 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 9300 GE\00", [16 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 9300 GS\00", [16 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 8400\00", [19 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 9300M GS\00", [47 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce G100\00", [19 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 9300 SE\00", [16 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 9200M GS\00", [47 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_06e8 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4156, i16 13835, ptr @.str.582, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro NVS 150M\00", [16 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro NVS 160M\00", [16 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce G 105M\00", [17 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce G 103M\00", [17 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GeForce G105M\00", [18 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro NVS 420\00", [17 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Quadro FX 370 LP\00", [47 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_06f9 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 1549, ptr @.str.583, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro NVS 450\00", [17 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 370M\00", [17 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro NVS 295\00", [17 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HICx16 + Graphics\00", [46 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_06ff = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 1809, ptr @.str.584, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GeForce 7150 / nForce 630i\00", [37 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GeForce 7100 / nForce 630i\00", [37 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GeForce 7050 / nForce 630i\00", [37 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GeForce 7050 / nForce 610i\00", [37 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GeForce 7050 / nForce 620i\00", [37 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GeForce 8200M\00", [18 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 9100M G\00", [16 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 8200M G\00", [16 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 9200\00", [19 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 9100\00", [19 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 8300\00", [19 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 8200\00", [19 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nForce 730a\00", [20 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nForce 980a/780a SLI\00", [43 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nForce 750a SLI\00", [16 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GeForce 8100 / nForce 720a\00", [37 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 9400\00", [19 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce 9400M G\00", [16 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GeForce 9400M\00", [18 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 9300\00", [19 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ION\00", [28 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0866 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4203, i16 177, ptr @.str.344, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nForce 760i SLI\00", [16 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GeForce 9300 / nForce 730i\00", [37 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GeForce G102M\00", [18 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0872 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4163, i16 7234, ptr @.str.585, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0873 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4163, i16 7250, ptr @.str.585, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ION LE\00", [25 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 320M\00", [19 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 220\00", [17 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GeForce 315\00", [20 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GeForce 210\00", [20 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GeForce 405\00", [20 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 230M\00", [16 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 330M\00", [16 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NVS 5100M\00", [22 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 320M\00", [16 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 415\00", [17 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 240M\00", [16 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 325M\00", [16 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Quadro 400\00", [21 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 880M\00", [17 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce G210\00", [19 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GeForce 205\00", [20 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GeForce 310\00", [20 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Second Generation ION\00", [42 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NVS 2100M\00", [22 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NVS 3100M\00", [22 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 305M\00", [19 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0a6e = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13831, ptr @.str.368, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 310M\00", [19 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0a70 = internal constant { [3 x %struct.nvkm_device_pci_vendor], [60 x i8] } { [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13829, ptr @.str.368, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13847, ptr @.str.368, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [60 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0a73 = internal constant { [3 x %struct.nvkm_device_pci_vendor], [60 x i8] } { [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13831, ptr @.str.368, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13840, ptr @.str.368, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GeForce G210M\00", [18 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0a74 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 -28614, ptr @.str.365, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0a75 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13829, ptr @.str.368, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Quadro FX 380 LP\00", [47 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 315M\00", [19 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0a7a = internal constant { [11 x %struct.nvkm_device_pci_vendor], [60 x i8] } { [11 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 5218, i16 -21935, ptr @.str.355, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -21928, ptr @.str.355, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -21391, ptr @.str.355, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -21374, ptr @.str.355, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5698, i16 14720, ptr @.str.355, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14672, ptr @.str.586, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14717, ptr @.str.586, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6922, i16 -28492, ptr @.str.355, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 7165, i16 3, ptr @.str.355, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 7165, i16 -32762, ptr @.str.355, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quadro FX 380M\00", [17 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 320\00", [17 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 240\00", [17 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 340\00", [17 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTS 260M\00", [47 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTS 250M\00", [47 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 335M\00", [16 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTS 350M\00", [47 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTS 360M\00", [47 x i8] zeroinitializer }, align 32
@.str.385 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Quadro FX 1800M\00", [16 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 440\00", [17 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTS 450\00", [16 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 555M\00", [16 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 460M\00", [47 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 445M\00", [16 x i8] zeroinitializer }, align 32
@.str.391 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 435M\00", [16 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 550M\00", [16 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Quadro 2000\00", [20 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0dd8 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 2324, ptr @.str.587, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro 2000M\00", [19 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 430\00", [17 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 420\00", [17 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 635M\00", [16 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 520\00", [17 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 530\00", [17 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 610\00", [17 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 620M\00", [16 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 630M\00", [16 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0de9 = internal constant { [10 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [10 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4133, i16 1682, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1829, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1832, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1835, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1838, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1875, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1876, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14711, ptr @.str.428, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6922, i16 8720, ptr @.str.397, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 610M\00", [19 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0dea = internal constant { [6 x %struct.nvkm_device_pci_vendor], [56 x i8] } { [6 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13914, ptr @.str.588, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13915, ptr @.str.588, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13918, ptr @.str.588, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13920, ptr @.str.588, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13932, ptr @.str.588, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 525M\00", [16 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 520M\00", [16 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 415M\00", [16 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NVS 5400M\00", [22 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 425M\00", [16 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 420M\00", [16 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 540M\00", [16 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0df4 = internal constant { [3 x %struct.nvkm_device_pci_vendor], [60 x i8] } { [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 5421, i16 2386, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 2387, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Quadro 600\00", [21 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Quadro 500M\00", [20 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro 1000M\00", [19 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NVS 5200M\00", [22 x i8] zeroinitializer }, align 32
@.str.415 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 460\00", [16 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce GTX 460 SE\00", [45 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 470M\00", [47 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 485M\00", [47 x i8] zeroinitializer }, align 32
@.str.419 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro 3000M\00", [19 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro 4000M\00", [19 x i8] zeroinitializer }, align 32
@.str.421 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 630\00", [17 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 620\00", [17 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 730\00", [17 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 640\00", [17 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 650\00", [16 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 740\00", [17 x i8] zeroinitializer }, align 32
@.str.427 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 755M\00", [16 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce GT 640M LE\00", [45 x i8] zeroinitializer }, align 32
@.str.429 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 650M\00", [16 x i8] zeroinitializer }, align 32
@.str.430 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 640M\00", [16 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0fd2 = internal constant { [3 x %struct.nvkm_device_pci_vendor], [60 x i8] } { [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4136, i16 1429, ptr @.str.428, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1458, ptr @.str.428, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 660M\00", [47 x i8] zeroinitializer }, align 32
@.str.432 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 645M\00", [16 x i8] zeroinitializer }, align 32
@.str.433 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 740M\00", [16 x i8] zeroinitializer }, align 32
@.str.434 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 730M\00", [16 x i8] zeroinitializer }, align 32
@.str.435 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 745M\00", [16 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_0fe3 = internal constant { [3 x %struct.nvkm_device_pci_vendor], [60 x i8] } { [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4156, i16 11030, ptr @.str.589, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13941, ptr @.str.589, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.436 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 750M\00", [16 x i8] zeroinitializer }, align 32
@.str.437 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 710A\00", [19 x i8] zeroinitializer }, align 32
@.str.438 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GRID K340\00", [22 x i8] zeroinitializer }, align 32
@.str.439 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GRID K1\00", [24 x i8] zeroinitializer }, align 32
@.str.440 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Quadro K420\00", [20 x i8] zeroinitializer }, align 32
@.str.441 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro K1100M\00", [18 x i8] zeroinitializer }, align 32
@.str.442 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro K500M\00", [19 x i8] zeroinitializer }, align 32
@.str.443 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro K2000D\00", [18 x i8] zeroinitializer }, align 32
@.str.444 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Quadro K600\00", [20 x i8] zeroinitializer }, align 32
@.str.445 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro K2000M\00", [18 x i8] zeroinitializer }, align 32
@.str.446 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro K1000M\00", [18 x i8] zeroinitializer }, align 32
@.str.447 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NVS 510\00", [24 x i8] zeroinitializer }, align 32
@.str.448 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro K2000\00", [19 x i8] zeroinitializer }, align 32
@.str.449 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Quadro 410\00", [21 x i8] zeroinitializer }, align 32
@.str.450 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GeForce GTX TITAN Z\00", [44 x i8] zeroinitializer }, align 32
@.str.451 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 780\00", [16 x i8] zeroinitializer }, align 32
@.str.452 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce GTX TITAN\00", [46 x i8] zeroinitializer }, align 32
@.str.453 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce GTX 780 Ti\00", [45 x i8] zeroinitializer }, align 32
@.str.454 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GeForce GTX TITAN Black\00", [40 x i8] zeroinitializer }, align 32
@.str.455 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tesla K20Xm\00", [20 x i8] zeroinitializer }, align 32
@.str.456 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Tesla K20c\00", [21 x i8] zeroinitializer }, align 32
@.str.457 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Tesla K40m\00", [21 x i8] zeroinitializer }, align 32
@.str.458 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Tesla K40c\00", [21 x i8] zeroinitializer }, align 32
@.str.459 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Tesla K20s\00", [21 x i8] zeroinitializer }, align 32
@.str.460 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tesla K40st\00", [20 x i8] zeroinitializer }, align 32
@.str.461 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Tesla K20m\00", [21 x i8] zeroinitializer }, align 32
@.str.462 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Tesla K40s\00", [21 x i8] zeroinitializer }, align 32
@.str.463 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Tesla K40t\00", [21 x i8] zeroinitializer }, align 32
@.str.464 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Tesla K80\00", [22 x i8] zeroinitializer }, align 32
@.str.465 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro K6000\00", [19 x i8] zeroinitializer }, align 32
@.str.466 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro K5200\00", [19 x i8] zeroinitializer }, align 32
@.str.467 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GeForce 510\00", [20 x i8] zeroinitializer }, align 32
@.str.468 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GeForce 605\00", [20 x i8] zeroinitializer }, align 32
@.str.469 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GeForce GT 625 (OEM)\00", [43 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_104b = internal constant { [6 x %struct.nvkm_device_pci_vendor], [56 x i8] } { [6 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4163, i16 -31668, ptr @.str.590, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31637, ptr @.str.590, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -19056, ptr @.str.590, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5963, i16 1573, ptr @.str.590, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5963, i16 -23003, ptr @.str.590, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.470 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 705\00", [17 x i8] zeroinitializer }, align 32
@.str.471 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GT 520MX\00", [47 x i8] zeroinitializer }, align 32
@.str.472 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 410M\00", [19 x i8] zeroinitializer }, align 32
@.str.473 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NVS 4200M\00", [22 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1058 = internal constant { [9 x %struct.nvkm_device_pci_vendor], [52 x i8] } { [9 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4156, i16 10993, ptr @.str.591, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13954, ptr @.str.592, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13970, ptr @.str.593, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13973, ptr @.str.592, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13992, ptr @.str.592, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13996, ptr @.str.592, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13997, ptr @.str.592, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 28762, i16 13954, ptr @.str.592, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.474 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 705M\00", [19 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_105b = internal constant { [3 x %struct.nvkm_device_pci_vendor], [60 x i8] } { [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4156, i16 11003, ptr @.str.593, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13985, ptr @.str.592, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.475 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NVS 315\00", [24 x i8] zeroinitializer }, align 32
@.str.476 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NVS 310\00", [24 x i8] zeroinitializer }, align 32
@.str.477 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 580\00", [16 x i8] zeroinitializer }, align 32
@.str.478 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 570\00", [16 x i8] zeroinitializer }, align 32
@.str.479 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce GTX 560 Ti\00", [45 x i8] zeroinitializer }, align 32
@.str.480 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 560\00", [16 x i8] zeroinitializer }, align 32
@.str.481 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 590\00", [16 x i8] zeroinitializer }, align 32
@.str.482 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tesla M2090\00", [20 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1091 = internal constant { [5 x %struct.nvkm_device_pci_vendor], [36 x i8] } { [5 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 2190, ptr @.str.594, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2193, ptr @.str.594, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2420, ptr @.str.594, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4318, i16 2445, ptr @.str.594, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.483 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tesla M2075\00", [20 x i8] zeroinitializer }, align 32
@.str.484 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tesla C2075\00", [20 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1096 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 2321, ptr @.str.577, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.485 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro 5010M\00", [19 x i8] zeroinitializer }, align 32
@.str.486 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Quadro 7000\00", [20 x i8] zeroinitializer }, align 32
@.str.487 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce 8400GS\00", [17 x i8] zeroinitializer }, align 32
@.str.488 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NVS 300\00", [24 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1140 = internal constant { [342 x %struct.nvkm_device_pci_vendor], [1048 x i8] } { [342 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4121, i16 -26209, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1536, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1542, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1610, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1612, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1658, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1664, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1670, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1673, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1675, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1677, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1678, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1681, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1682, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1684, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1794, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1817, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1829, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1832, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1835, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1838, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1842, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1891, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1907, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1908, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1910, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1914, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1915, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1916, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1917, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1918, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1919, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1921, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1944, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1945, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1947, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 1948, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2055, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2081, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2083, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2096, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2099, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2103, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2110, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2113, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2131, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2132, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2133, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2134, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2135, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2136, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2147, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2152, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2153, ptr @.str.596, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2163, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2168, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2171, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2175, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2177, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2181, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2186, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2203, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2337, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2350, ptr @.str.596, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2351, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2354, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2362, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2364, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2367, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2369, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2373, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2388, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4133, i16 2405, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1357, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1358, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1364, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1367, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1378, ptr @.str.597, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1381, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1384, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1424, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1426, ptr @.str.597, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1428, ptr @.str.597, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1429, ptr @.str.597, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1442, ptr @.str.597, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1457, ptr @.str.597, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1459, ptr @.str.597, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1498, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1502, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1504, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1512, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1524, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1551, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1583, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1614, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1618, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1619, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1621, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1630, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1634, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1677, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1709, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1710, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1711, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1712, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1728, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4136, i16 1729, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 6383, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 6393, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 6395, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 6397, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 6399, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8586, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8635, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8636, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8718, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8720, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8722, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8724, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8728, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8795, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8797, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8813, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8815, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8914, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 8921, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 9013, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 9015, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 10991, ptr @.str.598, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 11001, ptr @.str.437, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 4317, ptr @.str.414, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 4333, ptr @.str.414, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 4605, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 4685, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 4717, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 4893, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5117, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5319, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5383, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5549, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5613, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5645, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5693, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5725, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5741, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5837, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5853, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5901, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 5997, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 6029, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 6045, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8498, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8502, ptr @.str.414, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8634, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8698, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8714, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8730, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8762, ptr @.str.599, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8778, ptr @.str.599, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8826, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8842, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8954, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 9002, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 9018, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 9050, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 9066, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 9098, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31339, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31254, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31253, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31252, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31250, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31245, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31218, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31206, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31205, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31192, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31165, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31156, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31150, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31136, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31135, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4187, i16 3500, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4187, i16 3501, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4187, i16 3827, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4303, i16 6133, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1535, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1534, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1533, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1531, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1519, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1517, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1512, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1511, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1503, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1501, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1494, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1486, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1485, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1482, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1480, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1470, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1469, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1467, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1465, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1463, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1448, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1447, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1400, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4473, i16 -1399, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -20334, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -16171, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -16169, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -16158, ptr @.str.414, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -16157, ptr @.str.414, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -16156, ptr @.str.414, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -16115, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -14766, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -14583, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -14575, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -14538, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -14537, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -14523, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5197, i16 -14512, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 4280, ptr @.str.599, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 4329, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 4374, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -21965, ptr @.str.600, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -21854, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -21853, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -21326, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -21311, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -20895, ptr @.str.600, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -20891, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -20886, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5218, i16 -20879, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5312, i16 131, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 2342, ptr @.str.601, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 2434, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 2435, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 4101, ptr @.str.602, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 4114, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 4121, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 4144, ptr @.str.402, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 4181, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 4199, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 5421, i16 4242, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 8704, ptr @.str.414, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 8723, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 8736, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 12444, ptr @.str.598, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 12468, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 12471, ptr @.str.604, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 12516, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13851, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13852, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13853, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13910, ptr @.str.605, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13914, ptr @.str.474, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13918, ptr @.str.606, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13921, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13932, ptr @.str.606, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13957, ptr @.str.606, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13958, ptr @.str.606, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13959, ptr @.str.593, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13974, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13979, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13980, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13981, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13982, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13990, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13991, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13993, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13999, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14000, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14006, ptr @.str.603, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14336, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14337, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14338, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14339, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14340, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14342, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14344, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14349, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14350, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14351, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14353, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14354, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14355, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14358, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14359, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14360, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14362, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14364, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14365, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14593, ptr @.str.403, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14594, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14595, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14596, ptr @.str.607, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14597, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14599, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14608, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14610, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14611, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14613, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14723, ptr @.str.403, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20481, ptr @.str.403, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20483, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20485, ptr @.str.474, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20493, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20500, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20503, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20505, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20506, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20511, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20517, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20519, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20522, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20523, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20525, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20526, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20527, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20528, ptr @.str.474, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20529, ptr @.str.474, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20530, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20531, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20542, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20543, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 20544, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6228, i16 375, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6228, i16 384, ptr @.str.543, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6228, i16 400, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6228, i16 402, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6228, i16 548, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6922, i16 8413, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6922, i16 8415, ptr @.str.401, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6922, i16 8462, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6922, i16 8706, ptr @.str.545, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6922, i16 -28457, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6922, i16 -28451, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6992, i16 21808, ptr @.str.595, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [1048 x i8] zeroinitializer }, align 32
@.str.489 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 680\00", [16 x i8] zeroinitializer }, align 32
@.str.490 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce GTX 660 Ti\00", [45 x i8] zeroinitializer }, align 32
@.str.491 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 770\00", [16 x i8] zeroinitializer }, align 32
@.str.492 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 660\00", [16 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1185 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 4207, ptr @.str.493, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.493 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 760\00", [16 x i8] zeroinitializer }, align 32
@.str.494 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 690\00", [16 x i8] zeroinitializer }, align 32
@.str.495 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 670\00", [16 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1189 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4318, i16 4212, ptr @.str.499, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.496 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GRID K520\00", [22 x i8] zeroinitializer }, align 32
@.str.497 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GeForce GTX 760 (192-bit)\00", [38 x i8] zeroinitializer }, align 32
@.str.498 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Tesla K10\00", [22 x i8] zeroinitializer }, align 32
@.str.499 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GeForce GTX 760 Ti OEM\00", [41 x i8] zeroinitializer }, align 32
@.str.500 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Tesla K8\00", [23 x i8] zeroinitializer }, align 32
@.str.501 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 880M\00", [47 x i8] zeroinitializer }, align 32
@.str.502 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 870M\00", [47 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1199 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 5208, i16 -12287, ptr @.str.493, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.503 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 860M\00", [47 x i8] zeroinitializer }, align 32
@.str.504 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 775M\00", [47 x i8] zeroinitializer }, align 32
@.str.505 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 780M\00", [47 x i8] zeroinitializer }, align 32
@.str.506 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 680M\00", [47 x i8] zeroinitializer }, align 32
@.str.507 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce GTX 670MX\00", [46 x i8] zeroinitializer }, align 32
@.str.508 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce GTX 675MX\00", [46 x i8] zeroinitializer }, align 32
@.str.509 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GeForce GTX 680MX\00", [46 x i8] zeroinitializer }, align 32
@.str.510 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro K4200\00", [19 x i8] zeroinitializer }, align 32
@.str.511 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro K3100M\00", [18 x i8] zeroinitializer }, align 32
@.str.512 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro K4100M\00", [18 x i8] zeroinitializer }, align 32
@.str.513 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro K5100M\00", [18 x i8] zeroinitializer }, align 32
@.str.514 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro K5000\00", [19 x i8] zeroinitializer }, align 32
@.str.515 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro K5000M\00", [18 x i8] zeroinitializer }, align 32
@.str.516 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro K4000M\00", [18 x i8] zeroinitializer }, align 32
@.str.517 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro K3000M\00", [18 x i8] zeroinitializer }, align 32
@.str.518 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GRID K2\00", [24 x i8] zeroinitializer }, align 32
@.str.519 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GeForce GTX 650 Ti BOOST\00", [39 x i8] zeroinitializer }, align 32
@.str.520 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce GTX 650 Ti\00", [45 x i8] zeroinitializer }, align 32
@.str.521 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 645\00", [16 x i8] zeroinitializer }, align 32
@.str.522 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 770M\00", [47 x i8] zeroinitializer }, align 32
@.str.523 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 765M\00", [47 x i8] zeroinitializer }, align 32
@.str.524 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 760M\00", [47 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_11e3 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13955, ptr @.str.608, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.525 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro K4000\00", [19 x i8] zeroinitializer }, align 32
@.str.526 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro K2100M\00", [18 x i8] zeroinitializer }, align 32
@.str.527 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GeForce GTX 460 SE v2\00", [42 x i8] zeroinitializer }, align 32
@.str.528 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce GTX 460 v2\00", [45 x i8] zeroinitializer }, align 32
@.str.529 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 555\00", [16 x i8] zeroinitializer }, align 32
@.str.530 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 645\00", [17 x i8] zeroinitializer }, align 32
@.str.531 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce GTX 560 SE\00", [45 x i8] zeroinitializer }, align 32
@.str.532 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 570M\00", [47 x i8] zeroinitializer }, align 32
@.str.533 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 580M\00", [47 x i8] zeroinitializer }, align 32
@.str.534 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 675M\00", [47 x i8] zeroinitializer }, align 32
@.str.535 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 670M\00", [47 x i8] zeroinitializer }, align 32
@.str.536 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 545\00", [17 x i8] zeroinitializer }, align 32
@.str.537 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce GTX 550 Ti\00", [45 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1247 = internal constant { [4 x %struct.nvkm_device_pci_vendor], [48 x i8] } { [4 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4163, i16 8490, ptr @.str.397, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8491, ptr @.str.397, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 8492, ptr @.str.397, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_124d = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 5218, i16 4300, ptr @.str.397, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.538 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 560M\00", [47 x i8] zeroinitializer }, align 32
@.str.539 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 635\00", [17 x i8] zeroinitializer }, align 32
@.str.540 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 710\00", [17 x i8] zeroinitializer }, align 32
@.str.541 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 720\00", [17 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1290 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4156, i16 11002, ptr @.str.609, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.542 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 735M\00", [16 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1292 = internal constant { [4 x %struct.nvkm_device_pci_vendor], [48 x i8] } { [4 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13941, ptr @.str.610, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13948, ptr @.str.610, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13956, ptr @.str.610, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.543 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 710M\00", [19 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1295 = internal constant { [5 x %struct.nvkm_device_pci_vendor], [36 x i8] } { [5 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4156, i16 11021, ptr @.str.437, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 11023, ptr @.str.437, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 11040, ptr @.str.611, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4156, i16 11041, ptr @.str.611, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.544 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 825M\00", [19 x i8] zeroinitializer }, align 32
@.str.545 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 720M\00", [16 x i8] zeroinitializer }, align 32
@.str.546 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 920M\00", [19 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1299 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13979, ptr @.str.612, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.547 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 910M\00", [19 x i8] zeroinitializer }, align 32
@.str.548 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro K610M\00", [19 x i8] zeroinitializer }, align 32
@.str.549 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro K510M\00", [19 x i8] zeroinitializer }, align 32
@.str.550 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 830M\00", [19 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1340 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4156, i16 11051, ptr @.str.613, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.551 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 840M\00", [19 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1341 = internal constant { [5 x %struct.nvkm_device_pci_vendor], [36 x i8] } { [5 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13975, ptr @.str.614, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13977, ptr @.str.614, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13980, ptr @.str.614, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13999, ptr @.str.614, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.552 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 845M\00", [19 x i8] zeroinitializer }, align 32
@.str.553 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 930M\00", [19 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1346 = internal constant { [3 x %struct.nvkm_device_pci_vendor], [60 x i8] } { [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 12474, ptr @.str.615, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 13868, ptr @.str.615, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.554 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 940M\00", [19 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1347 = internal constant { [3 x %struct.nvkm_device_pci_vendor], [60 x i8] } { [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 14009, ptr @.str.616, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6058, i16 14010, ptr @.str.616, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [60 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_137a = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 8741, ptr @.str.617, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_137d = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13977, ptr @.str.616, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.555 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce GTX 750 Ti\00", [45 x i8] zeroinitializer }, align 32
@.str.556 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 750\00", [16 x i8] zeroinitializer }, align 32
@.str.557 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 745\00", [16 x i8] zeroinitializer }, align 32
@.str.558 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 850M\00", [47 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1391 = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 13975, ptr @.str.618, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_1392 = internal constant { [3 x %struct.nvkm_device_pci_vendor], [60 x i8] } { [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4136, i16 1642, ptr @.str.619, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 4163, i16 -31202, ptr @.str.555, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.559 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 950M\00", [47 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_139a = internal constant { [2 x %struct.nvkm_device_pci_vendor], [40 x i8] } { [2 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 6058, i16 14009, ptr @.str.620, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.560 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 960M\00", [47 x i8] zeroinitializer }, align 32
@nvkm_device_pci_10de_139b = internal constant { [3 x %struct.nvkm_device_pci_vendor], [60 x i8] } { [3 x %struct.nvkm_device_pci_vendor] [%struct.nvkm_device_pci_vendor { i16 4136, i16 1699, ptr @.str.503, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor { i16 6618, i16 -15800, ptr @.str.555, %struct.nvkm_device_quirk zeroinitializer }, %struct.nvkm_device_pci_vendor zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.561 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Quadro K2200M\00", [18 x i8] zeroinitializer }, align 32
@.str.562 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro K2200\00", [19 x i8] zeroinitializer }, align 32
@.str.563 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Quadro K620\00", [20 x i8] zeroinitializer }, align 32
@.str.564 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro K1200\00", [19 x i8] zeroinitializer }, align 32
@.str.565 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 980\00", [16 x i8] zeroinitializer }, align 32
@.str.566 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 970\00", [16 x i8] zeroinitializer }, align 32
@.str.567 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 980M\00", [47 x i8] zeroinitializer }, align 32
@.str.568 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 970M\00", [47 x i8] zeroinitializer }, align 32
@.str.569 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 965M\00", [47 x i8] zeroinitializer }, align 32
@.str.570 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GTX 960\00", [16 x i8] zeroinitializer }, align 32
@.str.571 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GeForce GTX TITAN X\00", [44 x i8] zeroinitializer }, align 32
@.str.572 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce GTX 980 Ti\00", [45 x i8] zeroinitializer }, align 32
@.str.573 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro M6000\00", [19 x i8] zeroinitializer }, align 32
@.str.574 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Tesla T10 Processor\00", [44 x i8] zeroinitializer }, align 32
@.str.575 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tesla M1060\00", [20 x i8] zeroinitializer }, align 32
@.str.576 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GeForce GT 240M LE\00", [45 x i8] zeroinitializer }, align 32
@.str.577 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tesla C2050\00", [20 x i8] zeroinitializer }, align 32
@.str.578 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tesla C2070\00", [20 x i8] zeroinitializer }, align 32
@.str.579 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tesla X2070\00", [20 x i8] zeroinitializer }, align 32
@.str.580 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tesla S2050\00", [20 x i8] zeroinitializer }, align 32
@.str.581 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tesla M2050\00", [20 x i8] zeroinitializer }, align 32
@.str.582 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce 9200M GE\00", [47 x i8] zeroinitializer }, align 32
@.str.583 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Quadro FX 370 Low Profile\00", [38 x i8] zeroinitializer }, align 32
@.str.584 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HICx8 + Graphics\00", [47 x i8] zeroinitializer }, align 32
@.str.585 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GeForce G205M\00", [18 x i8] zeroinitializer }, align 32
@.str.586 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 405M\00", [19 x i8] zeroinitializer }, align 32
@.str.587 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro 2000D\00", [19 x i8] zeroinitializer }, align 32
@.str.588 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GeForce 615\00", [20 x i8] zeroinitializer }, align 32
@.str.589 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 745A\00", [16 x i8] zeroinitializer }, align 32
@.str.590 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT 625\00", [17 x i8] zeroinitializer }, align 32
@.str.591 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GeForce 610\00", [20 x i8] zeroinitializer }, align 32
@.str.592 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 800A\00", [19 x i8] zeroinitializer }, align 32
@.str.593 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 705A\00", [19 x i8] zeroinitializer }, align 32
@.str.594 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tesla X2090\00", [20 x i8] zeroinitializer }, align 32
@.str.595 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 820M\00", [19 x i8] zeroinitializer }, align 32
@.str.596 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 810M\00", [19 x i8] zeroinitializer }, align 32
@.str.597 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT625M\00", [17 x i8] zeroinitializer }, align 32
@.str.598 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 720A\00", [16 x i8] zeroinitializer }, align 32
@.str.599 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 710M\00", [16 x i8] zeroinitializer }, align 32
@.str.600 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 720M\00", [19 x i8] zeroinitializer }, align 32
@.str.601 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 620M\00", [19 x i8] zeroinitializer }, align 32
@.str.602 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT820M\00", [17 x i8] zeroinitializer }, align 32
@.str.603 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 820A\00", [19 x i8] zeroinitializer }, align 32
@.str.604 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 720A\00", [19 x i8] zeroinitializer }, align 32
@.str.605 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeForce GT620M\00", [17 x i8] zeroinitializer }, align 32
@.str.606 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 800M\00", [19 x i8] zeroinitializer }, align 32
@.str.607 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 625M\00", [16 x i8] zeroinitializer }, align 32
@.str.608 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 760A\00", [47 x i8] zeroinitializer }, align 32
@.str.609 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 730A\00", [19 x i8] zeroinitializer }, align 32
@.str.610 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GeForce GT 740A\00", [16 x i8] zeroinitializer }, align 32
@.str.611 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 810A\00", [19 x i8] zeroinitializer }, align 32
@.str.612 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 920A\00", [19 x i8] zeroinitializer }, align 32
@.str.613 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 830A\00", [19 x i8] zeroinitializer }, align 32
@.str.614 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 840A\00", [19 x i8] zeroinitializer }, align 32
@.str.615 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 930A\00", [19 x i8] zeroinitializer }, align 32
@.str.616 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GeForce 940A\00", [19 x i8] zeroinitializer }, align 32
@.str.617 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Quadro K620M\00", [19 x i8] zeroinitializer }, align 32
@.str.618 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 850A\00", [47 x i8] zeroinitializer }, align 32
@.str.619 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GeForce GPU\00", [20 x i8] zeroinitializer }, align 32
@.str.620 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GeForce GTX 950A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.621 = private unnamed_addr constant [21 x i8] c"nvkm_device_pci_10de\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 801, i32 1 }
@___asan_gen_.624 = private unnamed_addr constant [21 x i8] c"nvkm_device_pci_func\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1610, i32 1 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 802, i32 12 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 803, i32 12 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 804, i32 12 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 805, i32 12 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 806, i32 12 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 807, i32 12 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 808, i32 12 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 809, i32 12 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 810, i32 12 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 811, i32 12 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 812, i32 12 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 814, i32 12 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 816, i32 12 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 817, i32 12 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 819, i32 12 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 820, i32 12 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 821, i32 12 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 822, i32 12 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 823, i32 12 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 824, i32 12 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 825, i32 12 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 830, i32 12 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 831, i32 12 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 832, i32 12 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 833, i32 12 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 834, i32 12 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 835, i32 12 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 836, i32 12 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 837, i32 12 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 838, i32 12 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 841, i32 12 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 843, i32 12 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 844, i32 12 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 845, i32 12 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 846, i32 12 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 847, i32 12 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 848, i32 12 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 849, i32 12 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 850, i32 12 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 851, i32 12 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 852, i32 12 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 853, i32 12 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 854, i32 12 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 858, i32 12 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 859, i32 12 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 860, i32 12 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 861, i32 12 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 862, i32 12 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 864, i32 12 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 865, i32 12 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 866, i32 12 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 867, i32 12 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 868, i32 12 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 870, i32 12 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 871, i32 12 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 872, i32 12 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 873, i32 12 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 874, i32 12 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 875, i32 12 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 876, i32 12 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 877, i32 12 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 878, i32 12 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 879, i32 12 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 880, i32 12 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 883, i32 12 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 884, i32 12 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 885, i32 12 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 886, i32 12 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 887, i32 12 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 888, i32 12 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 889, i32 12 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 890, i32 12 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 891, i32 12 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 892, i32 12 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 893, i32 12 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 894, i32 12 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 895, i32 12 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 896, i32 12 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 897, i32 12 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 898, i32 12 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 899, i32 12 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 900, i32 12 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 901, i32 12 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 902, i32 12 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 903, i32 12 }
@___asan_gen_.882 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0189\00", align 1
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 41, i32 1 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 904, i32 12 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 905, i32 12 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 906, i32 12 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 907, i32 12 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 908, i32 12 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 909, i32 12 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 910, i32 12 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 911, i32 12 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 912, i32 12 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 913, i32 12 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 914, i32 12 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 915, i32 12 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 916, i32 12 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 917, i32 12 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 918, i32 12 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 919, i32 12 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 920, i32 12 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 921, i32 12 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 922, i32 12 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 923, i32 12 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 924, i32 12 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 925, i32 12 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 926, i32 12 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 927, i32 12 }
@___asan_gen_.957 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_01f0\00", align 1
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 48, i32 1 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 928, i32 12 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 929, i32 12 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 930, i32 12 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 931, i32 12 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 937, i32 12 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 938, i32 12 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 939, i32 12 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 940, i32 12 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 941, i32 12 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 942, i32 12 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 943, i32 12 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 944, i32 12 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 945, i32 12 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 946, i32 12 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 947, i32 12 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 948, i32 12 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 949, i32 12 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 950, i32 12 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 951, i32 12 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 952, i32 12 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 953, i32 12 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 954, i32 12 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 955, i32 12 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 956, i32 12 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 957, i32 12 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 958, i32 12 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 959, i32 12 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 960, i32 12 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 962, i32 12 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 963, i32 12 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 964, i32 12 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 965, i32 12 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 966, i32 12 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 967, i32 12 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 968, i32 12 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 969, i32 12 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 970, i32 12 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 971, i32 12 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 972, i32 12 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 973, i32 12 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 974, i32 12 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 977, i32 12 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 978, i32 12 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 979, i32 12 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 980, i32 12 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 981, i32 12 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 982, i32 12 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 983, i32 12 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 984, i32 12 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 985, i32 12 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 986, i32 12 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 987, i32 12 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 988, i32 12 }
@___asan_gen_.1119 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0322\00", align 1
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 55, i32 1 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 990, i32 12 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 991, i32 12 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 992, i32 12 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 993, i32 12 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 994, i32 12 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 995, i32 12 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 996, i32 12 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 997, i32 12 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 998, i32 12 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 999, i32 12 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1000, i32 12 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1001, i32 12 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1002, i32 12 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1003, i32 12 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1004, i32 12 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1005, i32 12 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1006, i32 12 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1007, i32 12 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1008, i32 12 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1009, i32 12 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1010, i32 12 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1011, i32 12 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1013, i32 12 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1014, i32 12 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1015, i32 12 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1020, i32 12 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1022, i32 12 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1023, i32 12 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1024, i32 12 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1025, i32 12 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1026, i32 12 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1027, i32 12 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1028, i32 12 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1029, i32 12 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1030, i32 12 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1031, i32 12 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1032, i32 12 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1033, i32 12 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1035, i32 12 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1036, i32 12 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1037, i32 12 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1038, i32 12 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1039, i32 12 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1040, i32 12 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1041, i32 12 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1042, i32 12 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1043, i32 12 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1044, i32 12 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1045, i32 12 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1046, i32 12 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1047, i32 12 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1048, i32 12 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1049, i32 12 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1050, i32 12 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1054, i32 12 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1055, i32 12 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1056, i32 12 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1057, i32 12 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1058, i32 12 }
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1059, i32 12 }
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1060, i32 12 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1061, i32 12 }
@___asan_gen_.1310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1062, i32 12 }
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1063, i32 12 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1064, i32 12 }
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1065, i32 12 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1066, i32 12 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1067, i32 12 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1070, i32 12 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1071, i32 12 }
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1072, i32 12 }
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1073, i32 12 }
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1074, i32 12 }
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1075, i32 12 }
@___asan_gen_.1344 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_05e7\00", align 1
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 63, i32 1 }
@___asan_gen_.1349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1078, i32 12 }
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1079, i32 12 }
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1080, i32 12 }
@___asan_gen_.1358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1081, i32 12 }
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1082, i32 12 }
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1083, i32 12 }
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1084, i32 12 }
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1085, i32 12 }
@___asan_gen_.1373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1086, i32 12 }
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1087, i32 12 }
@___asan_gen_.1379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1088, i32 12 }
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1090, i32 12 }
@___asan_gen_.1385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1091, i32 12 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1092, i32 12 }
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1093, i32 12 }
@___asan_gen_.1392 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0609\00", align 1
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 73, i32 1 }
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1094, i32 12 }
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1095, i32 12 }
@___asan_gen_.1403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1096, i32 12 }
@___asan_gen_.1406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1098, i32 12 }
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1099, i32 12 }
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1101, i32 12 }
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1102, i32 12 }
@___asan_gen_.1418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1104, i32 12 }
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1106, i32 12 }
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1107, i32 12 }
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1108, i32 12 }
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1109, i32 12 }
@___asan_gen_.1433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1110, i32 12 }
@___asan_gen_.1436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1111, i32 12 }
@___asan_gen_.1439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1112, i32 12 }
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1113, i32 12 }
@___asan_gen_.1445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1115, i32 12 }
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1116, i32 12 }
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1117, i32 12 }
@___asan_gen_.1454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1118, i32 12 }
@___asan_gen_.1457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1119, i32 12 }
@___asan_gen_.1460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1120, i32 12 }
@___asan_gen_.1463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1121, i32 12 }
@___asan_gen_.1466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1122, i32 12 }
@___asan_gen_.1467 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_062e\00", align 1
@___asan_gen_.1469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 79, i32 1 }
@___asan_gen_.1472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1126, i32 12 }
@___asan_gen_.1475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1127, i32 12 }
@___asan_gen_.1478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1128, i32 12 }
@___asan_gen_.1481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1131, i32 12 }
@___asan_gen_.1484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1132, i32 12 }
@___asan_gen_.1487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1133, i32 12 }
@___asan_gen_.1490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1136, i32 12 }
@___asan_gen_.1493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1138, i32 12 }
@___asan_gen_.1496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1139, i32 12 }
@___asan_gen_.1499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1140, i32 12 }
@___asan_gen_.1500 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0649\00", align 1
@___asan_gen_.1502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 85, i32 1 }
@___asan_gen_.1505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1142, i32 12 }
@___asan_gen_.1508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1143, i32 12 }
@___asan_gen_.1511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1144, i32 12 }
@___asan_gen_.1514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1145, i32 12 }
@___asan_gen_.1517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1146, i32 12 }
@___asan_gen_.1518 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0652\00", align 1
@___asan_gen_.1520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 91, i32 1 }
@___asan_gen_.1523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1147, i32 12 }
@___asan_gen_.1526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1148, i32 12 }
@___asan_gen_.1527 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0654\00", align 1
@___asan_gen_.1529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 97, i32 1 }
@___asan_gen_.1530 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0655\00", align 1
@___asan_gen_.1532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 104, i32 1 }
@___asan_gen_.1533 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0656\00", align 1
@___asan_gen_.1535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 110, i32 1 }
@___asan_gen_.1538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1151, i32 12 }
@___asan_gen_.1541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1152, i32 12 }
@___asan_gen_.1544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1153, i32 12 }
@___asan_gen_.1547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1155, i32 12 }
@___asan_gen_.1550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1156, i32 12 }
@___asan_gen_.1553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1157, i32 12 }
@___asan_gen_.1556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1158, i32 12 }
@___asan_gen_.1559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1159, i32 12 }
@___asan_gen_.1562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1160, i32 12 }
@___asan_gen_.1563 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_06d1\00", align 1
@___asan_gen_.1565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 116, i32 1 }
@___asan_gen_.1568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1161, i32 12 }
@___asan_gen_.1569 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_06d2\00", align 1
@___asan_gen_.1571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 123, i32 1 }
@___asan_gen_.1574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1162, i32 12 }
@___asan_gen_.1577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1163, i32 12 }
@___asan_gen_.1580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1164, i32 12 }
@___asan_gen_.1583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1166, i32 12 }
@___asan_gen_.1586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1167, i32 12 }
@___asan_gen_.1587 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_06de\00", align 1
@___asan_gen_.1589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 129, i32 1 }
@___asan_gen_.1592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1168, i32 12 }
@___asan_gen_.1595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1169, i32 12 }
@___asan_gen_.1598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1170, i32 12 }
@___asan_gen_.1601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1171, i32 12 }
@___asan_gen_.1604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1174, i32 12 }
@___asan_gen_.1607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1175, i32 12 }
@___asan_gen_.1610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1176, i32 12 }
@___asan_gen_.1613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1177, i32 12 }
@___asan_gen_.1614 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_06e8\00", align 1
@___asan_gen_.1616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 142, i32 1 }
@___asan_gen_.1619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1179, i32 12 }
@___asan_gen_.1622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1180, i32 12 }
@___asan_gen_.1625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1181, i32 12 }
@___asan_gen_.1628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1182, i32 12 }
@___asan_gen_.1631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1183, i32 12 }
@___asan_gen_.1634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1184, i32 12 }
@___asan_gen_.1637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1185, i32 12 }
@___asan_gen_.1638 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_06f9\00", align 1
@___asan_gen_.1640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 148, i32 1 }
@___asan_gen_.1643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1186, i32 12 }
@___asan_gen_.1646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1187, i32 12 }
@___asan_gen_.1649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1188, i32 12 }
@___asan_gen_.1652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1189, i32 12 }
@___asan_gen_.1653 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_06ff\00", align 1
@___asan_gen_.1655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 154, i32 1 }
@___asan_gen_.1658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1190, i32 12 }
@___asan_gen_.1661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1191, i32 12 }
@___asan_gen_.1664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1192, i32 12 }
@___asan_gen_.1667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1193, i32 12 }
@___asan_gen_.1670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1194, i32 12 }
@___asan_gen_.1673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1195, i32 12 }
@___asan_gen_.1676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1196, i32 12 }
@___asan_gen_.1679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1197, i32 12 }
@___asan_gen_.1682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1198, i32 12 }
@___asan_gen_.1685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1199, i32 12 }
@___asan_gen_.1688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1200, i32 12 }
@___asan_gen_.1691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1201, i32 12 }
@___asan_gen_.1694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1202, i32 12 }
@___asan_gen_.1697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1204, i32 12 }
@___asan_gen_.1700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1205, i32 12 }
@___asan_gen_.1703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1206, i32 12 }
@___asan_gen_.1706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1207, i32 12 }
@___asan_gen_.1709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1209, i32 12 }
@___asan_gen_.1712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1210, i32 12 }
@___asan_gen_.1715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1211, i32 12 }
@___asan_gen_.1718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1212, i32 12 }
@___asan_gen_.1719 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0866\00", align 1
@___asan_gen_.1721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 160, i32 1 }
@___asan_gen_.1724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1215, i32 12 }
@___asan_gen_.1727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1218, i32 12 }
@___asan_gen_.1730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1224, i32 12 }
@___asan_gen_.1731 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0872\00", align 1
@___asan_gen_.1733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 166, i32 1 }
@___asan_gen_.1734 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0873\00", align 1
@___asan_gen_.1736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 172, i32 1 }
@___asan_gen_.1739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1230, i32 12 }
@___asan_gen_.1742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1232, i32 12 }
@___asan_gen_.1745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1237, i32 12 }
@___asan_gen_.1748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1238, i32 12 }
@___asan_gen_.1751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1239, i32 12 }
@___asan_gen_.1754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1240, i32 12 }
@___asan_gen_.1757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1242, i32 12 }
@___asan_gen_.1760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1243, i32 12 }
@___asan_gen_.1763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1246, i32 12 }
@___asan_gen_.1766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1247, i32 12 }
@___asan_gen_.1769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1248, i32 12 }
@___asan_gen_.1772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1249, i32 12 }
@___asan_gen_.1775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1250, i32 12 }
@___asan_gen_.1778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1251, i32 12 }
@___asan_gen_.1781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1252, i32 12 }
@___asan_gen_.1784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1253, i32 12 }
@___asan_gen_.1787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1254, i32 12 }
@___asan_gen_.1790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1255, i32 12 }
@___asan_gen_.1793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1256, i32 12 }
@___asan_gen_.1796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1262, i32 12 }
@___asan_gen_.1799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1263, i32 12 }
@___asan_gen_.1802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1264, i32 12 }
@___asan_gen_.1803 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0a6e\00", align 1
@___asan_gen_.1805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 178, i32 1 }
@___asan_gen_.1808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1266, i32 12 }
@___asan_gen_.1809 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0a70\00", align 1
@___asan_gen_.1811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 184, i32 1 }
@___asan_gen_.1812 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0a73\00", align 1
@___asan_gen_.1814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 191, i32 1 }
@___asan_gen_.1817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1270, i32 12 }
@___asan_gen_.1818 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0a74\00", align 1
@___asan_gen_.1820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 198, i32 1 }
@___asan_gen_.1821 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0a75\00", align 1
@___asan_gen_.1823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 204, i32 1 }
@___asan_gen_.1826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1273, i32 12 }
@___asan_gen_.1829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1274, i32 12 }
@___asan_gen_.1830 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0a7a\00", align 1
@___asan_gen_.1832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 210, i32 1 }
@___asan_gen_.1835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1275, i32 12 }
@___asan_gen_.1838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1277, i32 12 }
@___asan_gen_.1841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1278, i32 12 }
@___asan_gen_.1844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1279, i32 12 }
@___asan_gen_.1847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1282, i32 12 }
@___asan_gen_.1850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1283, i32 12 }
@___asan_gen_.1853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1285, i32 12 }
@___asan_gen_.1856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1286, i32 12 }
@___asan_gen_.1859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1287, i32 12 }
@___asan_gen_.1862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1288, i32 12 }
@___asan_gen_.1865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1289, i32 12 }
@___asan_gen_.1868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1290, i32 12 }
@___asan_gen_.1871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1293, i32 12 }
@___asan_gen_.1874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1295, i32 12 }
@___asan_gen_.1877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1296, i32 12 }
@___asan_gen_.1880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1297, i32 12 }
@___asan_gen_.1883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1298, i32 12 }
@___asan_gen_.1886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1299, i32 12 }
@___asan_gen_.1887 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0dd8\00", align 1
@___asan_gen_.1889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 225, i32 1 }
@___asan_gen_.1892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1300, i32 12 }
@___asan_gen_.1895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1302, i32 12 }
@___asan_gen_.1898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1303, i32 12 }
@___asan_gen_.1901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1304, i32 12 }
@___asan_gen_.1904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1305, i32 12 }
@___asan_gen_.1907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1306, i32 12 }
@___asan_gen_.1910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1307, i32 12 }
@___asan_gen_.1913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1308, i32 12 }
@___asan_gen_.1916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1309, i32 12 }
@___asan_gen_.1917 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0de9\00", align 1
@___asan_gen_.1919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 231, i32 1 }
@___asan_gen_.1922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1310, i32 12 }
@___asan_gen_.1923 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0dea\00", align 1
@___asan_gen_.1925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 245, i32 1 }
@___asan_gen_.1928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1312, i32 12 }
@___asan_gen_.1931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1313, i32 12 }
@___asan_gen_.1934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1314, i32 12 }
@___asan_gen_.1937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1315, i32 12 }
@___asan_gen_.1940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1316, i32 12 }
@___asan_gen_.1943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1317, i32 12 }
@___asan_gen_.1946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1320, i32 12 }
@___asan_gen_.1947 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0df4\00", align 1
@___asan_gen_.1949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 255, i32 1 }
@___asan_gen_.1952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1324, i32 12 }
@___asan_gen_.1955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1325, i32 12 }
@___asan_gen_.1958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1326, i32 12 }
@___asan_gen_.1961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1327, i32 12 }
@___asan_gen_.1964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1328, i32 12 }
@___asan_gen_.1967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1329, i32 12 }
@___asan_gen_.1970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1331, i32 12 }
@___asan_gen_.1973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1332, i32 12 }
@___asan_gen_.1976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1333, i32 12 }
@___asan_gen_.1979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1334, i32 12 }
@___asan_gen_.1982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1335, i32 12 }
@___asan_gen_.1985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1336, i32 12 }
@___asan_gen_.1988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1337, i32 12 }
@___asan_gen_.1991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1338, i32 12 }
@___asan_gen_.1994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1341, i32 12 }
@___asan_gen_.1997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1342, i32 12 }
@___asan_gen_.2000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1344, i32 12 }
@___asan_gen_.2003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1345, i32 12 }
@___asan_gen_.2006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1346, i32 12 }
@___asan_gen_.2009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1347, i32 12 }
@___asan_gen_.2010 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0fd2\00", align 1
@___asan_gen_.2012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 262, i32 1 }
@___asan_gen_.2015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1349, i32 12 }
@___asan_gen_.2018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1352, i32 12 }
@___asan_gen_.2021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1353, i32 12 }
@___asan_gen_.2024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1355, i32 12 }
@___asan_gen_.2027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1356, i32 12 }
@___asan_gen_.2028 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_0fe3\00", align 1
@___asan_gen_.2030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 269, i32 1 }
@___asan_gen_.2033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1358, i32 12 }
@___asan_gen_.2036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1361, i32 12 }
@___asan_gen_.2039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1362, i32 12 }
@___asan_gen_.2042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1363, i32 12 }
@___asan_gen_.2045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1364, i32 12 }
@___asan_gen_.2048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1365, i32 12 }
@___asan_gen_.2051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1366, i32 12 }
@___asan_gen_.2054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1367, i32 12 }
@___asan_gen_.2057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1368, i32 12 }
@___asan_gen_.2060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1369, i32 12 }
@___asan_gen_.2063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1370, i32 12 }
@___asan_gen_.2066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1371, i32 12 }
@___asan_gen_.2069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1372, i32 12 }
@___asan_gen_.2072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1373, i32 12 }
@___asan_gen_.2075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1374, i32 12 }
@___asan_gen_.2078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1375, i32 12 }
@___asan_gen_.2081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1376, i32 12 }
@___asan_gen_.2084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1378, i32 12 }
@___asan_gen_.2087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1380, i32 12 }
@___asan_gen_.2090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1381, i32 12 }
@___asan_gen_.2093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1382, i32 12 }
@___asan_gen_.2096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1383, i32 12 }
@___asan_gen_.2099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1384, i32 12 }
@___asan_gen_.2102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1385, i32 12 }
@___asan_gen_.2105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1386, i32 12 }
@___asan_gen_.2108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1387, i32 12 }
@___asan_gen_.2111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1388, i32 12 }
@___asan_gen_.2114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1389, i32 12 }
@___asan_gen_.2117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1390, i32 12 }
@___asan_gen_.2120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1391, i32 12 }
@___asan_gen_.2123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1392, i32 12 }
@___asan_gen_.2126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1394, i32 12 }
@___asan_gen_.2129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1395, i32 12 }
@___asan_gen_.2132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1398, i32 12 }
@___asan_gen_.2133 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_104b\00", align 1
@___asan_gen_.2135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 276, i32 1 }
@___asan_gen_.2138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1399, i32 12 }
@___asan_gen_.2141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1401, i32 12 }
@___asan_gen_.2144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1403, i32 12 }
@___asan_gen_.2147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1405, i32 12 }
@___asan_gen_.2148 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1058\00", align 1
@___asan_gen_.2150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 286, i32 1 }
@___asan_gen_.2153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1410, i32 12 }
@___asan_gen_.2154 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_105b\00", align 1
@___asan_gen_.2156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 299, i32 1 }
@___asan_gen_.2159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1411, i32 12 }
@___asan_gen_.2162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1412, i32 12 }
@___asan_gen_.2165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1413, i32 12 }
@___asan_gen_.2168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1414, i32 12 }
@___asan_gen_.2171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1415, i32 12 }
@___asan_gen_.2174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1416, i32 12 }
@___asan_gen_.2177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1419, i32 12 }
@___asan_gen_.2180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1422, i32 12 }
@___asan_gen_.2181 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1091\00", align 1
@___asan_gen_.2183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 306, i32 1 }
@___asan_gen_.2186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1423, i32 12 }
@___asan_gen_.2189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1424, i32 12 }
@___asan_gen_.2190 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1096\00", align 1
@___asan_gen_.2192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 315, i32 1 }
@___asan_gen_.2195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1425, i32 12 }
@___asan_gen_.2198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1426, i32 12 }
@___asan_gen_.2201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1428, i32 12 }
@___asan_gen_.2204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1430, i32 12 }
@___asan_gen_.2205 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1140\00", align 1
@___asan_gen_.2207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 321, i32 1 }
@___asan_gen_.2210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1432, i32 12 }
@___asan_gen_.2213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1433, i32 12 }
@___asan_gen_.2216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1434, i32 12 }
@___asan_gen_.2219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1435, i32 12 }
@___asan_gen_.2220 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1185\00", align 1
@___asan_gen_.2222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 667, i32 1 }
@___asan_gen_.2225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1436, i32 12 }
@___asan_gen_.2228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1437, i32 12 }
@___asan_gen_.2231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1438, i32 12 }
@___asan_gen_.2232 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1189\00", align 1
@___asan_gen_.2234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 673, i32 1 }
@___asan_gen_.2237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1439, i32 12 }
@___asan_gen_.2240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1440, i32 12 }
@___asan_gen_.2243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1441, i32 12 }
@___asan_gen_.2246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1442, i32 12 }
@___asan_gen_.2249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1443, i32 12 }
@___asan_gen_.2252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1445, i32 12 }
@___asan_gen_.2255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1446, i32 12 }
@___asan_gen_.2256 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1199\00", align 1
@___asan_gen_.2258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 679, i32 1 }
@___asan_gen_.2261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1447, i32 12 }
@___asan_gen_.2264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1448, i32 12 }
@___asan_gen_.2267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1449, i32 12 }
@___asan_gen_.2270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1451, i32 12 }
@___asan_gen_.2273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1452, i32 12 }
@___asan_gen_.2276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1453, i32 12 }
@___asan_gen_.2279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1454, i32 12 }
@___asan_gen_.2282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1456, i32 12 }
@___asan_gen_.2285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1457, i32 12 }
@___asan_gen_.2288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1458, i32 12 }
@___asan_gen_.2291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1459, i32 12 }
@___asan_gen_.2294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1460, i32 12 }
@___asan_gen_.2297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1461, i32 12 }
@___asan_gen_.2300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1462, i32 12 }
@___asan_gen_.2303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1463, i32 12 }
@___asan_gen_.2306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1464, i32 12 }
@___asan_gen_.2309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1466, i32 12 }
@___asan_gen_.2312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1467, i32 12 }
@___asan_gen_.2315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1468, i32 12 }
@___asan_gen_.2318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1473, i32 12 }
@___asan_gen_.2321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1474, i32 12 }
@___asan_gen_.2324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1476, i32 12 }
@___asan_gen_.2325 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_11e3\00", align 1
@___asan_gen_.2327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 685, i32 1 }
@___asan_gen_.2330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1477, i32 12 }
@___asan_gen_.2333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1478, i32 12 }
@___asan_gen_.2336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1481, i32 12 }
@___asan_gen_.2339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1482, i32 12 }
@___asan_gen_.2342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1483, i32 12 }
@___asan_gen_.2345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1484, i32 12 }
@___asan_gen_.2348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1485, i32 12 }
@___asan_gen_.2351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1486, i32 12 }
@___asan_gen_.2354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1487, i32 12 }
@___asan_gen_.2357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1488, i32 12 }
@___asan_gen_.2360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1489, i32 12 }
@___asan_gen_.2363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1490, i32 12 }
@___asan_gen_.2366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1492, i32 12 }
@___asan_gen_.2367 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1247\00", align 1
@___asan_gen_.2369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 691, i32 1 }
@___asan_gen_.2370 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_124d\00", align 1
@___asan_gen_.2372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 699, i32 1 }
@___asan_gen_.2375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1500, i32 12 }
@___asan_gen_.2378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1501, i32 12 }
@___asan_gen_.2381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1502, i32 12 }
@___asan_gen_.2384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1505, i32 12 }
@___asan_gen_.2385 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1290\00", align 1
@___asan_gen_.2387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 705, i32 1 }
@___asan_gen_.2390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1510, i32 12 }
@___asan_gen_.2391 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1292\00", align 1
@___asan_gen_.2393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 711, i32 1 }
@___asan_gen_.2396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1513, i32 12 }
@___asan_gen_.2397 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1295\00", align 1
@___asan_gen_.2399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 719, i32 1 }
@___asan_gen_.2402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1514, i32 12 }
@___asan_gen_.2405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1515, i32 12 }
@___asan_gen_.2408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1516, i32 12 }
@___asan_gen_.2409 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1299\00", align 1
@___asan_gen_.2411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 728, i32 1 }
@___asan_gen_.2414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1517, i32 12 }
@___asan_gen_.2417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1518, i32 12 }
@___asan_gen_.2420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1519, i32 12 }
@___asan_gen_.2423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1520, i32 12 }
@___asan_gen_.2424 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1340\00", align 1
@___asan_gen_.2426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 734, i32 1 }
@___asan_gen_.2429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1521, i32 12 }
@___asan_gen_.2430 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1341\00", align 1
@___asan_gen_.2432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 740, i32 1 }
@___asan_gen_.2435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1522, i32 12 }
@___asan_gen_.2438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1523, i32 12 }
@___asan_gen_.2439 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1346\00", align 1
@___asan_gen_.2441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 749, i32 1 }
@___asan_gen_.2444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1524, i32 12 }
@___asan_gen_.2445 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1347\00", align 1
@___asan_gen_.2447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 756, i32 1 }
@___asan_gen_.2448 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_137a\00", align 1
@___asan_gen_.2450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 763, i32 1 }
@___asan_gen_.2451 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_137d\00", align 1
@___asan_gen_.2453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 769, i32 1 }
@___asan_gen_.2456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1527, i32 12 }
@___asan_gen_.2459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1528, i32 12 }
@___asan_gen_.2462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1529, i32 12 }
@___asan_gen_.2465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1531, i32 12 }
@___asan_gen_.2466 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1391\00", align 1
@___asan_gen_.2468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 775, i32 1 }
@___asan_gen_.2469 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_1392\00", align 1
@___asan_gen_.2471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 781, i32 1 }
@___asan_gen_.2474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1535, i32 12 }
@___asan_gen_.2475 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_139a\00", align 1
@___asan_gen_.2477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 788, i32 1 }
@___asan_gen_.2480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1536, i32 12 }
@___asan_gen_.2481 = private unnamed_addr constant [26 x i8] c"nvkm_device_pci_10de_139b\00", align 1
@___asan_gen_.2483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 794, i32 1 }
@___asan_gen_.2486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1538, i32 12 }
@___asan_gen_.2489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1539, i32 12 }
@___asan_gen_.2492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1540, i32 12 }
@___asan_gen_.2495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1541, i32 12 }
@___asan_gen_.2498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1542, i32 12 }
@___asan_gen_.2501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1543, i32 12 }
@___asan_gen_.2504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1544, i32 12 }
@___asan_gen_.2507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1545, i32 12 }
@___asan_gen_.2510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1546, i32 12 }
@___asan_gen_.2513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1547, i32 12 }
@___asan_gen_.2516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1551, i32 12 }
@___asan_gen_.2519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1552, i32 12 }
@___asan_gen_.2522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 1553, i32 12 }
@___asan_gen_.2525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 64, i32 20 }
@___asan_gen_.2528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 66, i32 20 }
@___asan_gen_.2531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 92, i32 20 }
@___asan_gen_.2534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 117, i32 20 }
@___asan_gen_.2537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 118, i32 20 }
@___asan_gen_.2540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 124, i32 20 }
@___asan_gen_.2543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 130, i32 20 }
@___asan_gen_.2546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 131, i32 20 }
@___asan_gen_.2549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 143, i32 20 }
@___asan_gen_.2552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 149, i32 20 }
@___asan_gen_.2555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 155, i32 20 }
@___asan_gen_.2558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 167, i32 20 }
@___asan_gen_.2561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 216, i32 20 }
@___asan_gen_.2564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 226, i32 20 }
@___asan_gen_.2567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 246, i32 20 }
@___asan_gen_.2570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 270, i32 20 }
@___asan_gen_.2573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 277, i32 20 }
@___asan_gen_.2576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 287, i32 20 }
@___asan_gen_.2579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 288, i32 20 }
@___asan_gen_.2582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 289, i32 20 }
@___asan_gen_.2585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 307, i32 20 }
@___asan_gen_.2588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 360, i32 20 }
@___asan_gen_.2591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 375, i32 20 }
@___asan_gen_.2594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 399, i32 20 }
@___asan_gen_.2597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 450, i32 20 }
@___asan_gen_.2600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 479, i32 20 }
@___asan_gen_.2603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 549, i32 20 }
@___asan_gen_.2606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 559, i32 20 }
@___asan_gen_.2609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 562, i32 20 }
@___asan_gen_.2612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 573, i32 20 }
@___asan_gen_.2615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 574, i32 20 }
@___asan_gen_.2618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 579, i32 20 }
@___asan_gen_.2621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 581, i32 20 }
@___asan_gen_.2624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 620, i32 20 }
@___asan_gen_.2627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 686, i32 20 }
@___asan_gen_.2630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 706, i32 20 }
@___asan_gen_.2633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 712, i32 20 }
@___asan_gen_.2636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 722, i32 20 }
@___asan_gen_.2639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 729, i32 20 }
@___asan_gen_.2642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 735, i32 20 }
@___asan_gen_.2645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 741, i32 20 }
@___asan_gen_.2648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 750, i32 20 }
@___asan_gen_.2651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 757, i32 20 }
@___asan_gen_.2654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 764, i32 20 }
@___asan_gen_.2657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 776, i32 20 }
@___asan_gen_.2660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 782, i32 20 }
@___asan_gen_.2661 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2662 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c\00", align 1
@___asan_gen_.2663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2662, i32 789, i32 20 }
@llvm.compiler.used = appending global [681 x ptr] [ptr @nvkm_device_pci_10de, ptr @nvkm_device_pci_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @nvkm_device_pci_10de_0189, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @nvkm_device_pci_10de_01f0, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @nvkm_device_pci_10de_0322, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @nvkm_device_pci_10de_05e7, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @nvkm_device_pci_10de_0609, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @nvkm_device_pci_10de_062e, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @nvkm_device_pci_10de_0649, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @nvkm_device_pci_10de_0652, ptr @.str.290, ptr @.str.291, ptr @nvkm_device_pci_10de_0654, ptr @nvkm_device_pci_10de_0655, ptr @nvkm_device_pci_10de_0656, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @nvkm_device_pci_10de_06d1, ptr @.str.301, ptr @nvkm_device_pci_10de_06d2, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @nvkm_device_pci_10de_06de, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @nvkm_device_pci_10de_06e8, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @nvkm_device_pci_10de_06f9, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @nvkm_device_pci_10de_06ff, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @nvkm_device_pci_10de_0866, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @nvkm_device_pci_10de_0872, ptr @nvkm_device_pci_10de_0873, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @nvkm_device_pci_10de_0a6e, ptr @.str.372, ptr @nvkm_device_pci_10de_0a70, ptr @nvkm_device_pci_10de_0a73, ptr @.str.373, ptr @nvkm_device_pci_10de_0a74, ptr @nvkm_device_pci_10de_0a75, ptr @.str.374, ptr @.str.375, ptr @nvkm_device_pci_10de_0a7a, ptr @.str.376, ptr @.str.377, ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.382, ptr @.str.383, ptr @.str.384, ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, ptr @.str.392, ptr @.str.393, ptr @nvkm_device_pci_10de_0dd8, ptr @.str.394, ptr @.str.395, ptr @.str.396, ptr @.str.397, ptr @.str.398, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @nvkm_device_pci_10de_0de9, ptr @.str.403, ptr @nvkm_device_pci_10de_0dea, ptr @.str.404, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @.str.409, ptr @.str.410, ptr @nvkm_device_pci_10de_0df4, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @.str.414, ptr @.str.415, ptr @.str.416, ptr @.str.417, ptr @.str.418, ptr @.str.419, ptr @.str.420, ptr @.str.421, ptr @.str.422, ptr @.str.423, ptr @.str.424, ptr @.str.425, ptr @.str.426, ptr @.str.427, ptr @.str.428, ptr @.str.429, ptr @.str.430, ptr @nvkm_device_pci_10de_0fd2, ptr @.str.431, ptr @.str.432, ptr @.str.433, ptr @.str.434, ptr @.str.435, ptr @nvkm_device_pci_10de_0fe3, ptr @.str.436, ptr @.str.437, ptr @.str.438, ptr @.str.439, ptr @.str.440, ptr @.str.441, ptr @.str.442, ptr @.str.443, ptr @.str.444, ptr @.str.445, ptr @.str.446, ptr @.str.447, ptr @.str.448, ptr @.str.449, ptr @.str.450, ptr @.str.451, ptr @.str.452, ptr @.str.453, ptr @.str.454, ptr @.str.455, ptr @.str.456, ptr @.str.457, ptr @.str.458, ptr @.str.459, ptr @.str.460, ptr @.str.461, ptr @.str.462, ptr @.str.463, ptr @.str.464, ptr @.str.465, ptr @.str.466, ptr @.str.467, ptr @.str.468, ptr @.str.469, ptr @nvkm_device_pci_10de_104b, ptr @.str.470, ptr @.str.471, ptr @.str.472, ptr @.str.473, ptr @nvkm_device_pci_10de_1058, ptr @.str.474, ptr @nvkm_device_pci_10de_105b, ptr @.str.475, ptr @.str.476, ptr @.str.477, ptr @.str.478, ptr @.str.479, ptr @.str.480, ptr @.str.481, ptr @.str.482, ptr @nvkm_device_pci_10de_1091, ptr @.str.483, ptr @.str.484, ptr @nvkm_device_pci_10de_1096, ptr @.str.485, ptr @.str.486, ptr @.str.487, ptr @.str.488, ptr @nvkm_device_pci_10de_1140, ptr @.str.489, ptr @.str.490, ptr @.str.491, ptr @.str.492, ptr @nvkm_device_pci_10de_1185, ptr @.str.493, ptr @.str.494, ptr @.str.495, ptr @nvkm_device_pci_10de_1189, ptr @.str.496, ptr @.str.497, ptr @.str.498, ptr @.str.499, ptr @.str.500, ptr @.str.501, ptr @.str.502, ptr @nvkm_device_pci_10de_1199, ptr @.str.503, ptr @.str.504, ptr @.str.505, ptr @.str.506, ptr @.str.507, ptr @.str.508, ptr @.str.509, ptr @.str.510, ptr @.str.511, ptr @.str.512, ptr @.str.513, ptr @.str.514, ptr @.str.515, ptr @.str.516, ptr @.str.517, ptr @.str.518, ptr @.str.519, ptr @.str.520, ptr @.str.521, ptr @.str.522, ptr @.str.523, ptr @.str.524, ptr @nvkm_device_pci_10de_11e3, ptr @.str.525, ptr @.str.526, ptr @.str.527, ptr @.str.528, ptr @.str.529, ptr @.str.530, ptr @.str.531, ptr @.str.532, ptr @.str.533, ptr @.str.534, ptr @.str.535, ptr @.str.536, ptr @.str.537, ptr @nvkm_device_pci_10de_1247, ptr @nvkm_device_pci_10de_124d, ptr @.str.538, ptr @.str.539, ptr @.str.540, ptr @.str.541, ptr @nvkm_device_pci_10de_1290, ptr @.str.542, ptr @nvkm_device_pci_10de_1292, ptr @.str.543, ptr @nvkm_device_pci_10de_1295, ptr @.str.544, ptr @.str.545, ptr @.str.546, ptr @nvkm_device_pci_10de_1299, ptr @.str.547, ptr @.str.548, ptr @.str.549, ptr @.str.550, ptr @nvkm_device_pci_10de_1340, ptr @.str.551, ptr @nvkm_device_pci_10de_1341, ptr @.str.552, ptr @.str.553, ptr @nvkm_device_pci_10de_1346, ptr @.str.554, ptr @nvkm_device_pci_10de_1347, ptr @nvkm_device_pci_10de_137a, ptr @nvkm_device_pci_10de_137d, ptr @.str.555, ptr @.str.556, ptr @.str.557, ptr @.str.558, ptr @nvkm_device_pci_10de_1391, ptr @nvkm_device_pci_10de_1392, ptr @.str.559, ptr @nvkm_device_pci_10de_139a, ptr @.str.560, ptr @nvkm_device_pci_10de_139b, ptr @.str.561, ptr @.str.562, ptr @.str.563, ptr @.str.564, ptr @.str.565, ptr @.str.566, ptr @.str.567, ptr @.str.568, ptr @.str.569, ptr @.str.570, ptr @.str.571, ptr @.str.572, ptr @.str.573, ptr @.str.574, ptr @.str.575, ptr @.str.576, ptr @.str.577, ptr @.str.578, ptr @.str.579, ptr @.str.580, ptr @.str.581, ptr @.str.582, ptr @.str.583, ptr @.str.584, ptr @.str.585, ptr @.str.586, ptr @.str.587, ptr @.str.588, ptr @.str.589, ptr @.str.590, ptr @.str.591, ptr @.str.592, ptr @.str.593, ptr @.str.594, ptr @.str.595, ptr @.str.596, ptr @.str.597, ptr @.str.598, ptr @.str.599, ptr @.str.600, ptr @.str.601, ptr @.str.602, ptr @.str.603, ptr @.str.604, ptr @.str.605, ptr @.str.606, ptr @.str.607, ptr @.str.608, ptr @.str.609, ptr @.str.610, ptr @.str.611, ptr @.str.612, ptr @.str.613, ptr @.str.614, ptr @.str.615, ptr @.str.616, ptr @.str.617, ptr @.str.618, ptr @.str.619, ptr @.str.620], section "llvm.metadata"
@0 = internal global [681 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de to i32), i32 9036, i32 11296, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_func to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_01f0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0322 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_05e7 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0609 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_062e to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0649 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0652 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0654 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0655 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0656 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_06d1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_06d2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_06de to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_06e8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_06f9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_06ff to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0866 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1719 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0872 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1731 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0873 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1734 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0a6e to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1803 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0a70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1809 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0a73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1812 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0a74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1818 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0a75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1821 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0a7a to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.1830 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0dd8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1887 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0de9 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1917 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0dea to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1923 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0df4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1947 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.421 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.429 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.430 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0fd2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2010 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.432 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.434 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.435 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_0fe3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2028 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.436 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.437 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.438 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.439 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.440 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.441 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.442 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.443 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.444 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.445 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.446 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.447 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.448 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.449 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.450 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.451 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.452 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.453 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.454 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.455 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.456 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.457 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.458 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.459 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.460 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.461 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.462 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.463 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.464 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.465 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.466 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.467 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.468 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.469 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_104b to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2133 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.470 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.471 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.472 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.473 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1058 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.2148 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.474 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_105b to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2154 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.475 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.476 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.477 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.478 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.479 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.480 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.481 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.482 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1091 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2181 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.483 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.484 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1096 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2190 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.485 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.486 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.487 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.488 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1140 to i32), i32 4104, i32 5152, i32 ptrtoint (ptr @___asan_gen_.2205 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.489 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.490 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.491 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.492 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2220 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.493 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.494 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.495 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2232 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.496 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.497 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.498 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.499 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.500 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.501 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.502 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2256 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.503 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.504 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.505 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.506 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.507 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.508 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.509 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.510 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.511 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.512 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.513 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.514 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.515 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.516 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.517 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.518 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.519 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.520 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.521 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.522 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.523 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.524 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_11e3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2325 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.525 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.526 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.527 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.528 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.529 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.530 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.531 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.532 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.533 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.534 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.535 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.536 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.537 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1247 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2367 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_124d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2370 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.538 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.539 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.540 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.541 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2385 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.542 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1292 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2391 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.543 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1295 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2397 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.544 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.545 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.546 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2409 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.547 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.548 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.549 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.550 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1340 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2424 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.551 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1341 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2430 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.552 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.553 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1346 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2439 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.554 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1347 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2445 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_137a to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2448 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_137d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2451 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.555 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.556 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.557 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.558 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1391 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2466 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_1392 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2469 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.559 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_139a to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2475 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.560 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_pci_10de_139b to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2481 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.561 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.562 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.563 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.564 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.565 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.566 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.567 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.568 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.569 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.570 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.571 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.572 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.573 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.574 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.575 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.576 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.577 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.578 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.579 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.580 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.581 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.582 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.583 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.584 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.585 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.586 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.587 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.588 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.589 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.590 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.591 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.592 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.593 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.594 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.595 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.596 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.597 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.598 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.599 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.600 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.601 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.602 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.603 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.604 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.605 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.606 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.607 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.608 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.609 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.610 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.611 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.612 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.613 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.614 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.615 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.616 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.617 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.618 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.619 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.620 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2661 to i32), i32 ptrtoint (ptr @___asan_gen_.2662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2663 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_device_pci_new(ptr noundef %pci_dev, ptr noundef %cfg, ptr noundef %dbg, i1 noundef zeroext %detect, i1 noundef zeroext %mmio, i64 noundef %subdev_mask, ptr nocapture noundef writeonly %pdevice) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4318, i16 %1)
  %cond109 = icmp eq i16 %1, 4318
  br i1 %cond109, label %land.rhs.lr.ph, label %if.end.while.end40_crit_edge

if.end.while.end40_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end40

land.rhs.lr.ph:                                   ; preds = %if.end
  %device8 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 8
  br label %land.rhs

land.rhs:                                         ; preds = %if.end38.land.rhs_crit_edge, %land.rhs.lr.ph
  %pcid.1168 = phi ptr [ @nvkm_device_pci_10de, %land.rhs.lr.ph ], [ %incdec.ptr39, %if.end38.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %pcid.1168 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pcid.1168, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool4.not = icmp eq i16 %3, 0
  br i1 %tobool4.not, label %land.rhs.while.end40_crit_edge, label %while.body

land.rhs.while.end40_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end40

while.body:                                       ; preds = %land.rhs
  %4 = ptrtoint ptr %device8 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device8, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp = icmp eq i16 %3, %5
  br i1 %cmp, label %while.cond12.preheader, label %if.end38

while.cond12.preheader:                           ; preds = %while.body
  %vendor5.le = getelementptr inbounds %struct.nvkm_device_pci_device, ptr %pcid.1168, i32 0, i32 2
  %6 = ptrtoint ptr %vendor5.le to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vendor5.le, align 4
  %tobool13.not169 = icmp eq ptr %7, null
  br i1 %tobool13.not169, label %while.cond12.preheader.if.then35_crit_edge, label %land.rhs14.lr.ph

while.cond12.preheader.if.then35_crit_edge:       ; preds = %while.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

land.rhs14.lr.ph:                                 ; preds = %while.cond12.preheader
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 9
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 10
  br label %land.rhs14

land.rhs14:                                       ; preds = %if.end33.land.rhs14_crit_edge, %land.rhs14.lr.ph
  %pciv.0170 = phi ptr [ %7, %land.rhs14.lr.ph ], [ %incdec.ptr, %if.end33.land.rhs14_crit_edge ]
  %8 = ptrtoint ptr %pciv.0170 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pciv.0170, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool17.not = icmp eq i16 %9, 0
  br i1 %tobool17.not, label %land.rhs14.if.then35_crit_edge, label %while.body19

land.rhs14.if.then35_crit_edge:                   ; preds = %land.rhs14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

while.body19:                                     ; preds = %land.rhs14
  %10 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp23 = icmp eq i16 %9, %11
  br i1 %cmp23, label %land.lhs.true, label %while.body19.if.end33_crit_edge

while.body19.if.end33_crit_edge:                  ; preds = %while.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

land.lhs.true:                                    ; preds = %while.body19
  %device25 = getelementptr inbounds %struct.nvkm_device_pci_vendor, ptr %pciv.0170, i32 0, i32 1
  %12 = ptrtoint ptr %device25 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device25, align 2
  %14 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp28 = icmp eq i16 %13, %15
  br i1 %cmp28, label %while.end, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %while.body19.if.end33_crit_edge
  %incdec.ptr = getelementptr %struct.nvkm_device_pci_vendor, ptr %pciv.0170, i32 1
  %tobool13.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool13.not, label %if.end33.if.then35_crit_edge, label %if.end33.land.rhs14_crit_edge

if.end33.land.rhs14_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs14

if.end33.if.then35_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

while.end:                                        ; preds = %land.lhs.true
  %quirk31 = getelementptr inbounds %struct.nvkm_device_pci_vendor, ptr %pciv.0170, i32 0, i32 3
  %name32 = getelementptr inbounds %struct.nvkm_device_pci_vendor, ptr %pciv.0170, i32 0, i32 2
  %16 = ptrtoint ptr %name32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name32, align 4
  %tobool34.not = icmp eq ptr %17, null
  br i1 %tobool34.not, label %while.end.if.then35_crit_edge, label %while.end.while.end40_crit_edge

while.end.while.end40_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end40

while.end.if.then35_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

if.then35:                                        ; preds = %while.end.if.then35_crit_edge, %if.end33.if.then35_crit_edge, %land.rhs14.if.then35_crit_edge, %while.cond12.preheader.if.then35_crit_edge
  %quirk.0158 = phi ptr [ %quirk31, %while.end.if.then35_crit_edge ], [ null, %while.cond12.preheader.if.then35_crit_edge ], [ null, %if.end33.if.then35_crit_edge ], [ null, %land.rhs14.if.then35_crit_edge ]
  %name36 = getelementptr inbounds %struct.nvkm_device_pci_device, ptr %pcid.1168, i32 0, i32 1
  %18 = ptrtoint ptr %name36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name36, align 4
  br label %while.end40

if.end38:                                         ; preds = %while.body
  %incdec.ptr39 = getelementptr %struct.nvkm_device_pci_device, ptr %pcid.1168, i32 1
  %tobool2.not = icmp eq ptr %incdec.ptr39, null
  br i1 %tobool2.not, label %if.end38.while.end40_crit_edge, label %if.end38.land.rhs_crit_edge

if.end38.land.rhs_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

if.end38.while.end40_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end40

while.end40:                                      ; preds = %if.end38.while.end40_crit_edge, %if.then35, %while.end.while.end40_crit_edge, %land.rhs.while.end40_crit_edge, %if.end.while.end40_crit_edge
  %quirk.1 = phi ptr [ %quirk31, %while.end.while.end40_crit_edge ], [ %quirk.0158, %if.then35 ], [ null, %if.end.while.end40_crit_edge ], [ null, %if.end38.while.end40_crit_edge ], [ null, %land.rhs.while.end40_crit_edge ]
  %name.1 = phi ptr [ %17, %while.end.while.end40_crit_edge ], [ %19, %if.then35 ], [ null, %if.end.while.end40_crit_edge ], [ null, %if.end38.while.end40_crit_edge ], [ null, %land.rhs.while.end40_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 584) #8
  %tobool42.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %while.end40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_disable_device(ptr noundef %pci_dev) #5
  br label %cleanup

if.end44:                                         ; preds = %while.end40
  %21 = ptrtoint ptr %pdevice to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %pdevice, align 4
  %pdev46 = getelementptr inbounds %struct.nvkm_device_pci, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %pdev46 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pci_dev, ptr %pdev46, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 19
  %23 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.i.not = icmp eq i8 %24, 0
  br i1 %tobool.i.not, label %cond.false, label %if.end44.cond.end_crit_edge

if.end44.cond.end_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %call49 = tail call zeroext i8 @pci_find_capability(ptr noundef %pci_dev, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call49)
  %tobool51.not = icmp ne i8 %call49, 0
  %cond = zext i1 %tobool51.not to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end44.cond.end_crit_edge
  %cond52 = phi i32 [ %cond, %cond.false ], [ 2, %if.end44.cond.end_crit_edge ]
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 1
  %25 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus, align 8
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %domain_nr.i, align 8
  %conv54149 = zext i32 %28 to i64
  %shl = shl nuw i64 %conv54149, 32
  %number = getelementptr inbounds %struct.pci_bus, ptr %26, i32 0, i32 12
  %29 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %number, align 4
  %conv56 = zext i8 %30 to i32
  %shl57 = shl nuw nsw i32 %conv56, 16
  %31 = zext i32 %shl57 to i64
  %or = or i64 %shl, %31
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 6
  %32 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %devfn, align 4
  %34 = shl i32 %33, 5
  %shl59 = and i32 %34, 7936
  %conv60 = zext i32 %shl59 to i64
  %and63 = and i32 %33, 7
  %conv64 = zext i32 %and63 to i64
  %or61 = or i64 %or, %conv64
  %or65 = or i64 %or61, %conv60
  %call69 = tail call i32 @nvkm_device_ctor(ptr noundef nonnull @nvkm_device_pci_func, ptr noundef %quirk.1, ptr noundef %dev, i32 noundef %cond52, i64 noundef %or65, ptr noundef %name.1, ptr noundef %cfg, ptr noundef %dbg, i1 noundef zeroext %detect, i1 noundef zeroext %mmio, i64 noundef %subdev_mask, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end72:                                         ; preds = %cond.end
  %mmu = getelementptr inbounds %struct.nvkm_device, ptr %call7.i.i, i32 0, i32 35
  %35 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmu, align 8
  %tobool74.not = icmp eq ptr %36, null
  br i1 %tobool74.not, label %if.end72.cond.end89_crit_edge, label %land.lhs.true75

if.end72.cond.end89_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end89

land.lhs.true75:                                  ; preds = %if.end72
  %pci = getelementptr inbounds %struct.nvkm_device, ptr %call7.i.i, i32 0, i32 20
  %37 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci, align 4
  %agp = getelementptr inbounds %struct.nvkm_pci, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %agp, align 8
  %tobool77.not = icmp eq ptr %40, null
  br i1 %tobool77.not, label %if.end82, label %land.lhs.true75.cond.end89_crit_edge

land.lhs.true75.cond.end89_crit_edge:             ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end89

if.end82:                                         ; preds = %land.lhs.true75
  %dma_bits = getelementptr inbounds %struct.nvkm_mmu, ptr %36, i32 0, i32 2
  %41 = ptrtoint ptr %dma_bits to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dma_bits, align 8
  %conv81 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %42)
  %cmp84 = icmp eq i8 %42, 64
  br i1 %cmp84, label %cond.end89.thread, label %if.end82.cond.end89_crit_edge

if.end82.cond.end89_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end89

cond.end89:                                       ; preds = %if.end82.cond.end89_crit_edge, %land.lhs.true75.cond.end89_crit_edge, %if.end72.cond.end89_crit_edge
  %bits.0161 = phi i32 [ %conv81, %if.end82.cond.end89_crit_edge ], [ 32, %land.lhs.true75.cond.end89_crit_edge ], [ 32, %if.end72.cond.end89_crit_edge ]
  %sh_prom = zext i32 %bits.0161 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %sub) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %cond.end89.dma_set_mask_and_coherent.exit.thread_crit_edge, label %dma_set_mask_and_coherent.exit

cond.end89.dma_set_mask_and_coherent.exit.thread_crit_edge: ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_set_mask_and_coherent.exit.thread

cond.end89.thread:                                ; preds = %if.end82
  %call.i176 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %cmp.i177 = icmp eq i32 %call.i176, 0
  br i1 %cmp.i177, label %cond.end89.thread.dma_set_mask_and_coherent.exit.thread_crit_edge, label %cond.end89.thread.if.then96_crit_edge

cond.end89.thread.if.then96_crit_edge:            ; preds = %cond.end89.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then96

cond.end89.thread.dma_set_mask_and_coherent.exit.thread_crit_edge: ; preds = %cond.end89.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_set_mask_and_coherent.exit.thread

dma_set_mask_and_coherent.exit.thread:            ; preds = %cond.end89.thread.dma_set_mask_and_coherent.exit.thread_crit_edge, %cond.end89.dma_set_mask_and_coherent.exit.thread_crit_edge
  %cond90179 = phi i64 [ -1, %cond.end89.thread.dma_set_mask_and_coherent.exit.thread_crit_edge ], [ %sub, %cond.end89.dma_set_mask_and_coherent.exit.thread_crit_edge ]
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %cond90179) #5
  br label %cleanup

dma_set_mask_and_coherent.exit:                   ; preds = %cond.end89
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bits.0161)
  %cmp94.not = icmp eq i32 %bits.0161, 32
  br i1 %cmp94.not, label %dma_set_mask_and_coherent.exit.cleanup_crit_edge, label %dma_set_mask_and_coherent.exit.if.then96_crit_edge

dma_set_mask_and_coherent.exit.if.then96_crit_edge: ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then96

dma_set_mask_and_coherent.exit.cleanup_crit_edge: ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then96:                                        ; preds = %dma_set_mask_and_coherent.exit.if.then96_crit_edge, %cond.end89.thread.if.then96_crit_edge
  %call.i150 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %cmp.i151 = icmp eq i32 %call.i150, 0
  br i1 %cmp.i151, label %if.then.i153, label %if.then96.dma_set_mask_and_coherent.exit154_crit_edge

if.then96.dma_set_mask_and_coherent.exit154_crit_edge: ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_set_mask_and_coherent.exit154

if.then.i153:                                     ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i152 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #5
  br label %dma_set_mask_and_coherent.exit154

dma_set_mask_and_coherent.exit154:                ; preds = %if.then.i153, %if.then96.dma_set_mask_and_coherent.exit154_crit_edge
  %43 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmu, align 8
  %dma_bits101 = getelementptr inbounds %struct.nvkm_mmu, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %dma_bits101 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 32, ptr %dma_bits101, align 8
  br label %cleanup

cleanup:                                          ; preds = %dma_set_mask_and_coherent.exit154, %dma_set_mask_and_coherent.exit.cleanup_crit_edge, %dma_set_mask_and_coherent.exit.thread, %cond.end.cleanup_crit_edge, %if.then43, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then43 ], [ %call, %entry.cleanup_crit_edge ], [ %call69, %cond.end.cleanup_crit_edge ], [ 0, %dma_set_mask_and_coherent.exit154 ], [ 0, %dma_set_mask_and_coherent.exit.cleanup_crit_edge ], [ 0, %dma_set_mask_and_coherent.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_device_ctor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_device_pci(ptr noundef readnone returned %device) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr %device
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_device_pci_dtor(ptr noundef readonly returned %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.nvkm_device_pci, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  tail call void @pci_disable_device(ptr noundef %1) #5
  ret ptr %device
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_device_pci_preinit(ptr nocapture noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %suspend = getelementptr inbounds %struct.nvkm_device_pci, ptr %device, i32 0, i32 2
  %0 = ptrtoint ptr %suspend to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %suspend, align 4, !range !1371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup8_crit_edge, label %if.then

entry.cleanup8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup8

if.then:                                          ; preds = %entry
  %pdev1 = getelementptr inbounds %struct.nvkm_device_pci, ptr %device, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 8
  %call2 = tail call i32 @pci_enable_device(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup8_crit_edge

if.then.cleanup8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup8

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev1, align 8
  tail call void @pci_set_master(ptr noundef %5) #5
  %6 = ptrtoint ptr %suspend to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %suspend, align 4
  br label %cleanup8

cleanup8:                                         ; preds = %if.end, %if.then.cleanup8_crit_edge, %entry.cleanup8_crit_edge
  %retval.1 = phi i32 [ 0, %if.end ], [ 0, %entry.cleanup8_crit_edge ], [ %call2, %if.then.cleanup8_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_device_pci_fini(ptr nocapture noundef %device, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %suspend, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pdev1 = getelementptr inbounds %struct.nvkm_device_pci, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  tail call void @pci_disable_device(ptr noundef %1) #5
  %suspend2 = getelementptr inbounds %struct.nvkm_device_pci, ptr %device, i32 0, i32 2
  %2 = ptrtoint ptr %suspend2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %suspend2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_device_pci_resource_addr(ptr nocapture noundef readonly %device, i32 noundef %bar) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.nvkm_device_pci, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %arrayidx = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %bar
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_device_pci_resource_size(ptr nocapture noundef readonly %device, i32 noundef %bar) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.nvkm_device_pci, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %end = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %bar, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %bar
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %3, 1
  %add = sub i32 %sub, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 681)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 681)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !710, !712, !714, !716, !718, !720, !722, !724, !726, !728, !730, !732, !734, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !764, !766, !768, !770, !772, !774, !776, !778, !780, !782, !784, !786, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !810, !812, !814, !816, !818, !820, !822, !824, !826, !828, !830, !832, !834, !836, !838, !840, !842, !844, !846, !848, !850, !852, !854, !856, !858, !860, !862, !864, !866, !868, !870, !872, !874, !876, !878, !880, !882, !884, !886, !888, !890, !892, !894, !896, !898, !900, !902, !904, !906, !908, !910, !912, !914, !916, !918, !920, !922, !924, !926, !928, !930, !932, !934, !936, !938, !940, !942, !944, !946, !948, !950, !952, !954, !956, !958, !960, !962, !964, !966, !968, !970, !972, !974, !976, !978, !980, !982, !984, !986, !988, !990, !992, !994, !996, !998, !1000, !1002, !1004, !1006, !1008, !1010, !1012, !1014, !1016, !1018, !1020, !1022, !1024, !1026, !1028, !1030, !1032, !1034, !1036, !1038, !1040, !1042, !1044, !1046, !1048, !1050, !1052, !1054, !1056, !1058, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1074, !1076, !1078, !1080, !1082, !1084, !1086, !1088, !1090, !1092, !1094, !1096, !1098, !1100, !1102, !1104, !1106, !1108, !1110, !1112, !1114, !1116, !1118, !1120, !1122, !1124, !1126, !1128, !1130, !1132, !1134, !1136, !1138, !1140, !1142, !1144, !1146, !1148, !1150, !1152, !1154, !1156, !1158, !1160, !1162, !1164, !1166, !1168, !1170, !1172, !1174, !1176, !1178, !1180, !1182, !1184, !1186, !1188, !1190, !1192, !1194, !1196, !1198, !1200, !1202, !1204, !1206, !1208, !1210, !1212, !1214, !1216, !1218, !1220, !1222, !1224, !1226, !1228, !1230, !1232, !1234, !1236, !1238, !1240, !1242, !1244, !1246, !1248, !1250, !1252, !1254, !1256, !1258, !1260, !1262, !1264, !1266, !1268, !1270, !1272, !1274, !1276, !1278, !1280, !1282, !1284, !1286, !1288, !1290, !1292, !1294, !1296, !1298, !1300, !1302, !1304, !1306, !1308, !1310, !1312, !1314, !1316, !1318, !1320, !1322, !1324, !1326, !1328, !1330, !1332, !1334, !1336, !1338, !1340, !1342, !1344, !1346, !1348, !1350, !1352, !1354, !1356, !1358, !1360}
!llvm.module.flags = !{!1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369}
!llvm.ident = !{!1370}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 802, i32 12}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 803, i32 12}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 804, i32 12}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 805, i32 12}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 806, i32 12}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 807, i32 12}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 808, i32 12}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 809, i32 12}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 810, i32 12}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 811, i32 12}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 812, i32 12}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 814, i32 12}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 816, i32 12}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 817, i32 12}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 819, i32 12}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 820, i32 12}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 821, i32 12}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 822, i32 12}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 823, i32 12}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 824, i32 12}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 825, i32 12}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 830, i32 12}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 831, i32 12}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 832, i32 12}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 833, i32 12}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 834, i32 12}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 835, i32 12}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 836, i32 12}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 837, i32 12}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 838, i32 12}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 841, i32 12}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 843, i32 12}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 844, i32 12}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 845, i32 12}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 846, i32 12}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 847, i32 12}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 848, i32 12}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 849, i32 12}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 850, i32 12}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 851, i32 12}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 852, i32 12}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 853, i32 12}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 854, i32 12}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 858, i32 12}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 859, i32 12}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 860, i32 12}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 861, i32 12}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 862, i32 12}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 864, i32 12}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 865, i32 12}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 866, i32 12}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 867, i32 12}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 868, i32 12}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 870, i32 12}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 871, i32 12}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 872, i32 12}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 873, i32 12}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 874, i32 12}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 875, i32 12}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 876, i32 12}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 877, i32 12}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 878, i32 12}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 879, i32 12}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 880, i32 12}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 883, i32 12}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 884, i32 12}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 885, i32 12}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 886, i32 12}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 887, i32 12}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 888, i32 12}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 889, i32 12}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 890, i32 12}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 891, i32 12}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 892, i32 12}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 893, i32 12}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 894, i32 12}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 895, i32 12}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 896, i32 12}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 897, i32 12}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 898, i32 12}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 899, i32 12}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 900, i32 12}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 901, i32 12}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 902, i32 12}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 903, i32 12}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 904, i32 12}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 905, i32 12}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 906, i32 12}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 907, i32 12}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 908, i32 12}
!180 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 909, i32 12}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 910, i32 12}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 911, i32 12}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 912, i32 12}
!188 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 913, i32 12}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 914, i32 12}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 915, i32 12}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 916, i32 12}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 917, i32 12}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 918, i32 12}
!200 = !{ptr @.str.100, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 919, i32 12}
!202 = !{ptr @.str.101, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 920, i32 12}
!204 = !{ptr @.str.102, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 921, i32 12}
!206 = !{ptr @.str.103, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 922, i32 12}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 923, i32 12}
!210 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 924, i32 12}
!212 = !{ptr @.str.106, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 925, i32 12}
!214 = !{ptr @.str.107, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 926, i32 12}
!216 = !{ptr @.str.108, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 927, i32 12}
!218 = !{ptr @.str.109, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 928, i32 12}
!220 = !{ptr @.str.110, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 929, i32 12}
!222 = !{ptr @.str.111, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 930, i32 12}
!224 = !{ptr @.str.112, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 931, i32 12}
!226 = !{ptr @.str.113, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 937, i32 12}
!228 = !{ptr @.str.114, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 938, i32 12}
!230 = !{ptr @.str.115, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 939, i32 12}
!232 = !{ptr @.str.116, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 940, i32 12}
!234 = !{ptr @.str.117, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 941, i32 12}
!236 = !{ptr @.str.118, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 942, i32 12}
!238 = !{ptr @.str.119, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 943, i32 12}
!240 = !{ptr @.str.120, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 944, i32 12}
!242 = !{ptr @.str.121, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 945, i32 12}
!244 = !{ptr @.str.122, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 946, i32 12}
!246 = !{ptr @.str.123, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 947, i32 12}
!248 = !{ptr @.str.124, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 948, i32 12}
!250 = !{ptr @.str.125, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 949, i32 12}
!252 = !{ptr @.str.126, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 950, i32 12}
!254 = !{ptr @.str.127, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 951, i32 12}
!256 = !{ptr @.str.128, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 952, i32 12}
!258 = !{ptr @.str.129, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 953, i32 12}
!260 = !{ptr @.str.130, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 954, i32 12}
!262 = !{ptr @.str.131, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 955, i32 12}
!264 = !{ptr @.str.132, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 956, i32 12}
!266 = !{ptr @.str.133, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 957, i32 12}
!268 = !{ptr @.str.134, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 958, i32 12}
!270 = !{ptr @.str.135, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 959, i32 12}
!272 = !{ptr @.str.136, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 960, i32 12}
!274 = !{ptr @.str.137, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 962, i32 12}
!276 = !{ptr @.str.138, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 963, i32 12}
!278 = !{ptr @.str.139, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 964, i32 12}
!280 = !{ptr @.str.140, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 965, i32 12}
!282 = !{ptr @.str.141, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 966, i32 12}
!284 = !{ptr @.str.142, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 967, i32 12}
!286 = !{ptr @.str.143, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 968, i32 12}
!288 = !{ptr @.str.144, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 969, i32 12}
!290 = !{ptr @.str.145, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 970, i32 12}
!292 = !{ptr @.str.146, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 971, i32 12}
!294 = !{ptr @.str.147, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 972, i32 12}
!296 = !{ptr @.str.148, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 973, i32 12}
!298 = !{ptr @.str.149, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 974, i32 12}
!300 = !{ptr @.str.150, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 977, i32 12}
!302 = !{ptr @.str.151, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 978, i32 12}
!304 = !{ptr @.str.152, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 979, i32 12}
!306 = !{ptr @.str.153, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 980, i32 12}
!308 = !{ptr @.str.154, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 981, i32 12}
!310 = !{ptr @.str.155, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 982, i32 12}
!312 = !{ptr @.str.156, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 983, i32 12}
!314 = !{ptr @.str.157, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 984, i32 12}
!316 = !{ptr @.str.158, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 985, i32 12}
!318 = !{ptr @.str.159, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 986, i32 12}
!320 = !{ptr @.str.160, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 987, i32 12}
!322 = !{ptr @.str.161, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 988, i32 12}
!324 = !{ptr @.str.162, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 990, i32 12}
!326 = !{ptr @.str.163, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 991, i32 12}
!328 = !{ptr @.str.164, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 992, i32 12}
!330 = !{ptr @.str.165, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 993, i32 12}
!332 = !{ptr @.str.166, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 994, i32 12}
!334 = !{ptr @.str.167, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 995, i32 12}
!336 = !{ptr @.str.168, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 996, i32 12}
!338 = !{ptr @.str.169, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 997, i32 12}
!340 = !{ptr @.str.170, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 998, i32 12}
!342 = !{ptr @.str.171, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 999, i32 12}
!344 = !{ptr @.str.172, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1000, i32 12}
!346 = !{ptr @.str.173, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1001, i32 12}
!348 = !{ptr @.str.174, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1002, i32 12}
!350 = !{ptr @.str.175, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1003, i32 12}
!352 = !{ptr @.str.176, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1004, i32 12}
!354 = !{ptr @.str.177, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1005, i32 12}
!356 = !{ptr @.str.178, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1006, i32 12}
!358 = !{ptr @.str.179, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1007, i32 12}
!360 = !{ptr @.str.180, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1008, i32 12}
!362 = !{ptr @.str.181, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1009, i32 12}
!364 = !{ptr @.str.182, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1010, i32 12}
!366 = !{ptr @.str.183, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1011, i32 12}
!368 = !{ptr @.str.184, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1013, i32 12}
!370 = !{ptr @.str.185, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1014, i32 12}
!372 = !{ptr @.str.186, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1015, i32 12}
!374 = !{ptr @.str.187, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1020, i32 12}
!376 = !{ptr @.str.188, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1022, i32 12}
!378 = !{ptr @.str.189, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1023, i32 12}
!380 = !{ptr @.str.190, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1024, i32 12}
!382 = !{ptr @.str.191, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1025, i32 12}
!384 = !{ptr @.str.192, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1026, i32 12}
!386 = !{ptr @.str.193, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1027, i32 12}
!388 = !{ptr @.str.194, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1028, i32 12}
!390 = !{ptr @.str.195, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1029, i32 12}
!392 = !{ptr @.str.196, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1030, i32 12}
!394 = !{ptr @.str.197, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1031, i32 12}
!396 = !{ptr @.str.198, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1032, i32 12}
!398 = !{ptr @.str.199, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1033, i32 12}
!400 = !{ptr @.str.200, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1035, i32 12}
!402 = !{ptr @.str.201, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1036, i32 12}
!404 = !{ptr @.str.202, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1037, i32 12}
!406 = !{ptr @.str.203, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1038, i32 12}
!408 = !{ptr @.str.204, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1039, i32 12}
!410 = !{ptr @.str.205, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1040, i32 12}
!412 = !{ptr @.str.206, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1041, i32 12}
!414 = !{ptr @.str.207, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1042, i32 12}
!416 = !{ptr @.str.208, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1043, i32 12}
!418 = !{ptr @.str.209, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1044, i32 12}
!420 = !{ptr @.str.210, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1045, i32 12}
!422 = !{ptr @.str.211, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1046, i32 12}
!424 = !{ptr @.str.212, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1047, i32 12}
!426 = !{ptr @.str.213, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1048, i32 12}
!428 = !{ptr @.str.214, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1049, i32 12}
!430 = !{ptr @.str.215, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1050, i32 12}
!432 = !{ptr @.str.216, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1054, i32 12}
!434 = !{ptr @.str.217, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1055, i32 12}
!436 = !{ptr @.str.218, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1056, i32 12}
!438 = !{ptr @.str.219, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1057, i32 12}
!440 = !{ptr @.str.220, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1058, i32 12}
!442 = !{ptr @.str.221, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1059, i32 12}
!444 = !{ptr @.str.222, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1060, i32 12}
!446 = !{ptr @.str.223, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1061, i32 12}
!448 = !{ptr @.str.224, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1062, i32 12}
!450 = !{ptr @.str.225, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1063, i32 12}
!452 = !{ptr @.str.226, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1064, i32 12}
!454 = !{ptr @.str.227, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1065, i32 12}
!456 = !{ptr @.str.228, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1066, i32 12}
!458 = !{ptr @.str.229, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1067, i32 12}
!460 = !{ptr @.str.230, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1070, i32 12}
!462 = !{ptr @.str.231, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1071, i32 12}
!464 = !{ptr @.str.232, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1072, i32 12}
!466 = !{ptr @.str.233, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1073, i32 12}
!468 = !{ptr @.str.234, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1074, i32 12}
!470 = !{ptr @.str.235, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1075, i32 12}
!472 = !{ptr @.str.236, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1078, i32 12}
!474 = !{ptr @.str.237, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1079, i32 12}
!476 = !{ptr @.str.238, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1080, i32 12}
!478 = !{ptr @.str.239, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1081, i32 12}
!480 = !{ptr @.str.240, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1082, i32 12}
!482 = !{ptr @.str.241, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1083, i32 12}
!484 = !{ptr @.str.242, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1084, i32 12}
!486 = !{ptr @.str.243, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1085, i32 12}
!488 = !{ptr @.str.244, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1086, i32 12}
!490 = !{ptr @.str.245, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1087, i32 12}
!492 = !{ptr @.str.246, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1088, i32 12}
!494 = !{ptr @.str.247, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1090, i32 12}
!496 = !{ptr @.str.248, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1091, i32 12}
!498 = !{ptr @.str.249, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1092, i32 12}
!500 = !{ptr @.str.250, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1093, i32 12}
!502 = !{ptr @.str.251, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1094, i32 12}
!504 = !{ptr @.str.252, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1095, i32 12}
!506 = !{ptr @.str.253, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1096, i32 12}
!508 = !{ptr @.str.254, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1098, i32 12}
!510 = !{ptr @.str.255, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1099, i32 12}
!512 = !{ptr @.str.256, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1101, i32 12}
!514 = !{ptr @.str.257, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1102, i32 12}
!516 = !{ptr @.str.258, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1104, i32 12}
!518 = !{ptr @.str.259, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1106, i32 12}
!520 = !{ptr @.str.260, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1107, i32 12}
!522 = !{ptr @.str.261, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1108, i32 12}
!524 = !{ptr @.str.262, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1109, i32 12}
!526 = !{ptr @.str.263, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1110, i32 12}
!528 = !{ptr @.str.264, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1111, i32 12}
!530 = !{ptr @.str.265, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1112, i32 12}
!532 = !{ptr @.str.266, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1113, i32 12}
!534 = !{ptr @.str.267, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1115, i32 12}
!536 = !{ptr @.str.268, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1116, i32 12}
!538 = !{ptr @.str.269, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1117, i32 12}
!540 = !{ptr @.str.270, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1118, i32 12}
!542 = !{ptr @.str.271, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1119, i32 12}
!544 = !{ptr @.str.272, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1120, i32 12}
!546 = !{ptr @.str.273, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1121, i32 12}
!548 = !{ptr @.str.274, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1122, i32 12}
!550 = !{ptr @.str.275, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1126, i32 12}
!552 = !{ptr @.str.276, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1127, i32 12}
!554 = !{ptr @.str.277, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1128, i32 12}
!556 = !{ptr @.str.278, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1131, i32 12}
!558 = !{ptr @.str.279, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1132, i32 12}
!560 = !{ptr @.str.280, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1133, i32 12}
!562 = !{ptr @.str.281, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1136, i32 12}
!564 = !{ptr @.str.282, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1138, i32 12}
!566 = !{ptr @.str.283, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1139, i32 12}
!568 = !{ptr @.str.284, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1140, i32 12}
!570 = !{ptr @.str.285, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1142, i32 12}
!572 = !{ptr @.str.286, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1143, i32 12}
!574 = !{ptr @.str.287, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1144, i32 12}
!576 = !{ptr @.str.288, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1145, i32 12}
!578 = !{ptr @.str.289, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1146, i32 12}
!580 = !{ptr @.str.290, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1147, i32 12}
!582 = !{ptr @.str.291, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1148, i32 12}
!584 = !{ptr @.str.292, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1151, i32 12}
!586 = !{ptr @.str.293, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1152, i32 12}
!588 = !{ptr @.str.294, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1153, i32 12}
!590 = !{ptr @.str.295, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1155, i32 12}
!592 = !{ptr @.str.296, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1156, i32 12}
!594 = !{ptr @.str.297, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1157, i32 12}
!596 = !{ptr @.str.298, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1158, i32 12}
!598 = !{ptr @.str.299, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1159, i32 12}
!600 = !{ptr @.str.300, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1160, i32 12}
!602 = !{ptr @.str.301, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1161, i32 12}
!604 = !{ptr @.str.302, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1162, i32 12}
!606 = !{ptr @.str.303, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1163, i32 12}
!608 = !{ptr @.str.304, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1164, i32 12}
!610 = !{ptr @.str.305, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1166, i32 12}
!612 = !{ptr @.str.306, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1167, i32 12}
!614 = !{ptr @.str.307, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1168, i32 12}
!616 = !{ptr @.str.308, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1169, i32 12}
!618 = !{ptr @.str.309, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1170, i32 12}
!620 = !{ptr @.str.310, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1171, i32 12}
!622 = !{ptr @.str.311, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1174, i32 12}
!624 = !{ptr @.str.312, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1175, i32 12}
!626 = !{ptr @.str.313, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1176, i32 12}
!628 = !{ptr @.str.314, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1177, i32 12}
!630 = !{ptr @.str.315, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1179, i32 12}
!632 = !{ptr @.str.316, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1180, i32 12}
!634 = !{ptr @.str.317, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1181, i32 12}
!636 = !{ptr @.str.318, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1182, i32 12}
!638 = !{ptr @.str.319, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1183, i32 12}
!640 = !{ptr @.str.320, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1184, i32 12}
!642 = !{ptr @.str.321, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1185, i32 12}
!644 = !{ptr @.str.322, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1186, i32 12}
!646 = !{ptr @.str.323, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1187, i32 12}
!648 = !{ptr @.str.324, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1188, i32 12}
!650 = !{ptr @.str.325, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1189, i32 12}
!652 = !{ptr @.str.326, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1190, i32 12}
!654 = !{ptr @.str.327, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1191, i32 12}
!656 = !{ptr @.str.328, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1192, i32 12}
!658 = !{ptr @.str.329, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1193, i32 12}
!660 = !{ptr @.str.330, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1194, i32 12}
!662 = !{ptr @.str.331, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1195, i32 12}
!664 = !{ptr @.str.332, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1196, i32 12}
!666 = !{ptr @.str.333, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1197, i32 12}
!668 = !{ptr @.str.334, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1198, i32 12}
!670 = !{ptr @.str.335, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1199, i32 12}
!672 = !{ptr @.str.336, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1200, i32 12}
!674 = !{ptr @.str.337, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1201, i32 12}
!676 = !{ptr @.str.338, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1202, i32 12}
!678 = !{ptr @.str.339, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1204, i32 12}
!680 = !{ptr @.str.340, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1205, i32 12}
!682 = !{ptr @.str.341, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1206, i32 12}
!684 = !{ptr @.str.342, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1207, i32 12}
!686 = !{ptr @.str.343, !687, !"<string literal>", i1 false, i1 false}
!687 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1209, i32 12}
!688 = !{ptr @.str.344, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1210, i32 12}
!690 = !{ptr @.str.345, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1211, i32 12}
!692 = !{ptr @.str.346, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1212, i32 12}
!694 = !{ptr @.str.347, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1215, i32 12}
!696 = !{ptr @.str.348, !697, !"<string literal>", i1 false, i1 false}
!697 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1218, i32 12}
!698 = !{ptr @.str.349, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1224, i32 12}
!700 = !{ptr @.str.350, !701, !"<string literal>", i1 false, i1 false}
!701 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1230, i32 12}
!702 = !{ptr @.str.351, !703, !"<string literal>", i1 false, i1 false}
!703 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1232, i32 12}
!704 = !{ptr @.str.352, !705, !"<string literal>", i1 false, i1 false}
!705 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1237, i32 12}
!706 = !{ptr @.str.353, !707, !"<string literal>", i1 false, i1 false}
!707 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1238, i32 12}
!708 = !{ptr @.str.354, !709, !"<string literal>", i1 false, i1 false}
!709 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1239, i32 12}
!710 = !{ptr @.str.355, !711, !"<string literal>", i1 false, i1 false}
!711 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1240, i32 12}
!712 = !{ptr @.str.356, !713, !"<string literal>", i1 false, i1 false}
!713 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1242, i32 12}
!714 = !{ptr @.str.357, !715, !"<string literal>", i1 false, i1 false}
!715 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1243, i32 12}
!716 = !{ptr @.str.358, !717, !"<string literal>", i1 false, i1 false}
!717 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1246, i32 12}
!718 = !{ptr @.str.359, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1247, i32 12}
!720 = !{ptr @.str.360, !721, !"<string literal>", i1 false, i1 false}
!721 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1248, i32 12}
!722 = !{ptr @.str.361, !723, !"<string literal>", i1 false, i1 false}
!723 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1249, i32 12}
!724 = !{ptr @.str.362, !725, !"<string literal>", i1 false, i1 false}
!725 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1250, i32 12}
!726 = !{ptr @.str.363, !727, !"<string literal>", i1 false, i1 false}
!727 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1251, i32 12}
!728 = !{ptr @.str.364, !729, !"<string literal>", i1 false, i1 false}
!729 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1252, i32 12}
!730 = !{ptr @.str.365, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1253, i32 12}
!732 = !{ptr @.str.366, !733, !"<string literal>", i1 false, i1 false}
!733 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1254, i32 12}
!734 = !{ptr @.str.367, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1255, i32 12}
!736 = !{ptr @.str.368, !737, !"<string literal>", i1 false, i1 false}
!737 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1256, i32 12}
!738 = !{ptr @.str.369, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1262, i32 12}
!740 = !{ptr @.str.370, !741, !"<string literal>", i1 false, i1 false}
!741 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1263, i32 12}
!742 = !{ptr @.str.371, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1264, i32 12}
!744 = !{ptr @.str.372, !745, !"<string literal>", i1 false, i1 false}
!745 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1266, i32 12}
!746 = !{ptr @.str.373, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1270, i32 12}
!748 = !{ptr @.str.374, !749, !"<string literal>", i1 false, i1 false}
!749 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1273, i32 12}
!750 = !{ptr @.str.375, !751, !"<string literal>", i1 false, i1 false}
!751 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1274, i32 12}
!752 = !{ptr @.str.376, !753, !"<string literal>", i1 false, i1 false}
!753 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1275, i32 12}
!754 = !{ptr @.str.377, !755, !"<string literal>", i1 false, i1 false}
!755 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1277, i32 12}
!756 = !{ptr @.str.378, !757, !"<string literal>", i1 false, i1 false}
!757 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1278, i32 12}
!758 = !{ptr @.str.379, !759, !"<string literal>", i1 false, i1 false}
!759 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1279, i32 12}
!760 = !{ptr @.str.380, !761, !"<string literal>", i1 false, i1 false}
!761 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1282, i32 12}
!762 = !{ptr @.str.381, !763, !"<string literal>", i1 false, i1 false}
!763 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1283, i32 12}
!764 = !{ptr @.str.382, !765, !"<string literal>", i1 false, i1 false}
!765 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1285, i32 12}
!766 = !{ptr @.str.383, !767, !"<string literal>", i1 false, i1 false}
!767 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1286, i32 12}
!768 = !{ptr @.str.384, !769, !"<string literal>", i1 false, i1 false}
!769 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1287, i32 12}
!770 = !{ptr @.str.385, !771, !"<string literal>", i1 false, i1 false}
!771 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1288, i32 12}
!772 = !{ptr @.str.386, !773, !"<string literal>", i1 false, i1 false}
!773 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1289, i32 12}
!774 = !{ptr @.str.387, !775, !"<string literal>", i1 false, i1 false}
!775 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1290, i32 12}
!776 = !{ptr @.str.388, !777, !"<string literal>", i1 false, i1 false}
!777 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1293, i32 12}
!778 = !{ptr @.str.389, !779, !"<string literal>", i1 false, i1 false}
!779 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1295, i32 12}
!780 = !{ptr @.str.390, !781, !"<string literal>", i1 false, i1 false}
!781 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1296, i32 12}
!782 = !{ptr @.str.391, !783, !"<string literal>", i1 false, i1 false}
!783 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1297, i32 12}
!784 = !{ptr @.str.392, !785, !"<string literal>", i1 false, i1 false}
!785 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1298, i32 12}
!786 = !{ptr @.str.393, !787, !"<string literal>", i1 false, i1 false}
!787 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1299, i32 12}
!788 = !{ptr @.str.394, !789, !"<string literal>", i1 false, i1 false}
!789 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1300, i32 12}
!790 = !{ptr @.str.395, !791, !"<string literal>", i1 false, i1 false}
!791 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1302, i32 12}
!792 = !{ptr @.str.396, !793, !"<string literal>", i1 false, i1 false}
!793 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1303, i32 12}
!794 = !{ptr @.str.397, !795, !"<string literal>", i1 false, i1 false}
!795 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1304, i32 12}
!796 = !{ptr @.str.398, !797, !"<string literal>", i1 false, i1 false}
!797 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1305, i32 12}
!798 = !{ptr @.str.399, !799, !"<string literal>", i1 false, i1 false}
!799 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1306, i32 12}
!800 = !{ptr @.str.400, !801, !"<string literal>", i1 false, i1 false}
!801 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1307, i32 12}
!802 = !{ptr @.str.401, !803, !"<string literal>", i1 false, i1 false}
!803 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1308, i32 12}
!804 = !{ptr @.str.402, !805, !"<string literal>", i1 false, i1 false}
!805 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1309, i32 12}
!806 = !{ptr @.str.403, !807, !"<string literal>", i1 false, i1 false}
!807 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1310, i32 12}
!808 = !{ptr @.str.404, !809, !"<string literal>", i1 false, i1 false}
!809 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1312, i32 12}
!810 = !{ptr @.str.405, !811, !"<string literal>", i1 false, i1 false}
!811 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1313, i32 12}
!812 = !{ptr @.str.406, !813, !"<string literal>", i1 false, i1 false}
!813 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1314, i32 12}
!814 = !{ptr @.str.407, !815, !"<string literal>", i1 false, i1 false}
!815 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1315, i32 12}
!816 = !{ptr @.str.408, !817, !"<string literal>", i1 false, i1 false}
!817 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1316, i32 12}
!818 = !{ptr @.str.409, !819, !"<string literal>", i1 false, i1 false}
!819 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1317, i32 12}
!820 = !{ptr @.str.410, !821, !"<string literal>", i1 false, i1 false}
!821 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1320, i32 12}
!822 = !{ptr @.str.411, !823, !"<string literal>", i1 false, i1 false}
!823 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1324, i32 12}
!824 = !{ptr @.str.412, !825, !"<string literal>", i1 false, i1 false}
!825 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1325, i32 12}
!826 = !{ptr @.str.413, !827, !"<string literal>", i1 false, i1 false}
!827 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1326, i32 12}
!828 = !{ptr @.str.414, !829, !"<string literal>", i1 false, i1 false}
!829 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1327, i32 12}
!830 = !{ptr @.str.415, !831, !"<string literal>", i1 false, i1 false}
!831 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1328, i32 12}
!832 = !{ptr @.str.416, !833, !"<string literal>", i1 false, i1 false}
!833 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1329, i32 12}
!834 = !{ptr @.str.417, !835, !"<string literal>", i1 false, i1 false}
!835 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1331, i32 12}
!836 = !{ptr @.str.418, !837, !"<string literal>", i1 false, i1 false}
!837 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1332, i32 12}
!838 = !{ptr @.str.419, !839, !"<string literal>", i1 false, i1 false}
!839 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1333, i32 12}
!840 = !{ptr @.str.420, !841, !"<string literal>", i1 false, i1 false}
!841 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1334, i32 12}
!842 = !{ptr @.str.421, !843, !"<string literal>", i1 false, i1 false}
!843 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1335, i32 12}
!844 = !{ptr @.str.422, !845, !"<string literal>", i1 false, i1 false}
!845 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1336, i32 12}
!846 = !{ptr @.str.423, !847, !"<string literal>", i1 false, i1 false}
!847 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1337, i32 12}
!848 = !{ptr @.str.424, !849, !"<string literal>", i1 false, i1 false}
!849 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1338, i32 12}
!850 = !{ptr @.str.425, !851, !"<string literal>", i1 false, i1 false}
!851 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1341, i32 12}
!852 = !{ptr @.str.426, !853, !"<string literal>", i1 false, i1 false}
!853 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1342, i32 12}
!854 = !{ptr @.str.427, !855, !"<string literal>", i1 false, i1 false}
!855 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1344, i32 12}
!856 = !{ptr @.str.428, !857, !"<string literal>", i1 false, i1 false}
!857 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1345, i32 12}
!858 = !{ptr @.str.429, !859, !"<string literal>", i1 false, i1 false}
!859 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1346, i32 12}
!860 = !{ptr @.str.430, !861, !"<string literal>", i1 false, i1 false}
!861 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1347, i32 12}
!862 = !{ptr @.str.431, !863, !"<string literal>", i1 false, i1 false}
!863 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1349, i32 12}
!864 = !{ptr @.str.432, !865, !"<string literal>", i1 false, i1 false}
!865 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1352, i32 12}
!866 = !{ptr @.str.433, !867, !"<string literal>", i1 false, i1 false}
!867 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1353, i32 12}
!868 = !{ptr @.str.434, !869, !"<string literal>", i1 false, i1 false}
!869 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1355, i32 12}
!870 = !{ptr @.str.435, !871, !"<string literal>", i1 false, i1 false}
!871 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1356, i32 12}
!872 = !{ptr @.str.436, !873, !"<string literal>", i1 false, i1 false}
!873 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1358, i32 12}
!874 = !{ptr @.str.437, !875, !"<string literal>", i1 false, i1 false}
!875 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1361, i32 12}
!876 = !{ptr @.str.438, !877, !"<string literal>", i1 false, i1 false}
!877 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1362, i32 12}
!878 = !{ptr @.str.439, !879, !"<string literal>", i1 false, i1 false}
!879 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1363, i32 12}
!880 = !{ptr @.str.440, !881, !"<string literal>", i1 false, i1 false}
!881 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1364, i32 12}
!882 = !{ptr @.str.441, !883, !"<string literal>", i1 false, i1 false}
!883 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1365, i32 12}
!884 = !{ptr @.str.442, !885, !"<string literal>", i1 false, i1 false}
!885 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1366, i32 12}
!886 = !{ptr @.str.443, !887, !"<string literal>", i1 false, i1 false}
!887 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1367, i32 12}
!888 = !{ptr @.str.444, !889, !"<string literal>", i1 false, i1 false}
!889 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1368, i32 12}
!890 = !{ptr @.str.445, !891, !"<string literal>", i1 false, i1 false}
!891 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1369, i32 12}
!892 = !{ptr @.str.446, !893, !"<string literal>", i1 false, i1 false}
!893 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1370, i32 12}
!894 = !{ptr @.str.447, !895, !"<string literal>", i1 false, i1 false}
!895 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1371, i32 12}
!896 = !{ptr @.str.448, !897, !"<string literal>", i1 false, i1 false}
!897 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1372, i32 12}
!898 = !{ptr @.str.449, !899, !"<string literal>", i1 false, i1 false}
!899 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1373, i32 12}
!900 = !{ptr @.str.450, !901, !"<string literal>", i1 false, i1 false}
!901 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1374, i32 12}
!902 = !{ptr @.str.451, !903, !"<string literal>", i1 false, i1 false}
!903 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1375, i32 12}
!904 = !{ptr @.str.452, !905, !"<string literal>", i1 false, i1 false}
!905 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1376, i32 12}
!906 = !{ptr @.str.453, !907, !"<string literal>", i1 false, i1 false}
!907 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1378, i32 12}
!908 = !{ptr @.str.454, !909, !"<string literal>", i1 false, i1 false}
!909 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1380, i32 12}
!910 = !{ptr @.str.455, !911, !"<string literal>", i1 false, i1 false}
!911 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1381, i32 12}
!912 = !{ptr @.str.456, !913, !"<string literal>", i1 false, i1 false}
!913 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1382, i32 12}
!914 = !{ptr @.str.457, !915, !"<string literal>", i1 false, i1 false}
!915 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1383, i32 12}
!916 = !{ptr @.str.458, !917, !"<string literal>", i1 false, i1 false}
!917 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1384, i32 12}
!918 = !{ptr @.str.459, !919, !"<string literal>", i1 false, i1 false}
!919 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1385, i32 12}
!920 = !{ptr @.str.460, !921, !"<string literal>", i1 false, i1 false}
!921 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1386, i32 12}
!922 = !{ptr @.str.461, !923, !"<string literal>", i1 false, i1 false}
!923 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1387, i32 12}
!924 = !{ptr @.str.462, !925, !"<string literal>", i1 false, i1 false}
!925 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1388, i32 12}
!926 = !{ptr @.str.463, !927, !"<string literal>", i1 false, i1 false}
!927 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1389, i32 12}
!928 = !{ptr @.str.464, !929, !"<string literal>", i1 false, i1 false}
!929 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1390, i32 12}
!930 = !{ptr @.str.465, !931, !"<string literal>", i1 false, i1 false}
!931 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1391, i32 12}
!932 = !{ptr @.str.466, !933, !"<string literal>", i1 false, i1 false}
!933 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1392, i32 12}
!934 = !{ptr @.str.467, !935, !"<string literal>", i1 false, i1 false}
!935 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1394, i32 12}
!936 = !{ptr @.str.468, !937, !"<string literal>", i1 false, i1 false}
!937 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1395, i32 12}
!938 = !{ptr @.str.469, !939, !"<string literal>", i1 false, i1 false}
!939 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1398, i32 12}
!940 = !{ptr @.str.470, !941, !"<string literal>", i1 false, i1 false}
!941 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1399, i32 12}
!942 = !{ptr @.str.471, !943, !"<string literal>", i1 false, i1 false}
!943 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1401, i32 12}
!944 = !{ptr @.str.472, !945, !"<string literal>", i1 false, i1 false}
!945 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1403, i32 12}
!946 = !{ptr @.str.473, !947, !"<string literal>", i1 false, i1 false}
!947 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1405, i32 12}
!948 = !{ptr @.str.474, !949, !"<string literal>", i1 false, i1 false}
!949 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1410, i32 12}
!950 = !{ptr @.str.475, !951, !"<string literal>", i1 false, i1 false}
!951 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1411, i32 12}
!952 = !{ptr @.str.476, !953, !"<string literal>", i1 false, i1 false}
!953 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1412, i32 12}
!954 = !{ptr @.str.477, !955, !"<string literal>", i1 false, i1 false}
!955 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1413, i32 12}
!956 = !{ptr @.str.478, !957, !"<string literal>", i1 false, i1 false}
!957 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1414, i32 12}
!958 = !{ptr @.str.479, !959, !"<string literal>", i1 false, i1 false}
!959 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1415, i32 12}
!960 = !{ptr @.str.480, !961, !"<string literal>", i1 false, i1 false}
!961 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1416, i32 12}
!962 = !{ptr @.str.481, !963, !"<string literal>", i1 false, i1 false}
!963 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1419, i32 12}
!964 = !{ptr @.str.482, !965, !"<string literal>", i1 false, i1 false}
!965 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1422, i32 12}
!966 = !{ptr @.str.483, !967, !"<string literal>", i1 false, i1 false}
!967 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1423, i32 12}
!968 = !{ptr @.str.484, !969, !"<string literal>", i1 false, i1 false}
!969 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1424, i32 12}
!970 = !{ptr @.str.485, !971, !"<string literal>", i1 false, i1 false}
!971 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1425, i32 12}
!972 = !{ptr @.str.486, !973, !"<string literal>", i1 false, i1 false}
!973 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1426, i32 12}
!974 = !{ptr @.str.487, !975, !"<string literal>", i1 false, i1 false}
!975 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1428, i32 12}
!976 = !{ptr @.str.488, !977, !"<string literal>", i1 false, i1 false}
!977 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1430, i32 12}
!978 = !{ptr @.str.489, !979, !"<string literal>", i1 false, i1 false}
!979 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1432, i32 12}
!980 = !{ptr @.str.490, !981, !"<string literal>", i1 false, i1 false}
!981 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1433, i32 12}
!982 = !{ptr @.str.491, !983, !"<string literal>", i1 false, i1 false}
!983 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1434, i32 12}
!984 = !{ptr @.str.492, !985, !"<string literal>", i1 false, i1 false}
!985 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1435, i32 12}
!986 = !{ptr @.str.493, !987, !"<string literal>", i1 false, i1 false}
!987 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1436, i32 12}
!988 = !{ptr @.str.494, !989, !"<string literal>", i1 false, i1 false}
!989 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1437, i32 12}
!990 = !{ptr @.str.495, !991, !"<string literal>", i1 false, i1 false}
!991 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1438, i32 12}
!992 = !{ptr @.str.496, !993, !"<string literal>", i1 false, i1 false}
!993 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1439, i32 12}
!994 = !{ptr @.str.497, !995, !"<string literal>", i1 false, i1 false}
!995 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1440, i32 12}
!996 = !{ptr @.str.498, !997, !"<string literal>", i1 false, i1 false}
!997 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1441, i32 12}
!998 = !{ptr @.str.499, !999, !"<string literal>", i1 false, i1 false}
!999 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1442, i32 12}
!1000 = !{ptr @.str.500, !1001, !"<string literal>", i1 false, i1 false}
!1001 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1443, i32 12}
!1002 = !{ptr @.str.501, !1003, !"<string literal>", i1 false, i1 false}
!1003 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1445, i32 12}
!1004 = !{ptr @.str.502, !1005, !"<string literal>", i1 false, i1 false}
!1005 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1446, i32 12}
!1006 = !{ptr @.str.503, !1007, !"<string literal>", i1 false, i1 false}
!1007 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1447, i32 12}
!1008 = !{ptr @.str.504, !1009, !"<string literal>", i1 false, i1 false}
!1009 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1448, i32 12}
!1010 = !{ptr @.str.505, !1011, !"<string literal>", i1 false, i1 false}
!1011 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1449, i32 12}
!1012 = !{ptr @.str.506, !1013, !"<string literal>", i1 false, i1 false}
!1013 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1451, i32 12}
!1014 = !{ptr @.str.507, !1015, !"<string literal>", i1 false, i1 false}
!1015 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1452, i32 12}
!1016 = !{ptr @.str.508, !1017, !"<string literal>", i1 false, i1 false}
!1017 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1453, i32 12}
!1018 = !{ptr @.str.509, !1019, !"<string literal>", i1 false, i1 false}
!1019 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1454, i32 12}
!1020 = !{ptr @.str.510, !1021, !"<string literal>", i1 false, i1 false}
!1021 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1456, i32 12}
!1022 = !{ptr @.str.511, !1023, !"<string literal>", i1 false, i1 false}
!1023 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1457, i32 12}
!1024 = !{ptr @.str.512, !1025, !"<string literal>", i1 false, i1 false}
!1025 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1458, i32 12}
!1026 = !{ptr @.str.513, !1027, !"<string literal>", i1 false, i1 false}
!1027 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1459, i32 12}
!1028 = !{ptr @.str.514, !1029, !"<string literal>", i1 false, i1 false}
!1029 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1460, i32 12}
!1030 = !{ptr @.str.515, !1031, !"<string literal>", i1 false, i1 false}
!1031 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1461, i32 12}
!1032 = !{ptr @.str.516, !1033, !"<string literal>", i1 false, i1 false}
!1033 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1462, i32 12}
!1034 = !{ptr @.str.517, !1035, !"<string literal>", i1 false, i1 false}
!1035 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1463, i32 12}
!1036 = !{ptr @.str.518, !1037, !"<string literal>", i1 false, i1 false}
!1037 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1464, i32 12}
!1038 = !{ptr @.str.519, !1039, !"<string literal>", i1 false, i1 false}
!1039 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1466, i32 12}
!1040 = !{ptr @.str.520, !1041, !"<string literal>", i1 false, i1 false}
!1041 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1467, i32 12}
!1042 = !{ptr @.str.521, !1043, !"<string literal>", i1 false, i1 false}
!1043 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1468, i32 12}
!1044 = !{ptr @.str.522, !1045, !"<string literal>", i1 false, i1 false}
!1045 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1473, i32 12}
!1046 = !{ptr @.str.523, !1047, !"<string literal>", i1 false, i1 false}
!1047 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1474, i32 12}
!1048 = !{ptr @.str.524, !1049, !"<string literal>", i1 false, i1 false}
!1049 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1476, i32 12}
!1050 = !{ptr @.str.525, !1051, !"<string literal>", i1 false, i1 false}
!1051 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1477, i32 12}
!1052 = !{ptr @.str.526, !1053, !"<string literal>", i1 false, i1 false}
!1053 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1478, i32 12}
!1054 = !{ptr @.str.527, !1055, !"<string literal>", i1 false, i1 false}
!1055 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1481, i32 12}
!1056 = !{ptr @.str.528, !1057, !"<string literal>", i1 false, i1 false}
!1057 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1482, i32 12}
!1058 = !{ptr @.str.529, !1059, !"<string literal>", i1 false, i1 false}
!1059 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1483, i32 12}
!1060 = !{ptr @.str.530, !1061, !"<string literal>", i1 false, i1 false}
!1061 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1484, i32 12}
!1062 = !{ptr @.str.531, !1063, !"<string literal>", i1 false, i1 false}
!1063 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1485, i32 12}
!1064 = !{ptr @.str.532, !1065, !"<string literal>", i1 false, i1 false}
!1065 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1486, i32 12}
!1066 = !{ptr @.str.533, !1067, !"<string literal>", i1 false, i1 false}
!1067 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1487, i32 12}
!1068 = !{ptr @.str.534, !1069, !"<string literal>", i1 false, i1 false}
!1069 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1488, i32 12}
!1070 = !{ptr @.str.535, !1071, !"<string literal>", i1 false, i1 false}
!1071 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1489, i32 12}
!1072 = !{ptr @.str.536, !1073, !"<string literal>", i1 false, i1 false}
!1073 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1490, i32 12}
!1074 = !{ptr @.str.537, !1075, !"<string literal>", i1 false, i1 false}
!1075 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1492, i32 12}
!1076 = !{ptr @.str.538, !1077, !"<string literal>", i1 false, i1 false}
!1077 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1500, i32 12}
!1078 = !{ptr @.str.539, !1079, !"<string literal>", i1 false, i1 false}
!1079 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1501, i32 12}
!1080 = !{ptr @.str.540, !1081, !"<string literal>", i1 false, i1 false}
!1081 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1502, i32 12}
!1082 = !{ptr @.str.541, !1083, !"<string literal>", i1 false, i1 false}
!1083 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1505, i32 12}
!1084 = !{ptr @.str.542, !1085, !"<string literal>", i1 false, i1 false}
!1085 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1510, i32 12}
!1086 = !{ptr @.str.543, !1087, !"<string literal>", i1 false, i1 false}
!1087 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1513, i32 12}
!1088 = !{ptr @.str.544, !1089, !"<string literal>", i1 false, i1 false}
!1089 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1514, i32 12}
!1090 = !{ptr @.str.545, !1091, !"<string literal>", i1 false, i1 false}
!1091 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1515, i32 12}
!1092 = !{ptr @.str.546, !1093, !"<string literal>", i1 false, i1 false}
!1093 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1516, i32 12}
!1094 = !{ptr @.str.547, !1095, !"<string literal>", i1 false, i1 false}
!1095 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1517, i32 12}
!1096 = !{ptr @.str.548, !1097, !"<string literal>", i1 false, i1 false}
!1097 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1518, i32 12}
!1098 = !{ptr @.str.549, !1099, !"<string literal>", i1 false, i1 false}
!1099 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1519, i32 12}
!1100 = !{ptr @.str.550, !1101, !"<string literal>", i1 false, i1 false}
!1101 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1520, i32 12}
!1102 = !{ptr @.str.551, !1103, !"<string literal>", i1 false, i1 false}
!1103 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1521, i32 12}
!1104 = !{ptr @.str.552, !1105, !"<string literal>", i1 false, i1 false}
!1105 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1522, i32 12}
!1106 = !{ptr @.str.553, !1107, !"<string literal>", i1 false, i1 false}
!1107 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1523, i32 12}
!1108 = !{ptr @.str.554, !1109, !"<string literal>", i1 false, i1 false}
!1109 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1524, i32 12}
!1110 = !{ptr @.str.555, !1111, !"<string literal>", i1 false, i1 false}
!1111 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1527, i32 12}
!1112 = !{ptr @.str.556, !1113, !"<string literal>", i1 false, i1 false}
!1113 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1528, i32 12}
!1114 = !{ptr @.str.557, !1115, !"<string literal>", i1 false, i1 false}
!1115 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1529, i32 12}
!1116 = !{ptr @.str.558, !1117, !"<string literal>", i1 false, i1 false}
!1117 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1531, i32 12}
!1118 = !{ptr @.str.559, !1119, !"<string literal>", i1 false, i1 false}
!1119 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1535, i32 12}
!1120 = !{ptr @.str.560, !1121, !"<string literal>", i1 false, i1 false}
!1121 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1536, i32 12}
!1122 = !{ptr @.str.561, !1123, !"<string literal>", i1 false, i1 false}
!1123 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1538, i32 12}
!1124 = !{ptr @.str.562, !1125, !"<string literal>", i1 false, i1 false}
!1125 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1539, i32 12}
!1126 = !{ptr @.str.563, !1127, !"<string literal>", i1 false, i1 false}
!1127 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1540, i32 12}
!1128 = !{ptr @.str.564, !1129, !"<string literal>", i1 false, i1 false}
!1129 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1541, i32 12}
!1130 = !{ptr @.str.565, !1131, !"<string literal>", i1 false, i1 false}
!1131 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1542, i32 12}
!1132 = !{ptr @.str.566, !1133, !"<string literal>", i1 false, i1 false}
!1133 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1543, i32 12}
!1134 = !{ptr @.str.567, !1135, !"<string literal>", i1 false, i1 false}
!1135 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1544, i32 12}
!1136 = !{ptr @.str.568, !1137, !"<string literal>", i1 false, i1 false}
!1137 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1545, i32 12}
!1138 = !{ptr @.str.569, !1139, !"<string literal>", i1 false, i1 false}
!1139 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1546, i32 12}
!1140 = !{ptr @.str.570, !1141, !"<string literal>", i1 false, i1 false}
!1141 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1547, i32 12}
!1142 = !{ptr @.str.571, !1143, !"<string literal>", i1 false, i1 false}
!1143 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1551, i32 12}
!1144 = !{ptr @.str.572, !1145, !"<string literal>", i1 false, i1 false}
!1145 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1552, i32 12}
!1146 = !{ptr @.str.573, !1147, !"<string literal>", i1 false, i1 false}
!1147 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1553, i32 12}
!1148 = !{ptr @nvkm_device_pci_10de, !1149, !"nvkm_device_pci_10de", i1 false, i1 false}
!1149 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 801, i32 1}
!1150 = !{ptr @nvkm_device_pci_10de_0189, !1151, !"nvkm_device_pci_10de_0189", i1 false, i1 false}
!1151 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 41, i32 1}
!1152 = !{ptr @nvkm_device_pci_10de_01f0, !1153, !"nvkm_device_pci_10de_01f0", i1 false, i1 false}
!1153 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 48, i32 1}
!1154 = !{ptr @nvkm_device_pci_10de_0322, !1155, !"nvkm_device_pci_10de_0322", i1 false, i1 false}
!1155 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 55, i32 1}
!1156 = !{ptr @.str.574, !1157, !"<string literal>", i1 false, i1 false}
!1157 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 64, i32 20}
!1158 = !{ptr @.str.575, !1159, !"<string literal>", i1 false, i1 false}
!1159 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 66, i32 20}
!1160 = !{ptr @nvkm_device_pci_10de_05e7, !1161, !"nvkm_device_pci_10de_05e7", i1 false, i1 false}
!1161 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 63, i32 1}
!1162 = !{ptr @nvkm_device_pci_10de_0609, !1163, !"nvkm_device_pci_10de_0609", i1 false, i1 false}
!1163 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 73, i32 1}
!1164 = !{ptr @nvkm_device_pci_10de_062e, !1165, !"nvkm_device_pci_10de_062e", i1 false, i1 false}
!1165 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 79, i32 1}
!1166 = !{ptr @nvkm_device_pci_10de_0649, !1167, !"nvkm_device_pci_10de_0649", i1 false, i1 false}
!1167 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 85, i32 1}
!1168 = !{ptr @.str.576, !1169, !"<string literal>", i1 false, i1 false}
!1169 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 92, i32 20}
!1170 = !{ptr @nvkm_device_pci_10de_0652, !1171, !"nvkm_device_pci_10de_0652", i1 false, i1 false}
!1171 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 91, i32 1}
!1172 = !{ptr @nvkm_device_pci_10de_0654, !1173, !"nvkm_device_pci_10de_0654", i1 false, i1 false}
!1173 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 97, i32 1}
!1174 = !{ptr @nvkm_device_pci_10de_0655, !1175, !"nvkm_device_pci_10de_0655", i1 false, i1 false}
!1175 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 104, i32 1}
!1176 = !{ptr @nvkm_device_pci_10de_0656, !1177, !"nvkm_device_pci_10de_0656", i1 false, i1 false}
!1177 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 110, i32 1}
!1178 = !{ptr @.str.577, !1179, !"<string literal>", i1 false, i1 false}
!1179 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 117, i32 20}
!1180 = !{ptr @.str.578, !1181, !"<string literal>", i1 false, i1 false}
!1181 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 118, i32 20}
!1182 = !{ptr @nvkm_device_pci_10de_06d1, !1183, !"nvkm_device_pci_10de_06d1", i1 false, i1 false}
!1183 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 116, i32 1}
!1184 = !{ptr @.str.579, !1185, !"<string literal>", i1 false, i1 false}
!1185 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 124, i32 20}
!1186 = !{ptr @nvkm_device_pci_10de_06d2, !1187, !"nvkm_device_pci_10de_06d2", i1 false, i1 false}
!1187 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 123, i32 1}
!1188 = !{ptr @.str.580, !1189, !"<string literal>", i1 false, i1 false}
!1189 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 130, i32 20}
!1190 = !{ptr @.str.581, !1191, !"<string literal>", i1 false, i1 false}
!1191 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 131, i32 20}
!1192 = !{ptr @nvkm_device_pci_10de_06de, !1193, !"nvkm_device_pci_10de_06de", i1 false, i1 false}
!1193 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 129, i32 1}
!1194 = !{ptr @.str.582, !1195, !"<string literal>", i1 false, i1 false}
!1195 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 143, i32 20}
!1196 = !{ptr @nvkm_device_pci_10de_06e8, !1197, !"nvkm_device_pci_10de_06e8", i1 false, i1 false}
!1197 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 142, i32 1}
!1198 = !{ptr @.str.583, !1199, !"<string literal>", i1 false, i1 false}
!1199 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 149, i32 20}
!1200 = !{ptr @nvkm_device_pci_10de_06f9, !1201, !"nvkm_device_pci_10de_06f9", i1 false, i1 false}
!1201 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 148, i32 1}
!1202 = !{ptr @.str.584, !1203, !"<string literal>", i1 false, i1 false}
!1203 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 155, i32 20}
!1204 = !{ptr @nvkm_device_pci_10de_06ff, !1205, !"nvkm_device_pci_10de_06ff", i1 false, i1 false}
!1205 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 154, i32 1}
!1206 = !{ptr @nvkm_device_pci_10de_0866, !1207, !"nvkm_device_pci_10de_0866", i1 false, i1 false}
!1207 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 160, i32 1}
!1208 = !{ptr @.str.585, !1209, !"<string literal>", i1 false, i1 false}
!1209 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 167, i32 20}
!1210 = !{ptr @nvkm_device_pci_10de_0872, !1211, !"nvkm_device_pci_10de_0872", i1 false, i1 false}
!1211 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 166, i32 1}
!1212 = !{ptr @nvkm_device_pci_10de_0873, !1213, !"nvkm_device_pci_10de_0873", i1 false, i1 false}
!1213 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 172, i32 1}
!1214 = !{ptr @nvkm_device_pci_10de_0a6e, !1215, !"nvkm_device_pci_10de_0a6e", i1 false, i1 false}
!1215 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 178, i32 1}
!1216 = !{ptr @nvkm_device_pci_10de_0a70, !1217, !"nvkm_device_pci_10de_0a70", i1 false, i1 false}
!1217 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 184, i32 1}
!1218 = !{ptr @nvkm_device_pci_10de_0a73, !1219, !"nvkm_device_pci_10de_0a73", i1 false, i1 false}
!1219 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 191, i32 1}
!1220 = !{ptr @nvkm_device_pci_10de_0a74, !1221, !"nvkm_device_pci_10de_0a74", i1 false, i1 false}
!1221 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 198, i32 1}
!1222 = !{ptr @nvkm_device_pci_10de_0a75, !1223, !"nvkm_device_pci_10de_0a75", i1 false, i1 false}
!1223 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 204, i32 1}
!1224 = !{ptr @.str.586, !1225, !"<string literal>", i1 false, i1 false}
!1225 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 216, i32 20}
!1226 = !{ptr @nvkm_device_pci_10de_0a7a, !1227, !"nvkm_device_pci_10de_0a7a", i1 false, i1 false}
!1227 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 210, i32 1}
!1228 = !{ptr @.str.587, !1229, !"<string literal>", i1 false, i1 false}
!1229 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 226, i32 20}
!1230 = !{ptr @nvkm_device_pci_10de_0dd8, !1231, !"nvkm_device_pci_10de_0dd8", i1 false, i1 false}
!1231 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 225, i32 1}
!1232 = !{ptr @nvkm_device_pci_10de_0de9, !1233, !"nvkm_device_pci_10de_0de9", i1 false, i1 false}
!1233 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 231, i32 1}
!1234 = !{ptr @.str.588, !1235, !"<string literal>", i1 false, i1 false}
!1235 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 246, i32 20}
!1236 = !{ptr @nvkm_device_pci_10de_0dea, !1237, !"nvkm_device_pci_10de_0dea", i1 false, i1 false}
!1237 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 245, i32 1}
!1238 = !{ptr @nvkm_device_pci_10de_0df4, !1239, !"nvkm_device_pci_10de_0df4", i1 false, i1 false}
!1239 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 255, i32 1}
!1240 = !{ptr @nvkm_device_pci_10de_0fd2, !1241, !"nvkm_device_pci_10de_0fd2", i1 false, i1 false}
!1241 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 262, i32 1}
!1242 = !{ptr @.str.589, !1243, !"<string literal>", i1 false, i1 false}
!1243 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 270, i32 20}
!1244 = !{ptr @nvkm_device_pci_10de_0fe3, !1245, !"nvkm_device_pci_10de_0fe3", i1 false, i1 false}
!1245 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 269, i32 1}
!1246 = !{ptr @.str.590, !1247, !"<string literal>", i1 false, i1 false}
!1247 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 277, i32 20}
!1248 = !{ptr @nvkm_device_pci_10de_104b, !1249, !"nvkm_device_pci_10de_104b", i1 false, i1 false}
!1249 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 276, i32 1}
!1250 = !{ptr @.str.591, !1251, !"<string literal>", i1 false, i1 false}
!1251 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 287, i32 20}
!1252 = !{ptr @.str.592, !1253, !"<string literal>", i1 false, i1 false}
!1253 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 288, i32 20}
!1254 = !{ptr @.str.593, !1255, !"<string literal>", i1 false, i1 false}
!1255 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 289, i32 20}
!1256 = !{ptr @nvkm_device_pci_10de_1058, !1257, !"nvkm_device_pci_10de_1058", i1 false, i1 false}
!1257 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 286, i32 1}
!1258 = !{ptr @nvkm_device_pci_10de_105b, !1259, !"nvkm_device_pci_10de_105b", i1 false, i1 false}
!1259 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 299, i32 1}
!1260 = !{ptr @.str.594, !1261, !"<string literal>", i1 false, i1 false}
!1261 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 307, i32 20}
!1262 = !{ptr @nvkm_device_pci_10de_1091, !1263, !"nvkm_device_pci_10de_1091", i1 false, i1 false}
!1263 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 306, i32 1}
!1264 = !{ptr @nvkm_device_pci_10de_1096, !1265, !"nvkm_device_pci_10de_1096", i1 false, i1 false}
!1265 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 315, i32 1}
!1266 = !{ptr @.str.595, !1267, !"<string literal>", i1 false, i1 false}
!1267 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 360, i32 20}
!1268 = !{ptr @.str.596, !1269, !"<string literal>", i1 false, i1 false}
!1269 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 375, i32 20}
!1270 = !{ptr @.str.597, !1271, !"<string literal>", i1 false, i1 false}
!1271 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 399, i32 20}
!1272 = !{ptr @.str.598, !1273, !"<string literal>", i1 false, i1 false}
!1273 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 450, i32 20}
!1274 = !{ptr @.str.599, !1275, !"<string literal>", i1 false, i1 false}
!1275 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 479, i32 20}
!1276 = !{ptr @.str.600, !1277, !"<string literal>", i1 false, i1 false}
!1277 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 549, i32 20}
!1278 = !{ptr @.str.601, !1279, !"<string literal>", i1 false, i1 false}
!1279 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 559, i32 20}
!1280 = !{ptr @.str.602, !1281, !"<string literal>", i1 false, i1 false}
!1281 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 562, i32 20}
!1282 = !{ptr @.str.603, !1283, !"<string literal>", i1 false, i1 false}
!1283 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 573, i32 20}
!1284 = !{ptr @.str.604, !1285, !"<string literal>", i1 false, i1 false}
!1285 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 574, i32 20}
!1286 = !{ptr @.str.605, !1287, !"<string literal>", i1 false, i1 false}
!1287 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 579, i32 20}
!1288 = !{ptr @.str.606, !1289, !"<string literal>", i1 false, i1 false}
!1289 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 581, i32 20}
!1290 = !{ptr @.str.607, !1291, !"<string literal>", i1 false, i1 false}
!1291 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 620, i32 20}
!1292 = !{ptr @nvkm_device_pci_10de_1140, !1293, !"nvkm_device_pci_10de_1140", i1 false, i1 false}
!1293 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 321, i32 1}
!1294 = !{ptr @nvkm_device_pci_10de_1185, !1295, !"nvkm_device_pci_10de_1185", i1 false, i1 false}
!1295 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 667, i32 1}
!1296 = !{ptr @nvkm_device_pci_10de_1189, !1297, !"nvkm_device_pci_10de_1189", i1 false, i1 false}
!1297 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 673, i32 1}
!1298 = !{ptr @nvkm_device_pci_10de_1199, !1299, !"nvkm_device_pci_10de_1199", i1 false, i1 false}
!1299 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 679, i32 1}
!1300 = !{ptr @.str.608, !1301, !"<string literal>", i1 false, i1 false}
!1301 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 686, i32 20}
!1302 = !{ptr @nvkm_device_pci_10de_11e3, !1303, !"nvkm_device_pci_10de_11e3", i1 false, i1 false}
!1303 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 685, i32 1}
!1304 = !{ptr @nvkm_device_pci_10de_1247, !1305, !"nvkm_device_pci_10de_1247", i1 false, i1 false}
!1305 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 691, i32 1}
!1306 = !{ptr @nvkm_device_pci_10de_124d, !1307, !"nvkm_device_pci_10de_124d", i1 false, i1 false}
!1307 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 699, i32 1}
!1308 = !{ptr @.str.609, !1309, !"<string literal>", i1 false, i1 false}
!1309 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 706, i32 20}
!1310 = !{ptr @nvkm_device_pci_10de_1290, !1311, !"nvkm_device_pci_10de_1290", i1 false, i1 false}
!1311 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 705, i32 1}
!1312 = !{ptr @.str.610, !1313, !"<string literal>", i1 false, i1 false}
!1313 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 712, i32 20}
!1314 = !{ptr @nvkm_device_pci_10de_1292, !1315, !"nvkm_device_pci_10de_1292", i1 false, i1 false}
!1315 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 711, i32 1}
!1316 = !{ptr @.str.611, !1317, !"<string literal>", i1 false, i1 false}
!1317 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 722, i32 20}
!1318 = !{ptr @nvkm_device_pci_10de_1295, !1319, !"nvkm_device_pci_10de_1295", i1 false, i1 false}
!1319 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 719, i32 1}
!1320 = !{ptr @.str.612, !1321, !"<string literal>", i1 false, i1 false}
!1321 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 729, i32 20}
!1322 = !{ptr @nvkm_device_pci_10de_1299, !1323, !"nvkm_device_pci_10de_1299", i1 false, i1 false}
!1323 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 728, i32 1}
!1324 = !{ptr @.str.613, !1325, !"<string literal>", i1 false, i1 false}
!1325 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 735, i32 20}
!1326 = !{ptr @nvkm_device_pci_10de_1340, !1327, !"nvkm_device_pci_10de_1340", i1 false, i1 false}
!1327 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 734, i32 1}
!1328 = !{ptr @.str.614, !1329, !"<string literal>", i1 false, i1 false}
!1329 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 741, i32 20}
!1330 = !{ptr @nvkm_device_pci_10de_1341, !1331, !"nvkm_device_pci_10de_1341", i1 false, i1 false}
!1331 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 740, i32 1}
!1332 = !{ptr @.str.615, !1333, !"<string literal>", i1 false, i1 false}
!1333 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 750, i32 20}
!1334 = !{ptr @nvkm_device_pci_10de_1346, !1335, !"nvkm_device_pci_10de_1346", i1 false, i1 false}
!1335 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 749, i32 1}
!1336 = !{ptr @.str.616, !1337, !"<string literal>", i1 false, i1 false}
!1337 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 757, i32 20}
!1338 = !{ptr @nvkm_device_pci_10de_1347, !1339, !"nvkm_device_pci_10de_1347", i1 false, i1 false}
!1339 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 756, i32 1}
!1340 = !{ptr @.str.617, !1341, !"<string literal>", i1 false, i1 false}
!1341 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 764, i32 20}
!1342 = !{ptr @nvkm_device_pci_10de_137a, !1343, !"nvkm_device_pci_10de_137a", i1 false, i1 false}
!1343 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 763, i32 1}
!1344 = !{ptr @nvkm_device_pci_10de_137d, !1345, !"nvkm_device_pci_10de_137d", i1 false, i1 false}
!1345 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 769, i32 1}
!1346 = !{ptr @.str.618, !1347, !"<string literal>", i1 false, i1 false}
!1347 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 776, i32 20}
!1348 = !{ptr @nvkm_device_pci_10de_1391, !1349, !"nvkm_device_pci_10de_1391", i1 false, i1 false}
!1349 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 775, i32 1}
!1350 = !{ptr @.str.619, !1351, !"<string literal>", i1 false, i1 false}
!1351 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 782, i32 20}
!1352 = !{ptr @nvkm_device_pci_10de_1392, !1353, !"nvkm_device_pci_10de_1392", i1 false, i1 false}
!1353 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 781, i32 1}
!1354 = !{ptr @.str.620, !1355, !"<string literal>", i1 false, i1 false}
!1355 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 789, i32 20}
!1356 = !{ptr @nvkm_device_pci_10de_139a, !1357, !"nvkm_device_pci_10de_139a", i1 false, i1 false}
!1357 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 788, i32 1}
!1358 = !{ptr @nvkm_device_pci_10de_139b, !1359, !"nvkm_device_pci_10de_139b", i1 false, i1 false}
!1359 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 794, i32 1}
!1360 = !{ptr @nvkm_device_pci_func, !1361, !"nvkm_device_pci_func", i1 false, i1 false}
!1361 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/pci.c", i32 1610, i32 1}
!1362 = !{i32 1, !"wchar_size", i32 2}
!1363 = !{i32 1, !"min_enum_size", i32 4}
!1364 = !{i32 8, !"branch-target-enforcement", i32 0}
!1365 = !{i32 8, !"sign-return-address", i32 0}
!1366 = !{i32 8, !"sign-return-address-all", i32 0}
!1367 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!1368 = !{i32 7, !"uwtable", i32 1}
!1369 = !{i32 7, !"frame-pointer", i32 2}
!1370 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!1371 = !{i8 0, i8 2}
