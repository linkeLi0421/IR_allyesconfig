; ModuleID = '/llk/IR_all_yes/drivers/crypto/img-hash.c_pt.bc'
source_filename = "../drivers/crypto/img-hash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.img_hash_drv = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.75, ptr, ptr, ptr, ptr, %union.anon.76, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.75 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.76 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.img_hash_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, %struct.spinlock, i32, %struct.tasklet_struct, %struct.tasklet_struct, i32, %struct.crypto_queue, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@__initcall__kmod_img_hash__245_1108_img_hash_driver_init6 = internal global ptr @img_hash_driver_init, section ".initcall6.init", align 4
@img_hash_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @img_hash_probe, ptr @img_hash_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @img_hash_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_hash_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_img_hash_driver_exit = internal global ptr @img_hash_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file246 = internal constant [38 x i8] c"img_hash.file=drivers/crypto/img-hash\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [24 x i8] c"img_hash.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [69 x i8] c"img_hash.description=Imgtec SHA1/224/256 & MD5 hw accelerator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [29 x i8] c"img_hash.author=Will Thomas.\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [57 x i8] c"img_hash.author=James Hartley <james.hartley@imgtec.com>\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"img-hash-accelerator\00", [43 x i8] zeroinitializer }, align 32
@img_hash_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"img,hash-accelerator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@img_hash_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @img_hash_suspend, ptr @img_hash_resume, ptr @img_hash_suspend, ptr @img_hash_resume, ptr @img_hash_suspend, ptr @img_hash_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@img_hash_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&hdev->lock\00", [20 x i8] zeroinitializer }, align 32
@img_hash_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 982, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"img_hash_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/crypto/img-hash.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@img_hash_probe._entry_ptr = internal global ptr @img_hash_probe._entry, section ".printk_index", align 4
@img_hash_probe.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 -10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"img_hash\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"using IRQ channel %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hash\00", [27 x i8] zeroinitializer }, align 32
@img_hash_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 989, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clock initialization failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@img_hash_probe._entry_ptr.12 = internal global ptr @img_hash_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@img_hash_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 996, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@img_hash_probe._entry_ptr.15 = internal global ptr @img_hash_probe._entry.14, section ".printk_index", align 4
@img_hash_probe.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.16, i8 0, i8 -3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"using %s for DMA transfers\0A\00", [36 x i8] zeroinitializer }, align 32
@img_hash = internal global { %struct.img_hash_drv, [44 x i8] } { %struct.img_hash_drv { %struct.list_head { ptr @img_hash, ptr @img_hash }, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.62, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, [44 x i8] zeroinitializer }, align 32
@img_hash_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1023, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Img MD5/SHA1/SHA224/SHA256 Hardware accelerator initialized\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@img_hash_probe._entry_ptr.20 = internal global ptr @img_hash_probe._entry.17, section ".printk_index", align 4
@img_hash_handle_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 533, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"processing req, op: %lu, bytes: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"img_hash_handle_queue\00", [42 x i8] zeroinitializer }, align 32
@img_hash_handle_queue._entry_ptr = internal global ptr @img_hash_handle_queue._entry, section ".printk_index", align 4
@img_hash_hw_init.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.23, ptr @.str.4, ptr @.str.24, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"img_hash_hw_init\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hw initialized, nbits: %llx\0A\00", [35 x i8] zeroinitializer }, align 32
@img_hash_process_data.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"img_hash_process_data\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"process data request(%d bytes) using DMA\0A\00", [54 x i8] zeroinitializer }, align 32
@img_hash_process_data.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.25, ptr @.str.4, ptr @.str.27, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"process data request(%d bytes) using CPU\0A\00", [54 x i8] zeroinitializer }, align 32
@img_hash_write_via_dma.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"img_hash_write_via_dma\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xmit dma size: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@img_hash_start.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"img_hash_start\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Starting hash process\0A\00", [41 x i8] zeroinitializer }, align 32
@img_hash_xmit_cpu.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"img_hash_xmit_cpu\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"xmit_cpu:  length: %zu bytes\0A\00", [34 x i8] zeroinitializer }, align 32
@img_hash_finish_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 303, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hash failed with error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"img_hash_finish_req\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@img_hash_finish_req._entry_ptr = internal global ptr @img_hash_finish_req._entry, section ".printk_index", align 4
@img_hash_dma_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 388, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMA failed, falling back to CPU\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"img_hash_dma_task\00", [46 x i8] zeroinitializer }, align 32
@img_hash_dma_task._entry_ptr = internal global ptr @img_hash_dma_task._entry, section ".printk_index", align 4
@img_hash_xmit_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid DMA sg\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"img_hash_xmit_dma\00", [46 x i8] zeroinitializer }, align 32
@img_hash_xmit_dma._entry_ptr = internal global ptr @img_hash_xmit_dma._entry, section ".printk_index", align 4
@img_hash_xmit_dma._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 241, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Null DMA descriptor\0A\00", [43 x i8] zeroinitializer }, align 32
@img_hash_xmit_dma._entry_ptr.43 = internal global ptr @img_hash_xmit_dma._entry.41, section ".printk_index", align 4
@img_irq_handler.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.44, ptr @.str.4, ptr @.str.45, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"img_irq_handler\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IRQ CR_INT_NEW_RESULTS_SET\0A\00", [36 x i8] zeroinitializer }, align 32
@img_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.4, i32 736, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HASH interrupt when no active requests.\0A\00", [55 x i8] zeroinitializer }, align 32
@img_irq_handler._entry_ptr = internal global ptr @img_irq_handler._entry, section ".printk_index", align 4
@img_irq_handler._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.44, ptr @.str.4, i32 740, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"IRQ triggered before the hash had completed\0A\00", [51 x i8] zeroinitializer }, align 32
@img_irq_handler._entry_ptr.49 = internal global ptr @img_irq_handler._entry.47, section ".printk_index", align 4
@img_irq_handler._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.44, ptr @.str.4, i32 743, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempt to read from an empty result queue\0A\00", [52 x i8] zeroinitializer }, align 32
@img_irq_handler._entry_ptr.52 = internal global ptr @img_irq_handler._entry.50, section ".printk_index", align 4
@img_irq_handler._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.44, ptr @.str.4, i32 746, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Data written before the hardware was configured\0A\00", [47 x i8] zeroinitializer }, align 32
@img_irq_handler._entry_ptr.55 = internal global ptr @img_irq_handler._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@img_hash_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 339, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Couldn't acquire a slave DMA channel.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"img_hash_dma_init\00", [46 x i8] zeroinitializer }, align 32
@img_hash_dma_init._entry_ptr = internal global ptr @img_hash_dma_init._entry, section ".printk_index", align 4
@img_hash_dma_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.4, i32 350, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't configure DMA slave.\0A\00", [33 x i8] zeroinitializer }, align 32
@img_hash_dma_init._entry_ptr.61 = internal global ptr @img_hash_dma_init._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"img_hash.lock\00", [18 x i8] zeroinitializer }, align 32
@img_algs = internal global [4 x %struct.ahash_alg] [%struct.ahash_alg { ptr @img_hash_init, ptr @img_hash_update, ptr @img_hash_final, ptr @img_hash_finup, ptr @img_hash_digest, ptr @img_hash_export, ptr @img_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 88, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 384, i32 64, i32 12, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"img-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr @img_hash_cra_md5_init, ptr @img_hash_cra_exit, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @img_hash_init, ptr @img_hash_update, ptr @img_hash_final, ptr @img_hash_finup, ptr @img_hash_digest, ptr @img_hash_export, ptr @img_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 96, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 384, i32 64, i32 12, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"img-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr @img_hash_cra_sha1_init, ptr @img_hash_cra_exit, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @img_hash_init, ptr @img_hash_update, ptr @img_hash_final, ptr @img_hash_finup, ptr @img_hash_digest, ptr @img_hash_export, ptr @img_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 104, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 384, i32 64, i32 12, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"img-sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr @img_hash_cra_sha224_init, ptr @img_hash_cra_exit, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @img_hash_init, ptr @img_hash_update, ptr @img_hash_final, ptr @img_hash_finup, ptr @img_hash_digest, ptr @img_hash_export, ptr @img_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 104, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 384, i32 64, i32 12, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"img-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr @img_hash_cra_sha256_init, ptr @img_hash_cra_exit, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } } }], align 128
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"md5-generic\00", [20 x i8] zeroinitializer }, align 32
@img_hash_cra_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.4, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013img_hash: Could not load fallback driver.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"img_hash_cra_init\00", [46 x i8] zeroinitializer }, align 32
@img_hash_cra_init._entry_ptr = internal global ptr @img_hash_cra_init._entry, section ".printk_index", align 4
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sha1-generic\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sha224-generic\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sha256-generic\00", [17 x i8] zeroinitializer }, align 32
@switch.table.img_hash_digest = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2097152, i32 262144, i32 262144, i32 524288, i32 1048576], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"img_hash_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1099, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1103, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"img_hash_match\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 926, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"img_hash_pm_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1095, i32 32 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 944, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 982, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 985, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 987, i32 44 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 989, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 994, i32 43 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 996, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1013, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [9 x i8] c"img_hash\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 144, i32 28 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1023, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 532, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 479, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 449, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 453, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 320, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 178, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 197, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 303, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 388, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 230, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 241, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 728, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 735, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 739, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 742, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 745, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 337, i32 46 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 339, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 350, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 146, i32 10 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 694, i32 32 }
@___asan_gen_.273 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 681, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 699, i32 32 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 704, i32 32 }
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.289 = private constant [29 x i8] c"../drivers/crypto/img-hash.c\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 709, i32 32 }
@___asan_gen_.291 = private unnamed_addr constant [29 x i8] c"switch.table.img_hash_digest\00", align 1
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__exitcall_img_hash_driver_exit, ptr @__initcall__kmod_img_hash__245_1108_img_hash_driver_init6, ptr @img_hash_cra_init._entry, ptr @img_hash_cra_init._entry_ptr, ptr @img_hash_dma_init._entry, ptr @img_hash_dma_init._entry.59, ptr @img_hash_dma_init._entry_ptr, ptr @img_hash_dma_init._entry_ptr.61, ptr @img_hash_dma_task._entry, ptr @img_hash_dma_task._entry_ptr, ptr @img_hash_driver_exit, ptr @img_hash_finish_req._entry, ptr @img_hash_finish_req._entry_ptr, ptr @img_hash_handle_queue._entry, ptr @img_hash_handle_queue._entry_ptr, ptr @img_hash_probe._entry, ptr @img_hash_probe._entry.10, ptr @img_hash_probe._entry.14, ptr @img_hash_probe._entry.17, ptr @img_hash_probe._entry_ptr, ptr @img_hash_probe._entry_ptr.12, ptr @img_hash_probe._entry_ptr.15, ptr @img_hash_probe._entry_ptr.20, ptr @img_hash_xmit_dma._entry, ptr @img_hash_xmit_dma._entry.41, ptr @img_hash_xmit_dma._entry_ptr, ptr @img_hash_xmit_dma._entry_ptr.43, ptr @img_irq_handler._entry, ptr @img_irq_handler._entry.47, ptr @img_irq_handler._entry.50, ptr @img_irq_handler._entry.53, ptr @img_irq_handler._entry_ptr, ptr @img_irq_handler._entry_ptr.49, ptr @img_irq_handler._entry_ptr.52, ptr @img_irq_handler._entry_ptr.55, ptr @img_hash_driver, ptr @.str, ptr @img_hash_match, ptr @img_hash_pm_ops, ptr @img_hash_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @img_hash, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @switch.table.img_hash_digest], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash_handle_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash_finish_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash_dma_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash_xmit_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash_xmit_dma._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_irq_handler._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_irq_handler._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_irq_handler._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash_dma_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_hash_cra_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.img_hash_digest to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @img_hash_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @img_hash_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @img_hash_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @img_hash_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_hash_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 160, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.img_hash_dev, ptr %call.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @img_hash_probe.__key, i16 noundef signext 3) #6
  %dev3 = getelementptr inbounds %struct.img_hash_dev, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %prev.i, align 4
  %done_task = getelementptr inbounds %struct.img_hash_dev, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %call.i to i32
  tail call void @tasklet_init(ptr noundef %done_task, ptr noundef nonnull @img_hash_done_task, i32 noundef %4) #6
  %dma_task = getelementptr inbounds %struct.img_hash_dev, ptr %call.i, i32 0, i32 10
  tail call void @tasklet_init(ptr noundef %dma_task, ptr noundef nonnull @img_hash_dma_task, i32 noundef %4) #6
  %queue = getelementptr inbounds %struct.img_hash_dev, ptr %call.i, i32 0, i32 12
  tail call void @crypto_init_queue(ptr noundef %queue, i32 noundef 20) #6
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %io_base = getelementptr inbounds %struct.img_hash_dev, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %io_base, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call4 to i32
  br label %res_err

