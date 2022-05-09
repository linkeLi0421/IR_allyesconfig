; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/via/via_dma.c_pt.bc'
source_filename = "../drivers/gpu/drm/via/via_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.72 = type { i32, ptr }
%struct.drm_via_private = type { ptr, ptr, ptr, ptr, i32, [5 x %struct.wait_queue_head], ptr, i32, i32, i32, i32, ptr, ptr, %struct.drm_via_ring_buffer, i64, i32, i64, %struct.atomic_t, %struct.drm_via_state_t, [60000 x i8], [1024 x ptr], i32, i32, [4 x %struct.drm_via_irq], i32, ptr, i32, i32, ptr, i32, i32, %struct.drm_mm, i32, %struct.drm_mm, %struct.idr, i32, i32, [2 x %struct._drm_via_blitq], i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_via_ring_buffer = type { %struct.drm_local_map, ptr }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.drm_via_state_t = type { i32, i32, i32, [2 x [10 x i32]], [2 x [10 x i32]], [2 x [10 x i32]], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.drm_via_irq = type { %struct.atomic_t, i32, i32, %struct.wait_queue_head }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct._drm_via_blitq = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x ptr], %struct.spinlock, [8 x %struct.wait_queue_head], %struct.wait_queue_head, %struct.work_struct, %struct.timer_list }
%struct.drm_agp_head = type { %struct.agp_kern_info, %struct.list_head, i32, ptr, i32, i32, i32, i32, i32, i32 }
%struct.agp_kern_info = type { %struct.agp_version, ptr, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.agp_version = type { i16, i16 }
%struct._drm_via_dma_init = type { i32, i32, i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct._drm_via_cmdbuffer = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct._drm_via_cmdbuf_size = type { i32, i32, i32 }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VIA_ALLOCMEM\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VIA_FREEMEM\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VIA_AGP_INIT\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VIA_FB_INIT\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VIA_MAP_INIT\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VIA_DEC_FUTEX\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VIA_DMA_INIT\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VIA_CMDBUFFER\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VIA_FLUSH\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VIA_PCICMD\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VIA_CMDBUF_SIZE\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VIA_WAIT_IRQ\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VIA_DMA_BLIT\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VIA_BLIT_SYNC\00", [18 x i8] zeroinitializer }, align 32
@via_ioctls = dso_local constant { [16 x %struct.drm_ioctl_desc], [64 x i8] } { [16 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1072405440, i32 1, ptr @via_mem_alloc, ptr @.str }, %struct.drm_ioctl_desc { i32 1075078209, i32 1, ptr @via_mem_free, ptr @.str.1 }, %struct.drm_ioctl_desc { i32 -1073191870, i32 3, ptr @via_agp_init, ptr @.str.2 }, %struct.drm_ioctl_desc { i32 -1073191869, i32 3, ptr @via_fb_init, ptr @.str.3 }, %struct.drm_ioctl_desc { i32 -1072405436, i32 3, ptr @via_map_init, ptr @.str.4 }, %struct.drm_ioctl_desc { i32 1074816069, i32 1, ptr @via_decoder_futex, ptr @.str.5 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667577, i32 1, ptr @via_dma_init, ptr @.str.6 }, %struct.drm_ioctl_desc { i32 1074291784, i32 1, ptr @via_cmdbuffer, ptr @.str.7 }, %struct.drm_ioctl_desc { i32 25673, i32 1, ptr @via_flush_ioctl, ptr @.str.8 }, %struct.drm_ioctl_desc { i32 1074291786, i32 1, ptr @via_pci_cmdbuffer, ptr @.str.9 }, %struct.drm_ioctl_desc { i32 -1072929717, i32 1, ptr @via_cmdbuf_size, ptr @.str.10 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667571, i32 1, ptr @via_wait_irq, ptr @.str.11 }, %struct.drm_ioctl_desc { i32 1076388942, i32 1, ptr @via_dma_blit, ptr @.str.12 }, %struct.drm_ioctl_desc { i32 1074291791, i32 1, ptr @via_dma_blit_sync, ptr @.str.13 }], [64 x i8] zeroinitializer }, align 32
@via_max_ioctl = dso_local global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"via_cmdbuf_wait timed out hw %x cur_addr %x next_addr %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Paused at incorrect address. 0x%08x, 0x%08x 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"via_dma_init called before via_map_init\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"called again without calling cleanup\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"called with no agp memory available\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AGP DMA is not supported on this chip\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"can not ioremap virtual address for ring buffer\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s called without lock held, held  %d owner %p %p\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.via_cmdbuffer = private unnamed_addr constant [14 x i8] c"via_cmdbuffer\00", align 1
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"buf %p size %lu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"called without initializing AGP ring buffer.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"via_cmdbuf_jump failed\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.via_flush_ioctl = private unnamed_addr constant [16 x i8] c"via_flush_ioctl\00", align 1
@__func__.via_pci_cmdbuffer = private unnamed_addr constant [18 x i8] c"via_pci_cmdbuffer\00", align 1
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__func__.via_cmdbuf_size = private unnamed_addr constant [16 x i8] c"via_cmdbuf_size\00", align 1
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VIA_CMDBUF_SPACE timed out.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VIA_CMDBUF_LAG timed out.\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 728, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 729, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 730, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 731, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 732, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 733, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 734, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 735, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 736, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 737, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 738, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 739, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 740, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 741, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"via_ioctls\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 727, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"via_max_ioctl\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 744, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 130, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 453, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 184, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 189, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 194, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 199, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 213, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 339, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 341, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 275, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 230, i32 6 }
@___asan_gen_.114 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 214, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 156, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 611, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 684, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 704, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [33 x i8] c"../drivers/gpu/drm/via/via_dma.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 715, i32 4 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @via_ioctls, ptr @via_max_ioctl, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_ioctls to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_max_ioctl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_dma_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %pause_addr_lo.i.i = alloca i32, align 4
  %pause_addr_hi.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %virtual_start = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %virtual_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virtual_start, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end7_crit_edge, label %if.then3

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then3:                                         ; preds = %if.then
  %ring = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pause_addr_lo.i.i) #5
  %4 = ptrtoint ptr %pause_addr_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pause_addr_lo.i.i, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pause_addr_hi.i.i) #5
  %5 = ptrtoint ptr %pause_addr_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %pause_addr_hi.i.i, align 4, !annotation !84
  %6 = call fastcc ptr @via_align_cmd(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %pause_addr_hi.i.i, ptr noundef nonnull %pause_addr_lo.i.i, i32 noundef 0) #5
  %7 = ptrtoint ptr %pause_addr_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pause_addr_hi.i.i, align 4
  %9 = ptrtoint ptr %pause_addr_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pause_addr_lo.i.i, align 4
  tail call fastcc void @via_hook_segment(ptr noundef nonnull %1, i32 noundef %8, i32 noundef %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pause_addr_hi.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pause_addr_lo.i.i) #5
  %mmio.i.i.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 3
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %land.rhs.i.i.while.cond.i.i_crit_edge, %if.then3
  %count.0.i.i = phi i32 [ 10000000, %if.then3 ], [ %dec.i.i, %land.rhs.i.i.while.cond.i.i_crit_edge ]
  %11 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i.i, align 4
  %handle.i.i.i = getelementptr inbounds %struct.drm_local_map, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handle.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 1024
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %16 = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %while.end.i.i

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %dec.i.i = add nsw i32 %count.0.i.i, -1
  %tobool1.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.via_cmdbuf_reset.exit_crit_edge, label %land.rhs.i.i.while.cond.i.i_crit_edge

land.rhs.i.i.while.cond.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i

land.rhs.i.i.via_cmdbuf_reset.exit_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_cmdbuf_reset.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i.i)
  %tobool3.not19.i.i = icmp eq i32 %count.0.i.i, 0
  br i1 %tobool3.not19.i.i, label %while.end.i.i.via_cmdbuf_reset.exit_crit_edge, label %while.end.i.i.land.rhs4.i.i_crit_edge

while.end.i.i.land.rhs4.i.i_crit_edge:            ; preds = %while.end.i.i
  br label %land.rhs4.i.i

while.end.i.i.via_cmdbuf_reset.exit_crit_edge:    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_cmdbuf_reset.exit

land.rhs4.i.i:                                    ; preds = %land.rhs4.i.i.land.rhs4.i.i_crit_edge, %while.end.i.i.land.rhs4.i.i_crit_edge
  %count.220.i.i = phi i32 [ %dec10.i.i, %land.rhs4.i.i.land.rhs4.i.i_crit_edge ], [ %count.0.i.i, %while.end.i.i.land.rhs4.i.i_crit_edge ]
  %17 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i.i, align 4
  %handle.i17.i.i = getelementptr inbounds %struct.drm_local_map, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %handle.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handle.i17.i.i, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %20, i32 1024
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i.i) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %22 = and i32 %21, -2097152000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool7.not.i.i = icmp eq i32 %22, 0
  %dec10.i.i = add nsw i32 %count.220.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec10.i.i)
  %tobool3.not.i.i = icmp eq i32 %dec10.i.i, 0
  %or.cond.i = select i1 %tobool7.not.i.i, i1 true, i1 %tobool3.not.i.i
  br i1 %or.cond.i, label %land.rhs4.i.i.via_cmdbuf_reset.exit_crit_edge, label %land.rhs4.i.i.land.rhs4.i.i_crit_edge

land.rhs4.i.i.land.rhs4.i.i_crit_edge:            ; preds = %land.rhs4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs4.i.i

land.rhs4.i.i.via_cmdbuf_reset.exit_crit_edge:    ; preds = %land.rhs4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_cmdbuf_reset.exit

