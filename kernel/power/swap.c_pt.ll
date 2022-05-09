; ModuleID = '/llk/IR_all_yes/kernel/power/swap.c_pt.bc'
source_filename = "../kernel/power/swap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rb_root = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.swsusp_extent = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hib_bio_batch = type { %struct.atomic_t, %struct.wait_queue_head, i8, %struct.blk_plug }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.swap_map_handle = type { ptr, ptr, i64, i64, i32, i32, i32 }
%struct.snapshot_handle = type { i32, ptr, i32 }
%struct.swap_map_page = type { [511 x i64], i64 }
%struct.cmp_data = type { ptr, %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, [131072 x i8], [143360 x i8], [16384 x i8] }
%struct.crc_data = type { ptr, %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, [3 x ptr], [3 x ptr] }
%struct.swsusp_header = type { [4056 x i8], i32, i32, i64, i32, [10 x i8], [10 x i8] }
%struct.swap_map_page_list = type { ptr, ptr }
%struct.swsusp_info = type { %struct.new_utsname, i32, i32, i32, i32, i32, i32, [3680 x i8] }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.dec_data = type { ptr, %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, [131072 x i8], [143360 x i8] }
%struct.page = type { i32, %union.anon.8, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.48, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.48 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@swsusp_extents = internal global { %struct.rb_root, [28 x i8] } zeroinitializer, align 32
@swsusp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013PM: Cannot get swap writer\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"swsusp_write\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/power/swap.c\00", [44 x i8] zeroinitializer }, align 32
@swsusp_write._entry_ptr = internal global ptr @swsusp_write._entry, section ".printk_index", align 4
@swsusp_write._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013PM: Not enough free swap\0A\00", [36 x i8] zeroinitializer }, align 32
@swsusp_write._entry_ptr.5 = internal global ptr @swsusp_write._entry.3, section ".printk_index", align 4
@swsusp_read.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 1, i8 121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"swap\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"swsusp_read\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Image successfully loaded\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PM: Image successfully loaded\0A\00", [33 x i8] zeroinitializer }, align 32
@swsusp_read.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.10, i8 1, i8 122, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Error %d resuming\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PM: Error %d resuming\0A\00", [41 x i8] zeroinitializer }, align 32
@swsusp_resume_device = external dso_local global i32, align 4
@hib_resume_bdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@swsusp_header = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@swsusp_resume_block = external dso_local local_unnamed_addr global i64, align 8
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"S1SUSPEND\00", [22 x i8] zeroinitializer }, align 32
@swsusp_hardware_signature = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@swsusp_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\016PM: Suspend image hardware signature mismatch (%08x now %08x); aborting resume.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"swsusp_check\00", [19 x i8] zeroinitializer }, align 32
@swsusp_check._entry_ptr = internal global ptr @swsusp_check._entry, section ".printk_index", align 4
@swsusp_check.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 1, i8 -123, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Image signature found, resuming\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PM: Image signature found, resuming\0A\00", [59 x i8] zeroinitializer }, align 32
@swsusp_check.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.14, ptr @.str.2, ptr @.str.17, i8 1, i8 -122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Image not found (code %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PM: Image not found (code %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@swsusp_close.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 -119, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"swsusp_close\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Image device not initialised\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PM: Image device not initialised\0A\00", [62 x i8] zeroinitializer }, align 32
@swsusp_unmark._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013PM: Cannot find swsusp signature!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"swsusp_unmark\00", [18 x i8] zeroinitializer }, align 32
@swsusp_unmark._entry_ptr = internal global ptr @swsusp_unmark._entry, section ".printk_index", align 4
@root_swap = internal global { i16, [30 x i8] } { i16 -1, [30 x i8] zeroinitializer }, align 32
@__initcall__kmod_swap__321_1620_swsusp_header_init1 = internal global ptr @swsusp_header_init, section ".initcall1.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_swap_writer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013PM: Cannot find swap device, try swapon -a\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_swap_writer\00", [16 x i8] zeroinitializer }, align 32
@get_swap_writer._entry_ptr = internal global ptr @get_swap_writer._entry, section ".printk_index", align 4
@vm_zone_stat = external dso_local global [11 x %struct.atomic_t], align 4
@enough_swap.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -32, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enough_swap\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Free swap pages: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PM: Free swap pages: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@write_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@save_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016PM: Saving image data pages (%u pages)...\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"save_image\00", [21 x i8] zeroinitializer }, align 32
@save_image._entry_ptr = internal global ptr @save_image._entry, section ".printk_index", align 4
@save_image._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016PM: Image saving progress: %3d%%\0A\00", [60 x i8] zeroinitializer }, align 32
@save_image._entry_ptr.33 = internal global ptr @save_image._entry.31, section ".printk_index", align 4
@save_image._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016PM: Image saving done\0A\00", [39 x i8] zeroinitializer }, align 32
@save_image._entry_ptr.36 = internal global ptr @save_image._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Wrote\00", [26 x i8] zeroinitializer }, align 32
@hib_init_batch.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&hb->wait\00", [22 x i8] zeroinitializer }, align 32
@save_image_lzo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013PM: Failed to allocate LZO page\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"save_image_lzo\00", [17 x i8] zeroinitializer }, align 32
@save_image_lzo._entry_ptr = internal global ptr @save_image_lzo._entry, section ".printk_index", align 4
@save_image_lzo._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013PM: Failed to allocate LZO data\0A\00", [61 x i8] zeroinitializer }, align 32
@save_image_lzo._entry_ptr.43 = internal global ptr @save_image_lzo._entry.41, section ".printk_index", align 4
@save_image_lzo._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013PM: Failed to allocate crc\0A\00", [34 x i8] zeroinitializer }, align 32
@save_image_lzo._entry_ptr.46 = internal global ptr @save_image_lzo._entry.44, section ".printk_index", align 4
@save_image_lzo.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&data[thr].go\00", [18 x i8] zeroinitializer }, align 32
@save_image_lzo.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&data[thr].done\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"image_compress/%u\00", [46 x i8] zeroinitializer }, align 32
@save_image_lzo._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.40, ptr @.str.2, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013PM: Cannot start compression threads\0A\00", [56 x i8] zeroinitializer }, align 32
@save_image_lzo._entry_ptr.53 = internal global ptr @save_image_lzo._entry.51, section ".printk_index", align 4
@save_image_lzo.__key.54 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&crc->go\00", [23 x i8] zeroinitializer }, align 32
@save_image_lzo.__key.56 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&crc->done\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"image_crc32\00", [20 x i8] zeroinitializer }, align 32
@save_image_lzo._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.40, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013PM: Cannot start CRC32 thread\0A\00", [63 x i8] zeroinitializer }, align 32
@save_image_lzo._entry_ptr.61 = internal global ptr @save_image_lzo._entry.59, section ".printk_index", align 4
@save_image_lzo._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.40, ptr @.str.2, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016PM: Using %u thread(s) for compression\0A\00", [54 x i8] zeroinitializer }, align 32
@save_image_lzo._entry_ptr.64 = internal global ptr @save_image_lzo._entry.62, section ".printk_index", align 4
@save_image_lzo._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.40, ptr @.str.2, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016PM: Compressing and saving image data (%u pages)...\0A\00", [41 x i8] zeroinitializer }, align 32
@save_image_lzo._entry_ptr.67 = internal global ptr @save_image_lzo._entry.65, section ".printk_index", align 4
@save_image_lzo._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.40, ptr @.str.2, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@save_image_lzo._entry_ptr.69 = internal global ptr @save_image_lzo._entry.68, section ".printk_index", align 4
@save_image_lzo._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.40, ptr @.str.2, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013PM: LZO compression failed\0A\00", [34 x i8] zeroinitializer }, align 32
@save_image_lzo._entry_ptr.72 = internal global ptr @save_image_lzo._entry.70, section ".printk_index", align 4
@save_image_lzo._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.40, ptr @.str.2, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013PM: Invalid LZO compressed length\0A\00", [59 x i8] zeroinitializer }, align 32
@save_image_lzo._entry_ptr.75 = internal global ptr @save_image_lzo._entry.73, section ".printk_index", align 4
@save_image_lzo._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.40, ptr @.str.2, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@save_image_lzo._entry_ptr.77 = internal global ptr @save_image_lzo._entry.76, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@swap_writer_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\016PM: S\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"swap_writer_finish\00", [45 x i8] zeroinitializer }, align 32
@swap_writer_finish._entry_ptr = internal global ptr @swap_writer_finish._entry, section ".printk_index", align 4
@swap_writer_finish._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c|\0A\00", [27 x i8] zeroinitializer }, align 32
@swap_writer_finish._entry_ptr.82 = internal global ptr @swap_writer_finish._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SWAP-SPACE\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SWAPSPACE2\00", [21 x i8] zeroinitializer }, align 32
@mark_swapfiles._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013PM: Swap header not found!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mark_swapfiles\00", [17 x i8] zeroinitializer }, align 32
@mark_swapfiles._entry_ptr = internal global ptr @mark_swapfiles._entry, section ".printk_index", align 4
@clean_pages_on_read = internal global { i1, [31 x i8] } zeroinitializer, align 32
@load_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016PM: Loading image data pages (%u pages)...\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"load_image\00", [21 x i8] zeroinitializer }, align 32
@load_image._entry_ptr = internal global ptr @load_image._entry, section ".printk_index", align 4
@load_image._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 1096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016PM: Image loading progress: %3d%%\0A\00", [59 x i8] zeroinitializer }, align 32
@load_image._entry_ptr.91 = internal global ptr @load_image._entry.89, section ".printk_index", align 4
@load_image._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.2, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016PM: Image loading done\0A\00", [38 x i8] zeroinitializer }, align 32
@load_image._entry_ptr.94 = internal global ptr @load_image._entry.92, section ".printk_index", align 4
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Read\00", [27 x i8] zeroinitializer }, align 32
@load_image_lzo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.96, ptr @.str.2, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"load_image_lzo\00", [17 x i8] zeroinitializer }, align 32
@load_image_lzo._entry_ptr = internal global ptr @load_image_lzo._entry, section ".printk_index", align 4
@load_image_lzo._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.96, ptr @.str.2, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@load_image_lzo._entry_ptr.98 = internal global ptr @load_image_lzo._entry.97, section ".printk_index", align 4
@load_image_lzo._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.96, ptr @.str.2, i32 1213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@load_image_lzo._entry_ptr.100 = internal global ptr @load_image_lzo._entry.99, section ".printk_index", align 4
@clean_pages_on_decompress = internal global { i1, [31 x i8] } zeroinitializer, align 32
@load_image_lzo.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@load_image_lzo.__key.101 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"image_decompress/%u\00", [44 x i8] zeroinitializer }, align 32
@load_image_lzo._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.96, ptr @.str.2, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013PM: Cannot start decompression threads\0A\00", [54 x i8] zeroinitializer }, align 32
@load_image_lzo._entry_ptr.105 = internal global ptr @load_image_lzo._entry.103, section ".printk_index", align 4
@load_image_lzo.__key.106 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@load_image_lzo.__key.107 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@load_image_lzo._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.96, ptr @.str.2, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@load_image_lzo._entry_ptr.109 = internal global ptr @load_image_lzo._entry.108, section ".printk_index", align 4
@load_image_lzo._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.96, ptr @.str.2, i32 1279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013PM: Failed to allocate LZO pages\0A\00", [60 x i8] zeroinitializer }, align 32
@load_image_lzo._entry_ptr.112 = internal global ptr @load_image_lzo._entry.110, section ".printk_index", align 4
@load_image_lzo._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.96, ptr @.str.2, i32 1289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016PM: Using %u thread(s) for decompression\0A\00", [52 x i8] zeroinitializer }, align 32
@load_image_lzo._entry_ptr.115 = internal global ptr @load_image_lzo._entry.113, section ".printk_index", align 4
@load_image_lzo._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.96, ptr @.str.2, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016PM: Loading and decompressing image data (%u pages)...\0A\00", [38 x i8] zeroinitializer }, align 32
@load_image_lzo._entry_ptr.118 = internal global ptr @load_image_lzo._entry.116, section ".printk_index", align 4
@load_image_lzo._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.96, ptr @.str.2, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@load_image_lzo._entry_ptr.120 = internal global ptr @load_image_lzo._entry.119, section ".printk_index", align 4
@load_image_lzo._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.96, ptr @.str.2, i32 1402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013PM: LZO decompression failed\0A\00", [32 x i8] zeroinitializer }, align 32
@load_image_lzo._entry_ptr.123 = internal global ptr @load_image_lzo._entry.121, section ".printk_index", align 4
@load_image_lzo._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.96, ptr @.str.2, i32 1409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013PM: Invalid LZO uncompressed length\0A\00", [57 x i8] zeroinitializer }, align 32
@load_image_lzo._entry_ptr.126 = internal global ptr @load_image_lzo._entry.124, section ".printk_index", align 4
@load_image_lzo._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.96, ptr @.str.2, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@load_image_lzo._entry_ptr.128 = internal global ptr @load_image_lzo._entry.127, section ".printk_index", align 4
@load_image_lzo._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.96, ptr @.str.2, i32 1446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@load_image_lzo._entry_ptr.130 = internal global ptr @load_image_lzo._entry.129, section ".printk_index", align 4
@load_image_lzo._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.96, ptr @.str.2, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013PM: Invalid image CRC32!\0A\00", [36 x i8] zeroinitializer }, align 32
@load_image_lzo._entry_ptr.133 = internal global ptr @load_image_lzo._entry.131, section ".printk_index", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@hib_submit_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013PM: Adding page to bio failed at %llu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hib_submit_io\00", [18 x i8] zeroinitializer }, align 32
@hib_submit_io._entry_ptr = internal global ptr @hib_submit_io._entry, section ".printk_index", align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@hib_end_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\011PM: Read-error on swap-device (%u:%u:%Lu)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hib_end_io\00", [21 x i8] zeroinitializer }, align 32
@hib_end_io._entry_ptr = internal global ptr @hib_end_io._entry, section ".printk_index", align 4
@bio_first_bvec_all.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.138 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/bio.h\00", [44 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.140 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Could not allocate memory for swsusp_header\0A\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"swsusp_extents\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 131, i32 23 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 925, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 930, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1511, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1513, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [16 x i8] c"hib_resume_bdev\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 226, i32 29 }
@___asan_gen_.183 = private unnamed_addr constant [14 x i8] c"swsusp_header\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 118, i32 30 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1537, i32 15 }
@___asan_gen_.189 = private unnamed_addr constant [26 x i8] c"swsusp_hardware_signature\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 39, i32 5 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1548, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1557, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1563, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1575, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1599, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [10 x i8] c"root_swap\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 225, i32 23 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 430, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 898, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 558, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 573, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 583, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 584, i32 46 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 238, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 709, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 716, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 723, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 732, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 733, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 735, i32 19 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 740, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 749, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 750, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 759, i32 13 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 762, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 773, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 774, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 795, i32 6 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 823, i32 5 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 830, i32 5 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 866, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 506, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 508, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 324, i32 14 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 325, i32 14 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 339, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant [20 x i8] c"clean_pages_on_read\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1077, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1095, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1105, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1110, i32 45 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1199, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1206, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1213, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant [26 x i8] c"clean_pages_on_decompress\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1224, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1225, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1227, i32 19 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1232, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1241, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1242, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1254, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1279, i32 5 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1289, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1290, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1351, i32 5 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1402, i32 5 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1409, i32 5 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1420, i32 6 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1446, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1453, i32 6 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 286, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 254, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant [23 x i8] c"../include/linux/bio.h\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 248, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 717, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.537 = private constant [23 x i8] c"../kernel/power/swap.c\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1616, i32 9 }
@llvm.compiler.used = appending global [176 x ptr] [ptr @__initcall__kmod_swap__321_1620_swsusp_header_init1, ptr @get_swap_writer._entry, ptr @get_swap_writer._entry_ptr, ptr @hib_end_io._entry, ptr @hib_end_io._entry_ptr, ptr @hib_submit_io._entry, ptr @hib_submit_io._entry_ptr, ptr @load_image._entry, ptr @load_image._entry.89, ptr @load_image._entry.92, ptr @load_image._entry_ptr, ptr @load_image._entry_ptr.91, ptr @load_image._entry_ptr.94, ptr @load_image_lzo._entry, ptr @load_image_lzo._entry.103, ptr @load_image_lzo._entry.108, ptr @load_image_lzo._entry.110, ptr @load_image_lzo._entry.113, ptr @load_image_lzo._entry.116, ptr @load_image_lzo._entry.119, ptr @load_image_lzo._entry.121, ptr @load_image_lzo._entry.124, ptr @load_image_lzo._entry.127, ptr @load_image_lzo._entry.129, ptr @load_image_lzo._entry.131, ptr @load_image_lzo._entry.97, ptr @load_image_lzo._entry.99, ptr @load_image_lzo._entry_ptr, ptr @load_image_lzo._entry_ptr.100, ptr @load_image_lzo._entry_ptr.105, ptr @load_image_lzo._entry_ptr.109, ptr @load_image_lzo._entry_ptr.112, ptr @load_image_lzo._entry_ptr.115, ptr @load_image_lzo._entry_ptr.118, ptr @load_image_lzo._entry_ptr.120, ptr @load_image_lzo._entry_ptr.123, ptr @load_image_lzo._entry_ptr.126, ptr @load_image_lzo._entry_ptr.128, ptr @load_image_lzo._entry_ptr.130, ptr @load_image_lzo._entry_ptr.133, ptr @load_image_lzo._entry_ptr.98, ptr @mark_swapfiles._entry, ptr @mark_swapfiles._entry_ptr, ptr @save_image._entry, ptr @save_image._entry.31, ptr @save_image._entry.34, ptr @save_image._entry_ptr, ptr @save_image._entry_ptr.33, ptr @save_image._entry_ptr.36, ptr @save_image_lzo._entry, ptr @save_image_lzo._entry.41, ptr @save_image_lzo._entry.44, ptr @save_image_lzo._entry.51, ptr @save_image_lzo._entry.59, ptr @save_image_lzo._entry.62, ptr @save_image_lzo._entry.65, ptr @save_image_lzo._entry.68, ptr @save_image_lzo._entry.70, ptr @save_image_lzo._entry.73, ptr @save_image_lzo._entry.76, ptr @save_image_lzo._entry_ptr, ptr @save_image_lzo._entry_ptr.43, ptr @save_image_lzo._entry_ptr.46, ptr @save_image_lzo._entry_ptr.53, ptr @save_image_lzo._entry_ptr.61, ptr @save_image_lzo._entry_ptr.64, ptr @save_image_lzo._entry_ptr.67, ptr @save_image_lzo._entry_ptr.69, ptr @save_image_lzo._entry_ptr.72, ptr @save_image_lzo._entry_ptr.75, ptr @save_image_lzo._entry_ptr.77, ptr @swap_writer_finish._entry, ptr @swap_writer_finish._entry.80, ptr @swap_writer_finish._entry_ptr, ptr @swap_writer_finish._entry_ptr.82, ptr @swsusp_check._entry, ptr @swsusp_check._entry_ptr, ptr @swsusp_unmark._entry, ptr @swsusp_unmark._entry_ptr, ptr @swsusp_write._entry, ptr @swsusp_write._entry.3, ptr @swsusp_write._entry_ptr, ptr @swsusp_write._entry_ptr.5, ptr @swsusp_extents, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @hib_resume_bdev, ptr @swsusp_header, ptr @.str.12, ptr @swsusp_hardware_signature, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @root_swap, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @hib_init_batch.__key, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @save_image_lzo.__key, ptr @.str.47, ptr @save_image_lzo.__key.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @save_image_lzo.__key.54, ptr @.str.55, ptr @save_image_lzo.__key.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.71, ptr @.str.74, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @clean_pages_on_read, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @clean_pages_on_decompress, ptr @load_image_lzo.__key, ptr @load_image_lzo.__key.101, ptr @.str.102, ptr @.str.104, ptr @load_image_lzo.__key.106, ptr @load_image_lzo.__key.107, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.122, ptr @.str.125, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140], section "llvm.metadata"
@0 = internal global [134 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swsusp_extents to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swsusp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swsusp_write._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hib_resume_bdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swsusp_header to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swsusp_hardware_signature to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swsusp_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swsusp_unmark._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_swap to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_swap_writer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hib_init_batch.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image_lzo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image_lzo._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image_lzo._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image_lzo.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image_lzo.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image_lzo._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image_lzo.__key.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image_lzo.__key.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image_lzo._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image_lzo._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image_lzo._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image_lzo._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image_lzo._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image_lzo._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_image_lzo._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_writer_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_writer_finish._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mark_swapfiles._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clean_pages_on_read to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clean_pages_on_decompress to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo.__key.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo.__key.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo.__key.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_image_lzo._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hib_submit_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hib_end_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @alloc_swapdev_block(i32 noundef %swap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_swap_page_of_type(i32 noundef %swap) #14
  %and.i = and i32 %call, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @swsusp_extents, align 4
  %tobool.not55.i = icmp eq ptr %0, null
  br i1 %tobool.not55.i, label %if.then.while.end.i_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i:                                     ; preds = %if.end14.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %1 = phi ptr [ %9, %if.end14.i.while.body.i_crit_edge ], [ %0, %if.then.while.body.i_crit_edge ]
  %start.i = getelementptr inbounds %struct.swsusp_extent, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and.i)
  %cmp.i = icmp ugt i32 %3, %and.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  %sub.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %and.i)
  %cmp2.i = icmp eq i32 %sub.i, %and.i
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %start.i.le = getelementptr inbounds %struct.swsusp_extent, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %start.i.le to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i, ptr %start.i.le, align 4
  br label %if.else

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2
  br label %if.end14.i

if.else.i:                                        ; preds = %while.body.i
  %end.i = getelementptr inbounds %struct.swsusp_extent, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %and.i)
  %cmp5.i = icmp ult i32 %6, %and.i
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i.if.then5_crit_edge

if.else.i.if.then5_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.then6.i:                                       ; preds = %if.else.i
  %add.i = add nuw i32 %6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %and.i)
  %cmp8.i = icmp eq i32 %add.i, %and.i
  br i1 %cmp8.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  %end.i.le = getelementptr inbounds %struct.swsusp_extent, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %end.i.le to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and.i, ptr %end.i.le, align 4
  br label %if.else

if.end11.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end11.i, %if.end.i
  %new.1.i = phi ptr [ %rb_left.i, %if.end.i ], [ %rb_right.i, %if.end11.i ]
  %8 = ptrtoint ptr %new.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %new.1.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end14.i.while.body.i_crit_edge

if.end14.i.while.body.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le.i = ptrtoint ptr %1 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.then.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.then.while.end.i_crit_edge ]
  %new.0.lcssa.i = phi ptr [ %new.1.i, %while.cond.while.end_crit_edge.i ], [ @swsusp_extents, %if.then.while.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 20) #17
  %tobool15.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool15.not.i, label %while.end.i.if.then5_crit_edge, label %if.end17.i

while.end.i.if.then5_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.end17.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %start18.i = getelementptr inbounds %struct.swsusp_extent, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %start18.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i, ptr %start18.i, align 4
  %end19.i = getelementptr inbounds %struct.swsusp_extent, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %end19.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i, ptr %end19.i, align 8
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rb_left.i.i, align 8
  %16 = ptrtoint ptr %new.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i, ptr %new.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @swsusp_extents) #14
  br label %if.else

if.then5:                                         ; preds = %while.end.i.if.then5_crit_edge, %if.else.i.if.then5_crit_edge
  %shl.i = shl i32 %swap, 26
  %or.i = or i32 %and.i, %shl.i
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %or.i, 0
  tail call void @swap_free([1 x i32] %.fca.0.insert) #14
  br label %cleanup

if.else:                                          ; preds = %if.end17.i, %if.then9.i, %if.then3.i
  %call10 = tail call i64 @swapdev_block(i32 noundef %swap, i32 noundef %and.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %call10, %if.else ], [ 0, %if.then5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_swap_page_of_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @swap_free([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @swapdev_block(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_all_swap_pages(i32 noundef %swap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @swsusp_extents, align 4
  %tobool.not9 = icmp eq ptr %0, null
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %shl.i = shl i32 %swap, 26
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %1 = phi ptr [ %0, %while.body.lr.ph ], [ %8, %for.end.while.body_crit_edge ]
  tail call void @rb_erase(ptr noundef nonnull %1, ptr noundef nonnull @swsusp_extents) #14
  %start = getelementptr inbounds %struct.swsusp_extent, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start, align 4
  %end = getelementptr inbounds %struct.swsusp_extent, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not7 = icmp ugt i32 %3, %5
  br i1 %cmp.not7, label %while.body.for.end_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body.for.body_crit_edge
  %offset.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %3, %while.body.for.body_crit_edge ]
  %and.i = and i32 %offset.08, 67108863
  %or.i = or i32 %and.i, %shl.i
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %or.i, 0
  tail call void @swap_free([1 x i32] %.fca.0.insert) #14
  %inc = add i32 %offset.08, 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  %cmp.not = icmp ugt i32 %inc, %7
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %while.body.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #14
  %8 = load ptr, ptr @swsusp_extents, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @swsusp_swap_in_use() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @swsusp_extents, align 4
  %cmp = icmp ne ptr %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @swsusp_write(i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %hb.i54 = alloca %struct.hib_bio_batch, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry263.i = alloca %struct.wait_queue_entry, align 4
  %hb.i = alloca %struct.hib_bio_batch, align 4
  %handle = alloca %struct.swap_map_handle, align 8
  %snapshot = alloca %struct.snapshot_handle, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %handle) #14
  %0 = call ptr @memset(ptr %handle, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %snapshot) #14
  %1 = ptrtoint ptr %snapshot to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %snapshot, align 4, !annotation !269
  %2 = getelementptr inbounds %struct.snapshot_handle, ptr %snapshot, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !269
  %4 = getelementptr inbounds %struct.snapshot_handle, ptr %snapshot, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !269
  %call = tail call i32 @snapshot_get_image_size() #14
  %call1 = call fastcc i32 @get_swap_writer(ptr noundef nonnull %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end14_crit_edge, label %if.then4

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then4:                                         ; preds = %if.end
  %6 = load i16, ptr @root_swap, align 2
  %conv.i = zext i16 %6 to i32
  %call.i = tail call i32 @count_swap_pages(i32 noundef %conv.i, i32 noundef 1) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enough_swap.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@swsusp_write, %enough_swap.exit)) #14
          to label %if.then.i [label %enough_swap.exit], !srcloc !270

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @enough_swap.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.28, i32 noundef %call.i) #14
  br label %enough_swap.exit

enough_swap.exit:                                 ; preds = %if.then.i, %if.then4
  %add.i = add i32 %call, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add.i)
  %cmp.i.not = icmp ugt i32 %call.i, %add.i
  br i1 %cmp.i.not, label %enough_swap.exit.if.end14_crit_edge, label %do.end10

enough_swap.exit.if.end14_crit_edge:              ; preds = %enough_swap.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

do.end10:                                         ; preds = %enough_swap.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #18
  br label %out_finish

if.end14:                                         ; preds = %enough_swap.exit.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %7 = call ptr @memset(ptr %snapshot, i32 0, i32 12)
  %call15 = call i32 @snapshot_read_next(ptr noundef nonnull %snapshot) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call15)
  %cmp = icmp slt i32 %call15, 4096
  br i1 %cmp, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15)
  %cmp17 = icmp sgt i32 %call15, -1
  %spec.store.select = select i1 %cmp17, i32 -14, i32 %call15
  br label %out_finish

if.end20:                                         ; preds = %if.end14
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end20.out_finish_crit_edge, label %if.end.i

if.end20.out_finish_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish

if.end.i:                                         ; preds = %if.end20
  %12 = load i16, ptr @root_swap, align 2
  %conv.i45 = zext i16 %12 to i32
  %call.i46 = call i64 @alloc_swapdev_block(i32 noundef %conv.i45) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i46)
  %tobool.not.i75 = icmp eq i64 %call.i46, 0
  br i1 %tobool.not.i75, label %if.end.i.out_finish_crit_edge, label %write_page.exit81

if.end.i.out_finish_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish

write_page.exit81:                                ; preds = %if.end.i
  %conv.i77 = trunc i64 %call.i46 to i32
  %call52.i78 = call fastcc i32 @hib_submit_io(i32 noundef 1, i32 noundef 2048, i32 noundef %conv.i77, ptr noundef %9, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i78)
  %tobool2.not.i = icmp eq i32 %call52.i78, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %write_page.exit81.out_finish_crit_edge

write_page.exit81.out_finish_crit_edge:           ; preds = %write_page.exit81
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish

if.end4.i:                                        ; preds = %write_page.exit81
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handle, align 8
  %k.i = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 4
  %15 = ptrtoint ptr %k.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %k.i, align 8
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %k.i, align 8
  %arrayidx.i = getelementptr [511 x i64], ptr %14, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call.i46, ptr %arrayidx.i, align 8
  %18 = load i32, ptr %k.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %18)
  %cmp.i47 = icmp ugt i32 %18, 510
  br i1 %cmp.i47, label %if.then8.i, label %if.end4.i.if.then23_crit_edge

if.end4.i.if.then23_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23

if.then8.i:                                       ; preds = %if.end4.i
  %19 = load i16, ptr @root_swap, align 2
  %conv9.i = zext i16 %19 to i32
  %call10.i = call i64 @alloc_swapdev_block(i32 noundef %conv9.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call10.i)
  %tobool11.not.i = icmp eq i64 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then8.i.out_finish_crit_edge, label %if.end13.i

if.then8.i.out_finish_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish

if.end13.i:                                       ; preds = %if.then8.i
  %20 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle, align 8
  %next_swap.i = getelementptr inbounds %struct.swap_map_page, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %next_swap.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %call10.i, ptr %next_swap.i, align 8
  %cur_swap.i = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 2
  %23 = ptrtoint ptr %cur_swap.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %cur_swap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool.not.i70 = icmp eq i64 %24, 0
  br i1 %tobool.not.i70, label %if.end13.i.out_finish_crit_edge, label %write_page.exit

if.end13.i.out_finish_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish

write_page.exit:                                  ; preds = %if.end13.i
  %conv.i72 = trunc i64 %24 to i32
  %call52.i = call fastcc i32 @hib_submit_io(i32 noundef 1, i32 noundef 2048, i32 noundef %conv.i72, ptr noundef %21, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool17.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %write_page.exit.out_finish_crit_edge

write_page.exit.out_finish_crit_edge:             ; preds = %write_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish

if.end19.i:                                       ; preds = %write_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handle, align 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 4096)
  %28 = ptrtoint ptr %cur_swap.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call10.i, ptr %cur_swap.i, align 8
  %29 = ptrtoint ptr %k.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %k.i, align 8
  br label %if.then23

