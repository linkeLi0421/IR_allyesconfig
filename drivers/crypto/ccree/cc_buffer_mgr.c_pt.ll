; ModuleID = '/llk/IR_all_yes/drivers/crypto/ccree/cc_buffer_mgr.c_pt.bc'
source_filename = "../drivers/crypto/ccree/cc_buffer_mgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cipher_req_ctx = type { %struct.async_gen_req_ctx, i32, i32, i32, i32, i32, ptr, %struct.mlli_params }
%struct.async_gen_req_ctx = type { i32, ptr, i32 }
%struct.mlli_params = type { ptr, ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.buffer_array = type { i32, [4 x %union.buffer_array_entry], [4 x i32], [4 x i32], [4 x i32], [4 x i8], [4 x ptr] }
%union.buffer_array_entry = type { ptr }
%struct.cc_drvdata = type { ptr, i32, %struct.completion, ptr, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_req_ctx = type { [32 x i8], [96 x i8], [16 x i8], [112 x i8], [16 x i8], [112 x i8], [16 x i8], [112 x i8], [16 x i8], [112 x i8], %struct.anon.76, [48 x i8], [80 x i8], i32, [32 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.async_gen_req_ctx, %struct.cc_mlli, %struct.cc_mlli, %struct.cc_mlli, ptr, ptr, i32, i32, i32, i32, %struct.mlli_params, i32, %struct.scatterlist, i32, i32, i32, i8, i8, i8, [41 x i8] }
%struct.anon.76 = type { [8 x i8], [8 x i8], [112 x i8] }
%struct.cc_mlli = type { i32, i32, i32, i32 }
%struct.ahash_req_ctx = type { [2 x [128 x i8]], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [16 x i8], [112 x i8], %struct.async_gen_req_ctx, i32, i32, i32, i32, i32, [2 x i32], i32, i32, [2 x %struct.scatterlist], ptr, i32, i32, %struct.mlli_params, [12 x i8] }

@cc_unmap_cipher_request.__UNIQUE_ID_ddebug449 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ccree\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cc_unmap_cipher_request\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/crypto/ccree/cc_buffer_mgr.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unmapped iv: iv_dma_addr=%pad iv_size=%u\0A\00", [54 x i8] zeroinitializer }, align 32
@cc_unmap_cipher_request.__UNIQUE_ID_ddebug450 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unmapped req->src=%pK\0A\00", [41 x i8] zeroinitializer }, align 32
@cc_unmap_cipher_request.__UNIQUE_ID_ddebug451 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unmapped req->dst=%pK\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"iv\00", [29 x i8] zeroinitializer }, align 32
@cc_map_cipher_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 385, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Mapping iv %u B at va=%pK for DMA failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cc_map_cipher_request\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cc_map_cipher_request._entry_ptr = internal global ptr @cc_map_cipher_request._entry, section ".printk_index", align 4
@cc_map_cipher_request.__UNIQUE_ID_ddebug452 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Mapped iv %u B at va=%pK to dma=%pad\0A\00", [58 x i8] zeroinitializer }, align 32
@cc_map_cipher_request.__UNIQUE_ID_ddebug453 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"areq_ctx->dma_buf_type = %s\0A\00", [35 x i8] zeroinitializer }, align 32
@cc_unmap_aead_request.__UNIQUE_ID_ddebug454 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cc_unmap_aead_request\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"free MLLI buffer: dma=%pad virt=%pK\0A\00", [59 x i8] zeroinitializer }, align 32
@cc_unmap_aead_request.__UNIQUE_ID_ddebug455 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"Unmapping src sgl: req->src=%pK areq_ctx->src.nents=%u areq_ctx->assoc.nents=%u assoclen:%u cryptlen=%u\0A\00", [55 x i8] zeroinitializer }, align 32
@cc_unmap_aead_request.__UNIQUE_ID_ddebug456 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.16, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unmapping dst sgl: req->dst=%pK\0A\00", [63 x i8] zeroinitializer }, align 32
@cc_map_aead_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 972, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Mapping mac_buf %u B at va=%pK for DMA failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cc_map_aead_request\00", [44 x i8] zeroinitializer }, align 32
@cc_map_aead_request._entry_ptr = internal global ptr @cc_map_aead_request._entry, section ".printk_index", align 4
@cc_map_aead_request._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 986, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@cc_map_aead_request._entry_ptr.20 = internal global ptr @cc_map_aead_request._entry.19, section ".printk_index", align 4
@cc_map_aead_request._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str.2, i32 1004, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Mapping hkey %u B at va=%pK for DMA failed\0A\00", [52 x i8] zeroinitializer }, align 32
@cc_map_aead_request._entry_ptr.23 = internal global ptr @cc_map_aead_request._entry.21, section ".printk_index", align 4
@cc_map_aead_request._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.2, i32 1014, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Mapping gcm_len_block %u B at va=%pK for DMA failed\0A\00", [43 x i8] zeroinitializer }, align 32
@cc_map_aead_request._entry_ptr.26 = internal global ptr @cc_map_aead_request._entry.24, section ".printk_index", align 4
@cc_map_aead_request._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.18, ptr @.str.2, i32 1025, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Mapping gcm_iv_inc1 %u B at va=%pK for DMA failed\0A\00", [45 x i8] zeroinitializer }, align 32
@cc_map_aead_request._entry_ptr.29 = internal global ptr @cc_map_aead_request._entry.27, section ".printk_index", align 4
@cc_map_aead_request._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.18, ptr @.str.2, i32 1037, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Mapping gcm_iv_inc2 %u B at va=%pK for DMA failed\0A\00", [45 x i8] zeroinitializer }, align 32
@cc_map_aead_request._entry_ptr.32 = internal global ptr @cc_map_aead_request._entry.30, section ".printk_index", align 4
@cc_map_aead_request.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.33, i8 1, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"assoc params mn %d\0A\00", [44 x i8] zeroinitializer }, align 32
@cc_map_aead_request.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.34, i8 1, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"src params mn %d\0A\00", [46 x i8] zeroinitializer }, align 32
@cc_map_aead_request.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.35, i8 1, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dst params mn %d\0A\00", [46 x i8] zeroinitializer }, align 32
@cc_map_hash_request_final.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 1, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cc_map_hash_request_final\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"final params : curr_buff=%pK curr_buff_cnt=0x%X nbytes = 0x%X src=%pK curr_index=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@cc_map_hash_request_final.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.38, i8 1, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"areq_ctx->data_dma_buf_type = %s\0A\00", [62 x i8] zeroinitializer }, align 32
@cc_map_hash_request_update.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 1, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cc_map_hash_request_update\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c" update params : curr_buff=%pK curr_buff_cnt=0x%X nbytes=0x%X src=%pK curr_index=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@cc_map_hash_request_update.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 1, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c" less than one block: curr_buff=%pK *curr_buff_cnt=0x%X copy_to=%pK\0A\00", [59 x i8] zeroinitializer }, align 32
@cc_map_hash_request_update.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.42, i8 1, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c" temp length : *next_buff_cnt=0x%X update_data_len=0x%X\0A\00", [39 x i8] zeroinitializer }, align 32
@cc_map_hash_request_update.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.43, i8 1, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c" handle residue: next buff %pK skip data %u residue %u\0A\00", [40 x i8] zeroinitializer }, align 32
@cc_unmap_hash_request.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.14, i8 1, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cc_unmap_hash_request\00", [42 x i8] zeroinitializer }, align 32
@cc_unmap_hash_request.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 1, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unmapped sg src: virt=%pK dma=%pad len=0x%X\0A\00", [51 x i8] zeroinitializer }, align 32
@cc_unmap_hash_request.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.46, i8 1, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Unmapped buffer: areq_ctx->buff_sg=%pK dma=%pad len 0x%X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dx_single_mlli_tables\00", [42 x i8] zeroinitializer }, align 32
@cc_dump_bytes = external dso_local local_unnamed_addr global i8, align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@cc_map_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 265, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Too many fragments. current %d max %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cc_map_sg\00", [22 x i8] zeroinitializer }, align 32
@cc_map_sg._entry_ptr = internal global ptr @cc_map_sg._entry, section ".printk_index", align 4
@cc_map_sg._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 272, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dma_map_sg() sg buffer failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cc_map_sg._entry_ptr.54 = internal global ptr @cc_map_sg._entry.52, section ".printk_index", align 4
@cc_get_sgl_nents.__UNIQUE_ID_ddebug439 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cc_get_sgl_nents\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nents %d last bytes %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cc_add_sg_entry.__UNIQUE_ID_ddebug444 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cc_add_sg_entry\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"index=%u nents=%u sgl=%pK data_len=0x%08X is_last=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@cc_generate_mlli.__UNIQUE_ID_ddebug442 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cc_generate_mlli\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NUM of SG's = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@cc_generate_mlli._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 196, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dma_pool_alloc() failed\0A\00", [39 x i8] zeroinitializer }, align 32
@cc_generate_mlli._entry_ptr = internal global ptr @cc_generate_mlli._entry, section ".printk_index", align 4
@cc_generate_mlli.__UNIQUE_ID_ddebug443 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.62, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"MLLI params: virt_addr=%pK dma_addr=%pad mlli_len=0x%X\0A\00", [40 x i8] zeroinitializer }, align 32
@cc_render_buff_to_mlli._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 127, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Too many mlli entries. current %d max %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cc_render_buff_to_mlli\00", [41 x i8] zeroinitializer }, align 32
@cc_render_buff_to_mlli._entry_ptr = internal global ptr @cc_render_buff_to_mlli._entry, section ".printk_index", align 4
@cc_render_buff_to_mlli.__UNIQUE_ID_ddebug440 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"entry[%d]: single_buff=0x%08X size=%08X\0A\00", [55 x i8] zeroinitializer }, align 32
@cc_render_buff_to_mlli.__UNIQUE_ID_ddebug441 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BUF_NULL\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BUF_DLLI\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BUF_MLLI\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BUF_INVALID\00", [20 x i8] zeroinitializer }, align 32
@cc_set_aead_conf_buf.__UNIQUE_ID_ddebug445 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cc_set_aead_conf_buf\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c" handle additional data config set to DLLI\0A\00", [52 x i8] zeroinitializer }, align 32
@cc_set_aead_conf_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 291, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dma_map_sg() config buffer failed\0A\00", [61 x i8] zeroinitializer }, align 32
@cc_set_aead_conf_buf._entry_ptr = internal global ptr @cc_set_aead_conf_buf._entry, section ".printk_index", align 4
@cc_set_aead_conf_buf.__UNIQUE_ID_ddebug446 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.73, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Mapped curr_buff: dma_address=%pad page=%p addr=%pK offset=%u length=%u\0A\00", [55 x i8] zeroinitializer }, align 32
@cc_aead_chain_assoc.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cc_aead_chain_assoc\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Chain assoc of length 0: buff_type=%s nents=%u\0A\00", [48 x i8] zeroinitializer }, align 32
@cc_aead_chain_assoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.74, ptr @.str.2, i32 606, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@cc_aead_chain_assoc._entry_ptr = internal global ptr @cc_aead_chain_assoc._entry, section ".printk_index", align 4
@cc_aead_chain_assoc._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.74, ptr @.str.2, i32 618, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"CCM case.Too many fragments. Current %d max %d\0A\00", [48 x i8] zeroinitializer }, align 32
@cc_aead_chain_assoc._entry_ptr.78 = internal global ptr @cc_aead_chain_assoc._entry.76, section ".printk_index", align 4
@cc_aead_chain_assoc.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.79, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Chain assoc: buff_type=%s nents=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@cc_aead_chain_iv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.80, ptr @.str.2, i32 561, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cc_aead_chain_iv\00", [47 x i8] zeroinitializer }, align 32
@cc_aead_chain_iv._entry_ptr = internal global ptr @cc_aead_chain_iv._entry, section ".printk_index", align 4
@cc_aead_chain_iv.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.11, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cc_aead_chain_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.81, ptr @.str.2, i32 823, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cc_aead_chain_data\00", [45 x i8] zeroinitializer }, align 32
@cc_aead_chain_data._entry_ptr = internal global ptr @cc_aead_chain_data._entry, section ".printk_index", align 4
@cc_aead_chain_data._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.81, ptr @.str.2, i32 864, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@cc_aead_chain_data._entry_ptr.83 = internal global ptr @cc_aead_chain_data._entry.82, section ".printk_index", align 4
@cc_set_hash_buf.__UNIQUE_ID_ddebug447 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cc_set_hash_buf\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" handle curr buff %x set to   DLLI\0A\00", [60 x i8] zeroinitializer }, align 32
@cc_set_hash_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 316, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dma_map_sg() src buffer failed\0A\00", [32 x i8] zeroinitializer }, align 32
@cc_set_hash_buf._entry_ptr = internal global ptr @cc_set_hash_buf._entry, section ".printk_index", align 4
@cc_set_hash_buf.__UNIQUE_ID_ddebug448 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.73, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@switch.table.cc_map_cipher_request = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.68], [20 x i8] zeroinitializer }, align 32
@switch.table.cc_aead_chain_assoc = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.68], [20 x i8] zeroinitializer }, align 32
@switch.table.cc_aead_chain_assoc.87 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.68], [20 x i8] zeroinitializer }, align 32
@switch.table.cc_map_hash_request_final = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.68], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 339, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 353, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 357, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 380, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 384, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 388, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 437, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 498, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 506, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 513, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 971, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 985, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1003, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1013, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1024, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1036, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1119, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1121, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1122, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1145, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1196, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1229, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1239, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1253, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1258, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1331, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1340, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1347, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 1368, i32 19 }
@___asan_gen_.227 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 326, i32 6 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 264, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 272, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 90, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 242, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 189, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 196, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 227, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 126, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 135, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 35, i32 10 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 37, i32 10 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 39, i32 10 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 41, i32 10 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 286, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 291, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 294, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 594, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 605, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 616, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 630, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 560, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 822, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 863, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 312, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.352 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.353 = private constant [40 x i8] c"../drivers/crypto/ccree/cc_buffer_mgr.c\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 316, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant [35 x i8] c"switch.table.cc_map_cipher_request\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [33 x i8] c"switch.table.cc_aead_chain_assoc\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [36 x i8] c"switch.table.cc_aead_chain_assoc.87\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [39 x i8] c"switch.table.cc_map_hash_request_final\00", align 1
@llvm.compiler.used = appending global [111 x ptr] [ptr @cc_aead_chain_assoc._entry, ptr @cc_aead_chain_assoc._entry.76, ptr @cc_aead_chain_assoc._entry_ptr, ptr @cc_aead_chain_assoc._entry_ptr.78, ptr @cc_aead_chain_data._entry, ptr @cc_aead_chain_data._entry.82, ptr @cc_aead_chain_data._entry_ptr, ptr @cc_aead_chain_data._entry_ptr.83, ptr @cc_aead_chain_iv._entry, ptr @cc_aead_chain_iv._entry_ptr, ptr @cc_generate_mlli._entry, ptr @cc_generate_mlli._entry_ptr, ptr @cc_map_aead_request._entry, ptr @cc_map_aead_request._entry.19, ptr @cc_map_aead_request._entry.21, ptr @cc_map_aead_request._entry.24, ptr @cc_map_aead_request._entry.27, ptr @cc_map_aead_request._entry.30, ptr @cc_map_aead_request._entry_ptr, ptr @cc_map_aead_request._entry_ptr.20, ptr @cc_map_aead_request._entry_ptr.23, ptr @cc_map_aead_request._entry_ptr.26, ptr @cc_map_aead_request._entry_ptr.29, ptr @cc_map_aead_request._entry_ptr.32, ptr @cc_map_cipher_request._entry, ptr @cc_map_cipher_request._entry_ptr, ptr @cc_map_sg._entry, ptr @cc_map_sg._entry.52, ptr @cc_map_sg._entry_ptr, ptr @cc_map_sg._entry_ptr.54, ptr @cc_render_buff_to_mlli._entry, ptr @cc_render_buff_to_mlli._entry_ptr, ptr @cc_set_aead_conf_buf._entry, ptr @cc_set_aead_conf_buf._entry_ptr, ptr @cc_set_hash_buf._entry, ptr @cc_set_hash_buf._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @switch.table.cc_map_cipher_request, ptr @switch.table.cc_aead_chain_assoc, ptr @switch.table.cc_aead_chain_assoc.87, ptr @switch.table.cc_map_hash_request_final], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_map_cipher_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_map_aead_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_map_aead_request._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_map_aead_request._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_map_aead_request._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_map_aead_request._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_map_aead_request._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_map_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_map_sg._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_generate_mlli._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_render_buff_to_mlli._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_set_aead_conf_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_aead_chain_assoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_aead_chain_assoc._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_aead_chain_iv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_aead_chain_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_aead_chain_data._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_set_hash_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cc_map_cipher_request to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cc_aead_chain_assoc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cc_aead_chain_assoc.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cc_map_hash_request_final to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cc_copy_sg_portion(ptr nocapture readnone %dev, ptr noundef %dest, ptr noundef %sg, i32 noundef %to_skip, i32 noundef %end, i32 noundef %direct) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %end to i64
  %call = tail call i32 @sg_nents_for_len(ptr noundef %sg, i64 noundef %conv) #6
  %sub = sub i32 1, %to_skip
  %add = add i32 %sub, %end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direct)
  %cmp = icmp eq i32 %direct, 0
  %call2 = tail call i32 @sg_copy_buffer(ptr noundef %sg, i32 noundef %call, ptr noundef %dest, i32 noundef %add, i32 noundef %to_skip, i1 noundef zeroext %cmp) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cc_unmap_cipher_request(ptr noundef %dev, ptr noundef %ctx, i32 noundef %ivsize, ptr noundef %src, ptr noundef %dst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_cipher_request.__UNIQUE_ID_ddebug449, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_unmap_cipher_request, %if.then4)) #6
          to label %do.end [label %if.then4], !srcloc !208

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_cipher_request.__UNIQUE_ID_ddebug449, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %ctx, i32 noundef %ivsize) #6
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctx, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %3, i32 noundef %ivsize, i32 noundef 0, i32 noundef 0) #6
  br label %if.end9

if.end9:                                          ; preds = %do.end, %entry.if.end9_crit_edge
  %dma_buf_type = getelementptr inbounds %struct.cipher_req_ctx, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %dma_buf_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_buf_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %land.lhs.true, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end9
  %mlli_virt_addr = getelementptr inbounds %struct.cipher_req_ctx, ptr %ctx, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %mlli_virt_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mlli_virt_addr, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %land.lhs.true.if.end16_crit_edge, label %if.then11

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %mlli_params = getelementptr inbounds %struct.cipher_req_ctx, ptr %ctx, i32 0, i32 7
  %8 = ptrtoint ptr %mlli_params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mlli_params, align 4
  %mlli_dma_addr = getelementptr inbounds %struct.cipher_req_ctx, ptr %ctx, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %mlli_dma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mlli_dma_addr, align 4
  tail call void @dma_pool_free(ptr noundef %9, ptr noundef nonnull %7, i32 noundef %11) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %land.lhs.true.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  %in_nents = getelementptr inbounds %struct.cipher_req_ctx, ptr %ctx, i32 0, i32 2
  %12 = ptrtoint ptr %in_nents to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in_nents, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %src, i32 noundef %13, i32 noundef 0, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_cipher_request.__UNIQUE_ID_ddebug450, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_unmap_cipher_request, %if.then29)) #6
          to label %do.end33 [label %if.then29], !srcloc !208

if.then29:                                        ; preds = %if.end16
  %14 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src, align 4
  %and.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !209

do.body2.i.i:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !210
  unreachable

sg_virt.exit:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i = and i32 %15, -4
  %16 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %16) #6
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %src, i32 0, i32 1
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_cipher_request.__UNIQUE_ID_ddebug450, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %add.ptr.i) #6
  br label %do.end33

do.end33:                                         ; preds = %sg_virt.exit, %if.end16
  %cmp34.not = icmp eq ptr %src, %dst
  br i1 %cmp34.not, label %do.end33.if.end53_crit_edge, label %if.then35

do.end33.if.end53_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then35:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  %out_nents = getelementptr inbounds %struct.cipher_req_ctx, ptr %ctx, i32 0, i32 4
  %19 = ptrtoint ptr %out_nents to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %out_nents, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %dst, i32 noundef %20, i32 noundef 0, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_cipher_request.__UNIQUE_ID_ddebug451, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_unmap_cipher_request, %if.then48)) #6
          to label %if.end53 [label %if.then48], !srcloc !208

if.then48:                                        ; preds = %if.then35
  %21 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dst, align 4
  %and.i.i.i79 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i79)
  %tobool.i.not.i.i80 = icmp eq i32 %and.i.i.i79, 0
  br i1 %tobool.i.not.i.i80, label %sg_virt.exit86, label %do.body2.i.i81, !prof !209

do.body2.i.i81:                                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !210
  unreachable

sg_virt.exit86:                                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i82 = and i32 %22, -4
  %23 = inttoptr i32 %and.i.i82 to ptr
  %call1.i83 = tail call ptr @page_address(ptr noundef %23) #6
  %offset.i84 = getelementptr inbounds %struct.scatterlist, ptr %dst, i32 0, i32 1
  %24 = ptrtoint ptr %offset.i84 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i84, align 4
  %add.ptr.i85 = getelementptr i8, ptr %call1.i83, i32 %25
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_cipher_request.__UNIQUE_ID_ddebug451, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %add.ptr.i85) #6
  br label %if.end53

if.end53:                                         ; preds = %sg_virt.exit86, %if.then35, %do.end33.if.end53_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_map_cipher_request(ptr nocapture noundef readonly %drvdata, ptr noundef %ctx, i32 noundef %ivsize, i32 noundef %nbytes, ptr noundef %info, ptr noundef %src, ptr noundef %dst, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %sg_data = alloca %struct.buffer_array, align 4
  %dummy = alloca i32, align 4
  %mapped_nents = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mlli_params1 = getelementptr inbounds %struct.cipher_req_ctx, ptr %ctx, i32 0, i32 7
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sg_data) #6
  %2 = getelementptr inbounds i8, ptr %sg_data, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #6
  %4 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dummy, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapped_nents) #6
  %5 = ptrtoint ptr %mapped_nents to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mapped_nents, align 4
  %dma_buf_type = getelementptr inbounds %struct.cipher_req_ctx, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %dma_buf_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %dma_buf_type, align 4
  %7 = ptrtoint ptr %mlli_params1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %mlli_params1, align 4
  %8 = ptrtoint ptr %sg_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %sg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ivsize)
  %tobool.not = icmp eq i32 %ivsize, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @cc_dump_bytes to i32))
  %9 = load i8, ptr @cc_dump_bytes, align 1, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.dump_byte_array.exit_crit_edge, label %if.then.i

if.then.dump_byte_array.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_byte_array.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__dump_byte_array(ptr noundef nonnull @.str.6, ptr noundef %info, i32 noundef %ivsize) #6
  br label %dump_byte_array.exit

dump_byte_array.exit:                             ; preds = %if.then.i, %if.then.dump_byte_array.exit_crit_edge
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %info) #6
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %dump_byte_array.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i147, !prof !209

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread

if.then.i147:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #6
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i147.dev_name.exit.i_crit_edge

if.then.i147.dev_name.exit.i_crit_edge:           ; preds = %if.then.i147
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i147
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i147.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i147.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %ctx, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #6
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %dump_byte_array.exit
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %info, i32 noundef %ivsize) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %info to i32
  %sub.i = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %shr.i
  %and.i = and i32 %16, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %ivsize, i32 noundef 0, i32 noundef 0) #6
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call41.i, ptr %ctx, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %do.body8

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7, i32 noundef %ivsize, ptr noundef %info) #9
  br label %cleanup