via_cmdbuf_reset.exit:                            ; preds = %land.rhs4.i.i.via_cmdbuf_reset.exit_crit_edge, %while.end.i.i.via_cmdbuf_reset.exit_crit_edge, %land.rhs.i.i.via_cmdbuf_reset.exit_crit_edge
  tail call void @drm_legacy_ioremapfree(ptr noundef %ring, ptr noundef %dev) #5
  %23 = ptrtoint ptr %virtual_start to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %virtual_start, align 4
  br label %if.end7

if.end7:                                          ; preds = %via_cmdbuf_reset.exit, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_ioremapfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_driver_dma_quiescent(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %mmio.i.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %entry
  %count.0.i = phi i32 [ 10000000, %entry ], [ %dec.i, %land.rhs.i.while.cond.i_crit_edge ]
  %2 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i.i, align 4
  %handle.i.i = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 1024
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %7 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %while.end.i

land.rhs.i:                                       ; preds = %while.cond.i
  %dec.i = add nsw i32 %count.0.i, -1
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i.via_wait_idle.exit.thread_crit_edge, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

land.rhs.i.via_wait_idle.exit.thread_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_wait_idle.exit.thread

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i)
  %tobool3.not19.i = icmp eq i32 %count.0.i, 0
  br i1 %tobool3.not19.i, label %while.end.i.via_wait_idle.exit.thread_crit_edge, label %while.end.i.land.rhs4.i_crit_edge

while.end.i.land.rhs4.i_crit_edge:                ; preds = %while.end.i
  br label %land.rhs4.i

while.end.i.via_wait_idle.exit.thread_crit_edge:  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_wait_idle.exit.thread

land.rhs4.i:                                      ; preds = %while.body9.i.land.rhs4.i_crit_edge, %while.end.i.land.rhs4.i_crit_edge
  %count.220.i = phi i32 [ %dec10.i, %while.body9.i.land.rhs4.i_crit_edge ], [ %count.0.i, %while.end.i.land.rhs4.i_crit_edge ]
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 4
  %handle.i17.i = getelementptr inbounds %struct.drm_local_map, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %handle.i17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle.i17.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %11, i32 1024
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %13 = and i32 %12, -2097152000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not.i = icmp eq i32 %13, 0
  br i1 %tobool7.not.i, label %via_wait_idle.exit, label %while.body9.i

while.body9.i:                                    ; preds = %land.rhs4.i
  %dec10.i = add nsw i32 %count.220.i, -1
  %tobool3.not.i = icmp eq i32 %dec10.i, 0
  br i1 %tobool3.not.i, label %while.body9.i.via_wait_idle.exit.thread_crit_edge, label %while.body9.i.land.rhs4.i_crit_edge

while.body9.i.land.rhs4.i_crit_edge:              ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs4.i

while.body9.i.via_wait_idle.exit.thread_crit_edge: ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_wait_idle.exit.thread

via_wait_idle.exit:                               ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.220.i)
  %tobool.not = icmp eq i32 %count.220.i, 0
  br i1 %tobool.not, label %via_wait_idle.exit.via_wait_idle.exit.thread_crit_edge, label %via_wait_idle.exit._crit_edge

via_wait_idle.exit._crit_edge:                    ; preds = %via_wait_idle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %14

via_wait_idle.exit.via_wait_idle.exit.thread_crit_edge: ; preds = %via_wait_idle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_wait_idle.exit.thread

via_wait_idle.exit.thread:                        ; preds = %via_wait_idle.exit.via_wait_idle.exit.thread_crit_edge, %while.body9.i.via_wait_idle.exit.thread_crit_edge, %while.end.i.via_wait_idle.exit.thread_crit_edge, %land.rhs.i.via_wait_idle.exit.thread_crit_edge
  br label %14

14:                                               ; preds = %via_wait_idle.exit.thread, %via_wait_idle.exit._crit_edge
  %15 = phi i32 [ -16, %via_wait_idle.exit.thread ], [ 0, %via_wait_idle.exit._crit_edge ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @via_mem_alloc(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @via_mem_free(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @via_agp_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @via_fb_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @via_map_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @via_decoder_futex(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_dma_init(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call, label %if.else, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.if.then.i_crit_edge, label %lor.lhs.false.i

if.else.if.then.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.else
  %mmio.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.else.if.then.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #5
  br label %sw.epilog

if.end.i:                                         ; preds = %lor.lhs.false.i
  %ring.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 13
  %virtual_start.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %virtual_start.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %virtual_start.i, align 4
  %cmp.not.i = icmp eq ptr %8, null
  br i1 %cmp.not.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #5
  br label %sw.epilog

if.end3.i:                                        ; preds = %if.end.i
  %agp.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 38
  %9 = ptrtoint ptr %agp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %agp.i, align 4
  %tobool4.not.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i, label %if.end3.i.if.then8.i_crit_edge, label %lor.lhs.false5.i

if.end3.i.if.then8.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.i

lor.lhs.false5.i:                                 ; preds = %if.end3.i
  %base.i = getelementptr inbounds %struct.drm_agp_head, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not.i = icmp eq i32 %12, 0
  br i1 %tobool7.not.i, label %lor.lhs.false5.i.if.then8.i_crit_edge, label %if.end9.i

lor.lhs.false5.i.if.then8.i_crit_edge:            ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.i

if.then8.i:                                       ; preds = %lor.lhs.false5.i.if.then8.i_crit_edge, %if.end3.i.if.then8.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #5
  br label %sw.epilog

if.end9.i:                                        ; preds = %lor.lhs.false5.i
  %chipset.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chipset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp10.i = icmp eq i32 %14, 2
  br i1 %cmp10.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #5
  br label %sw.epilog

if.end12.i:                                       ; preds = %if.end9.i
  %offset.i = getelementptr inbounds %struct._drm_via_dma_init, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %16, %12
  %17 = ptrtoint ptr %ring.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i, ptr %ring.i, align 4
  %size.i = getelementptr inbounds %struct._drm_via_dma_init, ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %size19.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 13, i32 0, i32 1
  %20 = ptrtoint ptr %size19.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %size19.i, align 4
  %type.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 13, i32 0, i32 2
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %type.i, align 4
  %flags.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 13, i32 0, i32 3
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %flags.i, align 4
  %mtrr.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 13, i32 0, i32 5
  %23 = ptrtoint ptr %mtrr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %mtrr.i, align 4
  tail call void @drm_legacy_ioremap(ptr noundef %ring.i, ptr noundef %dev) #5
  %handle.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 13, i32 0, i32 4
  %24 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle.i, align 4
  %cmp30.i = icmp eq ptr %25, null
  br i1 %cmp30.i, label %if.then31.i, label %if.end32.i

if.then31.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @via_dma_cleanup(ptr noundef %dev) #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #5
  br label %sw.epilog

if.end32.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %virtual_start.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %virtual_start.i, align 4
  %dma_ptr.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %dma_ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %dma_ptr.i, align 8
  %dma_low.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %dma_low.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %dma_low.i, align 4
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i, align 4
  %dma_high.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %dma_high.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dma_high.i, align 8
  %32 = load i32, ptr %size.i, align 4
  %dma_wrap.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 10
  %33 = ptrtoint ptr %dma_wrap.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %dma_wrap.i, align 8
  %34 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset.i, align 4
  %dma_offset.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 9
  %36 = ptrtoint ptr %dma_offset.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %dma_offset.i, align 4
  %last_pause_ptr.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 11
  %37 = ptrtoint ptr %last_pause_ptr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %last_pause_ptr.i, align 4
  %38 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i, align 4
  %handle44.i = getelementptr inbounds %struct.drm_local_map, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %handle44.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %handle44.i, align 4
  %reg_pause_addr.i = getelementptr inbounds %struct._drm_via_dma_init, ptr %data, i32 0, i32 3
  %42 = ptrtoint ptr %reg_pause_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg_pause_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 %43
  %hw_addr_ptr.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 12
  %44 = ptrtoint ptr %hw_addr_ptr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i, ptr %hw_addr_ptr.i, align 8
  tail call fastcc void @via_cmdbuf_start(ptr noundef nonnull %1) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %call3 = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call3, label %if.else5, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else5:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @via_dma_cleanup(ptr noundef %dev)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %virtual_start = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 13, i32 1
  %45 = ptrtoint ptr %virtual_start to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %virtual_start, align 4
  %cmp.not = icmp eq ptr %46, null
  %cond = select i1 %cmp.not, i32 -14, i32 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %if.else5, %sw.bb2.sw.epilog_crit_edge, %if.end32.i, %if.then31.i, %if.then11.i, %if.then8.i, %if.then2.i, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %retcode.0 = phi i32 [ %cond, %sw.bb8 ], [ 0, %if.else5 ], [ -1, %sw.bb.sw.epilog_crit_edge ], [ -1, %sw.bb2.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ], [ -14, %if.then2.i ], [ -22, %if.then11.i ], [ -12, %if.then31.i ], [ 0, %if.end32.i ], [ -14, %if.then8.i ], [ -14, %if.then.i ]
  ret i32 %retcode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_cmdbuffer(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #0 align 64 {
entry:
  %pause_addr_lo.i.i.i = alloca i32, align 4
  %pause_addr_hi.i.i.i = alloca i32, align 4
  %pause_addr_lo.i.i.i.i = alloca i32, align 4
  %pause_addr_hi.i.i.i.i = alloca i32, align 4
  %jump_addr_lo.i.i.i.i = alloca i32, align 4
  %jump_addr_hi.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %7, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %3, align 4
  %and9 = and i32 %9, -2147483648
  %file_priv12 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv12, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.via_cmdbuffer, i32 noundef %and9, ptr noundef %11, ptr noundef %file_priv) #5
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %size = getelementptr inbounds %struct._drm_via_cmdbuffer, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef %13, i32 noundef %15) #5
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %16 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_private.i, align 4
  %virtual_start.i = getelementptr inbounds %struct.drm_via_private, ptr %17, i32 0, i32 13, i32 1
  %18 = ptrtoint ptr %virtual_start.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %virtual_start.i, align 4
  %cmp.i = icmp eq ptr %19, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23) #5
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000, i32 %21)
  %cmp1.i = icmp ugt i32 %21, 60000
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %pci_buf.i = getelementptr inbounds %struct.drm_via_private, ptr %17, i32 0, i32 19
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  tail call void @__check_object_size(ptr noundef %pci_buf.i, i32 noundef %21, i1 noundef zeroext false) #5
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #5
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i, label %if.end3.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end3.i.if.end.i.i.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end3.i
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 %21, i32 -1226833920) #8, !srcloc !87
  %asmresult.i.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !88

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pci_buf.i, i32 noundef %21) #5
  %25 = tail call i32 @llvm.read_register.i32(metadata !74) #5
  %and.i.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !89
  %and.i.i.i.i.i = and i32 %27, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %pci_buf.i, ptr noundef %23, i32 noundef %21) #5
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end3.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %21, %if.end3.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %21, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end6.i, label %if.then11.i.i.i, !prof !88

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i.i = sub i32 %21, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %pci_buf.i, i32 %sub.i.i.i
  %28 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i.i.i
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size, align 4
  %call10.i = tail call i32 @via_verify_command_stream(ptr noundef %pci_buf.i, i32 noundef %30, ptr noundef %dev, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.i:                                       ; preds = %if.end6.i
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %32)
  %cmp15.i = icmp ult i32 %32, 256
  %spec.select.i = select i1 %cmp15.i, i32 258, i32 %32
  %dma_low.i.i = getelementptr inbounds %struct.drm_via_private, ptr %17, i32 0, i32 7
  %33 = ptrtoint ptr %dma_low.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_low.i.i, align 4
  %add.i.i = add i32 %34, 1024
  %add1.i.i = add i32 %add.i.i, %spec.select.i
  %dma_high.i.i = getelementptr inbounds %struct.drm_via_private, ptr %17, i32 0, i32 8
  %35 = ptrtoint ptr %dma_high.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_high.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %36)
  %cmp.i.i = icmp ugt i32 %add1.i.i, %36
  br i1 %cmp.i.i, label %if.then.i52.i, label %if.end13.i.if.end.i.i_crit_edge