if.then23:                                        ; preds = %if.end19.i, %if.end4.i.if.then23_crit_edge
  %sub27 = add i32 %call, -1
  br i1 %tobool3.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then23
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %hb.i) #14
  %30 = call ptr @memset(ptr %hb.i, i32 255, i32 84)
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hb.i, i32 noundef 4) #14
  %31 = ptrtoint ptr %hb.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %hb.i, align 4
  %wait.i.i = getelementptr inbounds %struct.hib_bio_batch, ptr %hb.i, i32 0, i32 1
  call void @__init_waitqueue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @hib_init_batch.__key) #14
  %error.i.i = getelementptr inbounds %struct.hib_bio_batch, ptr %hb.i, i32 0, i32 2
  %32 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %error.i.i, align 4
  %plug.i.i = getelementptr inbounds %struct.hib_bio_batch, ptr %hb.i, i32 0, i32 3
  call void @blk_start_plug(ptr noundef %plug.i.i) #14
  %call.i48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %sub27) #18
  %div.i = udiv i32 %sub27, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub27)
  %33 = icmp ult i32 %sub27, 10
  %spec.store.select.i = select i1 %33, i32 1, i32 %div.i
  %call1.i49 = call i64 @ktime_get() #14
  %call243.i = call i32 @snapshot_read_next(ptr noundef nonnull %snapshot) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call243.i)
  %cmp44.i = icmp slt i32 %call243.i, 1
  br i1 %cmp44.i, label %cond.true.while.end.i_crit_edge, label %cond.true.if.end4.i50_crit_edge

cond.true.if.end4.i50_crit_edge:                  ; preds = %cond.true
  br label %if.end4.i50

cond.true.while.end.i_crit_edge:                  ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end4.i50:                                      ; preds = %if.end17.i.if.end4.i50_crit_edge, %cond.true.if.end4.i50_crit_edge
  %nr_pages.045.i = phi i32 [ %inc.i52, %if.end17.i.if.end4.i50_crit_edge ], [ 0, %cond.true.if.end4.i50_crit_edge ]
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %2, align 4
  %call5.i = call fastcc i32 @swap_write_page(ptr noundef nonnull %handle, ptr noundef %35, ptr noundef nonnull %hb.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i50.while.end.i_crit_edge

if.end4.i50.while.end.i_crit_edge:                ; preds = %if.end4.i50
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end8.i:                                        ; preds = %if.end4.i50
  %nr_pages.045.i.frozen = freeze i32 %nr_pages.045.i
  %spec.store.select.i.frozen = freeze i32 %spec.store.select.i
  %div15.i = udiv i32 %nr_pages.045.i.frozen, %spec.store.select.i.frozen
  %36 = mul i32 %div15.i, %spec.store.select.i.frozen
  %rem.i.decomposed = sub i32 %nr_pages.045.i.frozen, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool9.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool9.not.i, label %do.end13.i, label %if.end8.i.if.end17.i_crit_edge

if.end8.i.if.end17.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

do.end13.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i = mul i32 %div15.i, 10
  %call16.i51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %mul.i) #18
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end13.i, %if.end8.i.if.end17.i_crit_edge
  %inc.i52 = add i32 %nr_pages.045.i, 1
  %call2.i = call i32 @snapshot_read_next(ptr noundef nonnull %snapshot) #14
  %cmp.i53 = icmp slt i32 %call2.i, 1
  br i1 %cmp.i53, label %if.end17.i.while.end.i_crit_edge, label %if.end17.i.if.end4.i50_crit_edge

if.end17.i.if.end4.i50_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i50

if.end17.i.while.end.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %if.end17.i.while.end.i_crit_edge, %if.end4.i50.while.end.i_crit_edge, %cond.true.while.end.i_crit_edge
  %ret.0.i = phi i32 [ %call243.i, %cond.true.while.end.i_crit_edge ], [ %call2.i, %if.end17.i.while.end.i_crit_edge ], [ %call5.i, %if.end4.i50.while.end.i_crit_edge ]
  %call18.i = call fastcc i32 @hib_wait_io(ptr noundef nonnull %hb.i) #14
  call void @blk_finish_plug(ptr noundef %plug.i.i) #14
  %call19.i = call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool20.not.i = icmp eq i32 %ret.0.i, 0
  %spec.select.i = select i1 %tobool20.not.i, i32 %call18.i, i32 %ret.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool23.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool23.not.i, label %do.end27.i, label %while.end.i.save_image.exit_crit_edge

while.end.i.save_image.exit_crit_edge:            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %save_image.exit

do.end27.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #18
  br label %save_image.exit

save_image.exit:                                  ; preds = %do.end27.i, %while.end.i.save_image.exit_crit_edge
  call void @swsusp_show_speed(i64 noundef %call1.i49, i64 noundef %call19.i, i32 noundef %sub27, ptr noundef nonnull @.str.37) #14
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %hb.i) #14
  br label %out_finish

cond.false:                                       ; preds = %if.then23
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %hb.i54) #14
  %37 = call ptr @memset(ptr %hb.i54, i32 255, i32 84)
  %call.i.i.i.i55 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hb.i54, i32 noundef 4) #14
  %38 = ptrtoint ptr %hb.i54 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 0, ptr %hb.i54, align 4
  %wait.i.i56 = getelementptr inbounds %struct.hib_bio_batch, ptr %hb.i54, i32 0, i32 1
  call void @__init_waitqueue_head(ptr noundef %wait.i.i56, ptr noundef nonnull @.str.38, ptr noundef nonnull @hib_init_batch.__key) #14
  %error.i.i57 = getelementptr inbounds %struct.hib_bio_batch, ptr %hb.i54, i32 0, i32 2
  %39 = ptrtoint ptr %error.i.i57 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %error.i.i57, align 4
  %plug.i.i58 = getelementptr inbounds %struct.hib_bio_batch, ptr %hb.i54, i32 0, i32 3
  call void @blk_start_plug(ptr noundef %plug.i.i58) #14
  %call.i.i.i490.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %40 = load volatile i32, ptr @__num_online_cpus, align 4
  %sub.i = add i32 %40, -1
  %41 = call i32 @llvm.umax.i32(i32 %sub.i, i32 1) #14
  %42 = call i32 @llvm.umin.i32(i32 %41, i32 3) #14
  %call7.i = call i32 @__get_free_pages(i32 noundef 3104, i32 noundef 0) #14
  %43 = inttoptr i32 %call7.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i59 = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i59, label %cond.false.out_clean.thread.i_crit_edge, label %if.end.i60

cond.false.out_clean.thread.i_crit_edge:          ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_clean.thread.i

if.end.i60:                                       ; preds = %cond.false
  %44 = mul nuw nsw i32 %42, 290944
  %call11.i = call noalias ptr @vzalloc(i32 noundef %44) #19
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.end.i60.out_clean.thread.i_crit_edge, label %if.end19.i61

if.end.i60.out_clean.thread.i_crit_edge:          ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_clean.thread.i

if.end19.i61:                                     ; preds = %if.end.i60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 148) #17
  %tobool21.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool21.not.i, label %if.end19.i61.out_clean.thread.i_crit_edge, label %do.body30.i

if.end19.i61.out_clean.thread.i_crit_edge:        ; preds = %if.end19.i61
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_clean.thread.i

do.body30.i:                                      ; preds = %if.end19.i61
  %go.i = getelementptr %struct.cmp_data, ptr %call11.i, i32 0, i32 4
  call void @__init_waitqueue_head(ptr noundef %go.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @save_image_lzo.__key) #14
  %done.i = getelementptr %struct.cmp_data, ptr %call11.i, i32 0, i32 5
  call void @__init_waitqueue_head(ptr noundef %done.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @save_image_lzo.__key.48) #14
  %call38.i = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @lzo_compress_threadfn, ptr noundef %call11.i, i32 noundef -1, ptr noundef nonnull @.str.50, i32 noundef 0) #14
  %cmp.i.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body30.i.if.then49.i_crit_edge, label %for.inc.i

do.body30.i.if.then49.i_crit_edge:                ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then49.i

if.then49.i:                                      ; preds = %do.body30.i.2.if.then49.i_crit_edge, %do.body30.i.1.if.then49.i_crit_edge, %do.body30.i.if.then49.i_crit_edge
  %arrayidx.i62.lcssa = phi ptr [ %call11.i, %do.body30.i.if.then49.i_crit_edge ], [ %arrayidx.i62.1, %do.body30.i.1.if.then49.i_crit_edge ], [ %arrayidx.i62.2, %do.body30.i.2.if.then49.i_crit_edge ]
  %46 = ptrtoint ptr %arrayidx.i62.lcssa to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx.i62.lcssa, align 4
  %call56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #18
  br label %out_clean.i

for.inc.i:                                        ; preds = %do.body30.i
  %call41.i = call i32 @wake_up_process(ptr noundef %call38.i) #14
  %47 = ptrtoint ptr %call11.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call38.i, ptr %call11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %exitcond.not.i = icmp eq i32 %42, 1
  br i1 %exitcond.not.i, label %for.inc.i.for.body70.preheader.i_crit_edge, label %do.body30.i.1

for.inc.i.for.body70.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body70.preheader.i

do.body30.i.1:                                    ; preds = %for.inc.i
  %arrayidx.i62.1 = getelementptr %struct.cmp_data, ptr %call11.i, i32 1
  %go.i.1 = getelementptr %struct.cmp_data, ptr %call11.i, i32 1, i32 4
  call void @__init_waitqueue_head(ptr noundef %go.i.1, ptr noundef nonnull @.str.47, ptr noundef nonnull @save_image_lzo.__key) #14
  %done.i.1 = getelementptr %struct.cmp_data, ptr %call11.i, i32 1, i32 5
  call void @__init_waitqueue_head(ptr noundef %done.i.1, ptr noundef nonnull @.str.49, ptr noundef nonnull @save_image_lzo.__key.48) #14
  %call38.i.1 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @lzo_compress_threadfn, ptr noundef %arrayidx.i62.1, i32 noundef -1, ptr noundef nonnull @.str.50, i32 noundef 1) #14
  %cmp.i.i.1 = icmp ugt ptr %call38.i.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.1, label %do.body30.i.1.if.then49.i_crit_edge, label %for.inc.i.1

do.body30.i.1.if.then49.i_crit_edge:              ; preds = %do.body30.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then49.i

for.inc.i.1:                                      ; preds = %do.body30.i.1
  %call41.i.1 = call i32 @wake_up_process(ptr noundef %call38.i.1) #14
  %48 = ptrtoint ptr %arrayidx.i62.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call38.i.1, ptr %arrayidx.i62.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %exitcond.not.i.1 = icmp eq i32 %42, 2
  br i1 %exitcond.not.i.1, label %for.inc.i.1.for.body70.preheader.i_crit_edge, label %do.body30.i.2

for.inc.i.1.for.body70.preheader.i_crit_edge:     ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body70.preheader.i

do.body30.i.2:                                    ; preds = %for.inc.i.1
  %arrayidx.i62.2 = getelementptr %struct.cmp_data, ptr %call11.i, i32 2
  %go.i.2 = getelementptr %struct.cmp_data, ptr %call11.i, i32 2, i32 4
  call void @__init_waitqueue_head(ptr noundef %go.i.2, ptr noundef nonnull @.str.47, ptr noundef nonnull @save_image_lzo.__key) #14
  %done.i.2 = getelementptr %struct.cmp_data, ptr %call11.i, i32 2, i32 5
  call void @__init_waitqueue_head(ptr noundef %done.i.2, ptr noundef nonnull @.str.49, ptr noundef nonnull @save_image_lzo.__key.48) #14
  %call38.i.2 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @lzo_compress_threadfn, ptr noundef %arrayidx.i62.2, i32 noundef -1, ptr noundef nonnull @.str.50, i32 noundef 2) #14
  %cmp.i.i.2 = icmp ugt ptr %call38.i.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.2, label %do.body30.i.2.if.then49.i_crit_edge, label %for.inc.i.2

do.body30.i.2.if.then49.i_crit_edge:              ; preds = %do.body30.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then49.i

for.inc.i.2:                                      ; preds = %do.body30.i.2
  call void @__sanitizer_cov_trace_pc() #16
  %call41.i.2 = call i32 @wake_up_process(ptr noundef %call38.i.2) #14
  %49 = ptrtoint ptr %arrayidx.i62.2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call38.i.2, ptr %arrayidx.i62.2, align 4
  br label %for.body70.preheader.i

for.body70.preheader.i:                           ; preds = %for.inc.i.2, %for.inc.i.1.for.body70.preheader.i_crit_edge, %for.inc.i.for.body70.preheader.i_crit_edge
  %go59.i = getelementptr inbounds %struct.crc_data, ptr %call7.i.i.i, i32 0, i32 4
  call void @__init_waitqueue_head(ptr noundef %go59.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @save_image_lzo.__key.54) #14
  %done63.i = getelementptr inbounds %struct.crc_data, ptr %call7.i.i.i, i32 0, i32 5
  call void @__init_waitqueue_head(ptr noundef %done63.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @save_image_lzo.__key.56) #14
  %crc32.i = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 6
  %50 = ptrtoint ptr %crc32.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %crc32.i, align 8
  %crc3267.i = getelementptr inbounds %struct.crc_data, ptr %call7.i.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %crc3267.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %crc32.i, ptr %crc3267.i, align 8
  %unc.i = getelementptr %struct.cmp_data, ptr %call11.i, i32 0, i32 8
  %arrayidx73.i = getelementptr %struct.crc_data, ptr %call7.i.i.i, i32 0, i32 8, i32 0
  %52 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %unc.i, ptr %arrayidx73.i, align 8
  %unc_len.i = getelementptr %struct.cmp_data, ptr %call11.i, i32 0, i32 6
  %arrayidx76.i = getelementptr %struct.crc_data, ptr %call7.i.i.i, i32 0, i32 7, i32 0
  %53 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %unc_len.i, ptr %arrayidx76.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %exitcond579.not.i = icmp eq i32 %42, 1
  br i1 %exitcond579.not.i, label %for.body70.preheader.i.for.end79.i_crit_edge, label %for.body70.i.1

for.body70.preheader.i.for.end79.i_crit_edge:     ; preds = %for.body70.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end79.i

for.body70.i.1:                                   ; preds = %for.body70.preheader.i
  %unc.i.1 = getelementptr %struct.cmp_data, ptr %call11.i, i32 1, i32 8
  %arrayidx73.i.1 = getelementptr %struct.crc_data, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %arrayidx73.i.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %unc.i.1, ptr %arrayidx73.i.1, align 4
  %unc_len.i.1 = getelementptr %struct.cmp_data, ptr %call11.i, i32 1, i32 6
  %arrayidx76.i.1 = getelementptr %struct.crc_data, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %55 = ptrtoint ptr %arrayidx76.i.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %unc_len.i.1, ptr %arrayidx76.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %exitcond579.not.i.1 = icmp eq i32 %42, 2
  br i1 %exitcond579.not.i.1, label %for.body70.i.1.for.end79.i_crit_edge, label %for.body70.i.2

for.body70.i.1.for.end79.i_crit_edge:             ; preds = %for.body70.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end79.i

for.body70.i.2:                                   ; preds = %for.body70.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %unc.i.2 = getelementptr %struct.cmp_data, ptr %call11.i, i32 2, i32 8
  %arrayidx73.i.2 = getelementptr %struct.crc_data, ptr %call7.i.i.i, i32 0, i32 8, i32 2
  %56 = ptrtoint ptr %arrayidx73.i.2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %unc.i.2, ptr %arrayidx73.i.2, align 8
  %unc_len.i.2 = getelementptr %struct.cmp_data, ptr %call11.i, i32 2, i32 6
  %arrayidx76.i.2 = getelementptr %struct.crc_data, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %57 = ptrtoint ptr %arrayidx76.i.2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %unc_len.i.2, ptr %arrayidx76.i.2, align 4
  br label %for.end79.i

for.end79.i:                                      ; preds = %for.body70.i.2, %for.body70.i.1.for.end79.i_crit_edge, %for.body70.preheader.i.for.end79.i_crit_edge
  %call81.i = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @crc32_threadfn, ptr noundef nonnull %call7.i.i.i, i32 noundef -1, ptr noundef nonnull @.str.58) #14
  %cmp.i492.i = icmp ugt ptr %call81.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i492.i, label %if.then90.i, label %if.end97.i

if.then90.i:                                      ; preds = %for.end79.i
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %call7.i.i.i, align 8
  %call96.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #18
  br label %out_clean.i

if.end97.i:                                       ; preds = %for.end79.i
  %call84.i = call i32 @wake_up_process(ptr noundef %call81.i) #14
  %59 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call81.i, ptr %call7.i.i.i, align 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vm_zone_stat, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_zone_stat to i32))
  %60 = load volatile i32, ptr @vm_zone_stat, align 4
  %61 = call i32 @llvm.smax.i32(i32 %60, i32 0) #14
  %call.i.i.i494.i = call i32 @__nr_free_highpages() #14
  %sub.i.i.i = sub i32 %61, %call.i.i.i494.i
  %div1.i.i = lshr i32 %sub.i.i.i, 1
  %reqd_free_pages.i = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 5
  %62 = ptrtoint ptr %reqd_free_pages.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div1.i.i, ptr %reqd_free_pages.i, align 4
  %call103.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %42) #18
  %call108.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %sub27) #18
  %div.i64 = udiv i32 %sub27, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub27)
  %63 = icmp ult i32 %sub27, 10
  %spec.store.select.i65 = select i1 %63, i32 1, i32 %div.i64
  %call112.i = call i64 @ktime_get() #14
  %run_threads156.i = getelementptr inbounds %struct.crc_data, ptr %call7.i.i.i, i32 0, i32 3
  %ready157.i = getelementptr inbounds %struct.crc_data, ptr %call7.i.i.i, i32 0, i32 1
  %stop258.i = getelementptr inbounds %struct.crc_data, ptr %call7.i.i.i, i32 0, i32 2
  br label %for.cond117.preheader.i

for.cond117.preheader.i:                          ; preds = %for.cond117.preheader.i.backedge, %if.end97.i
  %nr_pages.1541.i = phi i32 [ 0, %if.end97.i ], [ %nr_pages.1541.i.be, %for.cond117.preheader.i.backedge ]
  %thr.2539.i = phi i32 [ 0, %if.end97.i ], [ %thr.2539.i.be, %for.cond117.preheader.i.backedge ]
  %unc128.i = getelementptr %struct.cmp_data, ptr %call11.i, i32 %thr.2539.i, i32 8
  %64 = add i32 %nr_pages.1541.i, 32
  br label %for.body119.i

for.body119.i:                                    ; preds = %if.end138.i.for.body119.i_crit_edge, %for.cond117.preheader.i
  %nr_pages.2536.i = phi i32 [ %nr_pages.1541.i, %for.cond117.preheader.i ], [ %inc139.i, %if.end138.i.for.body119.i_crit_edge ]
  %off.0535.i = phi i32 [ 0, %for.cond117.preheader.i ], [ %add.i69, %if.end138.i.for.body119.i_crit_edge ]
  %call120.i = call i32 @snapshot_read_next(ptr noundef nonnull %snapshot) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %cmp121.i = icmp slt i32 %call120.i, 0
  br i1 %cmp121.i, label %for.body119.i.out_finish.i_crit_edge, label %if.end123.i

for.body119.i.out_finish.i_crit_edge:             ; preds = %for.body119.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish.i

if.end123.i:                                      ; preds = %for.body119.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %tobool124.not.i = icmp eq i32 %call120.i, 0
  br i1 %tobool124.not.i, label %for.end141.i, label %if.end126.i

if.end126.i:                                      ; preds = %if.end123.i
  %add.ptr.i = getelementptr i8, ptr %unc128.i, i32 %off.0535.i
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %2, align 4
  %67 = call ptr @memcpy(ptr %add.ptr.i, ptr %66, i32 4096)
  %nr_pages.2536.i.frozen = freeze i32 %nr_pages.2536.i
  %spec.store.select.i65.frozen = freeze i32 %spec.store.select.i65
  %div136.i = udiv i32 %nr_pages.2536.i.frozen, %spec.store.select.i65.frozen
  %68 = mul i32 %div136.i, %spec.store.select.i65.frozen
  %rem.i67.decomposed = sub i32 %nr_pages.2536.i.frozen, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i67.decomposed)
  %tobool130.not.i = icmp eq i32 %rem.i67.decomposed, 0
  br i1 %tobool130.not.i, label %do.end134.i, label %if.end126.i.if.end138.i_crit_edge

if.end126.i.if.end138.i_crit_edge:                ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end138.i

do.end134.i:                                      ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i68 = mul i32 %div136.i, 10
  %call137.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %mul.i68) #18
  br label %if.end138.i

if.end138.i:                                      ; preds = %do.end134.i, %if.end126.i.if.end138.i_crit_edge
  %inc139.i = add i32 %nr_pages.2536.i, 1
  %add.i69 = add nuw nsw i32 %off.0535.i, 4096
  %exitcond580.not.i = icmp eq i32 %inc139.i, %64
  br i1 %exitcond580.not.i, label %if.end138.i.if.end144.i_crit_edge, label %if.end138.i.for.body119.i_crit_edge

if.end138.i.for.body119.i_crit_edge:              ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body119.i

if.end138.i.if.end144.i_crit_edge:                ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end144.i

for.end141.i:                                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off.0535.i)
  %tobool142.not.i = icmp eq i32 %off.0535.i, 0
  br i1 %tobool142.not.i, label %for.end141.i.for.end152.i_crit_edge, label %for.end141.i.if.end144.i_crit_edge

for.end141.i.if.end144.i_crit_edge:               ; preds = %for.end141.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end144.i

for.end141.i.for.end152.i_crit_edge:              ; preds = %for.end141.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end152.i

if.end144.i:                                      ; preds = %for.end141.i.if.end144.i_crit_edge, %if.end138.i.if.end144.i_crit_edge
  %off.0519.i = phi i32 [ %off.0535.i, %for.end141.i.if.end144.i_crit_edge ], [ 131072, %if.end138.i.if.end144.i_crit_edge ]
  %nr_pages.2516.i = phi i32 [ %nr_pages.2536.i, %for.end141.i.if.end144.i_crit_edge ], [ %64, %if.end138.i.if.end144.i_crit_edge ]
  %unc_len146.i = getelementptr %struct.cmp_data, ptr %call11.i, i32 %thr.2539.i, i32 6
  %69 = ptrtoint ptr %unc_len146.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %off.0519.i, ptr %unc_len146.i, align 4
  %ready.i = getelementptr %struct.cmp_data, ptr %call11.i, i32 %thr.2539.i, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ready.i, i32 noundef 4) #14
  %70 = ptrtoint ptr %ready.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 1, ptr %ready.i, align 4
  %go149.i = getelementptr %struct.cmp_data, ptr %call11.i, i32 %thr.2539.i, i32 4
  call void @__wake_up(ptr noundef %go149.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %inc151.i = add nuw nsw i32 %thr.2539.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc151.i, i32 %42)
  %exitcond581.not.i = icmp eq i32 %inc151.i, %42
  br i1 %exitcond581.not.i, label %if.end144.i.for.end152.i_crit_edge, label %if.end144.i.for.cond117.preheader.i.backedge_crit_edge

if.end144.i.for.cond117.preheader.i.backedge_crit_edge: ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond117.preheader.i.backedge

if.end144.i.for.end152.i_crit_edge:               ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end152.i

for.cond117.preheader.i.backedge:                 ; preds = %do.end282.i, %if.end144.i.for.cond117.preheader.i.backedge_crit_edge
  %nr_pages.1541.i.be = phi i32 [ %nr_pages.2516.i, %if.end144.i.for.cond117.preheader.i.backedge_crit_edge ], [ %nr_pages.3.ph.i, %do.end282.i ]
  %thr.2539.i.be = phi i32 [ %inc151.i, %if.end144.i.for.cond117.preheader.i.backedge_crit_edge ], [ 0, %do.end282.i ]
  br label %for.cond117.preheader.i

for.end152.i:                                     ; preds = %if.end144.i.for.end152.i_crit_edge, %for.end141.i.for.end152.i_crit_edge
  %call120.i107 = phi i32 [ %call120.i, %if.end144.i.for.end152.i_crit_edge ], [ 0, %for.end141.i.for.end152.i_crit_edge ]
  %thr.2.lcssa.ph.i = phi i32 [ %42, %if.end144.i.for.end152.i_crit_edge ], [ %thr.2539.i, %for.end141.i.for.end152.i_crit_edge ]
  %nr_pages.3.ph.i = phi i32 [ %nr_pages.2516.i, %if.end144.i.for.end152.i_crit_edge ], [ %nr_pages.2536.i, %for.end141.i.for.end152.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %thr.2.lcssa.ph.i)
  %tobool153.not.i = icmp eq i32 %thr.2.lcssa.ph.i, 0
  br i1 %tobool153.not.i, label %for.end152.i.out_finish.i_crit_edge, label %if.end155.i

for.end152.i.out_finish.i_crit_edge:              ; preds = %for.end152.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish.i

if.end155.i:                                      ; preds = %for.end152.i
  %71 = ptrtoint ptr %run_threads156.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %thr.2.lcssa.ph.i, ptr %run_threads156.i, align 4
  %call.i.i483.i = call zeroext i1 @__kasan_check_write(ptr noundef %ready157.i, i32 noundef 4) #14
  %72 = ptrtoint ptr %ready157.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 1, ptr %ready157.i, align 4
  call void @__wake_up(ptr noundef %go59.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %do.body163.i

do.body163.i:                                     ; preds = %for.inc248.i.do.body163.i_crit_edge, %if.end155.i
  %thr.3556.i = phi i32 [ 0, %if.end155.i ], [ %inc249.i, %for.inc248.i.do.body163.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 817) #14
  %stop170.i = getelementptr %struct.cmp_data, ptr %call11.i, i32 %thr.3556.i, i32 2
  %call.i.i484.i = call zeroext i1 @__kasan_check_read(ptr noundef %stop170.i, i32 noundef 4) #14
  %73 = ptrtoint ptr %stop170.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %stop170.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool172.not.i = icmp eq i32 %74, 0
  br i1 %tobool172.not.i, label %if.end174.i, label %do.body163.i.do.end190.i_crit_edge

do.body163.i.do.end190.i_crit_edge:               ; preds = %do.body163.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end190.i

if.end174.i:                                      ; preds = %do.body163.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  %75 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #14
  %done177.i = getelementptr %struct.cmp_data, ptr %call11.i, i32 %thr.3556.i, i32 5
  %call178547.i = call i32 @prepare_to_wait_event(ptr noundef %done177.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #14
  %call.i.i485548.i = call zeroext i1 @__kasan_check_read(ptr noundef %stop170.i, i32 noundef 4) #14
  %76 = ptrtoint ptr %stop170.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %stop170.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool182.not549.i = icmp eq i32 %77, 0
  br i1 %tobool182.not549.i, label %if.end174.i.cleanup.i_crit_edge, label %if.end174.i.for.end185.i_crit_edge

if.end174.i.for.end185.i_crit_edge:               ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end185.i

if.end174.i.cleanup.i_crit_edge:                  ; preds = %if.end174.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end174.i.cleanup.i_crit_edge
  call void @schedule() #14
  %call178.i = call i32 @prepare_to_wait_event(ptr noundef %done177.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #14
  %call.i.i485.i = call zeroext i1 @__kasan_check_read(ptr noundef %stop170.i, i32 noundef 4) #14
  %78 = ptrtoint ptr %stop170.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %stop170.i, align 4
  %tobool182.not.i = icmp eq i32 %79, 0
  br i1 %tobool182.not.i, label %cleanup.i.cleanup.i_crit_edge, label %cleanup.i.for.end185.i_crit_edge

cleanup.i.for.end185.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end185.i

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

for.end185.i:                                     ; preds = %cleanup.i.for.end185.i_crit_edge, %if.end174.i.for.end185.i_crit_edge
  call void @finish_wait(ptr noundef %done177.i, ptr noundef nonnull %__wq_entry.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  br label %do.end190.i

do.end190.i:                                      ; preds = %for.end185.i, %do.body163.i.do.end190.i_crit_edge
  %call.i.i486.i = call zeroext i1 @__kasan_check_write(ptr noundef %stop170.i, i32 noundef 4) #14
  %80 = ptrtoint ptr %stop170.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 0, ptr %stop170.i, align 4
  %ret194.i = getelementptr %struct.cmp_data, ptr %call11.i, i32 %thr.3556.i, i32 3
  %81 = ptrtoint ptr %ret194.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ret194.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp195.i = icmp slt i32 %82, 0
  br i1 %cmp195.i, label %do.end190.i.out_finish.sink.split.i_crit_edge, label %if.end202.i

do.end190.i.out_finish.sink.split.i_crit_edge:    ; preds = %do.end190.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish.sink.split.i

if.end202.i:                                      ; preds = %do.end190.i
  %cmp_len.i = getelementptr %struct.cmp_data, ptr %call11.i, i32 %thr.3556.i, i32 7
  %83 = ptrtoint ptr %cmp_len.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cmp_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool204.not.i = icmp eq i32 %84, 0
  br i1 %tobool204.not.i, label %if.end202.i.out_finish.sink.split.i_crit_edge, label %lor.rhs.i, !prof !271

if.end202.i.out_finish.sink.split.i_crit_edge:    ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish.sink.split.i

lor.rhs.i:                                        ; preds = %if.end202.i
  %unc_len208.i = getelementptr %struct.cmp_data, ptr %call11.i, i32 %thr.3556.i, i32 6
  %85 = ptrtoint ptr %unc_len208.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %unc_len208.i, align 4
  %div211481.i = lshr i32 %86, 4
  %add212.i = add i32 %86, 69
  %add215.i = add i32 %add212.i, %div211481.i
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %add215.i)
  %cmp216.i = icmp ugt i32 %84, %add215.i
  br i1 %cmp216.i, label %lor.rhs.i.out_finish.sink.split.i_crit_edge, label %if.end225.i, !prof !271

lor.rhs.i.out_finish.sink.split.i_crit_edge:      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish.sink.split.i

if.end225.i:                                      ; preds = %lor.rhs.i
  %cmp229.i = getelementptr %struct.cmp_data, ptr %call11.i, i32 %thr.3556.i, i32 9
  %87 = ptrtoint ptr %cmp229.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %84, ptr %cmp229.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %84)
  %cmp235552.not.i = icmp eq i32 %84, -4
  br i1 %cmp235552.not.i, label %if.end225.i.for.inc248.i_crit_edge, label %if.end225.i.for.body236.i_crit_edge

if.end225.i.for.body236.i_crit_edge:              ; preds = %if.end225.i
  br label %for.body236.i

if.end225.i.for.inc248.i_crit_edge:               ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc248.i

for.cond231.i:                                    ; preds = %for.body236.i
  %add246.i = add i32 %off.1553.i, 4096
  %88 = ptrtoint ptr %cmp_len.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cmp_len.i, align 4
  %add234.i = add i32 %89, 4
  %cmp235.i = icmp ult i32 %add246.i, %add234.i
  br i1 %cmp235.i, label %for.cond231.i.for.body236.i_crit_edge, label %for.cond231.i.for.inc248.i_crit_edge

for.cond231.i.for.inc248.i_crit_edge:             ; preds = %for.cond231.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc248.i

for.cond231.i.for.body236.i_crit_edge:            ; preds = %for.cond231.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body236.i

for.body236.i:                                    ; preds = %for.cond231.i.for.body236.i_crit_edge, %if.end225.i.for.body236.i_crit_edge
  %off.1553.i = phi i32 [ %add246.i, %for.cond231.i.for.body236.i_crit_edge ], [ 0, %if.end225.i.for.body236.i_crit_edge ]
  %add.ptr240.i = getelementptr i8, ptr %cmp229.i, i32 %off.1553.i
  %90 = call ptr @memcpy(ptr %43, ptr %add.ptr240.i, i32 4096)
  %call241.i = call fastcc i32 @swap_write_page(ptr noundef nonnull %handle, ptr noundef nonnull %43, ptr noundef nonnull %hb.i54) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241.i)
  %tobool242.not.i = icmp eq i32 %call241.i, 0
  br i1 %tobool242.not.i, label %for.cond231.i, label %for.body236.i.out_finish.i_crit_edge

for.body236.i.out_finish.i_crit_edge:             ; preds = %for.body236.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish.i

for.inc248.i:                                     ; preds = %for.cond231.i.for.inc248.i_crit_edge, %if.end225.i.for.inc248.i_crit_edge
  %inc249.i = add nuw nsw i32 %thr.3556.i, 1
  %exitcond582.not.i = icmp eq i32 %inc249.i, %thr.2.lcssa.ph.i
  br i1 %exitcond582.not.i, label %for.cond159.do.body252_crit_edge.i, label %for.inc248.i.do.body163.i_crit_edge

for.inc248.i.do.body163.i_crit_edge:              ; preds = %for.inc248.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body163.i

for.cond159.do.body252_crit_edge.i:               ; preds = %for.inc248.i
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 856) #14
  %call.i.i487.i = call zeroext i1 @__kasan_check_read(ptr noundef %stop258.i, i32 noundef 4) #14
  %91 = ptrtoint ptr %stop258.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %stop258.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool260.not.i = icmp eq i32 %92, 0
  br i1 %tobool260.not.i, label %if.end262.i, label %for.cond159.do.body252_crit_edge.i.do.end282.i_crit_edge