do.body8:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_map_cipher_request.__UNIQUE_ID_ddebug452, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_cipher_request, %if.then13)) #6
          to label %if.end21 [label %if.then13], !srcloc !208

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_map_cipher_request.__UNIQUE_ID_ddebug452, ptr noundef %dev.i, ptr noundef nonnull @.str.11, i32 noundef %ivsize, ptr noundef %info, ptr noundef %ctx) #6
  br label %if.end21

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %ctx, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then13, %do.body8
  %in_nents = getelementptr inbounds %struct.cipher_req_ctx, ptr %ctx, i32 0, i32 2
  %call22 = call fastcc i32 @cc_map_sg(ptr noundef %dev.i, ptr noundef %src, i32 noundef %nbytes, i32 noundef 0, ptr noundef %in_nents, i32 noundef 128, ptr noundef nonnull %dummy, ptr noundef nonnull %mapped_nents)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cipher_exit_crit_edge

if.end21.cipher_exit_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cipher_exit

if.end25:                                         ; preds = %if.end21
  %19 = ptrtoint ptr %mapped_nents to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mapped_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp ugt i32 %20, 1
  br i1 %cmp, label %if.then26, label %if.end25.if.end28_crit_edge

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then26:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dma_buf_type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %dma_buf_type, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end25.if.end28_crit_edge
  %cmp29 = icmp eq ptr %src, %dst
  br i1 %cmp29, label %if.then30, label %if.else36

if.then30:                                        ; preds = %if.end28
  %22 = ptrtoint ptr %dma_buf_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_buf_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp32 = icmp eq i32 %23, 2
  br i1 %cmp32, label %if.then33, label %if.then30.do.body63_crit_edge

if.then30.do.body63_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body63

if.then33:                                        ; preds = %if.then30
  %out_nents = getelementptr inbounds %struct.cipher_req_ctx, ptr %ctx, i32 0, i32 4
  %24 = ptrtoint ptr %out_nents to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %out_nents, align 4
  %25 = ptrtoint ptr %in_nents to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %in_nents, align 4
  %in_mlli_nents = getelementptr inbounds %struct.cipher_req_ctx, ptr %ctx, i32 0, i32 3
  %27 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sg_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_add_sg_entry.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_cipher_request, %if.then.i149)) #6
          to label %do.end.i [label %if.then.i149], !srcloc !208

if.then.i149:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_add_sg_entry.__UNIQUE_ID_ddebug444, ptr noundef %dev.i, ptr noundef nonnull @.str.58, i32 noundef %28, i32 noundef %26, ptr noundef %src, i32 noundef %nbytes, i32 noundef 1) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i149, %if.then33
  %arrayidx.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 3, i32 %28
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %arrayidx.i, align 4
  %arrayidx7.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 1, i32 %28
  %30 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %src, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 2, i32 %28
  %31 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 4, i32 %28
  %32 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %nbytes, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 5, i32 %28
  %33 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %arrayidx11.i, align 1
  %arrayidx14.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 6, i32 %28
  %34 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %in_mlli_nents, ptr %arrayidx14.i, align 4
  %tobool17.not.i = icmp eq ptr %in_mlli_nents, null
  br i1 %tobool17.not.i, label %do.end.i.if.end53_crit_edge, label %do.end.i.if.end53.sink.split_crit_edge

do.end.i.if.end53.sink.split_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.sink.split

do.end.i.if.end53_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.else36:                                        ; preds = %if.end28
  %out_nents37 = getelementptr inbounds %struct.cipher_req_ctx, ptr %ctx, i32 0, i32 4
  %call38 = call fastcc i32 @cc_map_sg(ptr noundef %dev.i, ptr noundef %dst, i32 noundef %nbytes, i32 noundef 0, ptr noundef %out_nents37, i32 noundef 128, ptr noundef nonnull %dummy, ptr noundef nonnull %mapped_nents)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.else36.cipher_exit_crit_edge

if.else36.cipher_exit_crit_edge:                  ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cipher_exit

if.end41:                                         ; preds = %if.else36
  %35 = ptrtoint ptr %mapped_nents to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mapped_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp42 = icmp ugt i32 %36, 1
  br i1 %cmp42, label %if.end45.thread, label %if.end45

if.end45.thread:                                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %dma_buf_type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %dma_buf_type, align 4
  br label %if.then48

if.end45:                                         ; preds = %if.end41
  %38 = ptrtoint ptr %dma_buf_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %dma_buf_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp47 = icmp eq i32 %.pr, 2
  br i1 %cmp47, label %if.end45.if.then48_crit_edge, label %if.end45.do.body63_crit_edge

if.end45.do.body63_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body63

if.end45.if.then48_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then48

if.then48:                                        ; preds = %if.end45.if.then48_crit_edge, %if.end45.thread
  %39 = ptrtoint ptr %in_nents to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %in_nents, align 4
  %in_mlli_nents50 = getelementptr inbounds %struct.cipher_req_ctx, ptr %ctx, i32 0, i32 3
  %41 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sg_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_add_sg_entry.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_cipher_request, %if.then.i150)) #6
          to label %do.end.i158 [label %if.then.i150], !srcloc !208

if.then.i150:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_add_sg_entry.__UNIQUE_ID_ddebug444, ptr noundef %dev.i, ptr noundef nonnull @.str.58, i32 noundef %42, i32 noundef %40, ptr noundef %src, i32 noundef %nbytes, i32 noundef 1) #6
  br label %do.end.i158

do.end.i158:                                      ; preds = %if.then.i150, %if.then48
  %arrayidx.i151 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 3, i32 %42
  %43 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %arrayidx.i151, align 4
  %arrayidx7.i152 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 1, i32 %42
  %44 = ptrtoint ptr %arrayidx7.i152 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %src, ptr %arrayidx7.i152, align 4
  %arrayidx8.i153 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 2, i32 %42
  %45 = ptrtoint ptr %arrayidx8.i153 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx8.i153, align 4
  %arrayidx9.i154 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 4, i32 %42
  %46 = ptrtoint ptr %arrayidx9.i154 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %nbytes, ptr %arrayidx9.i154, align 4
  %arrayidx11.i155 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 5, i32 %42
  %47 = ptrtoint ptr %arrayidx11.i155 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %arrayidx11.i155, align 1
  %arrayidx14.i156 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 6, i32 %42
  %48 = ptrtoint ptr %arrayidx14.i156 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %in_mlli_nents50, ptr %arrayidx14.i156, align 4
  %tobool17.not.i157 = icmp eq ptr %in_mlli_nents50, null
  br i1 %tobool17.not.i157, label %do.end.i158.cc_add_sg_entry.exit161_crit_edge, label %if.then18.i159

do.end.i158.cc_add_sg_entry.exit161_crit_edge:    ; preds = %do.end.i158
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_add_sg_entry.exit161

if.then18.i159:                                   ; preds = %do.end.i158
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %in_mlli_nents50 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %in_mlli_nents50, align 4
  br label %cc_add_sg_entry.exit161

cc_add_sg_entry.exit161:                          ; preds = %if.then18.i159, %do.end.i158.cc_add_sg_entry.exit161_crit_edge
  %50 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sg_data, align 4
  %inc.i160 = add i32 %51, 1
  store i32 %inc.i160, ptr %sg_data, align 4
  %52 = ptrtoint ptr %out_nents37 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %out_nents37, align 4
  %out_mlli_nents = getelementptr inbounds %struct.cipher_req_ctx, ptr %ctx, i32 0, i32 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_add_sg_entry.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_cipher_request, %if.then.i162)) #6
          to label %do.end.i170 [label %if.then.i162], !srcloc !208

if.then.i162:                                     ; preds = %cc_add_sg_entry.exit161
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_add_sg_entry.__UNIQUE_ID_ddebug444, ptr noundef %dev.i, ptr noundef nonnull @.str.58, i32 noundef %inc.i160, i32 noundef %53, ptr noundef %dst, i32 noundef %nbytes, i32 noundef 1) #6
  br label %do.end.i170

do.end.i170:                                      ; preds = %if.then.i162, %cc_add_sg_entry.exit161
  %arrayidx.i163 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 3, i32 %inc.i160
  %54 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx.i163, align 4
  %arrayidx7.i164 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 1, i32 %inc.i160
  %55 = ptrtoint ptr %arrayidx7.i164 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dst, ptr %arrayidx7.i164, align 4
  %arrayidx8.i165 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 2, i32 %inc.i160
  %56 = ptrtoint ptr %arrayidx8.i165 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %arrayidx8.i165, align 4
  %arrayidx9.i166 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 4, i32 %inc.i160
  %57 = ptrtoint ptr %arrayidx9.i166 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %nbytes, ptr %arrayidx9.i166, align 4
  %arrayidx11.i167 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 5, i32 %inc.i160
  %58 = ptrtoint ptr %arrayidx11.i167 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %arrayidx11.i167, align 1
  %arrayidx14.i168 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 6, i32 %inc.i160
  %59 = ptrtoint ptr %arrayidx14.i168 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %out_mlli_nents, ptr %arrayidx14.i168, align 4
  %tobool17.not.i169 = icmp eq ptr %out_mlli_nents, null
  br i1 %tobool17.not.i169, label %do.end.i170.if.end53_crit_edge, label %do.end.i170.if.end53.sink.split_crit_edge

do.end.i170.if.end53.sink.split_crit_edge:        ; preds = %do.end.i170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.sink.split

do.end.i170.if.end53_crit_edge:                   ; preds = %do.end.i170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.end53.sink.split:                              ; preds = %do.end.i170.if.end53.sink.split_crit_edge, %do.end.i.if.end53.sink.split_crit_edge
  %out_mlli_nents.sink = phi ptr [ %in_mlli_nents, %do.end.i.if.end53.sink.split_crit_edge ], [ %out_mlli_nents, %do.end.i170.if.end53.sink.split_crit_edge ]
  %60 = ptrtoint ptr %out_mlli_nents.sink to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %out_mlli_nents.sink, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end53.sink.split, %do.end.i170.if.end53_crit_edge, %do.end.i.if.end53_crit_edge
  %61 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %61)
  %storemerge.in = load i32, ptr %sg_data, align 4
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %sg_data, align 4
  %62 = ptrtoint ptr %dma_buf_type to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr180 = load i32, ptr %dma_buf_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr180)
  %cmp55 = icmp eq i32 %.pr180, 2
  br i1 %cmp55, label %if.then56, label %if.end53.do.body63_crit_edge

if.end53.do.body63_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body63

if.then56:                                        ; preds = %if.end53
  %mlli_buffs_pool = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 5
  %63 = ptrtoint ptr %mlli_buffs_pool to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mlli_buffs_pool, align 4
  %65 = ptrtoint ptr %mlli_params1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %mlli_params1, align 4
  %call58 = call fastcc i32 @cc_generate_mlli(ptr noundef %dev.i, ptr noundef nonnull %sg_data, ptr noundef %mlli_params1, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then56.do.body63_crit_edge, label %if.then56.cipher_exit_crit_edge

if.then56.cipher_exit_crit_edge:                  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cipher_exit

if.then56.do.body63_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body63

do.body63:                                        ; preds = %if.then56.do.body63_crit_edge, %if.end53.do.body63_crit_edge, %if.end45.do.body63_crit_edge, %if.then30.do.body63_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_map_cipher_request.__UNIQUE_ID_ddebug453, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_cipher_request, %if.then75)) #6
          to label %cleanup [label %if.then75], !srcloc !208

if.then75:                                        ; preds = %do.body63
  %66 = ptrtoint ptr %dma_buf_type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_buf_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %68 = icmp ult i32 %67, 3
  br i1 %68, label %switch.lookup, label %if.then75.cc_dma_buf_type.exit_crit_edge

if.then75.cc_dma_buf_type.exit_crit_edge:         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_dma_buf_type.exit

switch.lookup:                                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.cc_map_cipher_request, i32 0, i32 %67
  %69 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %69)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cc_dma_buf_type.exit

cc_dma_buf_type.exit:                             ; preds = %switch.lookup, %if.then75.cc_dma_buf_type.exit_crit_edge
  %retval.0.i174 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.69, %if.then75.cc_dma_buf_type.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_map_cipher_request.__UNIQUE_ID_ddebug453, ptr noundef %dev.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %retval.0.i174) #6
  br label %cleanup

cipher_exit:                                      ; preds = %if.then56.cipher_exit_crit_edge, %if.else36.cipher_exit_crit_edge, %if.end21.cipher_exit_crit_edge
  %rc.0 = phi i32 [ %call22, %if.end21.cipher_exit_crit_edge ], [ %call58, %if.then56.cipher_exit_crit_edge ], [ %call38, %if.else36.cipher_exit_crit_edge ]
  tail call void @cc_unmap_cipher_request(ptr noundef %dev.i, ptr noundef %ctx, i32 noundef %ivsize, ptr noundef %src, ptr noundef %dst)
  br label %cleanup

cleanup:                                          ; preds = %cipher_exit, %cc_dma_buf_type.exit, %do.body63, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %rc.0, %cipher_exit ], [ 0, %cc_dma_buf_type.exit ], [ 0, %do.body63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapped_nents) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sg_data) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_map_sg(ptr noundef %dev, ptr noundef %sg, i32 noundef %nbytes, i32 noundef %direction, ptr nocapture noundef writeonly %nents, i32 noundef %max_sg_nents, ptr nocapture noundef %lbytes, ptr nocapture noundef writeonly %mapped_nents) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lbytes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %lbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %tobool.not19.i = icmp eq i32 %nbytes, 0
  %tobool1.not20.i = icmp eq ptr %sg, null
  %or.cond21.i = or i1 %tobool1.not20.i, %tobool.not19.i
  br i1 %or.cond21.i, label %entry.do.body.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %sg_list.addr.024.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %sg, %entry.while.body.i_crit_edge ]
  %nbytes.addr.023.i = phi i32 [ %4, %while.body.i.while.body.i_crit_edge ], [ %nbytes, %entry.while.body.i_crit_edge ]
  %nents.022.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %inc.i = add i32 %nents.022.i, 1
  %1 = ptrtoint ptr %lbytes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %nbytes.addr.023.i, ptr %lbytes, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg_list.addr.024.i, i32 0, i32 2
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 4
  %4 = tail call i32 @llvm.usub.sat.i32(i32 %nbytes.addr.023.i, i32 %3) #6
  %call.i = tail call ptr @sg_next(ptr noundef nonnull %sg_list.addr.024.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %nbytes.addr.023.i, i32 %3)
  %tobool.not.i = icmp ule i32 %nbytes.addr.023.i, %3
  %tobool1.not.i = icmp eq ptr %call.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %while.body.i.do.body.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.do.body.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i:                                        ; preds = %while.body.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %nents.0.lcssa.i = phi i32 [ 0, %entry.do.body.i_crit_edge ], [ %inc.i, %while.body.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_get_sgl_nents.__UNIQUE_ID_ddebug439, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_sg, %if.then.i)) #6
          to label %cc_get_sgl_nents.exit [label %if.then.i], !srcloc !208

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %lbytes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lbytes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_get_sgl_nents.__UNIQUE_ID_ddebug439, ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %nents.0.lcssa.i, i32 noundef %6) #6
  br label %cc_get_sgl_nents.exit

cc_get_sgl_nents.exit:                            ; preds = %if.then.i, %do.body.i
  %7 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %nents.0.lcssa.i, ptr %nents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nents.0.lcssa.i, i32 %max_sg_nents)
  %cmp = icmp ugt i32 %nents.0.lcssa.i, %max_sg_nents
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cc_get_sgl_nents.exit
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %nents, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef %max_sg_nents) #9
  br label %cleanup

if.end:                                           ; preds = %cc_get_sgl_nents.exit
  %call1 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %sg, i32 noundef %nents.0.lcssa.i, i32 noundef %direction, i32 noundef 0) #6
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp.i.not = icmp eq i32 %call1, -1
  br i1 %cmp.i.not, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %nents, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef -1) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %mapped_nents to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call1, ptr %mapped_nents, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then3, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ -12, %if.then3 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_generate_mlli(ptr noundef %dev, ptr nocapture noundef readonly %sg_data, ptr noundef %mlli_params, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %mlli_entry_p.i = alloca ptr, align 4
  %total_nents = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %total_nents) #6
  %0 = ptrtoint ptr %total_nents to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %total_nents, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_generate_mlli.__UNIQUE_ID_ddebug442, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_generate_mlli, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sg_data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_generate_mlli.__UNIQUE_ID_ddebug442, ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %2) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = ptrtoint ptr %mlli_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mlli_params, align 4
  %mlli_dma_addr = getelementptr inbounds %struct.mlli_params, ptr %mlli_params, i32 0, i32 2
  %call3 = tail call ptr @dma_pool_alloc(ptr noundef %4, i32 noundef %flags, ptr noundef %mlli_dma_addr) #6
  %mlli_virt_addr = getelementptr inbounds %struct.mlli_params, ptr %mlli_params, i32 0, i32 1
  %5 = ptrtoint ptr %mlli_virt_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %mlli_virt_addr, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %do.end9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end
  %6 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp103.not = icmp eq i32 %7, 0
  br i1 %cmp103.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61) #9
  br label %cleanup49

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %prev_total_nents.0106 = phi i32 [ %prev_total_nents.2.ph, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0105 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mlli_p.0104 = phi ptr [ %21, %for.inc.for.body_crit_edge ], [ %call3, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 1, i32 %i.0105
  %arrayidx15 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 4, i32 %i.0105
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx15, align 4
  %arrayidx17 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 2, i32 %i.0105
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx17, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mlli_entry_p.i) #6
  %14 = ptrtoint ptr %mlli_entry_p.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %mlli_p.0104, ptr %mlli_entry_p.i, align 4
  %tobool.not23.i = icmp eq ptr %13, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not24.i = icmp eq i32 %9, 0
  %or.cond25.i = or i1 %tobool1.not24.i, %tobool.not23.i
  br i1 %or.cond25.i, label %for.body.if.end21_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %curr_sgl.028.i = phi ptr [ %call6.i, %for.inc.i.for.body.i_crit_edge ], [ %13, %for.body.for.body.i_crit_edge ]
  %sgl_data_len.addr.027.i = phi i32 [ %sub4.i, %for.inc.i.for.body.i_crit_edge ], [ %9, %for.body.for.body.i_crit_edge ]
  %sgl_offset.addr.026.i = phi i32 [ 0, %for.inc.i.for.body.i_crit_edge ], [ %11, %for.body.for.body.i_crit_edge ]
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %curr_sgl.028.i, i32 0, i32 4
  %15 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_length.i, align 4
  %sub.i = sub i32 %16, %sgl_offset.addr.026.i
  %17 = tail call i32 @llvm.umin.i32(i32 %sgl_data_len.addr.027.i, i32 %sub.i) #6
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %curr_sgl.028.i, i32 0, i32 3
  %18 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_address.i, align 4
  %add.i = add i32 %19, %sgl_offset.addr.026.i
  %call.i = call fastcc i32 @cc_render_buff_to_mlli(ptr noundef %dev, i32 noundef %add.i, i32 noundef %17, ptr noundef nonnull %total_nents, ptr noundef nonnull %mlli_entry_p.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %for.inc.i, label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %sub4.i = sub i32 %sgl_data_len.addr.027.i, %17
  %call6.i = tail call ptr @sg_next(ptr noundef nonnull %curr_sgl.028.i) #6
  %tobool.not.i = icmp eq ptr %call6.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4.i)
  %tobool1.not.i = icmp eq i32 %sub4.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %for.inc.i.if.end21_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end21_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end21:                                         ; preds = %for.inc.i.if.end21_crit_edge, %for.body.if.end21_crit_edge
  %20 = ptrtoint ptr %mlli_entry_p.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mlli_entry_p.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mlli_entry_p.i) #6
  %arrayidx22 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 6, i32 %i.0105
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %23, null
  br i1 %tobool23.not, label %if.end21.for.inc_crit_edge, label %if.then24

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %total_nents to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %total_nents, align 4
  %sub = sub i32 %25, %prev_total_nents.0106
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 4
  %add = add i32 %sub, %27
  store i32 %add, ptr %23, align 4
  br label %for.inc

cleanup:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mlli_entry_p.i) #6
  br label %cleanup49

for.inc:                                          ; preds = %if.then24, %if.end21.for.inc_crit_edge
  %prev_total_nents.2.ph = phi i32 [ %prev_total_nents.0106, %if.end21.for.inc_crit_edge ], [ %25, %if.then24 ]
  %inc = add nuw i32 %i.0105, 1
  %28 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sg_data, align 4
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %30 = ptrtoint ptr %total_nents to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %total_nents, align 4
  %mul = shl i32 %31, 3
  %mlli_len = getelementptr inbounds %struct.mlli_params, ptr %mlli_params, i32 0, i32 3
  %32 = ptrtoint ptr %mlli_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul, ptr %mlli_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_generate_mlli.__UNIQUE_ID_ddebug443, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_generate_mlli, %if.then42)) #6
          to label %cleanup49 [label %if.then42], !srcloc !208

if.then42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %mlli_virt_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mlli_virt_addr, align 4
  %35 = ptrtoint ptr %mlli_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mlli_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_generate_mlli.__UNIQUE_ID_ddebug443, ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef %34, ptr noundef %mlli_dma_addr, i32 noundef %36) #6
  br label %cleanup49

cleanup49:                                        ; preds = %if.then42, %for.end, %cleanup, %do.end9
  %retval.2 = phi i32 [ %call.i, %cleanup ], [ 0, %if.then42 ], [ -12, %do.end9 ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %total_nents) #6
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cc_unmap_aead_request(ptr noundef %dev, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_iv_size1 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8
  %0 = ptrtoint ptr %hw_iv_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_iv_size1, align 128
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %mac_buf_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6
  %4 = ptrtoint ptr %mac_buf_dma_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac_buf_dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %5, i32 noundef 32, i32 noundef 0, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cipher_mode = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 36
  %6 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cipher_mode, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp = icmp eq i32 %7, 12
  br i1 %cmp, label %if.then4, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then4:                                         ; preds = %if.end
  %hkey_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 20
  %8 = ptrtoint ptr %hkey_dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hkey_dma_addr, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.then4.if.end8_crit_edge, label %if.then6

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %9, i32 noundef 16, i32 noundef 0, i32 noundef 0) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then4.if.end8_crit_edge
  %gcm_block_len_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 24
  %10 = ptrtoint ptr %gcm_block_len_dma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gcm_block_len_dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %11, i32 noundef 16, i32 noundef 1, i32 noundef 0) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %gcm_iv_inc1_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 12
  %12 = ptrtoint ptr %gcm_iv_inc1_dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gcm_iv_inc1_dma_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %13, i32 noundef 16, i32 noundef 1, i32 noundef 0) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %gcm_iv_inc2_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 16
  %14 = ptrtoint ptr %gcm_iv_inc2_dma_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gcm_iv_inc2_dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not = icmp eq i32 %15, 0
  br i1 %tobool17.not, label %if.end16.if.end21_crit_edge, label %if.then18

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %15, i32 noundef 16, i32 noundef 1, i32 noundef 0) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end16.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %ccm_hdr_size = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 28
  %16 = ptrtoint ptr %ccm_hdr_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ccm_hdr_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp22.not = icmp eq i32 %17, -1
  br i1 %cmp22.not, label %if.end21.if.end28_crit_edge, label %if.then23

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then23:                                        ; preds = %if.end21
  %ccm_iv0_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 4
  %18 = ptrtoint ptr %ccm_iv0_dma_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ccm_iv0_dma_addr, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool24.not = icmp eq i32 %19, 0
  br i1 %tobool24.not, label %if.then23.if.end27_crit_edge, label %if.then25

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %19, i32 noundef 16, i32 noundef 1, i32 noundef 0) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then23.if.end27_crit_edge
  %ccm_adata_sg = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %ccm_adata_sg, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end21.if.end28_crit_edge
  %gen_ctx = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 32
  %20 = ptrtoint ptr %gen_ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gen_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool29.not = icmp eq i32 %21, 0
  br i1 %tobool29.not, label %if.end28.if.end34_crit_edge, label %if.then30

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %21, i32 noundef %1, i32 noundef 0, i32 noundef 0) #6
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 36
  %22 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iv, align 4
  tail call void @kfree_sensitive(ptr noundef %23) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end28.if.end34_crit_edge
  %assoc_buff_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 1
  %24 = ptrtoint ptr %assoc_buff_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %assoc_buff_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp35 = icmp eq i32 %25, 2
  br i1 %cmp35, label %if.end34.land.lhs.true_crit_edge, label %lor.lhs.false