if.end13.i.if.end.i.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i52.i:                                    ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pause_addr_lo.i.i.i.i) #5
  %37 = ptrtoint ptr %pause_addr_lo.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %pause_addr_lo.i.i.i.i, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pause_addr_hi.i.i.i.i) #5
  %38 = ptrtoint ptr %pause_addr_hi.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %pause_addr_hi.i.i.i.i, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jump_addr_lo.i.i.i.i) #5
  %39 = ptrtoint ptr %jump_addr_lo.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %jump_addr_lo.i.i.i.i, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jump_addr_hi.i.i.i.i) #5
  %40 = ptrtoint ptr %jump_addr_hi.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %jump_addr_hi.i.i.i.i, align 4, !annotation !84
  %41 = call fastcc ptr @via_align_cmd(ptr noundef %17, i32 noundef 1, ptr noundef nonnull %jump_addr_hi.i.i.i.i, ptr noundef nonnull %jump_addr_lo.i.i.i.i, i32 noundef 0) #5
  %42 = ptrtoint ptr %dma_low.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_low.i.i, align 4
  %dma_wrap.i.i.i.i = getelementptr inbounds %struct.drm_via_private, ptr %17, i32 0, i32 10
  %44 = ptrtoint ptr %dma_wrap.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %dma_wrap.i.i.i.i, align 8
  store i32 0, ptr %dma_low.i.i, align 4
  %dma_offset.i.i.i.i.i = getelementptr inbounds %struct.drm_via_private, ptr %17, i32 0, i32 9
  %45 = ptrtoint ptr %dma_offset.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_offset.i.i.i.i.i, align 4
  %agpAddr.i.i.i.i.i = getelementptr inbounds %struct.drm_via_private, ptr %17, i32 0, i32 4
  %47 = ptrtoint ptr %agpAddr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %agpAddr.i.i.i.i.i, align 8
  %hw_addr_ptr1.i.i.i.i.i = getelementptr inbounds %struct.drm_via_private, ptr %17, i32 0, i32 12
  %49 = ptrtoint ptr %hw_addr_ptr1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_addr_ptr1.i.i.i.i.i, align 8
  %51 = add i32 %48, %46
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %50, align 4
  %sub31.i.i.i.i.i = sub i32 %53, %51
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.cond.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, %if.then.i52.i
  %dec33.i.i.i.i.i = phi i32 [ 999999, %if.then.i52.i ], [ %dec.i.i.i.i.i, %do.cond.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge ]
  %sub32.i.i.i.i.i = phi i32 [ %sub31.i.i.i.i.i, %if.then.i52.i ], [ %sub.i.i.i.i.i, %do.cond.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge ]
  %54 = add i32 %sub32.i.i.i.i.i, -524545
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524544, i32 %54)
  %55 = icmp ult i32 %54, -524544
  br i1 %55, label %if.end.i.i.i.i.i.via_cmdbuf_rewind.exit.i.i_crit_edge, label %do.cond.i.i.i.i.i

if.end.i.i.i.i.i.via_cmdbuf_rewind.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_cmdbuf_rewind.exit.i.i

do.cond.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  tail call void @msleep(i32 noundef 1) #5
  %56 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %50, align 4
  %sub.i.i.i.i.i = sub i32 %57, %51
  %dec.i.i.i.i.i = add nsw i32 %dec33.i.i.i.i.i, -1
  %cmp.i.i.i.i.i = icmp eq i32 %dec33.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i53.i, label %do.cond.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge

do.cond.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge:     ; preds = %do.cond.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i.i.i

if.then.i.i.i53.i:                                ; preds = %do.cond.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %sub.i.i.i.i.i, i32 noundef 0, i32 noundef 524544) #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27) #5
  br label %via_cmdbuf_rewind.exit.i.i

via_cmdbuf_rewind.exit.i.i:                       ; preds = %if.then.i.i.i53.i, %if.end.i.i.i.i.i.via_cmdbuf_rewind.exit.i.i_crit_edge
  %dma_ptr.i.i.i.i.i.i = getelementptr inbounds %struct.drm_via_private, ptr %17, i32 0, i32 6
  %58 = ptrtoint ptr %dma_ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dma_ptr.i.i.i.i.i.i, align 8
  %60 = ptrtoint ptr %dma_low.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_low.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %59, i32 %61
  %62 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -268435453, ptr %add.ptr.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i.i.i, i32 1
  %63 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %add.ptr.i.i.i.i.i, align 4
  %add.ptr1.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i.i.i, i32 2
  %64 = load i32, ptr %dma_low.i.i, align 4
  %add.i.i.i.i.i = add i32 %64, 8
  store i32 %add.i.i.i.i.i, ptr %dma_low.i.i, align 4
  %65 = ptrtoint ptr %add.ptr1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -268435452, ptr %add.ptr1.i.i.i.i.i, align 4
  %add.ptr2.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i.i.i, i32 3
  %66 = ptrtoint ptr %add.ptr2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %add.ptr2.i.i.i.i.i, align 4
  %add.ptr3.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i.i.i, i32 4
  %67 = load i32, ptr %dma_low.i.i, align 4
  %add5.i.i.i.i.i = add i32 %67, 8
  store i32 %add5.i.i.i.i.i, ptr %dma_low.i.i, align 4
  %68 = ptrtoint ptr %add.ptr3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -268435456, ptr %add.ptr3.i.i.i.i.i, align 4
  %add.ptr6.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i.i.i, i32 5
  %69 = ptrtoint ptr %add.ptr6.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1442832383, ptr %add.ptr6.i.i.i.i.i, align 4
  %70 = load i32, ptr %dma_low.i.i, align 4
  %add9.i.i.i.i.i = add i32 %70, 8
  store i32 %add9.i.i.i.i.i, ptr %dma_low.i.i, align 4
  %71 = load ptr, ptr %dma_ptr.i.i.i.i.i.i, align 8
  %add.ptr.i.i33.i.i.i.i = getelementptr i8, ptr %71, i32 %add9.i.i.i.i.i
  %72 = ptrtoint ptr %add.ptr.i.i33.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -268435453, ptr %add.ptr.i.i33.i.i.i.i, align 4
  %add.ptr.i34.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i33.i.i.i.i, i32 1
  %73 = ptrtoint ptr %add.ptr.i34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %add.ptr.i34.i.i.i.i, align 4
  %add.ptr1.i35.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i33.i.i.i.i, i32 2
  %74 = load i32, ptr %dma_low.i.i, align 4
  %add.i36.i.i.i.i = add i32 %74, 8
  store i32 %add.i36.i.i.i.i, ptr %dma_low.i.i, align 4
  %75 = ptrtoint ptr %add.ptr1.i35.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -268435452, ptr %add.ptr1.i35.i.i.i.i, align 4
  %add.ptr2.i37.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i33.i.i.i.i, i32 3
  %76 = ptrtoint ptr %add.ptr2.i37.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %add.ptr2.i37.i.i.i.i, align 4
  %add.ptr3.i38.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i33.i.i.i.i, i32 4
  %77 = load i32, ptr %dma_low.i.i, align 4
  %add5.i39.i.i.i.i = add i32 %77, 8
  store i32 %add5.i39.i.i.i.i, ptr %dma_low.i.i, align 4
  %78 = ptrtoint ptr %add.ptr3.i38.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -268435456, ptr %add.ptr3.i38.i.i.i.i, align 4
  %add.ptr6.i40.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i33.i.i.i.i, i32 5
  %79 = ptrtoint ptr %add.ptr6.i40.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1442832383, ptr %add.ptr6.i40.i.i.i.i, align 4
  %80 = load i32, ptr %dma_low.i.i, align 4
  %add9.i41.i.i.i.i = add i32 %80, 8
  store i32 %add9.i41.i.i.i.i, ptr %dma_low.i.i, align 4
  %call3.i.i.i.i = call fastcc ptr @via_align_cmd(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %pause_addr_hi.i.i.i.i, ptr noundef nonnull %pause_addr_lo.i.i.i.i, i32 noundef 0) #5
  %add.ptr.i.i.i.i = getelementptr i32, ptr %call3.i.i.i.i, i32 -1
  %81 = call fastcc ptr @via_align_cmd(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %pause_addr_hi.i.i.i.i, ptr noundef nonnull %pause_addr_lo.i.i.i.i, i32 noundef 0) #5
  %82 = ptrtoint ptr %pause_addr_lo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pause_addr_lo.i.i.i.i, align 4
  %84 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 %83, ptr %add.ptr.i.i.i.i, align 4
  %85 = ptrtoint ptr %dma_low.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dma_low.i.i, align 4
  %call6.i.i.i.i = call fastcc ptr @via_align_cmd(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %pause_addr_hi.i.i.i.i, ptr noundef nonnull %pause_addr_lo.i.i.i.i, i32 noundef 0) #5
  %add.ptr7.i.i.i.i = getelementptr i32, ptr %call6.i.i.i.i, i32 -1
  %87 = call fastcc ptr @via_align_cmd(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %pause_addr_hi.i.i.i.i, ptr noundef nonnull %pause_addr_lo.i.i.i.i, i32 noundef 0) #5
  %88 = ptrtoint ptr %pause_addr_lo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pause_addr_lo.i.i.i.i, align 4
  %90 = ptrtoint ptr %add.ptr7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 %89, ptr %add.ptr7.i.i.i.i, align 4
  %91 = ptrtoint ptr %dma_low.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dma_low.i.i, align 4
  store i32 %86, ptr %dma_low.i.i, align 4
  %93 = ptrtoint ptr %jump_addr_hi.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %jump_addr_hi.i.i.i.i, align 4
  %95 = ptrtoint ptr %jump_addr_lo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %jump_addr_lo.i.i.i.i, align 4
  tail call fastcc void @via_hook_segment(ptr noundef %17, i32 noundef %94, i32 noundef %96) #5
  %97 = ptrtoint ptr %dma_low.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %92, ptr %dma_low.i.i, align 4
  %98 = ptrtoint ptr %pause_addr_hi.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pause_addr_hi.i.i.i.i, align 4
  tail call fastcc void @via_hook_segment(ptr noundef %17, i32 noundef %99, i32 noundef %89) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jump_addr_hi.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jump_addr_lo.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pause_addr_hi.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pause_addr_lo.i.i.i.i) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %via_cmdbuf_rewind.exit.i.i, %if.end13.i.if.end.i.i_crit_edge
  %dma_offset.i.i.i = getelementptr inbounds %struct.drm_via_private, ptr %17, i32 0, i32 9
  %100 = ptrtoint ptr %dma_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dma_offset.i.i.i, align 4
  %agpAddr.i.i.i = getelementptr inbounds %struct.drm_via_private, ptr %17, i32 0, i32 4
  %102 = ptrtoint ptr %agpAddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %agpAddr.i.i.i, align 8
  %hw_addr_ptr1.i.i.i = getelementptr inbounds %struct.drm_via_private, ptr %17, i32 0, i32 12
  %104 = ptrtoint ptr %hw_addr_ptr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw_addr_ptr1.i.i.i, align 8
  %106 = ptrtoint ptr %dma_low.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dma_low.i.i, align 4
  %add2.i.i.i = add i32 %spec.select.i, 524288
  %add3.i.i.i = add i32 %add2.i.i.i, %107
  %108 = add i32 %103, %101
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %105, align 4
  %sub31.i.i.i = sub i32 %110, %108
  br label %if.end.i.i54.i