if.end10:                                         ; preds = %do.body
  %call11 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #6
  %call12 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call11) #6
  %cpu_addr = getelementptr inbounds %struct.img_hash_dev, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12, ptr %cpu_addr, align 4
  %cmp.i173 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call12 to i32
  br label %res_err

if.end18:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call11, align 4
  %bus_addr = getelementptr inbounds %struct.img_hash_dev, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %bus_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bus_addr, align 4
  %call19 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.res_err_crit_edge, label %if.end22

if.end18.res_err_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %res_err

if.end22:                                         ; preds = %if.end18
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.dev_name.exit_crit_edge

if.end22.dev_name.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end22.dev_name.exit_crit_edge
  %retval.0.i174 = phi ptr [ %15, %if.end.i ], [ %13, %if.end22.dev_name.exit_crit_edge ]
  %call.i175 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call19, ptr noundef nonnull @img_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i174, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool.not = icmp eq i32 %call.i175, 0
  br i1 %tobool.not, label %do.body30, label %do.end28

do.end28:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %res_err

do.body30:                                        ; preds = %dev_name.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_hash_probe.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_hash_probe, %if.then35)) #6
          to label %do.end38 [label %if.then35], !srcloc !161

if.then35:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_hash_probe.__UNIQUE_ID_ddebug243, ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call19) #6
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %do.body30
  %call40 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #6
  %hash_clk = getelementptr inbounds %struct.img_hash_dev, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %hash_clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call40, ptr %hash_clk, align 4
  %cmp.i176 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %do.end46, label %if.end49

do.end46:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  %17 = ptrtoint ptr %hash_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hash_clk, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %res_err

if.end49:                                         ; preds = %do.end38
  %call51 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #6
  %sys_clk = getelementptr inbounds %struct.img_hash_dev, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %sys_clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call51, ptr %sys_clk, align 4
  %cmp.i177 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %do.end57, label %if.end60

do.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  %21 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sys_clk, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %res_err

if.end60:                                         ; preds = %if.end49
  %24 = ptrtoint ptr %hash_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hash_clk, align 4
  %call.i178 = tail call i32 @clk_prepare(ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool.not.i179 = icmp eq i32 %call.i178, 0
  br i1 %tobool.not.i179, label %if.end.i180, label %if.end60.res_err_crit_edge

if.end60.res_err_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %res_err

if.end.i180:                                      ; preds = %if.end60
  %call1.i = tail call i32 @clk_enable(ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end65, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %25) #6
  br label %res_err

if.end65:                                         ; preds = %if.end.i180
  %26 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sys_clk, align 4
  %call.i182 = tail call i32 @clk_prepare(ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool.not.i183 = icmp eq i32 %call.i182, 0
  br i1 %tobool.not.i183, label %if.end.i186, label %if.end65.clk_err_crit_edge

if.end65.clk_err_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_err

if.end.i186:                                      ; preds = %if.end65
  %call1.i184 = tail call i32 @clk_enable(ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i184)
  %tobool2.not.i185 = icmp eq i32 %call1.i184, 0
  br i1 %tobool2.not.i185, label %if.end70, label %if.end.i186.clk_err.sink.split_crit_edge

if.end.i186.clk_err.sink.split_crit_edge:         ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_err.sink.split

if.end70:                                         ; preds = %if.end.i186
  %call71 = tail call fastcc i32 @img_hash_dma_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.body75, label %if.end70.dma_err_crit_edge

if.end70.dma_err_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_err

do.body75:                                        ; preds = %if.end70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_hash_probe.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_hash_probe, %if.then87)) #6
          to label %do.end91 [label %if.then87], !srcloc !161

if.then87:                                        ; preds = %do.body75
  %dma_lch = getelementptr inbounds %struct.img_hash_dev, ptr %call.i, i32 0, i32 14
  %28 = ptrtoint ptr %dma_lch to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_lch, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %31, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then87.dma_chan_name.exit_crit_edge

if.then87.dma_chan_name.exit_crit_edge:           ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %if.then87.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %35, %if.end.i.i ], [ %33, %if.then87.dma_chan_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_hash_probe.__UNIQUE_ID_ddebug244, ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef %retval.0.i.i) #6
  br label %do.end91

do.end91:                                         ; preds = %dma_chan_name.exit, %do.body75
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.img_hash_drv, ptr @img_hash, i32 0, i32 1)) #6
  %36 = load ptr, ptr getelementptr inbounds (%struct.img_hash_drv, ptr @img_hash, i32 0, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %36, ptr noundef nonnull @img_hash) #6
  br i1 %call.i.i, label %if.end.i.i190, label %do.end91.list_add_tail.exit_crit_edge

do.end91.list_add_tail.exit_crit_edge:            ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i190:                                    ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call.i, ptr getelementptr inbounds (%struct.img_hash_drv, ptr @img_hash, i32 0, i32 0, i32 1), align 4
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @img_hash, ptr %call.i, align 4
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %prev.i, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call.i, ptr %36, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i190, %do.end91.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.img_hash_drv, ptr @img_hash, i32 0, i32 1)) #6
  %call93 = tail call fastcc i32 @img_register_algs()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %do.end99, label %err_algs

do.end99:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  br label %cleanup

err_algs:                                         ; preds = %list_add_tail.exit
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.img_hash_drv, ptr @img_hash, i32 0, i32 1)) #6
  %call.i.i191 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call.i) #6
  br i1 %call.i.i191, label %if.end.i.i192, label %err_algs.list_del.exit_crit_edge

err_algs.list_del.exit_crit_edge:                 ; preds = %err_algs
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i192:                                    ; preds = %err_algs
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i, align 4
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i192, %err_algs.list_del.exit_crit_edge
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i, align 4
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.img_hash_drv, ptr @img_hash, i32 0, i32 1)) #6
  %dma_lch101 = getelementptr inbounds %struct.img_hash_dev, ptr %call.i, i32 0, i32 14
  %48 = ptrtoint ptr %dma_lch101 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dma_lch101, align 4
  tail call void @dma_release_channel(ptr noundef %49) #6
  br label %dma_err

dma_err:                                          ; preds = %list_del.exit, %if.end70.dma_err_crit_edge
  %err.0 = phi i32 [ %call71, %if.end70.dma_err_crit_edge ], [ %call93, %list_del.exit ]
  %50 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sys_clk, align 4
  tail call void @clk_disable(ptr noundef %51) #6
  br label %clk_err.sink.split