for.cond159.do.body252_crit_edge.i.do.end282.i_crit_edge: ; preds = %for.cond159.do.body252_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end282.i

if.end262.i:                                      ; preds = %for.cond159.do.body252_crit_edge.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry263.i) #14
  %93 = call ptr @memset(ptr %__wq_entry263.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry263.i, i32 noundef 0) #14
  %call268558.i = call i32 @prepare_to_wait_event(ptr noundef %done63.i, ptr noundef nonnull %__wq_entry263.i, i32 noundef 2) #14
  %call.i.i488559.i = call zeroext i1 @__kasan_check_read(ptr noundef %stop258.i, i32 noundef 4) #14
  %94 = ptrtoint ptr %stop258.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %stop258.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool271.not560.i = icmp eq i32 %95, 0
  br i1 %tobool271.not560.i, label %if.end262.i.cleanup274.i_crit_edge, label %if.end262.i.for.end277.i_crit_edge

if.end262.i.for.end277.i_crit_edge:               ; preds = %if.end262.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end277.i

if.end262.i.cleanup274.i_crit_edge:               ; preds = %if.end262.i
  br label %cleanup274.i

cleanup274.i:                                     ; preds = %cleanup274.i.cleanup274.i_crit_edge, %if.end262.i.cleanup274.i_crit_edge
  call void @schedule() #14
  %call268.i = call i32 @prepare_to_wait_event(ptr noundef %done63.i, ptr noundef nonnull %__wq_entry263.i, i32 noundef 2) #14
  %call.i.i488.i = call zeroext i1 @__kasan_check_read(ptr noundef %stop258.i, i32 noundef 4) #14
  %96 = ptrtoint ptr %stop258.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %stop258.i, align 8
  %tobool271.not.i = icmp eq i32 %97, 0
  br i1 %tobool271.not.i, label %cleanup274.i.cleanup274.i_crit_edge, label %cleanup274.i.for.end277.i_crit_edge

cleanup274.i.for.end277.i_crit_edge:              ; preds = %cleanup274.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end277.i

cleanup274.i.cleanup274.i_crit_edge:              ; preds = %cleanup274.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup274.i

for.end277.i:                                     ; preds = %cleanup274.i.for.end277.i_crit_edge, %if.end262.i.for.end277.i_crit_edge
  call void @finish_wait(ptr noundef %done63.i, ptr noundef nonnull %__wq_entry263.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry263.i) #14
  br label %do.end282.i

do.end282.i:                                      ; preds = %for.end277.i, %for.cond159.do.body252_crit_edge.i.do.end282.i_crit_edge
  %call.i.i489.i = call zeroext i1 @__kasan_check_write(ptr noundef %stop258.i, i32 noundef 4) #14
  %98 = ptrtoint ptr %stop258.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile i32 0, ptr %stop258.i, align 8
  br label %for.cond117.preheader.i.backedge

out_finish.sink.split.i:                          ; preds = %lor.rhs.i.out_finish.sink.split.i_crit_edge, %if.end202.i.out_finish.sink.split.i_crit_edge, %do.end190.i.out_finish.sink.split.i_crit_edge
  %.str.74.sink.i = phi ptr [ @.str.71, %do.end190.i.out_finish.sink.split.i_crit_edge ], [ @.str.74, %if.end202.i.out_finish.sink.split.i_crit_edge ], [ @.str.74, %lor.rhs.i.out_finish.sink.split.i_crit_edge ]
  %ret.7.ph.i = phi i32 [ %82, %do.end190.i.out_finish.sink.split.i_crit_edge ], [ -1, %if.end202.i.out_finish.sink.split.i_crit_edge ], [ -1, %lor.rhs.i.out_finish.sink.split.i_crit_edge ]
  %call224.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.74.sink.i) #18
  br label %out_finish.i

out_finish.i:                                     ; preds = %out_finish.sink.split.i, %for.body236.i.out_finish.i_crit_edge, %for.end152.i.out_finish.i_crit_edge, %for.body119.i.out_finish.i_crit_edge
  %ret.7.i = phi i32 [ %ret.7.ph.i, %out_finish.sink.split.i ], [ %call241.i, %for.body236.i.out_finish.i_crit_edge ], [ %call120.i, %for.body119.i.out_finish.i_crit_edge ], [ %call120.i107, %for.end152.i.out_finish.i_crit_edge ]
  %call285.i = call fastcc i32 @hib_wait_io(ptr noundef nonnull %hb.i54) #14
  %call286.i = call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.7.i)
  %tobool287.not.i = icmp eq i32 %ret.7.i, 0
  br i1 %tobool287.not.i, label %99, label %out_finish.i.if.end297.i_crit_edge

out_finish.i.if.end297.i_crit_edge:               ; preds = %out_finish.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end297.i

99:                                               ; preds = %out_finish.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285.i)
  %tobool290.not.i = icmp eq i32 %call285.i, 0
  br i1 %tobool290.not.i, label %do.end294.i, label %.if.end297.i_crit_edge

.if.end297.i_crit_edge:                           ; preds = %99
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end297.i

do.end294.i:                                      ; preds = %99
  call void @__sanitizer_cov_trace_pc() #16
  %call296.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #18
  br label %if.end297.i

if.end297.i:                                      ; preds = %do.end294.i, %.if.end297.i_crit_edge, %out_finish.i.if.end297.i_crit_edge
  %100 = phi i32 [ 0, %do.end294.i ], [ %call285.i, %.if.end297.i_crit_edge ], [ %ret.7.i, %out_finish.i.if.end297.i_crit_edge ]
  call void @swsusp_show_speed(i64 noundef %call112.i, i64 noundef %call286.i, i32 noundef %sub27, ptr noundef nonnull @.str.37) #14
  br label %out_clean.i

out_clean.thread.i:                               ; preds = %if.end19.i61.out_clean.thread.i_crit_edge, %if.end.i60.out_clean.thread.i_crit_edge, %cond.false.out_clean.thread.i_crit_edge
  %.str.45.sink.i = phi ptr [ @.str.39, %cond.false.out_clean.thread.i_crit_edge ], [ @.str.42, %if.end.i60.out_clean.thread.i_crit_edge ], [ @.str.45, %if.end19.i61.out_clean.thread.i_crit_edge ]
  %data.0.ph.i = phi ptr [ null, %cond.false.out_clean.thread.i_crit_edge ], [ null, %if.end.i60.out_clean.thread.i_crit_edge ], [ %call11.i, %if.end19.i61.out_clean.thread.i_crit_edge ]
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.45.sink.i) #18
  call void @blk_finish_plug(ptr noundef %plug.i.i58) #14
  br label %if.end306.i

out_clean.i:                                      ; preds = %if.end297.i, %if.then90.i, %if.then49.i
  %ret.9.i = phi i32 [ -12, %if.then49.i ], [ -12, %if.then90.i ], [ %100, %if.end297.i ]
  call void @blk_finish_plug(ptr noundef %plug.i.i58) #14
  %101 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call7.i.i.i, align 8
  %tobool301.not.i = icmp eq ptr %102, null
  br i1 %tobool301.not.i, label %out_clean.i.if.end305.i_crit_edge, label %if.then302.i

out_clean.i.if.end305.i_crit_edge:                ; preds = %out_clean.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end305.i

if.then302.i:                                     ; preds = %out_clean.i
  call void @__sanitizer_cov_trace_pc() #16
  %call304.i = call i32 @kthread_stop(ptr noundef nonnull %102) #14
  br label %if.end305.i

if.end305.i:                                      ; preds = %if.then302.i, %out_clean.i.if.end305.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %if.end306.i

if.end306.i:                                      ; preds = %if.end305.i, %out_clean.thread.i
  %ret.9509.i = phi i32 [ -12, %out_clean.thread.i ], [ %ret.9.i, %if.end305.i ]
  %data.0508.i = phi ptr [ %data.0.ph.i, %out_clean.thread.i ], [ %call11.i, %if.end305.i ]
  %tobool307.not.i = icmp eq ptr %data.0508.i, null
  br i1 %tobool307.not.i, label %if.end306.i.if.end323.i_crit_edge, label %for.body311.i

if.end306.i.if.end323.i_crit_edge:                ; preds = %if.end306.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end323.i

for.body311.i:                                    ; preds = %if.end306.i
  %103 = ptrtoint ptr %data.0508.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data.0508.i, align 4
  %tobool314.not.i = icmp eq ptr %104, null
  br i1 %tobool314.not.i, label %for.body311.i.for.inc320.i_crit_edge, label %if.then315.i

for.body311.i.for.inc320.i_crit_edge:             ; preds = %for.body311.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc320.i

if.then315.i:                                     ; preds = %for.body311.i
  call void @__sanitizer_cov_trace_pc() #16
  %call318.i = call i32 @kthread_stop(ptr noundef nonnull %104) #14
  br label %for.inc320.i

for.inc320.i:                                     ; preds = %if.then315.i, %for.body311.i.for.inc320.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %exitcond583.not.i = icmp eq i32 %42, 1
  br i1 %exitcond583.not.i, label %for.inc320.i.for.end322.i_crit_edge, label %for.body311.i.1

for.inc320.i.for.end322.i_crit_edge:              ; preds = %for.inc320.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end322.i

for.body311.i.1:                                  ; preds = %for.inc320.i
  %arrayidx312.i.1 = getelementptr %struct.cmp_data, ptr %data.0508.i, i32 1
  %105 = ptrtoint ptr %arrayidx312.i.1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx312.i.1, align 4
  %tobool314.not.i.1 = icmp eq ptr %106, null
  br i1 %tobool314.not.i.1, label %for.body311.i.1.for.inc320.i.1_crit_edge, label %if.then315.i.1

for.body311.i.1.for.inc320.i.1_crit_edge:         ; preds = %for.body311.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc320.i.1

if.then315.i.1:                                   ; preds = %for.body311.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %call318.i.1 = call i32 @kthread_stop(ptr noundef nonnull %106) #14
  br label %for.inc320.i.1

for.inc320.i.1:                                   ; preds = %if.then315.i.1, %for.body311.i.1.for.inc320.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %exitcond583.not.i.1 = icmp eq i32 %42, 2
  br i1 %exitcond583.not.i.1, label %for.inc320.i.1.for.end322.i_crit_edge, label %for.body311.i.2

for.inc320.i.1.for.end322.i_crit_edge:            ; preds = %for.inc320.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end322.i

for.body311.i.2:                                  ; preds = %for.inc320.i.1
  %arrayidx312.i.2 = getelementptr %struct.cmp_data, ptr %data.0508.i, i32 2
  %107 = ptrtoint ptr %arrayidx312.i.2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx312.i.2, align 4
  %tobool314.not.i.2 = icmp eq ptr %108, null
  br i1 %tobool314.not.i.2, label %for.body311.i.2.for.end322.i_crit_edge, label %if.then315.i.2

for.body311.i.2.for.end322.i_crit_edge:           ; preds = %for.body311.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end322.i

if.then315.i.2:                                   ; preds = %for.body311.i.2
  call void @__sanitizer_cov_trace_pc() #16
  %call318.i.2 = call i32 @kthread_stop(ptr noundef nonnull %108) #14
  br label %for.end322.i

for.end322.i:                                     ; preds = %if.then315.i.2, %for.body311.i.2.for.end322.i_crit_edge, %for.inc320.i.1.for.end322.i_crit_edge, %for.inc320.i.for.end322.i_crit_edge
  call void @vfree(ptr noundef nonnull %data.0508.i) #14
  br label %if.end323.i

if.end323.i:                                      ; preds = %for.end322.i, %if.end306.i.if.end323.i_crit_edge
  br i1 %tobool.not.i59, label %if.end323.i.save_image_lzo.exit_crit_edge, label %if.then325.i

if.end323.i.save_image_lzo.exit_crit_edge:        ; preds = %if.end323.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %save_image_lzo.exit

if.then325.i:                                     ; preds = %if.end323.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @free_pages(i32 noundef %call7.i, i32 noundef 0) #14
  br label %save_image_lzo.exit

save_image_lzo.exit:                              ; preds = %if.then325.i, %if.end323.i.save_image_lzo.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %hb.i54) #14
  br label %out_finish

out_finish:                                       ; preds = %save_image_lzo.exit, %save_image.exit, %write_page.exit.out_finish_crit_edge, %if.end13.i.out_finish_crit_edge, %if.then8.i.out_finish_crit_edge, %write_page.exit81.out_finish_crit_edge, %if.end.i.out_finish_crit_edge, %if.end20.out_finish_crit_edge, %if.then16, %do.end10
  %error.0 = phi i32 [ %spec.store.select, %if.then16 ], [ -28, %do.end10 ], [ %spec.select.i, %save_image.exit ], [ %ret.9509.i, %save_image_lzo.exit ], [ %call52.i, %write_page.exit.out_finish_crit_edge ], [ -28, %if.then8.i.out_finish_crit_edge ], [ %call52.i78, %write_page.exit81.out_finish_crit_edge ], [ -22, %if.end20.out_finish_crit_edge ], [ -28, %if.end.i.out_finish_crit_edge ], [ -28, %if.end13.i.out_finish_crit_edge ]
  %call30 = call fastcc i32 @swap_writer_finish(ptr noundef nonnull %handle, i32 noundef %flags, i32 noundef %error.0)
  br label %cleanup

cleanup:                                          ; preds = %out_finish, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call30, %out_finish ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %snapshot) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %handle) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snapshot_get_image_size() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_swap_writer(ptr nocapture noundef %handle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @swsusp_resume_device to i32))
  %0 = load i32, ptr @swsusp_resume_device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @swsusp_resume_block to i32))
  %1 = load i64, ptr @swsusp_resume_block, align 8
  %call.i = tail call i32 @swap_type_of(i32 noundef %0, i64 noundef %1) #14
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call i32 @find_first_swap(ptr noundef nonnull @swsusp_resume_device) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %res.0.i = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i)
  %cmp.i = icmp slt i32 %res.0.i, 0
  br i1 %cmp.i, label %if.end.i.swsusp_swap_check.exit_crit_edge, label %if.end3.i

if.end.i.swsusp_swap_check.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %swsusp_swap_check.exit

if.end3.i:                                        ; preds = %if.end.i
  %conv.i = trunc i32 %res.0.i to i16
  store i16 %conv.i, ptr @root_swap, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @swsusp_resume_device to i32))
  %2 = load i32, ptr @swsusp_resume_device, align 4
  %call4.i = tail call ptr @blkdev_get_by_dev(i32 noundef %2, i32 noundef 2, ptr noundef null) #14
  store ptr %call4.i, ptr @hib_resume_bdev, align 4
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %call4.i to i32
  br label %swsusp_swap_check.exit

if.end8.i:                                        ; preds = %if.end3.i
  %call9.i = tail call i32 @set_blocksize(ptr noundef %call4.i, i32 noundef 4096) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then12.i, label %if.end8.i.swsusp_swap_check.exit_crit_edge

if.end8.i.swsusp_swap_check.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %swsusp_swap_check.exit

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %4 = load ptr, ptr @hib_resume_bdev, align 4
  tail call void @blkdev_put(ptr noundef %4, i32 noundef 2) #14
  br label %swsusp_swap_check.exit

swsusp_swap_check.exit:                           ; preds = %if.then12.i, %if.end8.i.swsusp_swap_check.exit_crit_edge, %if.then6.i, %if.end.i.swsusp_swap_check.exit_crit_edge
  %retval.0.i = phi i32 [ %3, %if.then6.i ], [ %res.0.i, %if.end.i.swsusp_swap_check.exit_crit_edge ], [ %call9.i, %if.then12.i ], [ %call9.i, %if.end8.i.swsusp_swap_check.exit_crit_edge ]
  %5 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %do.end [
    i32 0, label %if.end3
    i32 -28, label %swsusp_swap_check.exit.cleanup_crit_edge
  ]

swsusp_swap_check.exit.cleanup_crit_edge:         ; preds = %swsusp_swap_check.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %swsusp_swap_check.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #18
  br label %cleanup

if.end3:                                          ; preds = %swsusp_swap_check.exit
  %call4 = tail call i32 @get_zeroed_page(i32 noundef 3264) #14
  %6 = inttoptr i32 %call4 to ptr
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %handle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %if.end3.err_close_crit_edge, label %if.end8

if.end3.err_close_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_close

if.end8:                                          ; preds = %if.end3
  %8 = load i16, ptr @root_swap, align 2
  %conv = zext i16 %8 to i32
  %call9 = tail call i64 @alloc_swapdev_block(i32 noundef %conv)
  %cur_swap = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 2
  %9 = ptrtoint ptr %cur_swap to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call9, ptr %cur_swap, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call9)
  %tobool11.not = icmp eq i64 %call9, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle, align 8
  %tobool.not.i27 = icmp eq ptr %11, null
  br i1 %tobool.not.i27, label %if.then12.release_swap_writer.exit_crit_edge, label %if.then.i28

if.then12.release_swap_writer.exit_crit_edge:     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %release_swap_writer.exit

if.then.i28:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %11 to i32
  tail call void @free_pages(i32 noundef %12, i32 noundef 0) #14
  br label %release_swap_writer.exit

release_swap_writer.exit:                         ; preds = %if.then.i28, %if.then12.release_swap_writer.exit_crit_edge
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %handle, align 8
  br label %err_close

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %k = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 4
  %14 = ptrtoint ptr %k to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %k, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vm_zone_stat, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_zone_stat to i32))
  %15 = load volatile i32, ptr @vm_zone_stat, align 4
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 0) #14
  %call.i.i.i = tail call i32 @__nr_free_highpages() #14
  %sub.i.i = sub i32 %16, %call.i.i.i
  %div1.i = lshr i32 %sub.i.i, 1
  %reqd_free_pages = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 5
  %17 = ptrtoint ptr %reqd_free_pages to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div1.i, ptr %reqd_free_pages, align 4
  %18 = ptrtoint ptr %cur_swap to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cur_swap, align 8
  %first_sector = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 3
  %20 = ptrtoint ptr %first_sector to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %first_sector, align 8
  br label %cleanup

err_close:                                        ; preds = %release_swap_writer.exit, %if.end3.err_close_crit_edge
  %ret.0 = phi i32 [ -28, %release_swap_writer.exit ], [ -12, %if.end3.err_close_crit_edge ]
  %21 = load ptr, ptr @hib_resume_bdev, align 4
  %cmp.i.i30 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i30, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %err_close
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @swsusp_close.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@get_swap_writer, %cleanup)) #14
          to label %if.then5.i [label %cleanup], !srcloc !270

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @swsusp_close.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.21) #14
  br label %cleanup

if.end6.i:                                        ; preds = %err_close
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blkdev_put(ptr noundef %21, i32 noundef 2) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %if.end13, %do.end, %swsusp_swap_check.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %retval.0.i, %swsusp_swap_check.exit.cleanup_crit_edge ], [ %retval.0.i, %do.end ], [ %ret.0, %do.body.i ], [ %ret.0, %if.then5.i ], [ %ret.0, %if.end6.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snapshot_read_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @swap_write_page(ptr nocapture noundef %handle, ptr noundef %buf, ptr noundef %hb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i16, ptr @root_swap, align 2
  %conv = zext i16 %2 to i32
  %call = tail call i64 @alloc_swapdev_block(i32 noundef %conv)
  %call1 = tail call fastcc i32 @write_page(ptr noundef %buf, i64 noundef %call, ptr noundef %hb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %handle, align 8
  %k = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 4
  %5 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %k, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %k, align 8
  %arrayidx = getelementptr [511 x i64], ptr %4, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call, ptr %arrayidx, align 8
  %8 = load i32, ptr %k, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %8)
  %cmp = icmp ugt i32 %8, 510
  br i1 %cmp, label %if.then8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then8:                                         ; preds = %if.end4
  %9 = load i16, ptr @root_swap, align 2
  %conv9 = zext i16 %9 to i32
  %call10 = tail call i64 @alloc_swapdev_block(i32 noundef %conv9)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call10)
  %tobool11.not = icmp eq i64 %call10, 0
  br i1 %tobool11.not, label %if.then8.cleanup_crit_edge, label %if.end13

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.then8
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle, align 8
  %next_swap = getelementptr inbounds %struct.swap_map_page, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %next_swap to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call10, ptr %next_swap, align 8
  %13 = load ptr, ptr %handle, align 8
  %cur_swap = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 2
  %14 = ptrtoint ptr %cur_swap to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %cur_swap, align 8
  %call16 = tail call fastcc i32 @write_page(ptr noundef %13, i64 noundef %15, ptr noundef %hb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle, align 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 4096)
  %19 = ptrtoint ptr %cur_swap to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call10, ptr %cur_swap, align 8
  %20 = ptrtoint ptr %k to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %k, align 8
  %tobool23.not = icmp eq ptr %hb, null
  br i1 %tobool23.not, label %if.end19.cleanup_crit_edge, label %land.lhs.true

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end19
  %call24 = tail call fastcc i32 @low_free_pages()
  %reqd_free_pages = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 5
  %21 = ptrtoint ptr %reqd_free_pages to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reqd_free_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call24, i32 %22)
  %cmp25.not = icmp ugt i32 %call24, %22
  br i1 %cmp25.not, label %land.lhs.true.cleanup_crit_edge, label %if.then27

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27:                                        ; preds = %land.lhs.true
  %call28 = tail call fastcc i32 @hib_wait_io(ptr noundef nonnull %hb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end31:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  %call32 = tail call fastcc i32 @reqd_free_pages()
  %23 = ptrtoint ptr %reqd_free_pages to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call32, ptr %reqd_free_pages, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then27.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -28, %if.then8.cleanup_crit_edge ], [ %call16, %if.end13.cleanup_crit_edge ], [ %call28, %if.then27.cleanup_crit_edge ], [ 0, %if.end31 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @swap_writer_finish(ptr nocapture noundef %handle, i32 noundef %flags, i32 noundef %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %do.end, label %entry.if.then8_crit_edge

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #18
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @swsusp_resume_block to i32))
  %0 = load i64, ptr @swsusp_resume_block, align 8
  %conv.i = trunc i64 %0 to i32
  %1 = load ptr, ptr @swsusp_header, align 4
  %call.i = tail call fastcc i32 @hib_submit_io(i32 noundef 0, i32 noundef 0, i32 noundef %conv.i, ptr noundef %1, ptr noundef null) #14
  %2 = load ptr, ptr @swsusp_header, align 4
  %sig.i = getelementptr inbounds %struct.swsusp_header, ptr %2, i32 0, i32 6
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.83, ptr noundef dereferenceable(10) %sig.i, i32 10) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %do.end.if.then.i_crit_edge, label %lor.lhs.false.i

do.end.if.then.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %do.end
  %bcmp25.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.84, ptr noundef dereferenceable(10) %sig.i, i32 10) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp25.i)
  %tobool5.not.i = icmp eq i32 %bcmp25.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %do.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %do.end.if.then.i_crit_edge
  %orig_sig.i = getelementptr inbounds %struct.swsusp_header, ptr %2, i32 0, i32 5
  %3 = call ptr @memcpy(ptr %orig_sig.i, ptr %sig.i, i32 10)
  %4 = call ptr @memcpy(ptr %sig.i, ptr @.str.12, i32 10)
  %first_sector.i = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 3
  %5 = ptrtoint ptr %first_sector.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %first_sector.i, align 8
  %image.i = getelementptr inbounds %struct.swsusp_header, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %image.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %image.i, align 1
  %8 = load i32, ptr @swsusp_hardware_signature, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not.i = icmp eq i32 %8, 0
  br i1 %tobool11.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then12.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %hw_sig.i = getelementptr inbounds %struct.swsusp_header, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %hw_sig.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %hw_sig.i, align 1
  %or.i = or i32 %flags, 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then12.i, %if.then.i.if.end.i_crit_edge
  %flags.addr.0.i = phi i32 [ %or.i, %if.then12.i ], [ %flags, %if.then.i.if.end.i_crit_edge ]
  %flags13.i = getelementptr inbounds %struct.swsusp_header, ptr %2, i32 0, i32 4
  %10 = ptrtoint ptr %flags13.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %flags.addr.0.i, ptr %flags13.i, align 1
  %and.i = and i32 %flags.addr.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then15.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %crc32.i = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 6
  %11 = ptrtoint ptr %crc32.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %crc32.i, align 8
  %crc3216.i = getelementptr inbounds %struct.swsusp_header, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %crc3216.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %crc3216.i, align 1
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end.i.if.end17.i_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @swsusp_resume_block to i32))
  %14 = load i64, ptr @swsusp_resume_block, align 8
  %conv18.i = trunc i64 %14 to i32
  %call19.i = tail call fastcc i32 @hib_submit_io(i32 noundef 1, i32 noundef 2048, i32 noundef %conv18.i, ptr noundef %2, ptr noundef null) #14
  br label %mark_swapfiles.exit

do.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #18
  br label %mark_swapfiles.exit

mark_swapfiles.exit:                              ; preds = %do.end.i, %if.end17.i
  %error.0.i = phi i32 [ -19, %do.end.i ], [ %call19.i, %if.end17.i ]
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #18
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle, align 8
  %tobool.not.i14 = icmp eq ptr %16, null
  br i1 %tobool.not.i14, label %mark_swapfiles.exit.if.end_crit_edge, label %land.lhs.true.i

mark_swapfiles.exit.if.end_crit_edge:             ; preds = %mark_swapfiles.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i:                                  ; preds = %mark_swapfiles.exit
  %cur_swap.i = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 2
  %17 = ptrtoint ptr %cur_swap.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %cur_swap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool1.not.i = icmp eq i64 %18, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %write_page.exit.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

write_page.exit.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i = trunc i64 %18 to i32
  %call52.i.i = tail call fastcc i32 @hib_submit_io(i32 noundef 1, i32 noundef 2048, i32 noundef %conv.i.i, ptr noundef nonnull %16, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %write_page.exit.i, %land.lhs.true.i.if.end_crit_edge, %mark_swapfiles.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %tobool7.not = icmp eq i32 %error.0.i, 0
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %entry.if.then8_crit_edge
  %error.addr.021 = phi i32 [ %error.0.i, %if.end.if.then8_crit_edge ], [ %error, %entry.if.then8_crit_edge ]
  %19 = load ptr, ptr @swsusp_extents, align 4
  %tobool.not9.i = icmp eq ptr %19, null
  br i1 %tobool.not9.i, label %if.then8.if.end9_crit_edge, label %while.body.lr.ph.i

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

while.body.lr.ph.i:                               ; preds = %if.then8
  %20 = load i16, ptr @root_swap, align 2
  %conv = zext i16 %20 to i32
  %shl.i.i = shl i32 %conv, 26
  br label %while.body.i

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %21 = phi ptr [ %19, %while.body.lr.ph.i ], [ %28, %for.end.i.while.body.i_crit_edge ]
  tail call void @rb_erase(ptr noundef nonnull %21, ptr noundef nonnull @swsusp_extents) #14
  %start.i = getelementptr inbounds %struct.swsusp_extent, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %start.i, align 4
  %end.i = getelementptr inbounds %struct.swsusp_extent, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.not7.i = icmp ugt i32 %23, %25
  br i1 %cmp.not7.i, label %while.body.i.for.end.i_crit_edge, label %while.body.i.for.body.i_crit_edge

while.body.i.for.body.i_crit_edge:                ; preds = %while.body.i
  br label %for.body.i

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.body.i.for.body.i_crit_edge
  %offset.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %23, %while.body.i.for.body.i_crit_edge ]
  %and.i.i = and i32 %offset.08.i, 67108863
  %or.i.i = or i32 %and.i.i, %shl.i.i
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %or.i.i, 0
  tail call void @swap_free([1 x i32] %.fca.0.insert.i) #14
  %inc.i = add i32 %offset.08.i, 1
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i, align 4
  %cmp.not.i = icmp ugt i32 %inc.i, %27
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %21) #14
  %28 = load ptr, ptr @swsusp_extents, align 4
  %tobool.not.i15 = icmp eq ptr %28, null
  br i1 %tobool.not.i15, label %for.end.i.if.end9_crit_edge, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

for.end.i.if.end9_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.end9:                                          ; preds = %for.end.i.if.end9_crit_edge, %if.then8.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %error.addr.022 = phi i32 [ 0, %if.end.if.end9_crit_edge ], [ %error.addr.021, %if.then8.if.end9_crit_edge ], [ %error.addr.021, %for.end.i.if.end9_crit_edge ]
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handle, align 8
  %tobool.not.i16 = icmp eq ptr %30, null
  br i1 %tobool.not.i16, label %if.end9.release_swap_writer.exit_crit_edge, label %if.then.i17

if.end9.release_swap_writer.exit_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %release_swap_writer.exit