if.end.i.i54.i:                                   ; preds = %do.cond.i.i.i.if.end.i.i54.i_crit_edge, %if.end.i.i
  %dec33.i.i.i = phi i32 [ 999999, %if.end.i.i ], [ %dec.i.i.i, %do.cond.i.i.i.if.end.i.i54.i_crit_edge ]
  %sub32.i.i.i = phi i32 [ %sub31.i.i.i, %if.end.i.i ], [ %sub.i.i55.i, %do.cond.i.i.i.if.end.i.i54.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %sub32.i.i.i)
  %cmp4.i.i.i = icmp uge i32 %107, %sub32.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i.i, i32 %sub32.i.i.i)
  %cmp5.not.i.i.i = icmp ult i32 %add3.i.i.i, %sub32.i.i.i
  %or.cond.i.i.i = or i1 %cmp4.i.i.i, %cmp5.not.i.i.i
  br i1 %or.cond.i.i.i, label %via_check_dma.exit.i, label %do.cond.i.i.i

do.cond.i.i.i:                                    ; preds = %if.end.i.i54.i
  tail call void @msleep(i32 noundef 1) #5
  %111 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %105, align 4
  %sub.i.i55.i = sub i32 %112, %108
  %dec.i.i.i = add nsw i32 %dec33.i.i.i, -1
  %cmp.i.i56.i = icmp eq i32 %dec33.i.i.i, 0
  br i1 %cmp.i.i56.i, label %via_check_dma.exit.thread.i, label %do.cond.i.i.i.if.end.i.i54.i_crit_edge

do.cond.i.i.i.if.end.i.i54.i_crit_edge:           ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i54.i

via_check_dma.exit.thread.i:                      ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %sub.i.i55.i, i32 noundef %107, i32 noundef %add3.i.i.i) #5
  br label %cleanup

via_check_dma.exit.i:                             ; preds = %if.end.i.i54.i
  %dma_ptr.i.i = getelementptr inbounds %struct.drm_via_private, ptr %17, i32 0, i32 6
  %113 = ptrtoint ptr %dma_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dma_ptr.i.i, align 8
  %115 = ptrtoint ptr %dma_low.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dma_low.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %114, i32 %116
  %cmp18.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp18.i, label %via_check_dma.exit.i.cleanup_crit_edge, label %if.end20.i

via_check_dma.exit.i.cleanup_crit_edge:           ; preds = %via_check_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20.i:                                       ; preds = %via_check_dma.exit.i
  %117 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %size, align 4
  %119 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %pci_buf.i, i32 %118)
  %120 = load i32, ptr %size, align 4
  %121 = ptrtoint ptr %dma_low.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %dma_low.i.i, align 4
  %add.i = add i32 %122, %120
  store i32 %add.i, ptr %dma_low.i.i, align 4
  %123 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %123)
  %cmp26.i = icmp ult i32 %123, 256
  br i1 %cmp26.i, label %if.then27.i, label %if.end20.i.if.end29.i_crit_edge

if.end20.i.if.end29.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub nuw nsw i32 256, %123
  %shr.i = lshr i32 %sub.i, 3
  tail call fastcc void @via_pad_cache(ptr noundef %17, i32 noundef %shr.i) #5
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.end20.i.if.end29.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pause_addr_lo.i.i.i) #5
  %124 = ptrtoint ptr %pause_addr_lo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -1, ptr %pause_addr_lo.i.i.i, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pause_addr_hi.i.i.i) #5
  %125 = ptrtoint ptr %pause_addr_hi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -1, ptr %pause_addr_hi.i.i.i, align 4, !annotation !84
  %126 = call fastcc ptr @via_align_cmd(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %pause_addr_hi.i.i.i, ptr noundef nonnull %pause_addr_lo.i.i.i, i32 noundef 0) #5
  %127 = ptrtoint ptr %pause_addr_hi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pause_addr_hi.i.i.i, align 4
  %129 = ptrtoint ptr %pause_addr_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pause_addr_lo.i.i.i, align 4
  tail call fastcc void @via_hook_segment(ptr noundef %17, i32 noundef %128, i32 noundef %130) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pause_addr_hi.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pause_addr_lo.i.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end29.i, %via_check_dma.exit.i.cleanup_crit_edge, %via_check_dma.exit.thread.i, %if.end6.i.cleanup_crit_edge, %if.then11.i.i.i, %if.end.i.cleanup_crit_edge, %if.then.i, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -14, %if.then.i ], [ 0, %if.end29.i ], [ -12, %if.end.i.cleanup_crit_edge ], [ %call10.i, %if.end6.i.cleanup_crit_edge ], [ -11, %via_check_dma.exit.i.cleanup_crit_edge ], [ -11, %via_check_dma.exit.thread.i ], [ -14, %if.then11.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_flush_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %7, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %3, align 4
  %and9 = and i32 %9, -2147483648
  %file_priv12 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv12, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.via_flush_ioctl, i32 noundef %and9, ptr noundef %11, ptr noundef %file_priv) #5
  br label %return

do.end:                                           ; preds = %lor.lhs.false
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %12 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_private.i, align 4
  %mmio.i.i.i = getelementptr inbounds %struct.drm_via_private, ptr %13, i32 0, i32 3
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %land.rhs.i.i.while.cond.i.i_crit_edge, %do.end
  %count.0.i.i = phi i32 [ 10000000, %do.end ], [ %dec.i.i, %land.rhs.i.i.while.cond.i.i_crit_edge ]
  %14 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i.i, align 4
  %handle.i.i.i = getelementptr inbounds %struct.drm_local_map, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 1024
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %19 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %while.end.i.i

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %dec.i.i = add nsw i32 %count.0.i.i, -1
  %tobool1.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.via_wait_idle.exit.thread.i_crit_edge, label %land.rhs.i.i.while.cond.i.i_crit_edge

land.rhs.i.i.while.cond.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i

land.rhs.i.i.via_wait_idle.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_wait_idle.exit.thread.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i.i)
  %tobool3.not19.i.i = icmp eq i32 %count.0.i.i, 0
  br i1 %tobool3.not19.i.i, label %while.end.i.i.via_wait_idle.exit.thread.i_crit_edge, label %while.end.i.i.land.rhs4.i.i_crit_edge