if.end34.land.lhs.true_crit_edge:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end34
  %data_buff_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 2
  %26 = ptrtoint ptr %data_buff_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_buff_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp36 = icmp eq i32 %27, 2
  br i1 %cmp36, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.do.body54_crit_edge

lor.lhs.false.do.body54_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end34.land.lhs.true_crit_edge
  %mlli_params = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 3
  %mlli_virt_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 4
  %28 = ptrtoint ptr %mlli_virt_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mlli_virt_addr, align 4
  %tobool37.not = icmp eq ptr %29, null
  br i1 %tobool37.not, label %land.lhs.true.do.body54_crit_edge, label %do.body

land.lhs.true.do.body54_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_aead_request.__UNIQUE_ID_ddebug454, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_unmap_aead_request, %if.then43)) #6
          to label %do.end [label %if.then43], !srcloc !208

if.then43:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %mlli_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 5
  %30 = ptrtoint ptr %mlli_virt_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mlli_virt_addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_aead_request.__UNIQUE_ID_ddebug454, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef %mlli_dma_addr, ptr noundef %31) #6
  br label %do.end

do.end:                                           ; preds = %if.then43, %do.body
  %32 = ptrtoint ptr %mlli_params to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mlli_params, align 32
  %34 = ptrtoint ptr %mlli_virt_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mlli_virt_addr, align 4
  %mlli_dma_addr52 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 5
  %36 = ptrtoint ptr %mlli_dma_addr52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mlli_dma_addr52, align 8
  tail call void @dma_pool_free(ptr noundef %33, ptr noundef %35, i32 noundef %37) #6
  br label %do.body54

do.body54:                                        ; preds = %do.end, %land.lhs.true.do.body54_crit_edge, %lor.lhs.false.do.body54_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_aead_request.__UNIQUE_ID_ddebug455, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_unmap_aead_request, %if.then66)) #6
          to label %do.end72 [label %if.then66], !srcloc !208

if.then66:                                        ; preds = %do.body54
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %38 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %src, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %and.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !209

do.body2.i.i:                                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !210
  unreachable

sg_virt.exit:                                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i = and i32 %41, -4
  %42 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %42) #6
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 1
  %43 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %44
  %nents = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 68
  %45 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nents, align 8
  %nents69 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 52
  %47 = ptrtoint ptr %nents69 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nents69, align 8
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 5
  %49 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %assoclen, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %51 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cryptlen, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_aead_request.__UNIQUE_ID_ddebug455, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %add.ptr.i, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52) #6
  br label %do.end72

do.end72:                                         ; preds = %sg_virt.exit, %do.body54
  %src73 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %53 = ptrtoint ptr %src73 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %src73, align 4
  %mapped_nents = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 64
  %55 = ptrtoint ptr %mapped_nents to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mapped_nents, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %54, i32 noundef %56, i32 noundef 0, i32 noundef 0) #6
  %57 = ptrtoint ptr %src73 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %src73, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %59 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dst, align 8
  %cmp76.not = icmp eq ptr %58, %60
  br i1 %cmp76.not, label %do.end72.if.end99_crit_edge, label %do.body78

do.end72.if.end99_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

do.body78:                                        ; preds = %do.end72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_aead_request.__UNIQUE_ID_ddebug456, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_unmap_aead_request, %if.then90)) #6
          to label %do.end95 [label %if.then90], !srcloc !208

if.then90:                                        ; preds = %do.body78
  %61 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dst, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %and.i.i.i178 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i178)
  %tobool.i.not.i.i179 = icmp eq i32 %and.i.i.i178, 0
  br i1 %tobool.i.not.i.i179, label %sg_virt.exit185, label %do.body2.i.i180, !prof !209

do.body2.i.i180:                                  ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !210
  unreachable

sg_virt.exit185:                                  ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i181 = and i32 %64, -4
  %65 = inttoptr i32 %and.i.i181 to ptr
  %call1.i182 = tail call ptr @page_address(ptr noundef %65) #6
  %offset.i183 = getelementptr inbounds %struct.scatterlist, ptr %62, i32 0, i32 1
  %66 = ptrtoint ptr %offset.i183 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %offset.i183, align 4
  %add.ptr.i184 = getelementptr i8, ptr %call1.i182, i32 %67
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_aead_request.__UNIQUE_ID_ddebug456, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef %add.ptr.i184) #6
  br label %do.end95

do.end95:                                         ; preds = %sg_virt.exit185, %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dst, align 8
  %mapped_nents98 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 80
  %70 = ptrtoint ptr %mapped_nents98 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mapped_nents98, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %69, i32 noundef %71, i32 noundef 0, i32 noundef 0) #6
  br label %if.end99

if.end99:                                         ; preds = %do.end95, %do.end72.if.end99_crit_edge
  %coherent = getelementptr inbounds %struct.cc_drvdata, ptr %3, i32 0, i32 14
  %72 = ptrtoint ptr %coherent to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %coherent, align 4, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool100.not = icmp eq i8 %73, 0
  br i1 %tobool100.not, label %if.end99.if.end109_crit_edge, label %land.lhs.true101

if.end99.if.end109_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

land.lhs.true101:                                 ; preds = %if.end99
  %op_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 40
  %74 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %op_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp103 = icmp eq i32 %75, 1
  br i1 %cmp103, label %land.lhs.true104, label %land.lhs.true101.if.end109_crit_edge

land.lhs.true101.if.end109_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

land.lhs.true104:                                 ; preds = %land.lhs.true101
  %76 = ptrtoint ptr %src73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %src73, align 4
  %78 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dst, align 8
  %cmp107 = icmp eq ptr %77, %79
  br i1 %cmp107, label %if.then108, label %land.lhs.true104.if.end109_crit_edge

land.lhs.true104.if.end109_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then108:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #8
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %80 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %assoclen.i, align 8
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %82 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cryptlen.i, align 4
  %add.i = add i32 %83, %81
  %backup_mac.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 0, i32 0, i32 1
  %req_authsize.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 32
  %84 = ptrtoint ptr %req_authsize.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %req_authsize.i, align 4
  %sub.i = sub i32 %add.i, %85
  %conv.i.i = zext i32 %add.i to i64
  %call.i.i = tail call i32 @sg_nents_for_len(ptr noundef %77, i64 noundef %conv.i.i) #6
  %sub.i.i = add i32 %add.i, 1
  %add.i.i = sub i32 %sub.i.i, %sub.i
  %call2.i.i = tail call i32 @sg_copy_buffer(ptr noundef %77, i32 noundef %call.i.i, ptr noundef %backup_mac.i, i32 noundef %add.i.i, i32 noundef %sub.i, i1 noundef zeroext false) #6
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %land.lhs.true104.if.end109_crit_edge, %land.lhs.true101.if.end109_crit_edge, %if.end99.if.end109_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_map_aead_request(ptr nocapture noundef readonly %drvdata, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %sg_data = alloca %struct.buffer_array, align 4
  %mapped_nents = alloca i32, align 4
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %mlli_params1 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 3
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sg_data) #6
  %2 = getelementptr inbounds i8, ptr %sg_data, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 84)
  %req_authsize = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 32
  %4 = ptrtoint ptr %req_authsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req_authsize, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapped_nents) #6
  %6 = ptrtoint ptr %mapped_nents to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mapped_nents, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #6
  %7 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dummy, align 4
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2592, i32 3264
  %10 = ptrtoint ptr %mlli_params1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %mlli_params1, align 4
  %11 = ptrtoint ptr %sg_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sg_data, align 4
  %coherent = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 14
  %12 = ptrtoint ptr %coherent to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %coherent, align 4, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %op_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 40
  %14 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %op_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %land.lhs.true4, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst, align 8
  %cmp5 = icmp eq ptr %17, %19
  br i1 %cmp5, label %if.then, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %assoclen.i, align 8
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %22 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cryptlen.i, align 4
  %add.i = add i32 %23, %21
  %backup_mac.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %req_authsize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %req_authsize, align 4
  %sub.i = sub i32 %add.i, %25
  %conv.i.i = zext i32 %add.i to i64
  %call.i.i = tail call i32 @sg_nents_for_len(ptr noundef %17, i64 noundef %conv.i.i) #6
  %sub.i.i = add i32 %add.i, 1
  %add.i.i = sub i32 %sub.i.i, %sub.i
  %call2.i.i = tail call i32 @sg_copy_buffer(ptr noundef %17, i32 noundef %call.i.i, ptr noundef %backup_mac.i, i32 noundef %add.i.i, i32 noundef %sub.i, i1 noundef zeroext true) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %op_type7 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 40
  %26 = ptrtoint ptr %op_type7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %op_type7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp8 = icmp eq i32 %27, 0
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %28 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cryptlen, align 4
  %sub = select i1 %cmp8, i32 0, i32 %5
  %cond = sub i32 %29, %sub
  %cryptlen10 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 4
  %30 = ptrtoint ptr %cryptlen10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond, ptr %cryptlen10, align 16
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %__ctx.i) #6
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !209

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #6
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #6
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %__ctx.i, i32 noundef 32) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %__ctx.i to i32
  %sub.i317 = add i32 %36, 1073741824
  %shr.i = lshr i32 %sub.i317, 12
  %add.ptr.i = getelementptr %struct.page, ptr %35, i32 %shr.i
  %and.i318 = and i32 %36, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i, i32 noundef %and.i318, i32 noundef 32, i32 noundef 0, i32 noundef 0) #6
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end17

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef 32, ptr noundef %__ctx.i) #9
  br label %aead_map_failure

if.end17:                                         ; preds = %dma_map_single_attrs.exit
  %mac_buf_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6
  %37 = ptrtoint ptr %mac_buf_dma_addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call41.i, ptr %mac_buf_dma_addr, align 4
  %ccm_hdr_size = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 28
  %38 = ptrtoint ptr %ccm_hdr_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ccm_hdr_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp18.not = icmp eq i32 %39, -1
  br i1 %cmp18.not, label %if.end17.if.end36_crit_edge, label %if.then19

if.end17.if.end36_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then19:                                        ; preds = %if.end17
  %add.ptr = getelementptr %struct.aead_request, ptr %req, i32 7, i32 3
  %call.i320 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr) #6
  br i1 %call.i320, label %land.rhs.i322, label %dma_map_single_attrs.exit337

land.rhs.i322:                                    ; preds = %if.then19
  %.b1.i321 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i321, label %land.rhs.i322.dma_map_single_attrs.exit337.thread_crit_edge, label %if.then.i326, !prof !209

land.rhs.i322.dma_map_single_attrs.exit337.thread_crit_edge: ; preds = %land.rhs.i322
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit337.thread

if.then.i326:                                     ; preds = %land.rhs.i322
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i323 = tail call ptr @dev_driver_string(ptr noundef %dev.i) #6
  %init_name.i.i324 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %40 = ptrtoint ptr %init_name.i.i324 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i.i324, align 8
  %tobool.not.i.i325 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i325, label %if.end.i.i327, label %if.then.i326.dev_name.exit.i329_crit_edge

if.then.i326.dev_name.exit.i329_crit_edge:        ; preds = %if.then.i326
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i329

if.end.i.i327:                                    ; preds = %if.then.i326
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i329

dev_name.exit.i329:                               ; preds = %if.end.i.i327, %if.then.i326.dev_name.exit.i329_crit_edge
  %retval.0.i.i328 = phi ptr [ %43, %if.end.i.i327 ], [ %41, %if.then.i326.dev_name.exit.i329_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i323, ptr noundef %retval.0.i.i328) #6
  br label %dma_map_single_attrs.exit337.thread

dma_map_single_attrs.exit337.thread:              ; preds = %dev_name.exit.i329, %land.rhs.i322.dma_map_single_attrs.exit337.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #6
  br label %do.end27

dma_map_single_attrs.exit337:                     ; preds = %if.then19
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %add.ptr, i32 noundef 16) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %44 = load ptr, ptr @mem_map, align 4
  %45 = ptrtoint ptr %add.ptr to i32
  %sub.i330 = add i32 %45, 1073741824
  %shr.i331 = lshr i32 %sub.i330, 12
  %add.ptr.i332 = getelementptr %struct.page, ptr %44, i32 %shr.i331
  %and.i333 = and i32 %45, 4095
  %call41.i334 = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i332, i32 noundef %and.i333, i32 noundef 16, i32 noundef 1, i32 noundef 0) #6
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i334) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i334)
  %cmp.i338 = icmp eq i32 %call41.i334, -1
  br i1 %cmp.i338, label %dma_map_single_attrs.exit337.do.end27_crit_edge, label %if.end28

dma_map_single_attrs.exit337.do.end27_crit_edge:  ; preds = %dma_map_single_attrs.exit337
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

do.end27:                                         ; preds = %dma_map_single_attrs.exit337.do.end27_crit_edge, %dma_map_single_attrs.exit337.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef 16, ptr noundef %add.ptr) #9
  %ccm_iv0_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 4
  %46 = ptrtoint ptr %ccm_iv0_dma_addr to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %ccm_iv0_dma_addr, align 16
  br label %aead_map_failure

if.end28:                                         ; preds = %dma_map_single_attrs.exit337
  %ccm_config = getelementptr inbounds %struct.aead_request, ptr %req, i32 7
  %ccm_iv0_dma_addr29 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 4
  %47 = ptrtoint ptr %ccm_iv0_dma_addr29 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call41.i334, ptr %ccm_iv0_dma_addr29, align 16
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 5
  %48 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %assoclen, align 8
  %call32 = call fastcc i32 @cc_set_aead_conf_buf(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %ccm_config, ptr noundef nonnull %sg_data, i32 noundef %49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end28.if.end36_crit_edge, label %if.end28.aead_map_failure_crit_edge

if.end28.aead_map_failure_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %aead_map_failure

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end36:                                         ; preds = %if.end28.if.end36_crit_edge, %if.end17.if.end36_crit_edge
  %cipher_mode = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 36
  %50 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cipher_mode, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %51)
  %cmp37 = icmp eq i32 %51, 12
  br i1 %cmp37, label %if.then38, label %if.end36.if.end83_crit_edge

if.end36.if.end83_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then38:                                        ; preds = %if.end36
  %hkey = getelementptr inbounds %struct.aead_request, ptr %req, i32 5
  %call.i340 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %hkey) #6
  br i1 %call.i340, label %land.rhs.i342, label %dma_map_single_attrs.exit357

land.rhs.i342:                                    ; preds = %if.then38
  %.b1.i341 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i341, label %land.rhs.i342.dma_map_single_attrs.exit357.thread_crit_edge, label %if.then.i346, !prof !209

land.rhs.i342.dma_map_single_attrs.exit357.thread_crit_edge: ; preds = %land.rhs.i342
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit357.thread

if.then.i346:                                     ; preds = %land.rhs.i342
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i343 = tail call ptr @dev_driver_string(ptr noundef %dev.i) #6
  %init_name.i.i344 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %52 = ptrtoint ptr %init_name.i.i344 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i.i344, align 8
  %tobool.not.i.i345 = icmp eq ptr %53, null
  br i1 %tobool.not.i.i345, label %if.end.i.i347, label %if.then.i346.dev_name.exit.i349_crit_edge

if.then.i346.dev_name.exit.i349_crit_edge:        ; preds = %if.then.i346
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i349

if.end.i.i347:                                    ; preds = %if.then.i346
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i349

dev_name.exit.i349:                               ; preds = %if.end.i.i347, %if.then.i346.dev_name.exit.i349_crit_edge
  %retval.0.i.i348 = phi ptr [ %55, %if.end.i.i347 ], [ %53, %if.then.i346.dev_name.exit.i349_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i343, ptr noundef %retval.0.i.i348) #6
  br label %dma_map_single_attrs.exit357.thread

dma_map_single_attrs.exit357.thread:              ; preds = %dev_name.exit.i349, %land.rhs.i342.dma_map_single_attrs.exit357.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #6
  br label %do.end46

dma_map_single_attrs.exit357:                     ; preds = %if.then38
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %hkey, i32 noundef 16) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %56 = load ptr, ptr @mem_map, align 4
  %57 = ptrtoint ptr %hkey to i32
  %sub.i350 = add i32 %57, 1073741824
  %shr.i351 = lshr i32 %sub.i350, 12
  %add.ptr.i352 = getelementptr %struct.page, ptr %56, i32 %shr.i351
  %and.i353 = and i32 %57, 4095
  %call41.i354 = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i352, i32 noundef %and.i353, i32 noundef 16, i32 noundef 0, i32 noundef 0) #6
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i354) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i354)
  %cmp.i358 = icmp eq i32 %call41.i354, -1
  br i1 %cmp.i358, label %dma_map_single_attrs.exit357.do.end46_crit_edge, label %if.end49

dma_map_single_attrs.exit357.do.end46_crit_edge:  ; preds = %dma_map_single_attrs.exit357
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46

do.end46:                                         ; preds = %dma_map_single_attrs.exit357.do.end46_crit_edge, %dma_map_single_attrs.exit357.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.22, i32 noundef 16, ptr noundef %hkey) #9
  br label %aead_map_failure

if.end49:                                         ; preds = %dma_map_single_attrs.exit357
  %hkey_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 20
  %58 = ptrtoint ptr %hkey_dma_addr to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call41.i354, ptr %hkey_dma_addr, align 64
  %gcm_len_block = getelementptr inbounds %struct.aead_request, ptr %req, i32 6
  %call.i360 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %gcm_len_block) #6
  br i1 %call.i360, label %land.rhs.i362, label %dma_map_single_attrs.exit377

land.rhs.i362:                                    ; preds = %if.end49
  %.b1.i361 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i361, label %land.rhs.i362.dma_map_single_attrs.exit377.thread_crit_edge, label %if.then.i366, !prof !209

land.rhs.i362.dma_map_single_attrs.exit377.thread_crit_edge: ; preds = %land.rhs.i362
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit377.thread

if.then.i366:                                     ; preds = %land.rhs.i362
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i363 = tail call ptr @dev_driver_string(ptr noundef %dev.i) #6
  %init_name.i.i364 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %59 = ptrtoint ptr %init_name.i.i364 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i.i364, align 8
  %tobool.not.i.i365 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i365, label %if.end.i.i367, label %if.then.i366.dev_name.exit.i369_crit_edge

if.then.i366.dev_name.exit.i369_crit_edge:        ; preds = %if.then.i366
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i369

if.end.i.i367:                                    ; preds = %if.then.i366
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i369

dev_name.exit.i369:                               ; preds = %if.end.i.i367, %if.then.i366.dev_name.exit.i369_crit_edge
  %retval.0.i.i368 = phi ptr [ %62, %if.end.i.i367 ], [ %60, %if.then.i366.dev_name.exit.i369_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i363, ptr noundef %retval.0.i.i368) #6
  br label %dma_map_single_attrs.exit377.thread

dma_map_single_attrs.exit377.thread:              ; preds = %dev_name.exit.i369, %land.rhs.i362.dma_map_single_attrs.exit377.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #6
  br label %do.end56

dma_map_single_attrs.exit377:                     ; preds = %if.end49
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %gcm_len_block, i32 noundef 16) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %63 = load ptr, ptr @mem_map, align 4
  %64 = ptrtoint ptr %gcm_len_block to i32
  %sub.i370 = add i32 %64, 1073741824
  %shr.i371 = lshr i32 %sub.i370, 12
  %add.ptr.i372 = getelementptr %struct.page, ptr %63, i32 %shr.i371
  %and.i373 = and i32 %64, 4095
  %call41.i374 = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i372, i32 noundef %and.i373, i32 noundef 16, i32 noundef 1, i32 noundef 0) #6
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i374) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i374)
  %cmp.i378 = icmp eq i32 %call41.i374, -1
  br i1 %cmp.i378, label %dma_map_single_attrs.exit377.do.end56_crit_edge, label %if.end58

dma_map_single_attrs.exit377.do.end56_crit_edge:  ; preds = %dma_map_single_attrs.exit377
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end56

do.end56:                                         ; preds = %dma_map_single_attrs.exit377.do.end56_crit_edge, %dma_map_single_attrs.exit377.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef 16, ptr noundef %gcm_len_block) #9
  br label %aead_map_failure

if.end58:                                         ; preds = %dma_map_single_attrs.exit377
  %gcm_block_len_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 24
  %65 = ptrtoint ptr %gcm_block_len_dma_addr to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call41.i374, ptr %gcm_block_len_dma_addr, align 4
  %gcm_iv_inc1 = getelementptr inbounds %struct.aead_request, ptr %req, i32 3
  %call.i380 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %gcm_iv_inc1) #6
  br i1 %call.i380, label %land.rhs.i382, label %dma_map_single_attrs.exit397

land.rhs.i382:                                    ; preds = %if.end58
  %.b1.i381 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i381, label %land.rhs.i382.dma_map_single_attrs.exit397.thread_crit_edge, label %if.then.i386, !prof !209

land.rhs.i382.dma_map_single_attrs.exit397.thread_crit_edge: ; preds = %land.rhs.i382
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit397.thread

if.then.i386:                                     ; preds = %land.rhs.i382
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i383 = tail call ptr @dev_driver_string(ptr noundef %dev.i) #6
  %init_name.i.i384 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %66 = ptrtoint ptr %init_name.i.i384 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %init_name.i.i384, align 8
  %tobool.not.i.i385 = icmp eq ptr %67, null
  br i1 %tobool.not.i.i385, label %if.end.i.i387, label %if.then.i386.dev_name.exit.i389_crit_edge

if.then.i386.dev_name.exit.i389_crit_edge:        ; preds = %if.then.i386
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i389

if.end.i.i387:                                    ; preds = %if.then.i386
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i389

dev_name.exit.i389:                               ; preds = %if.end.i.i387, %if.then.i386.dev_name.exit.i389_crit_edge
  %retval.0.i.i388 = phi ptr [ %69, %if.end.i.i387 ], [ %67, %if.then.i386.dev_name.exit.i389_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i383, ptr noundef %retval.0.i.i388) #6
  br label %dma_map_single_attrs.exit397.thread

dma_map_single_attrs.exit397.thread:              ; preds = %dev_name.exit.i389, %land.rhs.i382.dma_map_single_attrs.exit397.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #6
  br label %do.end66

dma_map_single_attrs.exit397:                     ; preds = %if.end58
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %gcm_iv_inc1, i32 noundef 16) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %70 = load ptr, ptr @mem_map, align 4
  %71 = ptrtoint ptr %gcm_iv_inc1 to i32
  %sub.i390 = add i32 %71, 1073741824
  %shr.i391 = lshr i32 %sub.i390, 12
  %add.ptr.i392 = getelementptr %struct.page, ptr %70, i32 %shr.i391
  %and.i393 = and i32 %71, 4095
  %call41.i394 = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i392, i32 noundef %and.i393, i32 noundef 16, i32 noundef 1, i32 noundef 0) #6
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i394) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i394)
  %cmp.i398 = icmp eq i32 %call41.i394, -1
  br i1 %cmp.i398, label %dma_map_single_attrs.exit397.do.end66_crit_edge, label %if.end69

dma_map_single_attrs.exit397.do.end66_crit_edge:  ; preds = %dma_map_single_attrs.exit397
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end66

do.end66:                                         ; preds = %dma_map_single_attrs.exit397.do.end66_crit_edge, %dma_map_single_attrs.exit397.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, i32 noundef 16, ptr noundef %gcm_iv_inc1) #9
  %gcm_iv_inc1_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 12
  %72 = ptrtoint ptr %gcm_iv_inc1_dma_addr to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %gcm_iv_inc1_dma_addr, align 8
  br label %aead_map_failure