clk_err.sink.split:                               ; preds = %dma_err, %if.end.i186.clk_err.sink.split_crit_edge
  %.sink = phi ptr [ %51, %dma_err ], [ %27, %if.end.i186.clk_err.sink.split_crit_edge ]
  %err.1.ph = phi i32 [ %err.0, %dma_err ], [ %call1.i184, %if.end.i186.clk_err.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #6
  br label %clk_err

clk_err:                                          ; preds = %clk_err.sink.split, %if.end65.clk_err_crit_edge
  %err.1 = phi i32 [ %call.i182, %if.end65.clk_err_crit_edge ], [ %err.1.ph, %clk_err.sink.split ]
  %52 = ptrtoint ptr %hash_clk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hash_clk, align 4
  tail call void @clk_disable(ptr noundef %53) #6
  tail call void @clk_unprepare(ptr noundef %53) #6
  br label %res_err

res_err:                                          ; preds = %clk_err, %if.then3.i, %if.end60.res_err_crit_edge, %do.end57, %do.end46, %do.end28, %if.end18.res_err_crit_edge, %if.then15, %if.then7
  %err.2 = phi i32 [ %6, %if.then7 ], [ %8, %if.then15 ], [ %call.i175, %do.end28 ], [ %19, %do.end46 ], [ %23, %do.end57 ], [ %err.1, %clk_err ], [ %call19, %if.end18.res_err_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i178, %if.end60.res_err_crit_edge ]
  tail call void @tasklet_kill(ptr noundef %done_task) #6
  tail call void @tasklet_kill(ptr noundef %dma_task) #6
  br label %cleanup

cleanup:                                          ; preds = %res_err, %do.end99, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %res_err ], [ 0, %do.end99 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_hash_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.img_hash_drv, ptr @img_hash, i32 0, i32 1)) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.img_hash_drv, ptr @img_hash, i32 0, i32 1)) #6
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @img_algs) #6
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([4 x %struct.ahash_alg], ptr @img_algs, i32 0, i32 1)) #6
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([4 x %struct.ahash_alg], ptr @img_algs, i32 0, i32 2)) #6
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([4 x %struct.ahash_alg], ptr @img_algs, i32 0, i32 3)) #6
  %done_task = getelementptr inbounds %struct.img_hash_dev, ptr %1, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %done_task) #6
  %dma_task = getelementptr inbounds %struct.img_hash_dev, ptr %1, i32 0, i32 10
  tail call void @tasklet_kill(ptr noundef %dma_task) #6
  %dma_lch = getelementptr inbounds %struct.img_hash_dev, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %dma_lch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_lch, align 4
  tail call void @dma_release_channel(ptr noundef %11) #6
  %hash_clk = getelementptr inbounds %struct.img_hash_dev, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %hash_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hash_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  %sys_clk = getelementptr inbounds %struct.img_hash_dev, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sys_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @img_hash_done_task(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %err1 = getelementptr inbounds %struct.img_hash_dev, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %err1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %err1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %2)
  %cmp = icmp eq i32 %2, -22
  br i1 %cmp, label %entry.do.end.i_crit_edge, label %if.end

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.img_hash_dev, ptr %0, i32 0, i32 11
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @img_hash_handle_queue(ptr noundef %0, ptr noundef null)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and6 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end4
  %and10 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then8.cleanup_crit_edge, label %if.then12

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %and14 = and i32 %4, -9
  br label %if.then.i60

if.else:                                          ; preds = %if.end4
  %and17 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else.cleanup_crit_edge, label %if.then19

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %if.else
  %and21 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then19.if.end32_crit_edge, label %if.then23

if.then19.if.end32_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then23:                                        ; preds = %if.then19
  %and25 = and i32 %4, -5
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and25, ptr %flags, align 4
  %req.i = getelementptr inbounds %struct.img_hash_dev, ptr %0, i32 0, i32 13
  %6 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req.i, align 4
  %flags.i = getelementptr inbounds %struct.ahash_request, ptr %7, i32 1, i32 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then23.img_hash_write_via_dma_stop.exit_crit_edge, label %if.then.i

if.then23.img_hash_write_via_dma_stop.exit_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_hash_write_via_dma_stop.exit

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.img_hash_dev, ptr %0, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %sg.i = getelementptr inbounds %struct.ahash_request, ptr %7, i32 1, i32 5, i32 16
  %12 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg.i, align 8
  %dma_ct.i = getelementptr inbounds %struct.ahash_request, ptr %7, i32 1, i32 5, i32 8
  %14 = ptrtoint ptr %dma_ct.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_ct.i, align 16
  tail call void @dma_unmap_sg_attrs(ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef 1, i32 noundef 0) #6
  br label %img_hash_write_via_dma_stop.exit

img_hash_write_via_dma_stop.exit:                 ; preds = %if.then.i, %if.then23.img_hash_write_via_dma_stop.exit_crit_edge
  %16 = ptrtoint ptr %err1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %err1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool28.not = icmp eq i32 %17, 0
  br i1 %tobool28.not, label %img_hash_write_via_dma_stop.exit.if.end32_crit_edge, label %img_hash_write_via_dma_stop.exit.do.end.i_crit_edge

img_hash_write_via_dma_stop.exit.do.end.i_crit_edge: ; preds = %img_hash_write_via_dma_stop.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

img_hash_write_via_dma_stop.exit.if.end32_crit_edge: ; preds = %img_hash_write_via_dma_stop.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end32:                                         ; preds = %img_hash_write_via_dma_stop.exit.if.end32_crit_edge, %if.then19.if.end32_crit_edge
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and34 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.cleanup_crit_edge, label %if.then36

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %and38 = and i32 %19, -73
  br label %if.then.i60

if.then.i60:                                      ; preds = %if.then36, %if.then12
  %storemerge = phi i32 [ %and14, %if.then12 ], [ %and38, %if.then36 ]
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %flags, align 4
  %req65 = getelementptr inbounds %struct.img_hash_dev, ptr %0, i32 0, i32 13
  %21 = ptrtoint ptr %req65 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req65, align 4
  %__ctx.i.i66 = getelementptr inbounds %struct.ahash_request, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %__ctx.i.i66 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %__ctx.i.i66, align 128
  %digest.i.i = getelementptr inbounds %struct.ahash_request, ptr %22, i32 1, i32 0, i32 0, i32 1
  %digsize.i.i = getelementptr inbounds %struct.ahash_request, ptr %22, i32 1, i32 5
  %25 = ptrtoint ptr %digsize.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %digsize.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp8.not.i.i = icmp ult i32 %26, 4
  br i1 %cmp8.not.i.i, label %if.then.i60.img_hash_copy_hash.exit.i_crit_edge, label %for.body.preheader.i.i

if.then.i60.img_hash_copy_hash.exit.i_crit_edge:  ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_hash_copy_hash.exit.i

for.body.preheader.i.i:                           ; preds = %if.then.i60
  %div6.i.i = lshr i32 %26, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.09.in.i.i = phi i32 [ %i.09.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %div6.i.i, %for.body.preheader.i.i ]
  %i.09.i.i = add nsw i32 %i.09.in.i.i, -1
  %27 = ptrtoint ptr %__ctx.i.i66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %__ctx.i.i66, align 128
  %io_base.i.i.i.i = getelementptr inbounds %struct.img_hash_dev, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %io_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %30, i32 28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !162
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  %arrayidx.i.i = getelementptr i32, ptr %digest.i.i, i32 %i.09.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx.i.i, align 4
  %cmp.i.i = icmp ugt i32 %i.09.in.i.i, 1
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.img_hash_copy_hash.exit.i_crit_edge

for.body.i.i.img_hash_copy_hash.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_hash_copy_hash.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

img_hash_copy_hash.exit.i:                        ; preds = %for.body.i.i.img_hash_copy_hash.exit.i_crit_edge, %if.then.i60.img_hash_copy_hash.exit.i_crit_edge
  %flags.i61 = getelementptr inbounds %struct.img_hash_dev, ptr %24, i32 0, i32 11
  %34 = ptrtoint ptr %flags.i61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i61, align 4
  %and.i62 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool2.not.i = icmp eq i32 %and.i62, 0
  br i1 %tobool2.not.i, label %img_hash_copy_hash.exit.i.if.end6.i_crit_edge, label %if.then3.i

img_hash_copy_hash.exit.i.if.end6.i_crit_edge:    ; preds = %img_hash_copy_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then3.i:                                       ; preds = %img_hash_copy_hash.exit.i
  %result.i.i = getelementptr inbounds %struct.ahash_request, ptr %22, i32 0, i32 3
  %36 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %result.i.i, align 32
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.then3.i.if.end6.i_crit_edge, label %if.end.i.i

if.then3.i.if.end6.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.end.i.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %digsize.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %digsize.i.i, align 8
  %40 = call ptr @memcpy(ptr %37, ptr %digest.i.i, i32 %39)
  br label %if.end6.i