if.then.i17:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %30 to i32
  tail call void @free_pages(i32 noundef %31, i32 noundef 0) #14
  br label %release_swap_writer.exit

release_swap_writer.exit:                         ; preds = %if.then.i17, %if.end9.release_swap_writer.exit_crit_edge
  %32 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %handle, align 8
  %33 = load ptr, ptr @hib_resume_bdev, align 4
  %cmp.i.i = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %release_swap_writer.exit
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @swsusp_close.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@swap_writer_finish, %swsusp_close.exit)) #14
          to label %if.then5.i [label %swsusp_close.exit], !srcloc !270

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @swsusp_close.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.21) #14
  br label %swsusp_close.exit

if.end6.i:                                        ; preds = %release_swap_writer.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blkdev_put(ptr noundef %33, i32 noundef 2) #14
  br label %swsusp_close.exit

swsusp_close.exit:                                ; preds = %if.end6.i, %if.then5.i, %do.body.i
  ret i32 %error.addr.022
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @swsusp_read(ptr nocapture noundef %flags_p) local_unnamed_addr #0 align 64 {
entry:
  %hb.i87 = alloca %struct.hib_bio_batch, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry316.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry427.i = alloca %struct.wait_queue_entry, align 4
  %hb.i = alloca %struct.hib_bio_batch, align 4
  %handle = alloca %struct.swap_map_handle, align 8
  %snapshot = alloca %struct.snapshot_handle, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %handle) #14
  %0 = call ptr @memset(ptr %handle, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %snapshot) #14
  %1 = getelementptr inbounds %struct.snapshot_handle, ptr %snapshot, i32 0, i32 1
  %2 = getelementptr inbounds %struct.snapshot_handle, ptr %snapshot, i32 0, i32 2
  %3 = call ptr @memset(ptr %snapshot, i32 0, i32 12)
  %call = call i32 @snapshot_write_next(ptr noundef nonnull %snapshot) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call)
  %cmp = icmp slt i32 %call, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp1, i32 %call, i32 -14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = load ptr, ptr @swsusp_header, align 4
  %flags.i = getelementptr inbounds %struct.swsusp_header, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %flags.i, align 1
  %9 = ptrtoint ptr %flags_p to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %flags_p, align 4
  %image.i = getelementptr inbounds %struct.swsusp_header, ptr %6, i32 0, i32 3
  %10 = ptrtoint ptr %image.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %image.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not.i = icmp eq i64 %11, 0
  br i1 %tobool.not.i, label %if.end.do.body31_crit_edge, label %while.body.preheader.i

if.end.do.body31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body31

while.body.preheader.i:                           ; preds = %if.end
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %handle, align 8
  %maps.i = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 1
  %13 = ptrtoint ptr %maps.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %maps.i, align 4
  %extract.t72.i = trunc i64 %11 to i32
  br label %while.body.i

while.body.i:                                     ; preds = %if.end23.i.while.body.i_crit_edge, %while.body.preheader.i
  %offset.071.off0.i = phi i32 [ %extract.t.i, %if.end23.i.while.body.i_crit_edge ], [ %extract.t72.i, %while.body.preheader.i ]
  %last.070.i = phi ptr [ %call7.i.i.i, %if.end23.i.while.body.i_crit_edge ], [ null, %while.body.preheader.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 8) #17
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  %15 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %maps.i, align 4
  %tobool.not15.i.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %while.body.i
  br i1 %tobool.not15.i.i, label %if.then4.i.get_swap_reader.exit.thread133_crit_edge, label %if.then4.i.while.body.i.i_crit_edge

if.then4.i.while.body.i.i_crit_edge:              ; preds = %if.then4.i
  br label %while.body.i.i

if.then4.i.get_swap_reader.exit.thread133_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_swap_reader.exit.thread133

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.then4.i.while.body.i.i_crit_edge
  %17 = phi ptr [ %26, %if.end.i.i.while.body.i.i_crit_edge ], [ %16, %if.then4.i.while.body.i.i_crit_edge ]
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool2.not.i.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %19 to i32
  call void @free_pages(i32 noundef %20, i32 noundef 0) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %21 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %maps.i, align 4
  %next.i.i = getelementptr inbounds %struct.swap_map_page_list, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next.i.i, align 4
  store ptr %24, ptr %maps.i, align 4
  call void @kfree(ptr noundef %22) #14
  %25 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %maps.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end.i.i.get_swap_reader.exit.thread133_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

if.end.i.i.get_swap_reader.exit.thread133_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_swap_reader.exit.thread133

if.end5.i:                                        ; preds = %while.body.i
  br i1 %tobool.not15.i.i, label %if.then8.i, label %if.end5.i.if.end10.i_crit_edge

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %maps.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i, ptr %maps.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end10.i_crit_edge
  %tobool11.not.i = icmp eq ptr %last.070.i, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end13.i_crit_edge, label %if.then12.i

if.end10.i.if.end13.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %next.i = getelementptr inbounds %struct.swap_map_page_list, ptr %last.070.i, i32 0, i32 1
  %28 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i.i, ptr %next.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end13.i_crit_edge
  %call14.i = call i32 @__get_free_pages(i32 noundef 3104, i32 noundef 0) #14
  %29 = inttoptr i32 %call14.i to ptr
  %30 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool16.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end18.i

if.then17.i:                                      ; preds = %if.end13.i
  %31 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %maps.i, align 4
  %tobool.not15.i51.i = icmp eq ptr %32, null
  br i1 %tobool.not15.i51.i, label %if.then17.i.get_swap_reader.exit.thread133_crit_edge, label %if.then17.i.while.body.i53.i_crit_edge

if.then17.i.while.body.i53.i_crit_edge:           ; preds = %if.then17.i
  br label %while.body.i53.i

if.then17.i.get_swap_reader.exit.thread133_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_swap_reader.exit.thread133

while.body.i53.i:                                 ; preds = %if.end.i57.i.while.body.i53.i_crit_edge, %if.then17.i.while.body.i53.i_crit_edge
  %33 = phi ptr [ %42, %if.end.i57.i.while.body.i53.i_crit_edge ], [ %32, %if.then17.i.while.body.i53.i_crit_edge ]
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool2.not.i52.i = icmp eq ptr %35, null
  br i1 %tobool2.not.i52.i, label %while.body.i53.i.if.end.i57.i_crit_edge, label %if.then.i54.i

while.body.i53.i.if.end.i57.i_crit_edge:          ; preds = %while.body.i53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i57.i

if.then.i54.i:                                    ; preds = %while.body.i53.i
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %35 to i32
  call void @free_pages(i32 noundef %36, i32 noundef 0) #14
  br label %if.end.i57.i

if.end.i57.i:                                     ; preds = %if.then.i54.i, %while.body.i53.i.if.end.i57.i_crit_edge
  %37 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %maps.i, align 4
  %next.i55.i = getelementptr inbounds %struct.swap_map_page_list, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %next.i55.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %next.i55.i, align 4
  store ptr %40, ptr %maps.i, align 4
  call void @kfree(ptr noundef %38) #14
  %41 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %maps.i, align 4
  %tobool.not.i56.i = icmp eq ptr %42, null
  br i1 %tobool.not.i56.i, label %if.end.i57.i.get_swap_reader.exit.thread133_crit_edge, label %if.end.i57.i.while.body.i53.i_crit_edge

if.end.i57.i.while.body.i53.i_crit_edge:          ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i53.i

if.end.i57.i.get_swap_reader.exit.thread133_crit_edge: ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_swap_reader.exit.thread133

if.end18.i:                                       ; preds = %if.end13.i
  %call20.i = call fastcc i32 @hib_submit_io(i32 noundef 0, i32 noundef 0, i32 noundef %offset.071.off0.i, ptr noundef nonnull %29, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end18.i
  %43 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %maps.i, align 4
  %tobool.not15.i60.i = icmp eq ptr %44, null
  br i1 %tobool.not15.i60.i, label %if.then22.i.get_swap_reader.exit.thread133_crit_edge, label %if.then22.i.while.body.i62.i_crit_edge

if.then22.i.while.body.i62.i_crit_edge:           ; preds = %if.then22.i
  br label %while.body.i62.i

if.then22.i.get_swap_reader.exit.thread133_crit_edge: ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_swap_reader.exit.thread133

while.body.i62.i:                                 ; preds = %if.end.i66.i.while.body.i62.i_crit_edge, %if.then22.i.while.body.i62.i_crit_edge
  %45 = phi ptr [ %54, %if.end.i66.i.while.body.i62.i_crit_edge ], [ %44, %if.then22.i.while.body.i62.i_crit_edge ]
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %tobool2.not.i61.i = icmp eq ptr %47, null
  br i1 %tobool2.not.i61.i, label %while.body.i62.i.if.end.i66.i_crit_edge, label %if.then.i63.i

while.body.i62.i.if.end.i66.i_crit_edge:          ; preds = %while.body.i62.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i66.i

if.then.i63.i:                                    ; preds = %while.body.i62.i
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %47 to i32
  call void @free_pages(i32 noundef %48, i32 noundef 0) #14
  br label %if.end.i66.i

if.end.i66.i:                                     ; preds = %if.then.i63.i, %while.body.i62.i.if.end.i66.i_crit_edge
  %49 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %maps.i, align 4
  %next.i64.i = getelementptr inbounds %struct.swap_map_page_list, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %next.i64.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %next.i64.i, align 4
  store ptr %52, ptr %maps.i, align 4
  call void @kfree(ptr noundef %50) #14
  %53 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %maps.i, align 4
  %tobool.not.i65.i = icmp eq ptr %54, null
  br i1 %tobool.not.i65.i, label %get_swap_reader.exit, label %if.end.i66.i.while.body.i62.i_crit_edge

if.end.i66.i.while.body.i62.i_crit_edge:          ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i62.i

if.end23.i:                                       ; preds = %if.end18.i
  %55 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call7.i.i.i, align 8
  %next_swap.i = getelementptr inbounds %struct.swap_map_page, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %next_swap.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %offset.0.i = load i64, ptr %next_swap.i, align 1
  %tobool2.not.i = icmp eq i64 %offset.0.i, 0
  %extract.t.i = trunc i64 %offset.0.i to i32
  br i1 %tobool2.not.i, label %if.then6, label %if.end23.i.while.body.i_crit_edge

if.end23.i.while.body.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

get_swap_reader.exit.thread133:                   ; preds = %if.then22.i.get_swap_reader.exit.thread133_crit_edge, %if.end.i57.i.get_swap_reader.exit.thread133_crit_edge, %if.then17.i.get_swap_reader.exit.thread133_crit_edge, %if.end.i.i.get_swap_reader.exit.thread133_crit_edge, %if.then4.i.get_swap_reader.exit.thread133_crit_edge
  %retval.0.ph.i.ph = phi i32 [ %call20.i, %if.then22.i.get_swap_reader.exit.thread133_crit_edge ], [ -12, %if.then17.i.get_swap_reader.exit.thread133_crit_edge ], [ -12, %if.then4.i.get_swap_reader.exit.thread133_crit_edge ], [ -12, %if.end.i.i.get_swap_reader.exit.thread133_crit_edge ], [ -12, %if.end.i57.i.get_swap_reader.exit.thread133_crit_edge ]
  %58 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %handle, align 8
  br label %do.body31

get_swap_reader.exit:                             ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %handle, align 8
  br label %do.body31

if.then6:                                         ; preds = %if.end23.i
  %k.i = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 4
  %60 = ptrtoint ptr %k.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %k.i, align 8
  %61 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %maps.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %65 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %handle, align 8
  %tobool.not.i68 = icmp eq ptr %64, null
  br i1 %tobool.not.i68, label %if.then6.if.end20_crit_edge, label %if.end.i71

if.then6.if.end20_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end.i71:                                       ; preds = %if.then6
  %66 = ptrtoint ptr %k.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %k.i, align 8
  %arrayidx.i = getelementptr [511 x i64], ptr %64, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %69)
  %tobool2.not.i70 = icmp eq i64 %69, 0
  br i1 %tobool2.not.i70, label %if.end.i71.if.end20thread-pre-split_crit_edge, label %if.end4.i

if.end.i71.if.end20thread-pre-split_crit_edge:    ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20thread-pre-split

if.end4.i:                                        ; preds = %if.end.i71
  %conv.i = trunc i64 %69 to i32
  %call.i = call fastcc i32 @hib_submit_io(i32 noundef 0, i32 noundef 0, i32 noundef %conv.i, ptr noundef %5, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end4.i.if.end20thread-pre-split_crit_edge

if.end4.i.if.end20thread-pre-split_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20thread-pre-split

if.end7.i:                                        ; preds = %if.end4.i
  %70 = ptrtoint ptr %k.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %k.i, align 8
  %inc.i = add i32 %71, 1
  store i32 %inc.i, ptr %k.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %inc.i)
  %cmp.i = icmp ugt i32 %inc.i, 510
  br i1 %cmp.i, label %if.then10.i, label %if.end7.i.if.then10_crit_edge

if.end7.i.if.then10_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10

if.then10.i:                                      ; preds = %if.end7.i
  %72 = ptrtoint ptr %k.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %k.i, align 8
  %73 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %maps.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @free_pages(i32 noundef %77, i32 noundef 0) #14
  %78 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %maps.i, align 4
  %next.i73 = getelementptr inbounds %struct.swap_map_page_list, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %next.i73 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %next.i73, align 4
  store ptr %81, ptr %maps.i, align 4
  call void @kfree(ptr noundef %79) #14
  %82 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %maps.i, align 4
  %tobool16.not.i74 = icmp eq ptr %83, null
  br i1 %tobool16.not.i74, label %if.then10.i.cleanup.sink.split.i76_crit_edge, label %if.else.i

if.then10.i.cleanup.sink.split.i76_crit_edge:     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i76

if.else.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  br label %cleanup.sink.split.i76

cleanup.sink.split.i76:                           ; preds = %if.else.i, %if.then10.i.cleanup.sink.split.i76_crit_edge
  %.sink.i75 = phi ptr [ %85, %if.else.i ], [ null, %if.then10.i.cleanup.sink.split.i76_crit_edge ]
  %86 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %.sink.i75, ptr %handle, align 8
  br label %if.then10

if.then10:                                        ; preds = %cleanup.sink.split.i76, %if.end7.i.if.then10_crit_edge
  %87 = ptrtoint ptr %flags_p to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags_p, align 4
  %and = and i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %pages15 = getelementptr inbounds %struct.swsusp_info, ptr %5, i32 0, i32 5
  %89 = ptrtoint ptr %pages15 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pages15, align 8
  %sub16 = add i32 %90, -1
  br i1 %tobool11.not, label %cond.false14, label %cond.true12

cond.true12:                                      ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %hb.i) #14
  %91 = call ptr @memset(ptr %hb.i, i32 255, i32 84)
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hb.i, i32 noundef 4) #14
  %92 = ptrtoint ptr %hb.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 0, ptr %hb.i, align 4
  %wait.i.i = getelementptr inbounds %struct.hib_bio_batch, ptr %hb.i, i32 0, i32 1
  call void @__init_waitqueue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @hib_init_batch.__key) #14
  %error.i.i = getelementptr inbounds %struct.hib_bio_batch, ptr %hb.i, i32 0, i32 2
  %93 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %error.i.i, align 4
  %plug.i.i = getelementptr inbounds %struct.hib_bio_batch, ptr %hb.i, i32 0, i32 3
  call void @blk_start_plug(ptr noundef %plug.i.i) #14
  store i1 true, ptr @clean_pages_on_read, align 1
  %call.i78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %sub16) #18
  %div.i = udiv i32 %sub16, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub16)
  %94 = icmp ult i32 %sub16, 10
  %spec.store.select.i = select i1 %94, i32 1, i32 %div.i
  %call1.i = call i64 @ktime_get() #14
  %call264.i = call i32 @snapshot_write_next(ptr noundef nonnull %snapshot) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call264.i)
  %cmp65.i = icmp slt i32 %call264.i, 1
  br i1 %cmp65.i, label %cond.true12.for.end.i_crit_edge, label %cond.true12.if.end4.i80_crit_edge

cond.true12.if.end4.i80_crit_edge:                ; preds = %cond.true12
  br label %if.end4.i80

cond.true12.for.end.i_crit_edge:                  ; preds = %cond.true12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end4.i80:                                      ; preds = %if.end24.i.if.end4.i80_crit_edge, %cond.true12.if.end4.i80_crit_edge
  %nr_pages.066.i = phi i32 [ %inc.i85, %if.end24.i.if.end4.i80_crit_edge ], [ 0, %cond.true12.if.end4.i80_crit_edge ]
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %97 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %handle, align 8
  %tobool.not.i.i79 = icmp eq ptr %98, null
  br i1 %tobool.not.i.i79, label %if.end4.i80.for.end.i_crit_edge, label %if.end.i.i82

if.end4.i80.for.end.i_crit_edge:                  ; preds = %if.end4.i80
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end.i.i82:                                     ; preds = %if.end4.i80
  %99 = ptrtoint ptr %k.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %k.i, align 8
  %arrayidx.i.i = getelementptr [511 x i64], ptr %98, i32 0, i32 %100
  %101 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %102)
  %tobool2.not.i.i81 = icmp eq i64 %102, 0
  br i1 %tobool2.not.i.i81, label %if.end.i.i82.for.end.i_crit_edge, label %if.end4.i.i

if.end.i.i82.for.end.i_crit_edge:                 ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end4.i.i:                                      ; preds = %if.end.i.i82
  %conv.i.i = trunc i64 %102 to i32
  %call.i.i = call fastcc i32 @hib_submit_io(i32 noundef 0, i32 noundef 0, i32 noundef %conv.i.i, ptr noundef %96, ptr noundef nonnull %hb.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.end4.i.i.for.end.i_crit_edge

if.end4.i.i.for.end.i_crit_edge:                  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end7.i.i:                                      ; preds = %if.end4.i.i
  %103 = ptrtoint ptr %k.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %k.i, align 8
  %inc.i.i = add i32 %104, 1
  store i32 %inc.i.i, ptr %k.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %inc.i.i)
  %cmp.i.i = icmp ugt i32 %inc.i.i, 510
  br i1 %cmp.i.i, label %if.then10.i.i, label %if.end7.i.i.if.end8.i_crit_edge

if.end7.i.i.if.end8.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.then10.i.i:                                    ; preds = %if.end7.i.i
  %105 = ptrtoint ptr %k.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %k.i, align 8
  %106 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %maps.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @free_pages(i32 noundef %110, i32 noundef 0) #14
  %111 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %maps.i, align 4
  %next.i.i83 = getelementptr inbounds %struct.swap_map_page_list, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %next.i.i83 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %next.i.i83, align 4
  store ptr %114, ptr %maps.i, align 4
  call void @kfree(ptr noundef %112) #14
  %115 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %maps.i, align 4
  %tobool16.not.i.i = icmp eq ptr %116, null
  br i1 %tobool16.not.i.i, label %if.then10.i.i.cleanup.sink.split.i.i_crit_edge, label %if.else.i.i

if.then10.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.else.i.i, %if.then10.i.i.cleanup.sink.split.i.i_crit_edge
  %.sink.i.i = phi ptr [ %118, %if.else.i.i ], [ null, %if.then10.i.i.cleanup.sink.split.i.i_crit_edge ]
  %119 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %.sink.i.i, ptr %handle, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.sink.split.i.i, %if.end7.i.i.if.end8.i_crit_edge
  %120 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool9.not.i = icmp eq i32 %121, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end15.i_crit_edge, label %if.end12.i

if.end8.i.if.end15.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i

if.end12.i:                                       ; preds = %if.end8.i
  %call11.i = call fastcc i32 @hib_wait_io(ptr noundef nonnull %hb.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool13.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.end15.i_crit_edge, label %if.end12.i.for.end.i_crit_edge

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end12.i.if.end15.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end12.i.if.end15.i_crit_edge, %if.end8.i.if.end15.i_crit_edge
  %nr_pages.066.i.frozen = freeze i32 %nr_pages.066.i
  %spec.store.select.i.frozen = freeze i32 %spec.store.select.i
  %div22.i = udiv i32 %nr_pages.066.i.frozen, %spec.store.select.i.frozen
  %122 = mul i32 %div22.i, %spec.store.select.i.frozen
  %rem.i.decomposed = sub i32 %nr_pages.066.i.frozen, %122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool16.not.i84 = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool16.not.i84, label %do.end20.i, label %if.end15.i.if.end24.i_crit_edge

if.end15.i.if.end24.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i

do.end20.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i = mul i32 %div22.i, 10
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %mul.i) #18
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end20.i, %if.end15.i.if.end24.i_crit_edge
  %inc.i85 = add i32 %nr_pages.066.i, 1
  %call2.i = call i32 @snapshot_write_next(ptr noundef nonnull %snapshot) #14
  %cmp.i86 = icmp slt i32 %call2.i, 1
  br i1 %cmp.i86, label %if.end24.i.for.end.i_crit_edge, label %if.end24.i.if.end4.i80_crit_edge

if.end24.i.if.end4.i80_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i80

if.end24.i.for.end.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %if.end24.i.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge, %if.end4.i.i.for.end.i_crit_edge, %if.end.i.i82.for.end.i_crit_edge, %if.end4.i80.for.end.i_crit_edge, %cond.true12.for.end.i_crit_edge
  %ret.1.i = phi i32 [ %call264.i, %cond.true12.for.end.i_crit_edge ], [ %call2.i, %if.end24.i.for.end.i_crit_edge ], [ %call11.i, %if.end12.i.for.end.i_crit_edge ], [ -22, %if.end4.i80.for.end.i_crit_edge ], [ -14, %if.end.i.i82.for.end.i_crit_edge ], [ %call.i.i, %if.end4.i.i.for.end.i_crit_edge ]
  %call25.i = call fastcc i32 @hib_wait_io(ptr noundef nonnull %hb.i) #14
  call void @blk_finish_plug(ptr noundef %plug.i.i) #14
  %call26.i = call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool27.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool27.not.i, label %123, label %for.end.i.load_image.exit_crit_edge

for.end.i.load_image.exit_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %load_image.exit

123:                                              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool30.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool30.not.i, label %do.end34.i, label %.load_image.exit_crit_edge

.load_image.exit_crit_edge:                       ; preds = %123
  call void @__sanitizer_cov_trace_pc() #16
  br label %load_image.exit

do.end34.i:                                       ; preds = %123
  call void @__sanitizer_cov_trace_pc() #16
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #18
  call void @snapshot_write_finalize(ptr noundef nonnull %snapshot) #14
  %call37.i = call i32 @snapshot_image_loaded(ptr noundef nonnull %snapshot) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  %spec.select57.i = select i1 %tobool38.not.i, i32 -61, i32 0
  br label %load_image.exit

load_image.exit:                                  ; preds = %do.end34.i, %.load_image.exit_crit_edge, %for.end.i.load_image.exit_crit_edge
  %ret.3.i = phi i32 [ %call25.i, %.load_image.exit_crit_edge ], [ %spec.select57.i, %do.end34.i ], [ %ret.1.i, %for.end.i.load_image.exit_crit_edge ]
  call void @swsusp_show_speed(i64 noundef %call1.i, i64 noundef %call26.i, i32 noundef %sub16, ptr noundef nonnull @.str.95) #14
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %hb.i) #14
  br label %if.end20thread-pre-split

cond.false14:                                     ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %hb.i87) #14
  %124 = call ptr @memset(ptr %hb.i87, i32 255, i32 84)
  %call.i.i.i.i88 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hb.i87, i32 noundef 4) #14
  %125 = ptrtoint ptr %hb.i87 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile i32 0, ptr %hb.i87, align 4
  %wait.i.i89 = getelementptr inbounds %struct.hib_bio_batch, ptr %hb.i87, i32 0, i32 1
  call void @__init_waitqueue_head(ptr noundef %wait.i.i89, ptr noundef nonnull @.str.38, ptr noundef nonnull @hib_init_batch.__key) #14
  %error.i.i90 = getelementptr inbounds %struct.hib_bio_batch, ptr %hb.i87, i32 0, i32 2
  %126 = ptrtoint ptr %error.i.i90 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %error.i.i90, align 4
  %plug.i.i91 = getelementptr inbounds %struct.hib_bio_batch, ptr %hb.i87, i32 0, i32 3
  call void @blk_start_plug(ptr noundef %plug.i.i91) #14
  %call.i.i.i760.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %127 = load volatile i32, ptr @__num_online_cpus, align 4
  %sub.i = add i32 %127, -1
  %128 = call i32 @llvm.umax.i32(i32 %sub.i, i32 1) #14
  %129 = call i32 @llvm.umin.i32(i32 %128, i32 3) #14
  %call8.i = call noalias ptr @vmalloc(i32 noundef 32768) #19
  %tobool.not.i92 = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i92, label %cond.false14.out_clean.thread.i_crit_edge, label %if.end.i94

cond.false14.out_clean.thread.i_crit_edge:        ; preds = %cond.false14
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_clean.thread.i

if.end.i94:                                       ; preds = %cond.false14
  %130 = mul nuw nsw i32 %129, 274560
  %call12.i = call noalias ptr @vzalloc(i32 noundef %130) #19
  %tobool13.not.i93 = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i93, label %if.end.i94.out_clean.thread.i_crit_edge, label %if.end20.i

if.end.i94.out_clean.thread.i_crit_edge:          ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_clean.thread.i

if.end20.i:                                       ; preds = %if.end.i94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %131 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i95 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %131, i32 noundef 3520, i32 noundef 148) #17
  %tobool22.not.i = icmp eq ptr %call7.i.i.i95, null
  br i1 %tobool22.not.i, label %if.end20.i.out_clean.thread.i_crit_edge, label %do.body31.preheader.i

if.end20.i.out_clean.thread.i_crit_edge:          ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_clean.thread.i

do.body31.preheader.i:                            ; preds = %if.end20.i
  store i1 true, ptr @clean_pages_on_decompress, align 1
  %go.i = getelementptr %struct.dec_data, ptr %call12.i, i32 0, i32 4
  call void @__init_waitqueue_head(ptr noundef %go.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @load_image_lzo.__key) #14
  %done.i = getelementptr %struct.dec_data, ptr %call12.i, i32 0, i32 5
  call void @__init_waitqueue_head(ptr noundef %done.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @load_image_lzo.__key.101) #14
  %call39.i = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @lzo_decompress_threadfn, ptr noundef %call12.i, i32 noundef -1, ptr noundef nonnull @.str.102, i32 noundef 0) #14
  %cmp.i.i97 = icmp ugt ptr %call39.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i97, label %do.body31.preheader.i.if.then50.i_crit_edge, label %for.inc.i

do.body31.preheader.i.if.then50.i_crit_edge:      ; preds = %do.body31.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then50.i

if.then50.i:                                      ; preds = %do.body31.i.2.if.then50.i_crit_edge, %do.body31.i.1.if.then50.i_crit_edge, %do.body31.preheader.i.if.then50.i_crit_edge
  %arrayidx.i96.lcssa = phi ptr [ %call12.i, %do.body31.preheader.i.if.then50.i_crit_edge ], [ %arrayidx.i96.1, %do.body31.i.1.if.then50.i_crit_edge ], [ %arrayidx.i96.2, %do.body31.i.2.if.then50.i_crit_edge ]
  %132 = ptrtoint ptr %arrayidx.i96.lcssa to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %arrayidx.i96.lcssa, align 4
  br label %out_clean.thread.i

for.inc.i:                                        ; preds = %do.body31.preheader.i
  %call42.i = call i32 @wake_up_process(ptr noundef %call39.i) #14
  %133 = ptrtoint ptr %call12.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call39.i, ptr %call12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %exitcond.not.i = icmp eq i32 %129, 1
  br i1 %exitcond.not.i, label %for.inc.i.for.body71.preheader.i_crit_edge, label %do.body31.i.1

for.inc.i.for.body71.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body71.preheader.i

do.body31.i.1:                                    ; preds = %for.inc.i
  %arrayidx.i96.1 = getelementptr %struct.dec_data, ptr %call12.i, i32 1
  %go.i.1 = getelementptr %struct.dec_data, ptr %call12.i, i32 1, i32 4
  call void @__init_waitqueue_head(ptr noundef %go.i.1, ptr noundef nonnull @.str.47, ptr noundef nonnull @load_image_lzo.__key) #14
  %done.i.1 = getelementptr %struct.dec_data, ptr %call12.i, i32 1, i32 5
  call void @__init_waitqueue_head(ptr noundef %done.i.1, ptr noundef nonnull @.str.49, ptr noundef nonnull @load_image_lzo.__key.101) #14
  %call39.i.1 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @lzo_decompress_threadfn, ptr noundef %arrayidx.i96.1, i32 noundef -1, ptr noundef nonnull @.str.102, i32 noundef 1) #14
  %cmp.i.i97.1 = icmp ugt ptr %call39.i.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i97.1, label %do.body31.i.1.if.then50.i_crit_edge, label %for.inc.i.1

do.body31.i.1.if.then50.i_crit_edge:              ; preds = %do.body31.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then50.i

for.inc.i.1:                                      ; preds = %do.body31.i.1
  %call42.i.1 = call i32 @wake_up_process(ptr noundef %call39.i.1) #14
  %134 = ptrtoint ptr %arrayidx.i96.1 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call39.i.1, ptr %arrayidx.i96.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %129)
  %exitcond.not.i.1 = icmp eq i32 %129, 2
  br i1 %exitcond.not.i.1, label %for.inc.i.1.for.body71.preheader.i_crit_edge, label %do.body31.i.2

for.inc.i.1.for.body71.preheader.i_crit_edge:     ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body71.preheader.i

do.body31.i.2:                                    ; preds = %for.inc.i.1
  %arrayidx.i96.2 = getelementptr %struct.dec_data, ptr %call12.i, i32 2
  %go.i.2 = getelementptr %struct.dec_data, ptr %call12.i, i32 2, i32 4
  call void @__init_waitqueue_head(ptr noundef %go.i.2, ptr noundef nonnull @.str.47, ptr noundef nonnull @load_image_lzo.__key) #14
  %done.i.2 = getelementptr %struct.dec_data, ptr %call12.i, i32 2, i32 5
  call void @__init_waitqueue_head(ptr noundef %done.i.2, ptr noundef nonnull @.str.49, ptr noundef nonnull @load_image_lzo.__key.101) #14
  %call39.i.2 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @lzo_decompress_threadfn, ptr noundef %arrayidx.i96.2, i32 noundef -1, ptr noundef nonnull @.str.102, i32 noundef 2) #14
  %cmp.i.i97.2 = icmp ugt ptr %call39.i.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i97.2, label %do.body31.i.2.if.then50.i_crit_edge, label %for.inc.i.2

do.body31.i.2.if.then50.i_crit_edge:              ; preds = %do.body31.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then50.i