while.end.i.i.land.rhs4.i.i_crit_edge:            ; preds = %while.end.i.i
  br label %land.rhs4.i.i

while.end.i.i.via_wait_idle.exit.thread.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_wait_idle.exit.thread.i

land.rhs4.i.i:                                    ; preds = %while.body9.i.i.land.rhs4.i.i_crit_edge, %while.end.i.i.land.rhs4.i.i_crit_edge
  %count.220.i.i = phi i32 [ %dec10.i.i, %while.body9.i.i.land.rhs4.i.i_crit_edge ], [ %count.0.i.i, %while.end.i.i.land.rhs4.i.i_crit_edge ]
  %20 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i.i, align 4
  %handle.i17.i.i = getelementptr inbounds %struct.drm_local_map, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %handle.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle.i17.i.i, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %23, i32 1024
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i.i) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %25 = and i32 %24, -2097152000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool7.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool7.not.i.i, label %via_wait_idle.exit.i, label %while.body9.i.i

while.body9.i.i:                                  ; preds = %land.rhs4.i.i
  %dec10.i.i = add nsw i32 %count.220.i.i, -1
  %tobool3.not.i.i = icmp eq i32 %dec10.i.i, 0
  br i1 %tobool3.not.i.i, label %while.body9.i.i.via_wait_idle.exit.thread.i_crit_edge, label %while.body9.i.i.land.rhs4.i.i_crit_edge

while.body9.i.i.land.rhs4.i.i_crit_edge:          ; preds = %while.body9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs4.i.i

while.body9.i.i.via_wait_idle.exit.thread.i_crit_edge: ; preds = %while.body9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_wait_idle.exit.thread.i

via_wait_idle.exit.i:                             ; preds = %land.rhs4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.220.i.i)
  %tobool.not.i = icmp eq i32 %count.220.i.i, 0
  br i1 %tobool.not.i, label %via_wait_idle.exit.i.via_wait_idle.exit.thread.i_crit_edge, label %via_wait_idle.exit.i.return_crit_edge

via_wait_idle.exit.i.return_crit_edge:            ; preds = %via_wait_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

via_wait_idle.exit.i.via_wait_idle.exit.thread.i_crit_edge: ; preds = %via_wait_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_wait_idle.exit.thread.i

via_wait_idle.exit.thread.i:                      ; preds = %via_wait_idle.exit.i.via_wait_idle.exit.thread.i_crit_edge, %while.body9.i.i.via_wait_idle.exit.thread.i_crit_edge, %while.end.i.i.via_wait_idle.exit.thread.i_crit_edge, %land.rhs.i.i.via_wait_idle.exit.thread.i_crit_edge
  br label %return

return:                                           ; preds = %via_wait_idle.exit.thread.i, %via_wait_idle.exit.i.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -16, %via_wait_idle.exit.thread.i ], [ 0, %via_wait_idle.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_pci_cmdbuffer(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %7, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %3, align 4
  %and9 = and i32 %9, -2147483648
  %file_priv12 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv12, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.via_pci_cmdbuffer, i32 noundef %and9, ptr noundef %11, ptr noundef %file_priv) #5
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %size = getelementptr inbounds %struct._drm_via_cmdbuffer, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef %13, i32 noundef %15) #5
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000, i32 %17)
  %cmp.i = icmp ugt i32 %17, 60000
  br i1 %cmp.i, label %do.end.cleanup_crit_edge, label %if.end.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %18 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_private.i, align 4
  %pci_buf.i = getelementptr inbounds %struct.drm_via_private, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  tail call void @__check_object_size(ptr noundef %pci_buf.i, i32 noundef %17, i1 noundef zeroext false) #5
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #5
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i, label %if.end.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.if.end.i.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 %17, i32 -1226833920) #8, !srcloc !87
  %asmresult.i.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !88

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pci_buf.i, i32 noundef %17) #5
  %23 = tail call i32 @llvm.read_register.i32(metadata !74) #5
  %and.i.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !89
  %and.i.i.i.i.i = and i32 %25, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %pci_buf.i, ptr noundef %21, i32 noundef %17) #5
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %17, %if.end.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %17, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end3.i, label %if.then11.i.i.i, !prof !88

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i.i = sub i32 %17, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %pci_buf.i, i32 %sub.i.i.i
  %26 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i.i.i
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 4
  %call7.i = tail call i32 @via_verify_command_stream(ptr noundef %pci_buf.i, i32 noundef %28, ptr noundef %dev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size, align 4
  %call14.i = tail call i32 @via_parse_command_stream(ptr noundef %dev, ptr noundef %pci_buf.i, i32 noundef %30) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10.i, %if.end3.i.cleanup_crit_edge, %if.then11.i.i.i, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call14.i, %if.end10.i ], [ -12, %do.end.cleanup_crit_edge ], [ %call7.i, %if.end3.i.cleanup_crit_edge ], [ -14, %if.then11.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_cmdbuf_size(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.28) #5
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %7, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %3, align 4
  %and9 = and i32 %9, -2147483648
  %file_priv12 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv12, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.via_cmdbuf_size, i32 noundef %and9, ptr noundef %11, ptr noundef %file_priv) #5
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %12 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_private, align 4
  %virtual_start = getelementptr inbounds %struct.drm_via_private, ptr %13, i32 0, i32 13, i32 1
  %14 = ptrtoint ptr %virtual_start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virtual_start, align 4
  %cmp13 = icmp eq ptr %15, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23) #5
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %size = getelementptr inbounds %struct._drm_via_cmdbuf_size, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %17, label %sw.default [
    i32 1, label %while.cond.preheader
    i32 2, label %while.cond26.preheader
  ]

while.cond26.preheader:                           ; preds = %if.end15
  %dma_offset.i67 = getelementptr inbounds %struct.drm_via_private, ptr %13, i32 0, i32 9
  %19 = ptrtoint ptr %dma_offset.i67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_offset.i67, align 4
  %agpAddr.i68 = getelementptr inbounds %struct.drm_via_private, ptr %13, i32 0, i32 4
  %21 = ptrtoint ptr %agpAddr.i68 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %agpAddr.i68, align 8
  %hw_addr_ptr.i69 = getelementptr inbounds %struct.drm_via_private, ptr %13, i32 0, i32 12
  %23 = ptrtoint ptr %hw_addr_ptr.i69 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_addr_ptr.i69, align 8
  %25 = add i32 %22, %20
  %dma_low.i71 = getelementptr inbounds %struct.drm_via_private, ptr %13, i32 0, i32 7
  %26 = ptrtoint ptr %dma_low.i71 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_low.i71, align 4
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  %dma_wrap.i = getelementptr inbounds %struct.drm_via_private, ptr %13, i32 0, i32 10
  %wait35 = getelementptr inbounds %struct._drm_via_cmdbuf_size, ptr %data, i32 0, i32 1
  br label %while.cond26

while.cond.preheader:                             ; preds = %if.end15
  %dma_offset.i = getelementptr inbounds %struct.drm_via_private, ptr %13, i32 0, i32 9
  %30 = ptrtoint ptr %dma_offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_offset.i, align 4
  %agpAddr.i = getelementptr inbounds %struct.drm_via_private, ptr %13, i32 0, i32 4
  %32 = ptrtoint ptr %agpAddr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %agpAddr.i, align 8
  %hw_addr_ptr.i = getelementptr inbounds %struct.drm_via_private, ptr %13, i32 0, i32 12
  %34 = ptrtoint ptr %hw_addr_ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_addr_ptr.i, align 8
  %36 = add i32 %33, %31
  %dma_low.i = getelementptr inbounds %struct.drm_via_private, ptr %13, i32 0, i32 7
  %37 = ptrtoint ptr %dma_low.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_low.i, align 4
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size, align 4
  %dma_high.i = getelementptr inbounds %struct.drm_via_private, ptr %13, i32 0, i32 8
  %wait = getelementptr inbounds %struct._drm_via_cmdbuf_size, ptr %data, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %count.0 = phi i32 [ %dec, %while.body.while.cond_crit_edge ], [ 1000000, %while.cond.preheader ]
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %35, align 4
  %sub.i = sub i32 %42, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %38)
  %cmp.not.i = icmp ugt i32 %sub.i, %38
  br i1 %cmp.not.i, label %while.cond.via_cmdbuf_space.exit_crit_edge, label %cond.true.i

while.cond.via_cmdbuf_space.exit_crit_edge:       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_cmdbuf_space.exit

cond.true.i:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %dma_high.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_high.i, align 8
  %add1.i = add i32 %44, %sub.i
  br label %via_cmdbuf_space.exit

via_cmdbuf_space.exit:                            ; preds = %cond.true.i, %while.cond.via_cmdbuf_space.exit_crit_edge
  %add1.pn.i = phi i32 [ %add1.i, %cond.true.i ], [ %sub.i, %while.cond.via_cmdbuf_space.exit_crit_edge ]
  %cond.i = sub i32 %add1.pn.i, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %40)
  %cmp17 = icmp ult i32 %cond.i, %40
  br i1 %cmp17, label %land.rhs, label %via_cmdbuf_space.exit.sw.epilog_crit_edge

via_cmdbuf_space.exit.sw.epilog_crit_edge:        ; preds = %via_cmdbuf_space.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.rhs:                                         ; preds = %via_cmdbuf_space.exit
  %dec = add nsw i32 %count.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool18.not = icmp eq i32 %dec, 0
  br i1 %tobool18.not, label %if.then23, label %while.body

while.body:                                       ; preds = %land.rhs
  %45 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %wait, align 4
  %tobool19.not = icmp eq i32 %46, 0
  br i1 %tobool19.not, label %while.body.sw.epilog_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then23:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29) #5
  br label %sw.epilog

