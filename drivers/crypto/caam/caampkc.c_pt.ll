; ModuleID = '/llk/IR_all_yes/drivers/crypto/caam/caampkc.c_pt.bc'
source_filename = "../drivers/crypto/caam/caampkc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.caam_akcipher_alg = type { %struct.akcipher_alg, i8, [127 x i8] }
%struct.akcipher_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.158, ptr, ptr, ptr, ptr, %union.anon.159, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.158 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.159 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.caam_drv_private = type { ptr, ptr, ptr, ptr, [4 x ptr], ptr, i8, i8, i8, i32, i32, i32, i32, ptr, i32, ptr, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.caam_ctrl = type { i32, i32, i32, i32, [4 x %struct.masterid], [11 x i32], i32, [4 x %struct.masterid], [5 x i32], i32, i32, i32, [5 x %struct.partid], [22 x i32], i32, i32, [182 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], i64, [70 x i32], %union.anon.154, [416 x i32], %struct.version_regs, %struct.caam_perfmon }
%struct.masterid = type { i32, i32 }
%struct.partid = type { i32, i32 }
%union.anon.154 = type { [2 x %struct.rngtst] }
%struct.rngtst = type { i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], [15 x i32] }
%struct.version_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32 }
%struct.caam_perfmon = type { i64, i64, i64, i64, i64, i64, i64, [13 x i64], i32, i32, i32, i32, [2 x i64], i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.akcipher_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [88 x i8], [0 x ptr] }
%struct.rsa_edesc = type { i32, i32, i32, i32, i32, i8, i32, ptr, %union.anon.162, [0 x i32] }
%union.anon.162 = type { %struct.rsa_priv_f3_pdb }
%struct.rsa_priv_f3_pdb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.129, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.129 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.rsa_key = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.dpaa2_sg_entry = type { i64, i32, i16, i16 }
%struct.sec4_sg_entry = type { i64, i32, i32 }
%struct.caam_drv_private_jr = type { %struct.list_head, ptr, i32, ptr, %struct.tasklet_struct, i32, i8, [79 x i8], %struct.atomic_t, ptr, [120 x i8], %struct.spinlock, i32, i32, ptr, i32, i32, ptr, ptr, [56 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.164, i32 }
%union.anon.164 = type { ptr }
%struct.caam_rsa_key = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.crypto_engine = type { [30 x i8], i8, i8, i8, i8, %struct.list_head, %struct.spinlock, %struct.crypto_queue, ptr, i8, ptr, ptr, ptr, ptr, %struct.kthread_work, ptr, ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }

@init_done = internal global { i1, [31 x i8] } zeroinitializer, align 32
@zero_buffer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@caam_rsa = internal global %struct.caam_akcipher_alg { %struct.akcipher_alg { ptr null, ptr null, ptr @caam_rsa_enc, ptr @caam_rsa_dec, ptr @caam_rsa_set_pub_key, ptr @caam_rsa_set_priv_key, ptr @caam_rsa_max_size, ptr @caam_rsa_init_tfm, ptr @caam_rsa_exit_tfm, i32 56, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 84, i32 0, i32 3000, %struct.refcount_struct zeroinitializer, [128 x i8] c"rsa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rsa-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.158 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.159 zeroinitializer, [120 x i8] undef } }, i8 0, [127 x i8] undef }, align 128
@caam_pkc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1196, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s alg registration failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"caam_pkc_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/crypto/caam/caampkc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@caam_pkc_init._entry_ptr = internal global ptr @caam_pkc_init._entry, section ".printk_index", align 4
@caam_pkc_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1200, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"caam pkc algorithms registered in /proc/crypto\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@caam_pkc_init._entry_ptr.8 = internal global ptr @caam_pkc_init._entry.5, section ".printk_index", align 4
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@caam_rsa_enc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 721, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Output buffer length less than parameter n\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"caam_rsa_enc\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@caam_rsa_enc._entry_ptr = internal global ptr @caam_rsa_enc._entry, section ".printk_index", align 4
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@rsa_edesc_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 289, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unable to map source\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rsa_edesc_alloc\00", [16 x i8] zeroinitializer }, align 32
@rsa_edesc_alloc._entry_ptr = internal global ptr @rsa_edesc_alloc._entry, section ".printk_index", align 4
@rsa_edesc_alloc._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 295, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to map destination\0A\00", [37 x i8] zeroinitializer }, align 32
@rsa_edesc_alloc._entry_ptr.16 = internal global ptr @rsa_edesc_alloc._entry.14, section ".printk_index", align 4
@rsa_edesc_alloc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 346, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to map S/G table\0A\00", [39 x i8] zeroinitializer }, align 32
@rsa_edesc_alloc._entry_ptr.19 = internal global ptr @rsa_edesc_alloc._entry.17, section ".printk_index", align 4
@rsa_edesc_alloc.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.13, ptr @.str.2, ptr @.str.21, i8 0, i8 88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"caam_jr\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"caampkc sec4_sg@352: \00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@caam_dpaa2 = external dso_local local_unnamed_addr global i8, align 1
@dma_to_sec4_sg_one.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.25, i8 0, i8 10, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma_to_sec4_sg_one\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/crypto/caam/sg_sw_sec4.h\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sec4_sg_ptr@: \00", [17 x i8] zeroinitializer }, align 32
@caam_imx = external dso_local local_unnamed_addr global i8, align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@set_rsa_pub_pdb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 410, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to map RSA modulus memory\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set_rsa_pub_pdb\00", [16 x i8] zeroinitializer }, align 32
@set_rsa_pub_pdb._entry_ptr = internal global ptr @set_rsa_pub_pdb._entry, section ".printk_index", align 4
@set_rsa_pub_pdb._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 416, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unable to map RSA public exponent memory\0A\00", [54 x i8] zeroinitializer }, align 32
@set_rsa_pub_pdb._entry_ptr.32 = internal global ptr @set_rsa_pub_pdb._entry.30, section ".printk_index", align 4
@caam_rsa_dec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.33, ptr @.str.2, i32 845, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"caam_rsa_dec\00", [19 x i8] zeroinitializer }, align 32
@caam_rsa_dec._entry_ptr = internal global ptr @caam_rsa_dec._entry, section ".printk_index", align 4
@set_rsa_priv_f3_pdb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 581, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to map RSA prime factor p memory\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set_rsa_priv_f3_pdb\00", [44 x i8] zeroinitializer }, align 32
@set_rsa_priv_f3_pdb._entry_ptr = internal global ptr @set_rsa_priv_f3_pdb._entry, section ".printk_index", align 4
@set_rsa_priv_f3_pdb._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 587, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to map RSA prime factor q memory\0A\00", [55 x i8] zeroinitializer }, align 32
@set_rsa_priv_f3_pdb._entry_ptr.38 = internal global ptr @set_rsa_priv_f3_pdb._entry.36, section ".printk_index", align 4
@set_rsa_priv_f3_pdb._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 593, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to map RSA exponent dp memory\0A\00", [58 x i8] zeroinitializer }, align 32
@set_rsa_priv_f3_pdb._entry_ptr.41 = internal global ptr @set_rsa_priv_f3_pdb._entry.39, section ".printk_index", align 4
@set_rsa_priv_f3_pdb._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.2, i32 599, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to map RSA exponent dq memory\0A\00", [58 x i8] zeroinitializer }, align 32
@set_rsa_priv_f3_pdb._entry_ptr.44 = internal global ptr @set_rsa_priv_f3_pdb._entry.42, section ".printk_index", align 4
@set_rsa_priv_f3_pdb._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.2, i32 605, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unable to map RSA CRT coefficient qinv memory\0A\00", [49 x i8] zeroinitializer }, align 32
@set_rsa_priv_f3_pdb._entry_ptr.47 = internal global ptr @set_rsa_priv_f3_pdb._entry.45, section ".printk_index", align 4
@set_rsa_priv_f3_pdb._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.35, ptr @.str.2, i32 611, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to map RSA tmp1 memory\0A\00", [33 x i8] zeroinitializer }, align 32
@set_rsa_priv_f3_pdb._entry_ptr.50 = internal global ptr @set_rsa_priv_f3_pdb._entry.48, section ".printk_index", align 4
@set_rsa_priv_f3_pdb._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.35, ptr @.str.2, i32 617, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to map RSA tmp2 memory\0A\00", [33 x i8] zeroinitializer }, align 32
@set_rsa_priv_f3_pdb._entry_ptr.53 = internal global ptr @set_rsa_priv_f3_pdb._entry.51, section ".printk_index", align 4
@set_rsa_priv_f2_pdb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 504, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to map RSA private exponent memory\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set_rsa_priv_f2_pdb\00", [44 x i8] zeroinitializer }, align 32
@set_rsa_priv_f2_pdb._entry_ptr = internal global ptr @set_rsa_priv_f2_pdb._entry, section ".printk_index", align 4
@set_rsa_priv_f2_pdb._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.55, ptr @.str.2, i32 510, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@set_rsa_priv_f2_pdb._entry_ptr.57 = internal global ptr @set_rsa_priv_f2_pdb._entry.56, section ".printk_index", align 4
@set_rsa_priv_f2_pdb._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.55, ptr @.str.2, i32 516, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@set_rsa_priv_f2_pdb._entry_ptr.59 = internal global ptr @set_rsa_priv_f2_pdb._entry.58, section ".printk_index", align 4
@set_rsa_priv_f2_pdb._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.55, ptr @.str.2, i32 522, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@set_rsa_priv_f2_pdb._entry_ptr.61 = internal global ptr @set_rsa_priv_f2_pdb._entry.60, section ".printk_index", align 4
@set_rsa_priv_f2_pdb._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.55, ptr @.str.2, i32 528, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@set_rsa_priv_f2_pdb._entry_ptr.63 = internal global ptr @set_rsa_priv_f2_pdb._entry.62, section ".printk_index", align 4
@set_rsa_priv_f1_pdb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 455, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to map modulus memory\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set_rsa_priv_f1_pdb\00", [44 x i8] zeroinitializer }, align 32
@set_rsa_priv_f1_pdb._entry_ptr = internal global ptr @set_rsa_priv_f1_pdb._entry, section ".printk_index", align 4
@set_rsa_priv_f1_pdb._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.65, ptr @.str.2, i32 461, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@set_rsa_priv_f1_pdb._entry_ptr.67 = internal global ptr @set_rsa_priv_f1_pdb._entry.66, section ".printk_index", align 4
@caam_rsa_init_tfm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Job Ring Device allocation for transform failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"caam_rsa_init_tfm\00", [46 x i8] zeroinitializer }, align 32
@caam_rsa_init_tfm._entry_ptr = internal global ptr @caam_rsa_init_tfm._entry, section ".printk_index", align 4
@caam_rsa_init_tfm._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 1113, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to map padding\0A\00", [41 x i8] zeroinitializer }, align 32
@caam_rsa_init_tfm._entry_ptr.72 = internal global ptr @caam_rsa_init_tfm._entry.70, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967268]
@___asan_gen_.77 = private unnamed_addr constant [10 x i8] c"init_done\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"zero_buffer\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 30, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1195, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1200, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 721, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 289, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 295, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 346, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 352, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [36 x i8] c"../drivers/crypto/caam/sg_sw_sec4.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 39, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 326, i32 6 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 410, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 416, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 845, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 581, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 587, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 593, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 599, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 605, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 611, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 617, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 504, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 510, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 516, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 522, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 528, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 455, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 461, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1105, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.277 = private constant [33 x i8] c"../drivers/crypto/caam/caampkc.c\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1113, i32 3 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @caam_pkc_init._entry, ptr @caam_pkc_init._entry.5, ptr @caam_pkc_init._entry_ptr, ptr @caam_pkc_init._entry_ptr.8, ptr @caam_rsa_dec._entry, ptr @caam_rsa_dec._entry_ptr, ptr @caam_rsa_enc._entry, ptr @caam_rsa_enc._entry_ptr, ptr @caam_rsa_init_tfm._entry, ptr @caam_rsa_init_tfm._entry.70, ptr @caam_rsa_init_tfm._entry_ptr, ptr @caam_rsa_init_tfm._entry_ptr.72, ptr @rsa_edesc_alloc._entry, ptr @rsa_edesc_alloc._entry.14, ptr @rsa_edesc_alloc._entry.17, ptr @rsa_edesc_alloc._entry_ptr, ptr @rsa_edesc_alloc._entry_ptr.16, ptr @rsa_edesc_alloc._entry_ptr.19, ptr @set_rsa_priv_f1_pdb._entry, ptr @set_rsa_priv_f1_pdb._entry.66, ptr @set_rsa_priv_f1_pdb._entry_ptr, ptr @set_rsa_priv_f1_pdb._entry_ptr.67, ptr @set_rsa_priv_f2_pdb._entry, ptr @set_rsa_priv_f2_pdb._entry.56, ptr @set_rsa_priv_f2_pdb._entry.58, ptr @set_rsa_priv_f2_pdb._entry.60, ptr @set_rsa_priv_f2_pdb._entry.62, ptr @set_rsa_priv_f2_pdb._entry_ptr, ptr @set_rsa_priv_f2_pdb._entry_ptr.57, ptr @set_rsa_priv_f2_pdb._entry_ptr.59, ptr @set_rsa_priv_f2_pdb._entry_ptr.61, ptr @set_rsa_priv_f2_pdb._entry_ptr.63, ptr @set_rsa_priv_f3_pdb._entry, ptr @set_rsa_priv_f3_pdb._entry.36, ptr @set_rsa_priv_f3_pdb._entry.39, ptr @set_rsa_priv_f3_pdb._entry.42, ptr @set_rsa_priv_f3_pdb._entry.45, ptr @set_rsa_priv_f3_pdb._entry.48, ptr @set_rsa_priv_f3_pdb._entry.51, ptr @set_rsa_priv_f3_pdb._entry_ptr, ptr @set_rsa_priv_f3_pdb._entry_ptr.38, ptr @set_rsa_priv_f3_pdb._entry_ptr.41, ptr @set_rsa_priv_f3_pdb._entry_ptr.44, ptr @set_rsa_priv_f3_pdb._entry_ptr.47, ptr @set_rsa_priv_f3_pdb._entry_ptr.50, ptr @set_rsa_priv_f3_pdb._entry_ptr.53, ptr @set_rsa_pub_pdb._entry, ptr @set_rsa_pub_pdb._entry.30, ptr @set_rsa_pub_pdb._entry_ptr, ptr @set_rsa_pub_pdb._entry_ptr.32, ptr @init_done, ptr @zero_buffer, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.64, ptr @.str.65, ptr @.str.68, ptr @.str.69, ptr @.str.71], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_done to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_buffer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_pkc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_pkc_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_rsa_enc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsa_edesc_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsa_edesc_alloc._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsa_edesc_alloc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rsa_pub_pdb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rsa_pub_pdb._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_rsa_dec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rsa_priv_f3_pdb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rsa_priv_f3_pdb._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rsa_priv_f3_pdb._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rsa_priv_f3_pdb._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rsa_priv_f3_pdb._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rsa_priv_f3_pdb._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rsa_priv_f3_pdb._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rsa_priv_f2_pdb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rsa_priv_f2_pdb._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rsa_priv_f2_pdb._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rsa_priv_f2_pdb._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rsa_priv_f2_pdb._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rsa_priv_f1_pdb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rsa_priv_f1_pdb._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_rsa_init_tfm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_rsa_init_tfm._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @caam_pkc_init(ptr noundef %ctrldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %ctrldev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  store i1 false, ptr @init_done, align 1
  %era = getelementptr inbounds %struct.caam_drv_private, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %era, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp slt i32 %3, 10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cha_num_ls = getelementptr inbounds %struct.caam_ctrl, ptr %5, i32 0, i32 26, i32 24
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %6 = load i8, ptr @caam_little_end, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cha_num_ls) #9
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  br label %rd_reg32.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  br label %rd_reg32.exit

rd_reg32.exit:                                    ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %8, %if.then.i ], [ %7, %if.end.i ]
  %9 = lshr i32 %retval.0.i, 28
  br label %if.end11

if.else:                                          ; preds = %entry
  %pkha4 = getelementptr inbounds %struct.caam_ctrl, ptr %5, i32 0, i32 25, i32 3
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %10 = load i8, ptr @caam_little_end, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i36 = icmp eq i8 %10, 0
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pkha4) #9
  br i1 %tobool.not.i36, label %if.end.i38, label %if.then.i37

if.then.i37:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  br label %rd_reg32.exit40

if.end.i38:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  br label %rd_reg32.exit40

rd_reg32.exit40:                                  ; preds = %if.end.i38, %if.then.i37
  %retval.0.i39 = phi i32 [ %12, %if.then.i37 ], [ %11, %if.end.i38 ]
  %13 = and i32 %retval.0.i39, 255
  %and9 = and i32 %retval.0.i39, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %rd_reg32.exit40.if.end11_crit_edge, label %rd_reg32.exit40.cleanup_crit_edge

rd_reg32.exit40.cleanup_crit_edge:                ; preds = %rd_reg32.exit40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

rd_reg32.exit40.if.end11_crit_edge:               ; preds = %rd_reg32.exit40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %rd_reg32.exit40.if.end11_crit_edge, %rd_reg32.exit
  %pk_inst.0 = phi i32 [ %9, %rd_reg32.exit ], [ %13, %rd_reg32.exit40.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pk_inst.0)
  %tobool12.not = icmp eq i32 %pk_inst.0, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3521, i32 noundef 511) #12
  store ptr %call7.i.i, ptr @zero_buffer, align 4
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @crypto_register_akcipher(ptr noundef nonnull @caam_rsa) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else22, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %15 = load ptr, ptr @zero_buffer, align 4
  tail call void @kfree(ptr noundef %15) #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ctrldev, ptr noundef nonnull @.str, ptr noundef getelementptr inbounds (%struct.caam_akcipher_alg, ptr @caam_rsa, i32 0, i32 0, i32 11, i32 9)) #13
  br label %cleanup

if.else22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @init_done, align 1
  store i8 1, ptr getelementptr inbounds (%struct.caam_akcipher_alg, ptr @caam_rsa, i32 0, i32 1), align 128
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %ctrldev, ptr noundef nonnull @.str.6) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else22, %if.then21, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %rd_reg32.exit40.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ 0, %if.else22 ], [ %call19, %if.then21 ], [ 0, %rd_reg32.exit40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_akcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @caam_pkc_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b4 = load i1, ptr @init_done, align 1
  br i1 %.b4, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i8, ptr getelementptr inbounds (%struct.caam_akcipher_alg, ptr @caam_rsa, i32 0, i32 1), align 128, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_akcipher(ptr noundef nonnull @caam_rsa) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %1 = load ptr, ptr @zero_buffer, align 4
  tail call void @kfree(ptr noundef %1) #9
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_akcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caam_rsa_enc(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %key2 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 3
  %dev = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 60
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %key2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %key2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.rhs, !prof !140

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %e = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4
  %6 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %e, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.rhs.cleanup_crit_edge, label %if.end, !prof !140

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %dst_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 4
  %8 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst_len, align 4
  %n_sz = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 36
  %10 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp ult i32 %9, %11
  br i1 %cmp, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dst_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dst_len, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %13 = load i32, ptr @caam_ptr_sz, align 4
  %mul = shl i32 %13, 2
  %add11 = add i32 %mul, 16
  %call12 = tail call fastcc ptr @rsa_edesc_alloc(ptr noundef %req, i32 noundef %add11)
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %15 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tfm.i, align 16
  %key3.i = getelementptr inbounds %struct.crypto_tfm, ptr %16, i32 1, i32 3
  %dev4.i = getelementptr inbounds %struct.crypto_tfm, ptr %16, i32 1, i32 4, i32 60
  %17 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev4.i, align 4
  %pdb5.i = getelementptr inbounds %struct.rsa_edesc, ptr %call12, i32 0, i32 8
  %19 = ptrtoint ptr %key3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %key3.i, align 4
  %n_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %16, i32 1, i32 4, i32 36
  %21 = ptrtoint ptr %n_sz.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_sz.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %20) #9
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end16
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !141

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %18) #9
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %23 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %18, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %26, %if.end.i.i.i ], [ %24, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %n_dma100.i = getelementptr inbounds %struct.rsa_edesc, ptr %call12, i32 0, i32 8, i32 0, i32 3
  %27 = ptrtoint ptr %n_dma100.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %n_dma100.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %18, i32 noundef -1) #9
  br label %do.end.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end16
  tail call void @debug_dma_map_single(ptr noundef %18, ptr noundef %20, i32 noundef %22) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %28 = load ptr, ptr @mem_map, align 4
  %29 = ptrtoint ptr %20 to i32
  %sub.i.i = add i32 %29, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %28, i32 %shr.i.i
  %and.i.i = and i32 %29, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %18, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %22, i32 noundef 1, i32 noundef 0) #9
  %n_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %call12, i32 0, i32 8, i32 0, i32 3
  %30 = ptrtoint ptr %n_dma.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call41.i.i, ptr %n_dma.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %18, i32 noundef %call41.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.do.end.i_crit_edge, label %if.end.i

dma_map_single_attrs.exit.i.do.end.i_crit_edge:   ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %dma_map_single_attrs.exit.i.do.end.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.28) #13
  br label %init_fail

if.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  %e.i = getelementptr inbounds %struct.crypto_tfm, ptr %16, i32 1, i32 4
  %31 = ptrtoint ptr %e.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %e.i, align 4
  %e_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %16, i32 1, i32 4, i32 40
  %33 = ptrtoint ptr %e_sz.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %e_sz.i, align 4
  %call.i79.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %32) #9
  br i1 %call.i79.i, label %land.rhs.i81.i, label %dma_map_single_attrs.exit96.i

land.rhs.i81.i:                                   ; preds = %if.end.i
  %.b1.i80.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i80.i, label %land.rhs.i81.i.dma_map_single_attrs.exit96.thread.i_crit_edge, label %if.then.i85.i, !prof !141

land.rhs.i81.i.dma_map_single_attrs.exit96.thread.i_crit_edge: ; preds = %land.rhs.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit96.thread.i

if.then.i85.i:                                    ; preds = %land.rhs.i81.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i82.i = tail call ptr @dev_driver_string(ptr noundef %18) #9
  %init_name.i.i83.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %35 = ptrtoint ptr %init_name.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i83.i, align 8
  %tobool.not.i.i84.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i84.i, label %if.end.i.i86.i, label %if.then.i85.i.dev_name.exit.i88.i_crit_edge

if.then.i85.i.dev_name.exit.i88.i_crit_edge:      ; preds = %if.then.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i88.i

if.end.i.i86.i:                                   ; preds = %if.then.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %18, align 4
  br label %dev_name.exit.i88.i

dev_name.exit.i88.i:                              ; preds = %if.end.i.i86.i, %if.then.i85.i.dev_name.exit.i88.i_crit_edge
  %retval.0.i.i87.i = phi ptr [ %38, %if.end.i.i86.i ], [ %36, %if.then.i85.i.dev_name.exit.i88.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i82.i, ptr noundef %retval.0.i.i87.i) #9
  br label %dma_map_single_attrs.exit96.thread.i

dma_map_single_attrs.exit96.thread.i:             ; preds = %dev_name.exit.i88.i, %land.rhs.i81.i.dma_map_single_attrs.exit96.thread.i_crit_edge
  %e_dma108.i = getelementptr inbounds %struct.rsa_edesc, ptr %call12, i32 0, i32 8, i32 0, i32 4
  %39 = ptrtoint ptr %e_dma108.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %e_dma108.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %18, i32 noundef -1) #9
  br label %do.end16.i

dma_map_single_attrs.exit96.i:                    ; preds = %if.end.i
  tail call void @debug_dma_map_single(ptr noundef %18, ptr noundef %32, i32 noundef %34) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %40 = load ptr, ptr @mem_map, align 4
  %41 = ptrtoint ptr %32 to i32
  %sub.i89.i = add i32 %41, 1073741824
  %shr.i90.i = lshr i32 %sub.i89.i, 12
  %add.ptr.i91.i = getelementptr %struct.page, ptr %40, i32 %shr.i90.i
  %and.i92.i = and i32 %41, 4095
  %call41.i93.i = tail call i32 @dma_map_page_attrs(ptr noundef %18, ptr noundef %add.ptr.i91.i, i32 noundef %and.i92.i, i32 noundef %34, i32 noundef 1, i32 noundef 0) #9
  %e_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %call12, i32 0, i32 8, i32 0, i32 4
  %42 = ptrtoint ptr %e_dma.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call41.i93.i, ptr %e_dma.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %18, i32 noundef %call41.i93.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i93.i)
  %cmp.i97.i = icmp eq i32 %call41.i93.i, -1
  br i1 %cmp.i97.i, label %dma_map_single_attrs.exit96.i.do.end16.i_crit_edge, label %if.end19.i

dma_map_single_attrs.exit96.i.do.end16.i_crit_edge: ; preds = %dma_map_single_attrs.exit96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

do.end16.i:                                       ; preds = %dma_map_single_attrs.exit96.i.do.end16.i_crit_edge, %dma_map_single_attrs.exit96.thread.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.31) #13
  %43 = ptrtoint ptr %n_dma.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n_dma.i, align 4
  %45 = ptrtoint ptr %n_sz.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %18, i32 noundef %44, i32 noundef %46, i32 noundef 1, i32 noundef 0) #9
  br label %init_fail

if.end19.i:                                       ; preds = %dma_map_single_attrs.exit96.i
  %mapped_src_nents.i = getelementptr inbounds %struct.rsa_edesc, ptr %call12, i32 0, i32 2
  %47 = ptrtoint ptr %mapped_src_nents.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mapped_src_nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i46 = icmp sgt i32 %48, 1
  br i1 %cmp.i46, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %pdb5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pdb5.i, align 4
  %or.i = or i32 %50, -2147483648
  store i32 %or.i, ptr %pdb5.i, align 4
  %sec4_sg_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %call12, i32 0, i32 6
  %phi.bo.i = shl i32 %48, 4
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %fixup_src.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5
  %51 = ptrtoint ptr %fixup_src.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fixup_src.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %52, i32 0, i32 3
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i, %if.then20.i
  %.sink.in.i = phi ptr [ %sec4_sg_dma.i, %if.then20.i ], [ %dma_address.i, %if.else.i ]
  %sec4_sg_index.0.i = phi i32 [ %phi.bo.i, %if.then20.i ], [ 0, %if.else.i ]
  %53 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %54 = getelementptr inbounds %struct.rsa_edesc, ptr %call12, i32 0, i32 8, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink.i, ptr %54, align 4
  %mapped_dst_nents.i = getelementptr inbounds %struct.rsa_edesc, ptr %call12, i32 0, i32 3
  %56 = ptrtoint ptr %mapped_dst_nents.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mapped_dst_nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp24.i = icmp sgt i32 %57, 1
  br i1 %cmp24.i, label %if.then25.i, label %if.else30.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %pdb5.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pdb5.i, align 4
  %or27.i = or i32 %59, 1073741824
  store i32 %or27.i, ptr %pdb5.i, align 4
  %sec4_sg_dma28.i = getelementptr inbounds %struct.rsa_edesc, ptr %call12, i32 0, i32 6
  %60 = ptrtoint ptr %sec4_sg_dma28.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sec4_sg_dma28.i, align 4
  %add29.i = add i32 %61, %sec4_sg_index.0.i
  br label %if.end20