if.end69:                                         ; preds = %dma_map_single_attrs.exit397
  %gcm_iv_inc1_dma_addr70 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 12
  %73 = ptrtoint ptr %gcm_iv_inc1_dma_addr70 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call41.i394, ptr %gcm_iv_inc1_dma_addr70, align 8
  %gcm_iv_inc2 = getelementptr inbounds %struct.aead_request, ptr %req, i32 4
  %call.i400 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %gcm_iv_inc2) #6
  br i1 %call.i400, label %land.rhs.i402, label %dma_map_single_attrs.exit417

land.rhs.i402:                                    ; preds = %if.end69
  %.b1.i401 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i401, label %land.rhs.i402.dma_map_single_attrs.exit417.thread_crit_edge, label %if.then.i406, !prof !209

land.rhs.i402.dma_map_single_attrs.exit417.thread_crit_edge: ; preds = %land.rhs.i402
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit417.thread

if.then.i406:                                     ; preds = %land.rhs.i402
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i403 = tail call ptr @dev_driver_string(ptr noundef %dev.i) #6
  %init_name.i.i404 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %74 = ptrtoint ptr %init_name.i.i404 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_name.i.i404, align 8
  %tobool.not.i.i405 = icmp eq ptr %75, null
  br i1 %tobool.not.i.i405, label %if.end.i.i407, label %if.then.i406.dev_name.exit.i409_crit_edge

if.then.i406.dev_name.exit.i409_crit_edge:        ; preds = %if.then.i406
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i409

if.end.i.i407:                                    ; preds = %if.then.i406
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i409

dev_name.exit.i409:                               ; preds = %if.end.i.i407, %if.then.i406.dev_name.exit.i409_crit_edge
  %retval.0.i.i408 = phi ptr [ %77, %if.end.i.i407 ], [ %75, %if.then.i406.dev_name.exit.i409_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i403, ptr noundef %retval.0.i.i408) #6
  br label %dma_map_single_attrs.exit417.thread

dma_map_single_attrs.exit417.thread:              ; preds = %dev_name.exit.i409, %land.rhs.i402.dma_map_single_attrs.exit417.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #6
  br label %do.end78

dma_map_single_attrs.exit417:                     ; preds = %if.end69
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %gcm_iv_inc2, i32 noundef 16) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %78 = load ptr, ptr @mem_map, align 4
  %79 = ptrtoint ptr %gcm_iv_inc2 to i32
  %sub.i410 = add i32 %79, 1073741824
  %shr.i411 = lshr i32 %sub.i410, 12
  %add.ptr.i412 = getelementptr %struct.page, ptr %78, i32 %shr.i411
  %and.i413 = and i32 %79, 4095
  %call41.i414 = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i412, i32 noundef %and.i413, i32 noundef 16, i32 noundef 1, i32 noundef 0) #6
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i414) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i414)
  %cmp.i418 = icmp eq i32 %call41.i414, -1
  br i1 %cmp.i418, label %dma_map_single_attrs.exit417.do.end78_crit_edge, label %if.end81

dma_map_single_attrs.exit417.do.end78_crit_edge:  ; preds = %dma_map_single_attrs.exit417
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end78

do.end78:                                         ; preds = %dma_map_single_attrs.exit417.do.end78_crit_edge, %dma_map_single_attrs.exit417.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef 16, ptr noundef %gcm_iv_inc2) #9
  %gcm_iv_inc2_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 16
  %80 = ptrtoint ptr %gcm_iv_inc2_dma_addr to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %gcm_iv_inc2_dma_addr, align 4
  br label %aead_map_failure

if.end81:                                         ; preds = %dma_map_single_attrs.exit417
  call void @__sanitizer_cov_trace_pc() #8
  %gcm_iv_inc2_dma_addr82 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 16
  %81 = ptrtoint ptr %gcm_iv_inc2_dma_addr82 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call41.i414, ptr %gcm_iv_inc2_dma_addr82, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.end81, %if.end36.if.end83_crit_edge
  %cryptlen84 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %82 = ptrtoint ptr %cryptlen84 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cryptlen84, align 4
  %assoclen85 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %84 = ptrtoint ptr %assoclen85 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %assoclen85, align 8
  %add = add i32 %85, %83
  %86 = ptrtoint ptr %op_type7 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %op_type7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp88 = icmp eq i32 %87, 0
  br i1 %cmp88, label %land.lhs.true89, label %if.end83.if.end95_crit_edge

if.end83.if.end95_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

land.lhs.true89:                                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  %src90 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %88 = ptrtoint ptr %src90 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %src90, align 4
  %dst91 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %90 = ptrtoint ptr %dst91 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dst91, align 8
  %cmp92 = icmp eq ptr %89, %91
  %add94 = select i1 %cmp92, i32 %5, i32 0
  %spec.select = add i32 %add94, %add
  br label %if.end95

if.end95:                                         ; preds = %land.lhs.true89, %if.end83.if.end95_crit_edge
  %size_to_map.0 = phi i32 [ %add, %if.end83.if.end95_crit_edge ], [ %spec.select, %land.lhs.true89 ]
  %src96 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %92 = ptrtoint ptr %src96 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %src96, align 4
  %mapped_nents98 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 64
  %call99 = call fastcc i32 @cc_map_sg(ptr noundef %dev.i, ptr noundef %93, i32 noundef %size_to_map.0, i32 noundef 0, ptr noundef %mapped_nents98, i32 noundef 136, ptr noundef nonnull %dummy, ptr noundef nonnull %mapped_nents)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end95.aead_map_failure_crit_edge

if.end95.aead_map_failure_crit_edge:              ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %aead_map_failure

if.end102:                                        ; preds = %if.end95
  %is_single_pass = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 41
  %94 = ptrtoint ptr %is_single_pass to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %is_single_pass, align 1, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool103.not = icmp eq i8 %95, 0
  br i1 %tobool103.not, label %if.else, label %if.then104

if.then104:                                       ; preds = %if.end102
  %call105 = call fastcc i32 @cc_aead_chain_assoc(ptr noundef %drvdata, ptr noundef %req, ptr noundef nonnull %sg_data, i1 noundef zeroext true, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %if.then104.aead_map_failure_crit_edge

if.then104.aead_map_failure_crit_edge:            ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #8
  br label %aead_map_failure

if.end108:                                        ; preds = %if.then104
  %call109 = call fastcc i32 @cc_aead_chain_iv(ptr noundef %drvdata, ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %if.end108.aead_map_failure_crit_edge

if.end108.aead_map_failure_crit_edge:             ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %aead_map_failure

if.end112:                                        ; preds = %if.end108
  %call113 = call fastcc i32 @cc_aead_chain_data(ptr noundef %drvdata, ptr noundef %req, ptr noundef nonnull %sg_data, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end112.if.end129_crit_edge, label %if.end112.aead_map_failure_crit_edge

if.end112.aead_map_failure_crit_edge:             ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %aead_map_failure

if.end112.if.end129_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

if.else:                                          ; preds = %if.end102
  %call117 = call fastcc i32 @cc_aead_chain_assoc(ptr noundef %drvdata, ptr noundef %req, ptr noundef nonnull %sg_data, i1 noundef zeroext false, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %if.else.aead_map_failure_crit_edge

if.else.aead_map_failure_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %aead_map_failure

if.end120:                                        ; preds = %if.else
  %call121 = call fastcc i32 @cc_aead_chain_iv(ptr noundef %drvdata, ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %if.end120.aead_map_failure_crit_edge

if.end120.aead_map_failure_crit_edge:             ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %aead_map_failure

if.end124:                                        ; preds = %if.end120
  %call125 = call fastcc i32 @cc_aead_chain_data(ptr noundef %drvdata, ptr noundef %req, ptr noundef nonnull %sg_data, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end124.if.end129_crit_edge, label %if.end124.aead_map_failure_crit_edge

if.end124.aead_map_failure_crit_edge:             ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %aead_map_failure

if.end124.if.end129_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

if.end129:                                        ; preds = %if.end124.if.end129_crit_edge, %if.end112.if.end129_crit_edge
  %assoc_buff_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 1
  %96 = ptrtoint ptr %assoc_buff_type to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %assoc_buff_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp130 = icmp eq i32 %97, 2
  br i1 %cmp130, label %if.end129.if.then132_crit_edge, label %lor.lhs.false

if.end129.if.then132_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then132

lor.lhs.false:                                    ; preds = %if.end129
  %data_buff_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 2
  %98 = ptrtoint ptr %data_buff_type to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %data_buff_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %cmp131 = icmp eq i32 %99, 2
  br i1 %cmp131, label %lor.lhs.false.if.then132_crit_edge, label %lor.lhs.false.cleanup184_crit_edge

lor.lhs.false.cleanup184_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184

lor.lhs.false.if.then132_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then132

if.then132:                                       ; preds = %lor.lhs.false.if.then132_crit_edge, %if.end129.if.then132_crit_edge
  %mlli_buffs_pool = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 5
  %100 = ptrtoint ptr %mlli_buffs_pool to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mlli_buffs_pool, align 4
  %102 = ptrtoint ptr %mlli_params1 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %mlli_params1, align 4
  %call134 = call fastcc i32 @cc_generate_mlli(ptr noundef %dev.i, ptr noundef nonnull %sg_data, ptr noundef %mlli_params1, i32 noundef %cond.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.then132.aead_map_failure_crit_edge

if.then132.aead_map_failure_crit_edge:            ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #8
  br label %aead_map_failure

if.end137:                                        ; preds = %if.then132
  call fastcc void @cc_update_aead_mlli_nents(ptr noundef %drvdata, ptr noundef %req)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_map_aead_request.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_aead_request, %if.then143)) #6
          to label %do.body147 [label %if.then143], !srcloc !208

if.then143:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  %mlli_nents = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 56
  %103 = ptrtoint ptr %mlli_nents to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mlli_nents, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_map_aead_request.__UNIQUE_ID_ddebug460, ptr noundef %dev.i, ptr noundef nonnull @.str.33, i32 noundef %104) #6
  br label %do.body147

do.body147:                                       ; preds = %if.then143, %if.end137
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_map_aead_request.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_aead_request, %if.then159)) #6
          to label %do.body165 [label %if.then159], !srcloc !208

if.then159:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #8
  %mlli_nents161 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 72
  %105 = ptrtoint ptr %mlli_nents161 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mlli_nents161, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_map_aead_request.__UNIQUE_ID_ddebug461, ptr noundef %dev.i, ptr noundef nonnull @.str.34, i32 noundef %106) #6
  br label %do.body165

do.body165:                                       ; preds = %if.then159, %do.body147
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_map_aead_request.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_aead_request, %if.then177)) #6
          to label %cleanup184 [label %if.then177], !srcloc !208

if.then177:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #8
  %mlli_nents179 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 0, i32 1
  %107 = ptrtoint ptr %mlli_nents179 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mlli_nents179, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_map_aead_request.__UNIQUE_ID_ddebug462, ptr noundef %dev.i, ptr noundef nonnull @.str.35, i32 noundef %108) #6
  br label %cleanup184

aead_map_failure:                                 ; preds = %if.then132.aead_map_failure_crit_edge, %if.end124.aead_map_failure_crit_edge, %if.end120.aead_map_failure_crit_edge, %if.else.aead_map_failure_crit_edge, %if.end112.aead_map_failure_crit_edge, %if.end108.aead_map_failure_crit_edge, %if.then104.aead_map_failure_crit_edge, %if.end95.aead_map_failure_crit_edge, %do.end78, %do.end66, %do.end56, %do.end46, %if.end28.aead_map_failure_crit_edge, %do.end27, %do.end
  %rc.1 = phi i32 [ -12, %do.end ], [ -12, %do.end46 ], [ -12, %do.end56 ], [ -12, %do.end66 ], [ -12, %do.end78 ], [ %call99, %if.end95.aead_map_failure_crit_edge ], [ %call105, %if.then104.aead_map_failure_crit_edge ], [ %call109, %if.end108.aead_map_failure_crit_edge ], [ %call113, %if.end112.aead_map_failure_crit_edge ], [ %call134, %if.then132.aead_map_failure_crit_edge ], [ %call117, %if.else.aead_map_failure_crit_edge ], [ %call121, %if.end120.aead_map_failure_crit_edge ], [ %call125, %if.end124.aead_map_failure_crit_edge ], [ %call32, %if.end28.aead_map_failure_crit_edge ], [ -12, %do.end27 ]
  call void @cc_unmap_aead_request(ptr noundef %dev.i, ptr noundef %req)
  br label %cleanup184

cleanup184:                                       ; preds = %aead_map_failure, %if.then177, %do.body165, %lor.lhs.false.cleanup184_crit_edge
  %retval.0 = phi i32 [ %rc.1, %aead_map_failure ], [ 0, %if.then177 ], [ 0, %lor.lhs.false.cleanup184_crit_edge ], [ 0, %do.body165 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapped_nents) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sg_data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_set_aead_conf_buf(ptr noundef %dev, ptr noundef %areq_ctx, ptr noundef %config_data, ptr nocapture noundef %sg_data, i32 noundef %assoclen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_set_aead_conf_buf.__UNIQUE_ID_ddebug445, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_set_aead_conf_buf, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_set_aead_conf_buf.__UNIQUE_ID_ddebug445, ptr noundef %dev, ptr noundef nonnull @.str.71) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ccm_adata_sg = getelementptr inbounds %struct.aead_req_ctx, ptr %areq_ctx, i32 0, i32 37
  %ccm_hdr_size = getelementptr inbounds %struct.aead_req_ctx, ptr %areq_ctx, i32 0, i32 38
  %0 = ptrtoint ptr %ccm_hdr_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ccm_hdr_size, align 8
  %add = add i32 %1, 16
  tail call void @sg_init_one(ptr noundef %ccm_adata_sg, ptr noundef %config_data, i32 noundef %add) #6
  %call4 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %ccm_adata_sg, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 1
  br i1 %cmp.not, label %do.body9, label %do.end7

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72) #9
  br label %return

do.body9:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_set_aead_conf_buf.__UNIQUE_ID_ddebug446, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_set_aead_conf_buf, %if.then21)) #6
          to label %do.end30 [label %if.then21], !srcloc !208

if.then21:                                        ; preds = %do.body9
  %2 = ptrtoint ptr %ccm_adata_sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ccm_adata_sg, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_virt.exit, label %do.body2.i, !prof !209

do.body2.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !210
  unreachable

sg_virt.exit:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %dma_address = getelementptr inbounds %struct.aead_req_ctx, ptr %areq_ctx, i32 0, i32 37, i32 3
  %and.i = and i32 %3, -4
  %4 = inttoptr i32 %and.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %4) #6
  %offset.i = getelementptr inbounds %struct.aead_req_ctx, ptr %areq_ctx, i32 0, i32 37, i32 1
  %5 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %6
  %length = getelementptr inbounds %struct.aead_req_ctx, ptr %areq_ctx, i32 0, i32 37, i32 2
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_set_aead_conf_buf.__UNIQUE_ID_ddebug446, ptr noundef %dev, ptr noundef nonnull @.str.73, ptr noundef %dma_address, ptr noundef %4, ptr noundef %add.ptr.i, i32 noundef %6, i32 noundef %8) #6
  br label %do.end30

do.end30:                                         ; preds = %sg_virt.exit, %do.body9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %assoclen)
  %cmp31.not = icmp eq i32 %assoclen, 0
  br i1 %cmp31.not, label %do.end30.return_crit_edge, label %if.then32

do.end30.return_crit_edge:                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then32:                                        ; preds = %do.end30
  %9 = ptrtoint ptr %ccm_hdr_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ccm_hdr_size, align 8
  %add35 = add i32 %10, 16
  %11 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sg_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_add_sg_entry.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_set_aead_conf_buf, %if.then.i)) #6
          to label %cc_add_sg_entry.exit [label %if.then.i], !srcloc !208

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_add_sg_entry.__UNIQUE_ID_ddebug444, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %12, i32 noundef 1, ptr noundef %ccm_adata_sg, i32 noundef %add35, i32 noundef 0) #6
  br label %cc_add_sg_entry.exit

cc_add_sg_entry.exit:                             ; preds = %if.then.i, %if.then32
  %arrayidx.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 3, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %arrayidx.i, align 4
  %arrayidx7.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 1, i32 %12
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ccm_adata_sg, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 2, i32 %12
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 4, i32 %12
  %16 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add35, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 5, i32 %12
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx11.i, align 1
  %arrayidx14.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 6, i32 %12
  %18 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx14.i, align 4
  %19 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sg_data, align 4
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %sg_data, align 4
  br label %return

return:                                           ; preds = %cc_add_sg_entry.exit, %do.end30.return_crit_edge, %do.end7
  %retval.0 = phi i32 [ -12, %do.end7 ], [ 0, %cc_add_sg_entry.exit ], [ 0, %do.end30.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_aead_chain_assoc(ptr nocapture noundef readonly %drvdata, ptr noundef %req, ptr noundef %sg_data, i1 noundef zeroext %is_last, i1 noundef zeroext %do_chain) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %tobool.not = icmp eq ptr %sg_data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 5
  %2 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %assoclen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then3, label %if.end16

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_buff_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 1
  %4 = ptrtoint ptr %assoc_buff_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %assoc_buff_type, align 8
  %nents = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 52
  %5 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %nents, align 8
  %mlli_nents = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 56
  %6 = ptrtoint ptr %mlli_nents to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mlli_nents, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_chain_assoc.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_chain_assoc, %if.then10)) #6
          to label %cleanup [label %if.then10], !srcloc !208

if.then10:                                        ; preds = %if.then3
  %7 = ptrtoint ptr %assoc_buff_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %assoc_buff_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %switch.lookup, label %if.then10.cc_dma_buf_type.exit_crit_edge

if.then10.cc_dma_buf_type.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_dma_buf_type.exit

switch.lookup:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.cc_aead_chain_assoc, i32 0, i32 %8
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cc_dma_buf_type.exit

cc_dma_buf_type.exit:                             ; preds = %switch.lookup, %if.then10.cc_dma_buf_type.exit_crit_edge
  %retval.0.i128 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.69, %if.then10.cc_dma_buf_type.exit_crit_edge ]
  %11 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nents, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_chain_assoc.__UNIQUE_ID_ddebug458, ptr noundef %dev.i, ptr noundef nonnull @.str.75, ptr noundef nonnull %retval.0.i128, i32 noundef %12) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %13 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src, align 4
  %conv = zext i32 %3 to i64
  %call18 = tail call i32 @sg_nents_for_len(ptr noundef %14, i64 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end16.cleanup_crit_edge, label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call18)
  %cmp23 = icmp ugt i32 %call18, 8
  br i1 %cmp23, label %do.end28, label %if.end29

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.50, i32 noundef %call18, i32 noundef 8) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %nents31 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 52
  %15 = ptrtoint ptr %nents31 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call18, ptr %nents31, align 8
  %ccm_hdr_size = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 28
  %16 = ptrtoint ptr %ccm_hdr_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ccm_hdr_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp32.not = icmp ne i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call18)
  %cmp35 = icmp eq i32 %call18, 8
  %or.cond = select i1 %cmp32.not, i1 %cmp35, i1 false
  br i1 %or.cond, label %do.end40, label %if.end45

do.end40:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.77, i32 noundef 9, i32 noundef 8) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp46 = icmp eq i32 %call18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp49 = icmp eq i32 %17, -1
  %or.cond136 = select i1 %cmp46, i1 %cmp49, i1 false
  %spec.select = select i1 %or.cond136, i32 1, i32 2
  %18 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select, ptr %18, align 8
  br i1 %do_chain, label %if.end45.do.body61_crit_edge, label %lor.lhs.false

if.end45.do.body61_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body61

lor.lhs.false:                                    ; preds = %if.end45
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp58 = icmp eq i32 %21, 2
  br i1 %cmp58, label %lor.lhs.false.do.body61_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.do.body61_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body61

do.body61:                                        ; preds = %lor.lhs.false.do.body61_crit_edge, %if.end45.do.body61_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_chain_assoc.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_chain_assoc, %if.then73)) #6
          to label %do.end80 [label %if.then73], !srcloc !208

if.then73:                                        ; preds = %do.body61
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %24 = icmp ult i32 %23, 3
  br i1 %24, label %switch.lookup137, label %if.then73.cc_dma_buf_type.exit133_crit_edge

if.then73.cc_dma_buf_type.exit133_crit_edge:      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_dma_buf_type.exit133

switch.lookup137:                                 ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep138 = getelementptr inbounds [3 x ptr], ptr @switch.table.cc_aead_chain_assoc.87, i32 0, i32 %23
  %25 = ptrtoint ptr %switch.gep138 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load139 = load ptr, ptr %switch.gep138, align 4
  br label %cc_dma_buf_type.exit133

cc_dma_buf_type.exit133:                          ; preds = %switch.lookup137, %if.then73.cc_dma_buf_type.exit133_crit_edge
  %retval.0.i132 = phi ptr [ %switch.load139, %switch.lookup137 ], [ @.str.69, %if.then73.cc_dma_buf_type.exit133_crit_edge ]
  %26 = ptrtoint ptr %nents31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nents31, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_chain_assoc.__UNIQUE_ID_ddebug459, ptr noundef %dev.i, ptr noundef nonnull @.str.79, ptr noundef nonnull %retval.0.i132, i32 noundef %27) #6
  br label %do.end80

do.end80:                                         ; preds = %cc_dma_buf_type.exit133, %do.body61
  %28 = ptrtoint ptr %nents31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nents31, align 8
  %30 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %src, align 4
  %32 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %assoclen, align 8
  %mlli_nents87 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 56
  %frombool.i = zext i1 %is_last to i8
  %34 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sg_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_add_sg_entry.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_chain_assoc, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !208

if.then.i:                                        ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i1 %is_last to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_add_sg_entry.__UNIQUE_ID_ddebug444, ptr noundef %dev.i, ptr noundef nonnull @.str.58, i32 noundef %35, i32 noundef %29, ptr noundef %31, i32 noundef %33, i32 noundef %conv.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end80
  %arrayidx.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 3, i32 %35
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %29, ptr %arrayidx.i, align 4
  %arrayidx7.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 1, i32 %35
  %37 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %31, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 2, i32 %35
  %38 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 4, i32 %35
  %39 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %33, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 5, i32 %35
  %40 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %frombool.i, ptr %arrayidx11.i, align 1
  %arrayidx14.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 6, i32 %35
  %41 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %mlli_nents87, ptr %arrayidx14.i, align 4
  %tobool17.not.i = icmp eq ptr %mlli_nents87, null
  br i1 %tobool17.not.i, label %do.end.i.cc_add_sg_entry.exit_crit_edge, label %if.then18.i

do.end.i.cc_add_sg_entry.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_add_sg_entry.exit

if.then18.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %mlli_nents87 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %mlli_nents87, align 4
  br label %cc_add_sg_entry.exit

cc_add_sg_entry.exit:                             ; preds = %if.then18.i, %do.end.i.cc_add_sg_entry.exit_crit_edge
  %43 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sg_data, align 4
  %inc.i = add i32 %44, 1
  store i32 %inc.i, ptr %sg_data, align 4
  %45 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %18, align 8
  br label %cleanup