for.inc.i.2:                                      ; preds = %do.body31.i.2
  call void @__sanitizer_cov_trace_pc() #16
  %call42.i.2 = call i32 @wake_up_process(ptr noundef %call39.i.2) #14
  %135 = ptrtoint ptr %arrayidx.i96.2 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call39.i.2, ptr %arrayidx.i96.2, align 4
  br label %for.body71.preheader.i

for.body71.preheader.i:                           ; preds = %for.inc.i.2, %for.inc.i.1.for.body71.preheader.i_crit_edge, %for.inc.i.for.body71.preheader.i_crit_edge
  %go60.i = getelementptr inbounds %struct.crc_data, ptr %call7.i.i.i95, i32 0, i32 4
  call void @__init_waitqueue_head(ptr noundef %go60.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @load_image_lzo.__key.106) #14
  %done64.i = getelementptr inbounds %struct.crc_data, ptr %call7.i.i.i95, i32 0, i32 5
  call void @__init_waitqueue_head(ptr noundef %done64.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @load_image_lzo.__key.107) #14
  %crc32.i = getelementptr inbounds %struct.swap_map_handle, ptr %handle, i32 0, i32 6
  %136 = ptrtoint ptr %crc32.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %crc32.i, align 8
  %crc3268.i = getelementptr inbounds %struct.crc_data, ptr %call7.i.i.i95, i32 0, i32 6
  %137 = ptrtoint ptr %crc3268.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %crc32.i, ptr %crc3268.i, align 8
  %unc.i = getelementptr %struct.dec_data, ptr %call12.i, i32 0, i32 8
  %arrayidx74.i = getelementptr %struct.crc_data, ptr %call7.i.i.i95, i32 0, i32 8, i32 0
  %138 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %unc.i, ptr %arrayidx74.i, align 8
  %unc_len.i = getelementptr %struct.dec_data, ptr %call12.i, i32 0, i32 6
  %arrayidx77.i = getelementptr %struct.crc_data, ptr %call7.i.i.i95, i32 0, i32 7, i32 0
  %139 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %unc_len.i, ptr %arrayidx77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %exitcond907.not.i = icmp eq i32 %129, 1
  br i1 %exitcond907.not.i, label %for.body71.preheader.i.for.end80.i_crit_edge, label %for.body71.i.1

for.body71.preheader.i.for.end80.i_crit_edge:     ; preds = %for.body71.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end80.i

for.body71.i.1:                                   ; preds = %for.body71.preheader.i
  %unc.i.1 = getelementptr %struct.dec_data, ptr %call12.i, i32 1, i32 8
  %arrayidx74.i.1 = getelementptr %struct.crc_data, ptr %call7.i.i.i95, i32 0, i32 8, i32 1
  %140 = ptrtoint ptr %arrayidx74.i.1 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %unc.i.1, ptr %arrayidx74.i.1, align 4
  %unc_len.i.1 = getelementptr %struct.dec_data, ptr %call12.i, i32 1, i32 6
  %arrayidx77.i.1 = getelementptr %struct.crc_data, ptr %call7.i.i.i95, i32 0, i32 7, i32 1
  %141 = ptrtoint ptr %arrayidx77.i.1 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %unc_len.i.1, ptr %arrayidx77.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %129)
  %exitcond907.not.i.1 = icmp eq i32 %129, 2
  br i1 %exitcond907.not.i.1, label %for.body71.i.1.for.end80.i_crit_edge, label %for.body71.i.2

for.body71.i.1.for.end80.i_crit_edge:             ; preds = %for.body71.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end80.i

for.body71.i.2:                                   ; preds = %for.body71.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %unc.i.2 = getelementptr %struct.dec_data, ptr %call12.i, i32 2, i32 8
  %arrayidx74.i.2 = getelementptr %struct.crc_data, ptr %call7.i.i.i95, i32 0, i32 8, i32 2
  %142 = ptrtoint ptr %arrayidx74.i.2 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %unc.i.2, ptr %arrayidx74.i.2, align 8
  %unc_len.i.2 = getelementptr %struct.dec_data, ptr %call12.i, i32 2, i32 6
  %arrayidx77.i.2 = getelementptr %struct.crc_data, ptr %call7.i.i.i95, i32 0, i32 7, i32 2
  %143 = ptrtoint ptr %arrayidx77.i.2 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %unc_len.i.2, ptr %arrayidx77.i.2, align 4
  br label %for.end80.i

for.end80.i:                                      ; preds = %for.body71.i.2, %for.body71.i.1.for.end80.i_crit_edge, %for.body71.preheader.i.for.end80.i_crit_edge
  %call82.i = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @crc32_threadfn, ptr noundef nonnull %call7.i.i.i95, i32 noundef -1, ptr noundef nonnull @.str.58) #14
  %cmp.i762.i = icmp ugt ptr %call82.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i762.i, label %if.then91.i, label %if.end98.i

if.then91.i:                                      ; preds = %for.end80.i
  call void @__sanitizer_cov_trace_pc() #16
  %144 = ptrtoint ptr %call7.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %call7.i.i.i95, align 8
  br label %out_clean.thread.i

if.end98.i:                                       ; preds = %for.end80.i
  %call85.i = call i32 @wake_up_process(ptr noundef %call82.i) #14
  %145 = ptrtoint ptr %call7.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call82.i, ptr %call7.i.i.i95, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vm_zone_stat, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_zone_stat to i32))
  %146 = load volatile i32, ptr @vm_zone_stat, align 4
  %147 = call i32 @llvm.smax.i32(i32 %146, i32 0) #14
  %call.i.i764.i = call i32 @__nr_free_highpages() #14
  %sub.i.i = sub i32 %147, %call.i.i764.i
  %call100.i = call i32 @snapshot_get_image_size() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %call100.i)
  %cmp101.i = icmp ugt i32 %sub.i.i, %call100.i
  br i1 %cmp101.i, label %if.end106.i, label %if.end98.i..thread.i_crit_edge

if.end98.i..thread.i_crit_edge:                   ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %.thread.i

if.end106.i:                                      ; preds = %if.end98.i
  %call103.i = call fastcc i32 @low_free_pages() #14
  %call104.i = call i32 @snapshot_get_image_size() #14
  %sub105.i = sub i32 %call103.i, %call104.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %sub105.i)
  %cmp108.i = icmp ugt i32 %sub105.i, 2049
  br i1 %cmp108.i, label %148, label %if.end106.i..thread.i_crit_edge

if.end106.i..thread.i_crit_edge:                  ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %.thread.i

148:                                              ; preds = %if.end106.i
  %div743.i = lshr i32 %sub105.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %sub105.i)
  %cmp114.i = icmp ult i32 %sub105.i, 16384
  br i1 %cmp114.i, label %..thread.i_crit_edge, label %.for.body121.preheader.i_crit_edge

.for.body121.preheader.i_crit_edge:               ; preds = %148
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body121.preheader.i

..thread.i_crit_edge:                             ; preds = %148
  call void @__sanitizer_cov_trace_pc() #16
  br label %.thread.i

.thread.i:                                        ; preds = %..thread.i_crit_edge, %if.end106.i..thread.i_crit_edge, %if.end98.i..thread.i_crit_edge
  %149 = phi i32 [ %div743.i, %..thread.i_crit_edge ], [ 1024, %if.end106.i..thread.i_crit_edge ], [ 1024, %if.end98.i..thread.i_crit_edge ]
  br label %for.body121.preheader.i

for.body121.preheader.i:                          ; preds = %.thread.i, %.for.body121.preheader.i_crit_edge
  %150 = phi i32 [ %149, %.thread.i ], [ 8192, %.for.body121.preheader.i_crit_edge ]
  br label %for.body121.i

for.body121.i:                                    ; preds = %for.inc137.i.for.body121.i_crit_edge, %for.body121.preheader.i
  %i.0823.i = phi i32 [ %inc138.i, %for.inc137.i.for.body121.i_crit_edge ], [ 0, %for.body121.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %i.0823.i)
  %cmp122.i = icmp ult i32 %i.0823.i, 35
  %cond123.i = select i1 %cmp122.i, i32 3104, i32 76800
  %call124.i = call i32 @__get_free_pages(i32 noundef %cond123.i, i32 noundef 0) #14
  %151 = inttoptr i32 %call124.i to ptr
  %arrayidx125.i = getelementptr ptr, ptr %call8.i, i32 %i.0823.i
  %152 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %151, ptr %arrayidx125.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i)
  %tobool127.not.i = icmp eq i32 %call124.i, 0
  br i1 %tobool127.not.i, label %if.then128.i, label %for.inc137.i

if.then128.i:                                     ; preds = %for.body121.i
  br i1 %cmp122.i, label %if.then130.i, label %if.then128.i.for.end139.i_crit_edge

if.then128.i.for.end139.i_crit_edge:              ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end139.i

if.then130.i:                                     ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #16
  %call135.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #18
  br label %out_clean.i

for.inc137.i:                                     ; preds = %for.body121.i
  %inc138.i = add nuw nsw i32 %i.0823.i, 1
  %exitcond908.not.i = icmp eq i32 %inc138.i, %150
  br i1 %exitcond908.not.i, label %for.inc137.i.for.end139.i_crit_edge, label %for.inc137.i.for.body121.i_crit_edge

for.inc137.i.for.body121.i_crit_edge:             ; preds = %for.inc137.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body121.i

for.inc137.i.for.end139.i_crit_edge:              ; preds = %for.inc137.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end139.i

for.end139.i:                                     ; preds = %for.inc137.i.for.end139.i_crit_edge, %if.then128.i.for.end139.i_crit_edge
  %i.0815.i = phi i32 [ %i.0823.i, %if.then128.i.for.end139.i_crit_edge ], [ %150, %for.inc137.i.for.end139.i_crit_edge ]
  %call144.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %129) #18
  %call149.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %sub16) #18
  %div150.i = udiv i32 %sub16, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub16)
  %153 = icmp ult i32 %sub16, 10
  %spec.store.select538.i = select i1 %153, i32 1, i32 %div150.i
  %call154.i = call i64 @ktime_get() #14
  %call155.i = call i32 @snapshot_write_next(ptr noundef nonnull %snapshot) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call155.i)
  %cmp156.i = icmp slt i32 %call155.i, 1
  br i1 %cmp156.i, label %for.end139.i.out_finish.i_crit_edge, label %for.cond159.preheader.i

for.end139.i.out_finish.i_crit_edge:              ; preds = %for.end139.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish.i

for.cond159.preheader.i:                          ; preds = %for.end139.i
  %run_threads197.i = getelementptr inbounds %struct.crc_data, ptr %call7.i.i.i95, i32 0, i32 3
  %stop207.i = getelementptr inbounds %struct.crc_data, ptr %call7.i.i.i95, i32 0, i32 2
  %ready409.i = getelementptr inbounds %struct.crc_data, ptr %call7.i.i.i95, i32 0, i32 1
  %cmp_len.i = getelementptr %struct.dec_data, ptr %call12.i, i32 0, i32 7
  %cmp270.i = getelementptr %struct.dec_data, ptr %call12.i, i32 0, i32 9
  %ready.i = getelementptr %struct.dec_data, ptr %call12.i, i32 0, i32 1
  %go283.i = getelementptr %struct.dec_data, ptr %call12.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %cmp231.i = icmp ugt i32 %129, 1
  %cmp_len.i.1 = getelementptr %struct.dec_data, ptr %call12.i, i32 1, i32 7
  %cmp270.i.1 = getelementptr %struct.dec_data, ptr %call12.i, i32 1, i32 9
  %ready.i.1 = getelementptr %struct.dec_data, ptr %call12.i, i32 1, i32 1
  %go283.i.1 = getelementptr %struct.dec_data, ptr %call12.i, i32 1, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %128)
  %cmp231.i.1 = icmp ugt i32 %128, 2
  %cmp_len.i.2 = getelementptr %struct.dec_data, ptr %call12.i, i32 2, i32 7
  %cmp270.i.2 = getelementptr %struct.dec_data, ptr %call12.i, i32 2, i32 9
  %ready.i.2 = getelementptr %struct.dec_data, ptr %call12.i, i32 2, i32 1
  %go283.i.2 = getelementptr %struct.dec_data, ptr %call12.i, i32 2, i32 4
  br label %for.cond159.i

for.cond159.i:                                    ; preds = %for.end407.i, %for.cond159.preheader.i
  %asked.0.i = phi i32 [ %asked.2.i, %for.end407.i ], [ 0, %for.cond159.preheader.i ]
  %want.0.i = phi i32 [ %want.1797919.i, %for.end407.i ], [ %i.0815.i, %for.cond159.preheader.i ]
  %have.0.i = phi i32 [ %have.4.i, %for.end407.i ], [ 0, %for.cond159.preheader.i ]
  %pg.0.i = phi i32 [ %pg.1791922.i, %for.end407.i ], [ 0, %for.cond159.preheader.i ]
  %ring.0.i = phi i32 [ %ring.1785.i, %for.end407.i ], [ 0, %for.cond159.preheader.i ]
  %nr_pages.0.i = phi i32 [ %nr_pages.1.lcssa.i, %for.end407.i ], [ 0, %for.cond159.preheader.i ]
  %eof.0.i = phi i32 [ %eof.3.i, %for.end407.i ], [ 0, %for.cond159.preheader.i ]
  %ret.0.i = phi i32 [ %ret.5.lcssa.i, %for.end407.i ], [ %call155.i, %for.cond159.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eof.0.i)
  %tobool161.not.i = icmp eq i32 %eof.0.i, 0
  br i1 %tobool161.not.i, label %land.rhs.i.preheader, label %for.cond159.i.for.end181.i_crit_edge

for.cond159.i.for.end181.i_crit_edge:             ; preds = %for.cond159.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end181.i

land.rhs.i.preheader:                             ; preds = %for.cond159.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %want.0.i)
  %exitcond909.not.i178 = icmp eq i32 %want.0.i, 0
  br i1 %exitcond909.not.i178, label %land.rhs.i.preheader.for.end181.i_crit_edge, label %land.rhs.i.preheader.for.body163.i_crit_edge

land.rhs.i.preheader.for.body163.i_crit_edge:     ; preds = %land.rhs.i.preheader
  br label %for.body163.i

land.rhs.i.preheader.for.end181.i_crit_edge:      ; preds = %land.rhs.i.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end181.i

for.body163.i:                                    ; preds = %if.end174.i.for.body163.i_crit_edge, %land.rhs.i.preheader.for.body163.i_crit_edge
  %ring.1824.i180 = phi i32 [ %spec.store.select.i118, %if.end174.i.for.body163.i_crit_edge ], [ %ring.0.i, %land.rhs.i.preheader.for.body163.i_crit_edge ]
  %i.1825.i179 = phi i32 [ %inc180.i, %if.end174.i.for.body163.i_crit_edge ], [ 0, %land.rhs.i.preheader.for.body163.i_crit_edge ]
  %arrayidx164.i = getelementptr ptr, ptr %call8.i, i32 %ring.1824.i180
  %154 = ptrtoint ptr %arrayidx164.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx164.i, align 4
  %156 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %handle, align 8
  %tobool.not.i.i102 = icmp eq ptr %157, null
  br i1 %tobool.not.i.i102, label %for.body163.i.for.end181.i_crit_edge, label %if.end.i.i105

for.body163.i.for.end181.i_crit_edge:             ; preds = %for.body163.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end181.i

if.end.i.i105:                                    ; preds = %for.body163.i
  %158 = ptrtoint ptr %k.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %k.i, align 8
  %arrayidx.i.i103 = getelementptr [511 x i64], ptr %157, i32 0, i32 %159
  %160 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %arrayidx.i.i103, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %161)
  %tobool2.not.i.i104 = icmp eq i64 %161, 0
  br i1 %tobool2.not.i.i104, label %if.end.i.i105.if.then167.i_crit_edge, label %if.end4.i.i109

if.end.i.i105.if.then167.i_crit_edge:             ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then167.i

if.end4.i.i109:                                   ; preds = %if.end.i.i105
  %conv.i.i106 = trunc i64 %161 to i32
  %call.i.i107 = call fastcc i32 @hib_submit_io(i32 noundef 0, i32 noundef 0, i32 noundef %conv.i.i106, ptr noundef %155, ptr noundef nonnull %hb.i87) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i107)
  %tobool5.not.i.i108 = icmp eq i32 %call.i.i107, 0
  br i1 %tobool5.not.i.i108, label %if.end7.i.i111, label %if.end4.i.i109.if.then167.i_crit_edge

if.end4.i.i109.if.then167.i_crit_edge:            ; preds = %if.end4.i.i109
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then167.i

if.end7.i.i111:                                   ; preds = %if.end4.i.i109
  %162 = ptrtoint ptr %k.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %k.i, align 8
  %inc.i.i110 = add i32 %163, 1
  store i32 %inc.i.i110, ptr %k.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %inc.i.i110)
  %cmp.i765.i = icmp ugt i32 %inc.i.i110, 510
  br i1 %cmp.i765.i, label %if.then10.i.i114, label %if.end7.i.i111.if.end174.i_crit_edge

if.end7.i.i111.if.end174.i_crit_edge:             ; preds = %if.end7.i.i111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end174.i

if.then10.i.i114:                                 ; preds = %if.end7.i.i111
  %164 = ptrtoint ptr %k.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %k.i, align 8
  %165 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %maps.i, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @free_pages(i32 noundef %169, i32 noundef 0) #14
  %170 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %maps.i, align 4
  %next.i.i112 = getelementptr inbounds %struct.swap_map_page_list, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %next.i.i112 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %next.i.i112, align 4
  store ptr %173, ptr %maps.i, align 4
  call void @kfree(ptr noundef %171) #14
  %174 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %maps.i, align 4
  %tobool16.not.i.i113 = icmp eq ptr %175, null
  br i1 %tobool16.not.i.i113, label %if.then10.i.i114.cleanup.sink.split.i.i117_crit_edge, label %if.else.i.i115

if.then10.i.i114.cleanup.sink.split.i.i117_crit_edge: ; preds = %if.then10.i.i114
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i.i117

if.else.i.i115:                                   ; preds = %if.then10.i.i114
  call void @__sanitizer_cov_trace_pc() #16
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  br label %cleanup.sink.split.i.i117

cleanup.sink.split.i.i117:                        ; preds = %if.else.i.i115, %if.then10.i.i114.cleanup.sink.split.i.i117_crit_edge
  %.sink.i.i116 = phi ptr [ %177, %if.else.i.i115 ], [ null, %if.then10.i.i114.cleanup.sink.split.i.i117_crit_edge ]
  %178 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %.sink.i.i116, ptr %handle, align 8
  br label %if.end174.i

if.then167.i:                                     ; preds = %if.end4.i.i109.if.then167.i_crit_edge, %if.end.i.i105.if.then167.i_crit_edge
  %retval.0.i766.ph.ph.i = phi i32 [ -14, %if.end.i.i105.if.then167.i_crit_edge ], [ %call.i.i107, %if.end4.i.i109.if.then167.i_crit_edge ]
  %179 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %179)
  %.pr.i = load ptr, ptr %handle, align 8
  %tobool168.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool168.not.i, label %if.then167.i.for.end181.i_crit_edge, label %land.lhs.true.i

if.then167.i.for.end181.i_crit_edge:              ; preds = %if.then167.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end181.i

land.lhs.true.i:                                  ; preds = %if.then167.i
  %180 = ptrtoint ptr %k.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %k.i, align 8
  %arrayidx170.i = getelementptr [511 x i64], ptr %.pr.i, i32 0, i32 %181
  %182 = ptrtoint ptr %arrayidx170.i to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %arrayidx170.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %183)
  %tobool171.not.i = icmp eq i64 %183, 0
  br i1 %tobool171.not.i, label %land.lhs.true.i.for.end181.i_crit_edge, label %land.lhs.true.i.out_finish.i_crit_edge

land.lhs.true.i.out_finish.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish.i

land.lhs.true.i.for.end181.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end181.i

if.end174.i:                                      ; preds = %cleanup.sink.split.i.i117, %if.end7.i.i111.if.end174.i_crit_edge
  %inc175.i = add i32 %ring.1824.i180, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc175.i, i32 %i.0815.i)
  %cmp176.not.i = icmp ult i32 %inc175.i, %i.0815.i
  %spec.store.select.i118 = select i1 %cmp176.not.i, i32 %inc175.i, i32 0
  %inc180.i = add nuw i32 %i.1825.i179, 1
  %exitcond909.not.i = icmp eq i32 %inc180.i, %want.0.i
  br i1 %exitcond909.not.i, label %if.end174.i.for.end181.i_crit_edge, label %if.end174.i.for.body163.i_crit_edge

if.end174.i.for.body163.i_crit_edge:              ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body163.i

if.end174.i.for.end181.i_crit_edge:               ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end181.i

for.end181.i:                                     ; preds = %if.end174.i.for.end181.i_crit_edge, %land.lhs.true.i.for.end181.i_crit_edge, %if.then167.i.for.end181.i_crit_edge, %for.body163.i.for.end181.i_crit_edge, %land.rhs.i.preheader.for.end181.i_crit_edge, %for.cond159.i.for.end181.i_crit_edge
  %ring.1785.i = phi i32 [ %ring.1824.i180, %land.lhs.true.i.for.end181.i_crit_edge ], [ %ring.1824.i180, %if.then167.i.for.end181.i_crit_edge ], [ %ring.0.i, %for.cond159.i.for.end181.i_crit_edge ], [ %ring.0.i, %land.rhs.i.preheader.for.end181.i_crit_edge ], [ %spec.store.select.i118, %if.end174.i.for.end181.i_crit_edge ], [ %ring.1824.i180, %for.body163.i.for.end181.i_crit_edge ]
  %i.1783.i = phi i32 [ %i.1825.i179, %land.lhs.true.i.for.end181.i_crit_edge ], [ %i.1825.i179, %if.then167.i.for.end181.i_crit_edge ], [ 0, %for.cond159.i.for.end181.i_crit_edge ], [ 0, %land.rhs.i.preheader.for.end181.i_crit_edge ], [ %want.0.i, %if.end174.i.for.end181.i_crit_edge ], [ %i.1825.i179, %for.body163.i.for.end181.i_crit_edge ]
  %eof.1.i = phi i32 [ 1, %land.lhs.true.i.for.end181.i_crit_edge ], [ 1, %if.then167.i.for.end181.i_crit_edge ], [ %eof.0.i, %for.cond159.i.for.end181.i_crit_edge ], [ 0, %land.rhs.i.preheader.for.end181.i_crit_edge ], [ 0, %if.end174.i.for.end181.i_crit_edge ], [ 1, %for.body163.i.for.end181.i_crit_edge ]
  %ret.2.i = phi i32 [ %retval.0.i766.ph.ph.i, %land.lhs.true.i.for.end181.i_crit_edge ], [ %retval.0.i766.ph.ph.i, %if.then167.i.for.end181.i_crit_edge ], [ %ret.0.i, %for.cond159.i.for.end181.i_crit_edge ], [ %ret.0.i, %land.rhs.i.preheader.for.end181.i_crit_edge ], [ 0, %if.end174.i.for.end181.i_crit_edge ], [ -22, %for.body163.i.for.end181.i_crit_edge ]
  %add.i = add i32 %i.1783.i, %asked.0.i
  %sub182.i = sub i32 %want.0.i, %i.1783.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.0.i)
  %tobool183.not.i = icmp eq i32 %have.0.i, 0
  br i1 %tobool183.not.i, label %if.then184.i, label %for.end181.i.if.end196.i_crit_edge

for.end181.i.if.end196.i_crit_edge:               ; preds = %for.end181.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end196.i

if.then184.i:                                     ; preds = %for.end181.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool185.not.i = icmp eq i32 %add.i, 0
  br i1 %tobool185.not.i, label %if.then184.i.out_finish.i_crit_edge, label %if.end187.i

if.then184.i.out_finish.i_crit_edge:              ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish.i

if.end187.i:                                      ; preds = %if.then184.i
  %call188.i = call fastcc i32 @hib_wait_io(ptr noundef nonnull %hb.i87) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188.i)
  %tobool189.not.i = icmp eq i32 %call188.i, 0
  br i1 %tobool189.not.i, label %if.end191.i, label %if.end187.i.out_finish.i_crit_edge

if.end187.i.out_finish.i_crit_edge:               ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish.i

if.end191.i:                                      ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eof.1.i)
  %tobool193.not.i = icmp eq i32 %eof.1.i, 0
  %spec.store.select535.i = select i1 %tobool193.not.i, i32 0, i32 2
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.end191.i, %for.end181.i.if.end196.i_crit_edge
  %asked.1.i = phi i32 [ %add.i, %for.end181.i.if.end196.i_crit_edge ], [ 0, %if.end191.i ]
  %have.1.i = phi i32 [ %have.0.i, %for.end181.i.if.end196.i_crit_edge ], [ %add.i, %if.end191.i ]
  %eof.2.i = phi i32 [ %eof.1.i, %for.end181.i.if.end196.i_crit_edge ], [ %spec.store.select535.i, %if.end191.i ]
  %ret.3.i119 = phi i32 [ %ret.2.i, %for.end181.i.if.end196.i_crit_edge ], [ 0, %if.end191.i ]
  %184 = ptrtoint ptr %run_threads197.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %run_threads197.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool198.not.i = icmp eq i32 %185, 0
  br i1 %tobool198.not.i, label %if.end196.i.for.body233.i_crit_edge, label %do.body201.i

if.end196.i.for.body233.i_crit_edge:              ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body233.i

do.body201.i:                                     ; preds = %if.end196.i
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1341) #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %stop207.i, i32 noundef 4) #14
  %186 = ptrtoint ptr %stop207.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %stop207.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool209.not.i = icmp eq i32 %187, 0
  br i1 %tobool209.not.i, label %if.end211.i, label %do.body201.i.if.end227.i_crit_edge

do.body201.i.if.end227.i_crit_edge:               ; preds = %do.body201.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end227.i