if.else30.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %dst.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %62 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dst.i, align 4
  %dma_address31.i = getelementptr inbounds %struct.scatterlist, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %dma_address31.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_address31.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else30.i, %if.then25.i
  %.sink112.i = phi i32 [ %add29.i, %if.then25.i ], [ %65, %if.else30.i ]
  %66 = getelementptr inbounds %struct.rsa_edesc, ptr %call12, i32 0, i32 8, i32 0, i32 2
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %.sink112.i, ptr %66, align 4
  %68 = ptrtoint ptr %e_sz.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %e_sz.i, align 4
  %shl.i = shl i32 %69, 12
  %70 = ptrtoint ptr %n_sz.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %n_sz.i, align 4
  %or36.i = or i32 %shl.i, %71
  %72 = ptrtoint ptr %pdb5.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pdb5.i, align 4
  %or38.i = or i32 %or36.i, %73
  store i32 %or38.i, ptr %pdb5.i, align 4
  %fixup_src_len.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 4
  %74 = ptrtoint ptr %fixup_src_len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fixup_src_len.i, align 4
  %f_len.i = getelementptr inbounds %struct.rsa_edesc, ptr %call12, i32 0, i32 8, i32 0, i32 5
  %76 = ptrtoint ptr %f_len.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %f_len.i, align 4
  %hw_desc = getelementptr inbounds %struct.rsa_edesc, ptr %call12, i32 0, i32 9
  tail call void @init_rsa_pub_desc(ptr noundef %hw_desc, ptr noundef %pdb5.i) #9
  %call21 = tail call fastcc i32 @akcipher_enqueue_req(ptr noundef %3, ptr noundef nonnull @rsa_pub_done, ptr noundef %req)
  br label %cleanup

init_fail:                                        ; preds = %do.end16.i, %do.end.i
  %dst.i47 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %77 = ptrtoint ptr %dst.i47 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dst.i47, align 4
  %dst_nents.i = getelementptr inbounds %struct.rsa_edesc, ptr %call12, i32 0, i32 1
  %79 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dst_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %78, i32 noundef %80, i32 noundef 2, i32 noundef 0) #9
  %fixup_src.i48 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5
  %81 = ptrtoint ptr %fixup_src.i48 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fixup_src.i48, align 4
  %83 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %call12, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %82, i32 noundef %84, i32 noundef 1, i32 noundef 0) #9
  %sec4_sg_bytes.i = getelementptr inbounds %struct.rsa_edesc, ptr %call12, i32 0, i32 4
  %85 = ptrtoint ptr %sec4_sg_bytes.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sec4_sg_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i = icmp eq i32 %86, 0
  br i1 %tobool.not.i, label %init_fail.rsa_io_unmap.exit_crit_edge, label %if.then.i

init_fail.rsa_io_unmap.exit_crit_edge:            ; preds = %init_fail
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsa_io_unmap.exit

if.then.i:                                        ; preds = %init_fail
  call void @__sanitizer_cov_trace_pc() #11
  %sec4_sg_dma.i49 = getelementptr inbounds %struct.rsa_edesc, ptr %call12, i32 0, i32 6
  %87 = ptrtoint ptr %sec4_sg_dma.i49 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sec4_sg_dma.i49, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %88, i32 noundef %86, i32 noundef 1, i32 noundef 0) #9
  br label %rsa_io_unmap.exit

rsa_io_unmap.exit:                                ; preds = %if.then.i, %init_fail.rsa_io_unmap.exit_crit_edge
  tail call void @kfree(ptr noundef %call12) #9
  br label %cleanup

cleanup:                                          ; preds = %rsa_io_unmap.exit, %if.end20, %if.then14, %if.then7, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -75, %if.then7 ], [ %14, %if.then14 ], [ -12, %rsa_io_unmap.exit ], [ %call21, %if.end20 ], [ -22, %lor.rhs.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caam_rsa_dec(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %key2 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 3
  %2 = ptrtoint ptr %key2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.rhs, !prof !140

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %d = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 4
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.rhs.cleanup_crit_edge, label %if.end, !prof !140

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %dst_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst_len, align 4
  %n_sz = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 36
  %8 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp ult i32 %7, %9
  br i1 %cmp, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dst_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dst_len, align 4
  %dev = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 60
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.9) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %priv_form = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 56
  %13 = ptrtoint ptr %priv_form to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %priv_form, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.else18 [
    i32 2, label %if.then12
    i32 1, label %if.then16
  ]

if.then12:                                        ; preds = %if.end10
  %dev.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 60
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %18 = load i32, ptr @caam_ptr_sz, align 4
  %mul.i = mul i32 %18, 9
  %add2.i = add i32 %mul.i, 16
  %call3.i = tail call fastcc ptr @rsa_edesc_alloc(ptr noundef %req, i32 noundef %add2.i) #9
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call3.i to i32
  br label %cleanup

if.end.i:                                         ; preds = %if.then12
  %20 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tfm.i, align 16
  %dev3.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %21, i32 1, i32 4, i32 60
  %22 = ptrtoint ptr %dev3.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev3.i.i, align 4
  %pdb4.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8
  %p_sz5.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %21, i32 1, i32 4, i32 48
  %24 = ptrtoint ptr %p_sz5.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %p_sz5.i.i, align 4
  %q_sz6.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %21, i32 1, i32 4, i32 52
  %26 = ptrtoint ptr %q_sz6.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %q_sz6.i.i, align 4
  %p.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %21, i32 1, i32 4, i32 8
  %28 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %29) #9
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %dma_map_single_attrs.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge, label %if.then.i.i.i, !prof !141

land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %23) #9
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %30 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %23, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %33, %if.end.i.i.i.i ], [ %31, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #9
  br label %dma_map_single_attrs.exit.thread.i.i

dma_map_single_attrs.exit.thread.i.i:             ; preds = %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge
  %p_dma300.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 4
  %34 = ptrtoint ptr %p_dma300.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %p_dma300.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef -1) #9
  br label %do.end.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end.i
  tail call void @debug_dma_map_single(ptr noundef %23, ptr noundef %29, i32 noundef %25) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %29 to i32
  %sub.i.i.i = add i32 %36, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %35, i32 %shr.i.i.i
  %and.i.i.i = and i32 %36, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %23, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %25, i32 noundef 1, i32 noundef 0) #9
  %p_dma.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 4
  %37 = ptrtoint ptr %p_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call41.i.i.i, ptr %p_dma.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %call41.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call41.i.i.i, -1
  br i1 %cmp.i.i.i, label %dma_map_single_attrs.exit.i.i.do.end.i.i_crit_edge, label %if.end.i.i

dma_map_single_attrs.exit.i.i.do.end.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %dma_map_single_attrs.exit.i.i.do.end.i.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.34) #13
  br label %init_fail.i

if.end.i.i:                                       ; preds = %dma_map_single_attrs.exit.i.i
  %q.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %21, i32 1, i32 4, i32 12
  %38 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %q.i.i, align 4
  %call.i179.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %39) #9
  br i1 %call.i179.i.i, label %land.rhs.i181.i.i, label %dma_map_single_attrs.exit196.i.i

land.rhs.i181.i.i:                                ; preds = %if.end.i.i
  %.b1.i180.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i180.i.i, label %land.rhs.i181.i.i.dma_map_single_attrs.exit196.thread.i.i_crit_edge, label %if.then.i185.i.i, !prof !141

land.rhs.i181.i.i.dma_map_single_attrs.exit196.thread.i.i_crit_edge: ; preds = %land.rhs.i181.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit196.thread.i.i

if.then.i185.i.i:                                 ; preds = %land.rhs.i181.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i182.i.i = tail call ptr @dev_driver_string(ptr noundef %23) #9
  %init_name.i.i183.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %40 = ptrtoint ptr %init_name.i.i183.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i.i183.i.i, align 8
  %tobool.not.i.i184.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i184.i.i, label %if.end.i.i186.i.i, label %if.then.i185.i.i.dev_name.exit.i188.i.i_crit_edge

if.then.i185.i.i.dev_name.exit.i188.i.i_crit_edge: ; preds = %if.then.i185.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i188.i.i

if.end.i.i186.i.i:                                ; preds = %if.then.i185.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %23, align 4
  br label %dev_name.exit.i188.i.i

dev_name.exit.i188.i.i:                           ; preds = %if.end.i.i186.i.i, %if.then.i185.i.i.dev_name.exit.i188.i.i_crit_edge
  %retval.0.i.i187.i.i = phi ptr [ %43, %if.end.i.i186.i.i ], [ %41, %if.then.i185.i.i.dev_name.exit.i188.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i182.i.i, ptr noundef %retval.0.i.i187.i.i) #9
  br label %dma_map_single_attrs.exit196.thread.i.i

dma_map_single_attrs.exit196.thread.i.i:          ; preds = %dev_name.exit.i188.i.i, %land.rhs.i181.i.i.dma_map_single_attrs.exit196.thread.i.i_crit_edge
  %q_dma308.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 5
  %44 = ptrtoint ptr %q_dma308.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %q_dma308.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef -1) #9
  br label %do.end17.i.i

dma_map_single_attrs.exit196.i.i:                 ; preds = %if.end.i.i
  tail call void @debug_dma_map_single(ptr noundef %23, ptr noundef %39, i32 noundef %27) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %45 = load ptr, ptr @mem_map, align 4
  %46 = ptrtoint ptr %39 to i32
  %sub.i189.i.i = add i32 %46, 1073741824
  %shr.i190.i.i = lshr i32 %sub.i189.i.i, 12
  %add.ptr.i191.i.i = getelementptr %struct.page, ptr %45, i32 %shr.i190.i.i
  %and.i192.i.i = and i32 %46, 4095
  %call41.i193.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %23, ptr noundef %add.ptr.i191.i.i, i32 noundef %and.i192.i.i, i32 noundef %27, i32 noundef 1, i32 noundef 0) #9
  %q_dma.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 5
  %47 = ptrtoint ptr %q_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call41.i193.i.i, ptr %q_dma.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %call41.i193.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i193.i.i)
  %cmp.i197.i.i = icmp eq i32 %call41.i193.i.i, -1
  br i1 %cmp.i197.i.i, label %dma_map_single_attrs.exit196.i.i.do.end17.i.i_crit_edge, label %if.end18.i.i

dma_map_single_attrs.exit196.i.i.do.end17.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit196.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17.i.i

do.end17.i.i:                                     ; preds = %dma_map_single_attrs.exit196.i.i.do.end17.i.i_crit_edge, %dma_map_single_attrs.exit196.thread.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.37) #13
  br label %unmap_p.i.i

if.end18.i.i:                                     ; preds = %dma_map_single_attrs.exit196.i.i
  %dp.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %21, i32 1, i32 4, i32 16
  %48 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dp.i.i, align 4
  %call.i199.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %49) #9
  br i1 %call.i199.i.i, label %land.rhs.i201.i.i, label %dma_map_single_attrs.exit216.i.i

land.rhs.i201.i.i:                                ; preds = %if.end18.i.i
  %.b1.i200.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i200.i.i, label %land.rhs.i201.i.i.dma_map_single_attrs.exit216.thread.i.i_crit_edge, label %if.then.i205.i.i, !prof !141

land.rhs.i201.i.i.dma_map_single_attrs.exit216.thread.i.i_crit_edge: ; preds = %land.rhs.i201.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit216.thread.i.i

if.then.i205.i.i:                                 ; preds = %land.rhs.i201.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i202.i.i = tail call ptr @dev_driver_string(ptr noundef %23) #9
  %init_name.i.i203.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %50 = ptrtoint ptr %init_name.i.i203.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i.i203.i.i, align 8
  %tobool.not.i.i204.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i204.i.i, label %if.end.i.i206.i.i, label %if.then.i205.i.i.dev_name.exit.i208.i.i_crit_edge

if.then.i205.i.i.dev_name.exit.i208.i.i_crit_edge: ; preds = %if.then.i205.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i208.i.i

if.end.i.i206.i.i:                                ; preds = %if.then.i205.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %23, align 4
  br label %dev_name.exit.i208.i.i

dev_name.exit.i208.i.i:                           ; preds = %if.end.i.i206.i.i, %if.then.i205.i.i.dev_name.exit.i208.i.i_crit_edge
  %retval.0.i.i207.i.i = phi ptr [ %53, %if.end.i.i206.i.i ], [ %51, %if.then.i205.i.i.dev_name.exit.i208.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i202.i.i, ptr noundef %retval.0.i.i207.i.i) #9
  br label %dma_map_single_attrs.exit216.thread.i.i

dma_map_single_attrs.exit216.thread.i.i:          ; preds = %dev_name.exit.i208.i.i, %land.rhs.i201.i.i.dma_map_single_attrs.exit216.thread.i.i_crit_edge
  %dp_dma317.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 6
  %54 = ptrtoint ptr %dp_dma317.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %dp_dma317.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef -1) #9
  br label %do.end26.i.i

dma_map_single_attrs.exit216.i.i:                 ; preds = %if.end18.i.i
  tail call void @debug_dma_map_single(ptr noundef %23, ptr noundef %49, i32 noundef %25) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %55 = load ptr, ptr @mem_map, align 4
  %56 = ptrtoint ptr %49 to i32
  %sub.i209.i.i = add i32 %56, 1073741824
  %shr.i210.i.i = lshr i32 %sub.i209.i.i, 12
  %add.ptr.i211.i.i = getelementptr %struct.page, ptr %55, i32 %shr.i210.i.i
  %and.i212.i.i = and i32 %56, 4095
  %call41.i213.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %23, ptr noundef %add.ptr.i211.i.i, i32 noundef %and.i212.i.i, i32 noundef %25, i32 noundef 1, i32 noundef 0) #9
  %dp_dma.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 6
  %57 = ptrtoint ptr %dp_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call41.i213.i.i, ptr %dp_dma.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %call41.i213.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i213.i.i)
  %cmp.i217.i.i = icmp eq i32 %call41.i213.i.i, -1
  br i1 %cmp.i217.i.i, label %dma_map_single_attrs.exit216.i.i.do.end26.i.i_crit_edge, label %if.end27.i.i

dma_map_single_attrs.exit216.i.i.do.end26.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit216.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %dma_map_single_attrs.exit216.i.i.do.end26.i.i_crit_edge, %dma_map_single_attrs.exit216.thread.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.40) #13
  br label %unmap_q.i.i

if.end27.i.i:                                     ; preds = %dma_map_single_attrs.exit216.i.i
  %dq.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %21, i32 1, i32 4, i32 20
  %58 = ptrtoint ptr %dq.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dq.i.i, align 4
  %call.i219.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %59) #9
  br i1 %call.i219.i.i, label %land.rhs.i221.i.i, label %dma_map_single_attrs.exit236.i.i

land.rhs.i221.i.i:                                ; preds = %if.end27.i.i
  %.b1.i220.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i220.i.i, label %land.rhs.i221.i.i.dma_map_single_attrs.exit236.thread.i.i_crit_edge, label %if.then.i225.i.i, !prof !141

land.rhs.i221.i.i.dma_map_single_attrs.exit236.thread.i.i_crit_edge: ; preds = %land.rhs.i221.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit236.thread.i.i

if.then.i225.i.i:                                 ; preds = %land.rhs.i221.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i222.i.i = tail call ptr @dev_driver_string(ptr noundef %23) #9
  %init_name.i.i223.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %60 = ptrtoint ptr %init_name.i.i223.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %init_name.i.i223.i.i, align 8
  %tobool.not.i.i224.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i224.i.i, label %if.end.i.i226.i.i, label %if.then.i225.i.i.dev_name.exit.i228.i.i_crit_edge

if.then.i225.i.i.dev_name.exit.i228.i.i_crit_edge: ; preds = %if.then.i225.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i228.i.i

if.end.i.i226.i.i:                                ; preds = %if.then.i225.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %23, align 4
  br label %dev_name.exit.i228.i.i

dev_name.exit.i228.i.i:                           ; preds = %if.end.i.i226.i.i, %if.then.i225.i.i.dev_name.exit.i228.i.i_crit_edge
  %retval.0.i.i227.i.i = phi ptr [ %63, %if.end.i.i226.i.i ], [ %61, %if.then.i225.i.i.dev_name.exit.i228.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i222.i.i, ptr noundef %retval.0.i.i227.i.i) #9
  br label %dma_map_single_attrs.exit236.thread.i.i

dma_map_single_attrs.exit236.thread.i.i:          ; preds = %dev_name.exit.i228.i.i, %land.rhs.i221.i.i.dma_map_single_attrs.exit236.thread.i.i_crit_edge
  %dq_dma326.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 7
  %64 = ptrtoint ptr %dq_dma326.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %dq_dma326.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef -1) #9
  br label %do.end35.i.i

dma_map_single_attrs.exit236.i.i:                 ; preds = %if.end27.i.i
  tail call void @debug_dma_map_single(ptr noundef %23, ptr noundef %59, i32 noundef %27) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %65 = load ptr, ptr @mem_map, align 4
  %66 = ptrtoint ptr %59 to i32
  %sub.i229.i.i = add i32 %66, 1073741824
  %shr.i230.i.i = lshr i32 %sub.i229.i.i, 12
  %add.ptr.i231.i.i = getelementptr %struct.page, ptr %65, i32 %shr.i230.i.i
  %and.i232.i.i = and i32 %66, 4095
  %call41.i233.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %23, ptr noundef %add.ptr.i231.i.i, i32 noundef %and.i232.i.i, i32 noundef %27, i32 noundef 1, i32 noundef 0) #9
  %dq_dma.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 7
  %67 = ptrtoint ptr %dq_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call41.i233.i.i, ptr %dq_dma.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %call41.i233.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i233.i.i)
  %cmp.i237.i.i = icmp eq i32 %call41.i233.i.i, -1
  br i1 %cmp.i237.i.i, label %dma_map_single_attrs.exit236.i.i.do.end35.i.i_crit_edge, label %if.end36.i.i

dma_map_single_attrs.exit236.i.i.do.end35.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit236.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35.i.i

do.end35.i.i:                                     ; preds = %dma_map_single_attrs.exit236.i.i.do.end35.i.i_crit_edge, %dma_map_single_attrs.exit236.thread.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.43) #13
  br label %unmap_dp.i.i

if.end36.i.i:                                     ; preds = %dma_map_single_attrs.exit236.i.i
  %qinv.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %21, i32 1, i32 4, i32 24
  %68 = ptrtoint ptr %qinv.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %qinv.i.i, align 4
  %call.i239.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %69) #9
  br i1 %call.i239.i.i, label %land.rhs.i241.i.i, label %dma_map_single_attrs.exit256.i.i

land.rhs.i241.i.i:                                ; preds = %if.end36.i.i
  %.b1.i240.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i240.i.i, label %land.rhs.i241.i.i.dma_map_single_attrs.exit256.thread.i.i_crit_edge, label %if.then.i245.i.i, !prof !141

land.rhs.i241.i.i.dma_map_single_attrs.exit256.thread.i.i_crit_edge: ; preds = %land.rhs.i241.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit256.thread.i.i

if.then.i245.i.i:                                 ; preds = %land.rhs.i241.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i242.i.i = tail call ptr @dev_driver_string(ptr noundef %23) #9
  %init_name.i.i243.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %70 = ptrtoint ptr %init_name.i.i243.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %init_name.i.i243.i.i, align 8
  %tobool.not.i.i244.i.i = icmp eq ptr %71, null
  br i1 %tobool.not.i.i244.i.i, label %if.end.i.i246.i.i, label %if.then.i245.i.i.dev_name.exit.i248.i.i_crit_edge

if.then.i245.i.i.dev_name.exit.i248.i.i_crit_edge: ; preds = %if.then.i245.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i248.i.i

if.end.i.i246.i.i:                                ; preds = %if.then.i245.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %23, align 4
  br label %dev_name.exit.i248.i.i

dev_name.exit.i248.i.i:                           ; preds = %if.end.i.i246.i.i, %if.then.i245.i.i.dev_name.exit.i248.i.i_crit_edge
  %retval.0.i.i247.i.i = phi ptr [ %73, %if.end.i.i246.i.i ], [ %71, %if.then.i245.i.i.dev_name.exit.i248.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i242.i.i, ptr noundef %retval.0.i.i247.i.i) #9
  br label %dma_map_single_attrs.exit256.thread.i.i

dma_map_single_attrs.exit256.thread.i.i:          ; preds = %dev_name.exit.i248.i.i, %land.rhs.i241.i.i.dma_map_single_attrs.exit256.thread.i.i_crit_edge
  %c_dma335.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 3
  %74 = ptrtoint ptr %c_dma335.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %c_dma335.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef -1) #9
  br label %do.end44.i.i

dma_map_single_attrs.exit256.i.i:                 ; preds = %if.end36.i.i
  tail call void @debug_dma_map_single(ptr noundef %23, ptr noundef %69, i32 noundef %25) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %75 = load ptr, ptr @mem_map, align 4
  %76 = ptrtoint ptr %69 to i32
  %sub.i249.i.i = add i32 %76, 1073741824
  %shr.i250.i.i = lshr i32 %sub.i249.i.i, 12
  %add.ptr.i251.i.i = getelementptr %struct.page, ptr %75, i32 %shr.i250.i.i
  %and.i252.i.i = and i32 %76, 4095
  %call41.i253.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %23, ptr noundef %add.ptr.i251.i.i, i32 noundef %and.i252.i.i, i32 noundef %25, i32 noundef 1, i32 noundef 0) #9
  %c_dma.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 3
  %77 = ptrtoint ptr %c_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call41.i253.i.i, ptr %c_dma.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %call41.i253.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i253.i.i)
  %cmp.i257.i.i = icmp eq i32 %call41.i253.i.i, -1
  br i1 %cmp.i257.i.i, label %dma_map_single_attrs.exit256.i.i.do.end44.i.i_crit_edge, label %if.end45.i.i

dma_map_single_attrs.exit256.i.i.do.end44.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit256.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44.i.i

do.end44.i.i:                                     ; preds = %dma_map_single_attrs.exit256.i.i.do.end44.i.i_crit_edge, %dma_map_single_attrs.exit256.thread.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.46) #13
  br label %unmap_dq.i.i

if.end45.i.i:                                     ; preds = %dma_map_single_attrs.exit256.i.i
  %tmp1.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %21, i32 1, i32 4, i32 28
  %78 = ptrtoint ptr %tmp1.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tmp1.i.i, align 4
  %call.i259.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %79) #9
  br i1 %call.i259.i.i, label %land.rhs.i261.i.i, label %dma_map_single_attrs.exit276.i.i

land.rhs.i261.i.i:                                ; preds = %if.end45.i.i
  %.b1.i260.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i260.i.i, label %land.rhs.i261.i.i.dma_map_single_attrs.exit276.thread.i.i_crit_edge, label %if.then.i265.i.i, !prof !141

land.rhs.i261.i.i.dma_map_single_attrs.exit276.thread.i.i_crit_edge: ; preds = %land.rhs.i261.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit276.thread.i.i

if.then.i265.i.i:                                 ; preds = %land.rhs.i261.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i262.i.i = tail call ptr @dev_driver_string(ptr noundef %23) #9
  %init_name.i.i263.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %80 = ptrtoint ptr %init_name.i.i263.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %init_name.i.i263.i.i, align 8
  %tobool.not.i.i264.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i264.i.i, label %if.end.i.i266.i.i, label %if.then.i265.i.i.dev_name.exit.i268.i.i_crit_edge

if.then.i265.i.i.dev_name.exit.i268.i.i_crit_edge: ; preds = %if.then.i265.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i268.i.i

if.end.i.i266.i.i:                                ; preds = %if.then.i265.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %23, align 4
  br label %dev_name.exit.i268.i.i

dev_name.exit.i268.i.i:                           ; preds = %if.end.i.i266.i.i, %if.then.i265.i.i.dev_name.exit.i268.i.i_crit_edge
  %retval.0.i.i267.i.i = phi ptr [ %83, %if.end.i.i266.i.i ], [ %81, %if.then.i265.i.i.dev_name.exit.i268.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i262.i.i, ptr noundef %retval.0.i.i267.i.i) #9
  br label %dma_map_single_attrs.exit276.thread.i.i

dma_map_single_attrs.exit276.thread.i.i:          ; preds = %dev_name.exit.i268.i.i, %land.rhs.i261.i.i.dma_map_single_attrs.exit276.thread.i.i_crit_edge
  %tmp1_dma344.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 8
  %84 = ptrtoint ptr %tmp1_dma344.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %tmp1_dma344.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef -1) #9
  br label %do.end53.i.i

dma_map_single_attrs.exit276.i.i:                 ; preds = %if.end45.i.i
  tail call void @debug_dma_map_single(ptr noundef %23, ptr noundef %79, i32 noundef %25) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %85 = load ptr, ptr @mem_map, align 4
  %86 = ptrtoint ptr %79 to i32
  %sub.i269.i.i = add i32 %86, 1073741824
  %shr.i270.i.i = lshr i32 %sub.i269.i.i, 12
  %add.ptr.i271.i.i = getelementptr %struct.page, ptr %85, i32 %shr.i270.i.i
  %and.i272.i.i = and i32 %86, 4095
  %call41.i273.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %23, ptr noundef %add.ptr.i271.i.i, i32 noundef %and.i272.i.i, i32 noundef %25, i32 noundef 0, i32 noundef 0) #9
  %tmp1_dma.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 8
  %87 = ptrtoint ptr %tmp1_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call41.i273.i.i, ptr %tmp1_dma.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %call41.i273.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i273.i.i)
  %cmp.i277.i.i = icmp eq i32 %call41.i273.i.i, -1
  br i1 %cmp.i277.i.i, label %dma_map_single_attrs.exit276.i.i.do.end53.i.i_crit_edge, label %if.end54.i.i

dma_map_single_attrs.exit276.i.i.do.end53.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit276.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53.i.i