cleanup:                                          ; preds = %cc_add_sg_entry.exit, %lor.lhs.false.cleanup_crit_edge, %do.end40, %do.end28, %if.end16.cleanup_crit_edge, %cc_dma_buf_type.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end28 ], [ %call18, %if.end16.cleanup_crit_edge ], [ 0, %cc_dma_buf_type.exit ], [ -12, %do.end40 ], [ 0, %cc_add_sg_entry.exit ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_aead_chain_iv(ptr nocapture noundef readonly %drvdata, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_iv_size2 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8
  %0 = ptrtoint ptr %hw_iv_size2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_iv_size2, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iv, align 32
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gen_ctx = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 32
  %6 = ptrtoint ptr %gen_ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %gen_ctx, align 4
  %iv6 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 36
  %7 = ptrtoint ptr %iv6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %iv6, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2592, i32 3264
  %call8 = tail call ptr @kmemdup(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %cond.i) #6
  %gen_ctx9 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 32
  %iv10 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 36
  %10 = ptrtoint ptr %iv10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %iv10, align 4
  %tobool13.not = icmp eq ptr %call8, null
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call8) #6
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end15
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !209

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #6
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %15 = ptrtoint ptr %gen_ctx9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %gen_ctx9, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #6
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %if.end15
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef nonnull %call8, i32 noundef %1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %17 = ptrtoint ptr %call8 to i32
  %sub.i = add i32 %17, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %16, i32 %shr.i
  %and.i1 = and i32 %17, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i, i32 noundef %and.i1, i32 noundef %1, i32 noundef 0, i32 noundef 0) #6
  %18 = ptrtoint ptr %gen_ctx9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call41.i, ptr %gen_ctx9, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %do.body32

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  %19 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iv, align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7, i32 noundef %1, ptr noundef %20) #9
  %21 = ptrtoint ptr %iv10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iv10, align 4
  tail call void @kfree_sensitive(ptr noundef %22) #6
  %23 = ptrtoint ptr %iv10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %iv10, align 4
  br label %cleanup

do.body32:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_chain_iv.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_chain_iv, %if.then38)) #6
          to label %cleanup [label %if.then38], !srcloc !208

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iv, align 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_chain_iv.__UNIQUE_ID_ddebug457, ptr noundef %dev.i, ptr noundef nonnull @.str.11, i32 noundef %1, ptr noundef %25, ptr noundef %gen_ctx9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %do.body32, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ -12, %do.end ], [ 0, %if.then38 ], [ 0, %if.then ], [ 0, %do.body32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_aead_chain_data(ptr nocapture noundef readonly %drvdata, ptr noundef %req, ptr noundef %sg_data, i1 noundef zeroext %do_chain) unnamed_addr #0 align 64 {
entry:
  %src_last_bytes = alloca i32, align 4
  %dst_last_bytes = alloca i32, align 4
  %dst_mapped_nents = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %op_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 40
  %2 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op_type, align 4
  %req_authsize = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 32
  %4 = ptrtoint ptr %req_authsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req_authsize, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src_last_bytes) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_last_bytes) #6
  %6 = ptrtoint ptr %dst_last_bytes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dst_last_bytes, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_mapped_nents) #6
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %assoclen, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %tobool.not = icmp eq ptr %sg_data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cryptlen, align 4
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src, align 4
  %src_sgl = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 1
  %13 = ptrtoint ptr %src_sgl to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %src_sgl, align 8
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %14 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dst, align 8
  %dst_sgl = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 2
  %16 = ptrtoint ptr %dst_sgl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %dst_sgl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %spec.select = select i1 %cmp, i32 %5, i32 0
  %add = add i32 %8, %spec.select
  %add4 = add i32 %add, %10
  %17 = ptrtoint ptr %src_last_bytes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %src_last_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4)
  %tobool.not19.i = icmp eq i32 %add4, 0
  %tobool1.not20.i = icmp eq ptr %12, null
  %or.cond21.i = or i1 %tobool1.not20.i, %tobool.not19.i
  br i1 %or.cond21.i, label %if.end.do.body.i_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %sg_list.addr.024.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %12, %if.end.while.body.i_crit_edge ]
  %nbytes.addr.023.i = phi i32 [ %20, %while.body.i.while.body.i_crit_edge ], [ %add4, %if.end.while.body.i_crit_edge ]
  %nents.022.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %inc.i = add i32 %nents.022.i, 1
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg_list.addr.024.i, i32 0, i32 2
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 4
  %20 = tail call i32 @llvm.usub.sat.i32(i32 %nbytes.addr.023.i, i32 %19) #6
  %call.i = tail call ptr @sg_next(ptr noundef nonnull %sg_list.addr.024.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %nbytes.addr.023.i, i32 %19)
  %tobool.not.i = icmp ule i32 %nbytes.addr.023.i, %19
  %tobool1.not.i = icmp eq ptr %call.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %do.body.i.loopexit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.body.i.loopexit:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %src_last_bytes to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %nbytes.addr.023.i, ptr %src_last_bytes, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.loopexit, %if.end.do.body.i_crit_edge
  %nents.0.lcssa.i = phi i32 [ 0, %if.end.do.body.i_crit_edge ], [ %inc.i, %do.body.i.loopexit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_get_sgl_nents.__UNIQUE_ID_ddebug439, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_chain_data, %if.then.i)) #6
          to label %cc_get_sgl_nents.exit [label %if.then.i], !srcloc !208

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %src_last_bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_last_bytes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_get_sgl_nents.__UNIQUE_ID_ddebug439, ptr noundef %dev.i, ptr noundef nonnull @.str.56, i32 noundef %nents.0.lcssa.i, i32 noundef %23) #6
  br label %cc_get_sgl_nents.exit

cc_get_sgl_nents.exit:                            ; preds = %if.then.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents.0.lcssa.i)
  %tobool8.not28 = icmp eq i32 %nents.0.lcssa.i, 0
  br i1 %tobool8.not28, label %cc_get_sgl_nents.exit.if.end23_crit_edge, label %land.rhs.preheader

cc_get_sgl_nents.exit.if.end23_crit_edge:         ; preds = %cc_get_sgl_nents.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.rhs.preheader:                               ; preds = %cc_get_sgl_nents.exit
  %24 = ptrtoint ptr %src_sgl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %src_sgl, align 8
  %length = getelementptr inbounds %struct.scatterlist, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %if.end16.land.rhs_crit_edge, %land.rhs.preheader
  %sg_index.031 = phi i32 [ %add20, %if.end16.land.rhs_crit_edge ], [ %27, %land.rhs.preheader ]
  %offset.030 = phi i32 [ %sub, %if.end16.land.rhs_crit_edge ], [ %8, %land.rhs.preheader ]
  %src_mapped_nents.029 = phi i32 [ %dec, %if.end16.land.rhs_crit_edge ], [ %nents.0.lcssa.i, %land.rhs.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sg_index.031, i32 %8)
  %cmp9.not = icmp ugt i32 %sg_index.031, %8
  br i1 %cmp9.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %dec = add i32 %src_mapped_nents.029, -1
  %28 = ptrtoint ptr %src_sgl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %src_sgl, align 8
  %length11 = getelementptr inbounds %struct.scatterlist, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %length11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length11, align 4
  %sub = sub i32 %offset.030, %31
  %call13 = tail call ptr @sg_next(ptr noundef %29) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %while.body.while.end_crit_edge, label %if.end16

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end16:                                         ; preds = %while.body
  %32 = ptrtoint ptr %src_sgl to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call13, ptr %src_sgl, align 8
  %length19 = getelementptr inbounds %struct.scatterlist, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %length19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length19, align 4
  %add20 = add i32 %34, %sg_index.031
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %if.end16.if.end23_crit_edge, label %if.end16.land.rhs_crit_edge

if.end16.land.rhs_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %src_mapped_nents.1 = phi i32 [ %dec, %while.body.while.end_crit_edge ], [ %src_mapped_nents.029, %land.rhs.while.end_crit_edge ]
  %offset.1 = phi i32 [ %sub, %while.body.while.end_crit_edge ], [ %offset.030, %land.rhs.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %src_mapped_nents.1)
  %cmp21 = icmp ugt i32 %src_mapped_nents.1, 128
  br i1 %cmp21, label %do.end, label %while.end.if.end23_crit_edge

while.end.if.end23_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.50, i32 noundef %src_mapped_nents.1, i32 noundef 128) #9
  br label %cleanup

if.end23:                                         ; preds = %while.end.if.end23_crit_edge, %if.end16.if.end23_crit_edge, %cc_get_sgl_nents.exit.if.end23_crit_edge
  %offset.123 = phi i32 [ %offset.1, %while.end.if.end23_crit_edge ], [ %8, %cc_get_sgl_nents.exit.if.end23_crit_edge ], [ %sub, %if.end16.if.end23_crit_edge ]
  %src_mapped_nents.122 = phi i32 [ %src_mapped_nents.1, %while.end.if.end23_crit_edge ], [ 0, %cc_get_sgl_nents.exit.if.end23_crit_edge ], [ 0, %if.end16.if.end23_crit_edge ]
  %nents = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 68
  %35 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %src_mapped_nents.122, ptr %nents, align 8
  %src_offset = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 3
  %36 = ptrtoint ptr %src_offset to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %offset.123, ptr %src_offset, align 16
  %37 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %src, align 4
  %39 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dst, align 8
  %cmp27.not = icmp eq ptr %38, %40
  br i1 %cmp27.not, label %if.end23.if.end43_crit_edge, label %if.then28

if.end23.if.end43_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then28:                                        ; preds = %if.end23
  %41 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %assoclen, align 8
  %43 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cryptlen, align 4
  %45 = sub i32 0, %5
  %size_for_map.0.p = select i1 %cmp, i32 %5, i32 %45
  %add31 = add i32 %42, %size_for_map.0.p
  %size_for_map.0 = add i32 %add31, %44
  %mapped_nents = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 80
  %call39 = call fastcc i32 @cc_map_sg(ptr noundef %dev.i, ptr noundef %40, i32 noundef %size_for_map.0, i32 noundef 0, ptr noundef %mapped_nents, i32 noundef 128, ptr noundef nonnull %dst_last_bytes, ptr noundef nonnull %dst_mapped_nents)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then28.if.end43_crit_edge, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then28.if.end43_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.end43:                                         ; preds = %if.then28.if.end43_crit_edge, %if.end23.if.end43_crit_edge
  %size_for_map.1 = phi i32 [ %size_for_map.0, %if.then28.if.end43_crit_edge ], [ %add4, %if.end23.if.end43_crit_edge ]
  %46 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dst, align 8
  %48 = ptrtoint ptr %dst_last_bytes to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %dst_last_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size_for_map.1)
  %tobool.not19.i1 = icmp eq i32 %size_for_map.1, 0
  %tobool1.not20.i2 = icmp eq ptr %47, null
  %or.cond21.i3 = or i1 %tobool.not19.i1, %tobool1.not20.i2
  br i1 %or.cond21.i3, label %if.end43.do.body.i15_crit_edge, label %if.end43.while.body.i13_crit_edge

if.end43.while.body.i13_crit_edge:                ; preds = %if.end43
  br label %while.body.i13

if.end43.do.body.i15_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i15

while.body.i13:                                   ; preds = %while.body.i13.while.body.i13_crit_edge, %if.end43.while.body.i13_crit_edge
  %sg_list.addr.024.i4 = phi ptr [ %call.i9, %while.body.i13.while.body.i13_crit_edge ], [ %47, %if.end43.while.body.i13_crit_edge ]
  %nbytes.addr.023.i5 = phi i32 [ %51, %while.body.i13.while.body.i13_crit_edge ], [ %size_for_map.1, %if.end43.while.body.i13_crit_edge ]
  %nents.022.i6 = phi i32 [ %inc.i7, %while.body.i13.while.body.i13_crit_edge ], [ 0, %if.end43.while.body.i13_crit_edge ]
  %inc.i7 = add i32 %nents.022.i6, 1
  %length.i8 = getelementptr inbounds %struct.scatterlist, ptr %sg_list.addr.024.i4, i32 0, i32 2
  %49 = ptrtoint ptr %length.i8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length.i8, align 4
  %51 = tail call i32 @llvm.usub.sat.i32(i32 %nbytes.addr.023.i5, i32 %50) #6
  %call.i9 = tail call ptr @sg_next(ptr noundef nonnull %sg_list.addr.024.i4) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %nbytes.addr.023.i5, i32 %50)
  %tobool.not.i10 = icmp ule i32 %nbytes.addr.023.i5, %50
  %tobool1.not.i11 = icmp eq ptr %call.i9, null
  %or.cond.i12 = select i1 %tobool.not.i10, i1 true, i1 %tobool1.not.i11
  br i1 %or.cond.i12, label %do.body.i15.loopexit, label %while.body.i13.while.body.i13_crit_edge

while.body.i13.while.body.i13_crit_edge:          ; preds = %while.body.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i13

do.body.i15.loopexit:                             ; preds = %while.body.i13
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %dst_last_bytes to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %nbytes.addr.023.i5, ptr %dst_last_bytes, align 4
  br label %do.body.i15

do.body.i15:                                      ; preds = %do.body.i15.loopexit, %if.end43.do.body.i15_crit_edge
  %nents.0.lcssa.i14 = phi i32 [ 0, %if.end43.do.body.i15_crit_edge ], [ %inc.i7, %do.body.i15.loopexit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_get_sgl_nents.__UNIQUE_ID_ddebug439, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_chain_data, %if.then.i16)) #6
          to label %cc_get_sgl_nents.exit17 [label %if.then.i16], !srcloc !208

if.then.i16:                                      ; preds = %do.body.i15
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %dst_last_bytes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dst_last_bytes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_get_sgl_nents.__UNIQUE_ID_ddebug439, ptr noundef %dev.i, ptr noundef nonnull @.str.56, i32 noundef %nents.0.lcssa.i14, i32 noundef %54) #6
  br label %cc_get_sgl_nents.exit17

cc_get_sgl_nents.exit17:                          ; preds = %if.then.i16, %do.body.i15
  %55 = ptrtoint ptr %dst_mapped_nents to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %nents.0.lcssa.i14, ptr %dst_mapped_nents, align 4
  %56 = ptrtoint ptr %dst_sgl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dst_sgl, align 4
  %length47 = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %length47 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %length47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents.0.lcssa.i14)
  %tobool49.not33 = icmp eq i32 %nents.0.lcssa.i14, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %8)
  %cmp51.not34 = icmp ugt i32 %59, %8
  %or.cond35 = select i1 %tobool49.not33, i1 true, i1 %cmp51.not34
  br i1 %or.cond35, label %cc_get_sgl_nents.exit17.while.end67_crit_edge, label %cc_get_sgl_nents.exit17.while.body53_crit_edge

cc_get_sgl_nents.exit17.while.body53_crit_edge:   ; preds = %cc_get_sgl_nents.exit17
  br label %while.body53

cc_get_sgl_nents.exit17.while.end67_crit_edge:    ; preds = %cc_get_sgl_nents.exit17
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end67

while.body53:                                     ; preds = %if.end62.while.body53_crit_edge, %cc_get_sgl_nents.exit17.while.body53_crit_edge
  %sg_index.138 = phi i32 [ %add66, %if.end62.while.body53_crit_edge ], [ %59, %cc_get_sgl_nents.exit17.while.body53_crit_edge ]
  %offset.237 = phi i32 [ %sub57, %if.end62.while.body53_crit_edge ], [ %8, %cc_get_sgl_nents.exit17.while.body53_crit_edge ]
  %dec543236 = phi i32 [ %dec54, %if.end62.while.body53_crit_edge ], [ %nents.0.lcssa.i14, %cc_get_sgl_nents.exit17.while.body53_crit_edge ]
  %dec54 = add i32 %dec543236, -1
  %60 = ptrtoint ptr %dst_sgl to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dst_sgl, align 4
  %length56 = getelementptr inbounds %struct.scatterlist, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %length56 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %length56, align 4
  %sub57 = sub i32 %offset.237, %63
  %call59 = tail call ptr @sg_next(ptr noundef %61) #6
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %while.body53.while.end67_crit_edge, label %if.end62

while.body53.while.end67_crit_edge:               ; preds = %while.body53
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end67

if.end62:                                         ; preds = %while.body53
  %64 = ptrtoint ptr %dst_sgl to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call59, ptr %dst_sgl, align 4
  %length65 = getelementptr inbounds %struct.scatterlist, ptr %call59, i32 0, i32 2
  %65 = ptrtoint ptr %length65 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %length65, align 4
  %add66 = add i32 %66, %sg_index.138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec54)
  %tobool49.not = icmp eq i32 %dec54, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add66, i32 %8)
  %cmp51.not = icmp ugt i32 %add66, %8
  %or.cond = select i1 %tobool49.not, i1 true, i1 %cmp51.not
  br i1 %or.cond, label %if.end62.while.end67_crit_edge, label %if.end62.while.body53_crit_edge

if.end62.while.body53_crit_edge:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body53

if.end62.while.end67_crit_edge:                   ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end67

while.end67:                                      ; preds = %if.end62.while.end67_crit_edge, %while.body53.while.end67_crit_edge, %cc_get_sgl_nents.exit17.while.end67_crit_edge
  %67 = phi i32 [ %nents.0.lcssa.i14, %cc_get_sgl_nents.exit17.while.end67_crit_edge ], [ %dec54, %while.body53.while.end67_crit_edge ], [ %dec54, %if.end62.while.end67_crit_edge ]
  %offset.3 = phi i32 [ %8, %cc_get_sgl_nents.exit17.while.end67_crit_edge ], [ %sub57, %while.body53.while.end67_crit_edge ], [ %sub57, %if.end62.while.end67_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %67)
  %cmp68 = icmp ugt i32 %67, 128
  br i1 %cmp68, label %do.end72, label %if.end73

do.end72:                                         ; preds = %while.end67
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.50, i32 noundef %67, i32 noundef 128) #9
  br label %cleanup

if.end73:                                         ; preds = %while.end67
  %nents75 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9
  %68 = ptrtoint ptr %nents75 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %nents75, align 8
  %dst_offset = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 4
  %69 = ptrtoint ptr %dst_offset to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %offset.3, ptr %dst_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %src_mapped_nents.122)
  %cmp76 = icmp ugt i32 %src_mapped_nents.122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp77 = icmp ugt i32 %67, 1
  %brmerge = or i1 %cmp77, %do_chain
  %or.cond24 = select i1 %cmp76, i1 true, i1 %brmerge
  %data_buff_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 2
  br i1 %or.cond24, label %if.then80, label %if.else82

if.then80:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %data_buff_type to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %data_buff_type, align 4
  call fastcc void @cc_prepare_aead_data_mlli(ptr noundef %drvdata, ptr noundef %req, ptr noundef nonnull %sg_data, ptr noundef nonnull %src_last_bytes, ptr noundef nonnull %dst_last_bytes)
  br label %cleanup

if.else82:                                        ; preds = %if.end73
  %71 = ptrtoint ptr %data_buff_type to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %data_buff_type, align 4
  %72 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %op_type, align 4
  %74 = ptrtoint ptr %req_authsize to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %req_authsize, align 4
  %is_icv_fragmented.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 40
  %76 = ptrtoint ptr %is_icv_fragmented.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %is_icv_fragmented.i, align 4
  %77 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %src, align 4
  %79 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dst, align 8
  %cmp.i = icmp eq ptr %78, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp1.i = icmp eq i32 %73, 1
  %or.cond.i18 = select i1 %cmp.i, i1 true, i1 %cmp1.i
  %sg.0.in.i = select i1 %or.cond.i18, ptr %src_sgl, ptr %dst_sgl
  %81 = ptrtoint ptr %src_last_bytes to i32
  call void @__asan_load4_noabort(i32 %81)
  %src_last_bytes.val = load i32, ptr %src_last_bytes, align 4
  %82 = ptrtoint ptr %dst_last_bytes to i32
  call void @__asan_load4_noabort(i32 %82)
  %dst_last_bytes.val = load i32, ptr %dst_last_bytes, align 4
  %.pn.i = select i1 %or.cond.i18, i32 %src_last_bytes.val, i32 %dst_last_bytes.val
  %offset.0.i = sub i32 %.pn.i, %75
  %83 = ptrtoint ptr %sg.0.in.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %sg.0.i = load ptr, ptr %sg.0.in.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0.i, i32 0, i32 3
  %84 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_address.i, align 4
  %add.i = add i32 %85, %offset.0.i
  %icv_dma_addr.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 8
  %86 = ptrtoint ptr %icv_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add.i, ptr %icv_dma_addr.i, align 4
  %87 = ptrtoint ptr %sg.0.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sg.0.i, align 4
  %and.i.i.i.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %cc_prepare_aead_data_dlli.exit, label %do.body2.i.i.i, !prof !209

do.body2.i.i.i:                                   ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !210
  unreachable