do.end.i:                                         ; preds = %img_hash_write_via_dma_stop.exit.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %err.0 = phi i32 [ -22, %entry.do.end.i_crit_edge ], [ %17, %img_hash_write_via_dma_stop.exit.do.end.i_crit_edge ]
  %req = getelementptr inbounds %struct.img_hash_dev, ptr %0, i32 0, i32 13
  %41 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %req, align 4
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__ctx.i.i, align 128
  %dev.i63 = getelementptr inbounds %struct.img_hash_dev, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %dev.i63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i63, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.34, i32 noundef %err.0) #9
  %flags5.i = getelementptr inbounds %struct.ahash_request, ptr %42, i32 1, i32 4
  %47 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags5.i, align 4
  %or.i = or i32 %48, 128
  store i32 %or.i, ptr %flags5.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i, %if.end.i.i, %if.then3.i.if.end6.i_crit_edge, %img_hash_copy_hash.exit.i.if.end6.i_crit_edge
  %49 = phi ptr [ %44, %do.end.i ], [ %24, %img_hash_copy_hash.exit.i.if.end6.i_crit_edge ], [ %24, %if.end.i.i ], [ %24, %if.then3.i.if.end6.i_crit_edge ]
  %50 = phi ptr [ %42, %do.end.i ], [ %22, %img_hash_copy_hash.exit.i.if.end6.i_crit_edge ], [ %22, %if.end.i.i ], [ %22, %if.then3.i.if.end6.i_crit_edge ]
  %err.addr.0.i = phi i32 [ %err.0, %do.end.i ], [ 0, %img_hash_copy_hash.exit.i.if.end6.i_crit_edge ], [ 0, %if.end.i.i ], [ -22, %if.then3.i.if.end6.i_crit_edge ]
  %flags7.i = getelementptr inbounds %struct.img_hash_dev, ptr %49, i32 0, i32 11
  %51 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags7.i, align 4
  %and8.i = and i32 %52, -108
  store i32 %and8.i, ptr %flags7.i, align 4
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %complete.i, align 8
  %tobool9.not.i = icmp eq ptr %54, null
  br i1 %tobool9.not.i, label %if.end6.i.cleanup_crit_edge, label %if.then10.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %54(ptr noundef %50, i32 noundef %err.addr.0.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then10.i, %if.end6.i.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.then3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @img_hash_dma_task(i32 noundef %d) #2 align 64 {
entry:
  %tsg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %d to ptr
  %req = getelementptr inbounds %struct.img_hash_dev, ptr %0, i32 0, i32 13
  %1 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tsg) #6
  %tobool.not = icmp eq ptr %2, null
  %3 = call ptr @memset(ptr %tsg, i32 255, i32 20)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sg = getelementptr inbounds %struct.ahash_request, ptr %2, i32 1, i32 5, i32 16
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !163

do.body2.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !164
  unreachable

sg_virt.exit:                                     ; preds = %if.end
  %and.i.i = and i32 %7, -4
  %8 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %8) #6
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %10
  %11 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sg, align 8
  %length = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length, align 4
  %offset = getelementptr inbounds %struct.ahash_request, ptr %2, i32 1, i32 5, i32 24
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 64
  %sub = sub i32 %14, %16
  %rem = and i32 %sub, 3
  %div140 = lshr i32 %sub, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %tobool6.not = icmp ult i32 %sub, 4
  br i1 %tobool6.not, label %sg_virt.exit.if.end21_crit_edge, label %if.then7

sg_virt.exit.if.end21_crit_edge:                  ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then7:                                         ; preds = %sg_virt.exit
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %16
  %mul = and i32 %sub, -4
  call void @sg_init_one(ptr noundef nonnull %tsg, ptr noundef %add.ptr, i32 noundef %mul) #6
  %17 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req, align 4
  %dev.i = getelementptr inbounds %struct.img_hash_dev, ptr %0, i32 0, i32 1
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %call1.i141 = call i32 @dma_map_sg_attrs(ptr noundef %20, ptr noundef nonnull %tsg, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %dma_ct.i = getelementptr inbounds %struct.ahash_request, ptr %18, i32 1, i32 5, i32 8
  %21 = ptrtoint ptr %dma_ct.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call1.i141, ptr %dma_ct.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i141)
  %cmp.i = icmp eq i32 %call1.i141, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.39) #9
  %err.i = getelementptr inbounds %struct.img_hash_dev, ptr %0, i32 0, i32 8
  %24 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -22, ptr %err.i, align 4
  br label %do.end

if.end.i:                                         ; preds = %if.then7
  %dma_lch.i = getelementptr inbounds %struct.img_hash_dev, ptr %0, i32 0, i32 14
  %25 = ptrtoint ptr %dma_lch.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_lch.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end.i.do.end9.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.do.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool1.not.i.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.do.end9.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.do.end9.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 39
  %29 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %30, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.do.end9.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.do.end9.i_crit_edge:           ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i.i = call ptr %30(ptr noundef nonnull %26, ptr noundef nonnull %tsg, i32 noundef %call1.i141, i32 noundef 1, i32 noundef 3, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %dmaengine_prep_slave_sg.exit.i.do.end9.i_crit_edge, label %if.else

dmaengine_prep_slave_sg.exit.i.do.end9.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %dmaengine_prep_slave_sg.exit.i.do.end9.i_crit_edge, %lor.lhs.false2.i.i.do.end9.i_crit_edge, %lor.lhs.false.i.i.do.end9.i_crit_edge, %if.end.i.do.end9.i_crit_edge
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.42) #9
  %err11.i = getelementptr inbounds %struct.img_hash_dev, ptr %0, i32 0, i32 8
  %33 = ptrtoint ptr %err11.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -22, ptr %err11.i, align 4
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %35, ptr noundef nonnull %tsg, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  br label %do.end

do.end:                                           ; preds = %do.end9.i, %do.end.i
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.37) #9
  %flags = getelementptr inbounds %struct.ahash_request, ptr %2, i32 1, i32 4
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %or = or i32 %39, 32
  store i32 %or, ptr %flags, align 4
  %err = getelementptr inbounds %struct.img_hash_dev, ptr %0, i32 0, i32 8
  %40 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %err, align 4
  %41 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset, align 64
  %add.ptr13 = getelementptr i8, ptr %add.ptr.i, i32 %42
  call fastcc void @img_hash_xmit_cpu(ptr noundef %0, ptr noundef %add.ptr13, i32 noundef %mul, i32 noundef 0)
  br label %if.end21.sink.split

if.else:                                          ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %43 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @img_hash_dma_callback, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 8
  %44 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %0, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i33.i = call i32 %46(ptr noundef nonnull %call.i.i) #6
  %47 = ptrtoint ptr %dma_lch.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_lch.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %50, i32 0, i32 50
  %51 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %52(ptr noundef %48) #6
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.else, %do.end
  %wsend.0.ph = phi i32 [ %div140, %if.else ], [ 0, %do.end ]
  %sent18 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 1, i32 5, i32 32
  %53 = ptrtoint ptr %sent18 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sent18, align 8
  %add = add i32 %54, %mul
  store i32 %add, ptr %sent18, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %sg_virt.exit.if.end21_crit_edge
  %wsend.0 = phi i32 [ 0, %sg_virt.exit.if.end21_crit_edge ], [ %wsend.0.ph, %if.end21.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool22.not = icmp eq i32 %rem, 0
  br i1 %tobool22.not, label %if.else70, label %if.then23

if.then23:                                        ; preds = %if.end21
  %sgfirst = getelementptr inbounds %struct.ahash_request, ptr %2, i32 1, i32 5, i32 12
  %55 = ptrtoint ptr %sgfirst to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sgfirst, align 4
  %nents = getelementptr inbounds %struct.ahash_request, ptr %2, i32 1, i32 5, i32 20
  %57 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nents, align 4
  %buffer = getelementptr inbounds %struct.ahash_request, ptr %2, i32 3
  %sent24 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 1, i32 5, i32 32
  %59 = ptrtoint ptr %sent24 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sent24, align 8
  %call25 = call i32 @sg_pcopy_to_buffer(ptr noundef %56, i32 noundef %58, ptr noundef %buffer, i32 noundef %rem, i32 noundef %60) #6
  %bufcnt = getelementptr inbounds %struct.ahash_request, ptr %2, i32 1, i32 5, i32 40
  %61 = ptrtoint ptr %bufcnt to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call25, ptr %bufcnt, align 16
  %62 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sg, align 8
  %call27 = call ptr @sg_next(ptr noundef %63) #6
  %64 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call27, ptr %sg, align 8
  %tobool30.not144 = icmp eq ptr %call27, null
  br i1 %tobool30.not144, label %if.then23.while.end_crit_edge, label %land.rhs.preheader

if.then23.while.end_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.preheader:                               ; preds = %if.then23
  %65 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bufcnt, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %66)
  %cmp148 = icmp ult i32 %66, 4
  br i1 %cmp148, label %land.rhs.preheader.while.body_crit_edge, label %land.rhs.preheader.while.end_crit_edge

land.rhs.preheader.while.end_crit_edge:           ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.preheader.while.body_crit_edge:          ; preds = %land.rhs.preheader
  br label %while.body

land.rhs:                                         ; preds = %if.end62
  %67 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bufcnt, align 16
  %cmp = icmp ult i32 %68, 4
  br i1 %cmp, label %land.rhs.while.body_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.preheader.while.body_crit_edge
  %69 = phi i32 [ %68, %land.rhs.while.body_crit_edge ], [ %66, %land.rhs.preheader.while.body_crit_edge ]
  %70 = phi ptr [ %.pr, %land.rhs.while.body_crit_edge ], [ %call27, %land.rhs.preheader.while.body_crit_edge ]
  %length33 = getelementptr inbounds %struct.scatterlist, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %length33 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %length33, align 4
  %sub35 = sub nuw nsw i32 4, %69
  %73 = call i32 @llvm.umin.i32(i32 %72, i32 %sub35)
  %74 = ptrtoint ptr %sgfirst to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sgfirst, align 4
  %76 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nents, align 4
  %add.ptr48 = getelementptr i8, ptr %buffer, i32 %69
  %78 = ptrtoint ptr %sent24 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sent24, align 8
  %add51 = add i32 %79, %69
  %call52 = call i32 @sg_pcopy_to_buffer(ptr noundef %75, i32 noundef %77, ptr noundef %add.ptr48, i32 noundef %73, i32 noundef %add51) #6
  %80 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bufcnt, align 16
  %add54 = add i32 %81, %call52
  store i32 %add54, ptr %bufcnt, align 16
  %82 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sg, align 8
  %length56 = getelementptr inbounds %struct.scatterlist, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %length56 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %length56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call52, i32 %85)
  %cmp57.not = icmp ult i32 %call52, %85
  br i1 %cmp57.not, label %while.body.if.end62_crit_edge, label %if.then58