if.end211.i:                                      ; preds = %do.body201.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  %188 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #14
  %call214839.i = call i32 @prepare_to_wait_event(ptr noundef %done64.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #14
  %call.i.i749840.i = call zeroext i1 @__kasan_check_read(ptr noundef %stop207.i, i32 noundef 4) #14
  %189 = ptrtoint ptr %stop207.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %stop207.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool217.not841.i = icmp eq i32 %190, 0
  br i1 %tobool217.not841.i, label %if.end211.i.cleanup.i_crit_edge, label %if.end211.i.for.end220.i_crit_edge

if.end211.i.for.end220.i_crit_edge:               ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end220.i

if.end211.i.cleanup.i_crit_edge:                  ; preds = %if.end211.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end211.i.cleanup.i_crit_edge
  call void @schedule() #14
  %call214.i = call i32 @prepare_to_wait_event(ptr noundef %done64.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #14
  %call.i.i749.i = call zeroext i1 @__kasan_check_read(ptr noundef %stop207.i, i32 noundef 4) #14
  %191 = ptrtoint ptr %stop207.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %stop207.i, align 8
  %tobool217.not.i = icmp eq i32 %192, 0
  br i1 %tobool217.not.i, label %cleanup.i.cleanup.i_crit_edge, label %cleanup.i.for.end220.i_crit_edge

cleanup.i.for.end220.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end220.i

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

for.end220.i:                                     ; preds = %cleanup.i.for.end220.i_crit_edge, %if.end211.i.for.end220.i_crit_edge
  call void @finish_wait(ptr noundef %done64.i, ptr noundef nonnull %__wq_entry.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  br label %if.end227.i

if.end227.i:                                      ; preds = %for.end220.i, %do.body201.i.if.end227.i_crit_edge
  %call.i.i750.i = call zeroext i1 @__kasan_check_write(ptr noundef %stop207.i, i32 noundef 4) #14
  %193 = ptrtoint ptr %stop207.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile i32 0, ptr %stop207.i, align 8
  %194 = ptrtoint ptr %run_threads197.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %run_threads197.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.1.i)
  %tobool229.not851.not.i = icmp eq i32 %have.1.i, 0
  br i1 %tobool229.not851.not.i, label %if.end227.i.land.lhs.true288.i_crit_edge, label %if.end227.i.for.body233.i_crit_edge

if.end227.i.for.body233.i_crit_edge:              ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body233.i

if.end227.i.land.lhs.true288.i_crit_edge:         ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true288.i

for.body233.i:                                    ; preds = %if.end227.i.for.body233.i_crit_edge, %if.end196.i.for.body233.i_crit_edge
  %arrayidx234.i = getelementptr ptr, ptr %call8.i, i32 %pg.0.i
  %195 = ptrtoint ptr %arrayidx234.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx234.i, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %196, align 4
  %199 = ptrtoint ptr %cmp_len.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %cmp_len.i, align 4
  %200 = add i32 %198, -139334
  call void @__sanitizer_cov_trace_const_cmp4(i32 -139333, i32 %200)
  %201 = icmp ult i32 %200, -139333
  br i1 %201, label %for.body233.i.do.end247.i_crit_edge, label %if.end250.i, !prof !271

for.body233.i.do.end247.i_crit_edge:              ; preds = %for.body233.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end247.i

do.end247.i:                                      ; preds = %for.body233.i.2.do.end247.i_crit_edge, %for.body233.i.1.do.end247.i_crit_edge, %for.body233.i.do.end247.i_crit_edge
  %call249.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #18
  br label %out_finish.i

if.end250.i:                                      ; preds = %for.body233.i
  %sub255.i = add nuw nsw i32 %198, 4099
  %div256742.i = lshr i32 %sub255.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %div256742.i, i32 %have.1.i)
  %cmp257.i = icmp ugt i32 %div256742.i, %have.1.i
  br i1 %cmp257.i, label %if.end250.i.if.then258.i_crit_edge, label %if.end250.i.for.body268.i_crit_edge

if.end250.i.for.body268.i_crit_edge:              ; preds = %if.end250.i
  br label %for.body268.i

if.end250.i.if.then258.i_crit_edge:               ; preds = %if.end250.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then258.i

if.then258.i:                                     ; preds = %if.end250.i.2.if.then258.i_crit_edge, %if.end250.i.1.if.then258.i_crit_edge, %if.end250.i.if.then258.i_crit_edge
  %thr.2857.i.lcssa284 = phi i32 [ 0, %if.end250.i.if.then258.i_crit_edge ], [ 1, %if.end250.i.1.if.then258.i_crit_edge ], [ 2, %if.end250.i.2.if.then258.i_crit_edge ]
  %pg.1856.i.lcssa282 = phi i32 [ %pg.0.i, %if.end250.i.if.then258.i_crit_edge ], [ %spec.store.select536.i, %if.end250.i.1.if.then258.i_crit_edge ], [ %spec.store.select536.i.1, %if.end250.i.2.if.then258.i_crit_edge ]
  %have.2855.i.lcssa280 = phi i32 [ %have.1.i, %if.end250.i.if.then258.i_crit_edge ], [ %dec.i, %if.end250.i.1.if.then258.i_crit_edge ], [ %dec.i.1, %if.end250.i.2.if.then258.i_crit_edge ]
  %want.1854.i.lcssa278 = phi i32 [ %sub182.i, %if.end250.i.if.then258.i_crit_edge ], [ %inc273.i, %if.end250.i.1.if.then258.i_crit_edge ], [ %inc273.i.1, %if.end250.i.2.if.then258.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %eof.2.i)
  %cmp259.i = icmp sgt i32 %eof.2.i, 1
  br i1 %cmp259.i, label %if.then258.i.out_finish.i_crit_edge, label %if.then258.i.for.end286.i_crit_edge

if.then258.i.for.end286.i_crit_edge:              ; preds = %if.then258.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end286.i

if.then258.i.out_finish.i_crit_edge:              ; preds = %if.then258.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish.i

for.body268.i:                                    ; preds = %for.body268.i.for.body268.i_crit_edge, %if.end250.i.for.body268.i_crit_edge
  %off.0847.i = phi i32 [ %add279.i, %for.body268.i.for.body268.i_crit_edge ], [ 0, %if.end250.i.for.body268.i_crit_edge ]
  %pg.2846.i = phi i32 [ %spec.store.select536.i, %for.body268.i.for.body268.i_crit_edge ], [ %pg.0.i, %if.end250.i.for.body268.i_crit_edge ]
  %have.3845.i = phi i32 [ %dec.i, %for.body268.i.for.body268.i_crit_edge ], [ %have.1.i, %if.end250.i.for.body268.i_crit_edge ]
  %want.2844.i = phi i32 [ %inc273.i, %for.body268.i.for.body268.i_crit_edge ], [ %sub182.i, %if.end250.i.for.body268.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %cmp270.i, i32 %off.0847.i
  %arrayidx272.i = getelementptr ptr, ptr %call8.i, i32 %pg.2846.i
  %202 = ptrtoint ptr %arrayidx272.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx272.i, align 4
  %204 = call ptr @memcpy(ptr %add.ptr.i, ptr %203, i32 4096)
  %dec.i = add i32 %have.3845.i, -1
  %inc273.i = add i32 %want.2844.i, 1
  %inc274.i = add i32 %pg.2846.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc274.i, i32 %i.0815.i)
  %cmp275.not.i = icmp ult i32 %inc274.i, %i.0815.i
  %spec.store.select536.i = select i1 %cmp275.not.i, i32 %inc274.i, i32 0
  %add279.i = add i32 %off.0847.i, 4096
  %205 = ptrtoint ptr %cmp_len.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %cmp_len.i, align 4
  %add266.i = add i32 %206, 4
  %cmp267.i = icmp ult i32 %add279.i, %add266.i
  br i1 %cmp267.i, label %for.body268.i.for.body268.i_crit_edge, label %for.end280.i

for.body268.i.for.body268.i_crit_edge:            ; preds = %for.body268.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body268.i

for.end280.i:                                     ; preds = %for.body268.i
  %call.i.i751.i = call zeroext i1 @__kasan_check_write(ptr noundef %ready.i, i32 noundef 4) #14
  %207 = ptrtoint ptr %ready.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store volatile i32 1, ptr %ready.i, align 4
  call void @__wake_up(ptr noundef %go283.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool229.not.i = icmp ne i32 %dec.i, 0
  %or.cond.i = select i1 %tobool229.not.i, i1 %cmp231.i, i1 false
  br i1 %or.cond.i, label %for.body233.i.1, label %for.end280.i.for.end286.i_crit_edge

for.end280.i.for.end286.i_crit_edge:              ; preds = %for.end280.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end286.i

for.body233.i.1:                                  ; preds = %for.end280.i
  %arrayidx234.i.1 = getelementptr ptr, ptr %call8.i, i32 %spec.store.select536.i
  %208 = ptrtoint ptr %arrayidx234.i.1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx234.i.1, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %209, align 4
  %212 = ptrtoint ptr %cmp_len.i.1 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %cmp_len.i.1, align 4
  %213 = add i32 %211, -139334
  call void @__sanitizer_cov_trace_const_cmp4(i32 -139333, i32 %213)
  %214 = icmp ult i32 %213, -139333
  br i1 %214, label %for.body233.i.1.do.end247.i_crit_edge, label %if.end250.i.1, !prof !271

for.body233.i.1.do.end247.i_crit_edge:            ; preds = %for.body233.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end247.i

if.end250.i.1:                                    ; preds = %for.body233.i.1
  %sub255.i.1 = add nuw nsw i32 %211, 4099
  %div256742.i.1 = lshr i32 %sub255.i.1, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %div256742.i.1, i32 %dec.i)
  %cmp257.i.1 = icmp ugt i32 %div256742.i.1, %dec.i
  br i1 %cmp257.i.1, label %if.end250.i.1.if.then258.i_crit_edge, label %if.end250.i.1.for.body268.i.1_crit_edge

if.end250.i.1.for.body268.i.1_crit_edge:          ; preds = %if.end250.i.1
  br label %for.body268.i.1

if.end250.i.1.if.then258.i_crit_edge:             ; preds = %if.end250.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then258.i

for.body268.i.1:                                  ; preds = %for.body268.i.1.for.body268.i.1_crit_edge, %if.end250.i.1.for.body268.i.1_crit_edge
  %off.0847.i.1 = phi i32 [ %add279.i.1, %for.body268.i.1.for.body268.i.1_crit_edge ], [ 0, %if.end250.i.1.for.body268.i.1_crit_edge ]
  %pg.2846.i.1 = phi i32 [ %spec.store.select536.i.1, %for.body268.i.1.for.body268.i.1_crit_edge ], [ %spec.store.select536.i, %if.end250.i.1.for.body268.i.1_crit_edge ]
  %have.3845.i.1 = phi i32 [ %dec.i.1, %for.body268.i.1.for.body268.i.1_crit_edge ], [ %dec.i, %if.end250.i.1.for.body268.i.1_crit_edge ]
  %want.2844.i.1 = phi i32 [ %inc273.i.1, %for.body268.i.1.for.body268.i.1_crit_edge ], [ %inc273.i, %if.end250.i.1.for.body268.i.1_crit_edge ]
  %add.ptr.i.1 = getelementptr i8, ptr %cmp270.i.1, i32 %off.0847.i.1
  %arrayidx272.i.1 = getelementptr ptr, ptr %call8.i, i32 %pg.2846.i.1
  %215 = ptrtoint ptr %arrayidx272.i.1 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx272.i.1, align 4
  %217 = call ptr @memcpy(ptr %add.ptr.i.1, ptr %216, i32 4096)
  %dec.i.1 = add i32 %have.3845.i.1, -1
  %inc273.i.1 = add i32 %want.2844.i.1, 1
  %inc274.i.1 = add i32 %pg.2846.i.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc274.i.1, i32 %i.0815.i)
  %cmp275.not.i.1 = icmp ult i32 %inc274.i.1, %i.0815.i
  %spec.store.select536.i.1 = select i1 %cmp275.not.i.1, i32 %inc274.i.1, i32 0
  %add279.i.1 = add i32 %off.0847.i.1, 4096
  %218 = ptrtoint ptr %cmp_len.i.1 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %cmp_len.i.1, align 4
  %add266.i.1 = add i32 %219, 4
  %cmp267.i.1 = icmp ult i32 %add279.i.1, %add266.i.1
  br i1 %cmp267.i.1, label %for.body268.i.1.for.body268.i.1_crit_edge, label %for.end280.i.1

for.body268.i.1.for.body268.i.1_crit_edge:        ; preds = %for.body268.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body268.i.1

for.end280.i.1:                                   ; preds = %for.body268.i.1
  %call.i.i751.i.1 = call zeroext i1 @__kasan_check_write(ptr noundef %ready.i.1, i32 noundef 4) #14
  %220 = ptrtoint ptr %ready.i.1 to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile i32 1, ptr %ready.i.1, align 4
  call void @__wake_up(ptr noundef %go283.i.1, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.1)
  %tobool229.not.i.1 = icmp ne i32 %dec.i.1, 0
  %or.cond.i.1 = select i1 %tobool229.not.i.1, i1 %cmp231.i.1, i1 false
  br i1 %or.cond.i.1, label %for.body233.i.2, label %for.end280.i.1.for.end286.i_crit_edge

for.end280.i.1.for.end286.i_crit_edge:            ; preds = %for.end280.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end286.i

for.body233.i.2:                                  ; preds = %for.end280.i.1
  %arrayidx234.i.2 = getelementptr ptr, ptr %call8.i, i32 %spec.store.select536.i.1
  %221 = ptrtoint ptr %arrayidx234.i.2 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %arrayidx234.i.2, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %222, align 4
  %225 = ptrtoint ptr %cmp_len.i.2 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %224, ptr %cmp_len.i.2, align 4
  %226 = add i32 %224, -139334
  call void @__sanitizer_cov_trace_const_cmp4(i32 -139333, i32 %226)
  %227 = icmp ult i32 %226, -139333
  br i1 %227, label %for.body233.i.2.do.end247.i_crit_edge, label %if.end250.i.2, !prof !271

for.body233.i.2.do.end247.i_crit_edge:            ; preds = %for.body233.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end247.i

if.end250.i.2:                                    ; preds = %for.body233.i.2
  %sub255.i.2 = add nuw nsw i32 %224, 4099
  %div256742.i.2 = lshr i32 %sub255.i.2, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %div256742.i.2, i32 %dec.i.1)
  %cmp257.i.2 = icmp ugt i32 %div256742.i.2, %dec.i.1
  br i1 %cmp257.i.2, label %if.end250.i.2.if.then258.i_crit_edge, label %if.end250.i.2.for.body268.i.2_crit_edge

if.end250.i.2.for.body268.i.2_crit_edge:          ; preds = %if.end250.i.2
  br label %for.body268.i.2

if.end250.i.2.if.then258.i_crit_edge:             ; preds = %if.end250.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then258.i

for.body268.i.2:                                  ; preds = %for.body268.i.2.for.body268.i.2_crit_edge, %if.end250.i.2.for.body268.i.2_crit_edge
  %off.0847.i.2 = phi i32 [ %add279.i.2, %for.body268.i.2.for.body268.i.2_crit_edge ], [ 0, %if.end250.i.2.for.body268.i.2_crit_edge ]
  %pg.2846.i.2 = phi i32 [ %spec.store.select536.i.2, %for.body268.i.2.for.body268.i.2_crit_edge ], [ %spec.store.select536.i.1, %if.end250.i.2.for.body268.i.2_crit_edge ]
  %have.3845.i.2 = phi i32 [ %dec.i.2, %for.body268.i.2.for.body268.i.2_crit_edge ], [ %dec.i.1, %if.end250.i.2.for.body268.i.2_crit_edge ]
  %want.2844.i.2 = phi i32 [ %inc273.i.2, %for.body268.i.2.for.body268.i.2_crit_edge ], [ %inc273.i.1, %if.end250.i.2.for.body268.i.2_crit_edge ]
  %add.ptr.i.2 = getelementptr i8, ptr %cmp270.i.2, i32 %off.0847.i.2
  %arrayidx272.i.2 = getelementptr ptr, ptr %call8.i, i32 %pg.2846.i.2
  %228 = ptrtoint ptr %arrayidx272.i.2 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx272.i.2, align 4
  %230 = call ptr @memcpy(ptr %add.ptr.i.2, ptr %229, i32 4096)
  %dec.i.2 = add i32 %have.3845.i.2, -1
  %inc273.i.2 = add i32 %want.2844.i.2, 1
  %inc274.i.2 = add i32 %pg.2846.i.2, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc274.i.2, i32 %i.0815.i)
  %cmp275.not.i.2 = icmp ult i32 %inc274.i.2, %i.0815.i
  %spec.store.select536.i.2 = select i1 %cmp275.not.i.2, i32 %inc274.i.2, i32 0
  %add279.i.2 = add i32 %off.0847.i.2, 4096
  %231 = ptrtoint ptr %cmp_len.i.2 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %cmp_len.i.2, align 4
  %add266.i.2 = add i32 %232, 4
  %cmp267.i.2 = icmp ult i32 %add279.i.2, %add266.i.2
  br i1 %cmp267.i.2, label %for.body268.i.2.for.body268.i.2_crit_edge, label %for.end280.i.2

for.body268.i.2.for.body268.i.2_crit_edge:        ; preds = %for.body268.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body268.i.2

for.end280.i.2:                                   ; preds = %for.body268.i.2
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i751.i.2 = call zeroext i1 @__kasan_check_write(ptr noundef %ready.i.2, i32 noundef 4) #14
  %233 = ptrtoint ptr %ready.i.2 to i32
  call void @__asan_store4_noabort(i32 %233)
  store volatile i32 1, ptr %ready.i.2, align 4
  call void @__wake_up(ptr noundef %go283.i.2, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %for.end286.i

for.end286.i:                                     ; preds = %for.end280.i.2, %for.end280.i.1.for.end286.i_crit_edge, %for.end280.i.for.end286.i_crit_edge, %if.then258.i.for.end286.i_crit_edge
  %want.1797.i = phi i32 [ %want.1854.i.lcssa278, %if.then258.i.for.end286.i_crit_edge ], [ %inc273.i, %for.end280.i.for.end286.i_crit_edge ], [ %inc273.i.1, %for.end280.i.1.for.end286.i_crit_edge ], [ %inc273.i.2, %for.end280.i.2 ]
  %have.2794.i = phi i32 [ %have.2855.i.lcssa280, %if.then258.i.for.end286.i_crit_edge ], [ %dec.i, %for.end280.i.for.end286.i_crit_edge ], [ %dec.i.1, %for.end280.i.1.for.end286.i_crit_edge ], [ %dec.i.2, %for.end280.i.2 ]
  %pg.1791.i = phi i32 [ %pg.1856.i.lcssa282, %if.then258.i.for.end286.i_crit_edge ], [ %spec.store.select536.i, %for.end280.i.for.end286.i_crit_edge ], [ %spec.store.select536.i.1, %for.end280.i.1.for.end286.i_crit_edge ], [ %spec.store.select536.i.2, %for.end280.i.2 ]
  %thr.2788.i = phi i32 [ %thr.2857.i.lcssa284, %if.then258.i.for.end286.i_crit_edge ], [ 1, %for.end280.i.for.end286.i_crit_edge ], [ 2, %for.end280.i.1.for.end286.i_crit_edge ], [ 3, %for.end280.i.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %have.2794.i)
  %cmp287.i = icmp ult i32 %have.2794.i, 35
  br i1 %cmp287.i, label %for.end286.i.land.lhs.true288.i_crit_edge, label %for.end286.i.if.end299.i_crit_edge

for.end286.i.if.end299.i_crit_edge:               ; preds = %for.end286.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end299.i

for.end286.i.land.lhs.true288.i_crit_edge:        ; preds = %for.end286.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true288.i

land.lhs.true288.i:                               ; preds = %for.end286.i.land.lhs.true288.i_crit_edge, %if.end227.i.land.lhs.true288.i_crit_edge
  %thr.2788925.i = phi i32 [ %thr.2788.i, %for.end286.i.land.lhs.true288.i_crit_edge ], [ 0, %if.end227.i.land.lhs.true288.i_crit_edge ]
  %pg.1791923.i = phi i32 [ %pg.1791.i, %for.end286.i.land.lhs.true288.i_crit_edge ], [ %pg.0.i, %if.end227.i.land.lhs.true288.i_crit_edge ]
  %have.2794921.i = phi i32 [ %have.2794.i, %for.end286.i.land.lhs.true288.i_crit_edge ], [ 0, %if.end227.i.land.lhs.true288.i_crit_edge ]
  %want.1797920.i = phi i32 [ %want.1797.i, %for.end286.i.land.lhs.true288.i_crit_edge ], [ %sub182.i, %if.end227.i.land.lhs.true288.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asked.1.i)
  %tobool289.not.i = icmp eq i32 %asked.1.i, 0
  br i1 %tobool289.not.i, label %land.lhs.true288.i.if.end299.i_crit_edge, label %if.then290.i

land.lhs.true288.i.if.end299.i_crit_edge:         ; preds = %land.lhs.true288.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end299.i

if.then290.i:                                     ; preds = %land.lhs.true288.i
  %call291.i = call fastcc i32 @hib_wait_io(ptr noundef nonnull %hb.i87) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291.i)
  %tobool292.not.i = icmp eq i32 %call291.i, 0
  br i1 %tobool292.not.i, label %if.end294.i, label %if.then290.i.out_finish.i_crit_edge

if.then290.i.out_finish.i_crit_edge:              ; preds = %if.then290.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_finish.i

if.end294.i:                                      ; preds = %if.then290.i
  call void @__sanitizer_cov_trace_pc() #16
  %add295.i = add i32 %have.2794921.i, %asked.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eof.2.i)
  %tobool296.not.i = icmp eq i32 %eof.2.i, 0
  %spec.store.select537.i = select i1 %tobool296.not.i, i32 0, i32 2
  br label %if.end299.i

if.end299.i:                                      ; preds = %if.end294.i, %land.lhs.true288.i.if.end299.i_crit_edge, %for.end286.i.if.end299.i_crit_edge
  %thr.2788924.i = phi i32 [ %thr.2788925.i, %if.end294.i ], [ %thr.2788925.i, %land.lhs.true288.i.if.end299.i_crit_edge ], [ %thr.2788.i, %for.end286.i.if.end299.i_crit_edge ]
  %pg.1791922.i = phi i32 [ %pg.1791923.i, %if.end294.i ], [ %pg.1791923.i, %land.lhs.true288.i.if.end299.i_crit_edge ], [ %pg.1791.i, %for.end286.i.if.end299.i_crit_edge ]
  %want.1797919.i = phi i32 [ %want.1797920.i, %if.end294.i ], [ %want.1797920.i, %land.lhs.true288.i.if.end299.i_crit_edge ], [ %want.1797.i, %for.end286.i.if.end299.i_crit_edge ]
  %asked.2.i = phi i32 [ 0, %if.end294.i ], [ 0, %land.lhs.true288.i.if.end299.i_crit_edge ], [ %asked.1.i, %for.end286.i.if.end299.i_crit_edge ]
  %have.4.i = phi i32 [ %add295.i, %if.end294.i ], [ %have.2794921.i, %land.lhs.true288.i.if.end299.i_crit_edge ], [ %have.2794.i, %for.end286.i.if.end299.i_crit_edge ]
  %eof.3.i = phi i32 [ %spec.store.select537.i, %if.end294.i ], [ %eof.2.i, %land.lhs.true288.i.if.end299.i_crit_edge ], [ %eof.2.i, %for.end286.i.if.end299.i_crit_edge ]
  %ret.4.i = phi i32 [ 0, %if.end294.i ], [ %ret.3.i119, %land.lhs.true288.i.if.end299.i_crit_edge ], [ %ret.3.i119, %for.end286.i.if.end299.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %thr.2788924.i)
  %cmp301873.not.i = icmp eq i32 %thr.2788924.i, 0
  br i1 %cmp301873.not.i, label %if.end299.i.for.end407.i_crit_edge, label %if.end299.i.do.body304.i_crit_edge

if.end299.i.do.body304.i_crit_edge:               ; preds = %if.end299.i
  br label %do.body304.i

if.end299.i.for.end407.i_crit_edge:               ; preds = %if.end299.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end407.i

do.body304.i:                                     ; preds = %for.inc405.i.do.body304.i_crit_edge, %if.end299.i.do.body304.i_crit_edge
  %nr_pages.1876.i = phi i32 [ %inc393.i, %for.inc405.i.do.body304.i_crit_edge ], [ %nr_pages.0.i, %if.end299.i.do.body304.i_crit_edge ]
  %thr.3874.i = phi i32 [ %inc406.i, %for.inc405.i.do.body304.i_crit_edge ], [ 0, %if.end299.i.do.body304.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1396) #14
  %stop311.i = getelementptr %struct.dec_data, ptr %call12.i, i32 %thr.3874.i, i32 2
  %call.i.i752.i = call zeroext i1 @__kasan_check_read(ptr noundef %stop311.i, i32 noundef 4) #14
  %234 = ptrtoint ptr %stop311.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile i32, ptr %stop311.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool313.not.i = icmp eq i32 %235, 0
  br i1 %tobool313.not.i, label %if.end315.i, label %do.body304.i.do.end338.i_crit_edge

do.body304.i.do.end338.i_crit_edge:               ; preds = %do.body304.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end338.i

if.end315.i:                                      ; preds = %do.body304.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry316.i) #14
  %236 = call ptr @memset(ptr %__wq_entry316.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry316.i, i32 noundef 0) #14
  %done321.i = getelementptr %struct.dec_data, ptr %call12.i, i32 %thr.3874.i, i32 5
  %call322863.i = call i32 @prepare_to_wait_event(ptr noundef %done321.i, ptr noundef nonnull %__wq_entry316.i, i32 noundef 2) #14
  %call.i.i753864.i = call zeroext i1 @__kasan_check_read(ptr noundef %stop311.i, i32 noundef 4) #14
  %237 = ptrtoint ptr %stop311.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load volatile i32, ptr %stop311.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool326.not865.i = icmp eq i32 %238, 0
  br i1 %tobool326.not865.i, label %if.end315.i.cleanup329.i_crit_edge, label %if.end315.i.for.end332.i_crit_edge

if.end315.i.for.end332.i_crit_edge:               ; preds = %if.end315.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end332.i

if.end315.i.cleanup329.i_crit_edge:               ; preds = %if.end315.i
  br label %cleanup329.i

cleanup329.i:                                     ; preds = %cleanup329.i.cleanup329.i_crit_edge, %if.end315.i.cleanup329.i_crit_edge
  call void @schedule() #14
  %call322.i = call i32 @prepare_to_wait_event(ptr noundef %done321.i, ptr noundef nonnull %__wq_entry316.i, i32 noundef 2) #14
  %call.i.i753.i = call zeroext i1 @__kasan_check_read(ptr noundef %stop311.i, i32 noundef 4) #14
  %239 = ptrtoint ptr %stop311.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load volatile i32, ptr %stop311.i, align 4
  %tobool326.not.i = icmp eq i32 %240, 0
  br i1 %tobool326.not.i, label %cleanup329.i.cleanup329.i_crit_edge, label %cleanup329.i.for.end332.i_crit_edge

cleanup329.i.for.end332.i_crit_edge:              ; preds = %cleanup329.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end332.i

cleanup329.i.cleanup329.i_crit_edge:              ; preds = %cleanup329.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup329.i

for.end332.i:                                     ; preds = %cleanup329.i.for.end332.i_crit_edge, %if.end315.i.for.end332.i_crit_edge
  call void @finish_wait(ptr noundef %done321.i, ptr noundef nonnull %__wq_entry316.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry316.i) #14
  br label %do.end338.i

do.end338.i:                                      ; preds = %for.end332.i, %do.body304.i.do.end338.i_crit_edge
  %call.i.i754.i = call zeroext i1 @__kasan_check_write(ptr noundef %stop311.i, i32 noundef 4) #14
  %241 = ptrtoint ptr %stop311.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store volatile i32 0, ptr %stop311.i, align 4
  %ret342.i = getelementptr %struct.dec_data, ptr %call12.i, i32 %thr.3874.i, i32 3
  %242 = ptrtoint ptr %ret342.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %ret342.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %cmp343.i = icmp slt i32 %243, 0
  br i1 %cmp343.i, label %do.end347.i, label %if.end350.i

do.end347.i:                                      ; preds = %do.end338.i
  call void @__sanitizer_cov_trace_pc() #16
  %call349.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #18
  br label %out_finish.i

if.end350.i:                                      ; preds = %do.end338.i
  %unc_len352.i = getelementptr %struct.dec_data, ptr %call12.i, i32 %thr.3874.i, i32 6
  %244 = ptrtoint ptr %unc_len352.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %unc_len352.i, align 4
  %246 = add i32 %245, -131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 -131072, i32 %246)
  %247 = icmp ult i32 %246, -131072
  %and.i = and i32 %245, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool360.i = icmp ne i32 %and.i, 0
  %or.cond748.i = or i1 %247, %tobool360.i
  br i1 %or.cond748.i, label %do.end371.i, label %for.body379.lr.ph.i, !prof !272

for.body379.lr.ph.i:                              ; preds = %if.end350.i
  %unc381.i = getelementptr %struct.dec_data, ptr %call12.i, i32 %thr.3874.i, i32 8
  br label %for.body379.i

do.end371.i:                                      ; preds = %if.end350.i
  call void @__sanitizer_cov_trace_pc() #16
  %call373.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125) #18
  br label %out_finish.i

for.body379.i:                                    ; preds = %for.inc402.i.for.body379.i_crit_edge, %for.body379.lr.ph.i
  %nr_pages.2869.i = phi i32 [ %nr_pages.1876.i, %for.body379.lr.ph.i ], [ %inc393.i, %for.inc402.i.for.body379.i_crit_edge ]
  %off.1868.i = phi i32 [ 0, %for.body379.lr.ph.i ], [ %add403.i, %for.inc402.i.for.body379.i_crit_edge ]
  %248 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %1, align 4
  %add.ptr383.i = getelementptr i8, ptr %unc381.i, i32 %off.1868.i
  %250 = call ptr @memcpy(ptr %249, ptr %add.ptr383.i, i32 4096)
  %nr_pages.2869.i.frozen = freeze i32 %nr_pages.2869.i
  %spec.store.select538.i.frozen = freeze i32 %spec.store.select538.i
  %div390.i = udiv i32 %nr_pages.2869.i.frozen, %spec.store.select538.i.frozen
  %251 = mul i32 %div390.i, %spec.store.select538.i.frozen
  %rem.i120.decomposed = sub i32 %nr_pages.2869.i.frozen, %251
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i120.decomposed)
  %tobool384.not.i = icmp eq i32 %rem.i120.decomposed, 0
  br i1 %tobool384.not.i, label %do.end388.i, label %for.body379.i.if.end392.i_crit_edge

for.body379.i.if.end392.i_crit_edge:              ; preds = %for.body379.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end392.i

do.end388.i:                                      ; preds = %for.body379.i
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i121 = mul i32 %div390.i, 10
  %call391.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %mul.i121) #18
  br label %if.end392.i

if.end392.i:                                      ; preds = %do.end388.i, %for.body379.i.if.end392.i_crit_edge
  %call394.i = call i32 @snapshot_write_next(ptr noundef nonnull %snapshot) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call394.i)
  %cmp395.i = icmp slt i32 %call394.i, 1
  br i1 %cmp395.i, label %if.then396.i, label %for.inc402.i

if.then396.i:                                     ; preds = %if.end392.i
  call void @__sanitizer_cov_trace_pc() #16
  %add397.i = add nuw i32 %thr.3874.i, 1
  %252 = ptrtoint ptr %run_threads197.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %add397.i, ptr %run_threads197.i, align 4
  %call.i.i755.i = call zeroext i1 @__kasan_check_write(ptr noundef %ready409.i, i32 noundef 4) #14
  %253 = ptrtoint ptr %ready409.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store volatile i32 1, ptr %ready409.i, align 4
  call void @__wake_up(ptr noundef %go60.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %out_finish.i

for.inc402.i:                                     ; preds = %if.end392.i
  %inc393.i = add i32 %nr_pages.2869.i, 1
  %add403.i = add i32 %off.1868.i, 4096
  %254 = ptrtoint ptr %unc_len352.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %unc_len352.i, align 4
  %cmp378.i = icmp ult i32 %add403.i, %255
  br i1 %cmp378.i, label %for.inc402.i.for.body379.i_crit_edge, label %for.inc405.i

for.inc402.i.for.body379.i_crit_edge:             ; preds = %for.inc402.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body379.i

for.inc405.i:                                     ; preds = %for.inc402.i
  %inc406.i = add nuw nsw i32 %thr.3874.i, 1
  %exitcond910.not.i = icmp eq i32 %inc406.i, %thr.2788924.i
  br i1 %exitcond910.not.i, label %for.inc405.i.for.end407.i_crit_edge, label %for.inc405.i.do.body304.i_crit_edge

for.inc405.i.do.body304.i_crit_edge:              ; preds = %for.inc405.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body304.i

for.inc405.i.for.end407.i_crit_edge:              ; preds = %for.inc405.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end407.i

for.end407.i:                                     ; preds = %for.inc405.i.for.end407.i_crit_edge, %if.end299.i.for.end407.i_crit_edge
  %nr_pages.1.lcssa.i = phi i32 [ %nr_pages.0.i, %if.end299.i.for.end407.i_crit_edge ], [ %inc393.i, %for.inc405.i.for.end407.i_crit_edge ]
  %ret.5.lcssa.i = phi i32 [ %ret.4.i, %if.end299.i.for.end407.i_crit_edge ], [ %call394.i, %for.inc405.i.for.end407.i_crit_edge ]
  %256 = ptrtoint ptr %run_threads197.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %thr.2788924.i, ptr %run_threads197.i, align 4
  %call.i.i756.i = call zeroext i1 @__kasan_check_write(ptr noundef %ready409.i, i32 noundef 4) #14
  %257 = ptrtoint ptr %ready409.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store volatile i32 1, ptr %ready409.i, align 4
  call void @__wake_up(ptr noundef %go60.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %for.cond159.i

out_finish.i:                                     ; preds = %if.then396.i, %do.end371.i, %do.end347.i, %if.then290.i.out_finish.i_crit_edge, %if.then258.i.out_finish.i_crit_edge, %do.end247.i, %if.end187.i.out_finish.i_crit_edge, %if.then184.i.out_finish.i_crit_edge, %land.lhs.true.i.out_finish.i_crit_edge, %for.end139.i.out_finish.i_crit_edge
  %ret.7.i = phi i32 [ %call155.i, %for.end139.i.out_finish.i_crit_edge ], [ -1, %do.end247.i ], [ %243, %do.end347.i ], [ -1, %do.end371.i ], [ %call394.i, %if.then396.i ], [ %call291.i, %if.then290.i.out_finish.i_crit_edge ], [ %call188.i, %if.end187.i.out_finish.i_crit_edge ], [ %ret.2.i, %if.then184.i.out_finish.i_crit_edge ], [ %retval.0.i766.ph.ph.i, %land.lhs.true.i.out_finish.i_crit_edge ], [ -1, %if.then258.i.out_finish.i_crit_edge ]
  %run_threads412.i = getelementptr inbounds %struct.crc_data, ptr %call7.i.i.i95, i32 0, i32 3
  %258 = ptrtoint ptr %run_threads412.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %run_threads412.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool413.not.i = icmp eq i32 %259, 0
  br i1 %tobool413.not.i, label %out_finish.i.if.end448.i_crit_edge, label %do.body416.i

out_finish.i.if.end448.i_crit_edge:               ; preds = %out_finish.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end448.i

do.body416.i:                                     ; preds = %out_finish.i
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1441) #14
  %stop422.i = getelementptr inbounds %struct.crc_data, ptr %call7.i.i.i95, i32 0, i32 2
  %call.i.i757.i = call zeroext i1 @__kasan_check_read(ptr noundef %stop422.i, i32 noundef 4) #14
  %260 = ptrtoint ptr %stop422.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load volatile i32, ptr %stop422.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %tobool424.not.i = icmp eq i32 %261, 0
  br i1 %tobool424.not.i, label %if.end426.i, label %do.body416.i.do.end446.i_crit_edge

do.body416.i.do.end446.i_crit_edge:               ; preds = %do.body416.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end446.i

if.end426.i:                                      ; preds = %do.body416.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry427.i) #14
  %262 = call ptr @memset(ptr %__wq_entry427.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry427.i, i32 noundef 0) #14
  %call432880.i = call i32 @prepare_to_wait_event(ptr noundef %done64.i, ptr noundef nonnull %__wq_entry427.i, i32 noundef 2) #14
  %call.i.i758881.i = call zeroext i1 @__kasan_check_read(ptr noundef %stop422.i, i32 noundef 4) #14
  %263 = ptrtoint ptr %stop422.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load volatile i32, ptr %stop422.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %tobool435.not882.i = icmp eq i32 %264, 0
  br i1 %tobool435.not882.i, label %if.end426.i.cleanup438.i_crit_edge, label %if.end426.i.for.end441.i_crit_edge