cc_prepare_aead_data_dlli.exit:                   ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i = and i32 %88, -4
  %89 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %89) #6
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0.i, i32 0, i32 1
  %90 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %91
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %offset.0.i
  %icv_virt_addr.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 28
  %92 = ptrtoint ptr %icv_virt_addr.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr.i, ptr %icv_virt_addr.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %cc_prepare_aead_data_dlli.exit, %if.then80, %do.end72, %if.then28.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %do.end72 ], [ -22, %entry.cleanup_crit_edge ], [ %call39, %if.then28.cleanup_crit_edge ], [ 0, %if.then80 ], [ 0, %cc_prepare_aead_data_dlli.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_mapped_nents) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_last_bytes) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_last_bytes) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @cc_update_aead_mlli_nents(ptr nocapture noundef readonly %drvdata, ptr noundef %req) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %assoc_buff_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 1
  %0 = ptrtoint ptr %assoc_buff_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoc_buff_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mlli_sram_addr = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 4
  %2 = ptrtoint ptr %mlli_sram_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mlli_sram_addr, align 4
  %assoc = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 44
  %4 = ptrtoint ptr %assoc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %assoc, align 8
  %mlli_nents = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 56
  %5 = ptrtoint ptr %mlli_nents to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mlli_nents, align 4
  %mul = shl i32 %6, 3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %curr_mlli_size.0 = phi i32 [ %mul, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %data_buff_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 2
  %7 = ptrtoint ptr %data_buff_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_buff_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp2 = icmp eq i32 %8, 2
  br i1 %cmp2, label %if.then3, label %if.end.if.end71_crit_edge

if.end.if.end71_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then3:                                         ; preds = %if.end
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %9 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst, align 8
  %cmp4 = icmp eq ptr %10, %12
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  %src6 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 60
  %mlli_nents7 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 72
  %13 = ptrtoint ptr %mlli_nents7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mlli_nents7, align 4
  %dst8 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 76
  %mlli_nents9 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %mlli_nents9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %mlli_nents9, align 4
  %mlli_sram_addr10 = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 4
  %16 = ptrtoint ptr %mlli_sram_addr10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mlli_sram_addr10, align 4
  %add = add i32 %17, %curr_mlli_size.0
  %18 = ptrtoint ptr %src6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %src6, align 8
  %19 = ptrtoint ptr %dst8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %dst8, align 8
  %is_single_pass = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 41
  %20 = ptrtoint ptr %is_single_pass to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_single_pass, align 1, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %if.then5.if.end71.sink.split_crit_edge, label %if.then5.if.end71_crit_edge

if.then5.if.end71_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then5.if.end71.sink.split_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.sink.split

if.else:                                          ; preds = %if.then3
  %op_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 40
  %22 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %op_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp24 = icmp eq i32 %23, 1
  %mlli_sram_addr26 = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 4
  %24 = ptrtoint ptr %mlli_sram_addr26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mlli_sram_addr26, align 4
  %add27 = add i32 %25, %curr_mlli_size.0
  br i1 %cmp24, label %if.then25, label %if.else47

if.then25:                                        ; preds = %if.else
  %src28 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 60
  %26 = ptrtoint ptr %src28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add27, ptr %src28, align 8
  %mlli_nents33 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 72
  %27 = ptrtoint ptr %mlli_nents33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mlli_nents33, align 4
  %mul34 = shl i32 %28, 3
  %add35 = add i32 %mul34, %add27
  %dst36 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 76
  %29 = ptrtoint ptr %dst36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add35, ptr %dst36, align 8
  %is_single_pass38 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 41
  %30 = ptrtoint ptr %is_single_pass38 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_single_pass38, align 1, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool39.not = icmp eq i8 %31, 0
  br i1 %tobool39.not, label %if.then25.if.end71.sink.split_crit_edge, label %if.then25.if.end71_crit_edge

if.then25.if.end71_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then25.if.end71.sink.split_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.sink.split

if.else47:                                        ; preds = %if.else
  %dst50 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 76
  %32 = ptrtoint ptr %dst50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add27, ptr %dst50, align 8
  %mlli_nents55 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %mlli_nents55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mlli_nents55, align 4
  %mul56 = shl i32 %34, 3
  %add57 = add i32 %mul56, %add27
  %src58 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 60
  %35 = ptrtoint ptr %src58 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add57, ptr %src58, align 8
  %is_single_pass60 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 41
  %36 = ptrtoint ptr %is_single_pass60 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_single_pass60, align 1, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool61.not = icmp eq i8 %37, 0
  br i1 %tobool61.not, label %if.else47.if.end71.sink.split_crit_edge, label %if.else47.if.end71_crit_edge

if.else47.if.end71_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.else47.if.end71.sink.split_crit_edge:          ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.sink.split

if.end71.sink.split:                              ; preds = %if.else47.if.end71.sink.split_crit_edge, %if.then25.if.end71.sink.split_crit_edge, %if.then5.if.end71.sink.split_crit_edge
  %.sink105 = phi i32 [ %14, %if.then5.if.end71.sink.split_crit_edge ], [ %28, %if.then25.if.end71.sink.split_crit_edge ], [ %34, %if.else47.if.end71.sink.split_crit_edge ]
  %mlli_nents44 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 56
  %38 = ptrtoint ptr %mlli_nents44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mlli_nents44, align 4
  %add22 = add i32 %39, %.sink105
  store i32 %add22, ptr %mlli_nents44, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end71.sink.split, %if.else47.if.end71_crit_edge, %if.then25.if.end71_crit_edge, %if.then5.if.end71_crit_edge, %if.end.if.end71_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_map_hash_request_final(ptr nocapture noundef readonly %drvdata, ptr noundef %ctx, ptr noundef %src, i32 noundef %nbytes, i1 noundef zeroext %do_update, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %sg_data = alloca %struct.buffer_array, align 4
  %dummy = alloca i32, align 4
  %mapped_nents = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %buff_index.i = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 16
  %2 = ptrtoint ptr %buff_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buff_index.i, align 8
  %arrayidx.i = getelementptr [2 x [128 x i8]], ptr %ctx, i32 0, i32 %3
  %arrayidx.i144 = getelementptr %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 15, i32 %3
  %mlli_params3 = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sg_data) #6
  %4 = getelementptr inbounds i8, ptr %sg_data, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #6
  %6 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dummy, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapped_nents) #6
  %7 = ptrtoint ptr %mapped_nents to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mapped_nents, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_map_hash_request_final.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_hash_request_final, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i144, align 4
  %10 = ptrtoint ptr %buff_index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buff_index.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_map_hash_request_final.__UNIQUE_ID_ddebug463, ptr noundef %dev.i, ptr noundef nonnull @.str.37, ptr noundef %arrayidx.i, i32 noundef %9, i32 noundef %nbytes, ptr noundef %src, i32 noundef %11) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data_dma_buf_type = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 10
  %12 = ptrtoint ptr %data_dma_buf_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %data_dma_buf_type, align 4
  %13 = ptrtoint ptr %mlli_params3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %mlli_params3, align 4
  %14 = ptrtoint ptr %sg_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %sg_data, align 4
  %in_nents = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 20
  %15 = ptrtoint ptr %in_nents to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %in_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %cmp = icmp eq i32 %nbytes, 0
  %16 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp8 = icmp eq i32 %17, 0
  br i1 %cmp, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %do.end
  br i1 %cmp8, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.then12_crit_edge

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %do.end
  br i1 %cmp8, label %if.end10.if.end17_crit_edge, label %if.end10.if.then12_crit_edge

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %land.lhs.true.if.then12_crit_edge
  %call13 = call fastcc i32 @cc_set_hash_buf(ptr noundef %dev.i, ptr noundef %ctx, ptr noundef %arrayidx.i, i32 noundef %17, ptr noundef nonnull %sg_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %src, null
  %or.cond = or i1 %tobool18.not, %cmp
  %do_update.not = xor i1 %do_update, true
  %brmerge = or i1 %or.cond, %do_update.not
  br i1 %brmerge, label %if.end43, label %if.then23

if.then23:                                        ; preds = %if.end17
  %call25 = call fastcc i32 @cc_map_sg(ptr noundef %dev.i, ptr noundef nonnull %src, i32 noundef %nbytes, i32 noundef 1, ptr noundef %in_nents, i32 noundef 128, ptr noundef nonnull %dummy, ptr noundef nonnull %mapped_nents)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true30, label %if.then23.unmap_curr_buff_crit_edge

if.then23.unmap_curr_buff_crit_edge:              ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %unmap_curr_buff

land.lhs.true30:                                  ; preds = %if.then23
  %18 = ptrtoint ptr %mapped_nents to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mapped_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp31 = icmp eq i32 %19, 1
  br i1 %cmp31, label %land.lhs.true32, label %land.lhs.true30.if.end43.thread_crit_edge

land.lhs.true30.if.end43.thread_crit_edge:        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.thread

land.lhs.true32:                                  ; preds = %land.lhs.true30
  %20 = ptrtoint ptr %data_dma_buf_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_dma_buf_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp34 = icmp eq i32 %21, 0
  br i1 %cmp34, label %if.end43.thread151, label %land.lhs.true32.if.end43.thread_crit_edge

land.lhs.true32.if.end43.thread_crit_edge:        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.thread

if.end43.thread151:                               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  %buff_sg = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 18
  %22 = call ptr @memcpy(ptr %buff_sg, ptr %src, i32 20)
  %length = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 18, i32 0, i32 2
  %23 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %nbytes, ptr %length, align 8
  %curr_sg = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 19
  %24 = ptrtoint ptr %curr_sg to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buff_sg, ptr %curr_sg, align 8
  %25 = ptrtoint ptr %data_dma_buf_type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %data_dma_buf_type, align 4
  br label %if.end53

if.end43.thread:                                  ; preds = %land.lhs.true32.if.end43.thread_crit_edge, %land.lhs.true30.if.end43.thread_crit_edge
  %26 = ptrtoint ptr %data_dma_buf_type to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %data_dma_buf_type, align 4
  br label %if.then46

if.end43:                                         ; preds = %if.end17
  %27 = ptrtoint ptr %data_dma_buf_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr149 = load i32, ptr %data_dma_buf_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr149)
  %cmp45 = icmp eq i32 %.pr149, 2
  br i1 %cmp45, label %if.end43.if.then46_crit_edge, label %if.end43.if.end53_crit_edge

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.end43.if.then46_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.then46:                                        ; preds = %if.end43.if.then46_crit_edge, %if.end43.thread
  %mlli_buffs_pool = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 5
  %28 = ptrtoint ptr %mlli_buffs_pool to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mlli_buffs_pool, align 4
  %30 = ptrtoint ptr %mlli_params3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %mlli_params3, align 4
  %31 = ptrtoint ptr %in_nents to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %in_nents, align 4
  %mlli_nents = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 21
  %33 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sg_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_add_sg_entry.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_hash_request_final, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !208

if.then.i:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_add_sg_entry.__UNIQUE_ID_ddebug444, ptr noundef %dev.i, ptr noundef nonnull @.str.58, i32 noundef %34, i32 noundef %32, ptr noundef %src, i32 noundef %nbytes, i32 noundef 1) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then46
  %arrayidx.i145 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 3, i32 %34
  %35 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %arrayidx.i145, align 4
  %arrayidx7.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 1, i32 %34
  %36 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %src, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 2, i32 %34
  %37 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 4, i32 %34
  %38 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %nbytes, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 5, i32 %34
  %39 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %arrayidx11.i, align 1
  %arrayidx14.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 6, i32 %34
  %40 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %mlli_nents, ptr %arrayidx14.i, align 4
  %tobool17.not.i = icmp eq ptr %mlli_nents, null
  br i1 %tobool17.not.i, label %do.end.i.cc_add_sg_entry.exit_crit_edge, label %if.then18.i

do.end.i.cc_add_sg_entry.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_add_sg_entry.exit

if.then18.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %mlli_nents to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %mlli_nents, align 4
  br label %cc_add_sg_entry.exit

cc_add_sg_entry.exit:                             ; preds = %if.then18.i, %do.end.i.cc_add_sg_entry.exit_crit_edge
  %42 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sg_data, align 4
  %inc.i = add i32 %43, 1
  store i32 %inc.i, ptr %sg_data, align 4
  %call49 = call fastcc i32 @cc_generate_mlli(ptr noundef %dev.i, ptr noundef nonnull %sg_data, ptr noundef %mlli_params3, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %cc_add_sg_entry.exit.if.end53_crit_edge, label %fail_unmap_din

cc_add_sg_entry.exit.if.end53_crit_edge:          ; preds = %cc_add_sg_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.end53:                                         ; preds = %cc_add_sg_entry.exit.if.end53_crit_edge, %if.end43.if.end53_crit_edge, %if.end43.thread151
  %44 = ptrtoint ptr %buff_index.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buff_index.i, align 8
  %xor = xor i32 %45, 1
  store i32 %xor, ptr %buff_index.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_map_hash_request_final.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_hash_request_final, %if.then68)) #6
          to label %cleanup [label %if.then68], !srcloc !208

if.then68:                                        ; preds = %if.end53
  %46 = ptrtoint ptr %data_dma_buf_type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_dma_buf_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %48 = icmp ult i32 %47, 3
  br i1 %48, label %switch.lookup, label %if.then68.cc_dma_buf_type.exit_crit_edge

if.then68.cc_dma_buf_type.exit_crit_edge:         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_dma_buf_type.exit

switch.lookup:                                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.cc_map_hash_request_final, i32 0, i32 %47
  %49 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cc_dma_buf_type.exit

cc_dma_buf_type.exit:                             ; preds = %switch.lookup, %if.then68.cc_dma_buf_type.exit_crit_edge
  %retval.0.i146 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.69, %if.then68.cc_dma_buf_type.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_map_hash_request_final.__UNIQUE_ID_ddebug464, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull %retval.0.i146) #6
  br label %cleanup

fail_unmap_din:                                   ; preds = %cc_add_sg_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %in_nents to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %in_nents, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i, ptr noundef %src, i32 noundef %51, i32 noundef 1, i32 noundef 0) #6
  br label %unmap_curr_buff

unmap_curr_buff:                                  ; preds = %fail_unmap_din, %if.then23.unmap_curr_buff_crit_edge
  %rc.0 = phi i32 [ %call25, %if.then23.unmap_curr_buff_crit_edge ], [ %call49, %fail_unmap_din ]
  %52 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool75.not = icmp eq i32 %53, 0
  br i1 %tobool75.not, label %unmap_curr_buff.cleanup_crit_edge, label %if.then76

unmap_curr_buff.cleanup_crit_edge:                ; preds = %unmap_curr_buff
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then76:                                        ; preds = %unmap_curr_buff
  call void @__sanitizer_cov_trace_pc() #8
  %buff_sg77 = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 18
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i, ptr noundef %buff_sg77, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %unmap_curr_buff.cleanup_crit_edge, %cc_dma_buf_type.exit, %if.end53, %if.then12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call13, %if.then12.cleanup_crit_edge ], [ 0, %cc_dma_buf_type.exit ], [ %rc.0, %if.then76 ], [ %rc.0, %unmap_curr_buff.cleanup_crit_edge ], [ 0, %if.end53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapped_nents) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sg_data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_set_hash_buf(ptr noundef %dev, ptr noundef %areq_ctx, ptr noundef %curr_buff, i32 noundef %curr_buff_cnt, ptr nocapture noundef %sg_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_set_hash_buf.__UNIQUE_ID_ddebug447, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_set_hash_buf, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_set_hash_buf.__UNIQUE_ID_ddebug447, ptr noundef %dev, ptr noundef nonnull @.str.85, i32 noundef %curr_buff_cnt) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %buff_sg = getelementptr inbounds %struct.ahash_req_ctx, ptr %areq_ctx, i32 0, i32 18
  tail call void @sg_init_one(ptr noundef %buff_sg, ptr noundef %curr_buff, i32 noundef %curr_buff_cnt) #6
  %call5 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %buff_sg, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 1
  br i1 %cmp.not, label %do.body10, label %do.end8

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.86) #9
  br label %return

do.body10:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_set_hash_buf.__UNIQUE_ID_ddebug448, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_set_hash_buf, %if.then22)) #6
          to label %do.end36 [label %if.then22], !srcloc !208

if.then22:                                        ; preds = %do.body10
  %0 = ptrtoint ptr %buff_sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buff_sg, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_virt.exit, label %do.body2.i, !prof !209

do.body2.i:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !210
  unreachable

sg_virt.exit:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %dma_address = getelementptr inbounds %struct.ahash_req_ctx, ptr %areq_ctx, i32 0, i32 18, i32 0, i32 3
  %and.i = and i32 %1, -4
  %2 = inttoptr i32 %and.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %2) #6
  %offset.i = getelementptr inbounds %struct.ahash_req_ctx, ptr %areq_ctx, i32 0, i32 18, i32 0, i32 1
  %3 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %4
  %length = getelementptr inbounds %struct.ahash_req_ctx, ptr %areq_ctx, i32 0, i32 18, i32 0, i32 2
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_set_hash_buf.__UNIQUE_ID_ddebug448, ptr noundef %dev, ptr noundef nonnull @.str.73, ptr noundef %dma_address, ptr noundef %2, ptr noundef %add.ptr.i, i32 noundef %4, i32 noundef %6) #6
  br label %do.end36

do.end36:                                         ; preds = %sg_virt.exit, %do.body10
  %data_dma_buf_type = getelementptr inbounds %struct.ahash_req_ctx, ptr %areq_ctx, i32 0, i32 10
  %7 = ptrtoint ptr %data_dma_buf_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %data_dma_buf_type, align 4
  %curr_sg = getelementptr inbounds %struct.ahash_req_ctx, ptr %areq_ctx, i32 0, i32 19
  %8 = ptrtoint ptr %curr_sg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buff_sg, ptr %curr_sg, align 8
  %in_nents = getelementptr inbounds %struct.ahash_req_ctx, ptr %areq_ctx, i32 0, i32 20
  %9 = ptrtoint ptr %in_nents to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %in_nents, align 4
  %10 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_add_sg_entry.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_set_hash_buf, %if.then.i)) #6
          to label %cc_add_sg_entry.exit [label %if.then.i], !srcloc !208

if.then.i:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_add_sg_entry.__UNIQUE_ID_ddebug444, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %11, i32 noundef 1, ptr noundef %buff_sg, i32 noundef %curr_buff_cnt, i32 noundef 0) #6
  br label %cc_add_sg_entry.exit

cc_add_sg_entry.exit:                             ; preds = %if.then.i, %do.end36
  %arrayidx.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 3, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %arrayidx.i, align 4
  %arrayidx7.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 1, i32 %11
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buff_sg, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 2, i32 %11
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 4, i32 %11
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %curr_buff_cnt, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 5, i32 %11
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx11.i, align 1
  %arrayidx14.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 6, i32 %11
  %17 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx14.i, align 4
  %18 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sg_data, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %sg_data, align 4
  br label %return

return:                                           ; preds = %cc_add_sg_entry.exit, %do.end8
  %retval.0 = phi i32 [ -12, %do.end8 ], [ 0, %cc_add_sg_entry.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_map_hash_request_update(ptr nocapture noundef readonly %drvdata, ptr noundef %ctx, ptr noundef %src, i32 noundef %nbytes, i32 noundef %block_size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %sg_data = alloca %struct.buffer_array, align 4
  %dummy = alloca i32, align 4
  %mapped_nents = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %buff_index.i = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 16
  %2 = ptrtoint ptr %buff_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buff_index.i, align 8
  %arrayidx.i = getelementptr [2 x [128 x i8]], ptr %ctx, i32 0, i32 %3
  %arrayidx.i232 = getelementptr %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 15, i32 %3
  %xor.i = xor i32 %3, 1
  %arrayidx.i234 = getelementptr [2 x [128 x i8]], ptr %ctx, i32 0, i32 %xor.i
  %arrayidx.i237 = getelementptr %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 15, i32 %xor.i
  %mlli_params5 = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 22
  %4 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i232, align 4
  %add = add i32 %5, %nbytes
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sg_data) #6
  %6 = getelementptr inbounds i8, ptr %sg_data, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #6
  %8 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dummy, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapped_nents) #6
  %9 = ptrtoint ptr %mapped_nents to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mapped_nents, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_map_hash_request_update.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_hash_request_update, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i232, align 4
  %12 = ptrtoint ptr %buff_index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buff_index.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_map_hash_request_update.__UNIQUE_ID_ddebug465, ptr noundef %dev.i, ptr noundef nonnull @.str.40, ptr noundef %arrayidx.i, i32 noundef %11, i32 noundef %nbytes, ptr noundef %src, i32 noundef %13) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data_dma_buf_type = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 10
  %14 = ptrtoint ptr %data_dma_buf_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %data_dma_buf_type, align 4
  %15 = ptrtoint ptr %mlli_params5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %mlli_params5, align 4
  %curr_sg = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 19
  %16 = ptrtoint ptr %curr_sg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %curr_sg, align 8
  %17 = ptrtoint ptr %sg_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sg_data, align 4
  %in_nents = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 20
  %18 = ptrtoint ptr %in_nents to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %in_nents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %block_size)
  %cmp = icmp ult i32 %add, %block_size
  br i1 %cmp, label %do.body10, label %if.end32

do.body10:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_map_hash_request_update.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_hash_request_update, %if.then22)) #6
          to label %do.end25 [label %if.then22], !srcloc !208

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i232, align 4
  %arrayidx = getelementptr i8, ptr %arrayidx.i, i32 %20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_map_hash_request_update.__UNIQUE_ID_ddebug466, ptr noundef %dev.i, ptr noundef nonnull @.str.41, ptr noundef %arrayidx.i, i32 noundef %20, ptr noundef %arrayidx) #6
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body10
  %conv = zext i32 %nbytes to i64
  %call26 = tail call i32 @sg_nents_for_len(ptr noundef %src, i64 noundef %conv) #6
  %21 = ptrtoint ptr %in_nents to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call26, ptr %in_nents, align 4
  %22 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i232, align 4
  %arrayidx29 = getelementptr i8, ptr %arrayidx.i, i32 %23
  %call30 = tail call i32 @sg_copy_to_buffer(ptr noundef %src, i32 noundef %call26, ptr noundef %arrayidx29, i32 noundef %nbytes) #6
  %24 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i232, align 4
  %add31 = add i32 %25, %nbytes
  store i32 %add31, ptr %arrayidx.i232, align 4
  br label %cleanup

if.end32:                                         ; preds = %do.end
  %sub = add i32 %block_size, -1
  %and = and i32 %add, %sub
  %26 = ptrtoint ptr %arrayidx.i237 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and, ptr %arrayidx.i237, align 4
  %sub33 = sub i32 %add, %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_map_hash_request_update.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_hash_request_update, %if.then46)) #6
          to label %do.end49 [label %if.then46], !srcloc !208

if.then46:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %arrayidx.i237 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i237, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_map_hash_request_update.__UNIQUE_ID_ddebug467, ptr noundef %dev.i, ptr noundef nonnull @.str.42, i32 noundef %28, i32 noundef %sub33) #6
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %if.end32
  %29 = ptrtoint ptr %arrayidx.i237 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i237, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool50.not = icmp eq i32 %30, 0
  br i1 %tobool50.not, label %do.end49.if.end70_crit_edge, label %do.body52

do.end49.if.end70_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

do.body52:                                        ; preds = %do.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_map_hash_request_update.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_hash_request_update, %if.then64)) #6
          to label %do.end68 [label %if.then64], !srcloc !208

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i232, align 4
  %sub65 = sub i32 %sub33, %32
  %33 = ptrtoint ptr %arrayidx.i237 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i237, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_map_hash_request_update.__UNIQUE_ID_ddebug468, ptr noundef %dev.i, ptr noundef nonnull @.str.43, ptr noundef %arrayidx.i234, i32 noundef %sub65, i32 noundef %34) #6
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %do.body52
  %35 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i232, align 4
  %sub69 = sub i32 %sub33, %36
  %conv.i = zext i32 %nbytes to i64
  %call.i = tail call i32 @sg_nents_for_len(ptr noundef %src, i64 noundef %conv.i) #6
  %sub.i = add i32 %nbytes, 1
  %add.i = sub i32 %sub.i, %sub69
  %call2.i = tail call i32 @sg_copy_buffer(ptr noundef %src, i32 noundef %call.i, ptr noundef %arrayidx.i234, i32 noundef %add.i, i32 noundef %sub69, i1 noundef zeroext true) #6
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %do.end49.if.end70_crit_edge
  %swap_index.0 = phi i32 [ 1, %do.end68 ], [ 0, %do.end49.if.end70_crit_edge ]
  %37 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool71.not = icmp eq i32 %38, 0
  br i1 %tobool71.not, label %if.end70.if.end77_crit_edge, label %if.then72

if.end70.if.end77_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then72:                                        ; preds = %if.end70
  %call73 = call fastcc i32 @cc_set_hash_buf(ptr noundef %dev.i, ptr noundef %ctx, ptr noundef %arrayidx.i, i32 noundef %38, ptr noundef nonnull %sg_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then72.if.end77_crit_edge, label %if.then72.cleanup_crit_edge

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then72.if.end77_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.end77:                                         ; preds = %if.then72.if.end77_crit_edge, %if.end70.if.end77_crit_edge
  %swap_index.1 = phi i32 [ %swap_index.0, %if.end70.if.end77_crit_edge ], [ 1, %if.then72.if.end77_crit_edge ]
  %39 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i232, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub33, i32 %40)
  %cmp78 = icmp ugt i32 %sub33, %40
  br i1 %cmp78, label %if.then80, label %if.end101

if.then80:                                        ; preds = %if.end77
  %sub81 = sub i32 %sub33, %40
  %call83 = call fastcc i32 @cc_map_sg(ptr noundef %dev.i, ptr noundef %src, i32 noundef %sub81, i32 noundef 1, ptr noundef %in_nents, i32 noundef 128, ptr noundef nonnull %dummy, ptr noundef nonnull %mapped_nents)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.then80.unmap_curr_buff_crit_edge

if.then80.unmap_curr_buff_crit_edge:              ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %unmap_curr_buff

if.end86:                                         ; preds = %if.then80
  %41 = ptrtoint ptr %mapped_nents to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mapped_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp87 = icmp eq i32 %42, 1
  br i1 %cmp87, label %land.lhs.true, label %if.end86.if.end101.thread_crit_edge

if.end86.if.end101.thread_crit_edge:              ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101.thread

land.lhs.true:                                    ; preds = %if.end86
  %43 = ptrtoint ptr %data_dma_buf_type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_dma_buf_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp90 = icmp eq i32 %44, 0
  br i1 %cmp90, label %if.end101.thread244, label %land.lhs.true.if.end101.thread_crit_edge

land.lhs.true.if.end101.thread_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101.thread

if.end101.thread244:                              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %buff_sg = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 18
  %45 = call ptr @memcpy(ptr %buff_sg, ptr %src, i32 20)
  %length = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 18, i32 0, i32 2
  %46 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub33, ptr %length, align 8
  %47 = ptrtoint ptr %data_dma_buf_type to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %data_dma_buf_type, align 4
  %48 = ptrtoint ptr %curr_sg to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buff_sg, ptr %curr_sg, align 8
  br label %if.end113

if.end101.thread:                                 ; preds = %land.lhs.true.if.end101.thread_crit_edge, %if.end86.if.end101.thread_crit_edge
  %49 = ptrtoint ptr %data_dma_buf_type to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %data_dma_buf_type, align 4
  br label %if.then105

if.end101:                                        ; preds = %if.end77
  %50 = ptrtoint ptr %data_dma_buf_type to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr = load i32, ptr %data_dma_buf_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp103 = icmp eq i32 %.pr, 2
  br i1 %cmp103, label %if.end101.if.then105_crit_edge, label %if.end101.if.end113_crit_edge

if.end101.if.end113_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

if.end101.if.then105_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then105