do.end53.i.i:                                     ; preds = %dma_map_single_attrs.exit276.i.i.do.end53.i.i_crit_edge, %dma_map_single_attrs.exit276.thread.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.49) #13
  br label %unmap_qinv.i.i

if.end54.i.i:                                     ; preds = %dma_map_single_attrs.exit276.i.i
  %tmp2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %21, i32 1, i32 4, i32 32
  %88 = ptrtoint ptr %tmp2.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tmp2.i.i, align 4
  %call.i279.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %89) #9
  br i1 %call.i279.i.i, label %land.rhs.i281.i.i, label %dma_map_single_attrs.exit296.i.i

land.rhs.i281.i.i:                                ; preds = %if.end54.i.i
  %.b1.i280.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i280.i.i, label %land.rhs.i281.i.i.dma_map_single_attrs.exit296.thread.i.i_crit_edge, label %if.then.i285.i.i, !prof !141

land.rhs.i281.i.i.dma_map_single_attrs.exit296.thread.i.i_crit_edge: ; preds = %land.rhs.i281.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit296.thread.i.i

if.then.i285.i.i:                                 ; preds = %land.rhs.i281.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i282.i.i = tail call ptr @dev_driver_string(ptr noundef %23) #9
  %init_name.i.i283.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %90 = ptrtoint ptr %init_name.i.i283.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %init_name.i.i283.i.i, align 8
  %tobool.not.i.i284.i.i = icmp eq ptr %91, null
  br i1 %tobool.not.i.i284.i.i, label %if.end.i.i286.i.i, label %if.then.i285.i.i.dev_name.exit.i288.i.i_crit_edge

if.then.i285.i.i.dev_name.exit.i288.i.i_crit_edge: ; preds = %if.then.i285.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i288.i.i

if.end.i.i286.i.i:                                ; preds = %if.then.i285.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %23, align 4
  br label %dev_name.exit.i288.i.i

dev_name.exit.i288.i.i:                           ; preds = %if.end.i.i286.i.i, %if.then.i285.i.i.dev_name.exit.i288.i.i_crit_edge
  %retval.0.i.i287.i.i = phi ptr [ %93, %if.end.i.i286.i.i ], [ %91, %if.then.i285.i.i.dev_name.exit.i288.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i282.i.i, ptr noundef %retval.0.i.i287.i.i) #9
  br label %dma_map_single_attrs.exit296.thread.i.i

dma_map_single_attrs.exit296.thread.i.i:          ; preds = %dev_name.exit.i288.i.i, %land.rhs.i281.i.i.dma_map_single_attrs.exit296.thread.i.i_crit_edge
  %tmp2_dma353.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 9
  %94 = ptrtoint ptr %tmp2_dma353.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %tmp2_dma353.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef -1) #9
  br label %do.end62.i.i

dma_map_single_attrs.exit296.i.i:                 ; preds = %if.end54.i.i
  tail call void @debug_dma_map_single(ptr noundef %23, ptr noundef %89, i32 noundef %27) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %95 = load ptr, ptr @mem_map, align 4
  %96 = ptrtoint ptr %89 to i32
  %sub.i289.i.i = add i32 %96, 1073741824
  %shr.i290.i.i = lshr i32 %sub.i289.i.i, 12
  %add.ptr.i291.i.i = getelementptr %struct.page, ptr %95, i32 %shr.i290.i.i
  %and.i292.i.i = and i32 %96, 4095
  %call41.i293.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %23, ptr noundef %add.ptr.i291.i.i, i32 noundef %and.i292.i.i, i32 noundef %27, i32 noundef 0, i32 noundef 0) #9
  %tmp2_dma.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 9
  %97 = ptrtoint ptr %tmp2_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call41.i293.i.i, ptr %tmp2_dma.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %call41.i293.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i293.i.i)
  %cmp.i297.i.i = icmp eq i32 %call41.i293.i.i, -1
  br i1 %cmp.i297.i.i, label %dma_map_single_attrs.exit296.i.i.do.end62.i.i_crit_edge, label %if.end63.i.i

dma_map_single_attrs.exit296.i.i.do.end62.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit296.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62.i.i

do.end62.i.i:                                     ; preds = %dma_map_single_attrs.exit296.i.i.do.end62.i.i_crit_edge, %dma_map_single_attrs.exit296.thread.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.52) #13
  %98 = ptrtoint ptr %tmp1_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tmp1_dma.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %99, i32 noundef %25, i32 noundef 0, i32 noundef 0) #9
  br label %unmap_qinv.i.i

if.end63.i.i:                                     ; preds = %dma_map_single_attrs.exit296.i.i
  %mapped_src_nents.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 2
  %100 = ptrtoint ptr %mapped_src_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mapped_src_nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp.i26.i = icmp sgt i32 %101, 1
  br i1 %cmp.i26.i, label %if.then64.i.i, label %if.else.i.i

if.then64.i.i:                                    ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %pdb4.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pdb4.i.i, align 4
  %or.i.i = or i32 %103, -2147483648
  store i32 %or.i.i, ptr %pdb4.i.i, align 4
  %sec4_sg_dma.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 6
  %phi.bo.i.i = shl i32 %101, 4
  br label %if.end68.i.i

if.else.i.i:                                      ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %fixup_src.i.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5
  %104 = ptrtoint ptr %fixup_src.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fixup_src.i.i, align 4
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %105, i32 0, i32 3
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.else.i.i, %if.then64.i.i
  %.sink.in.i.i = phi ptr [ %sec4_sg_dma.i.i, %if.then64.i.i ], [ %dma_address.i.i, %if.else.i.i ]
  %sec4_sg_index.0.i.i = phi i32 [ %phi.bo.i.i, %if.then64.i.i ], [ 0, %if.else.i.i ]
  %106 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4
  %107 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 1
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %.sink.i.i, ptr %107, align 4
  %mapped_dst_nents.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 3
  %109 = ptrtoint ptr %mapped_dst_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mapped_dst_nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp69.i.i = icmp sgt i32 %110, 1
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.else75.i.i

if.then70.i.i:                                    ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %pdb4.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pdb4.i.i, align 4
  %or72.i.i = or i32 %112, 1073741824
  store i32 %or72.i.i, ptr %pdb4.i.i, align 4
  %sec4_sg_dma73.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 6
  %113 = ptrtoint ptr %sec4_sg_dma73.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sec4_sg_dma73.i.i, align 4
  %add74.i.i = add i32 %114, %sec4_sg_index.0.i.i
  br label %if.end8.i

if.else75.i.i:                                    ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dst.i.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %115 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dst.i.i, align 4
  %dma_address76.i.i = getelementptr inbounds %struct.scatterlist, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %dma_address76.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma_address76.i.i, align 4
  br label %if.end8.i

unmap_qinv.i.i:                                   ; preds = %do.end62.i.i, %do.end53.i.i
  %119 = ptrtoint ptr %c_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %c_dma.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %120, i32 noundef %25, i32 noundef 1, i32 noundef 0) #9
  br label %unmap_dq.i.i

unmap_dq.i.i:                                     ; preds = %unmap_qinv.i.i, %do.end44.i.i
  %121 = ptrtoint ptr %dq_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %dq_dma.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %122, i32 noundef %27, i32 noundef 1, i32 noundef 0) #9
  br label %unmap_dp.i.i

unmap_dp.i.i:                                     ; preds = %unmap_dq.i.i, %do.end35.i.i
  %123 = ptrtoint ptr %dp_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dp_dma.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %124, i32 noundef %25, i32 noundef 1, i32 noundef 0) #9
  br label %unmap_q.i.i

unmap_q.i.i:                                      ; preds = %unmap_dp.i.i, %do.end26.i.i
  %125 = ptrtoint ptr %q_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %q_dma.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %126, i32 noundef %27, i32 noundef 1, i32 noundef 0) #9
  br label %unmap_p.i.i

unmap_p.i.i:                                      ; preds = %unmap_q.i.i, %do.end17.i.i
  %127 = ptrtoint ptr %p_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %p_dma.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %128, i32 noundef %25, i32 noundef 1, i32 noundef 0) #9
  br label %init_fail.i

if.end8.i:                                        ; preds = %if.else75.i.i, %if.then70.i.i
  %.sink357.i.i = phi i32 [ %add74.i.i, %if.then70.i.i ], [ %118, %if.else75.i.i ]
  %129 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 2
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %.sink357.i.i, ptr %129, align 4
  %n_sz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %21, i32 1, i32 4, i32 36
  %131 = ptrtoint ptr %n_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %n_sz.i.i, align 4
  %133 = ptrtoint ptr %pdb4.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %pdb4.i.i, align 4
  %or80.i.i = or i32 %134, %132
  store i32 %or80.i.i, ptr %pdb4.i.i, align 4
  %shl.i.i = shl i32 %27, 12
  %or81.i.i = or i32 %shl.i.i, %25
  %p_q_len.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 8, i32 0, i32 10
  %135 = ptrtoint ptr %p_q_len.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %or81.i.i, ptr %p_q_len.i.i, align 4
  %hw_desc.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 9
  tail call void @init_rsa_priv_f3_desc(ptr noundef %hw_desc.i, ptr noundef %pdb4.i.i) #9
  %call9.i = tail call fastcc i32 @akcipher_enqueue_req(ptr noundef %17, ptr noundef nonnull @rsa_priv_f_done, ptr noundef %req) #9
  br label %cleanup

init_fail.i:                                      ; preds = %unmap_p.i.i, %do.end.i.i
  %dst.i27.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %136 = ptrtoint ptr %dst.i27.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dst.i27.i, align 4
  %dst_nents.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 1
  %138 = ptrtoint ptr %dst_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %dst_nents.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %17, ptr noundef %137, i32 noundef %139, i32 noundef 2, i32 noundef 0) #9
  %fixup_src.i28.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5
  %140 = ptrtoint ptr %fixup_src.i28.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %fixup_src.i28.i, align 4
  %142 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %call3.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %17, ptr noundef %141, i32 noundef %143, i32 noundef 1, i32 noundef 0) #9
  %sec4_sg_bytes.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 4
  %144 = ptrtoint ptr %sec4_sg_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sec4_sg_bytes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not.i.i = icmp eq i32 %145, 0
  br i1 %tobool.not.i.i, label %init_fail.i.rsa_io_unmap.exit.i_crit_edge, label %if.then.i.i

init_fail.i.rsa_io_unmap.exit.i_crit_edge:        ; preds = %init_fail.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsa_io_unmap.exit.i

if.then.i.i:                                      ; preds = %init_fail.i
  call void @__sanitizer_cov_trace_pc() #11
  %sec4_sg_dma.i29.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i, i32 0, i32 6
  %146 = ptrtoint ptr %sec4_sg_dma.i29.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %sec4_sg_dma.i29.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %147, i32 noundef %145, i32 noundef 1, i32 noundef 0) #9
  br label %rsa_io_unmap.exit.i

rsa_io_unmap.exit.i:                              ; preds = %if.then.i.i, %init_fail.i.rsa_io_unmap.exit.i_crit_edge
  tail call void @kfree(ptr noundef %call3.i) #9
  br label %cleanup

if.then16:                                        ; preds = %if.end10
  %dev.i38 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 60
  %148 = ptrtoint ptr %dev.i38 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev.i38, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %150 = load i32, ptr @caam_ptr_sz, align 4
  %mul.i39 = mul i32 %150, 7
  %add2.i40 = add i32 %mul.i39, 16
  %call3.i41 = tail call fastcc ptr @rsa_edesc_alloc(ptr noundef %req, i32 noundef %add2.i40) #9
  %cmp.i.i42 = icmp ugt ptr %call3.i41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i42, label %if.then.i43, label %if.end.i49

if.then.i43:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %151 = ptrtoint ptr %call3.i41 to i32
  br label %cleanup

if.end.i49:                                       ; preds = %if.then16
  %152 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %tfm.i, align 16
  %dev3.i.i44 = getelementptr inbounds %struct.crypto_tfm, ptr %153, i32 1, i32 4, i32 60
  %154 = ptrtoint ptr %dev3.i.i44 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev3.i.i44, align 4
  %pdb4.i.i45 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 8
  %p_sz5.i.i46 = getelementptr inbounds %struct.crypto_tfm, ptr %153, i32 1, i32 4, i32 48
  %156 = ptrtoint ptr %p_sz5.i.i46 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %p_sz5.i.i46, align 4
  %q_sz6.i.i47 = getelementptr inbounds %struct.crypto_tfm, ptr %153, i32 1, i32 4, i32 52
  %158 = ptrtoint ptr %q_sz6.i.i47 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %q_sz6.i.i47, align 4
  %d.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %153, i32 1, i32 4, i32 4
  %160 = ptrtoint ptr %d.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %d.i.i, align 4
  %d_sz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %153, i32 1, i32 4, i32 44
  %162 = ptrtoint ptr %d_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %d_sz.i.i, align 4
  %call.i.i.i48 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %161) #9
  br i1 %call.i.i.i48, label %land.rhs.i.i.i51, label %dma_map_single_attrs.exit.i.i66

land.rhs.i.i.i51:                                 ; preds = %if.end.i49
  %.b1.i.i.i50 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i50, label %land.rhs.i.i.i51.dma_map_single_attrs.exit.thread.i.i59_crit_edge, label %if.then.i.i.i55, !prof !141

land.rhs.i.i.i51.dma_map_single_attrs.exit.thread.i.i59_crit_edge: ; preds = %land.rhs.i.i.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread.i.i59

if.then.i.i.i55:                                  ; preds = %land.rhs.i.i.i51
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i52 = tail call ptr @dev_driver_string(ptr noundef %155) #9
  %init_name.i.i.i.i53 = getelementptr inbounds %struct.device, ptr %155, i32 0, i32 3
  %164 = ptrtoint ptr %init_name.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %init_name.i.i.i.i53, align 8
  %tobool.not.i.i.i.i54 = icmp eq ptr %165, null
  br i1 %tobool.not.i.i.i.i54, label %if.end.i.i.i.i56, label %if.then.i.i.i55.dev_name.exit.i.i.i58_crit_edge

if.then.i.i.i55.dev_name.exit.i.i.i58_crit_edge:  ; preds = %if.then.i.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i.i58

if.end.i.i.i.i56:                                 ; preds = %if.then.i.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  %166 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %155, align 4
  br label %dev_name.exit.i.i.i58

dev_name.exit.i.i.i58:                            ; preds = %if.end.i.i.i.i56, %if.then.i.i.i55.dev_name.exit.i.i.i58_crit_edge
  %retval.0.i.i.i.i57 = phi ptr [ %167, %if.end.i.i.i.i56 ], [ %165, %if.then.i.i.i55.dev_name.exit.i.i.i58_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i.i.i52, ptr noundef %retval.0.i.i.i.i57) #9
  br label %dma_map_single_attrs.exit.thread.i.i59

dma_map_single_attrs.exit.thread.i.i59:           ; preds = %dev_name.exit.i.i.i58, %land.rhs.i.i.i51.dma_map_single_attrs.exit.thread.i.i59_crit_edge
  %d_dma225.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 8, i32 0, i32 3
  %168 = ptrtoint ptr %d_dma225.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 -1, ptr %d_dma225.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %155, i32 noundef -1) #9
  br label %do.end.i.i67

dma_map_single_attrs.exit.i.i66:                  ; preds = %if.end.i49
  tail call void @debug_dma_map_single(ptr noundef %155, ptr noundef %161, i32 noundef %163) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %169 = load ptr, ptr @mem_map, align 4
  %170 = ptrtoint ptr %161 to i32
  %sub.i.i.i60 = add i32 %170, 1073741824
  %shr.i.i.i61 = lshr i32 %sub.i.i.i60, 12
  %add.ptr.i.i.i62 = getelementptr %struct.page, ptr %169, i32 %shr.i.i.i61
  %and.i.i.i63 = and i32 %170, 4095
  %call41.i.i.i64 = tail call i32 @dma_map_page_attrs(ptr noundef %155, ptr noundef %add.ptr.i.i.i62, i32 noundef %and.i.i.i63, i32 noundef %163, i32 noundef 1, i32 noundef 0) #9
  %d_dma.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 8, i32 0, i32 3
  %171 = ptrtoint ptr %d_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %call41.i.i.i64, ptr %d_dma.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %155, i32 noundef %call41.i.i.i64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i64)
  %cmp.i.i.i65 = icmp eq i32 %call41.i.i.i64, -1
  br i1 %cmp.i.i.i65, label %dma_map_single_attrs.exit.i.i66.do.end.i.i67_crit_edge, label %if.end.i.i69

dma_map_single_attrs.exit.i.i66.do.end.i.i67_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i67

do.end.i.i67:                                     ; preds = %dma_map_single_attrs.exit.i.i66.do.end.i.i67_crit_edge, %dma_map_single_attrs.exit.thread.i.i59
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.54) #13
  br label %init_fail.i111

if.end.i.i69:                                     ; preds = %dma_map_single_attrs.exit.i.i66
  %p.i.i68 = getelementptr inbounds %struct.crypto_tfm, ptr %153, i32 1, i32 4, i32 8
  %172 = ptrtoint ptr %p.i.i68 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %p.i.i68, align 4
  %call.i144.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %173) #9
  br i1 %call.i144.i.i, label %land.rhs.i146.i.i, label %dma_map_single_attrs.exit161.i.i

land.rhs.i146.i.i:                                ; preds = %if.end.i.i69
  %.b1.i145.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i145.i.i, label %land.rhs.i146.i.i.dma_map_single_attrs.exit161.thread.i.i_crit_edge, label %if.then.i150.i.i, !prof !141

land.rhs.i146.i.i.dma_map_single_attrs.exit161.thread.i.i_crit_edge: ; preds = %land.rhs.i146.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit161.thread.i.i

if.then.i150.i.i:                                 ; preds = %land.rhs.i146.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i147.i.i = tail call ptr @dev_driver_string(ptr noundef %155) #9
  %init_name.i.i148.i.i = getelementptr inbounds %struct.device, ptr %155, i32 0, i32 3
  %174 = ptrtoint ptr %init_name.i.i148.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %init_name.i.i148.i.i, align 8
  %tobool.not.i.i149.i.i = icmp eq ptr %175, null
  br i1 %tobool.not.i.i149.i.i, label %if.end.i.i151.i.i, label %if.then.i150.i.i.dev_name.exit.i153.i.i_crit_edge

if.then.i150.i.i.dev_name.exit.i153.i.i_crit_edge: ; preds = %if.then.i150.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i153.i.i

if.end.i.i151.i.i:                                ; preds = %if.then.i150.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %176 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %155, align 4
  br label %dev_name.exit.i153.i.i

dev_name.exit.i153.i.i:                           ; preds = %if.end.i.i151.i.i, %if.then.i150.i.i.dev_name.exit.i153.i.i_crit_edge
  %retval.0.i.i152.i.i = phi ptr [ %177, %if.end.i.i151.i.i ], [ %175, %if.then.i150.i.i.dev_name.exit.i153.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i147.i.i, ptr noundef %retval.0.i.i152.i.i) #9
  br label %dma_map_single_attrs.exit161.thread.i.i

dma_map_single_attrs.exit161.thread.i.i:          ; preds = %dev_name.exit.i153.i.i, %land.rhs.i146.i.i.dma_map_single_attrs.exit161.thread.i.i_crit_edge
  %p_dma233.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 8, i32 0, i32 4
  %178 = ptrtoint ptr %p_dma233.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 -1, ptr %p_dma233.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %155, i32 noundef -1) #9
  br label %do.end17.i.i71

dma_map_single_attrs.exit161.i.i:                 ; preds = %if.end.i.i69
  tail call void @debug_dma_map_single(ptr noundef %155, ptr noundef %173, i32 noundef %157) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %179 = load ptr, ptr @mem_map, align 4
  %180 = ptrtoint ptr %173 to i32
  %sub.i154.i.i = add i32 %180, 1073741824
  %shr.i155.i.i = lshr i32 %sub.i154.i.i, 12
  %add.ptr.i156.i.i = getelementptr %struct.page, ptr %179, i32 %shr.i155.i.i
  %and.i157.i.i = and i32 %180, 4095
  %call41.i158.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %155, ptr noundef %add.ptr.i156.i.i, i32 noundef %and.i157.i.i, i32 noundef %157, i32 noundef 1, i32 noundef 0) #9
  %p_dma.i.i70 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 8, i32 0, i32 4
  %181 = ptrtoint ptr %p_dma.i.i70 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %call41.i158.i.i, ptr %p_dma.i.i70, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %155, i32 noundef %call41.i158.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i158.i.i)
  %cmp.i162.i.i = icmp eq i32 %call41.i158.i.i, -1
  br i1 %cmp.i162.i.i, label %dma_map_single_attrs.exit161.i.i.do.end17.i.i71_crit_edge, label %if.end18.i.i73

dma_map_single_attrs.exit161.i.i.do.end17.i.i71_crit_edge: ; preds = %dma_map_single_attrs.exit161.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17.i.i71

do.end17.i.i71:                                   ; preds = %dma_map_single_attrs.exit161.i.i.do.end17.i.i71_crit_edge, %dma_map_single_attrs.exit161.thread.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.34) #13
  br label %unmap_d.i.i

if.end18.i.i73:                                   ; preds = %dma_map_single_attrs.exit161.i.i
  %q.i.i72 = getelementptr inbounds %struct.crypto_tfm, ptr %153, i32 1, i32 4, i32 12
  %182 = ptrtoint ptr %q.i.i72 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %q.i.i72, align 4
  %call.i164.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %183) #9
  br i1 %call.i164.i.i, label %land.rhs.i166.i.i, label %dma_map_single_attrs.exit181.i.i

land.rhs.i166.i.i:                                ; preds = %if.end18.i.i73
  %.b1.i165.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i165.i.i, label %land.rhs.i166.i.i.dma_map_single_attrs.exit181.thread.i.i_crit_edge, label %if.then.i170.i.i, !prof !141

land.rhs.i166.i.i.dma_map_single_attrs.exit181.thread.i.i_crit_edge: ; preds = %land.rhs.i166.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit181.thread.i.i

if.then.i170.i.i:                                 ; preds = %land.rhs.i166.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i167.i.i = tail call ptr @dev_driver_string(ptr noundef %155) #9
  %init_name.i.i168.i.i = getelementptr inbounds %struct.device, ptr %155, i32 0, i32 3
  %184 = ptrtoint ptr %init_name.i.i168.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %init_name.i.i168.i.i, align 8
  %tobool.not.i.i169.i.i = icmp eq ptr %185, null
  br i1 %tobool.not.i.i169.i.i, label %if.end.i.i171.i.i, label %if.then.i170.i.i.dev_name.exit.i173.i.i_crit_edge

if.then.i170.i.i.dev_name.exit.i173.i.i_crit_edge: ; preds = %if.then.i170.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i173.i.i

if.end.i.i171.i.i:                                ; preds = %if.then.i170.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %186 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %155, align 4
  br label %dev_name.exit.i173.i.i

dev_name.exit.i173.i.i:                           ; preds = %if.end.i.i171.i.i, %if.then.i170.i.i.dev_name.exit.i173.i.i_crit_edge
  %retval.0.i.i172.i.i = phi ptr [ %187, %if.end.i.i171.i.i ], [ %185, %if.then.i170.i.i.dev_name.exit.i173.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i167.i.i, ptr noundef %retval.0.i.i172.i.i) #9
  br label %dma_map_single_attrs.exit181.thread.i.i

dma_map_single_attrs.exit181.thread.i.i:          ; preds = %dev_name.exit.i173.i.i, %land.rhs.i166.i.i.dma_map_single_attrs.exit181.thread.i.i_crit_edge
  %q_dma242.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 8, i32 0, i32 5
  %188 = ptrtoint ptr %q_dma242.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 -1, ptr %q_dma242.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %155, i32 noundef -1) #9
  br label %do.end26.i.i75

dma_map_single_attrs.exit181.i.i:                 ; preds = %if.end18.i.i73
  tail call void @debug_dma_map_single(ptr noundef %155, ptr noundef %183, i32 noundef %159) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %189 = load ptr, ptr @mem_map, align 4
  %190 = ptrtoint ptr %183 to i32
  %sub.i174.i.i = add i32 %190, 1073741824
  %shr.i175.i.i = lshr i32 %sub.i174.i.i, 12
  %add.ptr.i176.i.i = getelementptr %struct.page, ptr %189, i32 %shr.i175.i.i
  %and.i177.i.i = and i32 %190, 4095
  %call41.i178.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %155, ptr noundef %add.ptr.i176.i.i, i32 noundef %and.i177.i.i, i32 noundef %159, i32 noundef 1, i32 noundef 0) #9
  %q_dma.i.i74 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 8, i32 0, i32 5
  %191 = ptrtoint ptr %q_dma.i.i74 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %call41.i178.i.i, ptr %q_dma.i.i74, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %155, i32 noundef %call41.i178.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i178.i.i)
  %cmp.i182.i.i = icmp eq i32 %call41.i178.i.i, -1
  br i1 %cmp.i182.i.i, label %dma_map_single_attrs.exit181.i.i.do.end26.i.i75_crit_edge, label %if.end27.i.i77

dma_map_single_attrs.exit181.i.i.do.end26.i.i75_crit_edge: ; preds = %dma_map_single_attrs.exit181.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26.i.i75

do.end26.i.i75:                                   ; preds = %dma_map_single_attrs.exit181.i.i.do.end26.i.i75_crit_edge, %dma_map_single_attrs.exit181.thread.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.37) #13
  br label %unmap_p.i.i99

if.end27.i.i77:                                   ; preds = %dma_map_single_attrs.exit181.i.i
  %tmp1.i.i76 = getelementptr inbounds %struct.crypto_tfm, ptr %153, i32 1, i32 4, i32 28
  %192 = ptrtoint ptr %tmp1.i.i76 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %tmp1.i.i76, align 4
  %call.i184.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %193) #9
  br i1 %call.i184.i.i, label %land.rhs.i186.i.i, label %dma_map_single_attrs.exit201.i.i

land.rhs.i186.i.i:                                ; preds = %if.end27.i.i77
  %.b1.i185.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i185.i.i, label %land.rhs.i186.i.i.dma_map_single_attrs.exit201.thread.i.i_crit_edge, label %if.then.i190.i.i, !prof !141

land.rhs.i186.i.i.dma_map_single_attrs.exit201.thread.i.i_crit_edge: ; preds = %land.rhs.i186.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit201.thread.i.i