while.body.if.end62_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then58:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %call60 = call ptr @sg_next(ptr noundef %83) #6
  %86 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call60, ptr %sg, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %while.body.if.end62_crit_edge
  %.pr = phi ptr [ %call60, %if.then58 ], [ %83, %while.body.if.end62_crit_edge ]
  %tbc.1 = phi i32 [ 0, %if.then58 ], [ %call52, %while.body.if.end62_crit_edge ]
  %tobool30.not = icmp eq ptr %.pr, null
  br i1 %tobool30.not, label %if.end62.while.end_crit_edge, label %land.rhs

if.end62.while.end_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end62.while.end_crit_edge, %land.rhs.while.end_crit_edge, %land.rhs.preheader.while.end_crit_edge, %if.then23.while.end_crit_edge
  %tbc.0.lcssa = phi i32 [ 0, %if.then23.while.end_crit_edge ], [ 0, %land.rhs.preheader.while.end_crit_edge ], [ %tbc.1, %land.rhs.while.end_crit_edge ], [ %tbc.1, %if.end62.while.end_crit_edge ]
  %87 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bufcnt, align 16
  %89 = ptrtoint ptr %sent24 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sent24, align 8
  %add65 = add i32 %90, %88
  store i32 %add65, ptr %sent24, align 8
  %91 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %tbc.0.lcssa, ptr %offset, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wsend.0)
  %tobool67.not = icmp eq i32 %wsend.0, 0
  br i1 %tobool67.not, label %if.then68, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then68:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @img_hash_dma_callback(ptr noundef %0)
  br label %cleanup

if.else70:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %offset, align 64
  %93 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sg, align 8
  %call73 = call ptr @sg_next(ptr noundef %94) #6
  %95 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call73, ptr %sg, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else70, %if.then68, %while.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tsg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base.i = getelementptr inbounds %struct.img_hash_dev, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !162
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %2) #6, !srcloc !165
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else22, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_irq_handler.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_irq_handler, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !161

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.img_hash_dev, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_irq_handler.__UNIQUE_ID_ddebug242, ptr noundef %7, ptr noundef nonnull @.str.45) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %flags = getelementptr inbounds %struct.img_hash_dev, ptr %dev_id, i32 0, i32 11
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and6 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.end19, label %if.then8

if.then8:                                         ; preds = %do.end
  %and11 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %spec.select.v = select i1 %tobool12.not, i32 72, i32 8
  %spec.select = or i32 %spec.select.v, %9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %flags, align 4
  %state.i = getelementptr inbounds %struct.img_hash_dev, ptr %dev_id, i32 0, i32 9, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then8.if.end49_crit_edge

if.then8.if.end49_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %done_task = getelementptr inbounds %struct.img_hash_dev, ptr %dev_id, i32 0, i32 9
  tail call void @__tasklet_schedule(ptr noundef %done_task) #6
  br label %if.end49

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev20 = getelementptr inbounds %struct.img_hash_dev, ptr %dev_id, i32 0, i32 1
  %11 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.46) #9
  br label %if.end49

if.else22:                                        ; preds = %entry
  %and23 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else30, label %do.end28

do.end28:                                         ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #8
  %dev29 = getelementptr inbounds %struct.img_hash_dev, ptr %dev_id, i32 0, i32 1
  %13 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.48) #9
  br label %if.end49

if.else30:                                        ; preds = %if.else22
  %and31 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else38, label %do.end36

do.end36:                                         ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #8
  %dev37 = getelementptr inbounds %struct.img_hash_dev, ptr %dev_id, i32 0, i32 1
  %15 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.51) #9
  br label %if.end49

if.else38:                                        ; preds = %if.else30
  %and39 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else38.if.end49_crit_edge, label %do.end44

if.else38.if.end49_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

do.end44:                                         ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #8
  %dev45 = getelementptr inbounds %struct.img_hash_dev, ptr %dev_id, i32 0, i32 1
  %17 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.54) #9
  br label %if.end49

if.end49:                                         ; preds = %do.end44, %if.else38.if.end49_crit_edge, %do.end36, %do.end28, %do.end19, %if.then.i, %if.then8.if.end49_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @img_hash_dma_init(ptr nocapture noundef %hdev) unnamed_addr #2 align 64 {
entry:
  %dma_conf = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_conf) #6
  %0 = getelementptr inbounds i8, ptr %dma_conf, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %dev = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.56) #6
  %dma_lch = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 14
  %4 = ptrtoint ptr %dma_lch to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %dma_lch, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.57) #9
  %7 = ptrtoint ptr %dma_lch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_lch, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %dma_conf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %dma_conf, align 4
  %bus_addr = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 5
  %11 = ptrtoint ptr %bus_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bus_addr, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_conf, i32 0, i32 2
  %13 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_conf, i32 0, i32 4
  %14 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %dst_addr_width, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_conf, i32 0, i32 6
  %15 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %dst_maxburst, align 4
  %device_fc = getelementptr inbounds %struct.dma_slave_config, ptr %dma_conf, i32 0, i32 9
  %16 = ptrtoint ptr %device_fc to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %device_fc, align 4
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.do.end11_crit_edge, label %dmaengine_slave_config.exit

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

dmaengine_slave_config.exit:                      ; preds = %if.end
  %call.i = call i32 %20(ptr noundef %call, ptr noundef nonnull %dma_conf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %dmaengine_slave_config.exit.cleanup_crit_edge, label %dmaengine_slave_config.exit.do.end11_crit_edge

dmaengine_slave_config.exit.do.end11_crit_edge:   ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

dmaengine_slave_config.exit.cleanup_crit_edge:    ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11:                                         ; preds = %dmaengine_slave_config.exit.do.end11_crit_edge, %if.end.do.end11_crit_edge
  %retval.0.i27 = phi i32 [ %call.i, %dmaengine_slave_config.exit.do.end11_crit_edge ], [ -38, %if.end.do.end11_crit_edge ]
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.60) #9
  %23 = ptrtoint ptr %dma_lch to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_lch, align 4
  call void @dma_release_channel(ptr noundef %24) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %dmaengine_slave_config.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %9, %do.end ], [ %retval.0.i27, %do.end11 ], [ 0, %dmaengine_slave_config.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_conf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @img_register_algs() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_ahash(ptr noundef nonnull @img_algs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds ([4 x %struct.ahash_alg], ptr @img_algs, i32 0, i32 1)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds ([4 x %struct.ahash_alg], ptr @img_algs, i32 0, i32 2)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.for.body3_crit_edge

for.inc.1.for.body3_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds ([4 x %struct.ahash_alg], ptr @img_algs, i32 0, i32 3)) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.2.cleanup_crit_edge, label %for.inc.2.for.body3_crit_edge

for.inc.2.for.body3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body3:                                        ; preds = %for.inc.2.for.body3_crit_edge, %for.inc.1.for.body3_crit_edge, %for.inc.for.body3_crit_edge
  %i.03.lcssa.ph = phi i32 [ 2, %for.inc.2.for.body3_crit_edge ], [ 1, %for.inc.1.for.body3_crit_edge ], [ 0, %for.inc.for.body3_crit_edge ]
  %call.lcssa.ph = phi i32 [ %call.3, %for.inc.2.for.body3_crit_edge ], [ %call.2, %for.inc.1.for.body3_crit_edge ], [ %call.1, %for.inc.for.body3_crit_edge ]
  %arrayidx4 = getelementptr [4 x %struct.ahash_alg], ptr @img_algs, i32 0, i32 %i.03.lcssa.ph
  tail call void @crypto_unregister_ahash(ptr noundef %arrayidx4) #6
  br i1 %tobool.not.1, label %for.body3.1, label %for.body3.cleanup_crit_edge

for.body3.cleanup_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body3.1:                                      ; preds = %for.body3
  %dec.1 = add nsw i32 %i.03.lcssa.ph, -1
  %arrayidx4.1 = getelementptr [4 x %struct.ahash_alg], ptr @img_algs, i32 0, i32 %dec.1
  tail call void @crypto_unregister_ahash(ptr noundef %arrayidx4.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %tobool2.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool2.not.1, label %for.body3.1.cleanup_crit_edge, label %for.body3.2

for.body3.1.cleanup_crit_edge:                    ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body3.2:                                      ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #8
  %dec.2 = add nsw i32 %i.03.lcssa.ph, -2
  %arrayidx4.2 = getelementptr [4 x %struct.ahash_alg], ptr @img_algs, i32 0, i32 %dec.2
  tail call void @crypto_unregister_ahash(ptr noundef %arrayidx4.2) #6
  br label %cleanup

cleanup:                                          ; preds = %for.body3.2, %for.body3.1.cleanup_crit_edge, %for.body3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.inc.2.cleanup_crit_edge ], [ %call.lcssa.ph, %for.body3.2 ], [ %call.lcssa.ph, %for.body3.1.cleanup_crit_edge ], [ %call.lcssa.ph, %for.body3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @img_hash_handle_queue(ptr noundef %hdev, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %queue = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 12
  %call.i = tail call i32 @crypto_enqueue_request(ptr noundef %queue, ptr noundef nonnull %req) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %res.0 = phi i32 [ %call.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %flags6 = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags6, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %queue11 = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 12
  %backlog.i = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backlog.i, align 4
  %cmp.i = icmp eq ptr %3, %queue11
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %3
  %call14 = tail call ptr @crypto_dequeue_request(ptr noundef %queue11) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then21.critedge, label %if.then16

if.then16:                                        ; preds = %if.end10
  %4 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags6, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %flags6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %tobool23.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool23.not, label %if.then16.if.end25_crit_edge, label %if.then24

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then21.critedge:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  br label %cleanup

if.then24:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %spec.select.i, i32 0, i32 1
  %6 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %complete, align 4
  tail call void %7(ptr noundef nonnull %spec.select.i, i32 noundef -115) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then16.if.end25_crit_edge
  %req27 = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 13
  %8 = ptrtoint ptr %req27 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call14, ptr %req27, align 4
  %dev = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %op = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 36
  %11 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %op, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 0, i32 1
  %13 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nbytes, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.21, i32 noundef %12, i32 noundef %14) #9
  %io_base.i.i = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 4
  %15 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 16777216) #6, !srcloc !165
  %17 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #6, !srcloc !165
  %19 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #6, !srcloc !165
  %21 = ptrtoint ptr %req27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req27, align 4
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbytes.i, align 8
  %conv.i = zext i32 %24 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 3
  %conv2.i = trunc i64 %shl.i to i32
  %25 = lshr i32 %24, 5
  %26 = and i32 %25, 117440512
  %27 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %26) #6, !srcloc !165
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv2.i) #6
  %30 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %29) #6, !srcloc !165
  %32 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags6, align 4
  %and.i = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end25.do.body.i_crit_edge