if.end426.i.for.end441.i_crit_edge:               ; preds = %if.end426.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end441.i

if.end426.i.cleanup438.i_crit_edge:               ; preds = %if.end426.i
  br label %cleanup438.i

cleanup438.i:                                     ; preds = %cleanup438.i.cleanup438.i_crit_edge, %if.end426.i.cleanup438.i_crit_edge
  call void @schedule() #14
  %call432.i = call i32 @prepare_to_wait_event(ptr noundef %done64.i, ptr noundef nonnull %__wq_entry427.i, i32 noundef 2) #14
  %call.i.i758.i = call zeroext i1 @__kasan_check_read(ptr noundef %stop422.i, i32 noundef 4) #14
  %265 = ptrtoint ptr %stop422.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load volatile i32, ptr %stop422.i, align 8
  %tobool435.not.i = icmp eq i32 %266, 0
  br i1 %tobool435.not.i, label %cleanup438.i.cleanup438.i_crit_edge, label %cleanup438.i.for.end441.i_crit_edge

cleanup438.i.for.end441.i_crit_edge:              ; preds = %cleanup438.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end441.i

cleanup438.i.cleanup438.i_crit_edge:              ; preds = %cleanup438.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup438.i

for.end441.i:                                     ; preds = %cleanup438.i.for.end441.i_crit_edge, %if.end426.i.for.end441.i_crit_edge
  call void @finish_wait(ptr noundef %done64.i, ptr noundef nonnull %__wq_entry427.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry427.i) #14
  br label %do.end446.i

do.end446.i:                                      ; preds = %for.end441.i, %do.body416.i.do.end446.i_crit_edge
  %call.i.i759.i = call zeroext i1 @__kasan_check_write(ptr noundef %stop422.i, i32 noundef 4) #14
  %267 = ptrtoint ptr %stop422.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store volatile i32 0, ptr %stop422.i, align 8
  br label %if.end448.i

if.end448.i:                                      ; preds = %do.end446.i, %out_finish.i.if.end448.i_crit_edge
  %call449.i = call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.7.i)
  %tobool450.not.i = icmp eq i32 %ret.7.i, 0
  br i1 %tobool450.not.i, label %do.end454.i, label %if.end448.i.if.end478.i_crit_edge

if.end448.i.if.end478.i_crit_edge:                ; preds = %if.end448.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end478.i

do.end454.i:                                      ; preds = %if.end448.i
  %call456.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #18
  call void @snapshot_write_finalize(ptr noundef nonnull %snapshot) #14
  %call457.i = call i32 @snapshot_image_loaded(ptr noundef nonnull %snapshot) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call457.i)
  %tobool458.not.i = icmp eq i32 %call457.i, 0
  br i1 %tobool458.not.i, label %do.end454.i.if.end478.i_crit_edge, label %if.then462.i

do.end454.i.if.end478.i_crit_edge:                ; preds = %do.end454.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end478.i

if.then462.i:                                     ; preds = %do.end454.i
  %268 = load ptr, ptr @swsusp_header, align 4
  %flags.i122 = getelementptr inbounds %struct.swsusp_header, ptr %268, i32 0, i32 4
  %269 = ptrtoint ptr %flags.i122 to i32
  call void @__asan_loadN_noabort(i32 %269, i32 4)
  %270 = load i32, ptr %flags.i122, align 1
  %and463.i = and i32 %270, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and463.i)
  %tobool464.not.i = icmp eq i32 %and463.i, 0
  br i1 %tobool464.not.i, label %if.then462.i.if.end478.i_crit_edge, label %if.then465.i

if.then462.i.if.end478.i_crit_edge:               ; preds = %if.then462.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end478.i

if.then465.i:                                     ; preds = %if.then462.i
  %271 = ptrtoint ptr %crc32.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %crc32.i, align 8
  %crc32467.i = getelementptr inbounds %struct.swsusp_header, ptr %268, i32 0, i32 2
  %273 = ptrtoint ptr %crc32467.i to i32
  call void @__asan_loadN_noabort(i32 %273, i32 4)
  %274 = load i32, ptr %crc32467.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %272, i32 %274)
  %cmp468.not.i = icmp eq i32 %272, %274
  br i1 %cmp468.not.i, label %if.then465.i.if.end478.i_crit_edge, label %do.end472.i

if.then465.i.if.end478.i_crit_edge:               ; preds = %if.then465.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end478.i

do.end472.i:                                      ; preds = %if.then465.i
  call void @__sanitizer_cov_trace_pc() #16
  %call474.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #18
  br label %if.end478.i

if.end478.i:                                      ; preds = %do.end472.i, %if.then465.i.if.end478.i_crit_edge, %if.then462.i.if.end478.i_crit_edge, %do.end454.i.if.end478.i_crit_edge, %if.end448.i.if.end478.i_crit_edge
  %ret.9.i = phi i32 [ %ret.7.i, %if.end448.i.if.end478.i_crit_edge ], [ -61, %do.end454.i.if.end478.i_crit_edge ], [ -61, %do.end472.i ], [ 0, %if.then465.i.if.end478.i_crit_edge ], [ 0, %if.then462.i.if.end478.i_crit_edge ]
  call void @swsusp_show_speed(i64 noundef %call154.i, i64 noundef %call449.i, i32 noundef %sub16, ptr noundef nonnull @.str.95) #14
  br label %out_clean.i

out_clean.thread.i:                               ; preds = %if.then91.i, %if.then50.i, %if.end20.i.out_clean.thread.i_crit_edge, %if.end.i94.out_clean.thread.i_crit_edge, %cond.false14.out_clean.thread.i_crit_edge
  %.str.104.sink.i = phi ptr [ @.str.104, %if.then50.i ], [ @.str.60, %if.then91.i ], [ @.str.39, %cond.false14.out_clean.thread.i_crit_edge ], [ @.str.42, %if.end.i94.out_clean.thread.i_crit_edge ], [ @.str.45, %if.end20.i.out_clean.thread.i_crit_edge ]
  %crc.0.ph.i = phi ptr [ %call7.i.i.i95, %if.then50.i ], [ %call7.i.i.i95, %if.then91.i ], [ null, %cond.false14.out_clean.thread.i_crit_edge ], [ null, %if.end.i94.out_clean.thread.i_crit_edge ], [ null, %if.end20.i.out_clean.thread.i_crit_edge ]
  %data.0.ph.i = phi ptr [ %call12.i, %if.then50.i ], [ %call12.i, %if.then91.i ], [ null, %cond.false14.out_clean.thread.i_crit_edge ], [ null, %if.end.i94.out_clean.thread.i_crit_edge ], [ %call12.i, %if.end20.i.out_clean.thread.i_crit_edge ]
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.104.sink.i) #18
  call void @blk_finish_plug(ptr noundef %plug.i.i91) #14
  br label %for.end485.i

out_clean.i:                                      ; preds = %if.end478.i, %if.then130.i
  %ring_size.0.i = phi i32 [ %i.0823.i, %if.then130.i ], [ %i.0815.i, %if.end478.i ]
  %ret.10.i = phi i32 [ -12, %if.then130.i ], [ %ret.9.i, %if.end478.i ]
  call void @blk_finish_plug(ptr noundef %plug.i.i91) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ring_size.0.i)
  %cmp480883.not.i = icmp eq i32 %ring_size.0.i, 0
  br i1 %cmp480883.not.i, label %out_clean.i.for.end485.i_crit_edge, label %out_clean.i.for.body481.i_crit_edge

out_clean.i.for.body481.i_crit_edge:              ; preds = %out_clean.i
  br label %for.body481.i

out_clean.i.for.end485.i_crit_edge:               ; preds = %out_clean.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end485.i

for.body481.i:                                    ; preds = %for.body481.i.for.body481.i_crit_edge, %out_clean.i.for.body481.i_crit_edge
  %i.2884.i = phi i32 [ %inc484.i, %for.body481.i.for.body481.i_crit_edge ], [ 0, %out_clean.i.for.body481.i_crit_edge ]
  %arrayidx482.i = getelementptr ptr, ptr %call8.i, i32 %i.2884.i
  %275 = ptrtoint ptr %arrayidx482.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %arrayidx482.i, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @free_pages(i32 noundef %277, i32 noundef 0) #14
  %inc484.i = add nuw nsw i32 %i.2884.i, 1
  %exitcond911.not.i = icmp eq i32 %inc484.i, %ring_size.0.i
  br i1 %exitcond911.not.i, label %for.body481.i.for.end485.i_crit_edge, label %for.body481.i.for.body481.i_crit_edge

for.body481.i.for.body481.i_crit_edge:            ; preds = %for.body481.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body481.i

for.body481.i.for.end485.i_crit_edge:             ; preds = %for.body481.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end485.i

for.end485.i:                                     ; preds = %for.body481.i.for.end485.i_crit_edge, %out_clean.i.for.end485.i_crit_edge, %out_clean.thread.i
  %ret.10933.i = phi i32 [ -12, %out_clean.thread.i ], [ %ret.10.i, %out_clean.i.for.end485.i_crit_edge ], [ %ret.10.i, %for.body481.i.for.end485.i_crit_edge ]
  %data.0932.i = phi ptr [ %data.0.ph.i, %out_clean.thread.i ], [ %call12.i, %out_clean.i.for.end485.i_crit_edge ], [ %call12.i, %for.body481.i.for.end485.i_crit_edge ]
  %crc.0931.i = phi ptr [ %crc.0.ph.i, %out_clean.thread.i ], [ %call7.i.i.i95, %out_clean.i.for.end485.i_crit_edge ], [ %call7.i.i.i95, %for.body481.i.for.end485.i_crit_edge ]
  %tobool486.not.i = icmp eq ptr %crc.0931.i, null
  br i1 %tobool486.not.i, label %for.end485.i.if.end494.i_crit_edge, label %if.then487.i

for.end485.i.if.end494.i_crit_edge:               ; preds = %for.end485.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end494.i

if.then487.i:                                     ; preds = %for.end485.i
  %278 = ptrtoint ptr %crc.0931.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %crc.0931.i, align 8
  %tobool489.not.i = icmp eq ptr %279, null
  br i1 %tobool489.not.i, label %if.then487.i.if.end493.i_crit_edge, label %if.then490.i

if.then487.i.if.end493.i_crit_edge:               ; preds = %if.then487.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end493.i

if.then490.i:                                     ; preds = %if.then487.i
  call void @__sanitizer_cov_trace_pc() #16
  %call492.i = call i32 @kthread_stop(ptr noundef nonnull %279) #14
  br label %if.end493.i

if.end493.i:                                      ; preds = %if.then490.i, %if.then487.i.if.end493.i_crit_edge
  call void @kfree(ptr noundef nonnull %crc.0931.i) #14
  br label %if.end494.i

if.end494.i:                                      ; preds = %if.end493.i, %for.end485.i.if.end494.i_crit_edge
  %tobool495.not.i = icmp eq ptr %data.0932.i, null
  br i1 %tobool495.not.i, label %if.end494.i.load_image_lzo.exit_crit_edge, label %for.body499.i

if.end494.i.load_image_lzo.exit_crit_edge:        ; preds = %if.end494.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %load_image_lzo.exit

for.body499.i:                                    ; preds = %if.end494.i
  %280 = ptrtoint ptr %data.0932.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %data.0932.i, align 4
  %tobool502.not.i = icmp eq ptr %281, null
  br i1 %tobool502.not.i, label %for.body499.i.for.inc508.i_crit_edge, label %if.then503.i

for.body499.i.for.inc508.i_crit_edge:             ; preds = %for.body499.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc508.i

if.then503.i:                                     ; preds = %for.body499.i
  call void @__sanitizer_cov_trace_pc() #16
  %call506.i = call i32 @kthread_stop(ptr noundef nonnull %281) #14
  br label %for.inc508.i

for.inc508.i:                                     ; preds = %if.then503.i, %for.body499.i.for.inc508.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %exitcond912.not.i = icmp eq i32 %129, 1
  br i1 %exitcond912.not.i, label %for.inc508.i.for.end510.i_crit_edge, label %for.body499.i.1

for.inc508.i.for.end510.i_crit_edge:              ; preds = %for.inc508.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end510.i

for.body499.i.1:                                  ; preds = %for.inc508.i
  %arrayidx500.i.1 = getelementptr %struct.dec_data, ptr %data.0932.i, i32 1
  %282 = ptrtoint ptr %arrayidx500.i.1 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %arrayidx500.i.1, align 4
  %tobool502.not.i.1 = icmp eq ptr %283, null
  br i1 %tobool502.not.i.1, label %for.body499.i.1.for.inc508.i.1_crit_edge, label %if.then503.i.1

for.body499.i.1.for.inc508.i.1_crit_edge:         ; preds = %for.body499.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc508.i.1

if.then503.i.1:                                   ; preds = %for.body499.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %call506.i.1 = call i32 @kthread_stop(ptr noundef nonnull %283) #14
  br label %for.inc508.i.1

for.inc508.i.1:                                   ; preds = %if.then503.i.1, %for.body499.i.1.for.inc508.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %129)
  %exitcond912.not.i.1 = icmp eq i32 %129, 2
  br i1 %exitcond912.not.i.1, label %for.inc508.i.1.for.end510.i_crit_edge, label %for.body499.i.2

for.inc508.i.1.for.end510.i_crit_edge:            ; preds = %for.inc508.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end510.i

for.body499.i.2:                                  ; preds = %for.inc508.i.1
  %arrayidx500.i.2 = getelementptr %struct.dec_data, ptr %data.0932.i, i32 2
  %284 = ptrtoint ptr %arrayidx500.i.2 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx500.i.2, align 4
  %tobool502.not.i.2 = icmp eq ptr %285, null
  br i1 %tobool502.not.i.2, label %for.body499.i.2.for.end510.i_crit_edge, label %if.then503.i.2

for.body499.i.2.for.end510.i_crit_edge:           ; preds = %for.body499.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end510.i

if.then503.i.2:                                   ; preds = %for.body499.i.2
  call void @__sanitizer_cov_trace_pc() #16
  %call506.i.2 = call i32 @kthread_stop(ptr noundef nonnull %285) #14
  br label %for.end510.i

for.end510.i:                                     ; preds = %if.then503.i.2, %for.body499.i.2.for.end510.i_crit_edge, %for.inc508.i.1.for.end510.i_crit_edge, %for.inc508.i.for.end510.i_crit_edge
  call void @vfree(ptr noundef nonnull %data.0932.i) #14
  br label %load_image_lzo.exit

load_image_lzo.exit:                              ; preds = %for.end510.i, %if.end494.i.load_image_lzo.exit_crit_edge
  call void @vfree(ptr noundef %call8.i) #14
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %hb.i87) #14
  br label %if.end20thread-pre-split

if.end20thread-pre-split:                         ; preds = %load_image_lzo.exit, %load_image.exit, %if.end4.i.if.end20thread-pre-split_crit_edge, %if.end.i71.if.end20thread-pre-split_crit_edge
  %error.1.ph = phi i32 [ -14, %if.end.i71.if.end20thread-pre-split_crit_edge ], [ %call.i, %if.end4.i.if.end20thread-pre-split_crit_edge ], [ %ret.10933.i, %load_image_lzo.exit ], [ %ret.3.i, %load_image.exit ]
  %286 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %.pr = load ptr, ptr %maps.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20thread-pre-split, %if.then6.if.end20_crit_edge
  %287 = phi ptr [ %.pr, %if.end20thread-pre-split ], [ %62, %if.then6.if.end20_crit_edge ]
  %error.1 = phi i32 [ %error.1.ph, %if.end20thread-pre-split ], [ -22, %if.then6.if.end20_crit_edge ]
  %tobool.not15.i.i124 = icmp eq ptr %287, null
  br i1 %tobool.not15.i.i124, label %if.end20.end_crit_edge, label %if.end20.while.body.i.i126_crit_edge

if.end20.while.body.i.i126_crit_edge:             ; preds = %if.end20
  br label %while.body.i.i126

if.end20.end_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %end

while.body.i.i126:                                ; preds = %if.end.i.i130.while.body.i.i126_crit_edge, %if.end20.while.body.i.i126_crit_edge
  %288 = phi ptr [ %297, %if.end.i.i130.while.body.i.i126_crit_edge ], [ %287, %if.end20.while.body.i.i126_crit_edge ]
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %288, align 4
  %tobool2.not.i.i125 = icmp eq ptr %290, null
  br i1 %tobool2.not.i.i125, label %while.body.i.i126.if.end.i.i130_crit_edge, label %if.then.i.i127

while.body.i.i126.if.end.i.i130_crit_edge:        ; preds = %while.body.i.i126
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i130

if.then.i.i127:                                   ; preds = %while.body.i.i126
  call void @__sanitizer_cov_trace_pc() #16
  %291 = ptrtoint ptr %290 to i32
  call void @free_pages(i32 noundef %291, i32 noundef 0) #14
  br label %if.end.i.i130

if.end.i.i130:                                    ; preds = %if.then.i.i127, %while.body.i.i126.if.end.i.i130_crit_edge
  %292 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %maps.i, align 4
  %next.i.i128 = getelementptr inbounds %struct.swap_map_page_list, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %next.i.i128 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %next.i.i128, align 4
  store ptr %295, ptr %maps.i, align 4
  call void @kfree(ptr noundef %293) #14
  %296 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %maps.i, align 4
  %tobool.not.i.i129 = icmp eq ptr %297, null
  br i1 %tobool.not.i.i129, label %if.end.i.i130.end_crit_edge, label %if.end.i.i130.while.body.i.i126_crit_edge

if.end.i.i130.while.body.i.i126_crit_edge:        ; preds = %if.end.i.i130
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i126

if.end.i.i130.end_crit_edge:                      ; preds = %if.end.i.i130
  call void @__sanitizer_cov_trace_pc() #16
  br label %end

end:                                              ; preds = %if.end.i.i130.end_crit_edge, %if.end20.end_crit_edge
  %298 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr null, ptr %handle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool22.not = icmp eq i32 %error.1, 0
  br i1 %tobool22.not, label %do.body, label %end.do.body31_crit_edge

end.do.body31_crit_edge:                          ; preds = %end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body31

do.body:                                          ; preds = %end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @swsusp_read.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@swsusp_read, %cleanup)) #14
          to label %if.then29 [label %cleanup], !srcloc !270

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @swsusp_read.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.9) #14
  br label %cleanup

do.body31:                                        ; preds = %end.do.body31_crit_edge, %get_swap_reader.exit, %get_swap_reader.exit.thread133, %if.end.do.body31_crit_edge
  %error.2146 = phi i32 [ %error.1, %end.do.body31_crit_edge ], [ %retval.0.ph.i.ph, %get_swap_reader.exit.thread133 ], [ %call20.i, %get_swap_reader.exit ], [ -22, %if.end.do.body31_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @swsusp_read.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@swsusp_read, %cleanup)) #14
          to label %if.then45 [label %cleanup], !srcloc !270

if.then45:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @swsusp_read.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.11, i32 noundef %error.2146) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %do.body31, %if.then29, %do.body, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ %error.2146, %if.then45 ], [ 0, %if.then29 ], [ 0, %do.body ], [ %error.2146, %do.body31 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %snapshot) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %handle) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snapshot_write_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @swsusp_check() local_unnamed_addr #0 align 64 {
entry:
  %holder = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %holder) #14
  %0 = ptrtoint ptr %holder to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %holder, align 4, !annotation !269
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @swsusp_resume_device to i32))
  %1 = load i32, ptr @swsusp_resume_device, align 4
  %call = call ptr @blkdev_get_by_dev(i32 noundef %1, i32 noundef 129, ptr noundef nonnull %holder) #14
  store ptr %call, ptr @hib_resume_bdev, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end39, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i32 @set_blocksize(ptr noundef %call, i32 noundef 4096) #14
  %2 = load ptr, ptr @swsusp_header, align 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 4096)
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @swsusp_resume_block to i32))
  %4 = load i64, ptr @swsusp_resume_block, align 8
  %conv = trunc i64 %4 to i32
  %call3 = call fastcc i32 @hib_submit_io(i32 noundef 0, i32 noundef 0, i32 noundef %conv, ptr noundef %2, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then.if.end39.thread79_crit_edge

if.then.if.end39.thread79_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.thread79

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr @swsusp_header, align 4
  %sig = getelementptr inbounds %struct.swsusp_header, ptr %5, i32 0, i32 6
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.12, ptr noundef dereferenceable(10) %sig, i32 10) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool6.not = icmp eq i32 %bcmp, 0
  br i1 %tobool6.not, label %if.end13, label %if.end.if.end39.thread79_crit_edge

if.end.if.end39.thread79_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.thread79

if.end13:                                         ; preds = %if.end
  %orig_sig = getelementptr inbounds %struct.swsusp_header, ptr %5, i32 0, i32 5
  %6 = call ptr @memcpy(ptr %sig, ptr %orig_sig, i32 10)
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @swsusp_resume_block to i32))
  %7 = load i64, ptr @swsusp_resume_block, align 8
  %conv11 = trunc i64 %7 to i32
  %call12 = call fastcc i32 @hib_submit_io(i32 noundef 1, i32 noundef 2048, i32 noundef %conv11, ptr noundef %5, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.end13.if.end39.thread79_crit_edge

if.end13.if.end39.thread79_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.thread79

land.lhs.true:                                    ; preds = %if.end13
  %8 = load ptr, ptr @swsusp_header, align 4
  %flags = getelementptr inbounds %struct.swsusp_header, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %flags, align 1
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %land.lhs.true.do.body25_crit_edge, label %land.lhs.true16

land.lhs.true.do.body25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body25

land.lhs.true16:                                  ; preds = %land.lhs.true
  %hw_sig = getelementptr inbounds %struct.swsusp_header, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %hw_sig to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %hw_sig, align 1
  %13 = load i32, ptr @swsusp_hardware_signature, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp.not = icmp eq i32 %12, %13
  br i1 %cmp.not, label %land.lhs.true16.do.body25_crit_edge, label %do.end

land.lhs.true16.do.body25_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body25

do.end:                                           ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %12, i32 noundef %13) #18
  br label %if.end39.thread79

if.end39.thread79:                                ; preds = %do.end, %if.end13.if.end39.thread79_crit_edge, %if.end.if.end39.thread79_crit_edge, %if.then.if.end39.thread79_crit_edge
  %error.1.ph = phi i32 [ -22, %do.end ], [ %call12, %if.end13.if.end39.thread79_crit_edge ], [ %call3, %if.then.if.end39.thread79_crit_edge ], [ -22, %if.end.if.end39.thread79_crit_edge ]
  %14 = load ptr, ptr @hib_resume_bdev, align 4
  call void @blkdev_put(ptr noundef %14, i32 noundef 129) #14
  br label %do.body42

do.body25:                                        ; preds = %land.lhs.true16.do.body25_crit_edge, %land.lhs.true.do.body25_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @swsusp_check.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@swsusp_check, %if.end60)) #14
          to label %if.then32 [label %if.end60], !srcloc !270

if.then32:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @swsusp_check.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.16) #14
  br label %if.end60

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %call to i32
  br label %do.body42

do.body42:                                        ; preds = %if.end39, %if.end39.thread79
  %error.282 = phi i32 [ %error.1.ph, %if.end39.thread79 ], [ %15, %if.end39 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @swsusp_check.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@swsusp_check, %if.end60)) #14
          to label %if.then56 [label %if.end60], !srcloc !270

if.then56:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @swsusp_check.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.18, i32 noundef %error.282) #14
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %do.body42, %if.then32, %do.body25
  %error.278 = phi i32 [ %error.282, %if.then56 ], [ 0, %if.then32 ], [ 0, %do.body25 ], [ %error.282, %do.body42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %holder) #14
  ret i32 %error.278
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_dev(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hib_submit_io(i32 noundef %op, i32 noundef %op_flags, i32 noundef %page_off, ptr noundef %addr, ptr noundef %hb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %1 = ptrtoint ptr %addr to i32
  %sub = add i32 %1, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %shr
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3104, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #14
  %mul = shl i32 %page_off, 3
  %conv = zext i32 %mul to i64
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %bi_iter, align 8
  %3 = load ptr, ptr @hib_resume_bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %5, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %7, %3
  br i1 %cmp.not.i, label %entry.bio_set_dev.exit_crit_edge, label %if.then.i

entry.bio_set_dev.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i = and i16 %5, -2177
  %8 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %entry.bio_set_dev.exit_crit_edge
  %9 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i) #14
  %or.i = or i32 %op_flags, %op
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %bi_opf.i, align 8
  %call2 = tail call i32 @bio_add_page(ptr noundef %call.i, ptr noundef %add.ptr, i32 noundef 4096, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call2)
  %cmp = icmp ult i32 %call2, 4096
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bi_iter, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i64 noundef %12) #18
  tail call void @bio_put(ptr noundef %call.i) #14
  br label %cleanup

if.end:                                           ; preds = %bio_set_dev.exit
  %tobool.not = icmp eq ptr %hb, null
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @hib_end_io, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 11
  %14 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %hb, ptr %bi_private, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hb, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull %hb, i32 1, i32 3, i32 1) #14
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %hb, ptr nonnull %hb, i32 1, ptr nonnull elementtype(i32) %hb) #14, !srcloc !273
  tail call void @submit_bio(ptr noundef %call.i) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call i32 @submit_bio_wait(ptr noundef %call.i) #14
  tail call void @bio_put(ptr noundef %call.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then7, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ 0, %if.then7 ], [ %call8, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @swsusp_close(i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hib_resume_bdev, align 4
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @swsusp_close.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@swsusp_close, %return)) #14
          to label %if.then5 [label %return], !srcloc !270

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @swsusp_close.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.21) #14
  br label %return

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blkdev_put(ptr noundef %0, i32 noundef %mode) #14
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @swsusp_unmark() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @swsusp_resume_block to i32))
  %0 = load i64, ptr @swsusp_resume_block, align 8
  %conv = trunc i64 %0 to i32
  %1 = load ptr, ptr @swsusp_header, align 4
  %call = tail call fastcc i32 @hib_submit_io(i32 noundef 0, i32 noundef 0, i32 noundef %conv, ptr noundef %1, ptr noundef null)
  %2 = load ptr, ptr @swsusp_header, align 4
  %sig = getelementptr inbounds %struct.swsusp_header, ptr %2, i32 0, i32 6
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.12, ptr noundef dereferenceable(10) %sig, i32 10) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %orig_sig = getelementptr inbounds %struct.swsusp_header, ptr %2, i32 0, i32 5
  %3 = call ptr @memcpy(ptr %sig, ptr %orig_sig, i32 10)
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @swsusp_resume_block to i32))
  %4 = load i64, ptr @swsusp_resume_block, align 8
  %conv5 = trunc i64 %4 to i32
  %call6 = tail call fastcc i32 @hib_submit_io(i32 noundef 1, i32 noundef 2048, i32 noundef %conv5, ptr noundef %2, ptr noundef null)
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %error.0 = phi i32 [ -19, %do.end ], [ %call6, %if.then ]
  %5 = load ptr, ptr @swsusp_extents, align 4
  %tobool.not9.i = icmp eq ptr %5, null
  br i1 %tobool.not9.i, label %if.end.free_all_swap_pages.exit_crit_edge, label %while.body.lr.ph.i

if.end.free_all_swap_pages.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_all_swap_pages.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %6 = load i16, ptr @root_swap, align 2
  %conv8 = zext i16 %6 to i32
  %shl.i.i = shl i32 %conv8, 26
  br label %while.body.i

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %7 = phi ptr [ %5, %while.body.lr.ph.i ], [ %14, %for.end.i.while.body.i_crit_edge ]
  tail call void @rb_erase(ptr noundef nonnull %7, ptr noundef nonnull @swsusp_extents) #14
  %start.i = getelementptr inbounds %struct.swsusp_extent, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start.i, align 4
  %end.i = getelementptr inbounds %struct.swsusp_extent, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not7.i = icmp ugt i32 %9, %11
  br i1 %cmp.not7.i, label %while.body.i.for.end.i_crit_edge, label %while.body.i.for.body.i_crit_edge

while.body.i.for.body.i_crit_edge:                ; preds = %while.body.i
  br label %for.body.i

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.body.i.for.body.i_crit_edge
  %offset.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %9, %while.body.i.for.body.i_crit_edge ]
  %and.i.i = and i32 %offset.08.i, 67108863
  %or.i.i = or i32 %and.i.i, %shl.i.i
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %or.i.i, 0
  tail call void @swap_free([1 x i32] %.fca.0.insert.i) #14
  %inc.i = add i32 %offset.08.i, 1
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i, align 4
  %cmp.not.i = icmp ugt i32 %inc.i, %13
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %7) #14
  %14 = load ptr, ptr @swsusp_extents, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %for.end.i.free_all_swap_pages.exit_crit_edge, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

for.end.i.free_all_swap_pages.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_all_swap_pages.exit