if.then.i190.i.i:                                 ; preds = %land.rhs.i186.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i187.i.i = tail call ptr @dev_driver_string(ptr noundef %155) #9
  %init_name.i.i188.i.i = getelementptr inbounds %struct.device, ptr %155, i32 0, i32 3
  %194 = ptrtoint ptr %init_name.i.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %init_name.i.i188.i.i, align 8
  %tobool.not.i.i189.i.i = icmp eq ptr %195, null
  br i1 %tobool.not.i.i189.i.i, label %if.end.i.i191.i.i, label %if.then.i190.i.i.dev_name.exit.i193.i.i_crit_edge

if.then.i190.i.i.dev_name.exit.i193.i.i_crit_edge: ; preds = %if.then.i190.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i193.i.i

if.end.i.i191.i.i:                                ; preds = %if.then.i190.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %196 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %155, align 4
  br label %dev_name.exit.i193.i.i

dev_name.exit.i193.i.i:                           ; preds = %if.end.i.i191.i.i, %if.then.i190.i.i.dev_name.exit.i193.i.i_crit_edge
  %retval.0.i.i192.i.i = phi ptr [ %197, %if.end.i.i191.i.i ], [ %195, %if.then.i190.i.i.dev_name.exit.i193.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i187.i.i, ptr noundef %retval.0.i.i192.i.i) #9
  br label %dma_map_single_attrs.exit201.thread.i.i

dma_map_single_attrs.exit201.thread.i.i:          ; preds = %dev_name.exit.i193.i.i, %land.rhs.i186.i.i.dma_map_single_attrs.exit201.thread.i.i_crit_edge
  %tmp1_dma251.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 8, i32 0, i32 6
  %198 = ptrtoint ptr %tmp1_dma251.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 -1, ptr %tmp1_dma251.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %155, i32 noundef -1) #9
  br label %do.end35.i.i79

dma_map_single_attrs.exit201.i.i:                 ; preds = %if.end27.i.i77
  tail call void @debug_dma_map_single(ptr noundef %155, ptr noundef %193, i32 noundef %157) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %199 = load ptr, ptr @mem_map, align 4
  %200 = ptrtoint ptr %193 to i32
  %sub.i194.i.i = add i32 %200, 1073741824
  %shr.i195.i.i = lshr i32 %sub.i194.i.i, 12
  %add.ptr.i196.i.i = getelementptr %struct.page, ptr %199, i32 %shr.i195.i.i
  %and.i197.i.i = and i32 %200, 4095
  %call41.i198.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %155, ptr noundef %add.ptr.i196.i.i, i32 noundef %and.i197.i.i, i32 noundef %157, i32 noundef 0, i32 noundef 0) #9
  %tmp1_dma.i.i78 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 8, i32 0, i32 6
  %201 = ptrtoint ptr %tmp1_dma.i.i78 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %call41.i198.i.i, ptr %tmp1_dma.i.i78, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %155, i32 noundef %call41.i198.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i198.i.i)
  %cmp.i202.i.i = icmp eq i32 %call41.i198.i.i, -1
  br i1 %cmp.i202.i.i, label %dma_map_single_attrs.exit201.i.i.do.end35.i.i79_crit_edge, label %if.end36.i.i81

dma_map_single_attrs.exit201.i.i.do.end35.i.i79_crit_edge: ; preds = %dma_map_single_attrs.exit201.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35.i.i79

do.end35.i.i79:                                   ; preds = %dma_map_single_attrs.exit201.i.i.do.end35.i.i79_crit_edge, %dma_map_single_attrs.exit201.thread.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.49) #13
  br label %unmap_q.i.i98

if.end36.i.i81:                                   ; preds = %dma_map_single_attrs.exit201.i.i
  %tmp2.i.i80 = getelementptr inbounds %struct.crypto_tfm, ptr %153, i32 1, i32 4, i32 32
  %202 = ptrtoint ptr %tmp2.i.i80 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %tmp2.i.i80, align 4
  %call.i204.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %203) #9
  br i1 %call.i204.i.i, label %land.rhs.i206.i.i, label %dma_map_single_attrs.exit221.i.i

land.rhs.i206.i.i:                                ; preds = %if.end36.i.i81
  %.b1.i205.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i205.i.i, label %land.rhs.i206.i.i.dma_map_single_attrs.exit221.thread.i.i_crit_edge, label %if.then.i210.i.i, !prof !141

land.rhs.i206.i.i.dma_map_single_attrs.exit221.thread.i.i_crit_edge: ; preds = %land.rhs.i206.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit221.thread.i.i

if.then.i210.i.i:                                 ; preds = %land.rhs.i206.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i207.i.i = tail call ptr @dev_driver_string(ptr noundef %155) #9
  %init_name.i.i208.i.i = getelementptr inbounds %struct.device, ptr %155, i32 0, i32 3
  %204 = ptrtoint ptr %init_name.i.i208.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %init_name.i.i208.i.i, align 8
  %tobool.not.i.i209.i.i = icmp eq ptr %205, null
  br i1 %tobool.not.i.i209.i.i, label %if.end.i.i211.i.i, label %if.then.i210.i.i.dev_name.exit.i213.i.i_crit_edge

if.then.i210.i.i.dev_name.exit.i213.i.i_crit_edge: ; preds = %if.then.i210.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i213.i.i

if.end.i.i211.i.i:                                ; preds = %if.then.i210.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %206 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %155, align 4
  br label %dev_name.exit.i213.i.i

dev_name.exit.i213.i.i:                           ; preds = %if.end.i.i211.i.i, %if.then.i210.i.i.dev_name.exit.i213.i.i_crit_edge
  %retval.0.i.i212.i.i = phi ptr [ %207, %if.end.i.i211.i.i ], [ %205, %if.then.i210.i.i.dev_name.exit.i213.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i207.i.i, ptr noundef %retval.0.i.i212.i.i) #9
  br label %dma_map_single_attrs.exit221.thread.i.i

dma_map_single_attrs.exit221.thread.i.i:          ; preds = %dev_name.exit.i213.i.i, %land.rhs.i206.i.i.dma_map_single_attrs.exit221.thread.i.i_crit_edge
  %tmp2_dma260.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 8, i32 0, i32 7
  %208 = ptrtoint ptr %tmp2_dma260.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 -1, ptr %tmp2_dma260.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %155, i32 noundef -1) #9
  br label %do.end44.i.i83

dma_map_single_attrs.exit221.i.i:                 ; preds = %if.end36.i.i81
  tail call void @debug_dma_map_single(ptr noundef %155, ptr noundef %203, i32 noundef %159) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %209 = load ptr, ptr @mem_map, align 4
  %210 = ptrtoint ptr %203 to i32
  %sub.i214.i.i = add i32 %210, 1073741824
  %shr.i215.i.i = lshr i32 %sub.i214.i.i, 12
  %add.ptr.i216.i.i = getelementptr %struct.page, ptr %209, i32 %shr.i215.i.i
  %and.i217.i.i = and i32 %210, 4095
  %call41.i218.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %155, ptr noundef %add.ptr.i216.i.i, i32 noundef %and.i217.i.i, i32 noundef %159, i32 noundef 0, i32 noundef 0) #9
  %tmp2_dma.i.i82 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 8, i32 0, i32 7
  %211 = ptrtoint ptr %tmp2_dma.i.i82 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %call41.i218.i.i, ptr %tmp2_dma.i.i82, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %155, i32 noundef %call41.i218.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i218.i.i)
  %cmp.i222.i.i = icmp eq i32 %call41.i218.i.i, -1
  br i1 %cmp.i222.i.i, label %dma_map_single_attrs.exit221.i.i.do.end44.i.i83_crit_edge, label %if.end45.i.i86

dma_map_single_attrs.exit221.i.i.do.end44.i.i83_crit_edge: ; preds = %dma_map_single_attrs.exit221.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44.i.i83

do.end44.i.i83:                                   ; preds = %dma_map_single_attrs.exit221.i.i.do.end44.i.i83_crit_edge, %dma_map_single_attrs.exit221.thread.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.52) #13
  %212 = ptrtoint ptr %tmp1_dma.i.i78 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %tmp1_dma.i.i78, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %155, i32 noundef %213, i32 noundef %157, i32 noundef 0, i32 noundef 0) #9
  br label %unmap_q.i.i98

if.end45.i.i86:                                   ; preds = %dma_map_single_attrs.exit221.i.i
  %mapped_src_nents.i.i84 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 2
  %214 = ptrtoint ptr %mapped_src_nents.i.i84 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %mapped_src_nents.i.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %215)
  %cmp.i26.i85 = icmp sgt i32 %215, 1
  br i1 %cmp.i26.i85, label %if.then46.i.i, label %if.else.i.i92

if.then46.i.i:                                    ; preds = %if.end45.i.i86
  call void @__sanitizer_cov_trace_pc() #11
  %216 = ptrtoint ptr %pdb4.i.i45 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %pdb4.i.i45, align 4
  %or.i.i87 = or i32 %217, -2147483648
  store i32 %or.i.i87, ptr %pdb4.i.i45, align 4
  %sec4_sg_dma.i.i88 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 6
  %phi.bo.i.i89 = shl i32 %215, 4
  br label %if.end50.i.i

if.else.i.i92:                                    ; preds = %if.end45.i.i86
  call void @__sanitizer_cov_trace_pc() #11
  %fixup_src.i.i90 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5
  %218 = ptrtoint ptr %fixup_src.i.i90 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %fixup_src.i.i90, align 4
  %dma_address.i.i91 = getelementptr inbounds %struct.scatterlist, ptr %219, i32 0, i32 3
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.else.i.i92, %if.then46.i.i
  %.sink.in.i.i93 = phi ptr [ %sec4_sg_dma.i.i88, %if.then46.i.i ], [ %dma_address.i.i91, %if.else.i.i92 ]
  %sec4_sg_index.0.i.i94 = phi i32 [ %phi.bo.i.i89, %if.then46.i.i ], [ 0, %if.else.i.i92 ]
  %220 = ptrtoint ptr %.sink.in.i.i93 to i32
  call void @__asan_load4_noabort(i32 %220)
  %.sink.i.i95 = load i32, ptr %.sink.in.i.i93, align 4
  %221 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 8, i32 0, i32 1
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %.sink.i.i95, ptr %221, align 4
  %mapped_dst_nents.i.i96 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 3
  %223 = ptrtoint ptr %mapped_dst_nents.i.i96 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %mapped_dst_nents.i.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %224)
  %cmp51.i.i = icmp sgt i32 %224, 1
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.else57.i.i

if.then52.i.i:                                    ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %225 = ptrtoint ptr %pdb4.i.i45 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %pdb4.i.i45, align 4
  %or54.i.i = or i32 %226, 1073741824
  store i32 %or54.i.i, ptr %pdb4.i.i45, align 4
  %sec4_sg_dma55.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 6
  %227 = ptrtoint ptr %sec4_sg_dma55.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %sec4_sg_dma55.i.i, align 4
  %add56.i.i = add i32 %228, %sec4_sg_index.0.i.i94
  br label %if.end8.i105

if.else57.i.i:                                    ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dst.i.i97 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %229 = ptrtoint ptr %dst.i.i97 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dst.i.i97, align 4
  %dma_address58.i.i = getelementptr inbounds %struct.scatterlist, ptr %230, i32 0, i32 3
  %231 = ptrtoint ptr %dma_address58.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %dma_address58.i.i, align 4
  br label %if.end8.i105

unmap_q.i.i98:                                    ; preds = %do.end44.i.i83, %do.end35.i.i79
  %233 = ptrtoint ptr %q_dma.i.i74 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %q_dma.i.i74, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %155, i32 noundef %234, i32 noundef %159, i32 noundef 1, i32 noundef 0) #9
  br label %unmap_p.i.i99

unmap_p.i.i99:                                    ; preds = %unmap_q.i.i98, %do.end26.i.i75
  %235 = ptrtoint ptr %p_dma.i.i70 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %p_dma.i.i70, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %155, i32 noundef %236, i32 noundef %157, i32 noundef 1, i32 noundef 0) #9
  br label %unmap_d.i.i

unmap_d.i.i:                                      ; preds = %unmap_p.i.i99, %do.end17.i.i71
  %237 = ptrtoint ptr %d_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %d_dma.i.i, align 4
  %239 = ptrtoint ptr %d_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %d_sz.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %155, i32 noundef %238, i32 noundef %240, i32 noundef 1, i32 noundef 0) #9
  br label %init_fail.i111

if.end8.i105:                                     ; preds = %if.else57.i.i, %if.then52.i.i
  %.sink264.i.i = phi i32 [ %add56.i.i, %if.then52.i.i ], [ %232, %if.else57.i.i ]
  %241 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 8, i32 0, i32 2
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %.sink264.i.i, ptr %241, align 4
  %243 = ptrtoint ptr %d_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %d_sz.i.i, align 4
  %shl.i.i100 = shl i32 %244, 12
  %n_sz.i.i101 = getelementptr inbounds %struct.crypto_tfm, ptr %153, i32 1, i32 4, i32 36
  %245 = ptrtoint ptr %n_sz.i.i101 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %n_sz.i.i101, align 4
  %or62.i.i = or i32 %shl.i.i100, %246
  %247 = ptrtoint ptr %pdb4.i.i45 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %pdb4.i.i45, align 4
  %or64.i.i = or i32 %or62.i.i, %248
  store i32 %or64.i.i, ptr %pdb4.i.i45, align 4
  %shl65.i.i = shl i32 %159, 12
  %or66.i.i = or i32 %shl65.i.i, %157
  %p_q_len.i.i102 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 8, i32 0, i32 8
  %249 = ptrtoint ptr %p_q_len.i.i102 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %or66.i.i, ptr %p_q_len.i.i102, align 4
  %hw_desc.i103 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 9
  tail call void @init_rsa_priv_f2_desc(ptr noundef %hw_desc.i103, ptr noundef %pdb4.i.i45) #9
  %call9.i104 = tail call fastcc i32 @akcipher_enqueue_req(ptr noundef %149, ptr noundef nonnull @rsa_priv_f_done, ptr noundef %req) #9
  br label %cleanup

init_fail.i111:                                   ; preds = %unmap_d.i.i, %do.end.i.i67
  %dst.i27.i106 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %250 = ptrtoint ptr %dst.i27.i106 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dst.i27.i106, align 4
  %dst_nents.i.i107 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 1
  %252 = ptrtoint ptr %dst_nents.i.i107 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %dst_nents.i.i107, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %149, ptr noundef %251, i32 noundef %253, i32 noundef 2, i32 noundef 0) #9
  %fixup_src.i28.i108 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5
  %254 = ptrtoint ptr %fixup_src.i28.i108 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %fixup_src.i28.i108, align 4
  %256 = ptrtoint ptr %call3.i41 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %call3.i41, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %149, ptr noundef %255, i32 noundef %257, i32 noundef 1, i32 noundef 0) #9
  %sec4_sg_bytes.i.i109 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 4
  %258 = ptrtoint ptr %sec4_sg_bytes.i.i109 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %sec4_sg_bytes.i.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool.not.i.i110 = icmp eq i32 %259, 0
  br i1 %tobool.not.i.i110, label %init_fail.i111.rsa_io_unmap.exit.i114_crit_edge, label %if.then.i.i113

init_fail.i111.rsa_io_unmap.exit.i114_crit_edge:  ; preds = %init_fail.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsa_io_unmap.exit.i114

if.then.i.i113:                                   ; preds = %init_fail.i111
  call void @__sanitizer_cov_trace_pc() #11
  %sec4_sg_dma.i29.i112 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i41, i32 0, i32 6
  %260 = ptrtoint ptr %sec4_sg_dma.i29.i112 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %sec4_sg_dma.i29.i112, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %149, i32 noundef %261, i32 noundef %259, i32 noundef 1, i32 noundef 0) #9
  br label %rsa_io_unmap.exit.i114

rsa_io_unmap.exit.i114:                           ; preds = %if.then.i.i113, %init_fail.i111.rsa_io_unmap.exit.i114_crit_edge
  tail call void @kfree(ptr noundef %call3.i41) #9
  br label %cleanup

if.else18:                                        ; preds = %if.end10
  %dev.i117 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 60
  %262 = ptrtoint ptr %dev.i117 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev.i117, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %264 = load i32, ptr @caam_ptr_sz, align 4
  %mul.i118 = shl i32 %264, 2
  %add2.i119 = add i32 %mul.i118, 12
  %call3.i120 = tail call fastcc ptr @rsa_edesc_alloc(ptr noundef %req, i32 noundef %add2.i119) #9
  %cmp.i.i121 = icmp ugt ptr %call3.i120, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i121, label %if.then.i122, label %if.end.i127

if.then.i122:                                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  %265 = ptrtoint ptr %call3.i120 to i32
  br label %cleanup

if.end.i127:                                      ; preds = %if.else18
  %266 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %tfm.i, align 16
  %key2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %267, i32 1, i32 3
  %dev3.i.i123 = getelementptr inbounds %struct.crypto_tfm, ptr %267, i32 1, i32 4, i32 60
  %268 = ptrtoint ptr %dev3.i.i123 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev3.i.i123, align 4
  %pdb4.i.i124 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i120, i32 0, i32 8
  %270 = ptrtoint ptr %key2.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %key2.i.i, align 4
  %n_sz.i.i125 = getelementptr inbounds %struct.crypto_tfm, ptr %267, i32 1, i32 4, i32 36
  %272 = ptrtoint ptr %n_sz.i.i125 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %n_sz.i.i125, align 4
  %call.i.i.i126 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %271) #9
  br i1 %call.i.i.i126, label %land.rhs.i.i.i129, label %dma_map_single_attrs.exit.i.i144

land.rhs.i.i.i129:                                ; preds = %if.end.i127
  %.b1.i.i.i128 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i128, label %land.rhs.i.i.i129.dma_map_single_attrs.exit.thread.i.i137_crit_edge, label %if.then.i.i.i133, !prof !141

land.rhs.i.i.i129.dma_map_single_attrs.exit.thread.i.i137_crit_edge: ; preds = %land.rhs.i.i.i129
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread.i.i137

if.then.i.i.i133:                                 ; preds = %land.rhs.i.i.i129
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i130 = tail call ptr @dev_driver_string(ptr noundef %269) #9
  %init_name.i.i.i.i131 = getelementptr inbounds %struct.device, ptr %269, i32 0, i32 3
  %274 = ptrtoint ptr %init_name.i.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %init_name.i.i.i.i131, align 8
  %tobool.not.i.i.i.i132 = icmp eq ptr %275, null
  br i1 %tobool.not.i.i.i.i132, label %if.end.i.i.i.i134, label %if.then.i.i.i133.dev_name.exit.i.i.i136_crit_edge

if.then.i.i.i133.dev_name.exit.i.i.i136_crit_edge: ; preds = %if.then.i.i.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i.i136

if.end.i.i.i.i134:                                ; preds = %if.then.i.i.i133
  call void @__sanitizer_cov_trace_pc() #11
  %276 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %269, align 4
  br label %dev_name.exit.i.i.i136

dev_name.exit.i.i.i136:                           ; preds = %if.end.i.i.i.i134, %if.then.i.i.i133.dev_name.exit.i.i.i136_crit_edge
  %retval.0.i.i.i.i135 = phi ptr [ %277, %if.end.i.i.i.i134 ], [ %275, %if.then.i.i.i133.dev_name.exit.i.i.i136_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i.i.i130, ptr noundef %retval.0.i.i.i.i135) #9
  br label %dma_map_single_attrs.exit.thread.i.i137

dma_map_single_attrs.exit.thread.i.i137:          ; preds = %dev_name.exit.i.i.i136, %land.rhs.i.i.i129.dma_map_single_attrs.exit.thread.i.i137_crit_edge
  %n_dma97.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i120, i32 0, i32 8, i32 0, i32 3
  %278 = ptrtoint ptr %n_dma97.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 -1, ptr %n_dma97.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %269, i32 noundef -1) #9
  br label %do.end.i.i145

dma_map_single_attrs.exit.i.i144:                 ; preds = %if.end.i127
  tail call void @debug_dma_map_single(ptr noundef %269, ptr noundef %271, i32 noundef %273) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %279 = load ptr, ptr @mem_map, align 4
  %280 = ptrtoint ptr %271 to i32
  %sub.i.i.i138 = add i32 %280, 1073741824
  %shr.i.i.i139 = lshr i32 %sub.i.i.i138, 12
  %add.ptr.i.i.i140 = getelementptr %struct.page, ptr %279, i32 %shr.i.i.i139
  %and.i.i.i141 = and i32 %280, 4095
  %call41.i.i.i142 = tail call i32 @dma_map_page_attrs(ptr noundef %269, ptr noundef %add.ptr.i.i.i140, i32 noundef %and.i.i.i141, i32 noundef %273, i32 noundef 1, i32 noundef 0) #9
  %n_dma.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i120, i32 0, i32 8, i32 0, i32 3
  %281 = ptrtoint ptr %n_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %call41.i.i.i142, ptr %n_dma.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %269, i32 noundef %call41.i.i.i142) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i142)
  %cmp.i.i.i143 = icmp eq i32 %call41.i.i.i142, -1
  br i1 %cmp.i.i.i143, label %dma_map_single_attrs.exit.i.i144.do.end.i.i145_crit_edge, label %if.end.i.i148

dma_map_single_attrs.exit.i.i144.do.end.i.i145_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i144
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i145

do.end.i.i145:                                    ; preds = %dma_map_single_attrs.exit.i.i144.do.end.i.i145_crit_edge, %dma_map_single_attrs.exit.thread.i.i137
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %269, ptr noundef nonnull @.str.64) #13
  br label %init_fail.i173

if.end.i.i148:                                    ; preds = %dma_map_single_attrs.exit.i.i144
  %d.i.i146 = getelementptr inbounds %struct.crypto_tfm, ptr %267, i32 1, i32 4, i32 4
  %282 = ptrtoint ptr %d.i.i146 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %d.i.i146, align 4
  %d_sz.i.i147 = getelementptr inbounds %struct.crypto_tfm, ptr %267, i32 1, i32 4, i32 44
  %284 = ptrtoint ptr %d_sz.i.i147 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %d_sz.i.i147, align 4
  %call.i76.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %283) #9
  br i1 %call.i76.i.i, label %land.rhs.i78.i.i, label %dma_map_single_attrs.exit93.i.i

land.rhs.i78.i.i:                                 ; preds = %if.end.i.i148
  %.b1.i77.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i77.i.i, label %land.rhs.i78.i.i.dma_map_single_attrs.exit93.thread.i.i_crit_edge, label %if.then.i82.i.i, !prof !141

land.rhs.i78.i.i.dma_map_single_attrs.exit93.thread.i.i_crit_edge: ; preds = %land.rhs.i78.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit93.thread.i.i

if.then.i82.i.i:                                  ; preds = %land.rhs.i78.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i79.i.i = tail call ptr @dev_driver_string(ptr noundef %269) #9
  %init_name.i.i80.i.i = getelementptr inbounds %struct.device, ptr %269, i32 0, i32 3
  %286 = ptrtoint ptr %init_name.i.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %init_name.i.i80.i.i, align 8
  %tobool.not.i.i81.i.i = icmp eq ptr %287, null
  br i1 %tobool.not.i.i81.i.i, label %if.end.i.i83.i.i, label %if.then.i82.i.i.dev_name.exit.i85.i.i_crit_edge

if.then.i82.i.i.dev_name.exit.i85.i.i_crit_edge:  ; preds = %if.then.i82.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i85.i.i

if.end.i.i83.i.i:                                 ; preds = %if.then.i82.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %288 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %269, align 4
  br label %dev_name.exit.i85.i.i

dev_name.exit.i85.i.i:                            ; preds = %if.end.i.i83.i.i, %if.then.i82.i.i.dev_name.exit.i85.i.i_crit_edge
  %retval.0.i.i84.i.i = phi ptr [ %289, %if.end.i.i83.i.i ], [ %287, %if.then.i82.i.i.dev_name.exit.i85.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i79.i.i, ptr noundef %retval.0.i.i84.i.i) #9
  br label %dma_map_single_attrs.exit93.thread.i.i

dma_map_single_attrs.exit93.thread.i.i:           ; preds = %dev_name.exit.i85.i.i, %land.rhs.i78.i.i.dma_map_single_attrs.exit93.thread.i.i_crit_edge
  %d_dma105.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i120, i32 0, i32 8, i32 0, i32 4
  %290 = ptrtoint ptr %d_dma105.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 -1, ptr %d_dma105.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %269, i32 noundef -1) #9
  br label %do.end15.i.i

dma_map_single_attrs.exit93.i.i:                  ; preds = %if.end.i.i148
  tail call void @debug_dma_map_single(ptr noundef %269, ptr noundef %283, i32 noundef %285) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %291 = load ptr, ptr @mem_map, align 4
  %292 = ptrtoint ptr %283 to i32
  %sub.i86.i.i = add i32 %292, 1073741824
  %shr.i87.i.i = lshr i32 %sub.i86.i.i, 12
  %add.ptr.i88.i.i = getelementptr %struct.page, ptr %291, i32 %shr.i87.i.i
  %and.i89.i.i = and i32 %292, 4095
  %call41.i90.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %269, ptr noundef %add.ptr.i88.i.i, i32 noundef %and.i89.i.i, i32 noundef %285, i32 noundef 1, i32 noundef 0) #9
  %d_dma.i.i149 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i120, i32 0, i32 8, i32 0, i32 4
  %293 = ptrtoint ptr %d_dma.i.i149 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %call41.i90.i.i, ptr %d_dma.i.i149, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %269, i32 noundef %call41.i90.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i90.i.i)
  %cmp.i94.i.i = icmp eq i32 %call41.i90.i.i, -1
  br i1 %cmp.i94.i.i, label %dma_map_single_attrs.exit93.i.i.do.end15.i.i_crit_edge, label %if.end18.i.i152

dma_map_single_attrs.exit93.i.i.do.end15.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit93.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15.i.i

do.end15.i.i:                                     ; preds = %dma_map_single_attrs.exit93.i.i.do.end15.i.i_crit_edge, %dma_map_single_attrs.exit93.thread.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %269, ptr noundef nonnull @.str.54) #13
  %294 = ptrtoint ptr %n_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %n_dma.i.i, align 4
  %296 = ptrtoint ptr %n_sz.i.i125 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %n_sz.i.i125, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %269, i32 noundef %295, i32 noundef %297, i32 noundef 1, i32 noundef 0) #9
  br label %init_fail.i173

if.end18.i.i152:                                  ; preds = %dma_map_single_attrs.exit93.i.i
  %mapped_src_nents.i.i150 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i120, i32 0, i32 2
  %298 = ptrtoint ptr %mapped_src_nents.i.i150 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %mapped_src_nents.i.i150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %299)
  %cmp.i26.i151 = icmp sgt i32 %299, 1
  br i1 %cmp.i26.i151, label %if.then19.i.i, label %if.else.i.i158