if.end25.do.body.i_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %33, 16
  %34 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i, ptr %flags6, align 4
  %err.i = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 8
  %35 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %err.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end25.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_hash_hw_init.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_hash_handle_queue, %if.then7.i)) #6
          to label %img_hash_hw_init.exit [label %if.then7.i], !srcloc !161

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_hash_hw_init.__UNIQUE_ID_ddebug241, ptr noundef %37, ptr noundef nonnull @.str.24, i64 noundef %shl.i) #6
  br label %img_hash_hw_init.exit

img_hash_hw_init.exit:                            ; preds = %if.then7.i, %do.body.i
  %38 = ptrtoint ptr %req27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %req27, align 4
  %bufcnt.i = getelementptr inbounds %struct.ahash_request, ptr %39, i32 1, i32 5, i32 40
  %40 = ptrtoint ptr %bufcnt.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %bufcnt.i, align 16
  %nbytes.i71 = getelementptr inbounds %struct.ahash_request, ptr %39, i32 0, i32 1
  %41 = ptrtoint ptr %nbytes.i71 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nbytes.i71, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %42)
  %cmp.i72 = icmp ugt i32 %42, 63
  br i1 %cmp.i72, label %do.body.i73, label %do.body8.i

do.body.i73:                                      ; preds = %img_hash_hw_init.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_hash_process_data.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_hash_handle_queue, %if.then5.i)) #6
          to label %do.end.i [label %if.then5.i], !srcloc !161

if.then5.i:                                       ; preds = %do.body.i73
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %45 = ptrtoint ptr %nbytes.i71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nbytes.i71, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_hash_process_data.__UNIQUE_ID_ddebug239, ptr noundef %44, ptr noundef nonnull @.str.26, i32 noundef %46) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i73
  tail call fastcc void @img_hash_write_via_dma(ptr noundef %hdev) #6
  br label %cleanup

do.body8.i:                                       ; preds = %img_hash_hw_init.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_hash_process_data.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_hash_handle_queue, %if.then20.i)) #6
          to label %do.end25.i [label %if.then20.i], !srcloc !161

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %49 = ptrtoint ptr %nbytes.i71 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nbytes.i71, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_hash_process_data.__UNIQUE_ID_ddebug240, ptr noundef %48, ptr noundef nonnull @.str.27, i32 noundef %50) #6
  br label %do.end25.i

do.end25.i:                                       ; preds = %if.then20.i, %do.body8.i
  tail call fastcc void @img_hash_write_via_cpu(ptr noundef %hdev) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end25.i, %do.end.i, %if.then21.critedge, %if.then8
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @img_hash_write_via_dma(ptr noundef %hdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 13
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %flags.i = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.else.i:                                        ; preds = %entry
  %and2.i = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else6.i, label %if.else.i.do.body.i_crit_edge

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.else6.i:                                       ; preds = %if.else.i
  %and8.i = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else12.i, label %if.else6.i.do.body.i_crit_edge

if.else6.i.do.body.i_crit_edge:                   ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.else12.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #8
  %and14.i = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %spec.select.i = select i1 %tobool15.not.i, i32 256, i32 259
  br label %do.body.i

do.body.i:                                        ; preds = %if.else12.i, %if.else6.i.do.body.i_crit_edge, %if.else.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %cr.0.i = phi i32 [ 256, %entry.do.body.i_crit_edge ], [ 257, %if.else.i.do.body.i_crit_edge ], [ 258, %if.else6.i.do.body.i_crit_edge ], [ %spec.select.i, %if.else12.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_hash_start.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_hash_write_via_dma, %if.then26.i)) #6
          to label %img_hash_start.exit [label %if.then26.i], !srcloc !161

if.then26.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_hash_start.__UNIQUE_ID_ddebug236, ptr noundef %5, ptr noundef nonnull @.str.31) #6
  br label %img_hash_start.exit

img_hash_start.exit:                              ; preds = %if.then26.i, %do.body.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %cr.0.i) #6
  %io_base.i.i = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 4
  %7 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #6, !srcloc !165
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_hash_write_via_dma.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_hash_write_via_dma, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %img_hash_start.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %total = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 28
  %11 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_hash_write_via_dma.__UNIQUE_ID_ddebug238, ptr noundef %10, ptr noundef nonnull @.str.29, i32 noundef %12) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %img_hash_start.exit
  %total4 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 28
  %13 = ptrtoint ptr %total4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %if.then6, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 11
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %or = or i32 %16, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end.if.end7_crit_edge
  %flags8 = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 11
  %17 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags8, align 4
  %or9 = or i32 %18, 6
  store i32 %or9, ptr %flags8, align 4
  %state.i = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 10, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i1 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i1, label %if.then.i, label %if.end7.tasklet_schedule.exit_crit_edge

if.end7.tasklet_schedule.exit_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %dma_task = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 10
  tail call void @__tasklet_schedule(ptr noundef %dma_task) #6
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.end7.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @img_hash_write_via_cpu(ptr nocapture noundef %hdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 13
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %src = getelementptr inbounds %struct.ahash_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 4
  %sg = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 16
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg, align 8
  %call2 = tail call i32 @sg_nents(ptr noundef %5) #6
  %buffer = getelementptr inbounds %struct.ahash_request, ptr %1, i32 3
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 8
  %call4 = tail call i32 @sg_copy_to_buffer(ptr noundef %3, i32 noundef %call2, ptr noundef %buffer, i32 noundef %9) #6
  %bufcnt = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 40
  %10 = ptrtoint ptr %bufcnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call4, ptr %bufcnt, align 16
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req, align 4
  %nbytes6 = getelementptr inbounds %struct.ahash_request, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %nbytes6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nbytes6, align 8
  %total = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 28
  %15 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %total, align 4
  store i32 0, ptr %bufcnt, align 16
  %flags = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 11
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %or = or i32 %17, 34
  store i32 %or, ptr %flags, align 4
  %18 = load ptr, ptr %req, align 4
  %flags.i = getelementptr inbounds %struct.ahash_request, ptr %18, i32 1, i32 4
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %20, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.else.i:                                        ; preds = %entry
  %and2.i = and i32 %20, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else6.i, label %if.else.i.do.body.i_crit_edge

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.else6.i:                                       ; preds = %if.else.i
  %and8.i = and i32 %20, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else12.i, label %if.else6.i.do.body.i_crit_edge

if.else6.i.do.body.i_crit_edge:                   ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.else12.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #8
  %and14.i = and i32 %20, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %spec.select.i = select i1 %tobool15.not.i, i32 256, i32 259
  br label %do.body.i

do.body.i:                                        ; preds = %if.else12.i, %if.else6.i.do.body.i_crit_edge, %if.else.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %cr.0.i = phi i32 [ 256, %entry.do.body.i_crit_edge ], [ 257, %if.else.i.do.body.i_crit_edge ], [ 258, %if.else6.i.do.body.i_crit_edge ], [ %spec.select.i, %if.else12.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_hash_start.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_hash_write_via_cpu, %if.then26.i)) #6
          to label %img_hash_start.exit [label %if.then26.i], !srcloc !161

if.then26.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 1
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_hash_start.__UNIQUE_ID_ddebug236, ptr noundef %22, ptr noundef nonnull @.str.31) #6
  br label %img_hash_start.exit

img_hash_start.exit:                              ; preds = %if.then26.i, %do.body.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %cr.0.i) #6
  %io_base.i.i = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 4
  %24 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %23) #6, !srcloc !165
  %26 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %27, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i) #6, !srcloc !162
  %29 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %total, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_hash_xmit_cpu.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_hash_write_via_cpu, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !161