free_all_swap_pages.exit:                         ; preds = %for.end.i.free_all_swap_pages.exit_crit_edge, %if.end.free_all_swap_pages.exit_crit_edge
  ret i32 %error.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @swsusp_header_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #14
  %0 = inttoptr i32 %call to ptr
  store ptr %0, ptr @swsusp_header, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.140) #22
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reqd_free_pages() unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vm_zone_stat, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_zone_stat to i32))
  %0 = load volatile i32, ptr @vm_zone_stat, align 4
  %1 = tail call i32 @llvm.smax.i32(i32 %0, i32 0) #14
  %call.i.i = tail call i32 @__nr_free_highpages() #14
  %sub.i = sub i32 %1, %call.i.i
  %div1 = lshr i32 %sub.i, 1
  ret i32 %div1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swap_type_of(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_first_swap(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @low_free_pages() unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vm_zone_stat, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_zone_stat to i32))
  %0 = load volatile i32, ptr @vm_zone_stat, align 4
  %1 = tail call i32 @llvm.smax.i32(i32 %0, i32 0) #14
  %call.i = tail call i32 @__nr_free_highpages() #14
  %sub = sub i32 %1, %call.i
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nr_free_highpages() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @count_swap_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_page(ptr noundef %buf, i64 noundef %offset, ptr noundef %hb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset)
  %tobool.not = icmp eq i64 %offset, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %hb, null
  br i1 %tobool1.not, label %if.end.if.end51_crit_edge, label %if.then2

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @__get_free_pages(i32 noundef 76800, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  %0 = inttoptr i32 %call to ptr
  tail call void @copy_page(ptr noundef nonnull %0, ptr noundef %buf) #14
  br label %if.end51

if.else:                                          ; preds = %if.then2
  %call5 = tail call fastcc i32 @hib_wait_io(ptr noundef nonnull %hb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.else
  %call9 = tail call i32 @__get_free_pages(i32 noundef 76800, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.end, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %1 = inttoptr i32 %call9 to ptr
  tail call void @copy_page(ptr noundef nonnull %1, ptr noundef %buf) #14
  br label %if.end51

land.end:                                         ; preds = %if.end8
  %.b68 = load i1, ptr @write_page.__already_done, align 1
  br i1 %.b68, label %land.end.if.end51_crit_edge, label %if.then18, !prof !274

land.end.if.end51_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then18:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @write_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 405, i32 noundef 9, ptr noundef null) #14
  br label %if.end51

if.end51:                                         ; preds = %if.then18, %land.end.if.end51_crit_edge, %if.then11, %if.then4, %if.end.if.end51_crit_edge
  %src.0 = phi ptr [ %0, %if.then4 ], [ %1, %if.then11 ], [ %buf, %if.then18 ], [ %buf, %land.end.if.end51_crit_edge ], [ %buf, %if.end.if.end51_crit_edge ]
  %hb.addr.0 = phi ptr [ %hb, %if.then4 ], [ %hb, %if.then11 ], [ null, %if.then18 ], [ null, %land.end.if.end51_crit_edge ], [ null, %if.end.if.end51_crit_edge ]
  %conv = trunc i64 %offset to i32
  %call52 = tail call fastcc i32 @hib_submit_io(i32 noundef 1, i32 noundef 2048, i32 noundef %conv, ptr noundef %src.0, ptr noundef %hb.addr.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call52, %if.end51 ], [ -28, %entry.cleanup_crit_edge ], [ %call5, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hib_wait_io(ptr noundef %hb) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 311) #14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hb, i32 noundef 4) #14
  %0 = ptrtoint ptr %hb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %hb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.do.end11_crit_edge, label %if.end

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %wait = getelementptr inbounds %struct.hib_bio_batch, ptr %hb, i32 0, i32 1
  %call420 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i1721 = call zeroext i1 @__kasan_check_read(ptr noundef %hb, i32 noundef 4) #14
  %3 = ptrtoint ptr %hb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %hb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp722 = icmp eq i32 %4, 0
  br i1 %cmp722, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #14
  %call4 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i17 = call zeroext i1 @__kasan_check_read(ptr noundef %hb, i32 noundef 4) #14
  %5 = ptrtoint ptr %hb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %hb, align 4
  %cmp7 = icmp eq i32 %6, 0
  br i1 %cmp7, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end11

do.end11:                                         ; preds = %for.end, %entry.do.end11_crit_edge
  %error = getelementptr inbounds %struct.hib_bio_batch, ptr %hb, i32 0, i32 2
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %error, align 4
  %call12 = call i32 @blk_status_to_errno(i8 noundef zeroext %8) #14
  ret i32 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @swsusp_show_speed(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lzo_compress_threadfn(ptr noundef %data) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ready = getelementptr inbounds %struct.cmp_data, ptr %data, i32 0, i32 1
  %go = getelementptr inbounds %struct.cmp_data, ptr %data, i32 0, i32 4
  %unc = getelementptr inbounds %struct.cmp_data, ptr %data, i32 0, i32 8
  %unc_len = getelementptr inbounds %struct.cmp_data, ptr %data, i32 0, i32 6
  %add.ptr = getelementptr %struct.cmp_data, ptr %data, i32 0, i32 9, i32 4
  %cmp_len = getelementptr inbounds %struct.cmp_data, ptr %data, i32 0, i32 7
  %wrk = getelementptr inbounds %struct.cmp_data, ptr %data, i32 0, i32 10
  %ret24 = getelementptr inbounds %struct.cmp_data, ptr %data, i32 0, i32 3
  %stop25 = getelementptr inbounds %struct.cmp_data, ptr %data, i32 0, i32 2
  %done26 = getelementptr inbounds %struct.cmp_data, ptr %data, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %entry
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 656) #14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ready, i32 noundef 4) #14
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %while.cond.do.end16_crit_edge

while.cond.do.end16_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

lor.lhs.false:                                    ; preds = %while.cond
  %call5 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call5, label %lor.lhs.false.do.end16_crit_edge, label %if.end

lor.lhs.false.do.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call650 = call i32 @prepare_to_wait_event(ptr noundef %go, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i4451 = call zeroext i1 @__kasan_check_read(ptr noundef %ready, i32 noundef 4) #14
  %3 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not52 = icmp eq i32 %4, 0
  br i1 %tobool9.not52, label %if.end.lor.lhs.false10_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.lor.lhs.false10_crit_edge:                 ; preds = %if.end
  br label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %cleanup.lor.lhs.false10_crit_edge, %if.end.lor.lhs.false10_crit_edge
  %call11 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call11, label %lor.lhs.false10.for.end_crit_edge, label %cleanup

lor.lhs.false10.for.end_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %lor.lhs.false10
  call void @schedule() #14
  %call6 = call i32 @prepare_to_wait_event(ptr noundef %go, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i44 = call zeroext i1 @__kasan_check_read(ptr noundef %ready, i32 noundef 4) #14
  %5 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %ready, align 4
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %cleanup.lor.lhs.false10_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.lor.lhs.false10_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false10

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false10.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %go, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end16

do.end16:                                         ; preds = %for.end, %lor.lhs.false.do.end16_crit_edge, %while.cond.do.end16_crit_edge
  %call17 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %data, align 4
  %8 = ptrtoint ptr %ret24 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ret24, align 4
  %call.i.i45 = call zeroext i1 @__kasan_check_write(ptr noundef %stop25, i32 noundef 4) #14
  %9 = ptrtoint ptr %stop25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %stop25, align 4
  call void @__wake_up(ptr noundef %done26, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret i32 0

if.end19:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i46 = call zeroext i1 @__kasan_check_write(ptr noundef %ready, i32 noundef 4) #14
  %10 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %ready, align 4
  %11 = ptrtoint ptr %unc_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %unc_len, align 4
  %call23 = call i32 @lzo1x_1_compress(ptr noundef %unc, i32 noundef %12, ptr noundef %add.ptr, ptr noundef %cmp_len, ptr noundef %wrk) #14
  %13 = ptrtoint ptr %ret24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call23, ptr %ret24, align 4
  %call.i.i47 = call zeroext i1 @__kasan_check_write(ptr noundef %stop25, i32 noundef 4) #14
  %14 = ptrtoint ptr %stop25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %stop25, align 4
  call void @__wake_up(ptr noundef %done26, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %while.cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crc32_threadfn(ptr noundef %data) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ready = getelementptr inbounds %struct.crc_data, ptr %data, i32 0, i32 1
  %go = getelementptr inbounds %struct.crc_data, ptr %data, i32 0, i32 4
  %run_threads = getelementptr inbounds %struct.crc_data, ptr %data, i32 0, i32 3
  %crc32 = getelementptr inbounds %struct.crc_data, ptr %data, i32 0, i32 6
  %stop26 = getelementptr inbounds %struct.crc_data, ptr %data, i32 0, i32 2
  %done27 = getelementptr inbounds %struct.crc_data, ptr %data, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %for.end25, %entry
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 613) #14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ready, i32 noundef 4) #14
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %while.cond.do.end16_crit_edge

while.cond.do.end16_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

lor.lhs.false:                                    ; preds = %while.cond
  %call5 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call5, label %lor.lhs.false.do.end16_crit_edge, label %if.end

lor.lhs.false.do.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call653 = call i32 @prepare_to_wait_event(ptr noundef %go, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i4754 = call zeroext i1 @__kasan_check_read(ptr noundef %ready, i32 noundef 4) #14
  %3 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not55 = icmp eq i32 %4, 0
  br i1 %tobool9.not55, label %if.end.lor.lhs.false10_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.lor.lhs.false10_crit_edge:                 ; preds = %if.end
  br label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %cleanup.lor.lhs.false10_crit_edge, %if.end.lor.lhs.false10_crit_edge
  %call11 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call11, label %lor.lhs.false10.for.end_crit_edge, label %cleanup

lor.lhs.false10.for.end_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %lor.lhs.false10
  call void @schedule() #14
  %call6 = call i32 @prepare_to_wait_event(ptr noundef %go, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i47 = call zeroext i1 @__kasan_check_read(ptr noundef %ready, i32 noundef 4) #14
  %5 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %ready, align 4
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %cleanup.lor.lhs.false10_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.lor.lhs.false10_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false10

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false10.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %go, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end16

do.end16:                                         ; preds = %for.end, %lor.lhs.false.do.end16_crit_edge, %while.cond.do.end16_crit_edge
  %call17 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %data, align 4
  %call.i.i48 = call zeroext i1 @__kasan_check_write(ptr noundef %stop26, i32 noundef 4) #14
  %8 = ptrtoint ptr %stop26 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %stop26, align 4
  call void @__wake_up(ptr noundef %done27, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret i32 0

if.end19:                                         ; preds = %do.end16
  %call.i.i49 = call zeroext i1 @__kasan_check_write(ptr noundef %ready, i32 noundef 4) #14
  %9 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %ready, align 4
  %10 = ptrtoint ptr %run_threads to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %run_threads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp57.not = icmp eq i32 %11, 0
  br i1 %cmp57.not, label %if.end19.for.end25_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

if.end19.for.end25_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end25

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end19.for.body_crit_edge
  %i.058 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end19.for.body_crit_edge ]
  %12 = ptrtoint ptr %crc32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crc32, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %arrayidx = getelementptr %struct.crc_data, ptr %data, i32 0, i32 8, i32 %i.058
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %arrayidx22 = getelementptr %struct.crc_data, ptr %data, i32 0, i32 7, i32 %i.058
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx22, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %call23 = call i32 @crc32_le(i32 noundef %15, ptr noundef %17, i32 noundef %21) #23
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call23, ptr %13, align 4
  %inc = add nuw i32 %i.058, 1
  %23 = ptrtoint ptr %run_threads to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %run_threads, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end25_crit_edge

for.body.for.end25_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end25

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end25:                                        ; preds = %for.body.for.end25_crit_edge, %if.end19.for.end25_crit_edge
  %call.i.i50 = call zeroext i1 @__kasan_check_write(ptr noundef %stop26, i32 noundef 4) #14
  %25 = ptrtoint ptr %stop26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %stop26, align 4
  call void @__wake_up(ptr noundef %done27, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %while.cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo1x_1_compress(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @snapshot_write_finalize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snapshot_image_loaded(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lzo_decompress_threadfn(ptr noundef %data) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ready = getelementptr inbounds %struct.dec_data, ptr %data, i32 0, i32 1
  %go = getelementptr inbounds %struct.dec_data, ptr %data, i32 0, i32 4
  %unc_len = getelementptr inbounds %struct.dec_data, ptr %data, i32 0, i32 6
  %add.ptr = getelementptr %struct.dec_data, ptr %data, i32 0, i32 9, i32 4
  %cmp_len = getelementptr inbounds %struct.dec_data, ptr %data, i32 0, i32 7
  %unc = getelementptr inbounds %struct.dec_data, ptr %data, i32 0, i32 8
  %ret24 = getelementptr inbounds %struct.dec_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %unc to i32
  %stop33 = getelementptr inbounds %struct.dec_data, ptr %data, i32 0, i32 2
  %done34 = getelementptr inbounds %struct.dec_data, ptr %data, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %entry
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1139) #14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ready, i32 noundef 4) #14
  %1 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %while.cond.do.end16_crit_edge

while.cond.do.end16_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

lor.lhs.false:                                    ; preds = %while.cond
  %call5 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call5, label %lor.lhs.false.do.end16_crit_edge, label %if.end

lor.lhs.false.do.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call662 = call i32 @prepare_to_wait_event(ptr noundef %go, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i5663 = call zeroext i1 @__kasan_check_read(ptr noundef %ready, i32 noundef 4) #14
  %4 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not64 = icmp eq i32 %5, 0
  br i1 %tobool9.not64, label %if.end.lor.lhs.false10_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.lor.lhs.false10_crit_edge:                 ; preds = %if.end
  br label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %cleanup.lor.lhs.false10_crit_edge, %if.end.lor.lhs.false10_crit_edge
  %call11 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call11, label %lor.lhs.false10.for.end_crit_edge, label %cleanup

lor.lhs.false10.for.end_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %lor.lhs.false10
  call void @schedule() #14
  %call6 = call i32 @prepare_to_wait_event(ptr noundef %go, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i56 = call zeroext i1 @__kasan_check_read(ptr noundef %ready, i32 noundef 4) #14
  %6 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %ready, align 4
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %cleanup.lor.lhs.false10_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.lor.lhs.false10_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false10

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false10.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %go, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end16

do.end16:                                         ; preds = %for.end, %lor.lhs.false.do.end16_crit_edge, %while.cond.do.end16_crit_edge
  %call17 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %data, align 4
  %9 = ptrtoint ptr %ret24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %ret24, align 4
  %call.i.i57 = call zeroext i1 @__kasan_check_write(ptr noundef %stop33, i32 noundef 4) #14
  %10 = ptrtoint ptr %stop33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %stop33, align 4
  call void @__wake_up(ptr noundef %done34, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret i32 0

if.end19:                                         ; preds = %do.end16
  %call.i.i58 = call zeroext i1 @__kasan_check_write(ptr noundef %ready, i32 noundef 4) #14
  %11 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %ready, align 4
  %12 = ptrtoint ptr %unc_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 131072, ptr %unc_len, align 4
  %13 = ptrtoint ptr %cmp_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmp_len, align 4
  %call23 = call i32 @lzo1x_decompress_safe(ptr noundef %add.ptr, i32 noundef %14, ptr noundef %unc, ptr noundef %unc_len) #14
  %15 = ptrtoint ptr %ret24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call23, ptr %ret24, align 4
  %.b55 = load i1, ptr @clean_pages_on_decompress, align 1
  br i1 %.b55, label %if.then26, label %if.end19.if.end32_crit_edge

if.end19.if.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %17 = ptrtoint ptr %unc_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %unc_len, align 4
  %add = add i32 %18, %0
  call void %16(i32 noundef %0, i32 noundef %add) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end19.if.end32_crit_edge
  %call.i.i59 = call zeroext i1 @__kasan_check_write(ptr noundef %stop33, i32 noundef 4) #14
  %19 = ptrtoint ptr %stop33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %stop33, align 4
  call void @__wake_up(ptr noundef %done34, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %while.cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo1x_decompress_safe(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hib_end_io(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %2 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bi_flags.i.i.i, align 4
  %4 = and i16 %3, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.i.not.i.i = icmp eq i16 %4, 0
  br i1 %cmp.i.not.i.i, label %entry.bio_first_page_all.exit_crit_edge, label %land.rhs.i.i

entry.bio_first_page_all.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_first_page_all.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b38.i.i = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.bio_first_page_all.exit_crit_edge, label %if.then.i.i, !prof !274

land.rhs.i.i.bio_first_page_all.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_first_page_all.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.138, i32 noundef 248, i32 noundef 9, ptr noundef null) #14
  br label %bio_first_page_all.exit

bio_first_page_all.exit:                          ; preds = %if.then.i.i, %land.rhs.i.i.bio_first_page_all.exit_crit_edge, %entry.bio_first_page_all.exit_crit_edge
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %5 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bi_io_vec.i.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %9 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %bio_first_page_all.exit.if.end_crit_edge, label %do.end

bio_first_page_all.exit.if.end_crit_edge:         ; preds = %bio_first_page_all.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %bio_first_page_all.exit
  call void @__sanitizer_cov_trace_pc() #16
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %11 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bd_disk, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i = shl i32 %16, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %18
  %shr = lshr i32 %or.i, 20
  %and = and i32 %18, 1048575
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %19 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bi_iter, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %shr, i32 noundef %and, i64 noundef %20) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %bio_first_page_all.exit.if.end_crit_edge
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %21 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %23 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i43, !prof !274

if.then.i.i43:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %25, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %8 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i43
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i43 ], [ %26, %if.end.i.i ]
  %27 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %28 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !271

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.139) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !275
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !276
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !277
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@hib_end_io, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !270

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %27, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end14_crit_edge

folio_put_testzero.exit.i.i.if.end14_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %27) #14
  br label %if.end14

if.else:                                          ; preds = %if.end
  %.b39 = load i1, ptr @clean_pages_on_read, align 1
  br i1 %.b39, label %if.then10, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %call11 = tail call ptr @page_address(ptr noundef %8) #14
  %32 = ptrtoint ptr %call11 to i32
  %call12 = tail call ptr @page_address(ptr noundef %8) #14
  %33 = ptrtoint ptr %call12 to i32
  %add = add i32 %33, 4096
  tail call void %31(i32 noundef %32, i32 noundef %add) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.else.if.end14_crit_edge, %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end14_crit_edge
  %34 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool16.not = icmp eq i8 %35, 0
  br i1 %tobool16.not, label %if.end14.if.end21_crit_edge, label %land.lhs.true

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end14
  %error = getelementptr inbounds %struct.hib_bio_batch, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool17.not = icmp eq i8 %37, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %35, ptr %error, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true.if.end21_crit_edge, %if.end14.if.end21_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !276
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #14
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #14, !srcloc !277
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then23, label %if.end21.if.end24_crit_edge

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %wait = getelementptr inbounds %struct.hib_bio_batch, ptr %1, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21.if.end24_crit_edge
  tail call void @bio_put(ptr noundef %bio) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nobuiltin }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !106, !108, !109, !110, !112, !113, !115, !116, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !179, !181, !182, !183, !185, !186, !188, !189, !191, !193, !195, !197, !198, !199, !201, !203, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !234, !235, !237, !238, !239, !241, !243, !244, !245, !246, !248, !249, !250, !251, !253, !254, !256, !258}
!llvm.module.flags = !{!260, !261, !262, !263, !264, !265, !266, !267}
!llvm.ident = !{!268}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/power/swap.c", i32 925, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @swsusp_write._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @swsusp_write._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/power/swap.c", i32 930, i32 4}
!8 = !{ptr @swsusp_write._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @swsusp_write._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/power/swap.c", i32 1511, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @swsusp_read.__UNIQUE_ID_ddebug316, !11, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/power/swap.c", i32 1513, i32 3}
!18 = !{ptr @swsusp_read.__UNIQUE_ID_ddebug317, !17, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!19 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/power/swap.c", i32 1537, i32 15}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/power/swap.c", i32 1548, i32 4}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @swsusp_check._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @swsusp_check._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/power/swap.c", i32 1557, i32 4}
!29 = !{ptr @swsusp_check.__UNIQUE_ID_ddebug318, !28, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!30 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/power/swap.c", i32 1563, i32 3}
!33 = !{ptr @swsusp_check.__UNIQUE_ID_ddebug319, !32, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!34 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/power/swap.c", i32 1575, i32 3}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @swsusp_close.__UNIQUE_ID_ddebug320, !36, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!39 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/power/swap.c", i32 1599, i32 3}
!42 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @swsusp_unmark._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @swsusp_unmark._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @__initcall__kmod_swap__321_1620_swsusp_header_init1, !46, !"__initcall__kmod_swap__321_1620_swsusp_header_init1", i1 false, i1 false}
!46 = !{!"../kernel/power/swap.c", i32 1620, i32 1}
!47 = !{ptr @swsusp_hardware_signature, !48, !"swsusp_hardware_signature", i1 false, i1 false}
!48 = !{!"../kernel/power/swap.c", i32 39, i32 5}
!49 = !{ptr @swsusp_header, !50, !"swsusp_header", i1 false, i1 false}
!50 = !{!"../kernel/power/swap.c", i32 118, i32 30}
!51 = !{ptr @hib_resume_bdev, !52, !"hib_resume_bdev", i1 false, i1 false}
!52 = !{!"../kernel/power/swap.c", i32 226, i32 29}
!53 = !{ptr @swsusp_extents, !54, !"swsusp_extents", i1 false, i1 false}
!54 = !{!"../kernel/power/swap.c", i32 131, i32 23}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/power/swap.c", i32 430, i32 4}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @get_swap_writer._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @get_swap_writer._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/power/swap.c", i32 898, i32 2}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @enough_swap.__UNIQUE_ID_ddebug307, !61, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!64 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../kernel/power/swap.c", i32 405, i32 5}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../kernel/power/swap.c", i32 558, i32 2}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @save_image._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @save_image._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../kernel/power/swap.c", i32 573, i32 4}
!74 = !{ptr @save_image._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @save_image._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/power/swap.c", i32 583, i32 3}
!78 = !{ptr @save_image._entry.34, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @save_image._entry_ptr.36, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/power/swap.c", i32 584, i32 46}
!82 = !{ptr @hib_init_batch.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../kernel/power/swap.c", i32 238, i32 2}
!84 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../kernel/power/swap.c", i32 709, i32 3}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @save_image_lzo._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @save_image_lzo._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../kernel/power/swap.c", i32 716, i32 3}
!92 = !{ptr @save_image_lzo._entry.41, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @save_image_lzo._entry_ptr.43, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../kernel/power/swap.c", i32 723, i32 3}
!96 = !{ptr @save_image_lzo._entry.44, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @save_image_lzo._entry_ptr.46, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @save_image_lzo.__key, !99, !"__key", i1 false, i1 false}
!99 = !{!"../kernel/power/swap.c", i32 732, i32 3}
!100 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @save_image_lzo.__key.48, !102, !"__key", i1 false, i1 false}
!102 = !{!"../kernel/power/swap.c", i32 733, i32 3}
!103 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../kernel/power/swap.c", i32 735, i32 19}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../kernel/power/swap.c", i32 740, i32 4}
!108 = !{ptr @save_image_lzo._entry.51, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @save_image_lzo._entry_ptr.53, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @save_image_lzo.__key.54, !111, !"__key", i1 false, i1 false}
!111 = !{!"../kernel/power/swap.c", i32 749, i32 2}
!112 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @save_image_lzo.__key.56, !114, !"__key", i1 false, i1 false}
!114 = !{!"../kernel/power/swap.c", i32 750, i32 2}
!115 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../kernel/power/swap.c", i32 759, i32 13}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../kernel/power/swap.c", i32 762, i32 3}
!120 = !{ptr @save_image_lzo._entry.59, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @save_image_lzo._entry_ptr.61, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../kernel/power/swap.c", i32 773, i32 2}
!124 = !{ptr @save_image_lzo._entry.62, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @save_image_lzo._entry_ptr.64, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../kernel/power/swap.c", i32 774, i32 2}
!128 = !{ptr @save_image_lzo._entry.65, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @save_image_lzo._entry_ptr.67, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @save_image_lzo._entry.68, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../kernel/power/swap.c", i32 795, i32 6}
!132 = !{ptr @save_image_lzo._entry_ptr.69, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../kernel/power/swap.c", i32 823, i32 5}
!135 = !{ptr @save_image_lzo._entry.70, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @save_image_lzo._entry_ptr.72, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.74, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../kernel/power/swap.c", i32 830, i32 5}
!139 = !{ptr @save_image_lzo._entry.73, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @save_image_lzo._entry_ptr.75, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @save_image_lzo._entry.76, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../kernel/power/swap.c", i32 866, i32 3}
!143 = !{ptr @save_image_lzo._entry_ptr.77, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.78, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../kernel/power/swap.c", i32 506, i32 3}
!146 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @swap_writer_finish._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @swap_writer_finish._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../kernel/power/swap.c", i32 508, i32 3}
!151 = !{ptr @swap_writer_finish._entry.80, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @swap_writer_finish._entry_ptr.82, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.83, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../kernel/power/swap.c", i32 324, i32 14}
!155 = !{ptr @.str.84, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../kernel/power/swap.c", i32 325, i32 14}
!157 = !{ptr @.str.85, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../kernel/power/swap.c", i32 339, i32 3}
!159 = !{ptr @.str.86, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @mark_swapfiles._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @mark_swapfiles._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.87, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../kernel/power/swap.c", i32 1077, i32 2}
!164 = !{ptr @.str.88, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @load_image._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @load_image._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.90, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../kernel/power/swap.c", i32 1095, i32 4}
!169 = !{ptr @load_image._entry.89, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @load_image._entry_ptr.91, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.93, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../kernel/power/swap.c", i32 1105, i32 3}
!173 = !{ptr @load_image._entry.92, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @load_image._entry_ptr.94, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.95, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../kernel/power/swap.c", i32 1110, i32 45}
!177 = distinct !{null, !178, !"clean_pages_on_read", i1 false, i1 false}
!178 = !{!"../kernel/power/swap.c", i32 46, i32 13}
!179 = !{ptr @.str.96, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../kernel/power/swap.c", i32 1199, i32 3}
!181 = !{ptr @load_image_lzo._entry, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @load_image_lzo._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @load_image_lzo._entry.97, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../kernel/power/swap.c", i32 1206, i32 3}
!185 = !{ptr @load_image_lzo._entry_ptr.98, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @load_image_lzo._entry.99, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../kernel/power/swap.c", i32 1213, i32 3}
!188 = !{ptr @load_image_lzo._entry_ptr.100, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @load_image_lzo.__key, !190, !"__key", i1 false, i1 false}
!190 = !{!"../kernel/power/swap.c", i32 1224, i32 3}
!191 = !{ptr @load_image_lzo.__key.101, !192, !"__key", i1 false, i1 false}
!192 = !{!"../kernel/power/swap.c", i32 1225, i32 3}
!193 = !{ptr @.str.102, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../kernel/power/swap.c", i32 1227, i32 19}
!195 = !{ptr @.str.104, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../kernel/power/swap.c", i32 1232, i32 4}
!197 = !{ptr @load_image_lzo._entry.103, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @load_image_lzo._entry_ptr.105, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @load_image_lzo.__key.106, !200, !"__key", i1 false, i1 false}
!200 = !{!"../kernel/power/swap.c", i32 1241, i32 2}
!201 = !{ptr @load_image_lzo.__key.107, !202, !"__key", i1 false, i1 false}
!202 = !{!"../kernel/power/swap.c", i32 1242, i32 2}
!203 = !{ptr @load_image_lzo._entry.108, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../kernel/power/swap.c", i32 1254, i32 3}
!205 = !{ptr @load_image_lzo._entry_ptr.109, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.111, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../kernel/power/swap.c", i32 1279, i32 5}
!208 = !{ptr @load_image_lzo._entry.110, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @load_image_lzo._entry_ptr.112, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.114, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../kernel/power/swap.c", i32 1289, i32 2}
!212 = !{ptr @load_image_lzo._entry.113, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @load_image_lzo._entry_ptr.115, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.117, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../kernel/power/swap.c", i32 1290, i32 2}
!216 = !{ptr @load_image_lzo._entry.116, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @load_image_lzo._entry_ptr.118, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @load_image_lzo._entry.119, !219, !"_entry", i1 false, i1 false}
!219 = !{!"../kernel/power/swap.c", i32 1351, i32 5}
!220 = !{ptr @load_image_lzo._entry_ptr.120, !219, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.122, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../kernel/power/swap.c", i32 1402, i32 5}
!223 = !{ptr @load_image_lzo._entry.121, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @load_image_lzo._entry_ptr.123, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.125, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../kernel/power/swap.c", i32 1409, i32 5}
!227 = !{ptr @load_image_lzo._entry.124, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @load_image_lzo._entry_ptr.126, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @load_image_lzo._entry.127, !230, !"_entry", i1 false, i1 false}
!230 = !{!"../kernel/power/swap.c", i32 1420, i32 6}
!231 = !{ptr @load_image_lzo._entry_ptr.128, !230, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @load_image_lzo._entry.129, !233, !"_entry", i1 false, i1 false}
!233 = !{!"../kernel/power/swap.c", i32 1446, i32 3}
!234 = !{ptr @load_image_lzo._entry_ptr.130, !233, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.132, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../kernel/power/swap.c", i32 1453, i32 6}
!237 = !{ptr @load_image_lzo._entry.131, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @load_image_lzo._entry_ptr.133, !236, !"_entry_ptr", i1 false, i1 false}
!239 = distinct !{null, !240, !"clean_pages_on_decompress", i1 false, i1 false}
!240 = !{!"../kernel/power/swap.c", i32 47, i32 13}
!241 = !{ptr @.str.134, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../kernel/power/swap.c", i32 286, i32 3}
!243 = !{ptr @.str.135, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @hib_submit_io._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @hib_submit_io._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.136, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../kernel/power/swap.c", i32 254, i32 3}
!248 = !{ptr @.str.137, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @hib_end_io._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @hib_end_io._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = distinct !{null, !252, !"__already_done", i1 false, i1 false}
!252 = !{!"../include/linux/bio.h", i32 248, i32 2}
!253 = !{ptr @.str.138, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.139, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../include/linux/mm.h", i32 717, i32 2}
!256 = !{ptr @root_swap, !257, !"root_swap", i1 false, i1 false}
!257 = !{!"../kernel/power/swap.c", i32 225, i32 23}
!258 = !{ptr @.str.140, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../kernel/power/swap.c", i32 1616, i32 9}
!260 = !{i32 1, !"wchar_size", i32 2}
!261 = !{i32 1, !"min_enum_size", i32 4}
!262 = !{i32 8, !"branch-target-enforcement", i32 0}
!263 = !{i32 8, !"sign-return-address", i32 0}
!264 = !{i32 8, !"sign-return-address-all", i32 0}
!265 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!266 = !{i32 7, !"uwtable", i32 1}
!267 = !{i32 7, !"frame-pointer", i32 2}
!268 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!269 = !{!"auto-init"}
!270 = !{i64 2148990373, i64 2148990378, i64 2148990391, i64 2148990435, i64 2148990469, i64 2148990490}
!271 = !{!"branch_weights", i32 1, i32 2000}
!272 = !{!"branch_weights", i32 6003000, i32 -294967296}
!273 = !{i64 2148376996, i64 2148377022, i64 2148377051, i64 2148377085, i64 2148377116, i64 2148377139}
!274 = !{!"branch_weights", i32 2000, i32 1}
!275 = !{i64 2153424211, i64 2153424694, i64 2153424248, i64 2153424304, i64 2153424338, i64 2153424362, i64 2153424403, i64 2153424424, i64 2153424452, i64 2153424486}
!276 = !{i64 2148465472}
!277 = !{i64 2148380181, i64 2148380213, i64 2148380242, i64 2148380276, i64 2148380307, i64 2148380330}
!278 = !{i64 2148465701}