if.then19.i.i:                                    ; preds = %if.end18.i.i152
  call void @__sanitizer_cov_trace_pc() #11
  %300 = ptrtoint ptr %pdb4.i.i124 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %pdb4.i.i124, align 4
  %or.i.i153 = or i32 %301, -2147483648
  store i32 %or.i.i153, ptr %pdb4.i.i124, align 4
  %sec4_sg_dma.i.i154 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i120, i32 0, i32 6
  %phi.bo.i.i155 = shl i32 %299, 4
  br label %if.end23.i.i

if.else.i.i158:                                   ; preds = %if.end18.i.i152
  call void @__sanitizer_cov_trace_pc() #11
  %fixup_src.i.i156 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5
  %302 = ptrtoint ptr %fixup_src.i.i156 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %fixup_src.i.i156, align 4
  %dma_address.i.i157 = getelementptr inbounds %struct.scatterlist, ptr %303, i32 0, i32 3
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.else.i.i158, %if.then19.i.i
  %.sink.in.i.i159 = phi ptr [ %sec4_sg_dma.i.i154, %if.then19.i.i ], [ %dma_address.i.i157, %if.else.i.i158 ]
  %sec4_sg_index.0.i.i160 = phi i32 [ %phi.bo.i.i155, %if.then19.i.i ], [ 0, %if.else.i.i158 ]
  %304 = ptrtoint ptr %.sink.in.i.i159 to i32
  call void @__asan_load4_noabort(i32 %304)
  %.sink.i.i161 = load i32, ptr %.sink.in.i.i159, align 4
  %305 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i120, i32 0, i32 8, i32 0, i32 1
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %.sink.i.i161, ptr %305, align 4
  %mapped_dst_nents.i.i162 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i120, i32 0, i32 3
  %307 = ptrtoint ptr %mapped_dst_nents.i.i162 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %mapped_dst_nents.i.i162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %308)
  %cmp24.i.i = icmp sgt i32 %308, 1
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.else30.i.i

if.then25.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %309 = ptrtoint ptr %pdb4.i.i124 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %pdb4.i.i124, align 4
  %or27.i.i = or i32 %310, 1073741824
  store i32 %or27.i.i, ptr %pdb4.i.i124, align 4
  %sec4_sg_dma28.i.i = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i120, i32 0, i32 6
  %311 = ptrtoint ptr %sec4_sg_dma28.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %sec4_sg_dma28.i.i, align 4
  %add29.i.i = add i32 %312, %sec4_sg_index.0.i.i160
  br label %if.end8.i167

if.else30.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dst.i.i163 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %313 = ptrtoint ptr %dst.i.i163 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %dst.i.i163, align 4
  %dma_address31.i.i = getelementptr inbounds %struct.scatterlist, ptr %314, i32 0, i32 3
  %315 = ptrtoint ptr %dma_address31.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %dma_address31.i.i, align 4
  br label %if.end8.i167

if.end8.i167:                                     ; preds = %if.else30.i.i, %if.then25.i.i
  %.sink109.i.i = phi i32 [ %add29.i.i, %if.then25.i.i ], [ %316, %if.else30.i.i ]
  %317 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i120, i32 0, i32 8, i32 0, i32 2
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %.sink109.i.i, ptr %317, align 4
  %319 = ptrtoint ptr %d_sz.i.i147 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %d_sz.i.i147, align 4
  %shl.i.i164 = shl i32 %320, 12
  %321 = ptrtoint ptr %n_sz.i.i125 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %n_sz.i.i125, align 4
  %or36.i.i = or i32 %shl.i.i164, %322
  %323 = ptrtoint ptr %pdb4.i.i124 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %pdb4.i.i124, align 4
  %or38.i.i = or i32 %or36.i.i, %324
  store i32 %or38.i.i, ptr %pdb4.i.i124, align 4
  %hw_desc.i165 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i120, i32 0, i32 9
  tail call void @init_rsa_priv_f1_desc(ptr noundef %hw_desc.i165, ptr noundef %pdb4.i.i124) #9
  %call9.i166 = tail call fastcc i32 @akcipher_enqueue_req(ptr noundef %263, ptr noundef nonnull @rsa_priv_f_done, ptr noundef %req) #9
  br label %cleanup

init_fail.i173:                                   ; preds = %do.end15.i.i, %do.end.i.i145
  %dst.i27.i168 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %325 = ptrtoint ptr %dst.i27.i168 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %dst.i27.i168, align 4
  %dst_nents.i.i169 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i120, i32 0, i32 1
  %327 = ptrtoint ptr %dst_nents.i.i169 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %dst_nents.i.i169, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %263, ptr noundef %326, i32 noundef %328, i32 noundef 2, i32 noundef 0) #9
  %fixup_src.i28.i170 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5
  %329 = ptrtoint ptr %fixup_src.i28.i170 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %fixup_src.i28.i170, align 4
  %331 = ptrtoint ptr %call3.i120 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %call3.i120, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %263, ptr noundef %330, i32 noundef %332, i32 noundef 1, i32 noundef 0) #9
  %sec4_sg_bytes.i.i171 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i120, i32 0, i32 4
  %333 = ptrtoint ptr %sec4_sg_bytes.i.i171 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %sec4_sg_bytes.i.i171, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %tobool.not.i.i172 = icmp eq i32 %334, 0
  br i1 %tobool.not.i.i172, label %init_fail.i173.rsa_io_unmap.exit.i176_crit_edge, label %if.then.i.i175

init_fail.i173.rsa_io_unmap.exit.i176_crit_edge:  ; preds = %init_fail.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsa_io_unmap.exit.i176

if.then.i.i175:                                   ; preds = %init_fail.i173
  call void @__sanitizer_cov_trace_pc() #11
  %sec4_sg_dma.i29.i174 = getelementptr inbounds %struct.rsa_edesc, ptr %call3.i120, i32 0, i32 6
  %335 = ptrtoint ptr %sec4_sg_dma.i29.i174 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %sec4_sg_dma.i29.i174, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %263, i32 noundef %336, i32 noundef %334, i32 noundef 1, i32 noundef 0) #9
  br label %rsa_io_unmap.exit.i176

rsa_io_unmap.exit.i176:                           ; preds = %if.then.i.i175, %init_fail.i173.rsa_io_unmap.exit.i176_crit_edge
  tail call void @kfree(ptr noundef %call3.i120) #9
  br label %cleanup