if.then.i:                                        ; preds = %img_hash_start.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i1 = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 1
  %31 = ptrtoint ptr %dev.i1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_hash_xmit_cpu.__UNIQUE_ID_ddebug237, ptr noundef %32, ptr noundef nonnull @.str.33, i32 noundef %30) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %img_hash_start.exit
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %or.i = or i32 %34, 2
  store i32 %or.i, ptr %flags, align 4
  %sub.i = add i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp3.not.i = icmp ult i32 %sub.i, 4
  br i1 %cmp3.not.i, label %do.end.i.img_hash_xmit_cpu.exit_crit_edge, label %for.body.lr.ph.i

do.end.i.img_hash_xmit_cpu.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_hash_xmit_cpu.exit

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %div1.i = lshr i32 %sub.i, 2
  %cpu_addr.i = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %buffer, i32 %count.04.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  %38 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cpu_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !165
  %inc.i = add nuw nsw i32 %count.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div1.i
  br i1 %exitcond.not.i, label %for.body.i.img_hash_xmit_cpu.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.img_hash_xmit_cpu.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_hash_xmit_cpu.exit

img_hash_xmit_cpu.exit:                           ; preds = %for.body.i.img_hash_xmit_cpu.exit_crit_edge, %do.end.i.img_hash_xmit_cpu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @img_hash_xmit_cpu(ptr nocapture noundef %hdev, ptr nocapture noundef readonly %buf, i32 noundef %length, i32 noundef %final) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_hash_xmit_cpu.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_hash_xmit_cpu, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_hash_xmit_cpu.__UNIQUE_ID_ddebug237, ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %length) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %final)
  %tobool3.not = icmp eq i32 %final, 0
  br i1 %tobool3.not, label %do.end.if.end5_crit_edge, label %if.then4

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end.if.end5_crit_edge
  %sub = add i32 %length, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp3.not = icmp ult i32 %sub, 4
  br i1 %cmp3.not, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %div1 = lshr i32 %sub, 2
  %cpu_addr = getelementptr inbounds %struct.img_hash_dev, ptr %hdev, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %count.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %buf, i32 %count.04
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpu_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !165
  %inc = add nuw nsw i32 %count.04, 1
  %exitcond.not = icmp eq i32 %inc, %div1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end5.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @img_hash_dma_callback(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.img_hash_dev, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %bufcnt = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 40
  %2 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bufcnt, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %buffer = getelementptr inbounds %struct.ahash_request, ptr %1, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @img_hash_xmit_cpu.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@img_hash_dma_callback, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !161

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.img_hash_dev, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @img_hash_xmit_cpu.__UNIQUE_ID_ddebug237, ptr noundef %5, ptr noundef nonnull @.str.33, i32 noundef %3) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %sub.i = add i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp3.not.i = icmp ult i32 %sub.i, 4
  br i1 %cmp3.not.i, label %do.end.i.img_hash_xmit_cpu.exit_crit_edge, label %for.body.lr.ph.i

do.end.i.img_hash_xmit_cpu.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_hash_xmit_cpu.exit

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %div1.i = lshr i32 %sub.i, 2
  %cpu_addr.i = getelementptr inbounds %struct.img_hash_dev, ptr %data, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %buffer, i32 %count.04.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %9 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #6, !srcloc !165
  %inc.i = add nuw nsw i32 %count.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div1.i
  br i1 %exitcond.not.i, label %for.body.i.img_hash_xmit_cpu.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.img_hash_xmit_cpu.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %img_hash_xmit_cpu.exit

img_hash_xmit_cpu.exit:                           ; preds = %for.body.i.img_hash_xmit_cpu.exit_crit_edge, %do.end.i.img_hash_xmit_cpu.exit_crit_edge
  %11 = ptrtoint ptr %bufcnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bufcnt, align 16
  br label %if.end