while.cond26:                                     ; preds = %while.body34.while.cond26_crit_edge, %while.cond26.preheader
  %count.2 = phi i32 [ %dec31, %while.body34.while.cond26_crit_edge ], [ 1000000, %while.cond26.preheader ]
  %47 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %24, align 4
  %sub.i70 = sub i32 %48, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %sub.i70)
  %cmp.not.i72 = icmp ult i32 %27, %sub.i70
  br i1 %cmp.not.i72, label %cond.false.i, label %while.cond26.via_cmdbuf_lag.exit_crit_edge

while.cond26.via_cmdbuf_lag.exit_crit_edge:       ; preds = %while.cond26
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_cmdbuf_lag.exit

cond.false.i:                                     ; preds = %while.cond26
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %dma_wrap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_wrap.i, align 8
  %add4.i = add i32 %50, %27
  br label %via_cmdbuf_lag.exit

via_cmdbuf_lag.exit:                              ; preds = %cond.false.i, %while.cond26.via_cmdbuf_lag.exit_crit_edge
  %.pn.i = phi i32 [ %add4.i, %cond.false.i ], [ %27, %while.cond26.via_cmdbuf_lag.exit_crit_edge ]
  %cond.i73 = sub i32 %.pn.i, %sub.i70
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i73, i32 %29)
  %cmp29 = icmp ugt i32 %cond.i73, %29
  br i1 %cmp29, label %land.rhs30, label %via_cmdbuf_lag.exit.sw.epilog_crit_edge

via_cmdbuf_lag.exit.sw.epilog_crit_edge:          ; preds = %via_cmdbuf_lag.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.rhs30:                                       ; preds = %via_cmdbuf_lag.exit
  %dec31 = add nsw i32 %count.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec31)
  %tobool32.not = icmp eq i32 %dec31, 0
  br i1 %tobool32.not, label %if.then41, label %while.body34

while.body34:                                     ; preds = %land.rhs30
  %51 = ptrtoint ptr %wait35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wait35, align 4
  %tobool36.not = icmp eq i32 %52, 0
  br i1 %tobool36.not, label %while.body34.sw.epilog_crit_edge, label %while.body34.while.cond26_crit_edge

while.body34.while.cond26_crit_edge:              ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond26

while.body34.sw.epilog_crit_edge:                 ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then41:                                        ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30) #5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then41, %while.body34.sw.epilog_crit_edge, %via_cmdbuf_lag.exit.sw.epilog_crit_edge, %if.then23, %while.body.sw.epilog_crit_edge, %via_cmdbuf_space.exit.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -14, %sw.default ], [ -11, %if.then41 ], [ -11, %if.then23 ], [ 0, %via_cmdbuf_space.exit.sw.epilog_crit_edge ], [ 0, %while.body.sw.epilog_crit_edge ], [ 0, %via_cmdbuf_lag.exit.sw.epilog_crit_edge ], [ 0, %while.body34.sw.epilog_crit_edge ]
  %tmp_size.0 = phi i32 [ %54, %sw.default ], [ %cond.i73, %if.then41 ], [ %cond.i, %if.then23 ], [ %cond.i, %via_cmdbuf_space.exit.sw.epilog_crit_edge ], [ %cond.i, %while.body.sw.epilog_crit_edge ], [ %cond.i73, %via_cmdbuf_lag.exit.sw.epilog_crit_edge ], [ %cond.i73, %while.body34.sw.epilog_crit_edge ]
  %55 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %tmp_size.0, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then14, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -14, %if.then14 ], [ %ret.0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @via_wait_irq(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @via_dma_blit(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @via_dma_blit_sync(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @via_align_cmd(ptr nocapture noundef %dev_priv, i32 noundef %cmd_type, ptr nocapture noundef writeonly %cmd_addr_hi, ptr nocapture noundef writeonly %cmd_addr_lo, i32 noundef %skip_wait) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_wait)
  %tobool.not = icmp eq i32 %skip_wait, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %dma_offset.i = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 9
  %0 = ptrtoint ptr %dma_offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_offset.i, align 4
  %agpAddr.i = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 4
  %2 = ptrtoint ptr %agpAddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %agpAddr.i, align 8
  %hw_addr_ptr1.i = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 12
  %4 = ptrtoint ptr %hw_addr_ptr1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr_ptr1.i, align 8
  %dma_low.i = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 7
  %6 = ptrtoint ptr %dma_low.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_low.i, align 4
  %add3.i = add i32 %7, 524800
  %8 = add i32 %3, %1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %sub31.i = sub i32 %10, %8
  br label %if.end.i

if.then.i:                                        ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %sub.i, i32 noundef %7, i32 noundef %add3.i) #5
  br label %if.end

if.end.i:                                         ; preds = %do.cond.i.if.end.i_crit_edge, %if.then
  %dec33.i = phi i32 [ 999999, %if.then ], [ %dec.i, %do.cond.i.if.end.i_crit_edge ]
  %sub32.i = phi i32 [ %sub31.i, %if.then ], [ %sub.i, %do.cond.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub32.i)
  %cmp4.i = icmp uge i32 %7, %sub32.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %sub32.i)
  %cmp5.not.i = icmp ult i32 %add3.i, %sub32.i
  %or.cond.i = or i1 %cmp4.i, %cmp5.not.i
  br i1 %or.cond.i, label %if.end.i.if.end_crit_edge, label %do.cond.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.cond.i:                                        ; preds = %if.end.i
  tail call void @msleep(i32 noundef 1) #5
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %5, align 4
  %sub.i = sub i32 %12, %8
  %dec.i = add nsw i32 %dec33.i, -1
  %cmp.i = icmp eq i32 %dec33.i, 0
  br i1 %cmp.i, label %if.then.i, label %do.cond.i.if.end.i_crit_edge

do.cond.i.if.end.i_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.then.i, %entry.if.end_crit_edge
  %dma_ptr.i = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 6
  %13 = ptrtoint ptr %dma_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_ptr.i, align 8
  %dma_low.i1 = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 7
  %15 = ptrtoint ptr %dma_low.i1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_low.i1, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %16
  %incdec.ptr = getelementptr i32, ptr %add.ptr.i, i32 1
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -233770736, ptr %add.ptr.i, align 4
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1048576, ptr %incdec.ptr, align 4
  %19 = load i32, ptr %dma_low.i1, align 4
  %add = add i32 %19, 8
  store i32 %add, ptr %dma_low.i1, align 4
  %dma_offset = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 9
  %20 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_offset, align 4
  %agpAddr = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 4
  %22 = ptrtoint ptr %agpAddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %agpAddr, align 8
  %and = lshr i32 %add, 3
  %shr = and i32 %and, 31
  %incdec.ptr2 = getelementptr i32, ptr %add.ptr.i, i32 2
  %sub15 = xor i32 %shr, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15)
  %cmp5.i.not = icmp eq i32 %sub15, 0
  br i1 %cmp5.i.not, label %if.end.via_align_buffer.exit_crit_edge, label %if.end.do.body.i_crit_edge

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  br label %do.body.i

if.end.via_align_buffer.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_align_buffer.exit

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  %qw_count.addr.07.i = phi i32 [ %dec.i3, %do.body.i.do.body.i_crit_edge ], [ %sub15, %if.end.do.body.i_crit_edge ]
  %vb.addr.06.i = phi ptr [ %incdec.ptr1.i, %do.body.i.do.body.i_crit_edge ], [ %incdec.ptr2, %if.end.do.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %vb.addr.06.i, i32 1
  %24 = ptrtoint ptr %vb.addr.06.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -858993460, ptr %vb.addr.06.i, align 4
  %incdec.ptr1.i = getelementptr i32, ptr %vb.addr.06.i, i32 2
  %25 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -858993460, ptr %incdec.ptr.i, align 4
  %26 = ptrtoint ptr %dma_low.i1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_low.i1, align 4
  %add.i = add i32 %27, 8
  store i32 %add.i, ptr %dma_low.i1, align 4
  %dec.i3 = add nsw i32 %qw_count.addr.07.i, -1
  %cmp.i4 = icmp ugt i32 %qw_count.addr.07.i, 1
  br i1 %cmp.i4, label %do.body.i.do.body.i_crit_edge, label %do.body.i.via_align_buffer.exit_crit_edge

do.body.i.via_align_buffer.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_align_buffer.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

via_align_buffer.exit:                            ; preds = %do.body.i.via_align_buffer.exit_crit_edge, %if.end.via_align_buffer.exit_crit_edge
  %vb.addr.0.lcssa.i = phi ptr [ %incdec.ptr2, %if.end.via_align_buffer.exit_crit_edge ], [ %incdec.ptr1.i, %do.body.i.via_align_buffer.exit_crit_edge ]
  %.neg = mul nsw i32 %shr, -8
  %shl = add i32 %19, 256
  %add3 = add i32 %shl, %21
  %sub8 = add i32 %add3, %23
  %add9 = add i32 %sub8, %.neg
  %shr13 = lshr i32 %add9, 24
  %or14 = or i32 %shr13, 1677721600
  %and10 = and i32 %cmd_type, 3
  %and11 = and i32 %add9, 16777212
  %or = or i32 %and10, %and11
  %or12 = or i32 %or, 1660944384
  %28 = ptrtoint ptr %cmd_addr_hi to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or14, ptr %cmd_addr_hi, align 4
  %incdec.ptr18 = getelementptr i32, ptr %vb.addr.0.lcssa.i, i32 1
  %29 = ptrtoint ptr %vb.addr.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or14, ptr %vb.addr.0.lcssa.i, align 4
  %30 = ptrtoint ptr %cmd_addr_lo to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or12, ptr %cmd_addr_lo, align 4
  %incdec.ptr19 = getelementptr i32, ptr %vb.addr.0.lcssa.i, i32 2
  %31 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or12, ptr %incdec.ptr18, align 4
  %32 = ptrtoint ptr %dma_low.i1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_low.i1, align 4
  %add21 = add i32 %33, 8
  store i32 %add21, ptr %dma_low.i1, align 4
  ret ptr %incdec.ptr19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @via_hook_segment(ptr nocapture noundef %dev_priv, i32 noundef %pause_addr_hi, i32 noundef %pause_addr_lo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %last_pause_ptr = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 11
  %0 = ptrtoint ptr %last_pause_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last_pause_ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %dma_ptr.i = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 6
  %2 = ptrtoint ptr %dma_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_ptr.i, align 8
  %dma_low.i = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 7
  %4 = ptrtoint ptr %dma_low.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_low.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  %add.ptr = getelementptr i32, ptr %add.ptr.i, i32 -1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %pause_addr_lo, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %1, align 4
  %hw_addr_ptr = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 12
  %11 = ptrtoint ptr %hw_addr_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_addr_ptr, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = ptrtoint ptr %dma_ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_ptr.i, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i32
  %dma_offset = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 9
  %17 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_offset, align 4
  %agpAddr = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 4
  %19 = ptrtoint ptr %agpAddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %agpAddr, align 8
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, 4
  %add = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %add4 = add i32 %add, %18
  %add5 = add i32 %add4, %20
  %21 = ptrtoint ptr %dma_low.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_low.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %16, i32 %22
  %add.ptr7 = getelementptr i32, ptr %add.ptr.i3, i32 -1
  %23 = ptrtoint ptr %last_pause_ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr7, ptr %last_pause_ptr, align 4
  %dma_diff = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 38
  %24 = ptrtoint ptr %dma_diff to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_diff, align 4
  %26 = add i32 %25, %14
  %mmio.i = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %26)
  %cmp23 = icmp eq i32 %add5, %26
  br i1 %cmp23, label %entry.land.rhs_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %count.024 = phi i32 [ %dec, %if.end.land.rhs_crit_edge ], [ 10000000, %entry.land.rhs_crit_edge ]
  %dec = add nsw i32 %count.024, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.024)
  %tobool.not = icmp eq i32 %count.024, 0
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handle.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %30, i32 1052
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %.mask20 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask20)
  %tobool11.not = icmp eq i32 %.mask20, 0
  br i1 %tobool11.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end:                                           ; preds = %while.body
  %32 = ptrtoint ptr %hw_addr_ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_addr_ptr, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %36 = ptrtoint ptr %dma_diff to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_diff, align 4
  %38 = add i32 %37, %35
  %cmp = icmp eq i32 %add5, %38
  br i1 %cmp, label %if.end.land.rhs_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %39 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i, align 4
  %handle.i6 = getelementptr inbounds %struct.drm_local_map, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %handle.i6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %handle.i6, align 4
  %add.ptr.i7 = getelementptr i8, ptr %42, i32 1052
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %.mask = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool18.not = icmp eq i32 %.mask, 0
  br i1 %tobool18.not, label %while.end.if.end38_crit_edge, label %if.then20