cleanup:                                          ; preds = %rsa_io_unmap.exit.i176, %if.end8.i167, %if.then.i122, %rsa_io_unmap.exit.i114, %if.end8.i105, %if.then.i43, %rsa_io_unmap.exit.i, %if.end8.i, %if.then.i, %if.then7, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -75, %if.then7 ], [ -22, %lor.rhs.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %19, %if.then.i ], [ -12, %rsa_io_unmap.exit.i ], [ %call9.i, %if.end8.i ], [ %151, %if.then.i43 ], [ -12, %rsa_io_unmap.exit.i114 ], [ %call9.i104, %if.end8.i105 ], [ %265, %if.then.i122 ], [ -12, %rsa_io_unmap.exit.i176 ], [ %call9.i166, %if.end8.i167 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caam_rsa_set_pub_key(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %raw_key = alloca %struct.rsa_key, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %raw_key) #9
  %0 = call ptr @memset(ptr %raw_key, i32 0, i32 64)
  %key1 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  tail call fastcc void @caam_rsa_free_key(ptr noundef %key1)
  %call2 = call i32 @rsa_parse_pub_key(ptr noundef nonnull %raw_key, ptr noundef %key, i32 noundef %keylen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %e = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 1
  %1 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %e, align 4
  %e_sz = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 9
  %3 = ptrtoint ptr %e_sz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %e_sz, align 4
  %call3 = call ptr @kmemdup(ptr noundef %2, i32 noundef %4, i32 noundef 3265) #9
  %e4 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %5 = ptrtoint ptr %e4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %e4, align 4
  %tobool6.not = icmp eq ptr %call3, null
  br i1 %tobool6.not, label %if.end.err_crit_edge, label %if.end8

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %raw_key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %raw_key, align 4
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not4.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not4.i.i, label %land.rhs.preheader.i.i, label %if.end8.caam_rsa_drop_leading_zeros.exitthread-pre-split.i_crit_edge

if.end8.caam_rsa_drop_leading_zeros.exitthread-pre-split.i_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_drop_leading_zeros.exitthread-pre-split.i

land.rhs.preheader.i.i:                           ; preds = %if.end8
  %10 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr.i.i = load i32, ptr %n_sz, align 4
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %land.rhs.preheader.i.i
  %buf.addr.0.i = phi ptr [ %7, %land.rhs.preheader.i.i ], [ %incdec.ptr.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %11 = phi i32 [ %.pr.i.i, %land.rhs.preheader.i.i ], [ %dec.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.caam_rsa_drop_leading_zeros.exitthread-pre-split.i_crit_edge, label %while.body.i.i

land.rhs.i.i.caam_rsa_drop_leading_zeros.exitthread-pre-split.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_drop_leading_zeros.exitthread-pre-split.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %buf.addr.0.i, i32 1
  %12 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_sz, align 4
  %dec.i.i = add i32 %13, -1
  store i32 %dec.i.i, ptr %n_sz, align 4
  %14 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr.i.i, align 1
  %tobool.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.land.rhs.i.i_crit_edge, label %while.body.i.i.caam_rsa_drop_leading_zeros.exit.i_crit_edge

while.body.i.i.caam_rsa_drop_leading_zeros.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_drop_leading_zeros.exit.i

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

caam_rsa_drop_leading_zeros.exitthread-pre-split.i: ; preds = %land.rhs.i.i.caam_rsa_drop_leading_zeros.exitthread-pre-split.i_crit_edge, %if.end8.caam_rsa_drop_leading_zeros.exitthread-pre-split.i_crit_edge
  %buf.addr.1.ph.i = phi ptr [ %7, %if.end8.caam_rsa_drop_leading_zeros.exitthread-pre-split.i_crit_edge ], [ %buf.addr.0.i, %land.rhs.i.i.caam_rsa_drop_leading_zeros.exitthread-pre-split.i_crit_edge ]
  %16 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr.i = load i32, ptr %n_sz, align 4
  br label %caam_rsa_drop_leading_zeros.exit.i

caam_rsa_drop_leading_zeros.exit.i:               ; preds = %caam_rsa_drop_leading_zeros.exitthread-pre-split.i, %while.body.i.i.caam_rsa_drop_leading_zeros.exit.i_crit_edge
  %17 = phi i32 [ %.pr.i, %caam_rsa_drop_leading_zeros.exitthread-pre-split.i ], [ %dec.i.i, %while.body.i.i.caam_rsa_drop_leading_zeros.exit.i_crit_edge ]
  %buf.addr.1.i = phi ptr [ %buf.addr.1.ph.i, %caam_rsa_drop_leading_zeros.exitthread-pre-split.i ], [ %incdec.ptr.i.i, %while.body.i.i.caam_rsa_drop_leading_zeros.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %caam_read_raw_data.exit.thread, label %caam_read_raw_data.exit

caam_read_raw_data.exit.thread:                   ; preds = %caam_rsa_drop_leading_zeros.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %key1, align 4
  br label %err

caam_read_raw_data.exit:                          ; preds = %caam_rsa_drop_leading_zeros.exit.i
  %call.i = call ptr @kmemdup(ptr noundef %buf.addr.1.i, i32 noundef %17, i32 noundef 3265) #9
  %19 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %key1, align 4
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %caam_read_raw_data.exit.err_crit_edge, label %if.end14

caam_read_raw_data.exit.err_crit_edge:            ; preds = %caam_read_raw_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end14:                                         ; preds = %caam_read_raw_data.exit
  %20 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_sz, align 4
  %shl = shl i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %shl)
  %cmp.i = icmp ult i32 %shl, 4097
  br i1 %cmp.i, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @caam_rsa_free_key(ptr noundef %key1)
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %e_sz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %e_sz, align 4
  %e_sz21 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 40
  %24 = ptrtoint ptr %e_sz21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %e_sz21, align 4
  %n_sz23 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 36
  %25 = ptrtoint ptr %n_sz23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %21, ptr %n_sz23, align 4
  br label %cleanup

err:                                              ; preds = %caam_read_raw_data.exit.err_crit_edge, %caam_read_raw_data.exit.thread, %if.end.err_crit_edge
  call fastcc void @caam_rsa_free_key(ptr noundef %key1)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end19, %if.then18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then18 ], [ 0, %if.end19 ], [ -12, %err ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %raw_key) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caam_rsa_set_priv_key(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %raw_key = alloca %struct.rsa_key, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %raw_key) #9
  %0 = call ptr @memset(ptr %raw_key, i32 0, i32 64)
  %key1 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  tail call fastcc void @caam_rsa_free_key(ptr noundef %key1)
  %call2 = call i32 @rsa_parse_priv_key(ptr noundef nonnull %raw_key, ptr noundef %key, i32 noundef %keylen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 2
  %1 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d, align 4
  %d_sz = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 10
  %3 = ptrtoint ptr %d_sz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %d_sz, align 4
  %call3 = call ptr @kmemdup(ptr noundef %2, i32 noundef %4, i32 noundef 3265) #9
  %d4 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %5 = ptrtoint ptr %d4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %d4, align 4
  %tobool6.not = icmp eq ptr %call3, null
  br i1 %tobool6.not, label %if.end.err_crit_edge, label %if.end8

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end8:                                          ; preds = %if.end
  %e = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 1
  %6 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %e, align 4
  %e_sz = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 9
  %8 = ptrtoint ptr %e_sz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %e_sz, align 4
  %call9 = call ptr @kmemdup(ptr noundef %7, i32 noundef %9, i32 noundef 3265) #9
  %e10 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %10 = ptrtoint ptr %e10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9, ptr %e10, align 4
  %tobool12.not = icmp eq ptr %call9, null
  br i1 %tobool12.not, label %if.end8.err_crit_edge, label %if.end14

if.end8.err_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end14:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %raw_key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %raw_key, align 4
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not4.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not4.i.i, label %land.rhs.preheader.i.i, label %if.end14.caam_rsa_drop_leading_zeros.exitthread-pre-split.i_crit_edge

if.end14.caam_rsa_drop_leading_zeros.exitthread-pre-split.i_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_drop_leading_zeros.exitthread-pre-split.i

land.rhs.preheader.i.i:                           ; preds = %if.end14
  %15 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i.i = load i32, ptr %n_sz, align 4
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %land.rhs.preheader.i.i
  %buf.addr.0.i = phi ptr [ %12, %land.rhs.preheader.i.i ], [ %incdec.ptr.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %16 = phi i32 [ %.pr.i.i, %land.rhs.preheader.i.i ], [ %dec.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.caam_rsa_drop_leading_zeros.exitthread-pre-split.i_crit_edge, label %while.body.i.i

land.rhs.i.i.caam_rsa_drop_leading_zeros.exitthread-pre-split.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_drop_leading_zeros.exitthread-pre-split.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %buf.addr.0.i, i32 1
  %17 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_sz, align 4
  %dec.i.i = add i32 %18, -1
  store i32 %dec.i.i, ptr %n_sz, align 4
  %19 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr.i.i, align 1
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.land.rhs.i.i_crit_edge, label %while.body.i.i.caam_rsa_drop_leading_zeros.exit.i_crit_edge

while.body.i.i.caam_rsa_drop_leading_zeros.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_drop_leading_zeros.exit.i

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

caam_rsa_drop_leading_zeros.exitthread-pre-split.i: ; preds = %land.rhs.i.i.caam_rsa_drop_leading_zeros.exitthread-pre-split.i_crit_edge, %if.end14.caam_rsa_drop_leading_zeros.exitthread-pre-split.i_crit_edge
  %buf.addr.1.ph.i = phi ptr [ %12, %if.end14.caam_rsa_drop_leading_zeros.exitthread-pre-split.i_crit_edge ], [ %buf.addr.0.i, %land.rhs.i.i.caam_rsa_drop_leading_zeros.exitthread-pre-split.i_crit_edge ]
  %21 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr.i = load i32, ptr %n_sz, align 4
  br label %caam_rsa_drop_leading_zeros.exit.i

caam_rsa_drop_leading_zeros.exit.i:               ; preds = %caam_rsa_drop_leading_zeros.exitthread-pre-split.i, %while.body.i.i.caam_rsa_drop_leading_zeros.exit.i_crit_edge
  %22 = phi i32 [ %.pr.i, %caam_rsa_drop_leading_zeros.exitthread-pre-split.i ], [ %dec.i.i, %while.body.i.i.caam_rsa_drop_leading_zeros.exit.i_crit_edge ]
  %buf.addr.1.i = phi ptr [ %buf.addr.1.ph.i, %caam_rsa_drop_leading_zeros.exitthread-pre-split.i ], [ %incdec.ptr.i.i, %while.body.i.i.caam_rsa_drop_leading_zeros.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %caam_read_raw_data.exit.thread, label %caam_read_raw_data.exit

caam_read_raw_data.exit.thread:                   ; preds = %caam_rsa_drop_leading_zeros.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %key1, align 4
  br label %err

caam_read_raw_data.exit:                          ; preds = %caam_rsa_drop_leading_zeros.exit.i
  %call.i = call ptr @kmemdup(ptr noundef %buf.addr.1.i, i32 noundef %22, i32 noundef 3265) #9
  %24 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %key1, align 4
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %caam_read_raw_data.exit.err_crit_edge, label %if.end20

caam_read_raw_data.exit.err_crit_edge:            ; preds = %caam_read_raw_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end20:                                         ; preds = %caam_read_raw_data.exit
  %25 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_sz, align 4
  %shl = shl i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %shl)
  %cmp.i = icmp ult i32 %shl, 4097
  br i1 %cmp.i, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @caam_rsa_free_key(ptr noundef %key1)
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %27 = ptrtoint ptr %d_sz to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %d_sz, align 4
  %d_sz27 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 44
  %29 = ptrtoint ptr %d_sz27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %d_sz27, align 4
  %30 = ptrtoint ptr %e_sz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %e_sz, align 4
  %e_sz29 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 40
  %32 = ptrtoint ptr %e_sz29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %e_sz29, align 4
  %n_sz31 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 36
  %33 = ptrtoint ptr %n_sz31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %26, ptr %n_sz31, align 4
  %p_sz1.i = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 11
  %34 = ptrtoint ptr %p_sz1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %p_sz1.i, align 4
  %q_sz2.i = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 12
  %36 = ptrtoint ptr %q_sz2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %q_sz2.i, align 4
  %p.i = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 3
  %38 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not4.i.i.i = icmp eq i8 %41, 0
  br i1 %tobool.not4.i.i.i, label %if.end25.land.rhs.i.i.i_crit_edge, label %if.end25.caam_rsa_drop_leading_zeros.exit.i.i_crit_edge

if.end25.caam_rsa_drop_leading_zeros.exit.i.i_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_drop_leading_zeros.exit.i.i

if.end25.land.rhs.i.i.i_crit_edge:                ; preds = %if.end25
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %while.body.i.i.i.land.rhs.i.i.i_crit_edge, %if.end25.land.rhs.i.i.i_crit_edge
  %p_sz.0.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ], [ %35, %if.end25.land.rhs.i.i.i_crit_edge ]
  %buf.addr.0.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ], [ %39, %if.end25.land.rhs.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p_sz.0.i)
  %tobool1.not.i.i.i = icmp eq i32 %p_sz.0.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i.caam_read_raw_data.exit.thread.i_crit_edge, label %while.body.i.i.i

land.rhs.i.i.i.caam_read_raw_data.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_read_raw_data.exit.thread.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %incdec.ptr.i.i.i = getelementptr i8, ptr %buf.addr.0.i.i, i32 1
  %dec.i.i.i = add i32 %p_sz.0.i, -1
  %42 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %incdec.ptr.i.i.i, align 1
  %tobool.not.i.i.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.land.rhs.i.i.i_crit_edge, label %while.body.i.i.i.caam_rsa_drop_leading_zeros.exit.i.i_crit_edge

while.body.i.i.i.caam_rsa_drop_leading_zeros.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_drop_leading_zeros.exit.i.i

while.body.i.i.i.land.rhs.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i.i

caam_rsa_drop_leading_zeros.exit.i.i:             ; preds = %while.body.i.i.i.caam_rsa_drop_leading_zeros.exit.i.i_crit_edge, %if.end25.caam_rsa_drop_leading_zeros.exit.i.i_crit_edge
  %p_sz.2.i = phi i32 [ %35, %if.end25.caam_rsa_drop_leading_zeros.exit.i.i_crit_edge ], [ %dec.i.i.i, %while.body.i.i.i.caam_rsa_drop_leading_zeros.exit.i.i_crit_edge ]
  %buf.addr.1.i.i = phi ptr [ %39, %if.end25.caam_rsa_drop_leading_zeros.exit.i.i_crit_edge ], [ %incdec.ptr.i.i.i, %while.body.i.i.i.caam_rsa_drop_leading_zeros.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p_sz.2.i)
  %tobool.not.i.i48 = icmp eq i32 %p_sz.2.i, 0
  br i1 %tobool.not.i.i48, label %caam_rsa_drop_leading_zeros.exit.i.i.caam_read_raw_data.exit.thread.i_crit_edge, label %caam_read_raw_data.exit.i

caam_rsa_drop_leading_zeros.exit.i.i.caam_read_raw_data.exit.thread.i_crit_edge: ; preds = %caam_rsa_drop_leading_zeros.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_read_raw_data.exit.thread.i

caam_read_raw_data.exit.thread.i:                 ; preds = %caam_rsa_drop_leading_zeros.exit.i.i.caam_read_raw_data.exit.thread.i_crit_edge, %land.rhs.i.i.i.caam_read_raw_data.exit.thread.i_crit_edge
  %p3259.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %44 = ptrtoint ptr %p3259.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %p3259.i, align 4
  br label %cleanup

caam_read_raw_data.exit.i:                        ; preds = %caam_rsa_drop_leading_zeros.exit.i.i
  %call.i.i = call ptr @kmemdup(ptr noundef %buf.addr.1.i.i, i32 noundef %p_sz.2.i, i32 noundef 3265) #9
  %p3.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %45 = ptrtoint ptr %p3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i.i, ptr %p3.i, align 4
  %tobool.not.i49 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i49, label %caam_read_raw_data.exit.i.cleanup_crit_edge, label %if.end.i50

caam_read_raw_data.exit.i.cleanup_crit_edge:      ; preds = %caam_read_raw_data.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i50:                                       ; preds = %caam_read_raw_data.exit.i
  %p_sz5.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 48
  %46 = ptrtoint ptr %p_sz5.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %p_sz.2.i, ptr %p_sz5.i, align 4
  %q.i = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 4
  %47 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %q.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not4.i.i86.i = icmp eq i8 %50, 0
  br i1 %tobool.not4.i.i86.i, label %if.end.i50.land.rhs.i.i91.i_crit_edge, label %if.end.i50.caam_rsa_drop_leading_zeros.exit.i101.i_crit_edge

if.end.i50.caam_rsa_drop_leading_zeros.exit.i101.i_crit_edge: ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_drop_leading_zeros.exit.i101.i

if.end.i50.land.rhs.i.i91.i_crit_edge:            ; preds = %if.end.i50
  br label %land.rhs.i.i91.i

land.rhs.i.i91.i:                                 ; preds = %while.body.i.i95.i.land.rhs.i.i91.i_crit_edge, %if.end.i50.land.rhs.i.i91.i_crit_edge
  %q_sz.0.i = phi i32 [ %dec.i.i93.i, %while.body.i.i95.i.land.rhs.i.i91.i_crit_edge ], [ %37, %if.end.i50.land.rhs.i.i91.i_crit_edge ]
  %buf.addr.0.i89.i = phi ptr [ %incdec.ptr.i.i92.i, %while.body.i.i95.i.land.rhs.i.i91.i_crit_edge ], [ %48, %if.end.i50.land.rhs.i.i91.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %q_sz.0.i)
  %tobool1.not.i.i90.i = icmp eq i32 %q_sz.0.i, 0
  br i1 %tobool1.not.i.i90.i, label %land.rhs.i.i91.i.caam_read_raw_data.exit105.thread.i_crit_edge, label %while.body.i.i95.i

land.rhs.i.i91.i.caam_read_raw_data.exit105.thread.i_crit_edge: ; preds = %land.rhs.i.i91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_read_raw_data.exit105.thread.i

while.body.i.i95.i:                               ; preds = %land.rhs.i.i91.i
  %incdec.ptr.i.i92.i = getelementptr i8, ptr %buf.addr.0.i89.i, i32 1
  %dec.i.i93.i = add i32 %q_sz.0.i, -1
  %51 = ptrtoint ptr %incdec.ptr.i.i92.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %incdec.ptr.i.i92.i, align 1
  %tobool.not.i.i94.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i.i94.i, label %while.body.i.i95.i.land.rhs.i.i91.i_crit_edge, label %while.body.i.i95.i.caam_rsa_drop_leading_zeros.exit.i101.i_crit_edge

while.body.i.i95.i.caam_rsa_drop_leading_zeros.exit.i101.i_crit_edge: ; preds = %while.body.i.i95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_drop_leading_zeros.exit.i101.i

while.body.i.i95.i.land.rhs.i.i91.i_crit_edge:    ; preds = %while.body.i.i95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i91.i

caam_rsa_drop_leading_zeros.exit.i101.i:          ; preds = %while.body.i.i95.i.caam_rsa_drop_leading_zeros.exit.i101.i_crit_edge, %if.end.i50.caam_rsa_drop_leading_zeros.exit.i101.i_crit_edge
  %q_sz.2.i = phi i32 [ %37, %if.end.i50.caam_rsa_drop_leading_zeros.exit.i101.i_crit_edge ], [ %dec.i.i93.i, %while.body.i.i95.i.caam_rsa_drop_leading_zeros.exit.i101.i_crit_edge ]
  %buf.addr.1.i99.i = phi ptr [ %48, %if.end.i50.caam_rsa_drop_leading_zeros.exit.i101.i_crit_edge ], [ %incdec.ptr.i.i92.i, %while.body.i.i95.i.caam_rsa_drop_leading_zeros.exit.i101.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %q_sz.2.i)
  %tobool.not.i100.i = icmp eq i32 %q_sz.2.i, 0
  br i1 %tobool.not.i100.i, label %caam_rsa_drop_leading_zeros.exit.i101.i.caam_read_raw_data.exit105.thread.i_crit_edge, label %caam_read_raw_data.exit105.i

caam_rsa_drop_leading_zeros.exit.i101.i.caam_read_raw_data.exit105.thread.i_crit_edge: ; preds = %caam_rsa_drop_leading_zeros.exit.i101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_read_raw_data.exit105.thread.i

caam_read_raw_data.exit105.thread.i:              ; preds = %caam_rsa_drop_leading_zeros.exit.i101.i.caam_read_raw_data.exit105.thread.i_crit_edge, %land.rhs.i.i91.i.caam_read_raw_data.exit105.thread.i_crit_edge
  %q7262.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %53 = ptrtoint ptr %q7262.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %q7262.i, align 4
  br label %free_p.i

caam_read_raw_data.exit105.i:                     ; preds = %caam_rsa_drop_leading_zeros.exit.i101.i
  %call.i102.i = call ptr @kmemdup(ptr noundef %buf.addr.1.i99.i, i32 noundef %q_sz.2.i, i32 noundef 3265) #9
  %q7.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %54 = ptrtoint ptr %q7.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i102.i, ptr %q7.i, align 4
  %tobool9.not.i = icmp eq ptr %call.i102.i, null
  br i1 %tobool9.not.i, label %caam_read_raw_data.exit105.i.free_p.i_crit_edge, label %if.end11.i

caam_read_raw_data.exit105.i.free_p.i_crit_edge:  ; preds = %caam_read_raw_data.exit105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_p.i

if.end11.i:                                       ; preds = %caam_read_raw_data.exit105.i
  %q_sz12.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 52
  %55 = ptrtoint ptr %q_sz12.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %q_sz.2.i, ptr %q_sz12.i, align 4
  %56 = ptrtoint ptr %p_sz1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %p_sz1.i, align 4
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %57, i32 noundef 3521) #14
  %tmp1.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %58 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call9.i.i.i, ptr %tmp1.i, align 4
  %tobool16.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool16.not.i, label %if.end11.i.free_q.i_crit_edge, label %if.end8.i.i132.i

if.end11.i.free_q.i_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_q.i

if.end8.i.i132.i:                                 ; preds = %if.end11.i
  %59 = ptrtoint ptr %q_sz2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %q_sz2.i, align 4
  %call9.i.i131.i = call noalias align 128 ptr @__kmalloc(i32 noundef %60, i32 noundef 3521) #14
  %tmp2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 32
  %61 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call9.i.i131.i, ptr %tmp2.i, align 4
  %tobool22.not.i = icmp eq ptr %call9.i.i131.i, null
  br i1 %tobool22.not.i, label %if.end8.i.i132.i.free_tmp1.i_crit_edge, label %if.end24.i

if.end8.i.i132.i.free_tmp1.i_crit_edge:           ; preds = %if.end8.i.i132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_tmp1.i

if.end24.i:                                       ; preds = %if.end8.i.i132.i
  %priv_form.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 56
  %62 = ptrtoint ptr %priv_form.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %priv_form.i, align 4
  %dp.i = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 5
  %63 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dp.i, align 4
  %dp_sz.i = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 13
  %65 = ptrtoint ptr %dp_sz.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dp_sz.i, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not4.i.i135.i = icmp eq i8 %68, 0
  br i1 %tobool.not4.i.i135.i, label %if.end24.i.land.rhs.i.i137.i_crit_edge, label %if.end24.i.caam_rsa_drop_leading_zeros.exit.i143.i_crit_edge

if.end24.i.caam_rsa_drop_leading_zeros.exit.i143.i_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_drop_leading_zeros.exit.i143.i

if.end24.i.land.rhs.i.i137.i_crit_edge:           ; preds = %if.end24.i
  br label %land.rhs.i.i137.i

land.rhs.i.i137.i:                                ; preds = %while.body.i.i141.i.land.rhs.i.i137.i_crit_edge, %if.end24.i.land.rhs.i.i137.i_crit_edge
  %ptr.addr.0.i.i = phi ptr [ %incdec.ptr.i.i138.i, %while.body.i.i141.i.land.rhs.i.i137.i_crit_edge ], [ %64, %if.end24.i.land.rhs.i.i137.i_crit_edge ]
  %nbytes.addr.0.i.i = phi i32 [ %dec.i.i139.i, %while.body.i.i141.i.land.rhs.i.i137.i_crit_edge ], [ %66, %if.end24.i.land.rhs.i.i137.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.0.i.i)
  %tobool1.not.i.i136.i = icmp eq i32 %nbytes.addr.0.i.i, 0
  br i1 %tobool1.not.i.i136.i, label %land.rhs.i.i137.i.caam_read_rsa_crt.exit.thread.i_crit_edge, label %while.body.i.i141.i

land.rhs.i.i137.i.caam_read_rsa_crt.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_read_rsa_crt.exit.thread.i

while.body.i.i141.i:                              ; preds = %land.rhs.i.i137.i
  %incdec.ptr.i.i138.i = getelementptr i8, ptr %ptr.addr.0.i.i, i32 1
  %dec.i.i139.i = add i32 %nbytes.addr.0.i.i, -1
  %69 = ptrtoint ptr %incdec.ptr.i.i138.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %incdec.ptr.i.i138.i, align 1
  %tobool.not.i.i140.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i.i140.i, label %while.body.i.i141.i.land.rhs.i.i137.i_crit_edge, label %while.body.i.i141.i.caam_rsa_drop_leading_zeros.exit.i143.i_crit_edge

while.body.i.i141.i.caam_rsa_drop_leading_zeros.exit.i143.i_crit_edge: ; preds = %while.body.i.i141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_drop_leading_zeros.exit.i143.i

while.body.i.i141.i.land.rhs.i.i137.i_crit_edge:  ; preds = %while.body.i.i141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i137.i

caam_rsa_drop_leading_zeros.exit.i143.i:          ; preds = %while.body.i.i141.i.caam_rsa_drop_leading_zeros.exit.i143.i_crit_edge, %if.end24.i.caam_rsa_drop_leading_zeros.exit.i143.i_crit_edge
  %ptr.addr.1.i.i = phi ptr [ %64, %if.end24.i.caam_rsa_drop_leading_zeros.exit.i143.i_crit_edge ], [ %incdec.ptr.i.i138.i, %while.body.i.i141.i.caam_rsa_drop_leading_zeros.exit.i143.i_crit_edge ]
  %nbytes.addr.1.i.i = phi i32 [ %66, %if.end24.i.caam_rsa_drop_leading_zeros.exit.i143.i_crit_edge ], [ %dec.i.i139.i, %while.body.i.i141.i.caam_rsa_drop_leading_zeros.exit.i143.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.1.i.i)
  %tobool.not.i142.i = icmp eq i32 %nbytes.addr.1.i.i, 0
  br i1 %tobool.not.i142.i, label %caam_rsa_drop_leading_zeros.exit.i143.i.caam_read_rsa_crt.exit.thread.i_crit_edge, label %if.end8.i.i.i.i

caam_rsa_drop_leading_zeros.exit.i143.i.caam_read_rsa_crt.exit.thread.i_crit_edge: ; preds = %caam_rsa_drop_leading_zeros.exit.i143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_read_rsa_crt.exit.thread.i

if.end8.i.i.i.i:                                  ; preds = %caam_rsa_drop_leading_zeros.exit.i143.i
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %p_sz.2.i, i32 noundef 3521) #14
  %tobool1.not.i.i51 = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool1.not.i.i51, label %if.end8.i.i.i.i.caam_read_rsa_crt.exit.thread.i_crit_edge, label %if.end30.i

if.end8.i.i.i.i.caam_read_rsa_crt.exit.thread.i_crit_edge: ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_read_rsa_crt.exit.thread.i

caam_read_rsa_crt.exit.thread.i:                  ; preds = %if.end8.i.i.i.i.caam_read_rsa_crt.exit.thread.i_crit_edge, %caam_rsa_drop_leading_zeros.exit.i143.i.caam_read_rsa_crt.exit.thread.i_crit_edge, %land.rhs.i.i137.i.caam_read_rsa_crt.exit.thread.i_crit_edge
  %dp26273.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 16
  %71 = ptrtoint ptr %dp26273.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %dp26273.i, align 4
  br label %free_tmp2.i

if.end30.i:                                       ; preds = %if.end8.i.i.i.i
  %sub.i.i = sub i32 %p_sz.2.i, %nbytes.addr.1.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 %sub.i.i
  %72 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %ptr.addr.1.i.i, i32 %nbytes.addr.1.i.i)
  %dp26.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 16
  %73 = ptrtoint ptr %dp26.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call9.i.i.i.i, ptr %dp26.i, align 4
  %dq.i = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 6
  %74 = ptrtoint ptr %dq.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dq.i, align 4
  %dq_sz.i = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 14
  %76 = ptrtoint ptr %dq_sz.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dq_sz.i, align 4
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not4.i.i149.i = icmp eq i8 %79, 0
  br i1 %tobool.not4.i.i149.i, label %if.end30.i.land.rhs.i.i153.i_crit_edge, label %if.end30.i.caam_rsa_drop_leading_zeros.exit.i161.i_crit_edge

if.end30.i.caam_rsa_drop_leading_zeros.exit.i161.i_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_drop_leading_zeros.exit.i161.i

if.end30.i.land.rhs.i.i153.i_crit_edge:           ; preds = %if.end30.i
  br label %land.rhs.i.i153.i

land.rhs.i.i153.i:                                ; preds = %while.body.i.i157.i.land.rhs.i.i153.i_crit_edge, %if.end30.i.land.rhs.i.i153.i_crit_edge
  %ptr.addr.0.i150.i = phi ptr [ %incdec.ptr.i.i154.i, %while.body.i.i157.i.land.rhs.i.i153.i_crit_edge ], [ %75, %if.end30.i.land.rhs.i.i153.i_crit_edge ]
  %nbytes.addr.0.i151.i = phi i32 [ %dec.i.i155.i, %while.body.i.i157.i.land.rhs.i.i153.i_crit_edge ], [ %77, %if.end30.i.land.rhs.i.i153.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.0.i151.i)
  %tobool1.not.i.i152.i = icmp eq i32 %nbytes.addr.0.i151.i, 0
  br i1 %tobool1.not.i.i152.i, label %land.rhs.i.i153.i.caam_read_rsa_crt.exit198.thread.i_crit_edge, label %while.body.i.i157.i

land.rhs.i.i153.i.caam_read_rsa_crt.exit198.thread.i_crit_edge: ; preds = %land.rhs.i.i153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_read_rsa_crt.exit198.thread.i

while.body.i.i157.i:                              ; preds = %land.rhs.i.i153.i
  %incdec.ptr.i.i154.i = getelementptr i8, ptr %ptr.addr.0.i150.i, i32 1
  %dec.i.i155.i = add i32 %nbytes.addr.0.i151.i, -1
  %80 = ptrtoint ptr %incdec.ptr.i.i154.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %incdec.ptr.i.i154.i, align 1
  %tobool.not.i.i156.i = icmp eq i8 %81, 0
  br i1 %tobool.not.i.i156.i, label %while.body.i.i157.i.land.rhs.i.i153.i_crit_edge, label %while.body.i.i157.i.caam_rsa_drop_leading_zeros.exit.i161.i_crit_edge

while.body.i.i157.i.caam_rsa_drop_leading_zeros.exit.i161.i_crit_edge: ; preds = %while.body.i.i157.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_drop_leading_zeros.exit.i161.i

while.body.i.i157.i.land.rhs.i.i153.i_crit_edge:  ; preds = %while.body.i.i157.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i153.i

caam_rsa_drop_leading_zeros.exit.i161.i:          ; preds = %while.body.i.i157.i.caam_rsa_drop_leading_zeros.exit.i161.i_crit_edge, %if.end30.i.caam_rsa_drop_leading_zeros.exit.i161.i_crit_edge
  %ptr.addr.1.i158.i = phi ptr [ %75, %if.end30.i.caam_rsa_drop_leading_zeros.exit.i161.i_crit_edge ], [ %incdec.ptr.i.i154.i, %while.body.i.i157.i.caam_rsa_drop_leading_zeros.exit.i161.i_crit_edge ]
  %nbytes.addr.1.i159.i = phi i32 [ %77, %if.end30.i.caam_rsa_drop_leading_zeros.exit.i161.i_crit_edge ], [ %dec.i.i155.i, %while.body.i.i157.i.caam_rsa_drop_leading_zeros.exit.i161.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.1.i159.i)
  %tobool.not.i160.i = icmp eq i32 %nbytes.addr.1.i159.i, 0
  br i1 %tobool.not.i160.i, label %caam_rsa_drop_leading_zeros.exit.i161.i.caam_read_rsa_crt.exit198.thread.i_crit_edge, label %if.end8.i.i.i189.i

caam_rsa_drop_leading_zeros.exit.i161.i.caam_read_rsa_crt.exit198.thread.i_crit_edge: ; preds = %caam_rsa_drop_leading_zeros.exit.i161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_read_rsa_crt.exit198.thread.i

if.end8.i.i.i189.i:                               ; preds = %caam_rsa_drop_leading_zeros.exit.i161.i
  %call9.i.i.i188.i = call noalias align 128 ptr @__kmalloc(i32 noundef %q_sz.2.i, i32 noundef 3521) #14
  %tobool1.not.i191.i = icmp eq ptr %call9.i.i.i188.i, null
  br i1 %tobool1.not.i191.i, label %if.end8.i.i.i189.i.caam_read_rsa_crt.exit198.thread.i_crit_edge, label %if.end36.i

if.end8.i.i.i189.i.caam_read_rsa_crt.exit198.thread.i_crit_edge: ; preds = %if.end8.i.i.i189.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_read_rsa_crt.exit198.thread.i

caam_read_rsa_crt.exit198.thread.i:               ; preds = %if.end8.i.i.i189.i.caam_read_rsa_crt.exit198.thread.i_crit_edge, %caam_rsa_drop_leading_zeros.exit.i161.i.caam_read_rsa_crt.exit198.thread.i_crit_edge, %land.rhs.i.i153.i.caam_read_rsa_crt.exit198.thread.i_crit_edge
  %dq32276.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 20
  %82 = ptrtoint ptr %dq32276.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %dq32276.i, align 4
  br label %free_dp.i

if.end36.i:                                       ; preds = %if.end8.i.i.i189.i
  %sub.i194.i = sub i32 %q_sz.2.i, %nbytes.addr.1.i159.i
  %add.ptr.i195.i = getelementptr i8, ptr %call9.i.i.i188.i, i32 %sub.i194.i
  %83 = call ptr @memcpy(ptr %add.ptr.i195.i, ptr %ptr.addr.1.i158.i, i32 %nbytes.addr.1.i159.i)
  %dq32.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 20
  %84 = ptrtoint ptr %dq32.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call9.i.i.i188.i, ptr %dq32.i, align 4
  %qinv.i = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 7
  %85 = ptrtoint ptr %qinv.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %qinv.i, align 4
  %qinv_sz.i = getelementptr inbounds %struct.rsa_key, ptr %raw_key, i32 0, i32 15
  %87 = ptrtoint ptr %qinv_sz.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %qinv_sz.i, align 4
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %86, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not4.i.i199.i = icmp eq i8 %90, 0
  br i1 %tobool.not4.i.i199.i, label %if.end36.i.land.rhs.i.i203.i_crit_edge, label %if.end36.i.caam_rsa_drop_leading_zeros.exit.i211.i_crit_edge

if.end36.i.caam_rsa_drop_leading_zeros.exit.i211.i_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_drop_leading_zeros.exit.i211.i

if.end36.i.land.rhs.i.i203.i_crit_edge:           ; preds = %if.end36.i
  br label %land.rhs.i.i203.i

land.rhs.i.i203.i:                                ; preds = %while.body.i.i207.i.land.rhs.i.i203.i_crit_edge, %if.end36.i.land.rhs.i.i203.i_crit_edge
  %ptr.addr.0.i200.i = phi ptr [ %incdec.ptr.i.i204.i, %while.body.i.i207.i.land.rhs.i.i203.i_crit_edge ], [ %86, %if.end36.i.land.rhs.i.i203.i_crit_edge ]
  %nbytes.addr.0.i201.i = phi i32 [ %dec.i.i205.i, %while.body.i.i207.i.land.rhs.i.i203.i_crit_edge ], [ %88, %if.end36.i.land.rhs.i.i203.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.0.i201.i)
  %tobool1.not.i.i202.i = icmp eq i32 %nbytes.addr.0.i201.i, 0
  br i1 %tobool1.not.i.i202.i, label %land.rhs.i.i203.i.free_dq.i_crit_edge, label %while.body.i.i207.i

land.rhs.i.i203.i.free_dq.i_crit_edge:            ; preds = %land.rhs.i.i203.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_dq.i

while.body.i.i207.i:                              ; preds = %land.rhs.i.i203.i
  %incdec.ptr.i.i204.i = getelementptr i8, ptr %ptr.addr.0.i200.i, i32 1
  %dec.i.i205.i = add i32 %nbytes.addr.0.i201.i, -1
  %91 = ptrtoint ptr %incdec.ptr.i.i204.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %incdec.ptr.i.i204.i, align 1
  %tobool.not.i.i206.i = icmp eq i8 %92, 0
  br i1 %tobool.not.i.i206.i, label %while.body.i.i207.i.land.rhs.i.i203.i_crit_edge, label %while.body.i.i207.i.caam_rsa_drop_leading_zeros.exit.i211.i_crit_edge

while.body.i.i207.i.caam_rsa_drop_leading_zeros.exit.i211.i_crit_edge: ; preds = %while.body.i.i207.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_drop_leading_zeros.exit.i211.i

while.body.i.i207.i.land.rhs.i.i203.i_crit_edge:  ; preds = %while.body.i.i207.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i203.i

caam_rsa_drop_leading_zeros.exit.i211.i:          ; preds = %while.body.i.i207.i.caam_rsa_drop_leading_zeros.exit.i211.i_crit_edge, %if.end36.i.caam_rsa_drop_leading_zeros.exit.i211.i_crit_edge
  %ptr.addr.1.i208.i = phi ptr [ %86, %if.end36.i.caam_rsa_drop_leading_zeros.exit.i211.i_crit_edge ], [ %incdec.ptr.i.i204.i, %while.body.i.i207.i.caam_rsa_drop_leading_zeros.exit.i211.i_crit_edge ]
  %nbytes.addr.1.i209.i = phi i32 [ %88, %if.end36.i.caam_rsa_drop_leading_zeros.exit.i211.i_crit_edge ], [ %dec.i.i205.i, %while.body.i.i207.i.caam_rsa_drop_leading_zeros.exit.i211.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.1.i209.i)
  %tobool.not.i210.i = icmp eq i32 %nbytes.addr.1.i209.i, 0
  br i1 %tobool.not.i210.i, label %caam_rsa_drop_leading_zeros.exit.i211.i.free_dq.i_crit_edge, label %if.end8.i.i.i239.i

caam_rsa_drop_leading_zeros.exit.i211.i.free_dq.i_crit_edge: ; preds = %caam_rsa_drop_leading_zeros.exit.i211.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_dq.i

if.end8.i.i.i239.i:                               ; preds = %caam_rsa_drop_leading_zeros.exit.i211.i
  %call9.i.i.i238.i = call noalias align 128 ptr @__kmalloc(i32 noundef %q_sz.2.i, i32 noundef 3521) #14
  %tobool1.not.i241.i = icmp eq ptr %call9.i.i.i238.i, null
  br i1 %tobool1.not.i241.i, label %if.end8.i.i.i239.i.free_dq.i_crit_edge, label %if.end42.i

if.end8.i.i.i239.i.free_dq.i_crit_edge:           ; preds = %if.end8.i.i.i239.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_dq.i

if.end42.i:                                       ; preds = %if.end8.i.i.i239.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i244.i = sub i32 %q_sz.2.i, %nbytes.addr.1.i209.i
  %add.ptr.i245.i = getelementptr i8, ptr %call9.i.i.i238.i, i32 %sub.i244.i
  %93 = call ptr @memcpy(ptr %add.ptr.i245.i, ptr %ptr.addr.1.i208.i, i32 %nbytes.addr.1.i209.i)
  %qinv38.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %94 = ptrtoint ptr %qinv38.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call9.i.i.i238.i, ptr %qinv38.i, align 4
  %95 = ptrtoint ptr %priv_form.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 2, ptr %priv_form.i, align 4
  br label %cleanup

free_dq.i:                                        ; preds = %if.end8.i.i.i239.i.free_dq.i_crit_edge, %caam_rsa_drop_leading_zeros.exit.i211.i.free_dq.i_crit_edge, %land.rhs.i.i203.i.free_dq.i_crit_edge
  %qinv38279.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %96 = ptrtoint ptr %qinv38279.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %qinv38279.i, align 4
  %97 = ptrtoint ptr %dq32.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dq32.i, align 4
  call void @kfree_sensitive(ptr noundef %98) #9
  br label %free_dp.i

free_dp.i:                                        ; preds = %free_dq.i, %caam_read_rsa_crt.exit198.thread.i
  %99 = ptrtoint ptr %dp26.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dp26.i, align 4
  call void @kfree_sensitive(ptr noundef %100) #9
  br label %free_tmp2.i

free_tmp2.i:                                      ; preds = %free_dp.i, %caam_read_rsa_crt.exit.thread.i
  %101 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tmp2.i, align 4
  call void @kfree_sensitive(ptr noundef %102) #9
  br label %free_tmp1.i

free_tmp1.i:                                      ; preds = %free_tmp2.i, %if.end8.i.i132.i.free_tmp1.i_crit_edge
  %103 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tmp1.i, align 4
  call void @kfree_sensitive(ptr noundef %104) #9
  br label %free_q.i

free_q.i:                                         ; preds = %free_tmp1.i, %if.end11.i.free_q.i_crit_edge
  %105 = ptrtoint ptr %q7.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %q7.i, align 4
  call void @kfree_sensitive(ptr noundef %106) #9
  br label %free_p.i

free_p.i:                                         ; preds = %free_q.i, %caam_read_raw_data.exit105.i.free_p.i_crit_edge, %caam_read_raw_data.exit105.thread.i
  %107 = ptrtoint ptr %p3.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %p3.i, align 4
  call void @kfree_sensitive(ptr noundef %108) #9
  br label %cleanup

err:                                              ; preds = %caam_read_raw_data.exit.err_crit_edge, %caam_read_raw_data.exit.thread, %if.end8.err_crit_edge, %if.end.err_crit_edge
  call fastcc void @caam_rsa_free_key(ptr noundef %key1)
  br label %cleanup

cleanup:                                          ; preds = %err, %free_p.i, %if.end42.i, %caam_read_raw_data.exit.i.cleanup_crit_edge, %caam_read_raw_data.exit.thread.i, %if.then24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then24 ], [ -12, %err ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %caam_read_raw_data.exit.thread.i ], [ 0, %caam_read_raw_data.exit.i.cleanup_crit_edge ], [ 0, %if.end42.i ], [ 0, %free_p.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %raw_key) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @caam_rsa_max_size(ptr nocapture noundef readonly %tfm) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %n_sz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 36
  %0 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_sz, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caam_rsa_init_tfm(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @caam_jr_alloc() #9
  %dev = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 60
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %dev, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #13
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @zero_buffer, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %4) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !141

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %call1) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %call1, ptr noundef %4, i32 noundef 511) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %10 = ptrtoint ptr %4 to i32
  %sub.i = add i32 %10, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %9, i32 %shr.i
  %and.i = and i32 %10, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %call1, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 511, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %padding_dma = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 64
  %11 = ptrtoint ptr %padding_dma to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %padding_dma, align 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %13, i32 noundef %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i28 = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i28, label %do.end15, label %if.end18

do.end15:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.71) #13
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void @caam_jr_free(ptr noundef %17) #9
  br label %cleanup

if.end18:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %do_one_request = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %18 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @akcipher_do_one_req, ptr %do_one_request, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end15, %do.end
  %retval.0 = phi i32 [ %3, %do.end ], [ -12, %do.end15 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caam_rsa_exit_tfm(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %key1 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %dev = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 60
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %padding_dma = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 64
  %2 = ptrtoint ptr %padding_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %padding_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %3, i32 noundef 511, i32 noundef 1, i32 noundef 0) #9
  tail call fastcc void @caam_rsa_free_key(ptr noundef %key1)
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @caam_jr_free(ptr noundef %5) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rsa_edesc_alloc(ptr noundef %req, i32 noundef %desclen) unnamed_addr #0 align 64 {
entry:
  %miter.i = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %dev2 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 60
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %__ctx.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 6
  %flags5 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags5, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %src_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_len, align 32
  %n_sz = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 36
  %8 = ptrtoint ptr %n_sz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp7 = icmp ugt i32 %7, %9
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %src = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 1
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src, align 8
  %sub = sub i32 %7, %9
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %miter.i) #9
  %12 = call ptr @memset(ptr %miter.i, i32 255, i32 44)
  %conv.i = zext i32 %sub to i64
  %call.i = tail call i32 @sg_nents_for_len(ptr noundef %11, i64 noundef %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %caam_rsa_count_leading_zeros.exit.thread, label %if.end.i

caam_rsa_count_leading_zeros.exit.thread:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %miter.i) #9
  br label %if.then12