if.end:                                           ; preds = %img_hash_xmit_cpu.exit, %entry.if.end_crit_edge
  %sg = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 16
  %12 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg, align 8
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  %state.i = getelementptr inbounds %struct.img_hash_dev, ptr %data, i32 0, i32 10, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i13, label %if.then5.if.end6_crit_edge

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then.i13:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %dma_task = getelementptr inbounds %struct.img_hash_dev, ptr %data, i32 0, i32 10
  tail call void @__tasklet_schedule(ptr noundef %dma_task) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then.i13, %if.then5.if.end6_crit_edge, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_hash_init(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i, align 128
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.crypto_ahash_init.exit_crit_edge

entry.crypto_ahash_init.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_ahash_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 128
  %call2.i = tail call i32 %11(ptr noundef %fallback_req) #6
  br label %crypto_ahash_init.exit

crypto_ahash_init.exit:                           ; preds = %if.end.i, %entry.crypto_ahash_init.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -126, %entry.crypto_ahash_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_hash_update(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %fallback = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 8
  %nbytes7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 1
  %10 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nbytes7, align 8
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src, align 4
  %src9 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  %13 = ptrtoint ptr %src9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %src9, align 4
  %__crt_alg.i = getelementptr %struct.crypto_ahash, ptr %3, i32 0, i32 10, i32 3
  %14 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i, align 4
  tail call void @crypto_stats_get(ptr noundef %15) #6
  %16 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tfm1.i, align 16
  %update.i = getelementptr i8, ptr %17, i32 -124
  %18 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %update.i, align 4
  %call3.i = tail call i32 %19(ptr noundef %fallback_req) #6
  tail call void @crypto_stats_ahash_update(i32 noundef %9, i32 noundef %call3.i, ptr noundef %15) #6
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_hash_final(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %fallback = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %result, align 32
  %result7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 3
  %10 = ptrtoint ptr %result7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %result7, align 32
  %call9 = tail call i32 @crypto_ahash_final(ptr noundef %fallback_req) #6
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_hash_finup(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %fallback = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 8
  %nbytes7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 1
  %10 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nbytes7, align 8
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src, align 4
  %src9 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  %13 = ptrtoint ptr %src9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %src9, align 4
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %14 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %result, align 32
  %result11 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 3
  %16 = ptrtoint ptr %result11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %result11, align 32
  %call13 = tail call i32 @crypto_ahash_finup(ptr noundef %fallback_req) #6
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_hash_digest(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.img_hash_drv, ptr @img_hash, i32 0, i32 1)) #6
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = load ptr, ptr @img_hash, align 4
  %cmp.not = icmp eq ptr %4, @img_hash
  %spec.select = select i1 %cmp.not, ptr null, ptr %4
  %5 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select, ptr %__crt_ctx.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hdev.1 = phi ptr [ %spec.select, %if.then ], [ %3, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.img_hash_drv, ptr @img_hash, i32 0, i32 1)) #6
  %6 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hdev.1, ptr %__ctx.i, align 128
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %8 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 -128
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 128
  %digsize = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5
  %12 = ptrtoint ptr %digsize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %digsize, align 8
  %13 = add i32 %11, -16
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %15 = icmp ult i32 %14, 5
  br i1 %15, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %14 to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %16 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %switch.lobit.not = icmp eq i8 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.img_hash_digest, i32 0, i32 %14
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %switch.load, ptr %flags, align 4
  %bufcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 40
  %19 = ptrtoint ptr %bufcnt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %bufcnt, align 16
  %offset = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 24
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %offset, align 64
  %sent = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 32
  %21 = ptrtoint ptr %sent to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %sent, align 8
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbytes, align 8
  %total = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 28
  %24 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %total, align 4
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %25 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %src, align 4
  %sg = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 16
  %27 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %sg, align 8
  %sgfirst = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 12
  %28 = ptrtoint ptr %sgfirst to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %sgfirst, align 4
  %call26 = tail call i32 @sg_nents(ptr noundef %26) #6
  %nents = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 20
  %29 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call26, ptr %nents, align 4
  %30 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call28 = tail call fastcc i32 @img_hash_handle_queue(ptr noundef %31, ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %switch.lookup ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_hash_export(ptr noundef %req, ptr noundef %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %fallback = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %export.i = getelementptr %struct.crypto_ahash, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %export.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %export.i, align 4
  %call1.i = tail call i32 %9(ptr noundef %fallback_req, ptr noundef %out) #6
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_hash_import(ptr noundef %req, ptr noundef %in) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i, align 128
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.crypto_ahash_import.exit_crit_edge

entry.crypto_ahash_import.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_ahash_import.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %import.i = getelementptr %struct.crypto_ahash, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %import.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %import.i, align 8
  %call2.i = tail call i32 %11(ptr noundef %fallback_req, ptr noundef %in) #6
  br label %crypto_ahash_import.exit

crypto_ahash_import.exit:                         ; preds = %if.end.i, %entry.crypto_ahash_import.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -126, %entry.crypto_ahash_import.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_hash_cra_md5_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i = tail call ptr @crypto_alloc_ahash(ptr noundef nonnull @.str.63, i32 noundef 0, i32 noundef 256) #6
  %fallback.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %0 = ptrtoint ptr %fallback.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1.i, ptr %fallback.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #9
  %1 = ptrtoint ptr %fallback.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fallback.i, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %img_hash_cra_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call1.i, i32 0, i32 8
  %4 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reqsize.i.i, align 32
  %add10.i = add i32 %5, 320
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %6 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add10.i, ptr %reqsize1.i.i, align 32
  br label %img_hash_cra_init.exit

img_hash_cra_init.exit:                           ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %3, %do.end.i ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @img_hash_cra_exit(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fallback = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %0 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_hash_cra_sha1_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i = tail call ptr @crypto_alloc_ahash(ptr noundef nonnull @.str.66, i32 noundef 0, i32 noundef 256) #6
  %fallback.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %0 = ptrtoint ptr %fallback.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1.i, ptr %fallback.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #9
  %1 = ptrtoint ptr %fallback.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fallback.i, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %img_hash_cra_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call1.i, i32 0, i32 8
  %4 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reqsize.i.i, align 32
  %add10.i = add i32 %5, 320
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %6 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add10.i, ptr %reqsize1.i.i, align 32
  br label %img_hash_cra_init.exit

img_hash_cra_init.exit:                           ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %3, %do.end.i ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_hash_cra_sha224_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i = tail call ptr @crypto_alloc_ahash(ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef 256) #6
  %fallback.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %0 = ptrtoint ptr %fallback.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1.i, ptr %fallback.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #9
  %1 = ptrtoint ptr %fallback.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fallback.i, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %img_hash_cra_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call1.i, i32 0, i32 8
  %4 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reqsize.i.i, align 32
  %add10.i = add i32 %5, 320
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %6 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add10.i, ptr %reqsize1.i.i, align 32
  br label %img_hash_cra_init.exit

img_hash_cra_init.exit:                           ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %3, %do.end.i ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_hash_cra_sha256_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i = tail call ptr @crypto_alloc_ahash(ptr noundef nonnull @.str.68, i32 noundef 0, i32 noundef 256) #6
  %fallback.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %0 = ptrtoint ptr %fallback.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1.i, ptr %fallback.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #9
  %1 = ptrtoint ptr %fallback.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fallback.i, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %img_hash_cra_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call1.i, i32 0, i32 8
  %4 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reqsize.i.i, align 32
  %add10.i = add i32 %5, 320
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %6 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add10.i, ptr %reqsize1.i.i, align 32
  br label %img_hash_cra_init.exit

img_hash_cra_init.exit:                           ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %3, %do.end.i ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_finup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_hash_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hash_clk = getelementptr inbounds %struct.img_hash_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hash_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %sys_clk = getelementptr inbounds %struct.img_hash_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sys_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_hash_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hash_clk = getelementptr inbounds %struct.img_hash_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hash_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %sys_clk = getelementptr inbounds %struct.img_hash_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sys_clk, align 4
  %call.i13 = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool.not.i14 = icmp eq i32 %call.i13, 0
  br i1 %tobool.not.i14, label %if.end.i17, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end.i17:                                       ; preds = %if.end
  %call1.i15 = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool2.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool2.not.i16, label %if.end.i17.cleanup_crit_edge, label %if.then3.i18

if.end.i17.cleanup_crit_edge:                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i18:                                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %if.then4

if.then4:                                         ; preds = %if.then3.i18, %if.end.if.then4_crit_edge
  %retval.0.i19.ph = phi i32 [ %call1.i15, %if.then3.i18 ], [ %call.i13, %if.end.if.then4_crit_edge ]
  %6 = ptrtoint ptr %hash_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hash_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then4, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %7, %if.then4 ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i19.ph, %if.then4 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i17.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !41, !42, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !122, !123, !124, !125, !127, !128, !129, !131, !133, !135, !137, !139, !140, !141, !142, !144, !146, !148, !150}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @__initcall__kmod_img_hash__245_1108_img_hash_driver_init6, !1, !"__initcall__kmod_img_hash__245_1108_img_hash_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/img-hash.c", i32 1108, i32 1}
!2 = !{ptr @__exitcall_img_hash_driver_exit, !1, !"__exitcall_img_hash_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file246, !4, !"__UNIQUE_ID_file246", i1 false, i1 false}
!4 = !{!"../drivers/crypto/img-hash.c", i32 1110, i32 1}
!5 = !{ptr @__UNIQUE_ID_license247, !4, !"__UNIQUE_ID_license247", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description248, !7, !"__UNIQUE_ID_description248", i1 false, i1 false}
!7 = !{!"../drivers/crypto/img-hash.c", i32 1111, i32 1}
!8 = !{ptr @__UNIQUE_ID_author249, !9, !"__UNIQUE_ID_author249", i1 false, i1 false}
!9 = !{!"../drivers/crypto/img-hash.c", i32 1112, i32 1}
!10 = !{ptr @__UNIQUE_ID_author250, !11, !"__UNIQUE_ID_author250", i1 false, i1 false}
!11 = !{!"../drivers/crypto/img-hash.c", i32 1113, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/img-hash.c", i32 1103, i32 11}
!14 = !{ptr @img_hash_driver, !15, !"img_hash_driver", i1 false, i1 false}
!15 = !{!"../drivers/crypto/img-hash.c", i32 1099, i32 31}
!16 = !{ptr @img_hash_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/crypto/img-hash.c", i32 944, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/crypto/img-hash.c", i32 982, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @img_hash_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @img_hash_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/crypto/img-hash.c", i32 985, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @img_hash_probe.__UNIQUE_ID_ddebug243, !28, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/crypto/img-hash.c", i32 987, i32 44}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/crypto/img-hash.c", i32 989, i32 3}
!35 = !{ptr @img_hash_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @img_hash_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/crypto/img-hash.c", i32 994, i32 43}
!39 = !{ptr @img_hash_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/crypto/img-hash.c", i32 996, i32 3}
!41 = !{ptr @img_hash_probe._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/img-hash.c", i32 1013, i32 2}
!44 = !{ptr @img_hash_probe.__UNIQUE_ID_ddebug244, !43, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/crypto/img-hash.c", i32 1023, i32 2}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @img_hash_probe._entry.17, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @img_hash_probe._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/img-hash.c", i32 532, i32 2}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @img_hash_handle_queue._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @img_hash_handle_queue._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/crypto/img-hash.c", i32 479, i32 2}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @img_hash_hw_init.__UNIQUE_ID_ddebug241, !56, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/crypto/img-hash.c", i32 449, i32 3}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @img_hash_process_data.__UNIQUE_ID_ddebug239, !60, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/crypto/img-hash.c", i32 453, i32 3}
!65 = !{ptr @img_hash_process_data.__UNIQUE_ID_ddebug240, !64, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/crypto/img-hash.c", i32 320, i32 2}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @img_hash_write_via_dma.__UNIQUE_ID_ddebug238, !67, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/crypto/img-hash.c", i32 178, i32 2}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @img_hash_start.__UNIQUE_ID_ddebug236, !71, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/crypto/img-hash.c", i32 197, i32 2}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @img_hash_xmit_cpu.__UNIQUE_ID_ddebug237, !75, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/crypto/img-hash.c", i32 303, i32 3}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @img_hash_finish_req._entry, !79, !"_entry", i1 false, i1 false}
!83 = !{ptr @img_hash_finish_req._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/crypto/img-hash.c", i32 388, i32 4}
!86 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @img_hash_dma_task._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @img_hash_dma_task._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/crypto/img-hash.c", i32 230, i32 3}
!91 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @img_hash_xmit_dma._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @img_hash_xmit_dma._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/crypto/img-hash.c", i32 241, i32 3}
!96 = !{ptr @img_hash_xmit_dma._entry.41, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @img_hash_xmit_dma._entry_ptr.43, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/crypto/img-hash.c", i32 728, i32 3}
!100 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @img_irq_handler.__UNIQUE_ID_ddebug242, !99, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/crypto/img-hash.c", i32 735, i32 4}
!104 = !{ptr @img_irq_handler._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @img_irq_handler._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/crypto/img-hash.c", i32 739, i32 3}
!108 = !{ptr @img_irq_handler._entry.47, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @img_irq_handler._entry_ptr.49, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/crypto/img-hash.c", i32 742, i32 3}
!112 = !{ptr @img_irq_handler._entry.50, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @img_irq_handler._entry_ptr.52, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/crypto/img-hash.c", i32 745, i32 3}
!116 = !{ptr @img_irq_handler._entry.53, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @img_irq_handler._entry_ptr.55, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/crypto/img-hash.c", i32 337, i32 46}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/crypto/img-hash.c", i32 339, i32 3}
!122 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @img_hash_dma_init._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @img_hash_dma_init._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/crypto/img-hash.c", i32 350, i32 3}
!127 = !{ptr @img_hash_dma_init._entry.59, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @img_hash_dma_init._entry_ptr.61, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/crypto/img-hash.c", i32 146, i32 10}
!131 = !{ptr @img_hash, !132, !"img_hash", i1 false, i1 false}
!132 = !{!"../drivers/crypto/img-hash.c", i32 144, i32 28}
!133 = !{ptr @img_algs, !134, !"img_algs", i1 false, i1 false}
!134 = !{!"../drivers/crypto/img-hash.c", i32 751, i32 25}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/crypto/img-hash.c", i32 694, i32 32}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/crypto/img-hash.c", i32 681, i32 3}
!139 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @img_hash_cra_init._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @img_hash_cra_init._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/crypto/img-hash.c", i32 699, i32 32}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/crypto/img-hash.c", i32 704, i32 32}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/crypto/img-hash.c", i32 709, i32 32}
!148 = !{ptr @img_hash_match, !149, !"img_hash_match", i1 false, i1 false}
!149 = !{!"../drivers/crypto/img-hash.c", i32 926, i32 34}
!150 = !{ptr @img_hash_pm_ops, !151, !"img_hash_pm_ops", i1 false, i1 false}
!151 = !{!"../drivers/crypto/img-hash.c", i32 1095, i32 32}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{i64 2148747584, i64 2148747589, i64 2148747602, i64 2148747646, i64 2148747680, i64 2148747701}
!162 = !{i64 6274402}
!163 = !{!"branch_weights", i32 2000, i32 1}
!164 = !{i64 2153835668, i64 2153836160, i64 2153835705, i64 2153835761, i64 2153835795, i64 2153835819, i64 2153835860, i64 2153835881, i64 2153835909, i64 2153835943}
!165 = !{i64 6273984}