while.end.if.end38_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then20:                                        ; preds = %while.end
  %44 = ptrtoint ptr %hw_addr_ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw_addr_ptr, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %48 = ptrtoint ptr %dma_diff to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma_diff, align 4
  %50 = add i32 %47, %49
  %sub24 = sub i32 %add5, %50
  %dma_high = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 8
  %51 = ptrtoint ptr %dma_high to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_high, align 8
  %sub25 = add i32 %52, -1
  %and26 = and i32 %sub25, %sub24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp27.not = icmp ne i32 %and26, 0
  %shr = lshr i32 %52, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and26, i32 %shr)
  %cmp30 = icmp ult i32 %and26, %shr
  %or.cond = select i1 %cmp27.not, i1 %cmp30, i1 false
  br i1 %or.cond, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %add5, i32 noundef %47, i32 noundef %49) #5
  br label %if.end38

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp33 = icmp eq i32 %and26, 0
  br i1 %cmp33, label %if.then34, label %if.else.if.end38_crit_edge

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %53 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i, align 4
  %handle.i9 = getelementptr inbounds %struct.drm_local_map, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %handle.i9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %handle.i9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %56, i32 1084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 4096) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %57 = tail call i32 @llvm.bswap.i32(i32 %pause_addr_hi) #5
  %58 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i, align 4
  %handle.i12 = getelementptr inbounds %struct.drm_local_map, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %handle.i12 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %handle.i12, align 4
  %add.ptr.i13 = getelementptr i8, ptr %61, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %57) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %62 = tail call i32 @llvm.bswap.i32(i32 %pause_addr_lo) #5
  %63 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio.i, align 4
  %handle.i15 = getelementptr inbounds %struct.drm_local_map, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %handle.i15 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %handle.i15, align 4
  %add.ptr.i16 = getelementptr i8, ptr %66, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %62) #5, !srcloc !95
  %67 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio.i, align 4
  %handle.i18 = getelementptr inbounds %struct.drm_local_map, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %handle.i18 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %handle.i18, align 4
  %add.ptr.i19 = getelementptr i8, ptr %70, i32 1088
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.else.if.end38_crit_edge, %if.then31, %while.end.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_ioremap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @via_cmdbuf_start(ptr noundef %dev_priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_low = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 7
  %0 = ptrtoint ptr %dma_low to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dma_low, align 4
  %dma_offset = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 9
  %1 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dma_offset, align 4
  %agpAddr = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 4
  %3 = ptrtoint ptr %agpAddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %agpAddr, align 8
  %add = add i32 %4, %2
  %dma_high = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 8
  %5 = ptrtoint ptr %dma_high to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_high, align 8
  %add1 = add i32 %add, %6
  %and = and i32 %add, 16777215
  %or = or i32 %and, 1610612736
  %and2 = and i32 %add1, 16777215
  %or3 = or i32 %and2, 1627389952
  %shr = lshr i32 %add, 24
  %and5 = lshr i32 %add1, 16
  %shr6 = and i32 %and5, 65280
  %or4 = or i32 %shr6, %shr
  %or7 = or i32 %or4, 1644167168
  %dma_ptr.i.i = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 6
  %7 = ptrtoint ptr %dma_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_ptr.i.i, align 8
  %incdec.ptr.i = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -233770736, ptr %8, align 4
  %10 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1048576, ptr %incdec.ptr.i, align 4
  %11 = load i32, ptr %dma_low, align 4
  %add.i = add i32 %11, 8
  store i32 %add.i, ptr %dma_low, align 4
  %12 = load i32, ptr %dma_offset, align 4
  %13 = load i32, ptr %agpAddr, align 8
  %and.i = lshr i32 %add.i, 3
  %shr.i = and i32 %and.i, 31
  %incdec.ptr2.i = getelementptr i32, ptr %8, i32 2
  %sub15.i = xor i32 %shr.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15.i)
  %cmp5.i.not.i = icmp eq i32 %sub15.i, 0
  br i1 %cmp5.i.not.i, label %entry.via_align_cmd.exit_crit_edge, label %entry.do.body.i.i_crit_edge

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  br label %do.body.i.i