if.end.i:                                         ; preds = %if.then
  %and.lobit = lshr exact i32 %and, 9
  %or.i = xor i32 %and.lobit, 5
  call void @sg_miter_start(ptr noundef nonnull %miter.i, ptr noundef %11, i32 noundef %call.i, i32 noundef %or.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp2.not48.i = icmp eq i32 %sub, 0
  br i1 %cmp2.not48.i, label %if.end.i.caam_rsa_count_leading_zeros.exit_crit_edge, label %while.cond4.preheader.lr.ph.i

if.end.i.caam_rsa_count_leading_zeros.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_count_leading_zeros.exit

while.cond4.preheader.lr.ph.i:                    ; preds = %if.end.i
  %addr.i = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter.i, i32 0, i32 1
  %length.i = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter.i, i32 0, i32 2
  br label %while.cond4.preheader.i

while.cond4.preheader.i:                          ; preds = %if.end14.i.while.cond4.preheader.i_crit_edge, %while.cond4.preheader.lr.ph.i
  %buff.053.i = phi ptr [ inttoptr (i32 -1 to ptr), %while.cond4.preheader.lr.ph.i ], [ %16, %if.end14.i.while.cond4.preheader.i_crit_edge ]
  %len.052.i = phi i32 [ 0, %while.cond4.preheader.lr.ph.i ], [ %18, %if.end14.i.while.cond4.preheader.i_crit_edge ]
  %nbytes.addr.049.i = phi i32 [ %sub, %while.cond4.preheader.lr.ph.i ], [ %sub.i, %if.end14.i.while.cond4.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.052.i)
  %tobool.not44.i = icmp eq i32 %len.052.i, 0
  br i1 %tobool.not44.i, label %while.cond4.preheader.i.if.end14.i_crit_edge, label %while.cond4.preheader.i.land.lhs.true.i_crit_edge

while.cond4.preheader.i.land.lhs.true.i_crit_edge: ; preds = %while.cond4.preheader.i
  br label %land.lhs.true.i

while.cond4.preheader.i.if.end14.i_crit_edge:     ; preds = %while.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %while.body8.i.land.lhs.true.i_crit_edge, %while.cond4.preheader.i.land.lhs.true.i_crit_edge
  %buff.147.i = phi ptr [ %incdec.ptr.i, %while.body8.i.land.lhs.true.i_crit_edge ], [ %buff.053.i, %while.cond4.preheader.i.land.lhs.true.i_crit_edge ]
  %len.146.i = phi i32 [ %dec.i, %while.body8.i.land.lhs.true.i_crit_edge ], [ %len.052.i, %while.cond4.preheader.i.land.lhs.true.i_crit_edge ]
  %lzeros.145.i = phi i32 [ %inc.i, %while.body8.i.land.lhs.true.i_crit_edge ], [ 0, %while.cond4.preheader.i.land.lhs.true.i_crit_edge ]
  %13 = ptrtoint ptr %buff.147.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buff.147.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not.i = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %nbytes.addr.049.i, i32 %lzeros.145.i)
  %cmp6.i = icmp ugt i32 %nbytes.addr.049.i, %lzeros.145.i
  %or.cond.i = select i1 %tobool5.not.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %while.body8.i, label %land.lhs.true10.critedge.i

while.body8.i:                                    ; preds = %land.lhs.true.i
  %inc.i = add nuw i32 %lzeros.145.i, 1
  %dec.i = add i32 %len.146.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %buff.147.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body8.i.if.end14.i_crit_edge, label %while.body8.i.land.lhs.true.i_crit_edge

while.body8.i.land.lhs.true.i_crit_edge:          ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

while.body8.i.if.end14.i_crit_edge:               ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

land.lhs.true10.critedge.i:                       ; preds = %land.lhs.true.i
  br i1 %tobool5.not.i, label %land.lhs.true10.critedge.i.if.end14.i_crit_edge, label %land.lhs.true10.critedge.i.caam_rsa_count_leading_zeros.exit_crit_edge

land.lhs.true10.critedge.i.caam_rsa_count_leading_zeros.exit_crit_edge: ; preds = %land.lhs.true10.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_count_leading_zeros.exit

land.lhs.true10.critedge.i.if.end14.i_crit_edge:  ; preds = %land.lhs.true10.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.end14.i:                                       ; preds = %land.lhs.true10.critedge.i.if.end14.i_crit_edge, %while.body8.i.if.end14.i_crit_edge, %while.cond4.preheader.i.if.end14.i_crit_edge
  %lzeros.143.i = phi i32 [ %lzeros.145.i, %land.lhs.true10.critedge.i.if.end14.i_crit_edge ], [ 0, %while.cond4.preheader.i.if.end14.i_crit_edge ], [ %len.052.i, %while.body8.i.if.end14.i_crit_edge ]
  %call15.i = call zeroext i1 @sg_miter_next(ptr noundef nonnull %miter.i) #9
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr.i, align 4
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 %nbytes.addr.049.i, %lzeros.143.i
  %cmp2.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp2.not.i, label %if.end14.i.caam_rsa_count_leading_zeros.exit_crit_edge, label %if.end14.i.while.cond4.preheader.i_crit_edge

if.end14.i.while.cond4.preheader.i_crit_edge:     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond4.preheader.i

if.end14.i.caam_rsa_count_leading_zeros.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %caam_rsa_count_leading_zeros.exit

caam_rsa_count_leading_zeros.exit:                ; preds = %if.end14.i.caam_rsa_count_leading_zeros.exit_crit_edge, %land.lhs.true10.critedge.i.caam_rsa_count_leading_zeros.exit_crit_edge, %if.end.i.caam_rsa_count_leading_zeros.exit_crit_edge
  %nbytes.addr.0.lcssa.i = phi i32 [ 0, %if.end.i.caam_rsa_count_leading_zeros.exit_crit_edge ], [ 0, %if.end14.i.caam_rsa_count_leading_zeros.exit_crit_edge ], [ %nbytes.addr.049.i, %land.lhs.true10.critedge.i.caam_rsa_count_leading_zeros.exit_crit_edge ]
  %lzeros.2.i = phi i32 [ 0, %if.end.i.caam_rsa_count_leading_zeros.exit_crit_edge ], [ 0, %if.end14.i.caam_rsa_count_leading_zeros.exit_crit_edge ], [ %lzeros.145.i, %land.lhs.true10.critedge.i.caam_rsa_count_leading_zeros.exit_crit_edge ]
  %consumed.i = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter.i, i32 0, i32 3
  %19 = ptrtoint ptr %consumed.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %lzeros.2.i, ptr %consumed.i, align 4
  call void @sg_miter_stop(ptr noundef nonnull %miter.i) #9
  %sub17.neg.i = sub i32 %sub, %nbytes.addr.0.lcssa.i
  %sub18.i = add i32 %sub17.neg.i, %lzeros.2.i
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %miter.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18.i)
  %cmp11 = icmp slt i32 %sub18.i, 0
  br i1 %cmp11, label %caam_rsa_count_leading_zeros.exit.if.then12_crit_edge, label %if.end

caam_rsa_count_leading_zeros.exit.if.then12_crit_edge: ; preds = %caam_rsa_count_leading_zeros.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %caam_rsa_count_leading_zeros.exit.if.then12_crit_edge, %caam_rsa_count_leading_zeros.exit.thread
  %retval.0.i249267 = phi i32 [ %call.i, %caam_rsa_count_leading_zeros.exit.thread ], [ %sub18.i, %caam_rsa_count_leading_zeros.exit.if.then12_crit_edge ]
  %20 = inttoptr i32 %retval.0.i249267 to ptr
  br label %cleanup

if.end:                                           ; preds = %caam_rsa_count_leading_zeros.exit
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %src, align 8
  %call16 = call ptr @scatterwalk_ffwd(ptr noundef %__ctx.i, ptr noundef %22, i32 noundef %sub18.i) #9
  %fixup_src = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5
  %23 = ptrtoint ptr %fixup_src to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call16, ptr %fixup_src, align 4
  %24 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_len, align 32
  %sub18 = sub i32 %25, %sub18.i
  br label %if.end26

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub21 = sub i32 %9, %7
  %src22 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 1
  %26 = ptrtoint ptr %src22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %src22, align 8
  %fixup_src23 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5
  %28 = ptrtoint ptr %fixup_src23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %fixup_src23, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end
  %.sink = phi i32 [ %7, %if.else ], [ %sub18, %if.end ]
  %diff_size.0 = phi i32 [ %sub21, %if.else ], [ 0, %if.end ]
  %fixup_src_len25 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 4
  %29 = ptrtoint ptr %fixup_src_len25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %fixup_src_len25, align 4
  %fixup_src27 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5
  %30 = ptrtoint ptr %fixup_src27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fixup_src27, align 4
  %fixup_src_len28 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 4
  %conv = zext i32 %.sink to i64
  %call29 = call i32 @sg_nents_for_len(ptr noundef %31, i64 noundef %conv) #9
  %dst = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %32 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dst, align 4
  %dst_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 4
  %34 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dst_len, align 4
  %conv30 = zext i32 %35 to i64
  %call31 = call i32 @sg_nents_for_len(ptr noundef %33, i64 noundef %conv30) #9
  %36 = ptrtoint ptr %fixup_src27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fixup_src27, align 4
  %call33 = call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %37, i32 noundef %call29, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.end, label %if.end40, !prof !140

do.end:                                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12) #13
  br label %cleanup

if.end40:                                         ; preds = %if.end26
  %38 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dst, align 4
  %call42 = call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %39, i32 noundef %call31, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.end55, label %if.end56, !prof !140

do.end55:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15) #13
  br label %src_fail

if.end56:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %diff_size.0)
  %tobool57 = icmp ne i32 %diff_size.0, 0
  %tobool57.not = xor i1 %tobool57, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call33)
  %cmp58 = icmp eq i32 %call33, 1
  %or.cond = select i1 %tobool57.not, i1 %cmp58, i1 false
  %lnot.ext66 = zext i1 %tobool57 to i32
  %add = add i32 %call33, %lnot.ext66
  %sec4_sg_len.0 = select i1 %or.cond, i32 0, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call42)
  %cmp68 = icmp sgt i32 %call42, 1
  br i1 %cmp68, label %if.then70, label %if.else73

if.then70:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add nuw i32 %call42, 3
  %and.i = and i32 %add.i, -4
  %add72 = add i32 %and.i, %sec4_sg_len.0
  br label %if.end75

if.else73:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %add.i250 = add i32 %sec4_sg_len.0, 3
  %and.i251 = and i32 %add.i250, -4
  br label %if.end75

if.end75:                                         ; preds = %if.else73, %if.then70
  %sec4_sg_len.1 = phi i32 [ %add72, %if.then70 ], [ %and.i251, %if.else73 ]
  %mul = shl i32 %sec4_sg_len.1, 4
  %or.i252 = select i1 %tobool.not, i32 2849, i32 3521
  %add76 = add i32 %desclen, 76
  %add77 = add i32 %add76, %mul
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add77, i32 noundef %or.i252) #14
  %tobool79.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool79.not, label %if.end75.dst_fail_crit_edge, label %if.end81

if.end75.dst_fail_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %dst_fail

if.end81:                                         ; preds = %if.end75
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 76
  %add.ptr82 = getelementptr i8, ptr %add.ptr, i32 %desclen
  %sec4_sg = getelementptr inbounds %struct.rsa_edesc, ptr %call9.i.i, i32 0, i32 7
  %40 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr82, ptr %sec4_sg, align 4
  br i1 %tobool57, label %if.then84, label %if.end81.if.end86_crit_edge

if.end81.if.end86_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then84:                                        ; preds = %if.end81
  %padding_dma = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 64
  %41 = ptrtoint ptr %padding_dma to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %padding_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %43 = load i8, ptr @caam_dpaa2, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i253 = icmp eq i8 %43, 0
  br i1 %tobool.not.i253, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i = zext i32 %42 to i64
  %44 = call i64 @llvm.bswap.i64(i64 %conv.i.i.i) #9
  %45 = ptrtoint ptr %add.ptr82 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %add.ptr82, align 8
  %format_offset.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %add.ptr82, i32 0, i32 3
  %46 = ptrtoint ptr %format_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %format_offset.i.i.i, align 2
  %48 = call i32 @llvm.bswap.i32(i32 %diff_size.0) #9
  %len1.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %add.ptr82, i32 0, i32 1
  %49 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %len1.i.i.i, align 8
  %bpid1.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %add.ptr82, i32 0, i32 2
  %50 = ptrtoint ptr %bpid1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %bpid1.i.i.i, align 4
  %52 = and i16 %51, 192
  store i16 %52, ptr %bpid1.i.i.i, align 4
  %53 = and i16 %47, 64
  %54 = ptrtoint ptr %format_offset.i.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %format_offset.i.i.i, align 2
  br label %do.body.i

if.else.i:                                        ; preds = %if.then84
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_imx to i32))
  %55 = load i8, ptr @caam_imx, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i.i, label %if.end.i.i256, label %if.then.i.i255

if.then.i.i255:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %56 = load i8, ptr @caam_little_end, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i.i.i254 = icmp eq i8 %56, 0
  %57 = call i32 @llvm.bswap.i32(i32 %42) #9
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i254, i32 %42, i32 %57
  %conv.i.i = zext i32 %retval.0.i.i.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  br label %cpu_to_caam_dma64.exit.i

if.end.i.i256:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i = zext i32 %42 to i64
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %58 = load i8, ptr @caam_little_end, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i4.i.i = icmp eq i8 %58, 0
  %59 = call i64 @llvm.bswap.i64(i64 %conv1.i.i) #9
  %retval.0.i5.i.i = select i1 %tobool.not.i4.i.i, i64 %conv1.i.i, i64 %59
  br label %cpu_to_caam_dma64.exit.i

cpu_to_caam_dma64.exit.i:                         ; preds = %if.end.i.i256, %if.then.i.i255
  %retval.0.i1.i = phi i64 [ %shl.i.i, %if.then.i.i255 ], [ %retval.0.i5.i.i, %if.end.i.i256 ]
  %60 = ptrtoint ptr %add.ptr82 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %retval.0.i1.i, ptr %add.ptr82, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %61 = load i8, ptr @caam_little_end, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i2.i = icmp eq i8 %61, 0
  %62 = call i32 @llvm.bswap.i32(i32 %diff_size.0) #9
  %retval.0.i3.i = select i1 %tobool.not.i2.i, i32 %diff_size.0, i32 %62
  %len2.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %add.ptr82, i32 0, i32 1
  %63 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %retval.0.i3.i, ptr %len2.i, align 8
  %bpid_offset.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %add.ptr82, i32 0, i32 2
  %64 = ptrtoint ptr %bpid_offset.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %bpid_offset.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %cpu_to_caam_dma64.exit.i, %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_to_sec4_sg_one.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rsa_edesc_alloc, %if.end86)) #9
          to label %if.then9.i [label %if.end86], !srcloc !142

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @print_hex_dump(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.25, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %add.ptr82, i32 noundef 16, i1 noundef zeroext true) #9
  br label %if.end86

if.end86:                                         ; preds = %if.then9.i, %do.body.i, %if.end81.if.end86_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sec4_sg_len.0)
  %tobool87.not = icmp eq i32 %sec4_sg_len.0, 0
  br i1 %tobool87.not, label %if.end86.if.end98_crit_edge, label %if.then88

if.end86.if.end98_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %fixup_src27 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fixup_src27, align 4
  %67 = ptrtoint ptr %fixup_src_len28 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fixup_src_len28, align 4
  %69 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sec4_sg, align 4
  %add.ptr97 = getelementptr %struct.sec4_sg_entry, ptr %70, i32 %lnot.ext66
  call fastcc void @sg_to_sec4_sg_last(ptr noundef %66, i32 noundef %68, ptr noundef %add.ptr97)
  br label %if.end98

if.end98:                                         ; preds = %if.then88, %if.end86.if.end98_crit_edge
  br i1 %cmp68, label %if.then101, label %if.end98.if.end106_crit_edge

if.end98.if.end106_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dst, align 4
  %73 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dst_len, align 4
  %75 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sec4_sg, align 4
  %add.ptr105 = getelementptr %struct.sec4_sg_entry, ptr %76, i32 %sec4_sg_len.0
  call fastcc void @sg_to_sec4_sg_last(ptr noundef %72, i32 noundef %74, ptr noundef %add.ptr105)
  br label %if.end106

if.end106:                                        ; preds = %if.then101, %if.end98.if.end106_crit_edge
  %77 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call29, ptr %call9.i.i, align 128
  %dst_nents108 = getelementptr inbounds %struct.rsa_edesc, ptr %call9.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %dst_nents108 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call31, ptr %dst_nents108, align 4
  %edesc109 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 8
  %79 = ptrtoint ptr %edesc109 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call9.i.i, ptr %edesc109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool110.not = icmp eq i32 %mul, 0
  br i1 %tobool110.not, label %if.end106.cleanup_crit_edge, label %if.end112

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end112:                                        ; preds = %if.end106
  %mapped_src_nents113 = getelementptr inbounds %struct.rsa_edesc, ptr %call9.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %mapped_src_nents113 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call33, ptr %mapped_src_nents113, align 8
  %mapped_dst_nents114 = getelementptr inbounds %struct.rsa_edesc, ptr %call9.i.i, i32 0, i32 3
  %81 = ptrtoint ptr %mapped_dst_nents114 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call42, ptr %mapped_dst_nents114, align 4
  %82 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sec4_sg, align 4
  %call.i257 = call zeroext i1 @is_vmalloc_addr(ptr noundef %83) #9
  br i1 %call.i257, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end112
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i259, !prof !141

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i259:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %3) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %84 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i258 = icmp eq ptr %85, null
  br i1 %tobool.not.i.i258, label %if.end.i.i260, label %if.then.i259.dev_name.exit.i_crit_edge

if.then.i259.dev_name.exit.i_crit_edge:           ; preds = %if.then.i259
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i260:                                    ; preds = %if.then.i259
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i260, %if.then.i259.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %87, %if.end.i.i260 ], [ %85, %if.then.i259.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %sec4_sg_dma272 = getelementptr inbounds %struct.rsa_edesc, ptr %call9.i.i, i32 0, i32 6
  %88 = ptrtoint ptr %sec4_sg_dma272 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %sec4_sg_dma272, align 8
  call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #9
  br label %do.end123

dma_map_single_attrs.exit:                        ; preds = %if.end112
  call void @debug_dma_map_single(ptr noundef %3, ptr noundef %83, i32 noundef %mul) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %89 = load ptr, ptr @mem_map, align 4
  %90 = ptrtoint ptr %83 to i32
  %sub.i261 = add i32 %90, 1073741824
  %shr.i = lshr i32 %sub.i261, 12
  %add.ptr.i = getelementptr %struct.page, ptr %89, i32 %shr.i
  %and.i262 = and i32 %90, 4095
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i262, i32 noundef %mul, i32 noundef 1, i32 noundef 0) #9
  %sec4_sg_dma = getelementptr inbounds %struct.rsa_edesc, ptr %call9.i.i, i32 0, i32 6
  %91 = ptrtoint ptr %sec4_sg_dma to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call41.i, ptr %sec4_sg_dma, align 8
  call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i264 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i264, label %dma_map_single_attrs.exit.do.end123_crit_edge, label %if.end124

dma_map_single_attrs.exit.do.end123_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end123

do.end123:                                        ; preds = %dma_map_single_attrs.exit.do.end123_crit_edge, %dma_map_single_attrs.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18) #13
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %dst_fail

if.end124:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sec4_sg_bytes125 = getelementptr inbounds %struct.rsa_edesc, ptr %call9.i.i, i32 0, i32 4
  %92 = ptrtoint ptr %sec4_sg_bytes125 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %mul, ptr %sec4_sg_bytes125, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsa_edesc_alloc.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rsa_edesc_alloc, %cleanup)) #9
          to label %if.then137 [label %cleanup], !srcloc !142

if.then137:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sec4_sg, align 4
  %95 = ptrtoint ptr %sec4_sg_bytes125 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sec4_sg_bytes125, align 16
  call void @print_hex_dump(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %94, i32 noundef %96, i1 noundef zeroext true) #9
  br label %cleanup

dst_fail:                                         ; preds = %do.end123, %if.end75.dst_fail_crit_edge
  %97 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dst, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %98, i32 noundef %call31, i32 noundef 2, i32 noundef 0) #9
  br label %src_fail

src_fail:                                         ; preds = %dst_fail, %do.end55
  %99 = ptrtoint ptr %fixup_src27 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fixup_src27, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %100, i32 noundef %call29, i32 noundef 1, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %src_fail, %if.then137, %if.end124, %if.end106.cleanup_crit_edge, %do.end, %if.then12
  %retval.0 = phi ptr [ %20, %if.then12 ], [ inttoptr (i32 -12 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %src_fail ], [ %call9.i.i, %if.end106.cleanup_crit_edge ], [ %call9.i.i, %if.then137 ], [ %call9.i.i, %if.end124 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rsa_pub_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @akcipher_enqueue_req(ptr noundef %jrdev, ptr noundef %cbk, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %jrdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %edesc5 = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 8
  %4 = ptrtoint ptr %edesc5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edesc5, align 4
  %akcipher_op_done = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5, i32 12
  %6 = ptrtoint ptr %akcipher_op_done to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cbk, ptr %akcipher_op_done, align 4
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %engine = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %engine, align 4
  %call6 = tail call i32 @crypto_transfer_akcipher_request_to_engine(ptr noundef %10, ptr noundef %req) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hw_desc = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 9
  %call7 = tail call i32 @caam_jr_enqueue(ptr noundef %jrdev, ptr noundef %hw_desc, ptr noundef %cbk, ptr noundef %req) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call6, %if.then ], [ %call7, %if.else ]
  %11 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %ret.0, label %if.then9 [
    i32 -115, label %if.end.if.end12_crit_edge
    i32 -16, label %if.end.if.end12_crit_edge44
  ]

if.end.if.end12_crit_edge44:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %if.end
  %priv_form = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 4, i32 56
  %12 = ptrtoint ptr %priv_form to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %priv_form, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tfm.i, align 16
  %n_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 8, i32 0, i32 3
  %17 = ptrtoint ptr %n_dma.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_dma.i, align 4
  %n_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %16, i32 1, i32 4, i32 36
  %19 = ptrtoint ptr %n_sz.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %18, i32 noundef %20, i32 noundef 1, i32 noundef 0) #9
  %d_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 8, i32 0, i32 4
  %21 = ptrtoint ptr %d_dma.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %d_dma.i, align 4
  %d_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %16, i32 1, i32 4, i32 44
  %23 = ptrtoint ptr %d_sz.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %d_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %22, i32 noundef %24, i32 noundef 1, i32 noundef 0) #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tfm.i, align 16
  %p_sz4.i = getelementptr inbounds %struct.crypto_tfm, ptr %26, i32 1, i32 4, i32 48
  %27 = ptrtoint ptr %p_sz4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %p_sz4.i, align 4
  %q_sz5.i = getelementptr inbounds %struct.crypto_tfm, ptr %26, i32 1, i32 4, i32 52
  %29 = ptrtoint ptr %q_sz5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %q_sz5.i, align 4
  %d_dma.i39 = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 8, i32 0, i32 3
  %31 = ptrtoint ptr %d_dma.i39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %d_dma.i39, align 4
  %d_sz.i40 = getelementptr inbounds %struct.crypto_tfm, ptr %26, i32 1, i32 4, i32 44
  %33 = ptrtoint ptr %d_sz.i40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %d_sz.i40, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %32, i32 noundef %34, i32 noundef 1, i32 noundef 0) #9
  %p_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 8, i32 0, i32 4
  %35 = ptrtoint ptr %p_dma.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %p_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %36, i32 noundef %28, i32 noundef 1, i32 noundef 0) #9
  %q_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 8, i32 0, i32 5
  %37 = ptrtoint ptr %q_dma.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %q_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %38, i32 noundef %30, i32 noundef 1, i32 noundef 0) #9
  %tmp1_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 8, i32 0, i32 6
  %39 = ptrtoint ptr %tmp1_dma.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tmp1_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %40, i32 noundef %28, i32 noundef 0, i32 noundef 0) #9
  %tmp2_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 8, i32 0, i32 7
  %41 = ptrtoint ptr %tmp2_dma.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tmp2_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %42, i32 noundef %30, i32 noundef 0, i32 noundef 0) #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rsa_priv_f3_unmap(ptr noundef %jrdev, ptr noundef %5, ptr noundef %req)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tfm.i, align 16
  %n_dma.i42 = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 8, i32 0, i32 3
  %45 = ptrtoint ptr %n_dma.i42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n_dma.i42, align 4
  %n_sz.i43 = getelementptr inbounds %struct.crypto_tfm, ptr %44, i32 1, i32 4, i32 36
  %47 = ptrtoint ptr %n_sz.i43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_sz.i43, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %46, i32 noundef %48, i32 noundef 1, i32 noundef 0) #9
  %e_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 8, i32 0, i32 4
  %49 = ptrtoint ptr %e_dma.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %e_dma.i, align 4
  %e_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %44, i32 1, i32 4, i32 40
  %51 = ptrtoint ptr %e_sz.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %e_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %50, i32 noundef %52, i32 noundef 1, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb10, %sw.bb
  %dst.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 2
  %53 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dst.i, align 4
  %dst_nents.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 1
  %55 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dst_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %jrdev, ptr noundef %54, i32 noundef %56, i32 noundef 2, i32 noundef 0) #9
  %fixup_src.i = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 1, i32 5
  %57 = ptrtoint ptr %fixup_src.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fixup_src.i, align 4
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %5, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %jrdev, ptr noundef %58, i32 noundef %60, i32 noundef 1, i32 noundef 0) #9
  %sec4_sg_bytes.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 4
  %61 = ptrtoint ptr %sec4_sg_bytes.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sec4_sg_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i = icmp eq i32 %62, 0
  br i1 %tobool.not.i, label %sw.epilog.rsa_io_unmap.exit_crit_edge, label %if.then.i

sw.epilog.rsa_io_unmap.exit_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsa_io_unmap.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %sec4_sg_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 6
  %63 = ptrtoint ptr %sec4_sg_dma.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sec4_sg_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %64, i32 noundef %62, i32 noundef 1, i32 noundef 0) #9
  br label %rsa_io_unmap.exit

rsa_io_unmap.exit:                                ; preds = %if.then.i, %sw.epilog.rsa_io_unmap.exit_crit_edge
  tail call void @kfree(ptr noundef %5) #9
  br label %if.end12

if.end12:                                         ; preds = %rsa_io_unmap.exit, %if.end.if.end12_crit_edge, %if.end.if.end12_crit_edge44
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsa_pub_done(ptr noundef %dev, ptr nocapture noundef readnone %desc, i32 noundef %err, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @caam_strstatus(ptr noundef %dev, i32 noundef %err, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ecode.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %edesc3 = getelementptr inbounds %struct.akcipher_request, ptr %context, i32 1, i32 5, i32 8
  %2 = ptrtoint ptr %edesc3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edesc3, align 4
  %bklog = getelementptr inbounds %struct.rsa_edesc, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bklog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bklog, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %context, i32 0, i32 3
  %6 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tfm.i.i, align 16
  %n_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %3, i32 0, i32 8, i32 0, i32 3
  %8 = ptrtoint ptr %n_dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_dma.i, align 4
  %n_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %7, i32 1, i32 4, i32 36
  %10 = ptrtoint ptr %n_sz.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %9, i32 noundef %11, i32 noundef 1, i32 noundef 0) #9
  %e_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %3, i32 0, i32 8, i32 0, i32 4
  %12 = ptrtoint ptr %e_dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %e_dma.i, align 4
  %e_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %7, i32 1, i32 4, i32 40
  %14 = ptrtoint ptr %e_sz.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %e_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %13, i32 noundef %15, i32 noundef 1, i32 noundef 0) #9
  %dst.i = getelementptr inbounds %struct.akcipher_request, ptr %context, i32 0, i32 2
  %16 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst.i, align 4
  %dst_nents.i = getelementptr inbounds %struct.rsa_edesc, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dst_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %17, i32 noundef %19, i32 noundef 2, i32 noundef 0) #9
  %fixup_src.i = getelementptr inbounds %struct.akcipher_request, ptr %context, i32 1, i32 5
  %20 = ptrtoint ptr %fixup_src.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fixup_src.i, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %21, i32 noundef %23, i32 noundef 1, i32 noundef 0) #9
  %sec4_sg_bytes.i = getelementptr inbounds %struct.rsa_edesc, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %sec4_sg_bytes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sec4_sg_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end.rsa_io_unmap.exit_crit_edge, label %if.then.i