if.then105:                                       ; preds = %if.end101.if.then105_crit_edge, %if.end101.thread
  %mlli_buffs_pool = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 5
  %51 = ptrtoint ptr %mlli_buffs_pool to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mlli_buffs_pool, align 4
  %53 = ptrtoint ptr %mlli_params5 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %mlli_params5, align 4
  %54 = ptrtoint ptr %in_nents to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %in_nents, align 4
  %56 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i232, align 4
  %sub108 = sub i32 %sub33, %57
  %mlli_nents = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 21
  %58 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sg_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_add_sg_entry.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_hash_request_update, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !208

if.then.i:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_add_sg_entry.__UNIQUE_ID_ddebug444, ptr noundef %dev.i, ptr noundef nonnull @.str.58, i32 noundef %59, i32 noundef %55, ptr noundef %src, i32 noundef %sub108, i32 noundef 1) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then105
  %arrayidx.i238 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 3, i32 %59
  %60 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %55, ptr %arrayidx.i238, align 4
  %arrayidx7.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 1, i32 %59
  %61 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %src, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 2, i32 %59
  %62 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 4, i32 %59
  %63 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub108, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 5, i32 %59
  %64 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %arrayidx11.i, align 1
  %arrayidx14.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 6, i32 %59
  %65 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %mlli_nents, ptr %arrayidx14.i, align 4
  %tobool17.not.i = icmp eq ptr %mlli_nents, null
  br i1 %tobool17.not.i, label %do.end.i.cc_add_sg_entry.exit_crit_edge, label %if.then18.i

do.end.i.cc_add_sg_entry.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_add_sg_entry.exit

if.then18.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %mlli_nents to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %mlli_nents, align 4
  br label %cc_add_sg_entry.exit

cc_add_sg_entry.exit:                             ; preds = %if.then18.i, %do.end.i.cc_add_sg_entry.exit_crit_edge
  %67 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sg_data, align 4
  %inc.i = add i32 %68, 1
  store i32 %inc.i, ptr %sg_data, align 4
  %call109 = call fastcc i32 @cc_generate_mlli(ptr noundef %dev.i, ptr noundef nonnull %sg_data, ptr noundef %mlli_params5, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %cc_add_sg_entry.exit.if.end113_crit_edge, label %fail_unmap_din

cc_add_sg_entry.exit.if.end113_crit_edge:         ; preds = %cc_add_sg_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

if.end113:                                        ; preds = %cc_add_sg_entry.exit.if.end113_crit_edge, %if.end101.if.end113_crit_edge, %if.end101.thread244
  %69 = ptrtoint ptr %buff_index.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %buff_index.i, align 8
  %xor = xor i32 %70, %swap_index.1
  store i32 %xor, ptr %buff_index.i, align 8
  br label %cleanup

fail_unmap_din:                                   ; preds = %cc_add_sg_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %in_nents to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %in_nents, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i, ptr noundef %src, i32 noundef %72, i32 noundef 1, i32 noundef 0) #6
  br label %unmap_curr_buff

unmap_curr_buff:                                  ; preds = %fail_unmap_din, %if.then80.unmap_curr_buff_crit_edge
  %rc.0 = phi i32 [ %call83, %if.then80.unmap_curr_buff_crit_edge ], [ %call109, %fail_unmap_din ]
  %73 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool117.not = icmp eq i32 %74, 0
  br i1 %tobool117.not, label %unmap_curr_buff.cleanup_crit_edge, label %if.then118

unmap_curr_buff.cleanup_crit_edge:                ; preds = %unmap_curr_buff
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then118:                                       ; preds = %unmap_curr_buff
  call void @__sanitizer_cov_trace_pc() #8
  %buff_sg119 = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 18
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i, ptr noundef %buff_sg119, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then118, %unmap_curr_buff.cleanup_crit_edge, %if.end113, %if.then72.cleanup_crit_edge, %do.end25
  %retval.0 = phi i32 [ 1, %do.end25 ], [ 0, %if.end113 ], [ %call73, %if.then72.cleanup_crit_edge ], [ %rc.0, %if.then118 ], [ %rc.0, %unmap_curr_buff.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapped_nents) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sg_data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cc_unmap_hash_request(ptr noundef %dev, ptr noundef %ctx, ptr noundef %src, i1 noundef zeroext %do_revert) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buff_index.i = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 16
  %0 = ptrtoint ptr %buff_index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buff_index.i, align 8
  %xor.i = xor i32 %1, 1
  %arrayidx.i = getelementptr %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 15, i32 %xor.i
  %mlli_params = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 22
  %2 = ptrtoint ptr %mlli_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlli_params, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %do.body

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_hash_request.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_unmap_hash_request, %if.then6)) #6
          to label %do.end [label %if.then6], !srcloc !208

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %mlli_dma_addr = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 22, i32 2
  %mlli_virt_addr = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 22, i32 1
  %4 = ptrtoint ptr %mlli_virt_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mlli_virt_addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_hash_request.__UNIQUE_ID_ddebug469, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef %mlli_dma_addr, ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %6 = ptrtoint ptr %mlli_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mlli_params, align 4
  %mlli_virt_addr12 = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 22, i32 1
  %8 = ptrtoint ptr %mlli_virt_addr12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mlli_virt_addr12, align 4
  %mlli_dma_addr14 = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 22, i32 2
  %10 = ptrtoint ptr %mlli_dma_addr14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mlli_dma_addr14, align 4
  tail call void @dma_pool_free(ptr noundef %7, ptr noundef %9, i32 noundef %11) #6
  br label %if.end15

if.end15:                                         ; preds = %do.end, %entry.if.end15_crit_edge
  %tobool16.not = icmp eq ptr %src, null
  br i1 %tobool16.not, label %if.end15.if.end37_crit_edge, label %land.lhs.true

if.end15.if.end37_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end15
  %in_nents = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 20
  %12 = ptrtoint ptr %in_nents to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool17.not = icmp eq i32 %13, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end37_crit_edge, label %do.body19

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.body19:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_hash_request.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_unmap_hash_request, %if.then31)) #6
          to label %do.end35 [label %if.then31], !srcloc !208

if.then31:                                        ; preds = %do.body19
  %14 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src, align 4
  %and.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !209

do.body2.i.i:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !210
  unreachable

sg_virt.exit:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i = and i32 %15, -4
  %16 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %16) #6
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %src, i32 0, i32 1
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %18
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %src, i32 0, i32 3
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %src, i32 0, i32 4
  %19 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_hash_request.__UNIQUE_ID_ddebug470, ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef %add.ptr.i, ptr noundef %dma_address, i32 noundef %20) #6
  br label %do.end35

do.end35:                                         ; preds = %sg_virt.exit, %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %in_nents to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %in_nents, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef nonnull %src, i32 noundef %22, i32 noundef 1, i32 noundef 0) #6
  br label %if.end37

if.end37:                                         ; preds = %do.end35, %land.lhs.true.if.end37_crit_edge, %if.end15.if.end37_crit_edge
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool38.not = icmp eq i32 %24, 0
  br i1 %tobool38.not, label %if.end37.if.end68_crit_edge, label %do.body40

if.end37.if.end68_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

do.body40:                                        ; preds = %if.end37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_hash_request.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_unmap_hash_request, %if.then52)) #6
          to label %do.end62 [label %if.then52], !srcloc !208

if.then52:                                        ; preds = %do.body40
  %buff_sg = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 18
  %25 = ptrtoint ptr %buff_sg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buff_sg, align 4
  %and.i.i.i97 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i97)
  %tobool.i.not.i.i98 = icmp eq i32 %and.i.i.i97, 0
  br i1 %tobool.i.not.i.i98, label %sg_virt.exit104, label %do.body2.i.i99, !prof !209

do.body2.i.i99:                                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !210
  unreachable

sg_virt.exit104:                                  ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i100 = and i32 %26, -4
  %27 = inttoptr i32 %and.i.i100 to ptr
  %call1.i101 = tail call ptr @page_address(ptr noundef %27) #6
  %offset.i102 = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 18, i32 0, i32 1
  %28 = ptrtoint ptr %offset.i102 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i102, align 4
  %add.ptr.i103 = getelementptr i8, ptr %call1.i101, i32 %29
  %dma_address56 = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 18, i32 0, i32 3
  %dma_length59 = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 18, i32 0, i32 4
  %30 = ptrtoint ptr %dma_length59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_length59, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_hash_request.__UNIQUE_ID_ddebug471, ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef %add.ptr.i103, ptr noundef %dma_address56, i32 noundef %31) #6
  br label %do.end62

do.end62:                                         ; preds = %sg_virt.exit104, %do.body40
  %buff_sg63 = getelementptr inbounds %struct.ahash_req_ctx, ptr %ctx, i32 0, i32 18
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %buff_sg63, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  br i1 %do_revert, label %if.else, label %if.then66

if.then66:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx.i, align 4
  br label %if.end68

if.else:                                          ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %buff_index.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buff_index.i, align 8
  %xor = xor i32 %34, 1
  store i32 %xor, ptr %buff_index.i, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then66, %if.end37.if.end68_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_buffer_mgr_init(ptr nocapture noundef %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call1 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.47, ptr noundef %dev.i, i32 noundef 2112, i32 noundef 4, i32 noundef 0) #6
  %mlli_buffs_pool = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 5
  %2 = ptrtoint ptr %mlli_buffs_pool to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %mlli_buffs_pool, align 4
  %tobool.not = icmp eq ptr %call1, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_buffer_mgr_fini(ptr nocapture noundef readonly %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mlli_buffs_pool = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 5
  %0 = ptrtoint ptr %mlli_buffs_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlli_buffs_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dump_byte_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_render_buff_to_mlli(ptr noundef %dev, i32 noundef %buff_dma, i32 noundef %buff_size, ptr nocapture noundef %curr_nents, ptr nocapture noundef %mlli_entry_pp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %curr_nents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr_nents, align 4
  %div = udiv i32 %buff_size, 65535
  %add = add nuw nsw i32 %div, 1
  %add1 = add i32 %add, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 264, i32 %add1)
  %cmp = icmp ugt i32 %add1, 264
  br i1 %cmp, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %2 = ptrtoint ptr %mlli_entry_pp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlli_entry_pp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %buff_size)
  %cmp264 = icmp ugt i32 %buff_size, 65535
  br i1 %cmp264, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %add1, i32 noundef 264) #9
  br label %cleanup

while.body:                                       ; preds = %do.end10.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %buff_dma.addr.068 = phi i32 [ %add11, %do.end10.while.body_crit_edge ], [ %buff_dma, %while.cond.preheader.while.body_crit_edge ]
  %buff_size.addr.067 = phi i32 [ %sub, %do.end10.while.body_crit_edge ], [ %buff_size, %while.cond.preheader.while.body_crit_edge ]
  %mlli_entry_p.065 = phi ptr [ %add.ptr, %do.end10.while.body_crit_edge ], [ %3, %while.cond.preheader.while.body_crit_edge ]
  %4 = ptrtoint ptr %mlli_entry_p.065 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %buff_dma.addr.068, ptr %mlli_entry_p.065, align 4
  %arrayidx.i = getelementptr i32, ptr %mlli_entry_p.065, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %6, 65535
  store i32 %or.i, ptr %arrayidx.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_render_buff_to_mlli.__UNIQUE_ID_ddebug440, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_render_buff_to_mlli, %if.then6)) #6
          to label %do.end10 [label %if.then6], !srcloc !208

if.then6:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %curr_nents to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %curr_nents, align 4
  %9 = ptrtoint ptr %mlli_entry_p.065 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mlli_entry_p.065, align 4
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_render_buff_to_mlli.__UNIQUE_ID_ddebug440, ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %8, i32 noundef %10, i32 noundef %12) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %while.body
  %add11 = add i32 %buff_dma.addr.068, 65535
  %sub = add i32 %buff_size.addr.067, -65535
  %add.ptr = getelementptr i32, ptr %mlli_entry_p.065, i32 2
  %13 = ptrtoint ptr %curr_nents to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %curr_nents, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %curr_nents, align 4
  %cmp2 = icmp ugt i32 %sub, 65535
  br i1 %cmp2, label %do.end10.while.body_crit_edge, label %do.end10.while.end_crit_edge

do.end10.while.end_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end10.while.body_crit_edge:                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %do.end10.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %mlli_entry_p.0.lcssa = phi ptr [ %3, %while.cond.preheader.while.end_crit_edge ], [ %add.ptr, %do.end10.while.end_crit_edge ]
  %buff_size.addr.0.lcssa = phi i32 [ %buff_size, %while.cond.preheader.while.end_crit_edge ], [ %sub, %do.end10.while.end_crit_edge ]
  %buff_dma.addr.0.lcssa = phi i32 [ %buff_dma, %while.cond.preheader.while.end_crit_edge ], [ %add11, %do.end10.while.end_crit_edge ]
  %15 = ptrtoint ptr %mlli_entry_p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %buff_dma.addr.0.lcssa, ptr %mlli_entry_p.0.lcssa, align 4
  %arrayidx.i59 = getelementptr i32, ptr %mlli_entry_p.0.lcssa, i32 1
  %16 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i59, align 4
  %and.i60 = and i32 %17, -65536
  %or.i61 = or i32 %and.i60, %buff_size.addr.0.lcssa
  store i32 %or.i61, ptr %arrayidx.i59, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_render_buff_to_mlli.__UNIQUE_ID_ddebug441, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_render_buff_to_mlli, %if.then24)) #6
          to label %do.end29 [label %if.then24], !srcloc !208

if.then24:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %curr_nents to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %curr_nents, align 4
  %20 = ptrtoint ptr %mlli_entry_p.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mlli_entry_p.0.lcssa, align 4
  %22 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i59, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_render_buff_to_mlli.__UNIQUE_ID_ddebug441, ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %19, i32 noundef %21, i32 noundef %23) #6
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %while.end
  %add.ptr30 = getelementptr i32, ptr %mlli_entry_p.0.lcssa, i32 2
  %24 = ptrtoint ptr %mlli_entry_pp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr30, ptr %mlli_entry_pp, align 4
  %25 = ptrtoint ptr %curr_nents to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %curr_nents, align 4
  %inc31 = add i32 %26, 1
  store i32 %inc31, ptr %curr_nents, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %do.end29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_prepare_aead_data_mlli(ptr nocapture noundef readonly %drvdata, ptr noundef %req, ptr noundef %sg_data, ptr nocapture noundef readonly %src_last_bytes, ptr nocapture noundef readonly %dst_last_bytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %op_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 40
  %0 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op_type, align 4
  %req_authsize = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 32
  %2 = ptrtoint ptr %req_authsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req_authsize, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %4 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dst, align 8
  %cmp = icmp eq ptr %7, %9
  br i1 %cmp, label %if.then, label %if.else28

if.then:                                          ; preds = %entry
  %nents = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 68
  %10 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nents, align 8
  %src_sgl = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 1
  %12 = ptrtoint ptr %src_sgl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src_sgl, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 4
  %14 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cryptlen, align 16
  %src_offset = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 3
  %16 = ptrtoint ptr %src_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_offset, align 16
  %mlli_nents = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 72
  %18 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sg_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_add_sg_entry.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_prepare_aead_data_mlli, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !208

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_add_sg_entry.__UNIQUE_ID_ddebug444, ptr noundef %dev.i, ptr noundef nonnull @.str.58, i32 noundef %19, i32 noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef 1) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %arrayidx.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 3, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %11, ptr %arrayidx.i, align 4
  %arrayidx7.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 1, i32 %19
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %13, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 2, i32 %19
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %17, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 4, i32 %19
  %23 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %15, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 5, i32 %19
  %24 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %arrayidx11.i, align 1
  %arrayidx14.i = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 6, i32 %19
  %25 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mlli_nents, ptr %arrayidx14.i, align 4
  %tobool17.not.i = icmp eq ptr %mlli_nents, null
  br i1 %tobool17.not.i, label %do.end.i.cc_add_sg_entry.exit_crit_edge, label %if.then18.i

do.end.i.cc_add_sg_entry.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_add_sg_entry.exit

if.then18.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %mlli_nents to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %mlli_nents, align 4
  br label %cc_add_sg_entry.exit

cc_add_sg_entry.exit:                             ; preds = %if.then18.i, %do.end.i.cc_add_sg_entry.exit_crit_edge
  %27 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sg_data, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %sg_data, align 4
  %29 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nents, align 8
  %31 = ptrtoint ptr %src_last_bytes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src_last_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i = icmp ugt i32 %30, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %3)
  %cmp1.i = icmp ult i32 %32, %3
  %spec.select.i = and i1 %cmp.i, %cmp1.i
  %is_icv_fragmented = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 40
  %frombool7 = zext i1 %spec.select.i to i8
  %33 = ptrtoint ptr %is_icv_fragmented to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool7, ptr %is_icv_fragmented, align 4
  br i1 %spec.select.i, label %if.then10, label %if.else18

if.then10:                                        ; preds = %cc_add_sg_entry.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp11 = icmp eq i32 %1, 1
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then10
  %coherent = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 14
  %34 = ptrtoint ptr %coherent to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %coherent, align 4, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool13.not = icmp eq i8 %35, 0
  br i1 %tobool13.not, label %if.then14, label %if.then12.if.end_crit_edge

if.then12.if.end_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %36 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %assoclen.i, align 8
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %38 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cryptlen.i, align 4
  %add.i = add i32 %39, %37
  %backup_mac.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %src, align 4
  %42 = ptrtoint ptr %req_authsize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %req_authsize, align 4
  %sub.i = sub i32 %add.i, %43
  %conv.i.i = zext i32 %add.i to i64
  %call.i.i = tail call i32 @sg_nents_for_len(ptr noundef %41, i64 noundef %conv.i.i) #6
  %sub.i.i = add i32 %add.i, 1
  %add.i.i = sub i32 %sub.i.i, %sub.i
  %call2.i.i = tail call i32 @sg_copy_buffer(ptr noundef %41, i32 noundef %call.i.i, ptr noundef %backup_mac.i, i32 noundef %add.i.i, i32 noundef %sub.i, i1 noundef zeroext true) #6
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then12.if.end_crit_edge
  %backup_mac = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 0, i32 0, i32 1
  %icv_virt_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 28
  %44 = ptrtoint ptr %icv_virt_addr to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %backup_mac, ptr %icv_virt_addr, align 8
  br label %if.end117

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %icv_virt_addr16 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 28
  %45 = ptrtoint ptr %icv_virt_addr16 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %__ctx.i, ptr %icv_virt_addr16, align 8
  %mac_buf_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6
  %46 = ptrtoint ptr %mac_buf_dma_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mac_buf_dma_addr, align 4
  %icv_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 8
  %48 = ptrtoint ptr %icv_dma_addr to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %icv_dma_addr, align 4
  br label %if.end117

if.else18:                                        ; preds = %cc_add_sg_entry.exit
  %49 = ptrtoint ptr %src_sgl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %src_sgl, align 8
  %sub = add i32 %30, -1
  %arrayidx = getelementptr %struct.scatterlist, ptr %50, i32 %sub
  %dma_address = getelementptr %struct.scatterlist, ptr %50, i32 %sub, i32 3
  %51 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_address, align 4
  %53 = ptrtoint ptr %src_last_bytes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %src_last_bytes, align 4
  %sub22 = sub i32 %52, %3
  %add = add i32 %sub22, %54
  %icv_dma_addr23 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 8
  %55 = ptrtoint ptr %icv_dma_addr23 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add, ptr %icv_dma_addr23, align 4
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx, align 4
  %and.i.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !209

do.body2.i.i:                                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !210
  unreachable

sg_virt.exit:                                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i = and i32 %57, -4
  %58 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %58) #6
  %offset.i = getelementptr %struct.scatterlist, ptr %50, i32 %sub, i32 1
  %59 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %60
  %61 = ptrtoint ptr %src_last_bytes to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %src_last_bytes, align 4
  %sub25 = sub i32 %62, %3
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %sub25
  %icv_virt_addr26 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 28
  %63 = ptrtoint ptr %icv_virt_addr26 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr, ptr %icv_virt_addr26, align 8
  br label %if.end117

if.else28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp29 = icmp eq i32 %1, 1
  br i1 %cmp29, label %if.then30, label %if.else71

if.then30:                                        ; preds = %if.else28
  %nents32 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 68
  %64 = ptrtoint ptr %nents32 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nents32, align 8
  %src_sgl33 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 1
  %66 = ptrtoint ptr %src_sgl33 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %src_sgl33, align 8
  %cryptlen34 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 4
  %68 = ptrtoint ptr %cryptlen34 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cryptlen34, align 16
  %src_offset35 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 3
  %70 = ptrtoint ptr %src_offset35 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %src_offset35, align 16
  %mlli_nents38 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 72
  %72 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sg_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_add_sg_entry.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_prepare_aead_data_mlli, %if.then.i1)) #6
          to label %do.end.i9 [label %if.then.i1], !srcloc !208

if.then.i1:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_add_sg_entry.__UNIQUE_ID_ddebug444, ptr noundef %dev.i, ptr noundef nonnull @.str.58, i32 noundef %73, i32 noundef %65, ptr noundef %67, i32 noundef %69, i32 noundef 1) #6
  br label %do.end.i9

do.end.i9:                                        ; preds = %if.then.i1, %if.then30
  %arrayidx.i2 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 3, i32 %73
  %74 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %65, ptr %arrayidx.i2, align 4
  %arrayidx7.i3 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 1, i32 %73
  %75 = ptrtoint ptr %arrayidx7.i3 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %67, ptr %arrayidx7.i3, align 4
  %arrayidx8.i4 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 2, i32 %73
  %76 = ptrtoint ptr %arrayidx8.i4 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %71, ptr %arrayidx8.i4, align 4
  %arrayidx9.i5 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 4, i32 %73
  %77 = ptrtoint ptr %arrayidx9.i5 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %69, ptr %arrayidx9.i5, align 4
  %arrayidx11.i6 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 5, i32 %73
  %78 = ptrtoint ptr %arrayidx11.i6 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %arrayidx11.i6, align 1
  %arrayidx14.i7 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 6, i32 %73
  %79 = ptrtoint ptr %arrayidx14.i7 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %mlli_nents38, ptr %arrayidx14.i7, align 4
  %tobool17.not.i8 = icmp eq ptr %mlli_nents38, null
  br i1 %tobool17.not.i8, label %do.end.i9.cc_add_sg_entry.exit12_crit_edge, label %if.then18.i10

do.end.i9.cc_add_sg_entry.exit12_crit_edge:       ; preds = %do.end.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_add_sg_entry.exit12

if.then18.i10:                                    ; preds = %do.end.i9
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %mlli_nents38 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %mlli_nents38, align 4
  br label %cc_add_sg_entry.exit12

cc_add_sg_entry.exit12:                           ; preds = %if.then18.i10, %do.end.i9.cc_add_sg_entry.exit12_crit_edge
  %81 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sg_data, align 4
  %inc.i11 = add i32 %82, 1
  store i32 %inc.i11, ptr %sg_data, align 4
  %nents40 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9
  %83 = ptrtoint ptr %nents40 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nents40, align 8
  %dst_sgl = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 2
  %85 = ptrtoint ptr %dst_sgl to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dst_sgl, align 4
  %87 = ptrtoint ptr %cryptlen34 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cryptlen34, align 16
  %dst_offset = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 4
  %89 = ptrtoint ptr %dst_offset to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dst_offset, align 4
  %mlli_nents44 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_add_sg_entry.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_prepare_aead_data_mlli, %if.then.i13)) #6
          to label %do.end.i21 [label %if.then.i13], !srcloc !208

if.then.i13:                                      ; preds = %cc_add_sg_entry.exit12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_add_sg_entry.__UNIQUE_ID_ddebug444, ptr noundef %dev.i, ptr noundef nonnull @.str.58, i32 noundef %inc.i11, i32 noundef %84, ptr noundef %86, i32 noundef %88, i32 noundef 1) #6
  br label %do.end.i21