entry.via_align_cmd.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_align_cmd.exit

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry.do.body.i.i_crit_edge
  %qw_count.addr.07.i.i = phi i32 [ %dec.i3.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %sub15.i, %entry.do.body.i.i_crit_edge ]
  %vb.addr.06.i.i = phi ptr [ %incdec.ptr1.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %incdec.ptr2.i, %entry.do.body.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i32, ptr %vb.addr.06.i.i, i32 1
  %14 = ptrtoint ptr %vb.addr.06.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -858993460, ptr %vb.addr.06.i.i, align 4
  %incdec.ptr1.i.i = getelementptr i32, ptr %vb.addr.06.i.i, i32 2
  %15 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -858993460, ptr %incdec.ptr.i.i, align 4
  %16 = ptrtoint ptr %dma_low to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_low, align 4
  %add.i.i = add i32 %17, 8
  store i32 %add.i.i, ptr %dma_low, align 4
  %dec.i3.i = add nsw i32 %qw_count.addr.07.i.i, -1
  %cmp.i4.i = icmp ugt i32 %qw_count.addr.07.i.i, 1
  br i1 %cmp.i4.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.via_align_cmd.exit_crit_edge

do.body.i.i.via_align_cmd.exit_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_align_cmd.exit

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

via_align_cmd.exit:                               ; preds = %do.body.i.i.via_align_cmd.exit_crit_edge, %entry.via_align_cmd.exit_crit_edge
  %vb.addr.0.lcssa.i.i = phi ptr [ %incdec.ptr2.i, %entry.via_align_cmd.exit_crit_edge ], [ %incdec.ptr1.i.i, %do.body.i.i.via_align_cmd.exit_crit_edge ]
  %.neg.i = mul nsw i32 %shr.i, -8
  %shl.i = add i32 %11, 256
  %add3.i = add i32 %shl.i, %12
  %sub8.i = add i32 %add3.i, %13
  %add9.i = add i32 %sub8.i, %.neg.i
  %shr13.i = lshr i32 %add9.i, 24
  %or14.i = or i32 %shr13.i, 1677721600
  %and11.i = and i32 %add9.i, 16777212
  %or12.i = or i32 %and11.i, 1660944384
  %incdec.ptr18.i = getelementptr i32, ptr %vb.addr.0.lcssa.i.i, i32 1
  %18 = ptrtoint ptr %vb.addr.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or14.i, ptr %vb.addr.0.lcssa.i.i, align 4
  %19 = ptrtoint ptr %incdec.ptr18.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or12.i, ptr %incdec.ptr18.i, align 4
  %20 = ptrtoint ptr %dma_low to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_low, align 4
  %add21.i = add i32 %21, 8
  store i32 %add21.i, ptr %dma_low, align 4
  %last_pause_ptr = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 11
  %22 = ptrtoint ptr %last_pause_ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %incdec.ptr18.i, ptr %last_pause_ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %last_pause_ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %last_pause_ptr, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %mmio.i = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 3
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 1084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 4096) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %or7) #5
  %32 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i, align 4
  %handle.i51 = getelementptr inbounds %struct.drm_local_map, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %handle.i51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %handle.i51, align 4
  %add.ptr.i52 = getelementptr i8, ptr %35, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %31) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %36 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %37 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio.i, align 4
  %handle.i54 = getelementptr inbounds %struct.drm_local_map, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %handle.i54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %handle.i54, align 4
  %add.ptr.i55 = getelementptr i8, ptr %40, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %36) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %41 = tail call i32 @llvm.bswap.i32(i32 %or3) #5
  %42 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i, align 4
  %handle.i57 = getelementptr inbounds %struct.drm_local_map, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %handle.i57 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %handle.i57, align 4
  %add.ptr.i58 = getelementptr i8, ptr %45, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %41) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %46 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #5
  %47 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i, align 4
  %handle.i60 = getelementptr inbounds %struct.drm_local_map, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %handle.i60 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %handle.i60, align 4
  %add.ptr.i61 = getelementptr i8, ptr %50, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %46) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %51 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #5
  %52 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i, align 4
  %handle.i63 = getelementptr inbounds %struct.drm_local_map, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %handle.i63 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %handle.i63, align 4
  %add.ptr.i64 = getelementptr i8, ptr %55, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %51) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %or12 = or i32 %or4, 1652555776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %56 = tail call i32 @llvm.bswap.i32(i32 %or12) #5
  %57 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio.i, align 4
  %handle.i66 = getelementptr inbounds %struct.drm_local_map, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %handle.i66 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %handle.i66, align 4
  %add.ptr.i67 = getelementptr i8, ptr %60, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %56) #5, !srcloc !95
  %61 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio.i, align 4
  %handle.i69 = getelementptr inbounds %struct.drm_local_map, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %handle.i69 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %handle.i69, align 4
  %add.ptr.i70 = getelementptr i8, ptr %64, i32 1088
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %dma_diff = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 38
  %66 = ptrtoint ptr %dma_diff to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %dma_diff, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %via_align_cmd.exit
  %count.0 = phi i32 [ 10000000, %via_align_cmd.exit ], [ %dec, %while.cond.while.cond_crit_edge ]
  %67 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio.i, align 4
  %handle.i72 = getelementptr inbounds %struct.drm_local_map, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %handle.i72 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %handle.i72, align 4
  %add.ptr.i73 = getelementptr i8, ptr %70, i32 1052
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %.mask = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp ne i32 %.mask, 0
  %dec = add nsw i32 %count.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %tobool16.not = icmp eq i32 %count.0, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %hw_addr_ptr = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 12
  %72 = ptrtoint ptr %hw_addr_ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw_addr_ptr, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %73, align 4
  %76 = ptrtoint ptr %last_pause_ptr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %last_pause_ptr, align 4
  %78 = ptrtoint ptr %dma_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dma_ptr.i.i, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %79 to i32
  %80 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma_offset, align 4
  %82 = ptrtoint ptr %agpAddr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %agpAddr, align 8
  %84 = add i32 %sub.ptr.lhs.cast, 4
  %85 = add i32 %75, %sub.ptr.rhs.cast
  %add21 = sub i32 %84, %85
  %add22 = add i32 %add21, %81
  %sub = add i32 %add22, %83
  %86 = ptrtoint ptr %dma_diff to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub, ptr %dma_diff, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @via_verify_command_stream(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @via_pad_cache(ptr nocapture noundef %dev_priv, i32 noundef %qwords) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_offset.i = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 9
  %0 = ptrtoint ptr %dma_offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_offset.i, align 4
  %agpAddr.i = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 4
  %2 = ptrtoint ptr %agpAddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %agpAddr.i, align 8
  %hw_addr_ptr1.i = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 12
  %4 = ptrtoint ptr %hw_addr_ptr1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr_ptr1.i, align 8
  %dma_low.i = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 7
  %6 = ptrtoint ptr %dma_low.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_low.i, align 4
  %add2.i = add i32 %qwords, 524290
  %add3.i = add i32 %add2.i, %7
  %8 = add i32 %3, %1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %sub31.i = sub i32 %10, %8
  br label %if.end.i

if.then.i:                                        ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %sub.i, i32 noundef %7, i32 noundef %add3.i) #5
  br label %via_cmdbuf_wait.exit

if.end.i:                                         ; preds = %do.cond.i.if.end.i_crit_edge, %entry
  %dec33.i = phi i32 [ 999999, %entry ], [ %dec.i, %do.cond.i.if.end.i_crit_edge ]
  %sub32.i = phi i32 [ %sub31.i, %entry ], [ %sub.i, %do.cond.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub32.i)
  %cmp4.i = icmp uge i32 %7, %sub32.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %sub32.i)
  %cmp5.not.i = icmp ult i32 %add3.i, %sub32.i
  %or.cond.i = or i1 %cmp4.i, %cmp5.not.i
  br i1 %or.cond.i, label %if.end.i.via_cmdbuf_wait.exit_crit_edge, label %do.cond.i

if.end.i.via_cmdbuf_wait.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_cmdbuf_wait.exit

do.cond.i:                                        ; preds = %if.end.i
  tail call void @msleep(i32 noundef 1) #5
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %5, align 4
  %sub.i = sub i32 %12, %8
  %dec.i = add nsw i32 %dec33.i, -1
  %cmp.i = icmp eq i32 %dec33.i, 0
  br i1 %cmp.i, label %if.then.i, label %do.cond.i.if.end.i_crit_edge

do.cond.i.if.end.i_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

via_cmdbuf_wait.exit:                             ; preds = %if.end.i.via_cmdbuf_wait.exit_crit_edge, %if.then.i
  %dma_ptr.i = getelementptr inbounds %struct.drm_via_private, ptr %dev_priv, i32 0, i32 6
  %13 = ptrtoint ptr %dma_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_ptr.i, align 8
  %15 = ptrtoint ptr %dma_low.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_low.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %16
  %incdec.ptr = getelementptr i32, ptr %add.ptr.i, i32 1
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -233770736, ptr %add.ptr.i, align 4
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 65536, ptr %incdec.ptr, align 4
  %19 = load i32, ptr %dma_low.i, align 4
  %add3 = add i32 %19, 8
  store i32 %add3, ptr %dma_low.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qwords)
  %cmp5.i = icmp sgt i32 %qwords, 0
  br i1 %cmp5.i, label %via_cmdbuf_wait.exit.do.body.i_crit_edge, label %via_cmdbuf_wait.exit.via_align_buffer.exit_crit_edge

via_cmdbuf_wait.exit.via_align_buffer.exit_crit_edge: ; preds = %via_cmdbuf_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_align_buffer.exit

via_cmdbuf_wait.exit.do.body.i_crit_edge:         ; preds = %via_cmdbuf_wait.exit
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %via_cmdbuf_wait.exit.do.body.i_crit_edge
  %qw_count.addr.07.i = phi i32 [ %dec.i13, %do.body.i.do.body.i_crit_edge ], [ %qwords, %via_cmdbuf_wait.exit.do.body.i_crit_edge ]
  %vb.addr.06.i.pn = phi ptr [ %vb.addr.06.i, %do.body.i.do.body.i_crit_edge ], [ %add.ptr.i, %via_cmdbuf_wait.exit.do.body.i_crit_edge ]
  %vb.addr.06.i = getelementptr i32, ptr %vb.addr.06.i.pn, i32 2
  %incdec.ptr.i = getelementptr i32, ptr %vb.addr.06.i.pn, i32 3
  %20 = ptrtoint ptr %vb.addr.06.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -858993460, ptr %vb.addr.06.i, align 4
  %21 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -858993460, ptr %incdec.ptr.i, align 4
  %22 = ptrtoint ptr %dma_low.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_low.i, align 4
  %add.i = add i32 %23, 8
  store i32 %add.i, ptr %dma_low.i, align 4
  %dec.i13 = add nsw i32 %qw_count.addr.07.i, -1
  %cmp.i14 = icmp ugt i32 %qw_count.addr.07.i, 1
  br i1 %cmp.i14, label %do.body.i.do.body.i_crit_edge, label %do.body.i.via_align_buffer.exit_crit_edge

do.body.i.via_align_buffer.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_align_buffer.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

via_align_buffer.exit:                            ; preds = %do.body.i.via_align_buffer.exit_crit_edge, %via_cmdbuf_wait.exit.via_align_buffer.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @via_parse_command_stream(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !51, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 728, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 729, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 730, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 731, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 732, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 733, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 734, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 735, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 736, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 737, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 738, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 739, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 740, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 741, i32 2}
!28 = !{ptr @via_ioctls, !29, !"via_ioctls", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 727, i32 29}
!30 = !{ptr @via_max_ioctl, !31, !"via_max_ioctl", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 744, i32 5}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 130, i32 4}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 453, i32 4}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 184, i32 3}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 189, i32 3}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 194, i32 3}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 199, i32 3}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 213, i32 3}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 339, i32 2}
!48 = !{ptr @__func__.via_cmdbuffer, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 341, i32 2}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 275, i32 3}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 611, i32 3}
!62 = !{ptr @__func__.via_flush_ioctl, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 329, i32 2}
!64 = !{ptr @__func__.via_pci_cmdbuffer, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 375, i32 2}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 684, i32 2}
!68 = !{ptr @__func__.via_cmdbuf_size, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 685, i32 2}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 704, i32 4}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/via/via_dma.c", i32 715, i32 4}
!74 = !{!"sp"}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"auto-init"}
!85 = !{i64 6037701}
!86 = !{i64 2154142161}
!87 = !{i64 2150524622, i64 2150524647}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{i64 3020177}
!90 = !{i64 3020374}
!91 = !{i64 2150505607}
!92 = !{i64 2154216438}
!93 = !{i64 2154216586}
!94 = !{i64 2154142573}
!95 = !{i64 6037283}
!96 = !{i64 2154217360}
!97 = !{i64 2154217551}