if.end.rsa_io_unmap.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsa_io_unmap.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sec4_sg_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %3, i32 0, i32 6
  %26 = ptrtoint ptr %sec4_sg_dma.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sec4_sg_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %27, i32 noundef %25, i32 noundef 1, i32 noundef 0) #9
  br label %rsa_io_unmap.exit

rsa_io_unmap.exit:                                ; preds = %if.then.i, %if.end.rsa_io_unmap.exit_crit_edge
  tail call void @kfree(ptr noundef %3) #9
  br i1 %tobool4.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %rsa_io_unmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %context, i32 0, i32 1
  %28 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %complete.i, align 8
  tail call void %29(ptr noundef %context, i32 noundef %ecode.0) #9
  br label %if.end7

if.else:                                          ; preds = %rsa_io_unmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %engine = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 18
  %30 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %engine, align 4
  tail call void @crypto_finalize_akcipher_request(ptr noundef %31, ptr noundef %context, i32 noundef %ecode.0) #9
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sg_to_sec4_sg_last(ptr noundef %sg, i32 noundef %len, ptr noundef %sec4_sg_ptr) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not1.i = icmp eq i32 %len, 0
  br i1 %tobool.not1.i, label %entry.sg_to_sec4_sg.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.sg_to_sec4_sg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sg_to_sec4_sg.exit

while.body.i:                                     ; preds = %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %sg.addr.06.i = phi ptr [ %call.i, %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge ], [ %sg, %entry.while.body.i_crit_edge ]
  %len.addr.05.i = phi i32 [ %sub.i, %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge ], [ %len, %entry.while.body.i_crit_edge ]
  %sec4_sg_ptr.addr.02.i = phi ptr [ %incdec.ptr.i, %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge ], [ %sec4_sg_ptr, %entry.while.body.i_crit_edge ]
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.06.i, i32 0, i32 4
  %0 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_length.i, align 4
  %2 = tail call i32 @llvm.smin.i32(i32 %1, i32 %len.addr.05.i) #9
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.06.i, i32 0, i32 3
  %3 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_address.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %5 = load i8, ptr @caam_dpaa2, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i32 %4 to i64
  %6 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i.i.i) #9
  %7 = ptrtoint ptr %sec4_sg_ptr.addr.02.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %sec4_sg_ptr.addr.02.i, align 8
  %format_offset.i.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 3
  %8 = ptrtoint ptr %format_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %format_offset.i.i.i.i, align 2
  %10 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %len1.i.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 1
  %11 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %len1.i.i.i.i, align 8
  %bpid1.i.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 2
  %12 = ptrtoint ptr %bpid1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bpid1.i.i.i.i, align 4
  %14 = and i16 %13, 192
  store i16 %14, ptr %bpid1.i.i.i.i, align 4
  %15 = and i16 %9, 64
  %16 = ptrtoint ptr %format_offset.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %format_offset.i.i.i.i, align 2
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %while.body.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_imx to i32))
  %17 = load i8, ptr @caam_imx, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %18 = load i8, ptr @caam_little_end, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i.i.i = icmp eq i8 %18, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %4, i32 %19
  %conv.i.i.i = zext i32 %retval.0.i.i.i.i to i64
  %shl.i.i.i = shl nuw i64 %conv.i.i.i, 32
  br label %cpu_to_caam_dma64.exit.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i.i = zext i32 %4 to i64
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %20 = load i8, ptr @caam_little_end, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i4.i.i.i = icmp eq i8 %20, 0
  %21 = tail call i64 @llvm.bswap.i64(i64 %conv1.i.i.i) #9
  %retval.0.i5.i.i.i = select i1 %tobool.not.i4.i.i.i, i64 %conv1.i.i.i, i64 %21
  br label %cpu_to_caam_dma64.exit.i.i

cpu_to_caam_dma64.exit.i.i:                       ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i1.i.i = phi i64 [ %shl.i.i.i, %if.then.i.i.i ], [ %retval.0.i5.i.i.i, %if.end.i.i.i ]
  %22 = ptrtoint ptr %sec4_sg_ptr.addr.02.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %retval.0.i1.i.i, ptr %sec4_sg_ptr.addr.02.i, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %23 = load i8, ptr @caam_little_end, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i2.i.i = icmp eq i8 %23, 0
  %24 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %retval.0.i3.i.i = select i1 %tobool.not.i2.i.i, i32 %2, i32 %24
  %len2.i.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 1
  %25 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i3.i.i, ptr %len2.i.i, align 8
  %bpid_offset.i.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 2
  %26 = ptrtoint ptr %bpid_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %bpid_offset.i.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %cpu_to_caam_dma64.exit.i.i, %if.then.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_to_sec4_sg_one.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sg_to_sec4_sg_last, %dma_to_sec4_sg_one.exit.i)) #9
          to label %if.then9.i.i [label %dma_to_sec4_sg_one.exit.i], !srcloc !142

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.25, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sec4_sg_ptr.addr.02.i, i32 noundef 16, i1 noundef zeroext true) #9
  br label %dma_to_sec4_sg_one.exit.i

dma_to_sec4_sg_one.exit.i:                        ; preds = %if.then9.i.i, %do.body.i.i
  %incdec.ptr.i = getelementptr %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.addr.06.i) #9
  %sub.i = sub i32 %len.addr.05.i, %2
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %dma_to_sec4_sg_one.exit.i.sg_to_sec4_sg.exit_crit_edge, label %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge

dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge: ; preds = %dma_to_sec4_sg_one.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

dma_to_sec4_sg_one.exit.i.sg_to_sec4_sg.exit_crit_edge: ; preds = %dma_to_sec4_sg_one.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sg_to_sec4_sg.exit

sg_to_sec4_sg.exit:                               ; preds = %dma_to_sec4_sg_one.exit.i.sg_to_sec4_sg.exit_crit_edge, %entry.sg_to_sec4_sg.exit_crit_edge
  %sec4_sg_ptr.addr.0.lcssa.i = phi ptr [ %sec4_sg_ptr, %entry.sg_to_sec4_sg.exit_crit_edge ], [ %incdec.ptr.i, %dma_to_sec4_sg_one.exit.i.sg_to_sec4_sg.exit_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %27 = load i8, ptr @caam_dpaa2, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i1 = icmp eq i8 %27, 0
  br i1 %tobool.not.i1, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sg_to_sec4_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.0.lcssa.i, i32 -1
  %format_offset.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %add.ptr.i, i32 0, i32 3
  %28 = ptrtoint ptr %format_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %format_offset.i.i, align 2
  %or.i.i = or i16 %29, 128
  store i16 %or.i.i, ptr %format_offset.i.i, align 2
  br label %sg_to_sec4_set_last.exit

if.else.i:                                        ; preds = %sg_to_sec4_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %30 = load i8, ptr @caam_little_end, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i2 = icmp eq i8 %30, 0
  %retval.0.i.i = select i1 %tobool.not.i.i2, i32 1073741824, i32 64
  %len.i = getelementptr %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.0.lcssa.i, i32 -1, i32 1
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 8
  %or.i = or i32 %retval.0.i.i, %32
  store i32 %or.i, ptr %len.i, align 8
  br label %sg_to_sec4_set_last.exit

sg_to_sec4_set_last.exit:                         ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

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
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_akcipher_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_jr_enqueue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsa_priv_f3_unmap(ptr noundef %dev, ptr nocapture noundef readonly %edesc, ptr nocapture noundef readonly %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %p_sz4 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 48
  %2 = ptrtoint ptr %p_sz4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_sz4, align 4
  %q_sz5 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 52
  %4 = ptrtoint ptr %q_sz5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q_sz5, align 4
  %p_dma = getelementptr inbounds %struct.rsa_edesc, ptr %edesc, i32 0, i32 8, i32 0, i32 4
  %6 = ptrtoint ptr %p_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %7, i32 noundef %3, i32 noundef 1, i32 noundef 0) #9
  %q_dma = getelementptr inbounds %struct.rsa_edesc, ptr %edesc, i32 0, i32 8, i32 0, i32 5
  %8 = ptrtoint ptr %q_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %9, i32 noundef %5, i32 noundef 1, i32 noundef 0) #9
  %dp_dma = getelementptr inbounds %struct.rsa_edesc, ptr %edesc, i32 0, i32 8, i32 0, i32 6
  %10 = ptrtoint ptr %dp_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dp_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %11, i32 noundef %3, i32 noundef 1, i32 noundef 0) #9
  %dq_dma = getelementptr inbounds %struct.rsa_edesc, ptr %edesc, i32 0, i32 8, i32 0, i32 7
  %12 = ptrtoint ptr %dq_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dq_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %13, i32 noundef %5, i32 noundef 1, i32 noundef 0) #9
  %c_dma = getelementptr inbounds %struct.rsa_edesc, ptr %edesc, i32 0, i32 8, i32 0, i32 3
  %14 = ptrtoint ptr %c_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %c_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %15, i32 noundef %3, i32 noundef 1, i32 noundef 0) #9
  %tmp1_dma = getelementptr inbounds %struct.rsa_edesc, ptr %edesc, i32 0, i32 8, i32 0, i32 8
  %16 = ptrtoint ptr %tmp1_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tmp1_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %17, i32 noundef %3, i32 noundef 0, i32 noundef 0) #9
  %tmp2_dma = getelementptr inbounds %struct.rsa_edesc, ptr %edesc, i32 0, i32 8, i32 0, i32 9
  %18 = ptrtoint ptr %tmp2_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tmp2_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %19, i32 noundef %5, i32 noundef 0, i32 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_strstatus(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_akcipher_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rsa_priv_f3_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsa_priv_f_done(ptr noundef %dev, ptr nocapture noundef readnone %desc, i32 noundef %err, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @caam_strstatus(ptr noundef %dev, i32 noundef %err, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ecode.0 = phi i32 [ %call5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %edesc6 = getelementptr inbounds %struct.akcipher_request, ptr %context, i32 1, i32 5, i32 8
  %4 = ptrtoint ptr %edesc6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edesc6, align 4
  %bklog = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bklog to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bklog, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  %priv_form = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 56
  %8 = ptrtoint ptr %priv_form to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %priv_form, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %9, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb9
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tfm.i, align 16
  %n_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 8, i32 0, i32 3
  %13 = ptrtoint ptr %n_dma.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_dma.i, align 4
  %n_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %12, i32 1, i32 4, i32 36
  %15 = ptrtoint ptr %n_sz.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %14, i32 noundef %16, i32 noundef 1, i32 noundef 0) #9
  %d_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 8, i32 0, i32 4
  %17 = ptrtoint ptr %d_dma.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %d_dma.i, align 4
  %d_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %12, i32 1, i32 4, i32 44
  %19 = ptrtoint ptr %d_sz.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %d_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %18, i32 noundef %20, i32 noundef 1, i32 noundef 0) #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tfm.i, align 16
  %p_sz4.i = getelementptr inbounds %struct.crypto_tfm, ptr %22, i32 1, i32 4, i32 48
  %23 = ptrtoint ptr %p_sz4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %p_sz4.i, align 4
  %q_sz5.i = getelementptr inbounds %struct.crypto_tfm, ptr %22, i32 1, i32 4, i32 52
  %25 = ptrtoint ptr %q_sz5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %q_sz5.i, align 4
  %d_dma.i33 = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 8, i32 0, i32 3
  %27 = ptrtoint ptr %d_dma.i33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %d_dma.i33, align 4
  %d_sz.i34 = getelementptr inbounds %struct.crypto_tfm, ptr %22, i32 1, i32 4, i32 44
  %29 = ptrtoint ptr %d_sz.i34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %d_sz.i34, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %28, i32 noundef %30, i32 noundef 1, i32 noundef 0) #9
  %p_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 8, i32 0, i32 4
  %31 = ptrtoint ptr %p_dma.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %p_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %32, i32 noundef %24, i32 noundef 1, i32 noundef 0) #9
  %q_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 8, i32 0, i32 5
  %33 = ptrtoint ptr %q_dma.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %q_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %34, i32 noundef %26, i32 noundef 1, i32 noundef 0) #9
  %tmp1_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 8, i32 0, i32 6
  %35 = ptrtoint ptr %tmp1_dma.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tmp1_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %36, i32 noundef %24, i32 noundef 0, i32 noundef 0) #9
  %tmp2_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 8, i32 0, i32 7
  %37 = ptrtoint ptr %tmp2_dma.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tmp2_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %38, i32 noundef %26, i32 noundef 0, i32 noundef 0) #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rsa_priv_f3_unmap(ptr noundef %dev, ptr noundef %5, ptr noundef %context)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb8, %sw.bb, %if.end.sw.epilog_crit_edge
  %dst.i = getelementptr inbounds %struct.akcipher_request, ptr %context, i32 0, i32 2
  %39 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dst.i, align 4
  %dst_nents.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 1
  %41 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dst_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %40, i32 noundef %42, i32 noundef 2, i32 noundef 0) #9
  %fixup_src.i = getelementptr inbounds %struct.akcipher_request, ptr %context, i32 1, i32 5
  %43 = ptrtoint ptr %fixup_src.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fixup_src.i, align 4
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %5, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %44, i32 noundef %46, i32 noundef 1, i32 noundef 0) #9
  %sec4_sg_bytes.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 4
  %47 = ptrtoint ptr %sec4_sg_bytes.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sec4_sg_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %sw.epilog.rsa_io_unmap.exit_crit_edge, label %if.then.i

sw.epilog.rsa_io_unmap.exit_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsa_io_unmap.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %sec4_sg_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 6
  %49 = ptrtoint ptr %sec4_sg_dma.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sec4_sg_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %50, i32 noundef %48, i32 noundef 1, i32 noundef 0) #9
  br label %rsa_io_unmap.exit

rsa_io_unmap.exit:                                ; preds = %if.then.i, %sw.epilog.rsa_io_unmap.exit_crit_edge
  tail call void @kfree(ptr noundef %5) #9
  br i1 %tobool7.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %rsa_io_unmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %context, i32 0, i32 1
  %51 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %complete.i, align 8
  tail call void %52(ptr noundef %context, i32 noundef %ecode.0) #9
  br label %if.end12

if.else:                                          ; preds = %rsa_io_unmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %engine = getelementptr inbounds %struct.caam_drv_private_jr, ptr %3, i32 0, i32 18
  %53 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %engine, align 4
  tail call void @crypto_finalize_akcipher_request(ptr noundef %54, ptr noundef %context, i32 noundef %ecode.0) #9
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rsa_priv_f2_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rsa_priv_f1_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @caam_rsa_free_key(ptr nocapture noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d = getelementptr inbounds %struct.caam_rsa_key, ptr %key, i32 0, i32 2
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 4
  tail call void @kfree_sensitive(ptr noundef %1) #9
  %p = getelementptr inbounds %struct.caam_rsa_key, ptr %key, i32 0, i32 3
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  tail call void @kfree_sensitive(ptr noundef %3) #9
  %q = getelementptr inbounds %struct.caam_rsa_key, ptr %key, i32 0, i32 4
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q, align 4
  tail call void @kfree_sensitive(ptr noundef %5) #9
  %dp = getelementptr inbounds %struct.caam_rsa_key, ptr %key, i32 0, i32 5
  %6 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dp, align 4
  tail call void @kfree_sensitive(ptr noundef %7) #9
  %dq = getelementptr inbounds %struct.caam_rsa_key, ptr %key, i32 0, i32 6
  %8 = ptrtoint ptr %dq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dq, align 4
  tail call void @kfree_sensitive(ptr noundef %9) #9
  %qinv = getelementptr inbounds %struct.caam_rsa_key, ptr %key, i32 0, i32 7
  %10 = ptrtoint ptr %qinv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qinv, align 4
  tail call void @kfree_sensitive(ptr noundef %11) #9
  %tmp1 = getelementptr inbounds %struct.caam_rsa_key, ptr %key, i32 0, i32 8
  %12 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tmp1, align 4
  tail call void @kfree_sensitive(ptr noundef %13) #9
  %tmp2 = getelementptr inbounds %struct.caam_rsa_key, ptr %key, i32 0, i32 9
  %14 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tmp2, align 4
  tail call void @kfree_sensitive(ptr noundef %15) #9
  %e = getelementptr inbounds %struct.caam_rsa_key, ptr %key, i32 0, i32 1
  %16 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %e, align 4
  tail call void @kfree(ptr noundef %17) #9
  %18 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %key, align 4
  tail call void @kfree(ptr noundef %19) #9
  %20 = call ptr @memset(ptr %key, i32 0, i32 64)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsa_parse_pub_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsa_parse_priv_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @caam_jr_alloc() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_jr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @akcipher_do_one_req(ptr nocapture noundef readonly %engine, ptr noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %dev = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 60
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %edesc = getelementptr inbounds %struct.akcipher_request, ptr %areq, i32 1, i32 5, i32 8
  %4 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edesc, align 4
  %hw_desc = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 9
  %bklog = getelementptr inbounds %struct.rsa_edesc, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bklog to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %bklog, align 4
  %akcipher_op_done = getelementptr inbounds %struct.akcipher_request, ptr %areq, i32 1, i32 5, i32 12
  %7 = ptrtoint ptr %akcipher_op_done to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %akcipher_op_done, align 4
  %call4 = tail call i32 @caam_jr_enqueue(ptr noundef %3, ptr noundef %hw_desc, ptr noundef %8, ptr noundef %areq) #9
  %9 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call4, label %entry.if.then6_crit_edge [
    i32 -28, label %land.lhs.true
    i32 -115, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

land.lhs.true:                                    ; preds = %entry
  %retry_support = getelementptr inbounds %struct.crypto_engine, ptr %engine, i32 0, i32 4
  %10 = ptrtoint ptr %retry_support to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %retry_support, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %land.lhs.true.if.then6_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.then6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %land.lhs.true.if.then6_crit_edge, %entry.if.then6_crit_edge
  %12 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edesc, align 4
  %14 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tfm.i, align 16
  %n_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %13, i32 0, i32 8, i32 0, i32 3
  %16 = ptrtoint ptr %n_dma.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_dma.i, align 4
  %n_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %15, i32 1, i32 4, i32 36
  %18 = ptrtoint ptr %n_sz.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %17, i32 noundef %19, i32 noundef 1, i32 noundef 0) #9
  %e_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %13, i32 0, i32 8, i32 0, i32 4
  %20 = ptrtoint ptr %e_dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %e_dma.i, align 4
  %e_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %15, i32 1, i32 4, i32 40
  %22 = ptrtoint ptr %e_sz.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %e_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %21, i32 noundef %23, i32 noundef 1, i32 noundef 0) #9
  %24 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %edesc, align 4
  %dst.i = getelementptr inbounds %struct.akcipher_request, ptr %areq, i32 0, i32 2
  %26 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dst.i, align 4
  %dst_nents.i = getelementptr inbounds %struct.rsa_edesc, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dst_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %27, i32 noundef %29, i32 noundef 2, i32 noundef 0) #9
  %fixup_src.i = getelementptr inbounds %struct.akcipher_request, ptr %areq, i32 1, i32 5
  %30 = ptrtoint ptr %fixup_src.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fixup_src.i, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %25, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %31, i32 noundef %33, i32 noundef 1, i32 noundef 0) #9
  %sec4_sg_bytes.i = getelementptr inbounds %struct.rsa_edesc, ptr %25, i32 0, i32 4
  %34 = ptrtoint ptr %sec4_sg_bytes.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sec4_sg_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %if.then6.rsa_io_unmap.exit_crit_edge, label %if.then.i

if.then6.rsa_io_unmap.exit_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsa_io_unmap.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %sec4_sg_dma.i = getelementptr inbounds %struct.rsa_edesc, ptr %25, i32 0, i32 6
  %36 = ptrtoint ptr %sec4_sg_dma.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sec4_sg_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %37, i32 noundef %35, i32 noundef 1, i32 noundef 0) #9
  br label %rsa_io_unmap.exit

rsa_io_unmap.exit:                                ; preds = %if.then.i, %if.then6.rsa_io_unmap.exit_crit_edge
  %38 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %edesc, align 4
  tail call void @kfree(ptr noundef %39) #9
  br label %cleanup

cleanup:                                          ; preds = %rsa_io_unmap.exit, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %land.lhs.true.cleanup_crit_edge ], [ %call4, %rsa_io_unmap.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !115, !116, !118, !119, !121, !122, !123, !124, !126, !127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/caam/caampkc.c", i32 1195, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @caam_pkc_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @caam_pkc_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/caam/caampkc.c", i32 1200, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @caam_pkc_init._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @caam_pkc_init._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @zero_buffer, !14, !"zero_buffer", i1 false, i1 false}
!14 = !{!"../drivers/crypto/caam/caampkc.c", i32 30, i32 12}
!15 = distinct !{null, !16, !"init_done", i1 false, i1 false}
!16 = !{!"../drivers/crypto/caam/caampkc.c", i32 36, i32 13}
!17 = !{ptr @caam_rsa, !18, !"caam_rsa", i1 false, i1 false}
!18 = !{!"../drivers/crypto/caam/caampkc.c", i32 1135, i32 33}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/crypto/caam/caampkc.c", i32 721, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @caam_rsa_enc._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @caam_rsa_enc._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/crypto/caam/caampkc.c", i32 289, i32 3}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rsa_edesc_alloc._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @rsa_edesc_alloc._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/caam/caampkc.c", i32 295, i32 3}
!32 = !{ptr @rsa_edesc_alloc._entry.14, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rsa_edesc_alloc._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/caam/caampkc.c", i32 346, i32 3}
!36 = !{ptr @rsa_edesc_alloc._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rsa_edesc_alloc._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/crypto/caam/caampkc.c", i32 352, i32 2}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rsa_edesc_alloc.__UNIQUE_ID_ddebug516, !39, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!42 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/crypto/caam/sg_sw_sec4.h", i32 39, i32 2}
!45 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @dma_to_sec4_sg_one.__UNIQUE_ID_ddebug513, !44, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/caam/caampkc.c", i32 410, i32 3}
!54 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @set_rsa_pub_pdb._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @set_rsa_pub_pdb._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/crypto/caam/caampkc.c", i32 416, i32 3}
!59 = !{ptr @set_rsa_pub_pdb._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @set_rsa_pub_pdb._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/crypto/caam/caampkc.c", i32 845, i32 3}
!63 = !{ptr @caam_rsa_dec._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @caam_rsa_dec._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/crypto/caam/caampkc.c", i32 581, i32 3}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @set_rsa_priv_f3_pdb._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @set_rsa_priv_f3_pdb._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/crypto/caam/caampkc.c", i32 587, i32 3}
!72 = !{ptr @set_rsa_priv_f3_pdb._entry.36, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @set_rsa_priv_f3_pdb._entry_ptr.38, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/crypto/caam/caampkc.c", i32 593, i32 3}
!76 = !{ptr @set_rsa_priv_f3_pdb._entry.39, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @set_rsa_priv_f3_pdb._entry_ptr.41, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/crypto/caam/caampkc.c", i32 599, i32 3}
!80 = !{ptr @set_rsa_priv_f3_pdb._entry.42, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @set_rsa_priv_f3_pdb._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/crypto/caam/caampkc.c", i32 605, i32 3}
!84 = !{ptr @set_rsa_priv_f3_pdb._entry.45, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @set_rsa_priv_f3_pdb._entry_ptr.47, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/crypto/caam/caampkc.c", i32 611, i32 3}
!88 = !{ptr @set_rsa_priv_f3_pdb._entry.48, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @set_rsa_priv_f3_pdb._entry_ptr.50, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/crypto/caam/caampkc.c", i32 617, i32 3}
!92 = !{ptr @set_rsa_priv_f3_pdb._entry.51, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @set_rsa_priv_f3_pdb._entry_ptr.53, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/crypto/caam/caampkc.c", i32 504, i32 3}
!96 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @set_rsa_priv_f2_pdb._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @set_rsa_priv_f2_pdb._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @set_rsa_priv_f2_pdb._entry.56, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/crypto/caam/caampkc.c", i32 510, i32 3}
!101 = !{ptr @set_rsa_priv_f2_pdb._entry_ptr.57, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @set_rsa_priv_f2_pdb._entry.58, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/crypto/caam/caampkc.c", i32 516, i32 3}
!104 = !{ptr @set_rsa_priv_f2_pdb._entry_ptr.59, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @set_rsa_priv_f2_pdb._entry.60, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/crypto/caam/caampkc.c", i32 522, i32 3}
!107 = !{ptr @set_rsa_priv_f2_pdb._entry_ptr.61, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @set_rsa_priv_f2_pdb._entry.62, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/crypto/caam/caampkc.c", i32 528, i32 3}
!110 = !{ptr @set_rsa_priv_f2_pdb._entry_ptr.63, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/crypto/caam/caampkc.c", i32 455, i32 3}
!113 = !{ptr @.str.65, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @set_rsa_priv_f1_pdb._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @set_rsa_priv_f1_pdb._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @set_rsa_priv_f1_pdb._entry.66, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/crypto/caam/caampkc.c", i32 461, i32 3}
!118 = !{ptr @set_rsa_priv_f1_pdb._entry_ptr.67, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/crypto/caam/caampkc.c", i32 1105, i32 3}
!121 = !{ptr @.str.69, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @caam_rsa_init_tfm._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @caam_rsa_init_tfm._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.71, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/crypto/caam/caampkc.c", i32 1113, i32 3}
!126 = !{ptr @caam_rsa_init_tfm._entry.70, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @caam_rsa_init_tfm._entry_ptr.72, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i8 0, i8 2}
!138 = !{i64 2152461512}
!139 = !{i64 2158395766}
!140 = !{!"branch_weights", i32 1, i32 2000}
!141 = !{!"branch_weights", i32 2000, i32 1}
!142 = !{i64 2148723907, i64 2148723912, i64 2148723925, i64 2148723969, i64 2148724003, i64 2148724024}