do.end.i21:                                       ; preds = %if.then.i13, %cc_add_sg_entry.exit12
  %arrayidx.i14 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 3, i32 %inc.i11
  %91 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %84, ptr %arrayidx.i14, align 4
  %arrayidx7.i15 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 1, i32 %inc.i11
  %92 = ptrtoint ptr %arrayidx7.i15 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %86, ptr %arrayidx7.i15, align 4
  %arrayidx8.i16 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 2, i32 %inc.i11
  %93 = ptrtoint ptr %arrayidx8.i16 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %90, ptr %arrayidx8.i16, align 4
  %arrayidx9.i17 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 4, i32 %inc.i11
  %94 = ptrtoint ptr %arrayidx9.i17 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %88, ptr %arrayidx9.i17, align 4
  %arrayidx11.i18 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 5, i32 %inc.i11
  %95 = ptrtoint ptr %arrayidx11.i18 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %arrayidx11.i18, align 1
  %arrayidx14.i19 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 6, i32 %inc.i11
  %96 = ptrtoint ptr %arrayidx14.i19 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %mlli_nents44, ptr %arrayidx14.i19, align 4
  %tobool17.not.i20 = icmp eq ptr %mlli_nents44, null
  br i1 %tobool17.not.i20, label %do.end.i21.cc_add_sg_entry.exit24_crit_edge, label %if.then18.i22

do.end.i21.cc_add_sg_entry.exit24_crit_edge:      ; preds = %do.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_add_sg_entry.exit24

if.then18.i22:                                    ; preds = %do.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %mlli_nents44 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %mlli_nents44, align 4
  br label %cc_add_sg_entry.exit24

cc_add_sg_entry.exit24:                           ; preds = %if.then18.i22, %do.end.i21.cc_add_sg_entry.exit24_crit_edge
  %98 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sg_data, align 4
  %inc.i23 = add i32 %99, 1
  store i32 %inc.i23, ptr %sg_data, align 4
  %100 = ptrtoint ptr %nents32 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %nents32, align 8
  %102 = ptrtoint ptr %src_last_bytes to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %src_last_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp.i25 = icmp ugt i32 %101, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %3)
  %cmp1.i26 = icmp ult i32 %103, %3
  %spec.select.i27 = and i1 %cmp.i25, %cmp1.i26
  %is_icv_fragmented48 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 40
  %frombool49 = zext i1 %spec.select.i27 to i8
  %104 = ptrtoint ptr %is_icv_fragmented48 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %frombool49, ptr %is_icv_fragmented48, align 4
  br i1 %spec.select.i27, label %if.then52, label %if.else56

if.then52:                                        ; preds = %cc_add_sg_entry.exit24
  call void @__sanitizer_cov_trace_pc() #8
  %assoclen.i28 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %105 = ptrtoint ptr %assoclen.i28 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %assoclen.i28, align 8
  %cryptlen.i29 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %107 = ptrtoint ptr %cryptlen.i29 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cryptlen.i29, align 4
  %add.i30 = add i32 %108, %106
  %backup_mac.i31 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 0, i32 0, i32 1
  %109 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %src, align 4
  %111 = ptrtoint ptr %req_authsize to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %req_authsize, align 4
  %sub.i34 = sub i32 %add.i30, %112
  %conv.i.i35 = zext i32 %add.i30 to i64
  %call.i.i36 = tail call i32 @sg_nents_for_len(ptr noundef %110, i64 noundef %conv.i.i35) #6
  %sub.i.i37 = add i32 %add.i30, 1
  %add.i.i38 = sub i32 %sub.i.i37, %sub.i34
  %call2.i.i39 = tail call i32 @sg_copy_buffer(ptr noundef %110, i32 noundef %call.i.i36, ptr noundef %backup_mac.i31, i32 noundef %add.i.i38, i32 noundef %sub.i34, i1 noundef zeroext true) #6
  %icv_virt_addr55 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 28
  %113 = ptrtoint ptr %icv_virt_addr55 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %backup_mac.i31, ptr %icv_virt_addr55, align 8
  br label %if.end117

if.else56:                                        ; preds = %cc_add_sg_entry.exit24
  %114 = ptrtoint ptr %src_sgl33 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %src_sgl33, align 8
  %sub60 = add i32 %101, -1
  %arrayidx61 = getelementptr %struct.scatterlist, ptr %115, i32 %sub60
  %dma_address62 = getelementptr %struct.scatterlist, ptr %115, i32 %sub60, i32 3
  %116 = ptrtoint ptr %dma_address62 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dma_address62, align 4
  %118 = ptrtoint ptr %src_last_bytes to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %src_last_bytes, align 4
  %sub63 = sub i32 %117, %3
  %add64 = add i32 %sub63, %119
  %icv_dma_addr65 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 8
  %120 = ptrtoint ptr %icv_dma_addr65 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %add64, ptr %icv_dma_addr65, align 4
  %121 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx61, align 4
  %and.i.i.i40 = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i40)
  %tobool.i.not.i.i41 = icmp eq i32 %and.i.i.i40, 0
  br i1 %tobool.i.not.i.i41, label %sg_virt.exit47, label %do.body2.i.i42, !prof !209

do.body2.i.i42:                                   ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !210
  unreachable

sg_virt.exit47:                                   ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i43 = and i32 %122, -4
  %123 = inttoptr i32 %and.i.i43 to ptr
  %call1.i44 = tail call ptr @page_address(ptr noundef %123) #6
  %offset.i45 = getelementptr %struct.scatterlist, ptr %115, i32 %sub60, i32 1
  %124 = ptrtoint ptr %offset.i45 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %offset.i45, align 4
  %add.ptr.i46 = getelementptr i8, ptr %call1.i44, i32 %125
  %126 = ptrtoint ptr %src_last_bytes to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %src_last_bytes, align 4
  %sub67 = sub i32 %127, %3
  %add.ptr68 = getelementptr i8, ptr %add.ptr.i46, i32 %sub67
  %icv_virt_addr69 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 28
  %128 = ptrtoint ptr %icv_virt_addr69 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %add.ptr68, ptr %icv_virt_addr69, align 8
  br label %if.end117

if.else71:                                        ; preds = %if.else28
  %nents73 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9
  %129 = ptrtoint ptr %nents73 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %nents73, align 8
  %dst_sgl74 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 2
  %131 = ptrtoint ptr %dst_sgl74 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dst_sgl74, align 4
  %cryptlen75 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 4
  %133 = ptrtoint ptr %cryptlen75 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cryptlen75, align 16
  %dst_offset76 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 4
  %135 = ptrtoint ptr %dst_offset76 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dst_offset76, align 4
  %mlli_nents79 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 0, i32 1
  %137 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %sg_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_add_sg_entry.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_prepare_aead_data_mlli, %if.then.i48)) #6
          to label %do.end.i56 [label %if.then.i48], !srcloc !208

if.then.i48:                                      ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_add_sg_entry.__UNIQUE_ID_ddebug444, ptr noundef %dev.i, ptr noundef nonnull @.str.58, i32 noundef %138, i32 noundef %130, ptr noundef %132, i32 noundef %134, i32 noundef 1) #6
  br label %do.end.i56

do.end.i56:                                       ; preds = %if.then.i48, %if.else71
  %arrayidx.i49 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 3, i32 %138
  %139 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %130, ptr %arrayidx.i49, align 4
  %arrayidx7.i50 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 1, i32 %138
  %140 = ptrtoint ptr %arrayidx7.i50 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %132, ptr %arrayidx7.i50, align 4
  %arrayidx8.i51 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 2, i32 %138
  %141 = ptrtoint ptr %arrayidx8.i51 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %136, ptr %arrayidx8.i51, align 4
  %arrayidx9.i52 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 4, i32 %138
  %142 = ptrtoint ptr %arrayidx9.i52 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %134, ptr %arrayidx9.i52, align 4
  %arrayidx11.i53 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 5, i32 %138
  %143 = ptrtoint ptr %arrayidx11.i53 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 1, ptr %arrayidx11.i53, align 1
  %arrayidx14.i54 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 6, i32 %138
  %144 = ptrtoint ptr %arrayidx14.i54 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %mlli_nents79, ptr %arrayidx14.i54, align 4
  %tobool17.not.i55 = icmp eq ptr %mlli_nents79, null
  br i1 %tobool17.not.i55, label %do.end.i56.cc_add_sg_entry.exit59_crit_edge, label %if.then18.i57

do.end.i56.cc_add_sg_entry.exit59_crit_edge:      ; preds = %do.end.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_add_sg_entry.exit59

if.then18.i57:                                    ; preds = %do.end.i56
  call void @__sanitizer_cov_trace_pc() #8
  %145 = ptrtoint ptr %mlli_nents79 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %mlli_nents79, align 4
  br label %cc_add_sg_entry.exit59

cc_add_sg_entry.exit59:                           ; preds = %if.then18.i57, %do.end.i56.cc_add_sg_entry.exit59_crit_edge
  %146 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %sg_data, align 4
  %inc.i58 = add i32 %147, 1
  store i32 %inc.i58, ptr %sg_data, align 4
  %nents81 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 68
  %148 = ptrtoint ptr %nents81 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %nents81, align 8
  %src_sgl82 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 1
  %150 = ptrtoint ptr %src_sgl82 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %src_sgl82, align 8
  %152 = ptrtoint ptr %cryptlen75 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cryptlen75, align 16
  %src_offset84 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 0, i32 3
  %154 = ptrtoint ptr %src_offset84 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %src_offset84, align 16
  %mlli_nents87 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_add_sg_entry.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_prepare_aead_data_mlli, %if.then.i60)) #6
          to label %do.end.i68 [label %if.then.i60], !srcloc !208

if.then.i60:                                      ; preds = %cc_add_sg_entry.exit59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_add_sg_entry.__UNIQUE_ID_ddebug444, ptr noundef %dev.i, ptr noundef nonnull @.str.58, i32 noundef %inc.i58, i32 noundef %149, ptr noundef %151, i32 noundef %153, i32 noundef 1) #6
  br label %do.end.i68

do.end.i68:                                       ; preds = %if.then.i60, %cc_add_sg_entry.exit59
  %arrayidx.i61 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 3, i32 %inc.i58
  %156 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %149, ptr %arrayidx.i61, align 4
  %arrayidx7.i62 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 1, i32 %inc.i58
  %157 = ptrtoint ptr %arrayidx7.i62 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %151, ptr %arrayidx7.i62, align 4
  %arrayidx8.i63 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 2, i32 %inc.i58
  %158 = ptrtoint ptr %arrayidx8.i63 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %155, ptr %arrayidx8.i63, align 4
  %arrayidx9.i64 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 4, i32 %inc.i58
  %159 = ptrtoint ptr %arrayidx9.i64 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %153, ptr %arrayidx9.i64, align 4
  %arrayidx11.i65 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 5, i32 %inc.i58
  %160 = ptrtoint ptr %arrayidx11.i65 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %arrayidx11.i65, align 1
  %arrayidx14.i66 = getelementptr %struct.buffer_array, ptr %sg_data, i32 0, i32 6, i32 %inc.i58
  %161 = ptrtoint ptr %arrayidx14.i66 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %mlli_nents87, ptr %arrayidx14.i66, align 4
  %tobool17.not.i67 = icmp eq ptr %mlli_nents87, null
  br i1 %tobool17.not.i67, label %do.end.i68.cc_add_sg_entry.exit71_crit_edge, label %if.then18.i69

do.end.i68.cc_add_sg_entry.exit71_crit_edge:      ; preds = %do.end.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_add_sg_entry.exit71

if.then18.i69:                                    ; preds = %do.end.i68
  call void @__sanitizer_cov_trace_pc() #8
  %162 = ptrtoint ptr %mlli_nents87 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %mlli_nents87, align 4
  br label %cc_add_sg_entry.exit71

cc_add_sg_entry.exit71:                           ; preds = %if.then18.i69, %do.end.i68.cc_add_sg_entry.exit71_crit_edge
  %163 = ptrtoint ptr %sg_data to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %sg_data, align 4
  %inc.i70 = add i32 %164, 1
  store i32 %inc.i70, ptr %sg_data, align 4
  %165 = ptrtoint ptr %nents73 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %nents73, align 8
  %167 = ptrtoint ptr %dst_last_bytes to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %dst_last_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp.i72 = icmp ugt i32 %166, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %168, i32 %3)
  %cmp1.i73 = icmp ult i32 %168, %3
  %spec.select.i74 = and i1 %cmp.i72, %cmp1.i73
  %is_icv_fragmented91 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 40
  %frombool92 = zext i1 %spec.select.i74 to i8
  %169 = ptrtoint ptr %is_icv_fragmented91 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %frombool92, ptr %is_icv_fragmented91, align 4
  br i1 %spec.select.i74, label %if.else109, label %if.then95

if.then95:                                        ; preds = %cc_add_sg_entry.exit71
  %170 = ptrtoint ptr %dst_sgl74 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dst_sgl74, align 4
  %sub99 = add i32 %166, -1
  %arrayidx100 = getelementptr %struct.scatterlist, ptr %171, i32 %sub99
  %dma_address101 = getelementptr %struct.scatterlist, ptr %171, i32 %sub99, i32 3
  %172 = ptrtoint ptr %dma_address101 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %dma_address101, align 4
  %174 = ptrtoint ptr %dst_last_bytes to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %dst_last_bytes, align 4
  %sub102 = sub i32 %173, %3
  %add103 = add i32 %sub102, %175
  %icv_dma_addr104 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 8
  %176 = ptrtoint ptr %icv_dma_addr104 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %add103, ptr %icv_dma_addr104, align 4
  %177 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx100, align 4
  %and.i.i.i75 = and i32 %178, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i75)
  %tobool.i.not.i.i76 = icmp eq i32 %and.i.i.i75, 0
  br i1 %tobool.i.not.i.i76, label %sg_virt.exit82, label %do.body2.i.i77, !prof !209

do.body2.i.i77:                                   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !210
  unreachable

sg_virt.exit82:                                   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i78 = and i32 %178, -4
  %179 = inttoptr i32 %and.i.i78 to ptr
  %call1.i79 = tail call ptr @page_address(ptr noundef %179) #6
  %offset.i80 = getelementptr %struct.scatterlist, ptr %171, i32 %sub99, i32 1
  %180 = ptrtoint ptr %offset.i80 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %offset.i80, align 4
  %add.ptr.i81 = getelementptr i8, ptr %call1.i79, i32 %181
  %182 = ptrtoint ptr %dst_last_bytes to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %dst_last_bytes, align 4
  %sub106 = sub i32 %183, %3
  %add.ptr107 = getelementptr i8, ptr %add.ptr.i81, i32 %sub106
  %icv_virt_addr108 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 28
  %184 = ptrtoint ptr %icv_virt_addr108 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %add.ptr107, ptr %icv_virt_addr108, align 8
  br label %if.end117

if.else109:                                       ; preds = %cc_add_sg_entry.exit71
  call void @__sanitizer_cov_trace_pc() #8
  %mac_buf_dma_addr110 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6
  %185 = ptrtoint ptr %mac_buf_dma_addr110 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %mac_buf_dma_addr110, align 4
  %icv_dma_addr111 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 8
  %187 = ptrtoint ptr %icv_dma_addr111 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %icv_dma_addr111, align 4
  %icv_virt_addr114 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 28
  %188 = ptrtoint ptr %icv_virt_addr114 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %__ctx.i, ptr %icv_virt_addr114, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.else109, %sg_virt.exit82, %sg_virt.exit47, %if.then52, %sg_virt.exit, %if.else, %if.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !16, !17, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !135, !136, !137, !138, !140, !141, !143, !145, !147, !149, !151, !153, !154, !155, !157, !158, !159, !161, !162, !164, !165, !166, !168, !169, !171, !172, !173, !175, !176, !178, !179, !180, !182, !184, !185, !186, !188, !189, !191, !192, !193, !195, !196, !197}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 339, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cc_unmap_cipher_request.__UNIQUE_ID_ddebug449, !1, !"__UNIQUE_ID_ddebug449", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 353, i32 2}
!8 = !{ptr @cc_unmap_cipher_request.__UNIQUE_ID_ddebug450, !7, !"__UNIQUE_ID_ddebug450", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 357, i32 3}
!11 = !{ptr @cc_unmap_cipher_request.__UNIQUE_ID_ddebug451, !10, !"__UNIQUE_ID_ddebug451", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 380, i32 19}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 384, i32 4}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cc_map_cipher_request._entry, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @cc_map_cipher_request._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 388, i32 3}
!23 = !{ptr @cc_map_cipher_request.__UNIQUE_ID_ddebug452, !22, !"__UNIQUE_ID_ddebug452", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 437, i32 2}
!26 = !{ptr @cc_map_cipher_request.__UNIQUE_ID_ddebug453, !25, !"__UNIQUE_ID_ddebug453", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 498, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cc_unmap_aead_request.__UNIQUE_ID_ddebug454, !28, !"__UNIQUE_ID_ddebug454", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 506, i32 2}
!33 = !{ptr @cc_unmap_aead_request.__UNIQUE_ID_ddebug455, !32, !"__UNIQUE_ID_ddebug455", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 513, i32 3}
!36 = !{ptr @cc_unmap_aead_request.__UNIQUE_ID_ddebug456, !35, !"__UNIQUE_ID_ddebug456", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 971, i32 3}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @cc_map_aead_request._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @cc_map_aead_request._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @cc_map_aead_request._entry.19, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 985, i32 4}
!44 = !{ptr @cc_map_aead_request._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1003, i32 4}
!47 = !{ptr @cc_map_aead_request._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @cc_map_aead_request._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1013, i32 4}
!51 = !{ptr @cc_map_aead_request._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cc_map_aead_request._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1024, i32 4}
!55 = !{ptr @cc_map_aead_request._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @cc_map_aead_request._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1036, i32 4}
!59 = !{ptr @cc_map_aead_request._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @cc_map_aead_request._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1119, i32 3}
!63 = !{ptr @cc_map_aead_request.__UNIQUE_ID_ddebug460, !62, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1121, i32 3}
!66 = !{ptr @cc_map_aead_request.__UNIQUE_ID_ddebug461, !65, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1122, i32 3}
!69 = !{ptr @cc_map_aead_request.__UNIQUE_ID_ddebug462, !68, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1145, i32 2}
!72 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @cc_map_hash_request_final.__UNIQUE_ID_ddebug463, !71, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1196, i32 2}
!76 = !{ptr @cc_map_hash_request_final.__UNIQUE_ID_ddebug464, !75, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1229, i32 2}
!79 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cc_map_hash_request_update.__UNIQUE_ID_ddebug465, !78, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1239, i32 3}
!83 = !{ptr @cc_map_hash_request_update.__UNIQUE_ID_ddebug466, !82, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1253, i32 2}
!86 = !{ptr @cc_map_hash_request_update.__UNIQUE_ID_ddebug467, !85, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1258, i32 3}
!89 = !{ptr @cc_map_hash_request_update.__UNIQUE_ID_ddebug468, !88, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1331, i32 3}
!92 = !{ptr @cc_unmap_hash_request.__UNIQUE_ID_ddebug469, !91, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1340, i32 3}
!95 = !{ptr @cc_unmap_hash_request.__UNIQUE_ID_ddebug470, !94, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1347, i32 3}
!98 = !{ptr @cc_unmap_hash_request.__UNIQUE_ID_ddebug471, !97, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 1368, i32 19}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!103 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 264, i32 3}
!107 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @cc_map_sg._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @cc_map_sg._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 272, i32 3}
!112 = !{ptr @cc_map_sg._entry.52, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @cc_map_sg._entry_ptr.54, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 90, i32 2}
!116 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @cc_get_sgl_nents.__UNIQUE_ID_ddebug439, !115, !"__UNIQUE_ID_ddebug439", i1 false, i1 false}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 242, i32 2}
!120 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @cc_add_sg_entry.__UNIQUE_ID_ddebug444, !119, !"__UNIQUE_ID_ddebug444", i1 false, i1 false}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 189, i32 2}
!124 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @cc_generate_mlli.__UNIQUE_ID_ddebug442, !123, !"__UNIQUE_ID_ddebug442", i1 false, i1 false}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 196, i32 3}
!128 = !{ptr @cc_generate_mlli._entry, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @cc_generate_mlli._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 227, i32 2}
!132 = !{ptr @cc_generate_mlli.__UNIQUE_ID_ddebug443, !131, !"__UNIQUE_ID_ddebug443", i1 false, i1 false}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 126, i32 3}
!135 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @cc_render_buff_to_mlli._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @cc_render_buff_to_mlli._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 135, i32 3}
!140 = !{ptr @cc_render_buff_to_mlli.__UNIQUE_ID_ddebug440, !139, !"__UNIQUE_ID_ddebug440", i1 false, i1 false}
!141 = !{ptr @cc_render_buff_to_mlli.__UNIQUE_ID_ddebug441, !142, !"__UNIQUE_ID_ddebug441", i1 false, i1 false}
!142 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 146, i32 2}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 35, i32 10}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 37, i32 10}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 39, i32 10}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 41, i32 10}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 286, i32 2}
!153 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @cc_set_aead_conf_buf.__UNIQUE_ID_ddebug445, !152, !"__UNIQUE_ID_ddebug445", i1 false, i1 false}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 291, i32 3}
!157 = !{ptr @cc_set_aead_conf_buf._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @cc_set_aead_conf_buf._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 294, i32 2}
!161 = !{ptr @cc_set_aead_conf_buf.__UNIQUE_ID_ddebug446, !160, !"__UNIQUE_ID_ddebug446", i1 false, i1 false}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 594, i32 3}
!164 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @cc_aead_chain_assoc.__UNIQUE_ID_ddebug458, !163, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!166 = !{ptr @cc_aead_chain_assoc._entry, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 605, i32 3}
!168 = !{ptr @cc_aead_chain_assoc._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 616, i32 4}
!171 = !{ptr @cc_aead_chain_assoc._entry.76, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @cc_aead_chain_assoc._entry_ptr.78, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 630, i32 3}
!175 = !{ptr @cc_aead_chain_assoc.__UNIQUE_ID_ddebug459, !174, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 560, i32 3}
!178 = !{ptr @cc_aead_chain_iv._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @cc_aead_chain_iv._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @cc_aead_chain_iv.__UNIQUE_ID_ddebug457, !181, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!181 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 568, i32 2}
!182 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 822, i32 3}
!184 = !{ptr @cc_aead_chain_data._entry, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @cc_aead_chain_data._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @cc_aead_chain_data._entry.82, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 863, i32 3}
!188 = !{ptr @cc_aead_chain_data._entry_ptr.83, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.84, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 312, i32 2}
!191 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @cc_set_hash_buf.__UNIQUE_ID_ddebug447, !190, !"__UNIQUE_ID_ddebug447", i1 false, i1 false}
!193 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 316, i32 3}
!195 = !{ptr @cc_set_hash_buf._entry, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @cc_set_hash_buf._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @cc_set_hash_buf.__UNIQUE_ID_ddebug448, !198, !"__UNIQUE_ID_ddebug448", i1 false, i1 false}
!198 = !{!"../drivers/crypto/ccree/cc_buffer_mgr.c", i32 319, i32 2}
!199 = !{i32 1, !"wchar_size", i32 2}
!200 = !{i32 1, !"min_enum_size", i32 4}
!201 = !{i32 8, !"branch-target-enforcement", i32 0}
!202 = !{i32 8, !"sign-return-address", i32 0}
!203 = !{i32 8, !"sign-return-address-all", i32 0}
!204 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!205 = !{i32 7, !"uwtable", i32 1}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!208 = !{i64 2148782496, i64 2148782501, i64 2148782514, i64 2148782558, i64 2148782592, i64 2148782613}
!209 = !{!"branch_weights", i32 2000, i32 1}
!210 = !{i64 2153828156, i64 2153828648, i64 2153828193, i64 2153828249, i64 2153828283, i64 2153828307, i64 2153828348, i64 2153828369, i64 2153828397, i64 2153828431}
!211 = !{i8 0, i8 2}
