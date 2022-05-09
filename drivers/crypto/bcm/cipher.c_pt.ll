; ModuleID = '/llk/IR_all_yes/drivers/crypto/bcm/cipher.c_pt.bc'
source_filename = "../drivers/crypto/bcm/cipher.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcm_device_private = type { ptr, %struct.spu_hw, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, [4 x %struct.atomic_t], [5 x [8 x %struct.atomic_t]], [12 x %struct.atomic_t], [12 x %struct.atomic_t], [3 x %struct.atomic_t], [4 x %struct.atomic_t], %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.mbox_client, ptr }
%struct.spu_hw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [92 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.123, ptr, ptr, ptr, ptr, %union.anon.124, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.123 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.124 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.cipher_op = type { i32, i32 }
%struct.auth_op = type { i32, i32 }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.iproc_alg_s = type { i32, [124 x i8], %union.anon.125, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }
%union.anon.125 = type { %struct.ahash_alg }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.spu_type_subtype = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.brcm_message = type { i32, %union.anon.119, ptr, i32 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { ptr, i32, i32 }
%struct.iproc_reqctx_s = type { ptr, ptr, i8, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32, i32, %struct.brcm_message, i8, i8, ptr, i32, [128 x i8], i32, i32, [64 x i8], i8, ptr, ptr, ptr, i32, %struct.spu_msg_buf }
%struct.spu_msg_buf = type { [568 x i8], [32 x i8], [64 x i8], [148 x i8], [4 x i8], [568 x i8], [4 x i8], [4 x i8], %union.anon.126 }
%union.anon.126 = type { %struct.anon.128 }
%struct.anon.128 = type { [16 x i8], [148 x i8], [528 x i8] }
%struct.iproc_ctx_s = type { [260 x i8], i32, [260 x i8], i32, [4 x i8], i32, i32, [16 x i8], i32, ptr, i8, %struct.cipher_op, i32, %struct.auth_op, i8, i32, ptr, [128 x i8], [128 x i8], [568 x i8], i16, i16, ptr, i8 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.spu_cipher_parms = type { i32, i32, i32, ptr, i16, ptr, i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.spu_request_opts = type { i8, i8, i8, i8, i8, i8 }
%struct.spu_hash_parms = type { i32, i32, i32, i8, ptr, i16, i16, i32 }
%struct.spu_aead_parms = type { i32, i16, i8, i8, i8, i32, i32 }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.des_ctx = type { [32 x i32] }
%struct.crypto_authenc_keys = type { ptr, ptr, i32, i32 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.spu_hash_export_s = type { i32, i32, [128 x i8], i32, [64 x i8], i8 }

@__param_str_flow_debug_logging = internal constant [34 x i8] c"bcm_crypto_spu.flow_debug_logging\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@flow_debug_logging = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_flow_debug_logging = internal constant %struct.kernel_param { ptr @__param_str_flow_debug_logging, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @flow_debug_logging } }, section "__param", align 4
@__UNIQUE_ID_flow_debug_loggingtype339 = internal constant [47 x i8] c"bcm_crypto_spu.parmtype=flow_debug_logging:int\00", section ".modinfo", align 1
@__UNIQUE_ID_flow_debug_logging340 = internal constant [65 x i8] c"bcm_crypto_spu.parm=flow_debug_logging:Enable Flow Debug Logging\00", section ".modinfo", align 1
@__param_str_packet_debug_logging = internal constant [36 x i8] c"bcm_crypto_spu.packet_debug_logging\00", align 1
@packet_debug_logging = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_packet_debug_logging = internal constant %struct.kernel_param { ptr @__param_str_packet_debug_logging, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @packet_debug_logging } }, section "__param", align 4
@__UNIQUE_ID_packet_debug_loggingtype341 = internal constant [49 x i8] c"bcm_crypto_spu.parmtype=packet_debug_logging:int\00", section ".modinfo", align 1
@__UNIQUE_ID_packet_debug_logging342 = internal constant [69 x i8] c"bcm_crypto_spu.parm=packet_debug_logging:Enable Packet Debug Logging\00", section ".modinfo", align 1
@__param_str_debug_logging_sleep = internal constant [35 x i8] c"bcm_crypto_spu.debug_logging_sleep\00", align 1
@debug_logging_sleep = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_logging_sleep = internal constant %struct.kernel_param { ptr @__param_str_debug_logging_sleep, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @debug_logging_sleep } }, section "__param", align 4
@__UNIQUE_ID_debug_logging_sleeptype343 = internal constant [48 x i8] c"bcm_crypto_spu.parmtype=debug_logging_sleep:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_logging_sleep344 = internal constant [67 x i8] c"bcm_crypto_spu.parm=debug_logging_sleep:Packet Debug Logging Sleep\00", section ".modinfo", align 1
@__param_str_cipher_pri = internal constant [26 x i8] c"bcm_crypto_spu.cipher_pri\00", align 1
@cipher_pri = internal global { i32, [28 x i8] } { i32 150, [28 x i8] zeroinitializer }, align 32
@__param_cipher_pri = internal constant %struct.kernel_param { ptr @__param_str_cipher_pri, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @cipher_pri } }, section "__param", align 4
@__UNIQUE_ID_cipher_pritype345 = internal constant [39 x i8] c"bcm_crypto_spu.parmtype=cipher_pri:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cipher_pri346 = internal constant [57 x i8] c"bcm_crypto_spu.parm=cipher_pri:Priority for cipher algos\00", section ".modinfo", align 1
@__param_str_hash_pri = internal constant [24 x i8] c"bcm_crypto_spu.hash_pri\00", align 1
@hash_pri = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_hash_pri = internal constant %struct.kernel_param { ptr @__param_str_hash_pri, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @hash_pri } }, section "__param", align 4
@__UNIQUE_ID_hash_pritype347 = internal constant [37 x i8] c"bcm_crypto_spu.parmtype=hash_pri:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hash_pri348 = internal constant [53 x i8] c"bcm_crypto_spu.parm=hash_pri:Priority for hash algos\00", section ".modinfo", align 1
@__param_str_aead_pri = internal constant [24 x i8] c"bcm_crypto_spu.aead_pri\00", align 1
@aead_pri = internal global { i32, [28 x i8] } { i32 150, [28 x i8] zeroinitializer }, align 32
@__param_aead_pri = internal constant %struct.kernel_param { ptr @__param_str_aead_pri, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @aead_pri } }, section "__param", align 4
@__UNIQUE_ID_aead_pritype349 = internal constant [37 x i8] c"bcm_crypto_spu.parmtype=aead_pri:int\00", section ".modinfo", align 1
@__UNIQUE_ID_aead_pri350 = internal constant [53 x i8] c"bcm_crypto_spu.parm=aead_pri:Priority for AEAD algos\00", section ".modinfo", align 1
@__initcall__kmod_bcm_crypto_spu__360_4797_bcm_spu_pdriver_init6 = internal global ptr @bcm_spu_pdriver_init, section ".initcall6.init", align 4
@bcm_spu_pdriver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm_spu_probe, ptr @bcm_spu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_spu_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm_spu_pdriver_exit = internal global ptr @bcm_spu_pdriver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author361 = internal constant [55 x i8] c"bcm_crypto_spu.author=Rob Rice <rob.rice@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description362 = internal constant [68 x i8] c"bcm_crypto_spu.description=Broadcom symmetric crypto offload driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file363 = internal constant [54 x i8] c"bcm_crypto_spu.file=drivers/crypto/bcm/bcm_crypto_spu\00", section ".modinfo", align 1
@__UNIQUE_ID_license364 = internal constant [30 x i8] c"bcm_crypto_spu.license=GPL v2\00", section ".modinfo", align 1
@iproc_priv = dso_local global { %struct.bcm_device_private, [152 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm-spu-crypto\00", [16 x i8] zeroinitializer }, align 32
@bcm_spu_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spum-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spum_ns2_types }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spum-nsp-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spum_nsp_types }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spu2-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spu2_types }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spu2-v2-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spu2_v2_types }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@bcm_spu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 4741, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s failed with error %d.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm_spu_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/crypto/bcm/cipher.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_spu_probe._entry_ptr = internal global ptr @bcm_spu_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mboxes\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#mbox-cells\00", [20 x i8] zeroinitializer }, align 32
@spu_dt_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 4677, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to match device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spu_dt_read\00", [20 x i8] zeroinitializer }, align 32
@spu_dt_read._entry_ptr = internal global ptr @spu_dt_read._entry, section ".printk_index", align 4
@spu_dt_read._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 4691, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to map registers: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@spu_dt_read._entry_ptr.12 = internal global ptr @spu_dt_read._entry.10, section ".printk_index", align 4
@spu_dt_read.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.9, ptr @.str.3, ptr @.str.14, i8 4, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm_crypto_spu\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Device has %d SPUs\00", [45 x i8] zeroinitializer }, align 32
@spu_mb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 4402, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Mbox channel %d request failed with err %d\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spu_mb_init\00", [20 x i8] zeroinitializer }, align 32
@spu_mb_init._entry_ptr = internal global ptr @spu_mb_init._entry, section ".printk_index", align 4
@spu_rx_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s(): no request context\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spu_rx_callback\00", [16 x i8] zeroinitializer }, align 32
@spu_rx_callback._entry_ptr = internal global ptr @spu_rx_callback._entry, section ".printk_index", align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha224\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha384\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha512\00", [25 x i8] zeroinitializer }, align 32
@spu_hmac_outer_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s() Error : unknown hmac type\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spu_hmac_outer_hash\00", [44 x i8] zeroinitializer }, align 32
@spu_hmac_outer_hash._entry_ptr = internal global ptr @spu_hmac_outer_hash._entry, section ".printk_index", align 4
@spu_skcipher_rx_sg_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s(): failed to copy dst sg to mbox msg. chunksize %u, datalen %u\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spu_skcipher_rx_sg_create\00", [38 x i8] zeroinitializer }, align 32
@spu_skcipher_rx_sg_create._entry_ptr = internal global ptr @spu_skcipher_rx_sg_create._entry, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@spu_skcipher_tx_sg_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s(): failed to copy src sg to mbox msg\00", [54 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spu_skcipher_tx_sg_create\00", [38 x i8] zeroinitializer }, align 32
@spu_skcipher_tx_sg_create._entry_ptr = internal global ptr @spu_skcipher_tx_sg_create._entry, section ".printk_index", align 4
@mailbox_send_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"message error %d\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mailbox_send_message\00", [43 x i8] zeroinitializer }, align 32
@mailbox_send_message._entry_ptr = internal global ptr @mailbox_send_message._entry, section ".printk_index", align 4
@__func__.handle_ahash_req = private unnamed_addr constant [17 x i8] c"handle_ahash_req\00", align 1
@BCMHEADER = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"`\00\00\00\00\00\00(", [24 x i8] zeroinitializer }, align 32
@handle_ahash_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @__func__.handle_ahash_req, ptr @.str.3, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Failed to create SPU request header\0A\00", [57 x i8] zeroinitializer }, align 32
@handle_ahash_req._entry_ptr = internal global ptr @handle_ahash_req._entry, section ".printk_index", align 4
@spu_ahash_tx_sg_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.56, ptr @.str.3, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spu_ahash_tx_sg_create\00", [41 x i8] zeroinitializer }, align 32
@spu_ahash_tx_sg_create._entry_ptr = internal global ptr @spu_ahash_tx_sg_create._entry, section ".printk_index", align 4
@spu_aead_rx_sg_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 1109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013%s(): failed to copy dst sg to mbox msg. expected len %u, datalen %u\00", [57 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spu_aead_rx_sg_create\00", [42 x i8] zeroinitializer }, align 32
@spu_aead_rx_sg_create._entry_ptr = internal global ptr @spu_aead_rx_sg_create._entry, section ".printk_index", align 4
@spu_aead_tx_sg_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s(): failed to copy assoc sg to mbox msg\00", [52 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spu_aead_tx_sg_create\00", [42 x i8] zeroinitializer }, align 32
@spu_aead_tx_sg_create._entry_ptr = internal global ptr @spu_aead_tx_sg_create._entry, section ".printk_index", align 4
@spu_aead_tx_sg_create._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.65, ptr @.str.3, i32 1221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@spu_aead_tx_sg_create._entry_ptr.67 = internal global ptr @spu_aead_tx_sg_create._entry.66, section ".printk_index", align 4
@spu_functions_register.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.69, ptr @.str.3, ptr @.str.70, i8 4, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spu_functions_register\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Registering SPUM functions\00", [37 x i8] zeroinitializer }, align 32
@spu_functions_register.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.69, ptr @.str.3, ptr @.str.71, i8 4, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Registering SPU2 functions\00", [37 x i8] zeroinitializer }, align 32
@spu_algs_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 4587, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iproc-crypto: unknown alg type: %d\00", [61 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spu_algs_register\00", [46 x i8] zeroinitializer }, align 32
@spu_algs_register._entry_ptr = internal global ptr @spu_algs_register._entry, section ".printk_index", align 4
@spu_algs_register._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.3, i32 4593, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"alg registration failed with error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@spu_algs_register._entry_ptr.76 = internal global ptr @spu_algs_register._entry.74, section ".printk_index", align 4
@driver_algs = internal global <{ { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] }, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s }> <{ { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_gcm_ccm_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 12, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 256, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"gcm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gcm-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 4, i32 6 }, %struct.auth_op { i32 5, i32 6 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_gcm_ccm_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 256, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ccm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ccm-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 4, i32 5 }, %struct.auth_op { i32 5, i32 5 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_gcm_esp_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 256, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc4106(gcm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gcm-aes-esp-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 4, i32 6 }, %struct.auth_op { i32 5, i32 6 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_ccm_esp_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 256, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc4309(ccm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ccm-aes-esp-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 4, i32 5 }, %struct.auth_op { i32 5, i32 5 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @rfc4543_gcm_esp_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 256, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc4543(gcm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gmac-aes-esp-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 4, i32 6 }, %struct.auth_op { i32 5, i32 6 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(md5),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-md5-cbc-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 4, i32 1 }, %struct.auth_op { i32 1, i32 2 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-cbc-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 4, i32 1 }, %struct.auth_op { i32 2, i32 2 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-cbc-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 4, i32 1 }, %struct.auth_op { i32 4, i32 2 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(md5),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-md5-cbc-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 2, i32 1 }, %struct.auth_op { i32 1, i32 2 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-cbc-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 2, i32 1 }, %struct.auth_op { i32 2, i32 2 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha224-cbc-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 2, i32 1 }, %struct.auth_op { i32 3, i32 2 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-cbc-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 2, i32 1 }, %struct.auth_op { i32 4, i32 2 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha384-cbc-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 2, i32 1 }, %struct.auth_op { i32 6, i32 2 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha512-cbc-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 2, i32 1 }, %struct.auth_op { i32 7, i32 2 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(md5),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-md5-cbc-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 3, i32 1 }, %struct.auth_op { i32 1, i32 2 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-cbc-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 3, i32 1 }, %struct.auth_op { i32 2, i32 2 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha224-cbc-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 3, i32 1 }, %struct.auth_op { i32 3, i32 2 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-cbc-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 3, i32 1 }, %struct.auth_op { i32 4, i32 2 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha384-cbc-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 3, i32 1 }, %struct.auth_op { i32 6, i32 2 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha512-cbc-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 3, i32 1 }, %struct.auth_op { i32 7, i32 2 }, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 5, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ofb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ofb-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 2, i32 2 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 5, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 2, i32 1 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 5, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 2, i32 0 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 5, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ofb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ofb-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 3, i32 2 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 5, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 3, i32 1 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 5, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 3, i32 0 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 5, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ofb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ofb-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 4, i32 2 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 5, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 4, i32 1 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 5, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 4, i32 0 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 5, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 4, i32 4 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [110 x i8] undef }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [110 x i8] } { i32 5, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 32, i32 64, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"xts(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xts-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, %struct.cipher_op { i32 4, i32 7 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"md5-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 1, i32 0 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(md5)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-md5-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 1, i32 2 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 2, i32 0 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha1-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 2, i32 2 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha224-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 3, i32 0 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha224)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha224-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 3, i32 2 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 4, i32 0 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha256-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 4, i32 2 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha384-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 6, i32 0 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha384)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha384-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 6, i32 2 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha512-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 7, i32 0 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha512)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha512-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 7, i32 2 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 144, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha3-224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha3-224-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 8, i32 0 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 144, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha3-224)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha3-224-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 8, i32 2 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 136, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha3-256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha3-256-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 9, i32 0 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 136, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha3-256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha3-256-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 9, i32 2 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 144, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha3-384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha3-384-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 10, i32 0 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 104, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha3-384)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha3-384-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 10, i32 2 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 72, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha3-512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha3-512-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 11, i32 0 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 72, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha3-512)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha3-512-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 11, i32 2 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"xcbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xcbc-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 5, i32 0 }, i8 0, i8 0, [110 x i8] undef }, %struct.iproc_alg_s { i32 15, [124 x i8] undef, %union.anon.125 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cmac(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cmac-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.123 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.124 zeroinitializer, [120 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 5, i32 1 }, i8 0, i8 0, [110 x i8] undef } }>, align 128
@__func__.aead_authenc_setkey = private unnamed_addr constant [20 x i8] c"aead_authenc_setkey\00", align 1
@aead_authenc_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @__func__.aead_authenc_setkey, ptr @.str.3, i32 2814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s() Error: Unknown cipher alg\0A\00", [62 x i8] zeroinitializer }, align 32
@aead_authenc_setkey._entry_ptr = internal global ptr @aead_authenc_setkey._entry, section ".printk_index", align 4
@spu_register_skcipher.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.88, ptr @.str.3, ptr @.str.89, i8 4, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spu_register_skcipher\00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  registered skcipher %s\0A\00", [38 x i8] zeroinitializer }, align 32
@skcipher_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 1842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s() Error: unknown cipher alg\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"skcipher_setkey\00", [16 x i8] zeroinitializer }, align 32
@skcipher_setkey._entry_ptr = internal global ptr @skcipher_setkey._entry, section ".printk_index", align 4
@spu_register_ahash.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.98, ptr @.str.3, ptr @.str.99, i8 4, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spu_register_ahash\00", [45 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  registered ahash %s\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.ahash_setkey = private unnamed_addr constant [13 x i8] c"ahash_setkey\00", align 1
@ahash_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @__func__.ahash_setkey, ptr @.str.3, i32 2273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s() Error: Invalid key length\0A\00", [62 x i8] zeroinitializer }, align 32
@ahash_setkey._entry_ptr = internal global ptr @ahash_setkey._entry, section ".printk_index", align 4
@ahash_setkey._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @__func__.ahash_setkey, ptr @.str.3, i32 2277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s() Error: unknown hash alg\0A\00", [32 x i8] zeroinitializer }, align 32
@ahash_setkey._entry_ptr.113 = internal global ptr @ahash_setkey._entry.111, section ".printk_index", align 4
@__func__.ahash_hmac_setkey = private unnamed_addr constant [18 x i8] c"ahash_hmac_setkey\00", align 1
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3-224\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3-256\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3-384\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3-512\00", [23 x i8] zeroinitializer }, align 32
@ahash_hmac_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @__func__.ahash_hmac_setkey, ptr @.str.3, i32 2373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ahash_hmac_setkey._entry_ptr = internal global ptr @ahash_hmac_setkey._entry, section ".printk_index", align 4
@ahash_hmac_setkey._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @__func__.ahash_hmac_setkey, ptr @.str.3, i32 2378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s() Error %d computing shash for %s\0A\00", [56 x i8] zeroinitializer }, align 32
@ahash_hmac_setkey._entry_ptr.121 = internal global ptr @ahash_hmac_setkey._entry.119, section ".printk_index", align 4
@hash_alg_name = external dso_local local_unnamed_addr global [12 x ptr], align 4
@spu_register_aead.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.131, ptr @.str.3, ptr @.str.132, i8 4, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spu_register_aead\00", [46 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  registered aead %s\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.aead_enqueue = private unnamed_addr constant [13 x i8] c"aead_enqueue\00", align 1
@aead_enqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @__func__.aead_enqueue, ptr @.str.3, i32 2647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s() Error: associated data too long. (%u > %u bytes)\0A\00", [39 x i8] zeroinitializer }, align 32
@aead_enqueue._entry_ptr = internal global ptr @aead_enqueue._entry, section ".printk_index", align 4
@aead_enqueue._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @__func__.aead_enqueue, ptr @.str.3, i32 2675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s() Error: Unable to find start of src data\0A\00", [48 x i8] zeroinitializer }, align 32
@aead_enqueue._entry_ptr.141 = internal global ptr @aead_enqueue._entry.139, section ".printk_index", align 4
@aead_enqueue._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @__func__.aead_enqueue, ptr @.str.3, i32 2693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s() Error: Unable to find start of dst data\0A\00", [48 x i8] zeroinitializer }, align 32
@aead_enqueue._entry_ptr.144 = internal global ptr @aead_enqueue._entry.142, section ".printk_index", align 4
@__func__.aead_cra_init = private unnamed_addr constant [14 x i8] c"aead_cra_init\00", align 1
@aead_cra_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @__func__.aead_cra_init, ptr @.str.3, i32 4276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s() Error: failed to allocate fallback for %s\0A\00", [46 x i8] zeroinitializer }, align 32
@aead_cra_init._entry_ptr = internal global ptr @aead_cra_init._entry, section ".printk_index", align 4
@bcm_spu_remove.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.168, ptr @.str.3, ptr @.str.169, i8 4, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm_spu_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  unregistered cipher %s\0A\00", [38 x i8] zeroinitializer }, align 32
@bcm_spu_remove.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.168, ptr @.str.3, ptr @.str.170, i8 4, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"  unregistered hash %s\0A\00", [40 x i8] zeroinitializer }, align 32
@bcm_spu_remove.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.168, ptr @.str.3, ptr @.str.171, i8 4, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"  unregistered aead %s\0A\00", [40 x i8] zeroinitializer }, align 32
@spum_ns2_types = internal global { %struct.spu_type_subtype, [24 x i8] } zeroinitializer, align 32
@spum_nsp_types = internal global { %struct.spu_type_subtype, [24 x i8] } { %struct.spu_type_subtype { i32 0, i32 1 }, [24 x i8] zeroinitializer }, align 32
@spu2_types = internal global { %struct.spu_type_subtype, [24 x i8] } { %struct.spu_type_subtype { i32 1, i32 2 }, [24 x i8] zeroinitializer }, align 32
@spu2_v2_types = internal global { %struct.spu_type_subtype, [24 x i8] } { %struct.spu_type_subtype { i32 1, i32 3 }, [24 x i8] zeroinitializer }, align 32
@switch.table.ahash_hmac_setkey = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.23, ptr @.str.27, ptr @.str.28, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.172 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.173 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.174 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.176 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.177 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.179 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.181 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.182 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.183 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.184 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.185 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.187 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.188 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.189 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.190 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 20]
@___asan_gen_.192 = private unnamed_addr constant [19 x i8] c"flow_debug_logging\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 49, i32 5 }
@___asan_gen_.195 = private unnamed_addr constant [21 x i8] c"packet_debug_logging\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 53, i32 5 }
@___asan_gen_.198 = private unnamed_addr constant [20 x i8] c"debug_logging_sleep\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 57, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant [11 x i8] c"cipher_pri\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 70, i32 12 }
@___asan_gen_.204 = private unnamed_addr constant [9 x i8] c"hash_pri\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 74, i32 12 }
@___asan_gen_.207 = private unnamed_addr constant [9 x i8] c"aead_pri\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 78, i32 12 }
@___asan_gen_.210 = private unnamed_addr constant [16 x i8] c"bcm_spu_pdriver\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4789, i32 31 }
@___asan_gen_.213 = private unnamed_addr constant [11 x i8] c"iproc_priv\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 45, i32 27 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4791, i32 14 }
@___asan_gen_.219 = private unnamed_addr constant [15 x i8] c"bcm_spu_dt_ids\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4641, i32 34 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4741, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4673, i32 49 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4673, i32 59 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4677, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4690, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4697, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4400, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1635, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 907, i32 17 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 911, i32 17 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 915, i32 17 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 919, i32 17 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 923, i32 17 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 927, i32 17 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 931, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 164, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 228, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 273, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant [10 x i8] c"BCMHEADER\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 89, i32 13 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 826, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 609, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1108, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1198, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1220, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4322, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4347, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4585, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4592, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2814, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4479, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1842, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4536, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2273, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2277, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2357, i32 18 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2361, i32 18 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2365, i32 18 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2369, i32 18 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2373, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2377, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4563, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2645, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2674, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 2692, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4275, i32 5 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4764, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4771, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4776, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant [15 x i8] c"spum_ns2_types\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4625, i32 32 }
@___asan_gen_.504 = private unnamed_addr constant [15 x i8] c"spum_nsp_types\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4629, i32 32 }
@___asan_gen_.507 = private unnamed_addr constant [11 x i8] c"spu2_types\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4633, i32 32 }
@___asan_gen_.510 = private unnamed_addr constant [14 x i8] c"spu2_v2_types\00", align 1
@___asan_gen_.511 = private constant [31 x i8] c"../drivers/crypto/bcm/cipher.c\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 4637, i32 32 }
@___asan_gen_.513 = private unnamed_addr constant [31 x i8] c"switch.table.ahash_hmac_setkey\00", align 1
@llvm.compiler.used = appending global [159 x ptr] [ptr @__UNIQUE_ID_aead_pri350, ptr @__UNIQUE_ID_aead_pritype349, ptr @__UNIQUE_ID_author361, ptr @__UNIQUE_ID_cipher_pri346, ptr @__UNIQUE_ID_cipher_pritype345, ptr @__UNIQUE_ID_debug_logging_sleep344, ptr @__UNIQUE_ID_debug_logging_sleeptype343, ptr @__UNIQUE_ID_description362, ptr @__UNIQUE_ID_file363, ptr @__UNIQUE_ID_flow_debug_logging340, ptr @__UNIQUE_ID_flow_debug_loggingtype339, ptr @__UNIQUE_ID_hash_pri348, ptr @__UNIQUE_ID_hash_pritype347, ptr @__UNIQUE_ID_license364, ptr @__UNIQUE_ID_packet_debug_logging342, ptr @__UNIQUE_ID_packet_debug_loggingtype341, ptr @__exitcall_bcm_spu_pdriver_exit, ptr @__initcall__kmod_bcm_crypto_spu__360_4797_bcm_spu_pdriver_init6, ptr @__param_aead_pri, ptr @__param_cipher_pri, ptr @__param_debug_logging_sleep, ptr @__param_flow_debug_logging, ptr @__param_hash_pri, ptr @__param_packet_debug_logging, ptr @aead_authenc_setkey._entry, ptr @aead_authenc_setkey._entry_ptr, ptr @aead_cra_init._entry, ptr @aead_cra_init._entry_ptr, ptr @aead_enqueue._entry, ptr @aead_enqueue._entry.139, ptr @aead_enqueue._entry.142, ptr @aead_enqueue._entry_ptr, ptr @aead_enqueue._entry_ptr.141, ptr @aead_enqueue._entry_ptr.144, ptr @ahash_hmac_setkey._entry, ptr @ahash_hmac_setkey._entry.119, ptr @ahash_hmac_setkey._entry_ptr, ptr @ahash_hmac_setkey._entry_ptr.121, ptr @ahash_setkey._entry, ptr @ahash_setkey._entry.111, ptr @ahash_setkey._entry_ptr, ptr @ahash_setkey._entry_ptr.113, ptr @bcm_spu_pdriver_exit, ptr @bcm_spu_probe._entry, ptr @bcm_spu_probe._entry_ptr, ptr @handle_ahash_req._entry, ptr @handle_ahash_req._entry_ptr, ptr @mailbox_send_message._entry, ptr @mailbox_send_message._entry_ptr, ptr @skcipher_setkey._entry, ptr @skcipher_setkey._entry_ptr, ptr @spu_aead_rx_sg_create._entry, ptr @spu_aead_rx_sg_create._entry_ptr, ptr @spu_aead_tx_sg_create._entry, ptr @spu_aead_tx_sg_create._entry.66, ptr @spu_aead_tx_sg_create._entry_ptr, ptr @spu_aead_tx_sg_create._entry_ptr.67, ptr @spu_ahash_tx_sg_create._entry, ptr @spu_ahash_tx_sg_create._entry_ptr, ptr @spu_algs_register._entry, ptr @spu_algs_register._entry.74, ptr @spu_algs_register._entry_ptr, ptr @spu_algs_register._entry_ptr.76, ptr @spu_dt_read._entry, ptr @spu_dt_read._entry.10, ptr @spu_dt_read._entry_ptr, ptr @spu_dt_read._entry_ptr.12, ptr @spu_hmac_outer_hash._entry, ptr @spu_hmac_outer_hash._entry_ptr, ptr @spu_mb_init._entry, ptr @spu_mb_init._entry_ptr, ptr @spu_rx_callback._entry, ptr @spu_rx_callback._entry_ptr, ptr @spu_skcipher_rx_sg_create._entry, ptr @spu_skcipher_rx_sg_create._entry_ptr, ptr @spu_skcipher_tx_sg_create._entry, ptr @spu_skcipher_tx_sg_create._entry_ptr, ptr @flow_debug_logging, ptr @packet_debug_logging, ptr @debug_logging_sleep, ptr @cipher_pri, ptr @hash_pri, ptr @aead_pri, ptr @bcm_spu_pdriver, ptr @iproc_priv, ptr @.str, ptr @bcm_spu_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @BCMHEADER, ptr @.str.53, ptr @.str.56, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.92, ptr @.str.93, ptr @.str.98, ptr @.str.99, ptr @.str.110, ptr @.str.112, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.131, ptr @.str.132, ptr @.str.138, ptr @.str.140, ptr @.str.143, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @spum_ns2_types, ptr @spum_nsp_types, ptr @spu2_types, ptr @spu2_v2_types, ptr @switch.table.ahash_hmac_setkey], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_debug_logging to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packet_debug_logging to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_logging_sleep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cipher_pri to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_pri to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_pri to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_spu_pdriver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_priv to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_spu_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_spu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_dt_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_dt_read._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_mb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_rx_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_hmac_outer_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_skcipher_rx_sg_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_skcipher_tx_sg_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mailbox_send_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BCMHEADER to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ahash_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_ahash_tx_sg_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_aead_rx_sg_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_aead_tx_sg_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_aead_tx_sg_create._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_algs_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_algs_register._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_authenc_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skcipher_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_setkey._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_hmac_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_hmac_setkey._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_enqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_enqueue._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_enqueue._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_cra_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spum_ns2_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spum_nsp_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu2_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu2_v2_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ahash_hmac_setkey to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_spu_pdriver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_spu_pdriver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm_spu_pdriver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_spu_pdriver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_spu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  store ptr %pdev, ptr @iproc_priv, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @iproc_priv, ptr %driver_data.i.i, align 4
  %call = tail call fastcc i32 @spu_dt_read(ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.failure_crit_edge, label %if.end

entry.failure_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %failure

if.end:                                           ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #9
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %failure.thread, label %devm_kcalloc.exit.i, !prof !493

failure.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  store ptr null, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  br label %for.body.i36.preheader

devm_kcalloc.exit.i:                              ; preds = %if.end
  %4 = extractvalue { i32, i1 } %2, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %4, i32 noundef 3520) #9
  store ptr %call5.i.i.i, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.failure_crit_edge, label %if.end.i

devm_kcalloc.exit.i.failure_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failure

if.end.i:                                         ; preds = %devm_kcalloc.exit.i
  store ptr %dev1, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 19), align 8
  store i8 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 19, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 19, i32 2), align 8
  store i8 1, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 19, i32 3), align 4
  store ptr @spu_rx_callback, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 19, i32 4), align 8
  store ptr null, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 19, i32 6), align 8
  %5 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp47.not.i = icmp eq i32 %5, 0
  br i1 %cmp47.not.i, label %if.end.i.if.end5_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.048.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %call2.i = tail call ptr @mbox_request_channel(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 19), i32 noundef %i.048.i) #9
  %6 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %arrayidx.i = getelementptr ptr, ptr %6, i32 %i.048.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2.i, ptr %arrayidx.i, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %arrayidx3.i = getelementptr ptr, ptr %8, i32 %i.048.i
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3.i, align 4
  %cmp.i.i = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i
  %11 = ptrtoint ptr %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %i.048.i, i32 noundef %11) #12
  %12 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %arrayidx8.i = getelementptr ptr, ptr %12, i32 %i.048.i
  %13 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx8.i, align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1149.not.i = icmp eq i32 %14, 0
  br i1 %cmp1149.not.i, label %if.then5.i.spu_mb_init.exit_crit_edge, label %if.then5.i.for.body12.i_crit_edge

if.then5.i.for.body12.i_crit_edge:                ; preds = %if.then5.i
  br label %for.body12.i

if.then5.i.spu_mb_init.exit_crit_edge:            ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_mb_init.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.048.i, 1
  %15 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end5_crit_edge

for.inc.i.if.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body12.i:                                     ; preds = %for.inc18.i.for.body12.i_crit_edge, %if.then5.i.for.body12.i_crit_edge
  %i.150.i = phi i32 [ %inc19.i, %for.inc18.i.for.body12.i_crit_edge ], [ 0, %if.then5.i.for.body12.i_crit_edge ]
  %16 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %arrayidx13.i = getelementptr ptr, ptr %16, i32 %i.150.i
  %17 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx13.i, align 4
  %tobool14.not.i = icmp eq ptr %18, null
  br i1 %tobool14.not.i, label %for.body12.i.for.inc18.i_crit_edge, label %if.then15.i

for.body12.i.for.inc18.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.i

if.then15.i:                                      ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mbox_free_channel(ptr noundef nonnull %18) #9
  br label %for.inc18.i

for.inc18.i:                                      ; preds = %if.then15.i, %for.body12.i.for.inc18.i_crit_edge
  %inc19.i = add nuw i32 %i.150.i, 1
  %19 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %cmp11.i = icmp ult i32 %inc19.i, %19
  br i1 %cmp11.i, label %for.inc18.i.for.body12.i_crit_edge, label %for.inc18.i.spu_mb_init.exit_crit_edge

for.inc18.i.spu_mb_init.exit_crit_edge:           ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_mb_init.exit

for.inc18.i.for.body12.i_crit_edge:               ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12.i

spu_mb_init.exit:                                 ; preds = %for.inc18.i.spu_mb_init.exit_crit_edge, %if.then5.i.spu_mb_init.exit_crit_edge
  %cmp3 = icmp slt ptr %10, null
  br i1 %cmp3, label %spu_mb_init.exit.failure_crit_edge, label %spu_mb_init.exit.if.end5_crit_edge

spu_mb_init.exit.if.end5_crit_edge:               ; preds = %spu_mb_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

spu_mb_init.exit.failure_crit_edge:               ; preds = %spu_mb_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %failure

if.end5:                                          ; preds = %spu_mb_init.exit.if.end5_crit_edge, %for.inc.i.if.end5_crit_edge, %if.end.i.if.end5_crit_edge
  %20 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end5.if.end12_crit_edge [
    i32 0, label %if.end5.if.end12.sink.split_crit_edge
    i32 1, label %if.then10
  ]

if.end5.if.end12.sink.split_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.then10, %if.end5.if.end12.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.then10 ], [ 8, %if.end5.if.end12.sink.split_crit_edge ]
  store i8 %.sink, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.end5.if.end12_crit_edge
  %22 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 22), align 8
  tail call fastcc void @spu_functions_register(ptr noundef %dev1, i32 noundef %20, i32 noundef %22)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), align 4
  %call.i.i46.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), align 8
  %23 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %call.i.i47.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), i32 noundef 4) #9
  store volatile i32 %23, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), align 8
  %call.i.i48.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8), i32 noundef 8) #9
  tail call void @generic_atomic64_set(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8), i64 noundef 0) #9
  %call.i.i49.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9), i32 noundef 8) #9
  tail call void @generic_atomic64_set(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9), i64 noundef 0) #9
  %call.i.i50.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 0), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 0), align 8
  %call.i.i51.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 0), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 0), align 4
  %call.i.i50.1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 1), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 1), align 4
  %call.i.i51.1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 1), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 1), align 8
  %call.i.i50.2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 2), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 2), align 8
  %call.i.i51.2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 2), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 2), align 4
  %call.i.i50.3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 3), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 3), align 4
  %call.i.i51.3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3), align 8
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.cond5.preheader.i.for.cond5.preheader.i_crit_edge, %if.end12
  %i.161.i = phi i32 [ %inc14.i, %for.cond5.preheader.i.for.cond5.preheader.i_crit_edge ], [ 0, %if.end12 ]
  %arrayidx9.i = getelementptr %struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 %i.161.i, i32 0
  %call.i.i52.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9.i, i32 noundef 4) #9
  %24 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %arrayidx9.i, align 8
  %arrayidx9.1.i = getelementptr %struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 %i.161.i, i32 1
  %call.i.i52.1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9.1.i, i32 noundef 4) #9
  %25 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %arrayidx9.1.i, align 4
  %arrayidx9.2.i = getelementptr %struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 %i.161.i, i32 2
  %call.i.i52.2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9.2.i, i32 noundef 4) #9
  %26 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %arrayidx9.2.i, align 8
  %arrayidx9.3.i = getelementptr %struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 %i.161.i, i32 3
  %call.i.i52.3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9.3.i, i32 noundef 4) #9
  %27 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %arrayidx9.3.i, align 4
  %arrayidx9.4.i = getelementptr %struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 %i.161.i, i32 4
  %call.i.i52.4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9.4.i, i32 noundef 4) #9
  %28 = ptrtoint ptr %arrayidx9.4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %arrayidx9.4.i, align 8
  %arrayidx9.5.i = getelementptr %struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 %i.161.i, i32 5
  %call.i.i52.5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9.5.i, i32 noundef 4) #9
  %29 = ptrtoint ptr %arrayidx9.5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 0, ptr %arrayidx9.5.i, align 4
  %arrayidx9.6.i = getelementptr %struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 %i.161.i, i32 6
  %call.i.i52.6.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9.6.i, i32 noundef 4) #9
  %30 = ptrtoint ptr %arrayidx9.6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %arrayidx9.6.i, align 8
  %arrayidx9.7.i = getelementptr %struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 %i.161.i, i32 7
  %call.i.i52.7.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9.7.i, i32 noundef 4) #9
  %31 = ptrtoint ptr %arrayidx9.7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %arrayidx9.7.i, align 4
  %inc14.i = add nuw nsw i32 %i.161.i, 1
  %exitcond.not.i = icmp eq i32 %inc14.i, 5
  br i1 %exitcond.not.i, label %spu_counters_init.exit, label %for.cond5.preheader.i.for.cond5.preheader.i_crit_edge

for.cond5.preheader.i.for.cond5.preheader.i_crit_edge: ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond5.preheader.i

spu_counters_init.exit:                           ; preds = %for.cond5.preheader.i
  %call.i.i53.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 0), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 0), align 8
  %call.i.i54.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 0), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 0), align 8
  %call.i.i53.1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 1), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 1), align 4
  %call.i.i54.1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 1), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 1), align 4
  %call.i.i53.2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 2), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 2), align 8
  %call.i.i54.2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 2), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 2), align 8
  %call.i.i53.3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 3), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 3), align 4
  %call.i.i54.3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 3), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 3), align 4
  %call.i.i53.4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 4), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 4), align 8
  %call.i.i54.4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 4), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 4), align 8
  %call.i.i53.5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 5), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 5), align 4
  %call.i.i54.5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 5), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 5), align 4
  %call.i.i53.6.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 6), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 6), align 8
  %call.i.i54.6.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 6), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 6), align 8
  %call.i.i53.7.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 7), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 7), align 4
  %call.i.i54.7.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 7), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 7), align 4
  %call.i.i53.8.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 8), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 8), align 8
  %call.i.i54.8.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 8), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 8), align 8
  %call.i.i53.9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 9), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 9), align 4
  %call.i.i54.9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 9), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 9), align 4
  %call.i.i53.10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 10), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 10), align 8
  %call.i.i54.10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 10), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 10), align 8
  %call.i.i53.11.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 11), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 11), align 4
  %call.i.i54.11.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 11), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 11), align 4
  %call.i.i55.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 0), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 0), align 8
  %call.i.i55.1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 1), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 1), align 4
  %call.i.i55.2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2), align 8
  %call.i.i56.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 16), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 16), align 4
  %call.i.i57.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 17), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 17), align 8
  %call.i.i58.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 18), i32 noundef 4) #9
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 18), align 4
  tail call void @spu_setup_debugfs() #9
  %call14 = tail call fastcc i32 @spu_algs_register(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %fail_reg, label %spu_counters_init.exit.cleanup_crit_edge

spu_counters_init.exit.cleanup_crit_edge:         ; preds = %spu_counters_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fail_reg:                                         ; preds = %spu_counters_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @spu_free_debugfs() #9
  br label %failure

failure:                                          ; preds = %fail_reg, %spu_mb_init.exit.failure_crit_edge, %devm_kcalloc.exit.i.failure_crit_edge, %entry.failure_crit_edge
  %err.0.ph = phi i32 [ -12, %devm_kcalloc.exit.i.failure_crit_edge ], [ %call14, %fail_reg ], [ %11, %spu_mb_init.exit.failure_crit_edge ], [ %call, %entry.failure_crit_edge ]
  %.pr = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp1.not.i = icmp eq i32 %.pr, 0
  br i1 %cmp1.not.i, label %failure.spu_mb_release.exit_crit_edge, label %failure.for.body.i36.preheader_crit_edge

failure.for.body.i36.preheader_crit_edge:         ; preds = %failure
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i36.preheader

failure.spu_mb_release.exit_crit_edge:            ; preds = %failure
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_mb_release.exit

for.body.i36.preheader:                           ; preds = %failure.for.body.i36.preheader_crit_edge, %failure.thread
  %err.049 = phi i32 [ -12, %failure.thread ], [ %err.0.ph, %failure.for.body.i36.preheader_crit_edge ]
  br label %for.body.i36

for.body.i36:                                     ; preds = %for.body.i36.for.body.i36_crit_edge, %for.body.i36.preheader
  %i.02.i = phi i32 [ %inc.i34, %for.body.i36.for.body.i36_crit_edge ], [ 0, %for.body.i36.preheader ]
  %32 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %arrayidx.i33 = getelementptr ptr, ptr %32, i32 %i.02.i
  %33 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i33, align 4
  tail call void @mbox_free_channel(ptr noundef %34) #9
  %inc.i34 = add nuw i32 %i.02.i, 1
  %35 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %cmp.i35 = icmp ult i32 %inc.i34, %35
  br i1 %cmp.i35, label %for.body.i36.for.body.i36_crit_edge, label %for.body.i36.spu_mb_release.exit_crit_edge

for.body.i36.spu_mb_release.exit_crit_edge:       ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_mb_release.exit

for.body.i36.for.body.i36_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i36

spu_mb_release.exit:                              ; preds = %for.body.i36.spu_mb_release.exit_crit_edge, %failure.spu_mb_release.exit_crit_edge
  %err.050 = phi i32 [ %err.0.ph, %failure.spu_mb_release.exit_crit_edge ], [ %err.049, %for.body.i36.spu_mb_release.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %err.050) #12
  br label %cleanup

cleanup:                                          ; preds = %spu_mb_release.exit, %spu_counters_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.050, %spu_mb_release.exit ], [ 0, %spu_counters_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_spu_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.089 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %registered = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.089, i32 6
  %0 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %registered, align 1, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.089
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 128
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %3, label %if.end.for.inc_crit_edge [
    i32 5, label %sw.bb
    i32 15, label %sw.bb13
    i32 3, label %sw.bb39
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %alg = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.089, i32 2
  tail call void @crypto_unregister_skcipher(ptr noundef %alg) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_spu_remove.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_spu_remove, %if.then7)) #9
          to label %for.inc.sink.split [label %if.then7], !srcloc !495

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %cra_driver_name = getelementptr inbounds %struct.skcipher_alg, ptr %alg, i32 0, i32 11, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_spu_remove.__UNIQUE_ID_ddebug357, ptr noundef %dev1, ptr noundef nonnull @.str.169, ptr noundef %cra_driver_name) #9
  br label %for.inc.sink.split

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %alg15 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.089, i32 2
  tail call void @crypto_unregister_ahash(ptr noundef %alg15) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_spu_remove.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_spu_remove, %if.then33)) #9
          to label %for.inc.sink.split [label %if.then33], !srcloc !495

if.then33:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  %cra_driver_name19 = getelementptr inbounds %struct.ahash_alg, ptr %alg15, i32 0, i32 11, i32 3, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_spu_remove.__UNIQUE_ID_ddebug358, ptr noundef %dev1, ptr noundef nonnull @.str.170, ptr noundef %cra_driver_name19) #9
  br label %for.inc.sink.split

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %alg41 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.089, i32 2
  tail call void @crypto_unregister_aead(ptr noundef %alg41) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_spu_remove.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_spu_remove, %if.then54)) #9
          to label %for.inc.sink.split [label %if.then54], !srcloc !495

if.then54:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #11
  %cra_driver_name58 = getelementptr inbounds %struct.aead_alg, ptr %alg41, i32 0, i32 10, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_spu_remove.__UNIQUE_ID_ddebug359, ptr noundef %dev1, ptr noundef nonnull @.str.171, ptr noundef %cra_driver_name58) #9
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then54, %sw.bb39, %if.then33, %sw.bb13, %if.then7, %sw.bb
  %5 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %registered, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, 53
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @spu_free_debugfs() #9
  %6 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not.i = icmp eq i32 %6, 0
  br i1 %cmp1.not.i, label %for.end.spu_mb_release.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.spu_mb_release.exit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_mb_release.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %7 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %i.02.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void @mbox_free_channel(ptr noundef %9) #9
  %inc.i = add nuw i32 %i.02.i, 1
  %10 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %cmp.i = icmp ult i32 %inc.i, %10
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.spu_mb_release.exit_crit_edge

for.body.i.spu_mb_release.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_mb_release.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

spu_mb_release.exit:                              ; preds = %for.body.i.spu_mb_release.exit_crit_edge, %for.end.spu_mb_release.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spu_dt_read(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_count_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #9
  store i32 %call, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call3, align 4
  store i32 %3, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %subtype = getelementptr inbounds %struct.spu_type_subtype, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %subtype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %subtype, align 4
  store i32 %5, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 22), align 8
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end
  %i.062 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %i.062) #9
  %cmp5.not = icmp eq ptr %call4, null
  br i1 %cmp5.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call4) #9
  %arrayidx = getelementptr %struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 20, i32 %i.062
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %7) #12
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 16, %for.inc.for.end_crit_edge ], [ %i.062, %land.rhs.for.end_crit_edge ]
  store i32 %i.0.lcssa, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 23), align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spu_dt_read.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spu_dt_read, %if.then25)) #9
          to label %cleanup [label %if.then25], !srcloc !495

if.then25:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 23), align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spu_dt_read.__UNIQUE_ID_ddebug356, ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %for.end, %if.then10, %do.end
  %retval.0 = phi i32 [ %7, %if.then10 ], [ -19, %do.end ], [ 0, %if.then25 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spu_functions_register(ptr noundef %dev, i32 noundef %spu_type, i32 noundef %spu_subtype) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spu_type)
  %cmp = icmp eq i32 %spu_type, 0
  br i1 %cmp, label %do.body, label %do.body9

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spu_functions_register.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spu_functions_register, %if.then3)) #9
          to label %do.end [label %if.then3], !srcloc !495

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spu_functions_register.__UNIQUE_ID_ddebug351, ptr noundef %dev, ptr noundef nonnull @.str.70) #9
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body
  store ptr @spum_dump_msg_hdr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1), align 4
  store ptr @spum_payload_length, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 2), align 4
  store ptr @spum_response_hdr_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 3), align 8
  store ptr @spum_hash_pad_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 4), align 4
  store ptr @spum_gcm_ccm_pad_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  store ptr @spum_assoc_resp_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 6), align 4
  store ptr @spum_aead_ivlen, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 7), align 8
  store ptr @spum_hash_type, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 8), align 4
  store ptr @spum_digest_size, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 9), align 8
  store ptr @spum_create_request, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 10), align 4
  store ptr @spum_cipher_req_init, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 11), align 8
  store ptr @spum_cipher_req_finish, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 12), align 4
  store ptr @spum_request_pad, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 13), align 8
  store ptr @spum_tx_status_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  store ptr @spum_rx_status_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 16), align 4
  store ptr @spum_status_process, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 17), align 8
  store ptr @spum_xts_tweak_in_payload, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 14), align 4
  store ptr @spum_ccm_update_iv, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 18), align 4
  store ptr @spum_wordalign_padlen, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 19), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spu_subtype)
  %cmp4 = icmp eq i32 %spu_subtype, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  store ptr @spum_ns2_ctx_max_payload, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 1), align 8
  br label %if.end45

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  store ptr @spum_nsp_ctx_max_payload, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 1), align 8
  br label %if.end45

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spu_functions_register.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spu_functions_register, %if.then21)) #9
          to label %do.end24 [label %if.then21], !srcloc !495

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spu_functions_register.__UNIQUE_ID_ddebug352, ptr noundef %dev, ptr noundef nonnull @.str.71) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body9
  store ptr @spu2_dump_msg_hdr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1), align 4
  store ptr @spu2_ctx_max_payload, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 1), align 8
  store ptr @spu2_payload_length, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 2), align 4
  store ptr @spu2_response_hdr_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 3), align 8
  store ptr @spu2_hash_pad_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 4), align 4
  store ptr @spu2_gcm_ccm_pad_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  store ptr @spu2_assoc_resp_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 6), align 4
  store ptr @spu2_aead_ivlen, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 7), align 8
  store ptr @spu2_hash_type, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 8), align 4
  store ptr @spu2_digest_size, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 9), align 8
  store ptr @spu2_create_request, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 10), align 4
  store ptr @spu2_cipher_req_init, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 11), align 8
  store ptr @spu2_cipher_req_finish, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 12), align 4
  store ptr @spu2_request_pad, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 13), align 8
  store ptr @spu2_tx_status_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  store ptr @spu2_rx_status_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 16), align 4
  store ptr @spu2_status_process, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 17), align 8
  store ptr @spu2_xts_tweak_in_payload, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 14), align 4
  store ptr @spu2_ccm_update_iv, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 18), align 4
  store ptr @spu2_wordalign_padlen, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 19), align 8
  br label %if.end45

if.end45:                                         ; preds = %do.end24, %if.else, %if.then5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spu_setup_debugfs() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spu_algs_register(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.086 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 128
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %1, label %sw.epilog.thread [
    i32 5, label %sw.bb
    i32 15, label %sw.bb2
    i32 3, label %sw.bb5
  ]

sw.bb:                                            ; preds = %for.body
  %alg.i = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2
  %cra_module.i = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 11, i32 3, i32 9, i32 36
  %3 = ptrtoint ptr %cra_module.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %cra_module.i, align 4
  %4 = load i32, ptr @cipher_pri, align 4
  %cra_priority.i = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 11, i32 2, i32 24
  %5 = ptrtoint ptr %cra_priority.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cra_priority.i, align 32
  %cra_alignmask.i = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 11, i32 2, i32 20
  %6 = ptrtoint ptr %cra_alignmask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cra_alignmask.i, align 4
  %cra_ctxsize.i = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 11, i32 2, i32 16
  %7 = ptrtoint ptr %cra_ctxsize.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1436, ptr %cra_ctxsize.i, align 8
  %cra_flags.i = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 11, i32 2, i32 8
  %8 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 69760, ptr %cra_flags.i, align 16
  %init.i = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 3
  %9 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @skcipher_init_tfm, ptr %init.i, align 4
  %exit.i = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 4
  %10 = ptrtoint ptr %exit.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @skcipher_exit_tfm, ptr %exit.i, align 16
  %11 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @skcipher_setkey, ptr %alg.i, align 128
  %encrypt.i = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @skcipher_encrypt, ptr %encrypt.i, align 4
  %decrypt.i = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 2
  %13 = ptrtoint ptr %decrypt.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @skcipher_decrypt, ptr %decrypt.i, align 8
  %call.i = tail call i32 @crypto_register_skcipher(ptr noundef %alg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb.do.body.i_crit_edge

sw.bb.do.body.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %registered.i = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 6
  %14 = ptrtoint ptr %registered.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %registered.i, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %sw.bb.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spu_register_skcipher.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spu_algs_register, %if.then8.i)) #9
          to label %sw.epilog [label %if.then8.i], !srcloc !495

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %cra_driver_name.i = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 11, i32 3, i32 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spu_register_skcipher.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.89, ptr noundef %cra_driver_name.i) #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call fastcc i32 @spu_register_ahash(ptr noundef %arrayidx)
  br label %sw.epilog

sw.bb5:                                           ; preds = %for.body
  %alg.i61 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2
  %cra_module.i62 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 11, i32 3, i32 9, i32 36
  %15 = ptrtoint ptr %cra_module.i62 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cra_module.i62, align 4
  %16 = load i32, ptr @aead_pri, align 4
  %cra_priority.i63 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 11, i32 2, i32 24
  %17 = ptrtoint ptr %cra_priority.i63 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %cra_priority.i63, align 32
  %cra_alignmask.i64 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 11, i32 2, i32 20
  %18 = ptrtoint ptr %cra_alignmask.i64 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cra_alignmask.i64, align 4
  %cra_ctxsize.i65 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 11, i32 2, i32 16
  %19 = ptrtoint ptr %cra_ctxsize.i65 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1436, ptr %cra_ctxsize.i65, align 8
  %cra_flags.i66 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 11, i32 2, i32 8
  %20 = ptrtoint ptr %cra_flags.i66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cra_flags.i66, align 16
  %or.i = or i32 %21, 65664
  store i32 %or.i, ptr %cra_flags.i66, align 16
  %setauthsize.i = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 1
  %22 = ptrtoint ptr %setauthsize.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @aead_setauthsize, ptr %setauthsize.i, align 4
  %encrypt.i67 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 2
  %23 = ptrtoint ptr %encrypt.i67 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @aead_encrypt, ptr %encrypt.i67, align 8
  %decrypt.i68 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 3
  %24 = ptrtoint ptr %decrypt.i68 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @aead_decrypt, ptr %decrypt.i68, align 4
  %init.i69 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 4
  %25 = ptrtoint ptr %init.i69 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @aead_cra_init, ptr %init.i69, align 16
  %exit.i70 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 5
  %26 = ptrtoint ptr %exit.i70 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @aead_cra_exit, ptr %exit.i70, align 4
  %call.i71 = tail call i32 @crypto_register_aead(ptr noundef %alg.i61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp.i72 = icmp eq i32 %call.i71, 0
  br i1 %cmp.i72, label %if.then.i74, label %sw.bb5.do.body.i75_crit_edge

sw.bb5.do.body.i75_crit_edge:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i75

if.then.i74:                                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %registered.i73 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 6
  %27 = ptrtoint ptr %registered.i73 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %registered.i73, align 1
  br label %do.body.i75

do.body.i75:                                      ; preds = %if.then.i74, %sw.bb5.do.body.i75_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spu_register_aead.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spu_algs_register, %if.then8.i77)) #9
          to label %sw.epilog [label %if.then8.i77], !srcloc !495

if.then8.i77:                                     ; preds = %do.body.i75
  call void @__sanitizer_cov_trace_pc() #11
  %cra_driver_name.i76 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %i.086, i32 2, i32 0, i32 11, i32 3, i32 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spu_register_aead.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.132, ptr noundef %cra_driver_name.i76) #9
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %1) #12
  br label %do.end12

sw.epilog:                                        ; preds = %if.then8.i77, %do.body.i75, %sw.bb2, %if.then8.i, %do.body.i
  %err.0 = phi i32 [ %call4, %sw.bb2 ], [ %call.i, %do.body.i ], [ %call.i, %if.then8.i ], [ %call.i71, %do.body.i75 ], [ %call.i71, %if.then8.i77 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %for.inc, label %sw.epilog.do.end12_crit_edge

sw.epilog.do.end12_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end12:                                         ; preds = %sw.epilog.do.end12_crit_edge, %sw.epilog.thread
  %err.080 = phi i32 [ -22, %sw.epilog.thread ], [ %err.0, %sw.epilog.do.end12_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.75, i32 noundef %err.080) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.086)
  %cmp1487.not = icmp eq i32 %i.086, 0
  br i1 %cmp1487.not, label %do.end12.cleanup_crit_edge, label %do.end12.for.body15_crit_edge

do.end12.for.body15_crit_edge:                    ; preds = %do.end12
  br label %for.body15

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %sw.epilog
  %inc = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, 53
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body15:                                       ; preds = %for.inc37.for.body15_crit_edge, %do.end12.for.body15_crit_edge
  %j.088 = phi i32 [ %inc38, %for.inc37.for.body15_crit_edge ], [ 0, %do.end12.for.body15_crit_edge ]
  %registered = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %j.088, i32 6
  %28 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %registered, align 1, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool17.not = icmp eq i8 %29, 0
  br i1 %tobool17.not, label %for.body15.for.inc37_crit_edge, label %if.end19

for.body15.for.inc37_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc37

if.end19:                                         ; preds = %for.body15
  %arrayidx16 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %j.088
  %30 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx16, align 128
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %31, label %if.end19.for.inc37_crit_edge [
    i32 5, label %sw.bb22
    i32 15, label %sw.bb26
    i32 3, label %sw.bb31
  ]

if.end19.for.inc37_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc37

sw.bb22:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %alg = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %j.088, i32 2
  tail call void @crypto_unregister_skcipher(ptr noundef %alg) #9
  br label %for.inc37.sink.split

sw.bb26:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %alg28 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %j.088, i32 2
  tail call void @crypto_unregister_ahash(ptr noundef %alg28) #9
  br label %for.inc37.sink.split

sw.bb31:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %alg33 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %j.088, i32 2
  tail call void @crypto_unregister_aead(ptr noundef %alg33) #9
  br label %for.inc37.sink.split

for.inc37.sink.split:                             ; preds = %sw.bb31, %sw.bb26, %sw.bb22
  %33 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %registered, align 1
  br label %for.inc37

for.inc37:                                        ; preds = %for.inc37.sink.split, %if.end19.for.inc37_crit_edge, %for.body15.for.inc37_crit_edge
  %inc38 = add nuw nsw i32 %j.088, 1
  %exitcond97.not = icmp eq i32 %inc38, %i.086
  br i1 %exitcond97.not, label %for.inc37.cleanup_crit_edge, label %for.inc37.for.body15_crit_edge

for.inc37.for.body15_crit_edge:                   ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15

for.inc37.cleanup_crit_edge:                      ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc37.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.080, %do.end12.cleanup_crit_edge ], [ %err.080, %for.inc37.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spu_free_debugfs() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spu_rx_callback(ptr nocapture noundef readnone %cl, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.brcm_message, ptr %msg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end, !prof !493

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #12
  br label %cb_finish

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 17), align 8
  %rx_stat = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 28, i32 7
  %call4 = tail call i32 %2(ptr noundef %rx_stat) #9
  %3 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %call4, label %if.end.cb_finish_crit_edge [
    i32 0, label %if.end9
    i32 1, label %if.then7
  ]

if.end.cb_finish_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cb_finish

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 18), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 18), i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 18), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 18), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 18)) #9, !srcloc !496
  br label %cb_finish

if.end9:                                          ; preds = %if.end
  %ctx10 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ctx10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx10, align 4
  %alg = getelementptr inbounds %struct.iproc_ctx_s, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %alg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alg, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 128
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %10, label %if.end9.cb_finish_crit_edge [
    i32 5, label %sw.bb
    i32 15, label %sw.bb11
    i32 3, label %sw.bb12
  ]

if.end9.cb_finish_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cb_finish

sw.bb:                                            ; preds = %if.end9
  %12 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 2), align 4
  %spu_resp_hdr.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 28, i32 5
  %call2.i = tail call i32 %12(ptr noundef %spu_resp_hdr.i) #9
  %cipher.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %6, i32 0, i32 11
  %mode.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %6, i32 0, i32 11, i32 1
  %13 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp.i = icmp eq i32 %14, 7
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %15 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 14), align 4
  %call3.i = tail call zeroext i8 %15() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call3.i)
  %tobool.not.i = icmp ne i8 %call3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call2.i)
  %cmp5.i = icmp ugt i32 %call2.i, 15
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp5.i, i1 false
  %sub.i = add i32 %call2.i, -16
  %spec.select.i = select i1 %or.cond.i, i32 %sub.i, i32 %call2.i
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %sw.bb.if.end.i_crit_edge
  %payload_len.0.i = phi i32 [ %call2.i, %sw.bb.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %conv7.i = zext i32 %payload_len.0.i to i64
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8), i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef %conv7.i, ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8)) #9
  %total_received.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %total_received.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_received.i, align 4
  %add.i = add i32 %17, %payload_len.0.i
  store i32 %add.i, ptr %total_received.i, align 4
  %total_todo.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %total_todo.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_todo.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %19)
  %cmp11.i = icmp eq i32 %add.i, %19
  br i1 %cmp11.i, label %if.then13.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i34.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10), i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10)) #9, !srcloc !496
  %21 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cipher.i, align 4
  %23 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode.i, align 4
  %arrayidx17.i = getelementptr %struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 %22, i32 %24
  %call.i.i35.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx17.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %arrayidx17.i, i32 1, i32 3, i32 1) #9
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx17.i, ptr %arrayidx17.i, i32 1, ptr elementtype(i32) %arrayidx17.i) #9, !srcloc !496
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end9
  %incr_hash.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 22
  %digest.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 28, i32 2
  %26 = call ptr @memcpy(ptr %incr_hash.i, ptr %digest.i, i32 64)
  %digestsize.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %6, i32 0, i32 8
  %27 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %digestsize.i, align 4
  %conv.i = zext i32 %28 to i64
  %call.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8), i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef %conv.i, ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8)) #9
  %is_final.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 21
  %29 = ptrtoint ptr %is_final.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %is_final.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i55 = icmp eq i32 %30, 0
  br i1 %tobool.not.i55, label %sw.bb11.sw.epilog_crit_edge, label %land.lhs.true.i58

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true.i58:                                ; preds = %sw.bb11
  %total_sent.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %total_sent.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %total_sent.i, align 4
  %total_todo.i56 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %total_todo.i56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %total_todo.i56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.i57 = icmp eq i32 %32, %34
  br i1 %cmp.i57, label %if.then.i, label %land.lhs.true.i58.sw.epilog_crit_edge

land.lhs.true.i58.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i:                                        ; preds = %land.lhs.true.i58
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %37 = ptrtoint ptr %ctx10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctx10, align 4
  %result.i.i = getelementptr inbounds %struct.ahash_request, ptr %36, i32 0, i32 3
  %39 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %result.i.i, align 32
  %digestsize.i.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %38, i32 0, i32 8
  %41 = ptrtoint ptr %digestsize.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %digestsize.i.i, align 4
  %43 = call ptr @memcpy(ptr %40, ptr %digest.i, i32 %42)
  %44 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.i = icmp eq i32 %44, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.if.end12.i.i_crit_edge

if.then.i.if.end12.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %auth.i.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %38, i32 0, i32 13
  %45 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %auth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp2.i.i = icmp eq i32 %46, 1
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.then.i.i.if.end12.i.i_crit_edge

if.then.i.i.if.end12.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %result.i.i, align 32
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #9
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %48, align 4
  %53 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %result.i.i, align 32
  %add.ptr.i.i = getelementptr i32, ptr %54, i32 1
  %55 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i.i, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  %58 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %add.ptr.i.i, align 4
  %59 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %result.i.i, align 32
  %add.ptr7.i.i = getelementptr i32, ptr %60, i32 2
  %61 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr7.i.i, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #9
  %64 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %add.ptr7.i.i, align 4
  %65 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %result.i.i, align 32
  %add.ptr9.i.i = getelementptr i32, ptr %66, i32 3
  %67 = ptrtoint ptr %add.ptr9.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr9.i.i, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #9
  %70 = ptrtoint ptr %add.ptr9.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %add.ptr9.i.i, align 4
  %71 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %result.i.i, align 32
  %add.ptr11.i.i = getelementptr i32, ptr %72, i32 4
  %73 = ptrtoint ptr %add.ptr11.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr11.i.i, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #9
  %76 = ptrtoint ptr %add.ptr11.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %add.ptr11.i.i, align 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then3.i.i, %if.then.i.i.if.end12.i.i_crit_edge, %if.then.i.if.end12.i.i_crit_edge
  %is_sw_hmac.i.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 23
  %77 = ptrtoint ptr %is_sw_hmac.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %is_sw_hmac.i.i, align 4, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i = icmp eq i8 %78, 0
  br i1 %tobool.not.i.i, label %if.end12.i.i.lor.lhs.false.i.i_crit_edge, label %if.then15.i.i

if.end12.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  %tfm.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %36, i32 0, i32 3
  %79 = ptrtoint ptr %tfm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tfm.i.i.i.i, align 16
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %cra_blocksize.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %cra_blocksize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cra_blocksize.i.i.i.i, align 4
  %auth.i.i.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %38, i32 0, i32 13
  %85 = ptrtoint ptr %auth.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %auth.i.i.i, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %86, label %spu_hmac_outer_hash.exit.thread.i.i [
    i32 1, label %sw.bb.i.i.i
    i32 2, label %sw.bb5.i.i.i
    i32 3, label %sw.bb12.i.i.i
    i32 4, label %sw.bb19.i.i.i
    i32 6, label %sw.bb26.i.i.i
    i32 7, label %sw.bb33.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %result.i.i, align 32
  %opad.i.i.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %38, i32 0, i32 18
  %90 = ptrtoint ptr %digestsize.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %digestsize.i.i, align 4
  %call4.i.i.i = tail call i32 @do_shash(ptr noundef nonnull @.str.23, ptr noundef %89, ptr noundef %opad.i.i.i, i32 noundef %84, ptr noundef %89, i32 noundef %91, ptr noundef null, i32 noundef 0) #9
  br label %spu_hmac_outer_hash.exit.i.i

sw.bb5.i.i.i:                                     ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %result.i.i, align 32
  %opad7.i.i.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %38, i32 0, i32 18
  %94 = ptrtoint ptr %digestsize.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %digestsize.i.i, align 4
  %call11.i.i.i = tail call i32 @do_shash(ptr noundef nonnull @.str.24, ptr noundef %93, ptr noundef %opad7.i.i.i, i32 noundef %84, ptr noundef %93, i32 noundef %95, ptr noundef null, i32 noundef 0) #9
  br label %spu_hmac_outer_hash.exit.i.i

sw.bb12.i.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %result.i.i, align 32
  %opad14.i.i.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %38, i32 0, i32 18
  %98 = ptrtoint ptr %digestsize.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %digestsize.i.i, align 4
  %call18.i.i.i = tail call i32 @do_shash(ptr noundef nonnull @.str.25, ptr noundef %97, ptr noundef %opad14.i.i.i, i32 noundef %84, ptr noundef %97, i32 noundef %99, ptr noundef null, i32 noundef 0) #9
  br label %spu_hmac_outer_hash.exit.i.i

sw.bb19.i.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %result.i.i, align 32
  %opad21.i.i.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %38, i32 0, i32 18
  %102 = ptrtoint ptr %digestsize.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %digestsize.i.i, align 4
  %call25.i.i.i = tail call i32 @do_shash(ptr noundef nonnull @.str.26, ptr noundef %101, ptr noundef %opad21.i.i.i, i32 noundef %84, ptr noundef %101, i32 noundef %103, ptr noundef null, i32 noundef 0) #9
  br label %spu_hmac_outer_hash.exit.i.i

sw.bb26.i.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %result.i.i, align 32
  %opad28.i.i.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %38, i32 0, i32 18
  %106 = ptrtoint ptr %digestsize.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %digestsize.i.i, align 4
  %call32.i.i.i = tail call i32 @do_shash(ptr noundef nonnull @.str.27, ptr noundef %105, ptr noundef %opad28.i.i.i, i32 noundef %84, ptr noundef %105, i32 noundef %107, ptr noundef null, i32 noundef 0) #9
  br label %spu_hmac_outer_hash.exit.i.i

sw.bb33.i.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %result.i.i, align 32
  %opad35.i.i.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %38, i32 0, i32 18
  %110 = ptrtoint ptr %digestsize.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %digestsize.i.i, align 4
  %call39.i.i.i = tail call i32 @do_shash(ptr noundef nonnull @.str.28, ptr noundef %109, ptr noundef %opad35.i.i.i, i32 noundef %84, ptr noundef %109, i32 noundef %111, ptr noundef null, i32 noundef 0) #9
  br label %spu_hmac_outer_hash.exit.i.i

spu_hmac_outer_hash.exit.thread.i.i:              ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call40.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #12
  br label %sw.epilog

spu_hmac_outer_hash.exit.i.i:                     ; preds = %sw.bb33.i.i.i, %sw.bb26.i.i.i, %sw.bb19.i.i.i, %sw.bb12.i.i.i, %sw.bb5.i.i.i, %sw.bb.i.i.i
  %rc.0.i.i.i = phi i32 [ %call39.i.i.i, %sw.bb33.i.i.i ], [ %call32.i.i.i, %sw.bb26.i.i.i ], [ %call25.i.i.i, %sw.bb19.i.i.i ], [ %call18.i.i.i, %sw.bb12.i.i.i ], [ %call11.i.i.i, %sw.bb5.i.i.i ], [ %call4.i.i.i, %sw.bb.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i.i.i)
  %cmp17.i.i = icmp slt i32 %rc.0.i.i.i, 0
  br i1 %cmp17.i.i, label %spu_hmac_outer_hash.exit.i.i.sw.epilog_crit_edge, label %if.end22.i.i

spu_hmac_outer_hash.exit.i.i.sw.epilog_crit_edge: ; preds = %spu_hmac_outer_hash.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end22.i.i:                                     ; preds = %spu_hmac_outer_hash.exit.i.i
  %112 = ptrtoint ptr %is_sw_hmac.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %.pr.i.i = load i8, ptr %is_sw_hmac.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i)
  %tobool24.not.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end22.i.i.lor.lhs.false.i.i_crit_edge, label %if.end22.i.i.if.then27.i.i_crit_edge

if.end22.i.i.if.then27.i.i_crit_edge:             ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i.i

if.end22.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end22.i.i.lor.lhs.false.i.i_crit_edge, %if.end12.i.i.lor.lhs.false.i.i_crit_edge
  %mode.i.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %38, i32 0, i32 13, i32 1
  %113 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %114)
  %cmp26.i.i = icmp eq i32 %114, 2
  br i1 %cmp26.i.i, label %lor.lhs.false.i.i.if.then27.i.i_crit_edge, label %if.else.i.i

lor.lhs.false.i.i.if.then27.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i.i

if.then27.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then27.i.i_crit_edge, %if.end22.i.i.if.then27.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 2), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 2), i32 1, i32 3, i32 1) #9
  %115 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 2)) #9, !srcloc !496
  %auth28.i.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %38, i32 0, i32 13
  %116 = ptrtoint ptr %auth28.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %auth28.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 %117
  %call.i.i1.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i.i, i32 1, i32 3, i32 1) #9
  %118 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i, ptr %arrayidx.i.i, i32 1, ptr elementtype(i32) %arrayidx.i.i) #9, !srcloc !496
  br label %sw.epilog

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %auth25.i.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %38, i32 0, i32 13
  %call.i.i2.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 1), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 1), i32 1, i32 3, i32 1) #9
  %119 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 1), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 1), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 1)) #9, !srcloc !496
  %120 = ptrtoint ptr %auth25.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %auth25.i.i, align 4
  %arrayidx32.i.i = getelementptr %struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 %121
  %call.i.i3.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx32.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %arrayidx32.i.i, i32 1, i32 3, i32 1) #9
  %122 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx32.i.i, ptr %arrayidx32.i.i, i32 1, ptr elementtype(i32) %arrayidx32.i.i) #9, !srcloc !496
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end9
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  %125 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 2), align 4
  %spu_resp_hdr.i61 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 28, i32 5
  %call.i = tail call i32 %125(ptr noundef %spu_resp_hdr.i61) #9
  %conv.i62 = zext i32 %call.i to i64
  %call.i.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8), i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef %conv.i62, ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8)) #9
  %is_encrypt.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 16
  %126 = ptrtoint ptr %is_encrypt.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %is_encrypt.i, align 1, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool5.not.i = icmp eq i8 %127, 0
  br i1 %tobool5.not.i, label %sw.bb12.if.end16.i_crit_edge, label %if.then6.i

sw.bb12.if.end16.i_crit_edge:                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then6.i:                                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %124, i32 0, i32 1
  %128 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %assoclen.i, align 8
  %total_sent.i64 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 5
  %130 = ptrtoint ptr %total_sent.i64 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %total_sent.i64, align 4
  %add.i65 = add i32 %131, %129
  %digest.i66 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 28, i32 2
  %digestsize.i67 = getelementptr inbounds %struct.iproc_ctx_s, ptr %6, i32 0, i32 8
  %dst.i = getelementptr inbounds %struct.aead_request, ptr %124, i32 0, i32 5
  %132 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dst.i, align 8
  %134 = ptrtoint ptr %digestsize.i67 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %digestsize.i67, align 4
  tail call void @sg_copy_part_from_buf(ptr noundef %133, ptr noundef %digest.i66, i32 noundef %135, i32 noundef %add.i65) #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then6.i, %sw.bb12.if.end16.i_crit_edge
  %call.i.i57.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 3), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 3), i32 1, i32 3, i32 1) #9
  %136 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 3), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 3), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 3)) #9, !srcloc !496
  %cipher.i68 = getelementptr inbounds %struct.iproc_ctx_s, ptr %6, i32 0, i32 11
  %137 = ptrtoint ptr %cipher.i68 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cipher.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %138)
  %cmp.i69 = icmp eq i32 %138, 4
  br i1 %cmp.i69, label %if.then20.i, label %if.else33.i

if.then20.i:                                      ; preds = %if.end16.i
  %mode.i70 = getelementptr inbounds %struct.iproc_ctx_s, ptr %6, i32 0, i32 11, i32 1
  %139 = ptrtoint ptr %mode.i70 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %mode.i70, align 4
  %141 = zext i32 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %140, label %if.else30.i [
    i32 5, label %if.then24.i
    i32 6, label %if.then29.i
  ]

if.then24.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i58.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14), i32 1, i32 3, i32 1) #9
  %142 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14)) #9, !srcloc !496
  br label %sw.epilog

if.then29.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i59.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 1), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 1), i32 1, i32 3, i32 1) #9
  %143 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 1), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 1), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 1)) #9, !srcloc !496
  br label %sw.epilog

if.else30.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i60.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2), i32 1, i32 3, i32 1) #9
  %144 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2)) #9, !srcloc !496
  br label %sw.epilog

if.else33.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i61.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2), i32 1, i32 3, i32 1) #9
  %145 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2)) #9, !srcloc !496
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else33.i, %if.else30.i, %if.then29.i, %if.then24.i, %if.else.i.i, %if.then27.i.i, %spu_hmac_outer_hash.exit.i.i.sw.epilog_crit_edge, %spu_hmac_outer_hash.exit.thread.i.i, %land.lhs.true.i58.sw.epilog_crit_edge, %sw.bb11.sw.epilog_crit_edge, %if.then13.i, %if.end.i.sw.epilog_crit_edge
  %total_sent = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 5
  %146 = ptrtoint ptr %total_sent to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %total_sent, align 4
  %total_todo = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 3
  %148 = ptrtoint ptr %total_todo to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %total_todo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %149)
  %cmp13 = icmp ult i32 %147, %149
  br i1 %cmp13, label %if.then14, label %sw.epilog.cb_finish_crit_edge

sw.epilog.cb_finish_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cb_finish

if.then14:                                        ; preds = %sw.epilog
  %mb_mssg.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 14
  %150 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 14, i32 1
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  tail call void @kfree(ptr noundef %152) #9
  %dst.i71 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 14, i32 1, i32 0, i32 1
  %153 = ptrtoint ptr %dst.i71 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dst.i71, align 4
  tail call void @kfree(ptr noundef %154) #9
  %155 = call ptr @memset(ptr %mb_mssg.i, i32 0, i32 24)
  %156 = ptrtoint ptr %ctx10 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ctx10, align 4
  %alg16 = getelementptr inbounds %struct.iproc_ctx_s, ptr %157, i32 0, i32 9
  %158 = ptrtoint ptr %alg16 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %alg16, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %159, align 128
  %162 = zext i32 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %161, label %if.then14.cb_finish_crit_edge [
    i32 5, label %sw.bb18
    i32 15, label %sw.bb20
    i32 3, label %sw.bb25
  ]

if.then14.cb_finish_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cb_finish

sw.bb18:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call fastcc i32 @handle_skcipher_req(ptr noundef nonnull %1)
  br label %sw.epilog28

sw.bb20:                                          ; preds = %if.then14
  %call21 = tail call fastcc i32 @handle_ahash_req(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call21)
  %cmp22 = icmp eq i32 %call21, -11
  br i1 %cmp22, label %sw.bb20.cb_finish_crit_edge, label %sw.bb20.sw.epilog28_crit_edge

sw.bb20.sw.epilog28_crit_edge:                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog28

sw.bb20.cb_finish_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cb_finish

sw.bb25:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call fastcc i32 @handle_aead_req(ptr noundef nonnull %1)
  br label %sw.epilog28

sw.epilog28:                                      ; preds = %sw.bb25, %sw.bb20.sw.epilog28_crit_edge, %sw.bb18
  %err.0 = phi i32 [ %call26, %sw.bb25 ], [ %call21, %sw.bb20.sw.epilog28_crit_edge ], [ %call19, %sw.bb18 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err.0)
  %cmp29 = icmp eq i32 %err.0, -115
  br i1 %cmp29, label %sw.epilog28.cleanup_crit_edge, label %sw.epilog28.cb_finish_crit_edge

sw.epilog28.cb_finish_crit_edge:                  ; preds = %sw.epilog28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cb_finish

sw.epilog28.cleanup_crit_edge:                    ; preds = %sw.epilog28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cb_finish:                                        ; preds = %sw.epilog28.cb_finish_crit_edge, %sw.bb20.cb_finish_crit_edge, %if.then14.cb_finish_crit_edge, %sw.epilog.cb_finish_crit_edge, %if.end9.cb_finish_crit_edge, %if.then7, %if.end.cb_finish_crit_edge, %do.end
  %err.1 = phi i32 [ -14, %do.end ], [ %err.0, %sw.epilog28.cb_finish_crit_edge ], [ 0, %sw.epilog.cb_finish_crit_edge ], [ -74, %if.end.cb_finish_crit_edge ], [ -74, %if.then7 ], [ -22, %if.end9.cb_finish_crit_edge ], [ -22, %if.then14.cb_finish_crit_edge ], [ 0, %sw.bb20.cb_finish_crit_edge ]
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %mb_mssg.i.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 14
  %165 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 14, i32 1
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  tail call void @kfree(ptr noundef %167) #9
  %dst.i.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %1, i32 0, i32 14, i32 1, i32 0, i32 1
  %168 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dst.i.i, align 4
  tail call void @kfree(ptr noundef %169) #9
  %170 = call ptr @memset(ptr %mb_mssg.i.i, i32 0, i32 24)
  %tobool.not.i72 = icmp eq ptr %164, null
  br i1 %tobool.not.i72, label %cb_finish.cleanup_crit_edge, label %if.then.i73

cb_finish.cleanup_crit_edge:                      ; preds = %cb_finish
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i73:                                      ; preds = %cb_finish
  call void @__sanitizer_cov_trace_pc() #11
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %164, i32 0, i32 1
  %171 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %complete.i, align 4
  tail call void %172(ptr noundef nonnull %164, i32 noundef %err.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i73, %cb_finish.cleanup_crit_edge, %sw.epilog28.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_skcipher_req(ptr noundef %rctx) unnamed_addr #2 align 64 {
entry:
  %sg.i295 = alloca ptr, align 4
  %sg.i = alloca ptr, align 4
  %cipher_parms = alloca %struct.spu_cipher_parms, align 4
  %local_iv_ctr = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rctx, align 4
  %ctx1 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 1
  %2 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx1, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cipher_parms) #9
  %4 = getelementptr inbounds i8, ptr %cipher_parms, i32 16
  %5 = call ptr @memset(ptr %4, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_iv_ctr) #9
  %cipher = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 11
  %6 = call ptr @memset(ptr %local_iv_ctr, i32 255, i32 16)
  %7 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cipher, align 4
  %9 = ptrtoint ptr %cipher_parms to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cipher_parms, align 4
  %mode = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  %mode4 = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 1
  %12 = ptrtoint ptr %mode4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mode4, align 4
  %cipher_type = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cipher_type, align 4
  %type = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 2
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %type, align 4
  %enckeylen = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %enckeylen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enckeylen, align 4
  %conv = trunc i32 %17 to i16
  %key_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 4
  %18 = ptrtoint ptr %key_len to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %key_len, align 4
  %key_buf = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 3
  %19 = ptrtoint ptr %key_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %3, ptr %key_buf, align 4
  %iv_buf = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 5
  %20 = ptrtoint ptr %iv_buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %local_iv_ctr, ptr %iv_buf, align 4
  %iv_ctr_len = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 18
  %21 = ptrtoint ptr %iv_ctr_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iv_ctr_len, align 4
  %conv6 = trunc i32 %22 to i16
  %iv_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 6
  %23 = ptrtoint ptr %iv_len to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv6, ptr %iv_len, align 4
  %mb_mssg = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 14
  %src_sent = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 6
  %24 = ptrtoint ptr %src_sent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_sent, align 4
  %total_todo = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 3
  %26 = ptrtoint ptr %total_todo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %total_todo, align 4
  %sub = sub i32 %27, %25
  %max_payload = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 15
  %28 = ptrtoint ptr %max_payload to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.not = icmp ne i32 %29, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %29)
  %cmp9 = icmp ugt i32 %sub, %29
  %or.cond = select i1 %cmp.not, i1 %cmp9, i1 false
  %chunksize.0 = select i1 %or.cond, i32 %29, i32 %sub
  %add = add i32 %chunksize.0, %25
  %30 = ptrtoint ptr %src_sent to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %src_sent, align 4
  %total_sent = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 5
  %31 = ptrtoint ptr %total_sent to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %total_sent, align 4
  %src_sg = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 8
  %32 = ptrtoint ptr %src_sg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %src_sg, align 4
  %src_skip = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 10
  %34 = ptrtoint ptr %src_skip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %src_skip, align 4
  %call = call i32 @spu_sg_count(ptr noundef %33, i32 noundef %35, i32 noundef %chunksize.0) #9
  %src_nents = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 9
  %36 = ptrtoint ptr %src_nents to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call, ptr %src_nents, align 4
  %dst_sg = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 11
  %37 = ptrtoint ptr %dst_sg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dst_sg, align 4
  %dst_skip = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 13
  %39 = ptrtoint ptr %dst_skip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dst_skip, align 4
  %call14 = call i32 @spu_sg_count(ptr noundef %38, i32 noundef %40, i32 noundef %chunksize.0) #9
  %dst_nents = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 12
  %41 = ptrtoint ptr %dst_nents to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call14, ptr %dst_nents, align 4
  %42 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp17 = icmp eq i32 %43, 1
  br i1 %cmp17, label %land.lhs.true19, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true19:                                  ; preds = %entry
  %is_encrypt = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 16
  %44 = ptrtoint ptr %is_encrypt to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_encrypt, align 1, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not = icmp eq i8 %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool22.not = icmp eq i32 %25, 0
  %or.cond290 = select i1 %tobool.not, i1 true, i1 %tobool22.not
  br i1 %or.cond290, label %land.lhs.true19.if.end28_crit_edge, label %if.then23

land.lhs.true19.if.end28_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then23:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  %dst = getelementptr i8, ptr %1, i32 -4
  %46 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dst, align 4
  %iv_ctr = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 1
  %48 = ptrtoint ptr %iv_ctr_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iv_ctr_len, align 4
  %sub27 = sub i32 %25, %49
  call void @sg_copy_part_to_buf(ptr noundef %47, ptr noundef %iv_ctr, i32 noundef %49, i32 noundef %sub27) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %land.lhs.true19.if.end28_crit_edge, %entry.if.end28_crit_edge
  %50 = ptrtoint ptr %iv_ctr_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %iv_ctr_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool30.not = icmp eq i32 %51, 0
  br i1 %tobool30.not, label %if.end28.if.end70_crit_edge, label %if.then31

if.end28.if.end70_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then31:                                        ; preds = %if.end28
  %iv_ctr34 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 1
  %52 = call ptr @memcpy(ptr %local_iv_ctr, ptr %iv_ctr34, i32 %51)
  %53 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mode, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %54, label %if.then31.if.end70_crit_edge [
    i32 1, label %land.lhs.true41
    i32 4, label %if.then57
  ]

if.then31.if.end70_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

land.lhs.true41:                                  ; preds = %if.then31
  %is_encrypt42 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 16
  %56 = ptrtoint ptr %is_encrypt42 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_encrypt42, align 1, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool43.not = icmp eq i8 %57, 0
  br i1 %tobool43.not, label %if.then44, label %land.lhs.true41.if.end70_crit_edge

land.lhs.true41.if.end70_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then44:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  %src = getelementptr i8, ptr %1, i32 -8
  %58 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %src, align 8
  %60 = ptrtoint ptr %src_sent to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %src_sent, align 4
  %sub51 = sub i32 %61, %51
  call void @sg_copy_part_to_buf(ptr noundef %59, ptr noundef %iv_ctr34, i32 noundef %51, i32 noundef %sub51) #9
  br label %if.end70

if.then57:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %chunksize.0, 4
  call void @add_to_ctr(ptr noundef %iv_ctr34, i32 noundef %shr) #9
  br label %if.end70

if.end70:                                         ; preds = %if.then57, %if.then44, %land.lhs.true41.if.end70_crit_edge, %if.then31.if.end70_crit_edge, %if.end28.if.end70_crit_edge
  %msg_buf72 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28
  %bcm_spu_req_hdr74 = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 19
  %62 = call ptr @memcpy(ptr %msg_buf72, ptr %bcm_spu_req_hdr74, i32 568)
  %63 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 12), align 4
  %64 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %conv79 = zext i8 %64 to i32
  %add.ptr80 = getelementptr i8, ptr %msg_buf72, i32 %conv79
  %spu_req_hdr_len = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 20
  %65 = ptrtoint ptr %spu_req_hdr_len to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %spu_req_hdr_len, align 4
  %is_encrypt81 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 16
  %67 = ptrtoint ptr %is_encrypt81 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_encrypt81, align 1, !range !494
  %69 = xor i8 %68, 1
  %70 = zext i8 %69 to i32
  call void %63(ptr noundef %add.ptr80, i16 noundef zeroext %66, i32 noundef %70, ptr noundef nonnull %cipher_parms, i32 noundef %chunksize.0) #9
  %conv83 = zext i32 %chunksize.0 to i64
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9), i32 noundef 8) #9
  call void @generic_atomic64_add(i64 noundef %conv83, ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9)) #9
  %71 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 19), align 8
  %call84 = call i32 %71(i32 noundef %chunksize.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  %spec.select = select i1 %tobool85.not, i32 2, i32 3
  br i1 %tobool85.not, label %if.end70.if.end97_crit_edge, label %if.then89

if.end70.if.end97_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then89:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %72 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 13), align 8
  %spu_req_pad = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 3
  %auth = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 13
  %73 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %auth, align 4
  %mode95 = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 13, i32 1
  %75 = ptrtoint ptr %mode95 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mode95, align 4
  %77 = ptrtoint ptr %total_sent to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %total_sent, align 4
  call void %72(ptr noundef %spu_req_pad, i32 noundef 0, i32 noundef 0, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %call84) #9
  br label %if.end97

if.end97:                                         ; preds = %if.then89, %if.end70.if.end97_crit_edge
  %tx_frag_num.0 = phi i32 [ 2, %if.then89 ], [ 1, %if.end70.if.end97_crit_edge ]
  %79 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1), align 4
  %80 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %conv101 = zext i8 %80 to i32
  %add.ptr102 = getelementptr i8, ptr %msg_buf72, i32 %conv101
  %81 = ptrtoint ptr %spu_req_hdr_len to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %spu_req_hdr_len, align 4
  %conv104 = zext i16 %82 to i32
  call void %79(ptr noundef %add.ptr102, i32 noundef %conv104) #9
  %83 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 14, i32 1
  %84 = call ptr @memset(ptr %83, i32 0, i32 20)
  %85 = ptrtoint ptr %mb_mssg to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %mb_mssg, align 4
  %ctx111 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 14, i32 2
  %86 = ptrtoint ptr %ctx111 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %rctx, ptr %ctx111, align 4
  %87 = ptrtoint ptr %dst_nents to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dst_nents, align 4
  %add114 = add i32 %88, %spec.select
  %89 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %90)
  %cmp118 = icmp eq i32 %90, 7
  br i1 %cmp118, label %land.lhs.true120, label %if.end97.if.end126_crit_edge

if.end97.if.end126_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

land.lhs.true120:                                 ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %91 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 14), align 4
  %call121 = call zeroext i8 %91() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call121)
  %tobool123.not = icmp ne i8 %call121, 0
  %inc125 = zext i1 %tobool123.not to i32
  %spec.select291 = add i32 %add114, %inc125
  br label %if.end126

if.end126:                                        ; preds = %land.lhs.true120, %if.end97.if.end126_crit_edge
  %rx_frag_num.1 = phi i32 [ %add114, %if.end97.if.end126_crit_edge ], [ %spec.select291, %land.lhs.true120 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg.i) #9
  %92 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ctx1, align 4
  %conv.i = and i32 %rx_frag_num.1, 255
  %gfp.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 27
  %94 = mul nuw nsw i32 %conv.i, 20
  %95 = ptrtoint ptr %gfp.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %gfp.i, align 4
  %or.i.i = or i32 %96, 256
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %94, i32 noundef %or.i.i) #13
  %dst.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 14, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call8.i.i.i, ptr %dst.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end126.spu_skcipher_rx_sg_create.exit.thread_crit_edge, label %if.end.i

if.end126.spu_skcipher_rx_sg_create.exit.thread_crit_edge: ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_skcipher_rx_sg_create.exit.thread

if.end.i:                                         ; preds = %if.end126
  call void @sg_init_table(ptr noundef nonnull %call8.i.i.i, i32 noundef %conv.i) #9
  %incdec.ptr.i = getelementptr %struct.scatterlist, ptr %call8.i.i.i, i32 1
  %98 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %incdec.ptr.i, ptr %sg.i, align 4
  %spu_resp_hdr.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 5
  %spu_resp_hdr_len.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %93, i32 0, i32 21
  %99 = ptrtoint ptr %spu_resp_hdr_len.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %spu_resp_hdr_len.i, align 2
  %conv5.i = zext i16 %100 to i32
  %101 = ptrtoint ptr %spu_resp_hdr.i to i32
  %cmp.i.i = icmp ugt ptr %spu_resp_hdr.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.do.body5.i.i_crit_edge, !prof !497

if.end.i.do.body5.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %102 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %102, %spu_resp_hdr.i
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !497

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %101, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %103 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %103, %shr.i.i
  %call.i.i294 = call i32 @pfn_valid(i32 noundef %add.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i294)
  %tobool.i.i = icmp eq i32 %call.i.i294, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !493

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %if.end.i.do.body5.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %104 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %104, i32 %shr.i.i
  %105 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %call8.i.i.i, align 128
  %107 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i.i = and i32 %107, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !497

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i56.i = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i56.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i56.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_set_buf.exit.i, label %do.body19.i.i.i.i, !prof !497

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit.i:                                ; preds = %do.body11.i.i.i.i
  %and.i.i = and i32 %101, 4095
  %and.i.i.i.i = and i32 %106, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %107
  %108 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or.i.i.i.i, ptr %call8.i.i.i, align 128
  %offset1.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call8.i.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %and.i.i, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call8.i.i.i, i32 0, i32 2
  %110 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv5.i, ptr %length.i.i.i, align 8
  %mode.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %93, i32 0, i32 11, i32 1
  %111 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %112)
  %cmp.i = icmp eq i32 %112, 7
  br i1 %cmp.i, label %land.lhs.true.i, label %sg_set_buf.exit.i.if.end14.i_crit_edge

sg_set_buf.exit.i.if.end14.i_crit_edge:           ; preds = %sg_set_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %sg_set_buf.exit.i
  %113 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 14), align 4
  %call7.i = call zeroext i8 %113() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call7.i)
  %tobool9.not.i = icmp eq i8 %call7.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end14.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  %114 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sg.i, align 4
  %incdec.ptr11.i = getelementptr %struct.scatterlist, ptr %115, i32 1
  store ptr %incdec.ptr11.i, ptr %sg.i, align 4
  %116 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 8
  %117 = ptrtoint ptr %116 to i32
  %cmp.i57.i = icmp ugt ptr %116, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i57.i, label %land.lhs.true.i59.i, label %if.then10.i.do.body5.i66.i_crit_edge, !prof !497

if.then10.i.do.body5.i66.i_crit_edge:             ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i66.i

land.lhs.true.i59.i:                              ; preds = %if.then10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %118 = load ptr, ptr @high_memory, align 4
  %cmp1.i58.i = icmp ugt ptr %118, %116
  br i1 %cmp1.i58.i, label %land.rhs.i65.i, label %land.lhs.true.i59.i.do.body5.i66.i_crit_edge, !prof !497

land.lhs.true.i59.i.do.body5.i66.i_crit_edge:     ; preds = %land.lhs.true.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i66.i

land.rhs.i65.i:                                   ; preds = %land.lhs.true.i59.i
  %sub.i60.i = add i32 %117, 1073741824
  %shr.i61.i = lshr i32 %sub.i60.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %119 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i62.i = add i32 %119, %shr.i61.i
  %call.i63.i = call i32 @pfn_valid(i32 noundef %add.i62.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i)
  %tobool.i64.i = icmp eq i32 %call.i63.i, 0
  br i1 %tobool.i64.i, label %land.rhs.i65.i.do.body5.i66.i_crit_edge, label %do.end8.i70.i, !prof !493

land.rhs.i65.i.do.body5.i66.i_crit_edge:          ; preds = %land.rhs.i65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i66.i

do.body5.i66.i:                                   ; preds = %land.rhs.i65.i.do.body5.i66.i_crit_edge, %land.lhs.true.i59.i.do.body5.i66.i_crit_edge, %if.then10.i.do.body5.i66.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i70.i:                                    ; preds = %land.rhs.i65.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %120 = load ptr, ptr @mem_map, align 4
  %add.ptr.i67.i = getelementptr %struct.page, ptr %120, i32 %shr.i61.i
  %121 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %115, align 4
  %123 = ptrtoint ptr %add.ptr.i67.i to i32
  %and2.i.i.i68.i = and i32 %123, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i68.i)
  %tobool.not.i.i.i69.i = icmp eq i32 %and2.i.i.i68.i, 0
  br i1 %tobool.not.i.i.i69.i, label %do.body11.i.i.i74.i, label %do.body5.i.i.i71.i, !prof !497

do.body5.i.i.i71.i:                               ; preds = %do.end8.i70.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i74.i:                              ; preds = %do.end8.i70.i
  %and.i.i.i.i72.i = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i72.i)
  %tobool.i.not.i.i.i73.i = icmp eq i32 %and.i.i.i.i72.i, 0
  br i1 %tobool.i.not.i.i.i73.i, label %sg_set_buf.exit81.i, label %do.body19.i.i.i75.i, !prof !497

do.body19.i.i.i75.i:                              ; preds = %do.body11.i.i.i74.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit81.i:                              ; preds = %do.body11.i.i.i74.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i76.i = and i32 %117, 4095
  %and.i.i.i77.i = and i32 %122, 3
  %or.i.i.i78.i = or i32 %and.i.i.i77.i, %123
  %124 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or.i.i.i78.i, ptr %115, align 4
  %offset1.i.i79.i = getelementptr inbounds %struct.scatterlist, ptr %115, i32 0, i32 1
  %125 = ptrtoint ptr %offset1.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %and.i76.i, ptr %offset1.i.i79.i, align 4
  %length.i.i80.i = getelementptr inbounds %struct.scatterlist, ptr %115, i32 0, i32 2
  %126 = ptrtoint ptr %length.i.i80.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 16, ptr %length.i.i80.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %sg_set_buf.exit81.i, %land.lhs.true.i.if.end14.i_crit_edge, %sg_set_buf.exit.i.if.end14.i_crit_edge
  %127 = ptrtoint ptr %dst_nents to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dst_nents, align 4
  %conv15.i = trunc i32 %128 to i8
  %call16.i = call i32 @spu_msg_sg_add(ptr noundef nonnull %sg.i, ptr noundef %dst_sg, ptr noundef %dst_skip, i8 noundef zeroext %conv15.i, i32 noundef %chunksize.0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %chunksize.0)
  %cmp17.i = icmp ult i32 %call16.i, %chunksize.0
  br i1 %cmp17.i, label %do.end.i, label %if.end21.i

do.end.i:                                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %chunksize.0, i32 noundef %call16.i) #12
  br label %spu_skcipher_rx_sg_create.exit.thread

if.end21.i:                                       ; preds = %if.end14.i
  br i1 %tobool85.not, label %if.end21.i.if.end27.i_crit_edge, label %if.then23.i

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.end21.i
  %129 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %sg.i, align 4
  %incdec.ptr24.i = getelementptr %struct.scatterlist, ptr %130, i32 1
  store ptr %incdec.ptr24.i, ptr %sg.i, align 4
  %rx_stat_pad.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 6
  %131 = ptrtoint ptr %rx_stat_pad.i to i32
  %cmp.i82.i = icmp ugt ptr %rx_stat_pad.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i82.i, label %land.lhs.true.i84.i, label %if.then23.i.do.body5.i91.i_crit_edge, !prof !497

if.then23.i.do.body5.i91.i_crit_edge:             ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i91.i

land.lhs.true.i84.i:                              ; preds = %if.then23.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %132 = load ptr, ptr @high_memory, align 4
  %cmp1.i83.i = icmp ugt ptr %132, %rx_stat_pad.i
  br i1 %cmp1.i83.i, label %land.rhs.i90.i, label %land.lhs.true.i84.i.do.body5.i91.i_crit_edge, !prof !497

land.lhs.true.i84.i.do.body5.i91.i_crit_edge:     ; preds = %land.lhs.true.i84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i91.i

land.rhs.i90.i:                                   ; preds = %land.lhs.true.i84.i
  %sub.i85.i = add i32 %131, 1073741824
  %shr.i86.i = lshr i32 %sub.i85.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %133 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i87.i = add i32 %133, %shr.i86.i
  %call.i88.i = call i32 @pfn_valid(i32 noundef %add.i87.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i)
  %tobool.i89.i = icmp eq i32 %call.i88.i, 0
  br i1 %tobool.i89.i, label %land.rhs.i90.i.do.body5.i91.i_crit_edge, label %do.end8.i95.i, !prof !493

land.rhs.i90.i.do.body5.i91.i_crit_edge:          ; preds = %land.rhs.i90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i91.i

do.body5.i91.i:                                   ; preds = %land.rhs.i90.i.do.body5.i91.i_crit_edge, %land.lhs.true.i84.i.do.body5.i91.i_crit_edge, %if.then23.i.do.body5.i91.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i95.i:                                    ; preds = %land.rhs.i90.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %134 = load ptr, ptr @mem_map, align 4
  %add.ptr.i92.i = getelementptr %struct.page, ptr %134, i32 %shr.i86.i
  %135 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %130, align 4
  %137 = ptrtoint ptr %add.ptr.i92.i to i32
  %and2.i.i.i93.i = and i32 %137, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i93.i)
  %tobool.not.i.i.i94.i = icmp eq i32 %and2.i.i.i93.i, 0
  br i1 %tobool.not.i.i.i94.i, label %do.body11.i.i.i99.i, label %do.body5.i.i.i96.i, !prof !497

do.body5.i.i.i96.i:                               ; preds = %do.end8.i95.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i99.i:                              ; preds = %do.end8.i95.i
  %and.i.i.i.i97.i = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i97.i)
  %tobool.i.not.i.i.i98.i = icmp eq i32 %and.i.i.i.i97.i, 0
  br i1 %tobool.i.not.i.i.i98.i, label %sg_set_buf.exit106.i, label %do.body19.i.i.i100.i, !prof !497

do.body19.i.i.i100.i:                             ; preds = %do.body11.i.i.i99.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit106.i:                             ; preds = %do.body11.i.i.i99.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i101.i = and i32 %131, 4095
  %and.i.i.i102.i = and i32 %136, 3
  %or.i.i.i103.i = or i32 %and.i.i.i102.i, %137
  %138 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %or.i.i.i103.i, ptr %130, align 4
  %offset1.i.i104.i = getelementptr inbounds %struct.scatterlist, ptr %130, i32 0, i32 1
  %139 = ptrtoint ptr %offset1.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %and.i101.i, ptr %offset1.i.i104.i, align 4
  %length.i.i105.i = getelementptr inbounds %struct.scatterlist, ptr %130, i32 0, i32 2
  %140 = ptrtoint ptr %length.i.i105.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %call84, ptr %length.i.i105.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %sg_set_buf.exit106.i, %if.end21.i.if.end27.i_crit_edge
  %rx_stat.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 7
  %141 = ptrtoint ptr %rx_stat.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %rx_stat.i, align 4
  %142 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sg.i, align 4
  %144 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 16), align 4
  %call33.i = call zeroext i8 %144() #9
  %conv34.i = zext i8 %call33.i to i32
  %145 = ptrtoint ptr %rx_stat.i to i32
  %cmp.i107.i = icmp ugt ptr %rx_stat.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i107.i, label %land.lhs.true.i109.i, label %if.end27.i.do.body5.i116.i_crit_edge, !prof !497

if.end27.i.do.body5.i116.i_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i116.i

land.lhs.true.i109.i:                             ; preds = %if.end27.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %146 = load ptr, ptr @high_memory, align 4
  %cmp1.i108.i = icmp ugt ptr %146, %rx_stat.i
  br i1 %cmp1.i108.i, label %land.rhs.i115.i, label %land.lhs.true.i109.i.do.body5.i116.i_crit_edge, !prof !497

land.lhs.true.i109.i.do.body5.i116.i_crit_edge:   ; preds = %land.lhs.true.i109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i116.i

land.rhs.i115.i:                                  ; preds = %land.lhs.true.i109.i
  %sub.i110.i = add i32 %145, 1073741824
  %shr.i111.i = lshr i32 %sub.i110.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %147 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i112.i = add i32 %147, %shr.i111.i
  %call.i113.i = call i32 @pfn_valid(i32 noundef %add.i112.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113.i)
  %tobool.i114.i = icmp eq i32 %call.i113.i, 0
  br i1 %tobool.i114.i, label %land.rhs.i115.i.do.body5.i116.i_crit_edge, label %do.end8.i120.i, !prof !493

land.rhs.i115.i.do.body5.i116.i_crit_edge:        ; preds = %land.rhs.i115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i116.i

do.body5.i116.i:                                  ; preds = %land.rhs.i115.i.do.body5.i116.i_crit_edge, %land.lhs.true.i109.i.do.body5.i116.i_crit_edge, %if.end27.i.do.body5.i116.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i120.i:                                   ; preds = %land.rhs.i115.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %148 = load ptr, ptr @mem_map, align 4
  %add.ptr.i117.i = getelementptr %struct.page, ptr %148, i32 %shr.i111.i
  %149 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %143, align 4
  %151 = ptrtoint ptr %add.ptr.i117.i to i32
  %and2.i.i.i118.i = and i32 %151, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i118.i)
  %tobool.not.i.i.i119.i = icmp eq i32 %and2.i.i.i118.i, 0
  br i1 %tobool.not.i.i.i119.i, label %do.body11.i.i.i124.i, label %do.body5.i.i.i121.i, !prof !497

do.body5.i.i.i121.i:                              ; preds = %do.end8.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i124.i:                             ; preds = %do.end8.i120.i
  %and.i.i.i.i122.i = and i32 %150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i122.i)
  %tobool.i.not.i.i.i123.i = icmp eq i32 %and.i.i.i.i122.i, 0
  br i1 %tobool.i.not.i.i.i123.i, label %if.end130, label %do.body19.i.i.i125.i, !prof !497

do.body19.i.i.i125.i:                             ; preds = %do.body11.i.i.i124.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

spu_skcipher_rx_sg_create.exit.thread:            ; preds = %do.end.i, %if.end126.spu_skcipher_rx_sg_create.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end126.spu_skcipher_rx_sg_create.exit.thread_crit_edge ], [ -14, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i) #9
  br label %cleanup

if.end130:                                        ; preds = %do.body11.i.i.i124.i
  %and.i126.i = and i32 %145, 4095
  %and.i.i.i127.i = and i32 %150, 3
  %or.i.i.i128.i = or i32 %and.i.i.i127.i, %151
  %152 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %or.i.i.i128.i, ptr %143, align 4
  %offset1.i.i129.i = getelementptr inbounds %struct.scatterlist, ptr %143, i32 0, i32 1
  %153 = ptrtoint ptr %offset1.i.i129.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %and.i126.i, ptr %offset1.i.i129.i, align 4
  %length.i.i130.i = getelementptr inbounds %struct.scatterlist, ptr %143, i32 0, i32 2
  %154 = ptrtoint ptr %length.i.i130.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %conv34.i, ptr %length.i.i130.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i) #9
  %155 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %src_nents, align 4
  %add133 = add i32 %156, %tx_frag_num.0
  %conv134 = trunc i32 %add133 to i8
  %157 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  %call135 = call zeroext i8 %157() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call135)
  %tobool136.not = icmp ne i8 %call135, 0
  %inc138 = zext i1 %tobool136.not to i8
  %spec.select292 = add i8 %inc138, %conv134
  %158 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %159)
  %cmp142 = icmp eq i32 %159, 7
  br i1 %cmp142, label %land.lhs.true144, label %if.end130.if.end151_crit_edge

if.end130.if.end151_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

land.lhs.true144:                                 ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %160 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 14), align 4
  %call146 = call zeroext i8 %160() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call146)
  %tobool148.not = icmp ne i8 %call146, 0
  %inc150 = zext i1 %tobool148.not to i8
  %spec.select293 = add i8 %spec.select292, %inc150
  br label %if.end151

if.end151:                                        ; preds = %land.lhs.true144, %if.end130.if.end151_crit_edge
  %tx_frag_num.2 = phi i8 [ %spec.select292, %if.end130.if.end151_crit_edge ], [ %spec.select293, %land.lhs.true144 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg.i295) #9
  %161 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ctx1, align 4
  %conv.i297 = zext i8 %tx_frag_num.2 to i32
  %163 = mul nuw nsw i32 %conv.i297, 20
  %164 = ptrtoint ptr %gfp.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %gfp.i, align 4
  %or.i.i299 = or i32 %165, 256
  %call8.i.i.i333 = call noalias align 128 ptr @__kmalloc(i32 noundef %163, i32 noundef %or.i.i299) #13
  %166 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 14, i32 1
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call8.i.i.i333, ptr %166, align 4
  %tobool.not.i336 = icmp eq ptr %call8.i.i.i333, null
  br i1 %tobool.not.i336, label %if.end151.spu_skcipher_tx_sg_create.exit_crit_edge, label %if.end.i340, !prof !493

if.end151.spu_skcipher_tx_sg_create.exit_crit_edge: ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_skcipher_tx_sg_create.exit

if.end.i340:                                      ; preds = %if.end151
  call void @sg_init_table(ptr noundef nonnull %call8.i.i.i333, i32 noundef %conv.i297) #9
  %incdec.ptr.i338 = getelementptr %struct.scatterlist, ptr %call8.i.i.i333, i32 1
  %168 = ptrtoint ptr %sg.i295 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %incdec.ptr.i338, ptr %sg.i295, align 4
  %169 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %conv8.i = zext i8 %169 to i32
  %spu_req_hdr_len.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %162, i32 0, i32 20
  %170 = ptrtoint ptr %spu_req_hdr_len.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %spu_req_hdr_len.i, align 4
  %conv9.i = zext i16 %171 to i32
  %add.i = add nuw nsw i32 %conv9.i, %conv8.i
  %172 = ptrtoint ptr %msg_buf72 to i32
  %cmp.i.i339 = icmp ugt ptr %msg_buf72, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i339, label %land.lhs.true.i.i342, label %if.end.i340.do.body5.i.i349_crit_edge, !prof !497

if.end.i340.do.body5.i.i349_crit_edge:            ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i349

land.lhs.true.i.i342:                             ; preds = %if.end.i340
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %173 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i341 = icmp ugt ptr %173, %msg_buf72
  br i1 %cmp1.i.i341, label %land.rhs.i.i348, label %land.lhs.true.i.i342.do.body5.i.i349_crit_edge, !prof !497

land.lhs.true.i.i342.do.body5.i.i349_crit_edge:   ; preds = %land.lhs.true.i.i342
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i349

land.rhs.i.i348:                                  ; preds = %land.lhs.true.i.i342
  %sub.i.i343 = add i32 %172, 1073741824
  %shr.i.i344 = lshr i32 %sub.i.i343, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %174 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i345 = add i32 %174, %shr.i.i344
  %call.i.i346 = call i32 @pfn_valid(i32 noundef %add.i.i345) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i346)
  %tobool.i.i347 = icmp eq i32 %call.i.i346, 0
  br i1 %tobool.i.i347, label %land.rhs.i.i348.do.body5.i.i349_crit_edge, label %do.end8.i.i353, !prof !493

land.rhs.i.i348.do.body5.i.i349_crit_edge:        ; preds = %land.rhs.i.i348
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i349

do.body5.i.i349:                                  ; preds = %land.rhs.i.i348.do.body5.i.i349_crit_edge, %land.lhs.true.i.i342.do.body5.i.i349_crit_edge, %if.end.i340.do.body5.i.i349_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i.i353:                                   ; preds = %land.rhs.i.i348
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %175 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i350 = getelementptr %struct.page, ptr %175, i32 %shr.i.i344
  %176 = ptrtoint ptr %call8.i.i.i333 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %call8.i.i.i333, align 128
  %178 = ptrtoint ptr %add.ptr.i.i350 to i32
  %and2.i.i.i.i351 = and i32 %178, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i351)
  %tobool.not.i.i.i.i352 = icmp eq i32 %and2.i.i.i.i351, 0
  br i1 %tobool.not.i.i.i.i352, label %do.body11.i.i.i.i356, label %do.body5.i.i.i.i354, !prof !497

do.body5.i.i.i.i354:                              ; preds = %do.end8.i.i353
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i.i356:                             ; preds = %do.end8.i.i353
  %and.i.i.i.i70.i = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i70.i)
  %tobool.i.not.i.i.i.i355 = icmp eq i32 %and.i.i.i.i70.i, 0
  br i1 %tobool.i.not.i.i.i.i355, label %sg_set_buf.exit.i365, label %do.body19.i.i.i.i357, !prof !497

do.body19.i.i.i.i357:                             ; preds = %do.body11.i.i.i.i356
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit.i365:                             ; preds = %do.body11.i.i.i.i356
  %and.i.i358 = and i32 %172, 4095
  %and.i.i.i.i359 = and i32 %177, 3
  %or.i.i.i.i360 = or i32 %and.i.i.i.i359, %178
  %179 = ptrtoint ptr %call8.i.i.i333 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %or.i.i.i.i360, ptr %call8.i.i.i333, align 128
  %offset1.i.i.i361 = getelementptr inbounds %struct.scatterlist, ptr %call8.i.i.i333, i32 0, i32 1
  %180 = ptrtoint ptr %offset1.i.i.i361 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %and.i.i358, ptr %offset1.i.i.i361, align 4
  %length.i.i.i362 = getelementptr inbounds %struct.scatterlist, ptr %call8.i.i.i333, i32 0, i32 2
  %181 = ptrtoint ptr %length.i.i.i362 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %add.i, ptr %length.i.i.i362, align 8
  %mode.i363 = getelementptr inbounds %struct.iproc_ctx_s, ptr %162, i32 0, i32 11, i32 1
  %182 = ptrtoint ptr %mode.i363 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %mode.i363, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %183)
  %cmp.i364 = icmp eq i32 %183, 7
  br i1 %cmp.i364, label %land.lhs.true.i366, label %sg_set_buf.exit.i365.if.end18.i_crit_edge

sg_set_buf.exit.i365.if.end18.i_crit_edge:        ; preds = %sg_set_buf.exit.i365
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

land.lhs.true.i366:                               ; preds = %sg_set_buf.exit.i365
  %184 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 14), align 4
  %call11.i = call zeroext i8 %184() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call11.i)
  %tobool13.not.i = icmp eq i8 %call11.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i366.if.end18.i_crit_edge, label %if.then14.i

land.lhs.true.i366.if.end18.i_crit_edge:          ; preds = %land.lhs.true.i366
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then14.i:                                      ; preds = %land.lhs.true.i366
  %185 = ptrtoint ptr %sg.i295 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %sg.i295, align 4
  %incdec.ptr15.i = getelementptr %struct.scatterlist, ptr %186, i32 1
  store ptr %incdec.ptr15.i, ptr %sg.i295, align 4
  %iv_ctr.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 1
  %187 = ptrtoint ptr %iv_ctr.i to i32
  %cmp.i71.i = icmp ugt ptr %iv_ctr.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i71.i, label %land.lhs.true.i73.i, label %if.then14.i.do.body5.i80.i_crit_edge, !prof !497

if.then14.i.do.body5.i80.i_crit_edge:             ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i80.i

land.lhs.true.i73.i:                              ; preds = %if.then14.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %188 = load ptr, ptr @high_memory, align 4
  %cmp1.i72.i = icmp ugt ptr %188, %iv_ctr.i
  br i1 %cmp1.i72.i, label %land.rhs.i79.i, label %land.lhs.true.i73.i.do.body5.i80.i_crit_edge, !prof !497

land.lhs.true.i73.i.do.body5.i80.i_crit_edge:     ; preds = %land.lhs.true.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i80.i

land.rhs.i79.i:                                   ; preds = %land.lhs.true.i73.i
  %sub.i74.i = add i32 %187, 1073741824
  %shr.i75.i = lshr i32 %sub.i74.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %189 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i76.i = add i32 %189, %shr.i75.i
  %call.i77.i = call i32 @pfn_valid(i32 noundef %add.i76.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %tobool.i78.i = icmp eq i32 %call.i77.i, 0
  br i1 %tobool.i78.i, label %land.rhs.i79.i.do.body5.i80.i_crit_edge, label %do.end8.i84.i, !prof !493

land.rhs.i79.i.do.body5.i80.i_crit_edge:          ; preds = %land.rhs.i79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i80.i

do.body5.i80.i:                                   ; preds = %land.rhs.i79.i.do.body5.i80.i_crit_edge, %land.lhs.true.i73.i.do.body5.i80.i_crit_edge, %if.then14.i.do.body5.i80.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i84.i:                                    ; preds = %land.rhs.i79.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %190 = load ptr, ptr @mem_map, align 4
  %add.ptr.i81.i = getelementptr %struct.page, ptr %190, i32 %shr.i75.i
  %191 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %186, align 4
  %193 = ptrtoint ptr %add.ptr.i81.i to i32
  %and2.i.i.i82.i = and i32 %193, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i82.i)
  %tobool.not.i.i.i83.i = icmp eq i32 %and2.i.i.i82.i, 0
  br i1 %tobool.not.i.i.i83.i, label %do.body11.i.i.i88.i, label %do.body5.i.i.i85.i, !prof !497

do.body5.i.i.i85.i:                               ; preds = %do.end8.i84.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i88.i:                              ; preds = %do.end8.i84.i
  %and.i.i.i.i86.i = and i32 %192, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i86.i)
  %tobool.i.not.i.i.i87.i = icmp eq i32 %and.i.i.i.i86.i, 0
  br i1 %tobool.i.not.i.i.i87.i, label %sg_set_buf.exit95.i, label %do.body19.i.i.i89.i, !prof !497

do.body19.i.i.i89.i:                              ; preds = %do.body11.i.i.i88.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit95.i:                              ; preds = %do.body11.i.i.i88.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i90.i = and i32 %187, 4095
  %and.i.i.i91.i = and i32 %192, 3
  %or.i.i.i92.i = or i32 %and.i.i.i91.i, %193
  %194 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %or.i.i.i92.i, ptr %186, align 4
  %offset1.i.i93.i = getelementptr inbounds %struct.scatterlist, ptr %186, i32 0, i32 1
  %195 = ptrtoint ptr %offset1.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %and.i90.i, ptr %offset1.i.i93.i, align 4
  %length.i.i94.i = getelementptr inbounds %struct.scatterlist, ptr %186, i32 0, i32 2
  %196 = ptrtoint ptr %length.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 16, ptr %length.i.i94.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %sg_set_buf.exit95.i, %land.lhs.true.i366.if.end18.i_crit_edge, %sg_set_buf.exit.i365.if.end18.i_crit_edge
  %197 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %src_nents, align 4
  %conv19.i = trunc i32 %198 to i8
  %call20.i367 = call i32 @spu_msg_sg_add(ptr noundef nonnull %sg.i295, ptr noundef %src_sg, ptr noundef %src_skip, i8 noundef zeroext %conv19.i, i32 noundef %chunksize.0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i367, i32 %chunksize.0)
  %cmp21.i = icmp ult i32 %call20.i367, %chunksize.0
  br i1 %cmp21.i, label %do.end.i368, label %if.end31.i, !prof !493

do.end.i368:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #12
  br label %spu_skcipher_tx_sg_create.exit

if.end31.i:                                       ; preds = %if.end18.i
  br i1 %tobool85.not, label %if.end31.i.if.end37.i_crit_edge, label %if.then33.i

if.end31.i.if.end37.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then33.i:                                      ; preds = %if.end31.i
  %199 = ptrtoint ptr %sg.i295 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %sg.i295, align 4
  %incdec.ptr34.i = getelementptr %struct.scatterlist, ptr %200, i32 1
  store ptr %incdec.ptr34.i, ptr %sg.i295, align 4
  %spu_req_pad.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 3
  %201 = ptrtoint ptr %spu_req_pad.i to i32
  %cmp.i96.i = icmp ugt ptr %spu_req_pad.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i96.i, label %land.lhs.true.i98.i, label %if.then33.i.do.body5.i105.i_crit_edge, !prof !497

if.then33.i.do.body5.i105.i_crit_edge:            ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i105.i

land.lhs.true.i98.i:                              ; preds = %if.then33.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %202 = load ptr, ptr @high_memory, align 4
  %cmp1.i97.i = icmp ugt ptr %202, %spu_req_pad.i
  br i1 %cmp1.i97.i, label %land.rhs.i104.i, label %land.lhs.true.i98.i.do.body5.i105.i_crit_edge, !prof !497

land.lhs.true.i98.i.do.body5.i105.i_crit_edge:    ; preds = %land.lhs.true.i98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i105.i

land.rhs.i104.i:                                  ; preds = %land.lhs.true.i98.i
  %sub.i99.i = add i32 %201, 1073741824
  %shr.i100.i = lshr i32 %sub.i99.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %203 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i101.i = add i32 %203, %shr.i100.i
  %call.i102.i = call i32 @pfn_valid(i32 noundef %add.i101.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102.i)
  %tobool.i103.i = icmp eq i32 %call.i102.i, 0
  br i1 %tobool.i103.i, label %land.rhs.i104.i.do.body5.i105.i_crit_edge, label %do.end8.i109.i, !prof !493

land.rhs.i104.i.do.body5.i105.i_crit_edge:        ; preds = %land.rhs.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i105.i

do.body5.i105.i:                                  ; preds = %land.rhs.i104.i.do.body5.i105.i_crit_edge, %land.lhs.true.i98.i.do.body5.i105.i_crit_edge, %if.then33.i.do.body5.i105.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i109.i:                                   ; preds = %land.rhs.i104.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %204 = load ptr, ptr @mem_map, align 4
  %add.ptr.i106.i = getelementptr %struct.page, ptr %204, i32 %shr.i100.i
  %205 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %200, align 4
  %207 = ptrtoint ptr %add.ptr.i106.i to i32
  %and2.i.i.i107.i = and i32 %207, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i107.i)
  %tobool.not.i.i.i108.i = icmp eq i32 %and2.i.i.i107.i, 0
  br i1 %tobool.not.i.i.i108.i, label %do.body11.i.i.i113.i, label %do.body5.i.i.i110.i, !prof !497

do.body5.i.i.i110.i:                              ; preds = %do.end8.i109.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i113.i:                             ; preds = %do.end8.i109.i
  %and.i.i.i.i111.i = and i32 %206, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i111.i)
  %tobool.i.not.i.i.i112.i = icmp eq i32 %and.i.i.i.i111.i, 0
  br i1 %tobool.i.not.i.i.i112.i, label %sg_set_buf.exit120.i, label %do.body19.i.i.i114.i, !prof !497

do.body19.i.i.i114.i:                             ; preds = %do.body11.i.i.i113.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit120.i:                             ; preds = %do.body11.i.i.i113.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i115.i = and i32 %201, 4095
  %and.i.i.i116.i = and i32 %206, 3
  %or.i.i.i117.i = or i32 %and.i.i.i116.i, %207
  %208 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %or.i.i.i117.i, ptr %200, align 4
  %offset1.i.i118.i = getelementptr inbounds %struct.scatterlist, ptr %200, i32 0, i32 1
  %209 = ptrtoint ptr %offset1.i.i118.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %and.i115.i, ptr %offset1.i.i118.i, align 4
  %length.i.i119.i = getelementptr inbounds %struct.scatterlist, ptr %200, i32 0, i32 2
  %210 = ptrtoint ptr %length.i.i119.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %call84, ptr %length.i.i119.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %sg_set_buf.exit120.i, %if.end31.i.if.end37.i_crit_edge
  %211 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  %call38.i = call zeroext i8 %211() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call38.i)
  %tobool40.not.i = icmp eq i8 %call38.i, 0
  br i1 %tobool40.not.i, label %if.end37.i.if.end155_crit_edge, label %if.then41.i

if.end37.i.if.end155_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

if.then41.i:                                      ; preds = %if.end37.i
  %conv39.i = zext i8 %call38.i to i32
  %tx_stat.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 4
  %212 = call ptr @memset(ptr %tx_stat.i, i32 0, i32 %conv39.i)
  %213 = ptrtoint ptr %sg.i295 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %sg.i295, align 4
  %215 = ptrtoint ptr %tx_stat.i to i32
  %cmp.i121.i = icmp ugt ptr %tx_stat.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i121.i, label %land.lhs.true.i123.i, label %if.then41.i.do.body5.i130.i_crit_edge, !prof !497

if.then41.i.do.body5.i130.i_crit_edge:            ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i130.i

land.lhs.true.i123.i:                             ; preds = %if.then41.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %216 = load ptr, ptr @high_memory, align 4
  %cmp1.i122.i = icmp ugt ptr %216, %tx_stat.i
  br i1 %cmp1.i122.i, label %land.rhs.i129.i, label %land.lhs.true.i123.i.do.body5.i130.i_crit_edge, !prof !497

land.lhs.true.i123.i.do.body5.i130.i_crit_edge:   ; preds = %land.lhs.true.i123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i130.i

land.rhs.i129.i:                                  ; preds = %land.lhs.true.i123.i
  %sub.i124.i = add i32 %215, 1073741824
  %shr.i125.i = lshr i32 %sub.i124.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %217 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i126.i = add i32 %217, %shr.i125.i
  %call.i127.i = call i32 @pfn_valid(i32 noundef %add.i126.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127.i)
  %tobool.i128.i = icmp eq i32 %call.i127.i, 0
  br i1 %tobool.i128.i, label %land.rhs.i129.i.do.body5.i130.i_crit_edge, label %do.end8.i134.i, !prof !493

land.rhs.i129.i.do.body5.i130.i_crit_edge:        ; preds = %land.rhs.i129.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i130.i

do.body5.i130.i:                                  ; preds = %land.rhs.i129.i.do.body5.i130.i_crit_edge, %land.lhs.true.i123.i.do.body5.i130.i_crit_edge, %if.then41.i.do.body5.i130.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i134.i:                                   ; preds = %land.rhs.i129.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %218 = load ptr, ptr @mem_map, align 4
  %add.ptr.i131.i = getelementptr %struct.page, ptr %218, i32 %shr.i125.i
  %219 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %214, align 4
  %221 = ptrtoint ptr %add.ptr.i131.i to i32
  %and2.i.i.i132.i = and i32 %221, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i132.i)
  %tobool.not.i.i.i133.i = icmp eq i32 %and2.i.i.i132.i, 0
  br i1 %tobool.not.i.i.i133.i, label %do.body11.i.i.i138.i, label %do.body5.i.i.i135.i, !prof !497

do.body5.i.i.i135.i:                              ; preds = %do.end8.i134.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i138.i:                             ; preds = %do.end8.i134.i
  %and.i.i.i.i136.i = and i32 %220, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i136.i)
  %tobool.i.not.i.i.i137.i = icmp eq i32 %and.i.i.i.i136.i, 0
  br i1 %tobool.i.not.i.i.i137.i, label %sg_set_buf.exit145.i, label %do.body19.i.i.i139.i, !prof !497

do.body19.i.i.i139.i:                             ; preds = %do.body11.i.i.i138.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit145.i:                             ; preds = %do.body11.i.i.i138.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i140.i = and i32 %215, 4095
  %and.i.i.i141.i = and i32 %220, 3
  %or.i.i.i142.i = or i32 %and.i.i.i141.i, %221
  %222 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %or.i.i.i142.i, ptr %214, align 4
  %offset1.i.i143.i = getelementptr inbounds %struct.scatterlist, ptr %214, i32 0, i32 1
  %223 = ptrtoint ptr %offset1.i.i143.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %and.i140.i, ptr %offset1.i.i143.i, align 4
  %length.i.i144.i = getelementptr inbounds %struct.scatterlist, ptr %214, i32 0, i32 2
  %224 = ptrtoint ptr %length.i.i144.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %conv39.i, ptr %length.i.i144.i, align 4
  br label %if.end155

spu_skcipher_tx_sg_create.exit:                   ; preds = %do.end.i368, %if.end151.spu_skcipher_tx_sg_create.exit_crit_edge
  %retval.0.i369 = phi i32 [ -14, %do.end.i368 ], [ -12, %if.end151.spu_skcipher_tx_sg_create.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i295) #9
  br label %cleanup

if.end155:                                        ; preds = %sg_set_buf.exit145.i, %if.end37.i.if.end155_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i295) #9
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 4
  %225 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %flags, align 4
  %chan_idx = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 2
  %227 = ptrtoint ptr %chan_idx to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %chan_idx, align 4
  %call156 = call fastcc i32 @mailbox_send_message(ptr noundef %mb_mssg, i32 noundef %226, i8 noundef zeroext %228)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  %call156. = select i1 %cmp157, i32 %call156, i32 -115, !prof !493
  br label %cleanup

cleanup:                                          ; preds = %if.end155, %spu_skcipher_tx_sg_create.exit, %spu_skcipher_rx_sg_create.exit.thread
  %retval.0 = phi i32 [ %retval.0.i369, %spu_skcipher_tx_sg_create.exit ], [ %call156., %if.end155 ], [ %retval.0.i.ph, %spu_skcipher_rx_sg_create.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_iv_ctr) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cipher_parms) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_ahash_req(ptr noundef %rctx) unnamed_addr #2 align 64 {
entry:
  %sg.i = alloca ptr, align 4
  %req_opts = alloca %struct.spu_request_opts, align 1
  %cipher_parms = alloca %struct.spu_cipher_parms, align 4
  %hash_parms = alloca %struct.spu_hash_parms, align 4
  %aead_parms = alloca %struct.spu_aead_parms, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rctx, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize.i, align 4
  %ctx4 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 1
  %8 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx4, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %req_opts) #9
  %10 = getelementptr inbounds %struct.spu_request_opts, ptr %req_opts, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cipher_parms) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %hash_parms) #9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %aead_parms) #9
  %total_todo = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 3
  %total_sent = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 5
  %11 = call ptr @memset(ptr %req_opts, i32 0, i32 6)
  %12 = call ptr @memset(ptr %cipher_parms, i32 0, i32 28)
  %13 = getelementptr inbounds i8, ptr %hash_parms, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 20)
  %15 = call ptr @memset(ptr %aead_parms, i32 0, i32 20)
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %10, align 1
  %auth = getelementptr inbounds %struct.iproc_ctx_s, ptr %9, i32 0, i32 13
  %17 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %auth, align 4
  %19 = ptrtoint ptr %hash_parms to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %hash_parms, align 4
  %mode = getelementptr inbounds %struct.iproc_ctx_s, ptr %9, i32 0, i32 13, i32 1
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 4
  %mode7 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 1
  %22 = ptrtoint ptr %mode7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %mode7, align 4
  %type = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 2
  %authkey = getelementptr inbounds %struct.iproc_ctx_s, ptr %9, i32 0, i32 2
  %key_buf = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 4
  %23 = ptrtoint ptr %key_buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %authkey, ptr %key_buf, align 4
  %authkeylen = getelementptr inbounds %struct.iproc_ctx_s, ptr %9, i32 0, i32 3
  %24 = ptrtoint ptr %authkeylen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %authkeylen, align 4
  %conv = trunc i32 %25 to i16
  %key_len = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 5
  %26 = ptrtoint ptr %key_len to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %key_len, align 4
  %cipher_type = getelementptr inbounds %struct.iproc_ctx_s, ptr %9, i32 0, i32 12
  %27 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cipher_type, align 4
  %type8 = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 2
  %29 = ptrtoint ptr %type8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %type8, align 4
  %mb_mssg = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 14
  %src_sent = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 6
  %30 = ptrtoint ptr %total_todo to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %total_todo, align 4
  %32 = ptrtoint ptr %total_sent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %total_sent, align 4
  %sub = sub i32 %31, %33
  %max_payload = getelementptr inbounds %struct.iproc_ctx_s, ptr %9, i32 0, i32 15
  %34 = ptrtoint ptr %max_payload to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.not = icmp ne i32 %35, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %35)
  %cmp13 = icmp ugt i32 %sub, %35
  %or.cond = select i1 %cmp.not, i1 %cmp13, i1 false
  %chunksize.0 = select i1 %or.cond, i32 %35, i32 %sub
  %is_final = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 21
  %36 = ptrtoint ptr %is_final to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %is_final, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not = icmp eq i32 %37, 0
  br i1 %tobool.not, label %if.then16, label %entry.if.end42_crit_edge

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then16:                                        ; preds = %entry
  %hash_carry = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 19
  %hash_carry_len = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 20
  %38 = ptrtoint ptr %hash_carry_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hash_carry_len, align 4
  %add.ptr = getelementptr i8, ptr %hash_carry, i32 %39
  %rem18 = urem i32 %chunksize.0, %7
  %conv19 = trunc i32 %rem18 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv19)
  %tobool20.not = icmp eq i16 %conv19, 0
  br i1 %tobool20.not, label %if.then16.if.end42_crit_edge, label %if.then21

if.then16.if.end42_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then21:                                        ; preds = %if.then16
  %conv22 = and i32 %rem18, 65535
  %sub23 = sub i32 %chunksize.0, %conv22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23)
  %cmp24 = icmp eq i32 %sub23, 0
  br i1 %cmp24, label %cleanup, label %if.then21.if.end42_crit_edge

if.then21.if.end42_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

cleanup:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %sub29 = sub i32 %rem18, %39
  %src = getelementptr inbounds %struct.ahash_request, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %src, align 4
  %conv31 = and i32 %sub29, 65535
  %42 = ptrtoint ptr %src_sent to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %src_sent, align 4
  tail call void @sg_copy_part_to_buf(ptr noundef %41, ptr noundef %add.ptr, i32 noundef %conv31, i32 noundef %43) #9
  %44 = ptrtoint ptr %hash_carry_len to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv22, ptr %hash_carry_len, align 4
  br label %cleanup188

if.end42:                                         ; preds = %if.then21.if.end42_crit_edge, %if.then16.if.end42_crit_edge, %entry.if.end42_crit_edge
  %chunksize.3 = phi i32 [ %chunksize.0, %entry.if.end42_crit_edge ], [ %chunksize.0, %if.then16.if.end42_crit_edge ], [ %sub23, %if.then21.if.end42_crit_edge ]
  %hash_carry_len43 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 20
  %45 = ptrtoint ptr %hash_carry_len43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hash_carry_len43, align 4
  store i32 0, ptr %hash_carry_len43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool45.not = icmp eq i32 %46, 0
  %spec.select = select i1 %tobool45.not, i8 1, i8 2
  %sub48 = sub i32 %chunksize.3, %46
  %src_sg = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 8
  %47 = ptrtoint ptr %src_sg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %src_sg, align 4
  %src_skip = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 10
  %49 = ptrtoint ptr %src_skip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %src_skip, align 4
  %call49 = tail call i32 @spu_sg_count(ptr noundef %48, i32 noundef %50, i32 noundef %sub48) #9
  %src_nents = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 9
  %51 = ptrtoint ptr %src_nents to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call49, ptr %src_nents, align 4
  %52 = ptrtoint ptr %hash_parms to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hash_parms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %53)
  %cmp51 = icmp eq i32 %53, 5
  br i1 %cmp51, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %type8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %type8, align 4
  br label %if.end59

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %56 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 8), align 4
  %57 = ptrtoint ptr %total_sent to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %total_sent, align 4
  %call57 = tail call i32 %56(i32 noundef %58) #9
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then53
  %storemerge = phi i32 [ %call57, %if.else ], [ %55, %if.then53 ]
  %59 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %storemerge, ptr %type, align 4
  %60 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 9), align 8
  %digestsize60 = getelementptr inbounds %struct.iproc_ctx_s, ptr %9, i32 0, i32 8
  %61 = ptrtoint ptr %digestsize60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %digestsize60, align 4
  %63 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %auth, align 4
  %call64 = tail call i32 %60(i32 noundef %62, i32 noundef %64, i32 noundef %storemerge) #9
  %conv65 = trunc i32 %call64 to i8
  %digestsize66 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 3
  %65 = ptrtoint ptr %digestsize66 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv65, ptr %digestsize66, align 4
  %66 = ptrtoint ptr %total_sent to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %total_sent, align 4
  %add = add i32 %67, %chunksize.3
  store i32 %add, ptr %total_sent, align 4
  %68 = ptrtoint ptr %src_sent to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %src_sent, align 4
  %add69 = add i32 %69, %sub48
  store i32 %add69, ptr %src_sent, align 4
  %70 = ptrtoint ptr %total_todo to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %total_todo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %71)
  %cmp72 = icmp eq i32 %add, %71
  br i1 %cmp72, label %land.lhs.true74, label %if.end59.if.end84_crit_edge

if.end59.if.end84_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

land.lhs.true74:                                  ; preds = %if.end59
  %72 = ptrtoint ptr %is_final to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %is_final, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool76.not = icmp eq i32 %73, 0
  br i1 %tobool76.not, label %land.lhs.true74.if.end84_crit_edge, label %if.then77

land.lhs.true74.if.end84_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then77:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  %74 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 4), align 4
  %75 = ptrtoint ptr %hash_parms to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hash_parms, align 4
  %77 = ptrtoint ptr %mode7 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mode7, align 4
  %conv80 = trunc i32 %7 to i16
  %call81 = tail call zeroext i16 %74(i32 noundef %76, i32 noundef %78, i32 noundef %chunksize.3, i16 noundef zeroext %conv80) #9
  %conv82 = zext i16 %call81 to i32
  %pad_len83 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 7
  %79 = ptrtoint ptr %pad_len83 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv82, ptr %pad_len83, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then77, %land.lhs.true74.if.end84_crit_edge, %if.end59.if.end84_crit_edge
  %80 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %cmp86 = icmp eq i32 %81, 2
  br i1 %cmp86, label %land.lhs.true88, label %if.end84.if.end97_crit_edge

if.end84.if.end97_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

land.lhs.true88:                                  ; preds = %if.end84
  %82 = ptrtoint ptr %hash_parms to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %hash_parms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %83)
  %cmp90.not = icmp eq i32 %83, 5
  br i1 %cmp90.not, label %land.lhs.true88.if.end97_crit_edge, label %if.then92

land.lhs.true88.if.end97_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then92:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #11
  %incr_hash = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 22
  %84 = ptrtoint ptr %key_buf to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %incr_hash, ptr %key_buf, align 4
  %conv95 = trunc i32 %call64 to i16
  %85 = ptrtoint ptr %key_len to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv95, ptr %key_len, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then92, %land.lhs.true88.if.end97_crit_edge, %if.end84.if.end97_crit_edge
  %conv98 = zext i32 %chunksize.3 to i64
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9), i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef %conv98, ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9)) #9
  %msg_buf = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28
  %86 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %conv108 = zext i8 %86 to i32
  %87 = call ptr @memcpy(ptr %msg_buf, ptr @BCMHEADER, i32 %conv108)
  %conv109 = trunc i32 %46 to i16
  %prebuf_len = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 6
  %88 = ptrtoint ptr %prebuf_len to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv109, ptr %prebuf_len, align 2
  %89 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 10), align 4
  %add.ptr114 = getelementptr i8, ptr %msg_buf, i32 %conv108
  %call115 = call i32 %89(ptr noundef %add.ptr114, ptr noundef nonnull %req_opts, ptr noundef nonnull %cipher_parms, ptr noundef nonnull %hash_parms, ptr noundef nonnull %aead_parms, i32 noundef %sub48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %do.end, label %if.end120

do.end:                                           ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #12
  br label %cleanup188

if.end120:                                        ; preds = %if.end97
  %90 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  %mode121 = getelementptr inbounds %struct.iproc_ctx_s, ptr %9, i32 0, i32 11, i32 1
  %91 = ptrtoint ptr %mode121 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mode121, align 4
  %call122 = call i32 %90(i32 noundef %92, i32 noundef %chunksize.3) #9
  %pad_len123 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 7
  %93 = ptrtoint ptr %pad_len123 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pad_len123, align 4
  %95 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  %call125 = call zeroext i8 %95() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call125)
  %tobool126.not = icmp eq i8 %call125, 0
  br i1 %tobool126.not, label %if.end120.if.end129_crit_edge, label %if.then127

if.end120.if.end129_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then127:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  %add5.i = add i32 %94, %chunksize.3
  %96 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 19), align 8
  %call128 = call i32 %96(i32 noundef %add5.i) #9
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %if.end120.if.end129_crit_edge
  %stat_pad_len.0 = phi i32 [ %call128, %if.then127 ], [ 0, %if.end120.if.end129_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat_pad_len.0)
  %tobool130.not = icmp eq i32 %stat_pad_len.0, 0
  %97 = ptrtoint ptr %pad_len123 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pad_len123, align 4
  %add135 = add i32 %stat_pad_len.0, %call122
  %add136 = add i32 %add135, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add136)
  %tobool137.not = icmp eq i32 %add136, 0
  br i1 %tobool137.not, label %if.end129.if.end148_crit_edge, label %if.then138

if.end129.if.end148_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.then138:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %inc139 = add nuw nsw i8 %spec.select, 1
  %99 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 13), align 8
  %spu_req_pad = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 3
  %100 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %auth, align 4
  %102 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mode, align 4
  %104 = ptrtoint ptr %total_sent to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %total_sent, align 4
  call void %99(ptr noundef %spu_req_pad, i32 noundef %call122, i32 noundef %98, i32 noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %stat_pad_len.0) #9
  br label %if.end148

if.end148:                                        ; preds = %if.then138, %if.end129.if.end148_crit_edge
  %tx_frag_num.1 = phi i8 [ %inc139, %if.then138 ], [ %spec.select, %if.end129.if.end148_crit_edge ]
  %106 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1), align 4
  %107 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %conv152 = zext i8 %107 to i32
  %add.ptr153 = getelementptr i8, ptr %msg_buf, i32 %conv152
  call void %106(ptr noundef %add.ptr153, i32 noundef %call115) #9
  %108 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 14, i32 1
  %109 = call ptr @memset(ptr %108, i32 0, i32 20)
  %110 = ptrtoint ptr %mb_mssg to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 2, ptr %mb_mssg, align 4
  %ctx162 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 14, i32 2
  %111 = ptrtoint ptr %ctx162 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %rctx, ptr %ctx162, align 4
  %112 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ctx4, align 4
  %conv.i = select i1 %tobool130.not, i32 3, i32 4
  %gfp.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 27
  %114 = mul nuw nsw i32 %conv.i, 20
  %115 = ptrtoint ptr %gfp.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %gfp.i, align 4
  %or.i.i = or i32 %116, 256
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %114, i32 noundef %or.i.i) #13
  %dst.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 14, i32 1, i32 0, i32 1
  %117 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call8.i.i.i, ptr %dst.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end148.cleanup188_crit_edge, label %if.end.i

if.end148.cleanup188_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup188

if.end.i:                                         ; preds = %if.end148
  call void @sg_init_table(ptr noundef nonnull %call8.i.i.i, i32 noundef %conv.i) #9
  %incdec.ptr.i = getelementptr %struct.scatterlist, ptr %call8.i.i.i, i32 1
  %spu_resp_hdr.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 5
  %spu_resp_hdr_len.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %113, i32 0, i32 21
  %118 = ptrtoint ptr %spu_resp_hdr_len.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %spu_resp_hdr_len.i, align 2
  %conv5.i = zext i16 %119 to i32
  %120 = ptrtoint ptr %spu_resp_hdr.i to i32
  %cmp.i.i = icmp ugt ptr %spu_resp_hdr.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.do.body5.i.i_crit_edge, !prof !497

if.end.i.do.body5.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %121 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %121, %spu_resp_hdr.i
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !497

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %120, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %122 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %122, %shr.i.i
  %call.i.i335 = call i32 @pfn_valid(i32 noundef %add.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i335)
  %tobool.i.i = icmp eq i32 %call.i.i335, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !493

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %if.end.i.do.body5.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %123 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i336 = getelementptr %struct.page, ptr %123, i32 %shr.i.i
  %124 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %call8.i.i.i, align 128
  %126 = ptrtoint ptr %add.ptr.i.i336 to i32
  %and2.i.i.i.i = and i32 %126, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !497

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i38.i = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i38.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i38.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_set_buf.exit.i, label %do.body19.i.i.i.i, !prof !497

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit.i:                                ; preds = %do.body11.i.i.i.i
  %and.i.i = and i32 %120, 4095
  %and.i.i.i.i = and i32 %125, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %126
  %127 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %or.i.i.i.i, ptr %call8.i.i.i, align 128
  %offset1.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call8.i.i.i, i32 0, i32 1
  %128 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %and.i.i, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call8.i.i.i, i32 0, i32 2
  %129 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %conv5.i, ptr %length.i.i.i, align 8
  %incdec.ptr6.i = getelementptr %struct.scatterlist, ptr %call8.i.i.i, i32 2
  %digest.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 2
  %130 = ptrtoint ptr %digest.i to i32
  %cmp.i39.i = icmp ugt ptr %digest.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i39.i, label %land.lhs.true.i41.i, label %sg_set_buf.exit.i.do.body5.i48.i_crit_edge, !prof !497

sg_set_buf.exit.i.do.body5.i48.i_crit_edge:       ; preds = %sg_set_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i48.i

land.lhs.true.i41.i:                              ; preds = %sg_set_buf.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %131 = load ptr, ptr @high_memory, align 4
  %cmp1.i40.i = icmp ugt ptr %131, %digest.i
  br i1 %cmp1.i40.i, label %land.rhs.i47.i, label %land.lhs.true.i41.i.do.body5.i48.i_crit_edge, !prof !497

land.lhs.true.i41.i.do.body5.i48.i_crit_edge:     ; preds = %land.lhs.true.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i48.i

land.rhs.i47.i:                                   ; preds = %land.lhs.true.i41.i
  %sub.i42.i = add i32 %130, 1073741824
  %shr.i43.i = lshr i32 %sub.i42.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %132 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i44.i = add i32 %132, %shr.i43.i
  %call.i45.i = call i32 @pfn_valid(i32 noundef %add.i44.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i)
  %tobool.i46.i = icmp eq i32 %call.i45.i, 0
  br i1 %tobool.i46.i, label %land.rhs.i47.i.do.body5.i48.i_crit_edge, label %do.end8.i52.i, !prof !493

land.rhs.i47.i.do.body5.i48.i_crit_edge:          ; preds = %land.rhs.i47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i48.i

do.body5.i48.i:                                   ; preds = %land.rhs.i47.i.do.body5.i48.i_crit_edge, %land.lhs.true.i41.i.do.body5.i48.i_crit_edge, %sg_set_buf.exit.i.do.body5.i48.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i52.i:                                    ; preds = %land.rhs.i47.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %133 = load ptr, ptr @mem_map, align 4
  %add.ptr.i49.i = getelementptr %struct.page, ptr %133, i32 %shr.i43.i
  %134 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %incdec.ptr.i, align 4
  %136 = ptrtoint ptr %add.ptr.i49.i to i32
  %and2.i.i.i50.i = and i32 %136, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i50.i)
  %tobool.not.i.i.i51.i = icmp eq i32 %and2.i.i.i50.i, 0
  br i1 %tobool.not.i.i.i51.i, label %do.body11.i.i.i56.i, label %do.body5.i.i.i53.i, !prof !497

do.body5.i.i.i53.i:                               ; preds = %do.end8.i52.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i56.i:                              ; preds = %do.end8.i52.i
  %and.i.i.i.i54.i = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i54.i)
  %tobool.i.not.i.i.i55.i = icmp eq i32 %and.i.i.i.i54.i, 0
  br i1 %tobool.i.not.i.i.i55.i, label %sg_set_buf.exit63.i, label %do.body19.i.i.i57.i, !prof !497

do.body19.i.i.i57.i:                              ; preds = %do.body11.i.i.i56.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit63.i:                              ; preds = %do.body11.i.i.i56.i
  %and.i58.i = and i32 %130, 4095
  %and.i.i.i59.i = and i32 %135, 3
  %or.i.i.i60.i = or i32 %and.i.i.i59.i, %136
  %137 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %or.i.i.i60.i, ptr %incdec.ptr.i, align 4
  %offset1.i.i61.i = getelementptr %struct.scatterlist, ptr %call8.i.i.i, i32 1, i32 1
  %138 = ptrtoint ptr %offset1.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %and.i58.i, ptr %offset1.i.i61.i, align 8
  %length.i.i62.i = getelementptr %struct.scatterlist, ptr %call8.i.i.i, i32 1, i32 2
  %139 = ptrtoint ptr %length.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %call64, ptr %length.i.i62.i, align 4
  br i1 %tobool130.not, label %sg_set_buf.exit63.i.if.end14.i_crit_edge, label %if.then10.i

sg_set_buf.exit63.i.if.end14.i_crit_edge:         ; preds = %sg_set_buf.exit63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then10.i:                                      ; preds = %sg_set_buf.exit63.i
  %incdec.ptr11.i = getelementptr %struct.scatterlist, ptr %call8.i.i.i, i32 3
  %rx_stat_pad.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 6
  %140 = ptrtoint ptr %rx_stat_pad.i to i32
  %cmp.i64.i = icmp ugt ptr %rx_stat_pad.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i64.i, label %land.lhs.true.i66.i, label %if.then10.i.do.body5.i73.i_crit_edge, !prof !497

if.then10.i.do.body5.i73.i_crit_edge:             ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i73.i

land.lhs.true.i66.i:                              ; preds = %if.then10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %141 = load ptr, ptr @high_memory, align 4
  %cmp1.i65.i = icmp ugt ptr %141, %rx_stat_pad.i
  br i1 %cmp1.i65.i, label %land.rhs.i72.i, label %land.lhs.true.i66.i.do.body5.i73.i_crit_edge, !prof !497

land.lhs.true.i66.i.do.body5.i73.i_crit_edge:     ; preds = %land.lhs.true.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i73.i

land.rhs.i72.i:                                   ; preds = %land.lhs.true.i66.i
  %sub.i67.i = add i32 %140, 1073741824
  %shr.i68.i = lshr i32 %sub.i67.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %142 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i69.i = add i32 %142, %shr.i68.i
  %call.i70.i = call i32 @pfn_valid(i32 noundef %add.i69.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %tobool.i71.i = icmp eq i32 %call.i70.i, 0
  br i1 %tobool.i71.i, label %land.rhs.i72.i.do.body5.i73.i_crit_edge, label %do.end8.i77.i, !prof !493

land.rhs.i72.i.do.body5.i73.i_crit_edge:          ; preds = %land.rhs.i72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i73.i

do.body5.i73.i:                                   ; preds = %land.rhs.i72.i.do.body5.i73.i_crit_edge, %land.lhs.true.i66.i.do.body5.i73.i_crit_edge, %if.then10.i.do.body5.i73.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i77.i:                                    ; preds = %land.rhs.i72.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %143 = load ptr, ptr @mem_map, align 4
  %add.ptr.i74.i = getelementptr %struct.page, ptr %143, i32 %shr.i68.i
  %144 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %incdec.ptr6.i, align 8
  %146 = ptrtoint ptr %add.ptr.i74.i to i32
  %and2.i.i.i75.i = and i32 %146, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i75.i)
  %tobool.not.i.i.i76.i = icmp eq i32 %and2.i.i.i75.i, 0
  br i1 %tobool.not.i.i.i76.i, label %do.body11.i.i.i81.i, label %do.body5.i.i.i78.i, !prof !497

do.body5.i.i.i78.i:                               ; preds = %do.end8.i77.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i81.i:                              ; preds = %do.end8.i77.i
  %and.i.i.i.i79.i = and i32 %145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i79.i)
  %tobool.i.not.i.i.i80.i = icmp eq i32 %and.i.i.i.i79.i, 0
  br i1 %tobool.i.not.i.i.i80.i, label %sg_set_buf.exit88.i, label %do.body19.i.i.i82.i, !prof !497

do.body19.i.i.i82.i:                              ; preds = %do.body11.i.i.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit88.i:                              ; preds = %do.body11.i.i.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i83.i = and i32 %140, 4095
  %and.i.i.i84.i = and i32 %145, 3
  %or.i.i.i85.i = or i32 %and.i.i.i84.i, %146
  %147 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %or.i.i.i85.i, ptr %incdec.ptr6.i, align 8
  %offset1.i.i86.i = getelementptr %struct.scatterlist, ptr %call8.i.i.i, i32 2, i32 1
  %148 = ptrtoint ptr %offset1.i.i86.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %and.i83.i, ptr %offset1.i.i86.i, align 4
  %length.i.i87.i = getelementptr %struct.scatterlist, ptr %call8.i.i.i, i32 2, i32 2
  %149 = ptrtoint ptr %length.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %stat_pad_len.0, ptr %length.i.i87.i, align 16
  br label %if.end14.i

if.end14.i:                                       ; preds = %sg_set_buf.exit88.i, %sg_set_buf.exit63.i.if.end14.i_crit_edge
  %sg.0.i = phi ptr [ %incdec.ptr11.i, %sg_set_buf.exit88.i ], [ %incdec.ptr6.i, %sg_set_buf.exit63.i.if.end14.i_crit_edge ]
  %rx_stat.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 7
  %150 = ptrtoint ptr %rx_stat.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %rx_stat.i, align 4
  %151 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 16), align 4
  %call20.i = call zeroext i8 %151() #9
  %conv21.i = zext i8 %call20.i to i32
  %152 = ptrtoint ptr %rx_stat.i to i32
  %cmp.i89.i = icmp ugt ptr %rx_stat.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i89.i, label %land.lhs.true.i91.i, label %if.end14.i.do.body5.i98.i_crit_edge, !prof !497

if.end14.i.do.body5.i98.i_crit_edge:              ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i98.i

land.lhs.true.i91.i:                              ; preds = %if.end14.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %153 = load ptr, ptr @high_memory, align 4
  %cmp1.i90.i = icmp ugt ptr %153, %rx_stat.i
  br i1 %cmp1.i90.i, label %land.rhs.i97.i, label %land.lhs.true.i91.i.do.body5.i98.i_crit_edge, !prof !497

land.lhs.true.i91.i.do.body5.i98.i_crit_edge:     ; preds = %land.lhs.true.i91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i98.i

land.rhs.i97.i:                                   ; preds = %land.lhs.true.i91.i
  %sub.i92.i = add i32 %152, 1073741824
  %shr.i93.i = lshr i32 %sub.i92.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %154 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i94.i = add i32 %154, %shr.i93.i
  %call.i95.i = call i32 @pfn_valid(i32 noundef %add.i94.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95.i)
  %tobool.i96.i = icmp eq i32 %call.i95.i, 0
  br i1 %tobool.i96.i, label %land.rhs.i97.i.do.body5.i98.i_crit_edge, label %do.end8.i102.i, !prof !493

land.rhs.i97.i.do.body5.i98.i_crit_edge:          ; preds = %land.rhs.i97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i98.i

do.body5.i98.i:                                   ; preds = %land.rhs.i97.i.do.body5.i98.i_crit_edge, %land.lhs.true.i91.i.do.body5.i98.i_crit_edge, %if.end14.i.do.body5.i98.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i102.i:                                   ; preds = %land.rhs.i97.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %155 = load ptr, ptr @mem_map, align 4
  %add.ptr.i99.i = getelementptr %struct.page, ptr %155, i32 %shr.i93.i
  %156 = ptrtoint ptr %sg.0.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %sg.0.i, align 4
  %158 = ptrtoint ptr %add.ptr.i99.i to i32
  %and2.i.i.i100.i = and i32 %158, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i100.i)
  %tobool.not.i.i.i101.i = icmp eq i32 %and2.i.i.i100.i, 0
  br i1 %tobool.not.i.i.i101.i, label %do.body11.i.i.i106.i, label %do.body5.i.i.i103.i, !prof !497

do.body5.i.i.i103.i:                              ; preds = %do.end8.i102.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i106.i:                             ; preds = %do.end8.i102.i
  %and.i.i.i.i104.i = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i104.i)
  %tobool.i.not.i.i.i105.i = icmp eq i32 %and.i.i.i.i104.i, 0
  br i1 %tobool.i.not.i.i.i105.i, label %if.end166, label %do.body19.i.i.i107.i, !prof !497

do.body19.i.i.i107.i:                             ; preds = %do.body11.i.i.i106.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

if.end166:                                        ; preds = %do.body11.i.i.i106.i
  %and.i108.i = and i32 %152, 4095
  %and.i.i.i109.i = and i32 %157, 3
  %or.i.i.i110.i = or i32 %and.i.i.i109.i, %158
  %159 = ptrtoint ptr %sg.0.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %or.i.i.i110.i, ptr %sg.0.i, align 4
  %offset1.i.i111.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0.i, i32 0, i32 1
  %160 = ptrtoint ptr %offset1.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %and.i108.i, ptr %offset1.i.i111.i, align 4
  %length.i.i112.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0.i, i32 0, i32 2
  %161 = ptrtoint ptr %length.i.i112.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %conv21.i, ptr %length.i.i112.i, align 4
  %162 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %src_nents, align 4
  %164 = trunc i32 %163 to i8
  %conv170 = add i8 %tx_frag_num.1, %164
  %165 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  %call172 = call zeroext i8 %165() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call172)
  %tobool173.not = icmp ne i8 %call172, 0
  %inc175 = zext i1 %tobool173.not to i8
  %spec.select334 = add i8 %conv170, %inc175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg.i) #9
  %conv.i337 = zext i8 %spec.select334 to i32
  %166 = mul nuw nsw i32 %conv.i337, 20
  %167 = ptrtoint ptr %gfp.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %gfp.i, align 4
  %or.i.i339 = or i32 %168, 256
  %call8.i.i.i371 = call noalias align 128 ptr @__kmalloc(i32 noundef %166, i32 noundef %or.i.i339) #13
  %169 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 14, i32 1
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call8.i.i.i371, ptr %169, align 4
  %tobool.not.i374 = icmp eq ptr %call8.i.i.i371, null
  br i1 %tobool.not.i374, label %if.end166.spu_ahash_tx_sg_create.exit_crit_edge, label %if.end.i378

if.end166.spu_ahash_tx_sg_create.exit_crit_edge:  ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_ahash_tx_sg_create.exit

if.end.i378:                                      ; preds = %if.end166
  call void @sg_init_table(ptr noundef nonnull %call8.i.i.i371, i32 noundef %conv.i337) #9
  %incdec.ptr.i376 = getelementptr %struct.scatterlist, ptr %call8.i.i.i371, i32 1
  %171 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %incdec.ptr.i376, ptr %sg.i, align 4
  %172 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %conv4.i = zext i8 %172 to i32
  %add.i = add i32 %call115, %conv4.i
  %173 = ptrtoint ptr %msg_buf to i32
  %cmp.i.i377 = icmp ugt ptr %msg_buf, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i377, label %land.lhs.true.i.i380, label %if.end.i378.do.body5.i.i387_crit_edge, !prof !497

if.end.i378.do.body5.i.i387_crit_edge:            ; preds = %if.end.i378
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i387

land.lhs.true.i.i380:                             ; preds = %if.end.i378
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %174 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i379 = icmp ugt ptr %174, %msg_buf
  br i1 %cmp1.i.i379, label %land.rhs.i.i386, label %land.lhs.true.i.i380.do.body5.i.i387_crit_edge, !prof !497

land.lhs.true.i.i380.do.body5.i.i387_crit_edge:   ; preds = %land.lhs.true.i.i380
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i387

land.rhs.i.i386:                                  ; preds = %land.lhs.true.i.i380
  %sub.i.i381 = add i32 %173, 1073741824
  %shr.i.i382 = lshr i32 %sub.i.i381, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %175 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i383 = add i32 %175, %shr.i.i382
  %call.i.i384 = call i32 @pfn_valid(i32 noundef %add.i.i383) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i384)
  %tobool.i.i385 = icmp eq i32 %call.i.i384, 0
  br i1 %tobool.i.i385, label %land.rhs.i.i386.do.body5.i.i387_crit_edge, label %do.end8.i.i391, !prof !493

land.rhs.i.i386.do.body5.i.i387_crit_edge:        ; preds = %land.rhs.i.i386
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i387

do.body5.i.i387:                                  ; preds = %land.rhs.i.i386.do.body5.i.i387_crit_edge, %land.lhs.true.i.i380.do.body5.i.i387_crit_edge, %if.end.i378.do.body5.i.i387_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i.i391:                                   ; preds = %land.rhs.i.i386
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %176 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i388 = getelementptr %struct.page, ptr %176, i32 %shr.i.i382
  %177 = ptrtoint ptr %call8.i.i.i371 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %call8.i.i.i371, align 128
  %179 = ptrtoint ptr %add.ptr.i.i388 to i32
  %and2.i.i.i.i389 = and i32 %179, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i389)
  %tobool.not.i.i.i.i390 = icmp eq i32 %and2.i.i.i.i389, 0
  br i1 %tobool.not.i.i.i.i390, label %do.body11.i.i.i.i394, label %do.body5.i.i.i.i392, !prof !497

do.body5.i.i.i.i392:                              ; preds = %do.end8.i.i391
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i.i394:                             ; preds = %do.end8.i.i391
  %and.i.i.i.i55.i = and i32 %178, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i55.i)
  %tobool.i.not.i.i.i.i393 = icmp eq i32 %and.i.i.i.i55.i, 0
  br i1 %tobool.i.not.i.i.i.i393, label %sg_set_buf.exit.i401, label %do.body19.i.i.i.i395, !prof !497

do.body19.i.i.i.i395:                             ; preds = %do.body11.i.i.i.i394
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit.i401:                             ; preds = %do.body11.i.i.i.i394
  %and.i.i396 = and i32 %173, 4095
  %and.i.i.i.i397 = and i32 %178, 3
  %or.i.i.i.i398 = or i32 %and.i.i.i.i397, %179
  %180 = ptrtoint ptr %call8.i.i.i371 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %or.i.i.i.i398, ptr %call8.i.i.i371, align 128
  %offset1.i.i.i399 = getelementptr inbounds %struct.scatterlist, ptr %call8.i.i.i371, i32 0, i32 1
  %181 = ptrtoint ptr %offset1.i.i.i399 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %and.i.i396, ptr %offset1.i.i.i399, align 4
  %length.i.i.i400 = getelementptr inbounds %struct.scatterlist, ptr %call8.i.i.i371, i32 0, i32 2
  %182 = ptrtoint ptr %length.i.i.i400 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %add.i, ptr %length.i.i.i400, align 8
  br i1 %tobool45.not, label %sg_set_buf.exit.i401.if.end9.i_crit_edge, label %if.then6.i

sg_set_buf.exit.i401.if.end9.i_crit_edge:         ; preds = %sg_set_buf.exit.i401
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then6.i:                                       ; preds = %sg_set_buf.exit.i401
  %183 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %sg.i, align 4
  %incdec.ptr7.i = getelementptr %struct.scatterlist, ptr %184, i32 1
  store ptr %incdec.ptr7.i, ptr %sg.i, align 4
  %hash_carry.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 19
  %185 = ptrtoint ptr %hash_carry.i to i32
  %cmp.i56.i = icmp ugt ptr %hash_carry.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i56.i, label %land.lhs.true.i58.i, label %if.then6.i.do.body5.i65.i_crit_edge, !prof !497

if.then6.i.do.body5.i65.i_crit_edge:              ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i65.i

land.lhs.true.i58.i:                              ; preds = %if.then6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %186 = load ptr, ptr @high_memory, align 4
  %cmp1.i57.i = icmp ugt ptr %186, %hash_carry.i
  br i1 %cmp1.i57.i, label %land.rhs.i64.i, label %land.lhs.true.i58.i.do.body5.i65.i_crit_edge, !prof !497

land.lhs.true.i58.i.do.body5.i65.i_crit_edge:     ; preds = %land.lhs.true.i58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i65.i

land.rhs.i64.i:                                   ; preds = %land.lhs.true.i58.i
  %sub.i59.i = add i32 %185, 1073741824
  %shr.i60.i = lshr i32 %sub.i59.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %187 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i61.i = add i32 %187, %shr.i60.i
  %call.i62.i = call i32 @pfn_valid(i32 noundef %add.i61.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %tobool.i63.i = icmp eq i32 %call.i62.i, 0
  br i1 %tobool.i63.i, label %land.rhs.i64.i.do.body5.i65.i_crit_edge, label %do.end8.i69.i, !prof !493

land.rhs.i64.i.do.body5.i65.i_crit_edge:          ; preds = %land.rhs.i64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i65.i

do.body5.i65.i:                                   ; preds = %land.rhs.i64.i.do.body5.i65.i_crit_edge, %land.lhs.true.i58.i.do.body5.i65.i_crit_edge, %if.then6.i.do.body5.i65.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i69.i:                                    ; preds = %land.rhs.i64.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %188 = load ptr, ptr @mem_map, align 4
  %add.ptr.i66.i = getelementptr %struct.page, ptr %188, i32 %shr.i60.i
  %189 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %184, align 4
  %191 = ptrtoint ptr %add.ptr.i66.i to i32
  %and2.i.i.i67.i = and i32 %191, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i67.i)
  %tobool.not.i.i.i68.i = icmp eq i32 %and2.i.i.i67.i, 0
  br i1 %tobool.not.i.i.i68.i, label %do.body11.i.i.i73.i, label %do.body5.i.i.i70.i, !prof !497

do.body5.i.i.i70.i:                               ; preds = %do.end8.i69.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i73.i:                              ; preds = %do.end8.i69.i
  %and.i.i.i.i71.i = and i32 %190, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i71.i)
  %tobool.i.not.i.i.i72.i = icmp eq i32 %and.i.i.i.i71.i, 0
  br i1 %tobool.i.not.i.i.i72.i, label %sg_set_buf.exit80.i, label %do.body19.i.i.i74.i, !prof !497

do.body19.i.i.i74.i:                              ; preds = %do.body11.i.i.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit80.i:                              ; preds = %do.body11.i.i.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i75.i = and i32 %185, 4095
  %and.i.i.i76.i = and i32 %190, 3
  %or.i.i.i77.i = or i32 %and.i.i.i76.i, %191
  %192 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %or.i.i.i77.i, ptr %184, align 4
  %offset1.i.i78.i = getelementptr inbounds %struct.scatterlist, ptr %184, i32 0, i32 1
  %193 = ptrtoint ptr %offset1.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %and.i75.i, ptr %offset1.i.i78.i, align 4
  %length.i.i79.i = getelementptr inbounds %struct.scatterlist, ptr %184, i32 0, i32 2
  %194 = ptrtoint ptr %length.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %46, ptr %length.i.i79.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %sg_set_buf.exit80.i, %sg_set_buf.exit.i401.if.end9.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %chunksize.3, i32 %46)
  %tobool10.not.i = icmp eq i32 %chunksize.3, %46
  br i1 %tobool10.not.i, label %if.end9.i.if.end18.i_crit_edge, label %if.then11.i

if.end9.i.if.end18.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then11.i:                                      ; preds = %if.end9.i
  %195 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %src_nents, align 4
  %conv12.i = trunc i32 %196 to i8
  %call13.i = call i32 @spu_msg_sg_add(ptr noundef nonnull %sg.i, ptr noundef %src_sg, ptr noundef %src_skip, i8 noundef zeroext %conv12.i, i32 noundef %sub48) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %sub48)
  %cmp.i = icmp ult i32 %call13.i, %sub48
  br i1 %cmp.i, label %do.end.i, label %if.then11.i.if.end18.i_crit_edge

if.then11.i.if.end18.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

do.end.i:                                         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.56) #12
  br label %spu_ahash_tx_sg_create.exit

if.end18.i:                                       ; preds = %if.then11.i.if.end18.i_crit_edge, %if.end9.i.if.end18.i_crit_edge
  br i1 %tobool137.not, label %if.end18.i.if.end24.i_crit_edge, label %if.then20.i

if.end18.i.if.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then20.i:                                      ; preds = %if.end18.i
  %197 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %sg.i, align 4
  %incdec.ptr21.i = getelementptr %struct.scatterlist, ptr %198, i32 1
  store ptr %incdec.ptr21.i, ptr %sg.i, align 4
  %spu_req_pad.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 3
  %199 = ptrtoint ptr %spu_req_pad.i to i32
  %cmp.i81.i = icmp ugt ptr %spu_req_pad.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i81.i, label %land.lhs.true.i83.i, label %if.then20.i.do.body5.i90.i_crit_edge, !prof !497

if.then20.i.do.body5.i90.i_crit_edge:             ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i90.i

land.lhs.true.i83.i:                              ; preds = %if.then20.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %200 = load ptr, ptr @high_memory, align 4
  %cmp1.i82.i = icmp ugt ptr %200, %spu_req_pad.i
  br i1 %cmp1.i82.i, label %land.rhs.i89.i, label %land.lhs.true.i83.i.do.body5.i90.i_crit_edge, !prof !497

land.lhs.true.i83.i.do.body5.i90.i_crit_edge:     ; preds = %land.lhs.true.i83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i90.i

land.rhs.i89.i:                                   ; preds = %land.lhs.true.i83.i
  %sub.i84.i = add i32 %199, 1073741824
  %shr.i85.i = lshr i32 %sub.i84.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %201 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i86.i = add i32 %201, %shr.i85.i
  %call.i87.i = call i32 @pfn_valid(i32 noundef %add.i86.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i)
  %tobool.i88.i = icmp eq i32 %call.i87.i, 0
  br i1 %tobool.i88.i, label %land.rhs.i89.i.do.body5.i90.i_crit_edge, label %do.end8.i94.i, !prof !493

land.rhs.i89.i.do.body5.i90.i_crit_edge:          ; preds = %land.rhs.i89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i90.i

do.body5.i90.i:                                   ; preds = %land.rhs.i89.i.do.body5.i90.i_crit_edge, %land.lhs.true.i83.i.do.body5.i90.i_crit_edge, %if.then20.i.do.body5.i90.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i94.i:                                    ; preds = %land.rhs.i89.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %202 = load ptr, ptr @mem_map, align 4
  %add.ptr.i91.i = getelementptr %struct.page, ptr %202, i32 %shr.i85.i
  %203 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %198, align 4
  %205 = ptrtoint ptr %add.ptr.i91.i to i32
  %and2.i.i.i92.i = and i32 %205, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i92.i)
  %tobool.not.i.i.i93.i = icmp eq i32 %and2.i.i.i92.i, 0
  br i1 %tobool.not.i.i.i93.i, label %do.body11.i.i.i98.i, label %do.body5.i.i.i95.i, !prof !497

do.body5.i.i.i95.i:                               ; preds = %do.end8.i94.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i98.i:                              ; preds = %do.end8.i94.i
  %and.i.i.i.i96.i = and i32 %204, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i96.i)
  %tobool.i.not.i.i.i97.i = icmp eq i32 %and.i.i.i.i96.i, 0
  br i1 %tobool.i.not.i.i.i97.i, label %sg_set_buf.exit105.i, label %do.body19.i.i.i99.i, !prof !497

do.body19.i.i.i99.i:                              ; preds = %do.body11.i.i.i98.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit105.i:                             ; preds = %do.body11.i.i.i98.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i100.i = and i32 %199, 4095
  %and.i.i.i101.i = and i32 %204, 3
  %or.i.i.i102.i = or i32 %and.i.i.i101.i, %205
  %206 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %or.i.i.i102.i, ptr %198, align 4
  %offset1.i.i103.i = getelementptr inbounds %struct.scatterlist, ptr %198, i32 0, i32 1
  %207 = ptrtoint ptr %offset1.i.i103.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %and.i100.i, ptr %offset1.i.i103.i, align 4
  %length.i.i104.i = getelementptr inbounds %struct.scatterlist, ptr %198, i32 0, i32 2
  %208 = ptrtoint ptr %length.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %add136, ptr %length.i.i104.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %sg_set_buf.exit105.i, %if.end18.i.if.end24.i_crit_edge
  %209 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  %call25.i = call zeroext i8 %209() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call25.i)
  %tobool27.not.i = icmp eq i8 %call25.i, 0
  br i1 %tobool27.not.i, label %if.end24.i.if.end180_crit_edge, label %if.then28.i

if.end24.i.if.end180_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

if.then28.i:                                      ; preds = %if.end24.i
  %conv26.i = zext i8 %call25.i to i32
  %tx_stat.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 4
  %210 = call ptr @memset(ptr %tx_stat.i, i32 0, i32 %conv26.i)
  %211 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %sg.i, align 4
  %213 = ptrtoint ptr %tx_stat.i to i32
  %cmp.i106.i = icmp ugt ptr %tx_stat.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i106.i, label %land.lhs.true.i108.i, label %if.then28.i.do.body5.i115.i_crit_edge, !prof !497

if.then28.i.do.body5.i115.i_crit_edge:            ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i115.i

land.lhs.true.i108.i:                             ; preds = %if.then28.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %214 = load ptr, ptr @high_memory, align 4
  %cmp1.i107.i = icmp ugt ptr %214, %tx_stat.i
  br i1 %cmp1.i107.i, label %land.rhs.i114.i, label %land.lhs.true.i108.i.do.body5.i115.i_crit_edge, !prof !497

land.lhs.true.i108.i.do.body5.i115.i_crit_edge:   ; preds = %land.lhs.true.i108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i115.i

land.rhs.i114.i:                                  ; preds = %land.lhs.true.i108.i
  %sub.i109.i = add i32 %213, 1073741824
  %shr.i110.i = lshr i32 %sub.i109.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %215 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i111.i = add i32 %215, %shr.i110.i
  %call.i112.i = call i32 @pfn_valid(i32 noundef %add.i111.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112.i)
  %tobool.i113.i = icmp eq i32 %call.i112.i, 0
  br i1 %tobool.i113.i, label %land.rhs.i114.i.do.body5.i115.i_crit_edge, label %do.end8.i119.i, !prof !493

land.rhs.i114.i.do.body5.i115.i_crit_edge:        ; preds = %land.rhs.i114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i115.i

do.body5.i115.i:                                  ; preds = %land.rhs.i114.i.do.body5.i115.i_crit_edge, %land.lhs.true.i108.i.do.body5.i115.i_crit_edge, %if.then28.i.do.body5.i115.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i119.i:                                   ; preds = %land.rhs.i114.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %216 = load ptr, ptr @mem_map, align 4
  %add.ptr.i116.i = getelementptr %struct.page, ptr %216, i32 %shr.i110.i
  %217 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %212, align 4
  %219 = ptrtoint ptr %add.ptr.i116.i to i32
  %and2.i.i.i117.i = and i32 %219, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i117.i)
  %tobool.not.i.i.i118.i = icmp eq i32 %and2.i.i.i117.i, 0
  br i1 %tobool.not.i.i.i118.i, label %do.body11.i.i.i123.i, label %do.body5.i.i.i120.i, !prof !497

do.body5.i.i.i120.i:                              ; preds = %do.end8.i119.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i123.i:                             ; preds = %do.end8.i119.i
  %and.i.i.i.i121.i = and i32 %218, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i121.i)
  %tobool.i.not.i.i.i122.i = icmp eq i32 %and.i.i.i.i121.i, 0
  br i1 %tobool.i.not.i.i.i122.i, label %sg_set_buf.exit130.i, label %do.body19.i.i.i124.i, !prof !497

do.body19.i.i.i124.i:                             ; preds = %do.body11.i.i.i123.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit130.i:                             ; preds = %do.body11.i.i.i123.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i125.i = and i32 %213, 4095
  %and.i.i.i126.i = and i32 %218, 3
  %or.i.i.i127.i = or i32 %and.i.i.i126.i, %219
  %220 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %or.i.i.i127.i, ptr %212, align 4
  %offset1.i.i128.i = getelementptr inbounds %struct.scatterlist, ptr %212, i32 0, i32 1
  %221 = ptrtoint ptr %offset1.i.i128.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %and.i125.i, ptr %offset1.i.i128.i, align 4
  %length.i.i129.i = getelementptr inbounds %struct.scatterlist, ptr %212, i32 0, i32 2
  %222 = ptrtoint ptr %length.i.i129.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %conv26.i, ptr %length.i.i129.i, align 4
  br label %if.end180

spu_ahash_tx_sg_create.exit:                      ; preds = %do.end.i, %if.end166.spu_ahash_tx_sg_create.exit_crit_edge
  %retval.0.i402 = phi i32 [ -14, %do.end.i ], [ -12, %if.end166.spu_ahash_tx_sg_create.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i) #9
  br label %cleanup188

if.end180:                                        ; preds = %sg_set_buf.exit130.i, %if.end24.i.if.end180_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i) #9
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 4
  %223 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %flags, align 4
  %chan_idx = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 2
  %225 = ptrtoint ptr %chan_idx to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %chan_idx, align 4
  %call181 = call fastcc i32 @mailbox_send_message(ptr noundef %mb_mssg, i32 noundef %224, i8 noundef zeroext %226)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %cmp182 = icmp slt i32 %call181, 0
  %call181. = select i1 %cmp182, i32 %call181, i32 -115, !prof !493
  br label %cleanup188

cleanup188:                                       ; preds = %if.end180, %spu_ahash_tx_sg_create.exit, %if.end148.cleanup188_crit_edge, %do.end, %cleanup
  %retval.1 = phi i32 [ -14, %do.end ], [ -11, %cleanup ], [ %retval.0.i402, %spu_ahash_tx_sg_create.exit ], [ %call181., %if.end180 ], [ -12, %if.end148.cleanup188_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %aead_parms) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %hash_parms) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cipher_parms) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %req_opts) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_aead_req(ptr noundef %rctx) unnamed_addr #2 align 64 {
entry:
  %sg.i467 = alloca ptr, align 4
  %assoc_sg.i = alloca ptr, align 4
  %assoc_offset.i = alloca i32, align 4
  %sg.i = alloca ptr, align 4
  %req_opts = alloca %struct.spu_request_opts, align 1
  %cipher_parms = alloca %struct.spu_cipher_parms, align 4
  %hash_parms = alloca %struct.spu_hash_parms, align 4
  %aead_parms = alloca %struct.spu_aead_parms, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rctx, align 4
  %ctx1 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 1
  %2 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %req_opts) #9
  %4 = getelementptr inbounds %struct.spu_request_opts, ptr %req_opts, i32 0, i32 1
  %5 = getelementptr inbounds %struct.spu_request_opts, ptr %req_opts, i32 0, i32 2
  %6 = getelementptr inbounds %struct.spu_request_opts, ptr %req_opts, i32 0, i32 3
  %7 = getelementptr inbounds %struct.spu_request_opts, ptr %req_opts, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cipher_parms) #9
  %8 = getelementptr inbounds i8, ptr %cipher_parms, i32 16
  %9 = call ptr @memset(ptr %8, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %hash_parms) #9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %aead_parms) #9
  %digestsize2 = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %digestsize2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %digestsize2, align 4
  %total_todo = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 3
  %12 = ptrtoint ptr %total_todo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %total_todo, align 4
  %14 = getelementptr inbounds i8, ptr %req_opts, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 0, ptr %14, align 1
  %16 = getelementptr inbounds i8, ptr %hash_parms, i32 12
  %17 = call ptr @memset(ptr %16, i32 0, i32 16)
  %18 = call ptr @memset(ptr %aead_parms, i32 0, i32 20)
  %is_encrypt = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 16
  %19 = ptrtoint ptr %is_encrypt to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_encrypt, align 1, !range !494
  %21 = xor i8 %20, 1
  %22 = ptrtoint ptr %req_opts to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %req_opts, align 1
  %auth_first = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 14
  %23 = ptrtoint ptr %auth_first to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %auth_first, align 4, !range !494
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %4, align 1
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %5, align 1
  %is_esp = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 10
  %27 = ptrtoint ptr %is_esp to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_esp, align 4, !range !494
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %6, align 1
  %cipher = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 11
  %30 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cipher, align 4
  %32 = ptrtoint ptr %cipher_parms to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %cipher_parms, align 4
  %mode = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 11, i32 1
  %33 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode, align 4
  %mode11 = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 1
  %35 = ptrtoint ptr %mode11 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %mode11, align 4
  %cipher_type = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 12
  %36 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cipher_type, align 4
  %type = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 2
  %38 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %type, align 4
  %key_buf = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 3
  %39 = ptrtoint ptr %key_buf to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %3, ptr %key_buf, align 4
  %enckeylen = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %enckeylen to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %enckeylen, align 4
  %conv = trunc i32 %41 to i16
  %key_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 4
  %42 = ptrtoint ptr %key_len to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv, ptr %key_len, align 4
  %msg_buf = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28
  %iv_ctr = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 1
  %iv_buf = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 5
  %43 = ptrtoint ptr %iv_buf to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %iv_ctr, ptr %iv_buf, align 4
  %iv_ctr_len = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 18
  %44 = ptrtoint ptr %iv_ctr_len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iv_ctr_len, align 4
  %conv13 = trunc i32 %45 to i16
  %iv_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 6
  %46 = ptrtoint ptr %iv_len to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv13, ptr %iv_len, align 4
  %auth = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 13
  %47 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %auth, align 4
  %49 = ptrtoint ptr %hash_parms to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %hash_parms, align 4
  %mode17 = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 13, i32 1
  %50 = ptrtoint ptr %mode17 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mode17, align 4
  %mode18 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 1
  %52 = ptrtoint ptr %mode18 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %mode18, align 4
  %type19 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 2
  %53 = ptrtoint ptr %type19 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %type19, align 4
  %authkey = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 2
  %key_buf21 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 4
  %54 = ptrtoint ptr %key_buf21 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %authkey, ptr %key_buf21, align 4
  %authkeylen = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 3
  %55 = ptrtoint ptr %authkeylen to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %authkeylen, align 4
  %conv22 = trunc i32 %56 to i16
  %key_len23 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 5
  %57 = ptrtoint ptr %key_len23 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv22, ptr %key_len23, align 4
  %conv24 = trunc i32 %11 to i8
  %digestsize25 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 3
  %58 = ptrtoint ptr %digestsize25 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv24, ptr %digestsize25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp = icmp eq i32 %48, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %56)
  %cmp30 = icmp ult i32 %56, 28
  %or.cond = select i1 %cmp, i1 %cmp30, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %key_len23 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 28, ptr %key_len23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %assoclen, align 8
  %62 = ptrtoint ptr %aead_parms to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %aead_parms, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool34.not = icmp eq i8 %28, 0
  br i1 %tobool34.not, label %if.end.if.else_crit_edge, label %land.lhs.true36

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true36:                                  ; preds = %if.end
  %is_rfc4543 = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 23
  %63 = ptrtoint ptr %is_rfc4543 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %is_rfc4543, align 4, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool37.not = icmp eq i8 %64, 0
  br i1 %tobool37.not, label %if.then38, label %land.lhs.true36.if.else_crit_edge

land.lhs.true36.if.else_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then38:                                        ; preds = %land.lhs.true36
  %sub = add i32 %61, -8
  %65 = ptrtoint ptr %aead_parms to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub, ptr %aead_parms, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool41.not = icmp eq i8 %20, 0
  br i1 %tobool41.not, label %if.then38.if.end45_crit_edge, label %if.then42

if.then38.if.end45_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then42:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %return_iv = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 4
  %66 = ptrtoint ptr %return_iv to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %return_iv, align 4
  %ret_iv_len = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 5
  %67 = ptrtoint ptr %ret_iv_len to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 8, ptr %ret_iv_len, align 4
  %ret_iv_off = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 6
  %68 = ptrtoint ptr %ret_iv_off to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4, ptr %ret_iv_off, align 4
  br label %if.end45

if.else:                                          ; preds = %land.lhs.true36.if.else_crit_edge, %if.end.if.else_crit_edge
  %ret_iv_len44 = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 5
  %69 = ptrtoint ptr %ret_iv_len44 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %ret_iv_len44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then42, %if.then38.if.end45_crit_edge
  %src_sg = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 8
  %70 = ptrtoint ptr %src_sg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %src_sg, align 4
  %src_skip = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 10
  %72 = ptrtoint ptr %src_skip to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %src_skip, align 4
  %call = tail call i32 @spu_sg_count(ptr noundef %71, i32 noundef %73, i32 noundef %13) #9
  %src_nents = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 9
  %74 = ptrtoint ptr %src_nents to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call, ptr %src_nents, align 4
  %dst_sg = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 11
  %75 = ptrtoint ptr %dst_sg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dst_sg, align 4
  %dst_skip = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 13
  %77 = ptrtoint ptr %dst_skip to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dst_skip, align 4
  %call46 = tail call i32 @spu_sg_count(ptr noundef %76, i32 noundef %78, i32 noundef %13) #9
  %dst_nents = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 12
  %79 = ptrtoint ptr %dst_nents to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call46, ptr %dst_nents, align 4
  %80 = ptrtoint ptr %aead_parms to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %aead_parms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool48.not = icmp eq i32 %81, 0
  br i1 %tobool48.not, label %if.end45.if.end52_crit_edge, label %if.then49

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %assoc = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 7
  %82 = ptrtoint ptr %assoc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %assoc, align 4
  %call51 = tail call i32 @spu_sg_count(ptr noundef %83, i32 noundef 0, i32 noundef %81) #9
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end45.if.end52_crit_edge
  %assoc_nents.0 = phi i32 [ %call51, %if.then49 ], [ 0, %if.end45.if.end52_crit_edge ]
  %mb_mssg = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 14
  %total_sent = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 5
  %84 = ptrtoint ptr %total_sent to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %13, ptr %total_sent, align 4
  %src_sent = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 6
  %85 = ptrtoint ptr %src_sent to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %13, ptr %src_sent, align 4
  %86 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 6), align 4
  %87 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mode, align 4
  %89 = ptrtoint ptr %aead_parms to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %aead_parms, align 4
  %ret_iv_len56 = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 5
  %91 = ptrtoint ptr %ret_iv_len56 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ret_iv_len56, align 4
  %93 = ptrtoint ptr %is_encrypt to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %is_encrypt, align 1, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool58 = icmp ne i8 %94, 0
  %call59 = tail call i32 %86(i32 noundef %88, i32 noundef %90, i32 noundef %92, i1 noundef zeroext %tobool58) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  %95 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 7), align 8
  %96 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mode, align 4
  %98 = ptrtoint ptr %iv_ctr_len to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %iv_ctr_len, align 4
  %conv66 = trunc i32 %99 to i16
  %call67 = tail call zeroext i8 %95(i32 noundef %97, i16 noundef zeroext %conv66) #9
  %conv68 = zext i8 %call67 to i16
  %iv_len69 = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 1
  %100 = ptrtoint ptr %iv_len69 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv68, ptr %iv_len69, align 4
  %101 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %auth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %102)
  %cmp72 = icmp eq i32 %102, 5
  br i1 %cmp72, label %if.then74, label %if.end52.if.end77_crit_edge

if.end52.if.end77_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then74:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cipher_type, align 4
  %105 = ptrtoint ptr %type19 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %type19, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end52.if.end77_crit_edge
  %106 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  %107 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mode, align 4
  %109 = ptrtoint ptr %aead_parms to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %aead_parms, align 4
  %call81 = tail call i32 %106(i32 noundef %108, i32 noundef %110) #9
  %conv82 = trunc i32 %call81 to i8
  %aad_pad_len = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 2
  %111 = ptrtoint ptr %aad_pad_len to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv82, ptr %aad_pad_len, align 2
  %112 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  %113 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mode, align 4
  %call86 = tail call i32 %112(i32 noundef %114, i32 noundef %13) #9
  %conv87 = trunc i32 %call86 to i8
  %data_pad_len = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 3
  %115 = ptrtoint ptr %data_pad_len to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv87, ptr %data_pad_len, align 1
  %116 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %117)
  %cmp90 = icmp eq i32 %117, 5
  br i1 %cmp90, label %if.then92, label %if.end77.if.end116_crit_edge

if.end77.if.end116_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.then92:                                        ; preds = %if.end77
  %118 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  %119 = ptrtoint ptr %aead_parms to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %aead_parms, align 4
  %add = add i32 %120, 2
  %call97 = tail call i32 %118(i32 noundef 5, i32 noundef %add) #9
  %conv98 = trunc i32 %call97 to i8
  %121 = ptrtoint ptr %aad_pad_len to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv98, ptr %aad_pad_len, align 2
  %122 = ptrtoint ptr %is_encrypt to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %is_encrypt, align 1, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool101.not = icmp eq i8 %123, 0
  br i1 %tobool101.not, label %if.then102, label %if.then92.if.end110_crit_edge

if.then92.if.end110_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then102:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  %124 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  %125 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mode, align 4
  %sub106 = sub i32 %13, %11
  %call107 = tail call i32 %124(i32 noundef %126, i32 noundef %sub106) #9
  %conv108 = trunc i32 %call107 to i8
  %127 = ptrtoint ptr %data_pad_len to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv108, ptr %data_pad_len, align 1
  br label %if.end110

if.end110:                                        ; preds = %if.then102, %if.then92.if.end110_crit_edge
  %128 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 18), align 4
  %129 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %assoclen, align 8
  %131 = ptrtoint ptr %is_encrypt to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %is_encrypt, align 1, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool113 = icmp ne i8 %132, 0
  %133 = ptrtoint ptr %is_esp to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %is_esp, align 4, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool115 = icmp ne i8 %134, 0
  call void %128(i32 noundef %11, ptr noundef nonnull %cipher_parms, i32 noundef %130, i32 noundef %13, i1 noundef zeroext %tobool113, i1 noundef zeroext %tobool115) #9
  br label %if.end116

if.end116:                                        ; preds = %if.end110, %if.end77.if.end116_crit_edge
  %is_rfc4543117 = getelementptr inbounds %struct.iproc_ctx_s, ptr %3, i32 0, i32 23
  %135 = ptrtoint ptr %is_rfc4543117 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %is_rfc4543117, align 4, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool118.not = icmp eq i8 %136, 0
  br i1 %tobool118.not, label %if.end116.if.end144_crit_edge, label %if.then119

if.end116.if.end144_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %aad_pad_len to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %aad_pad_len, align 2
  %138 = ptrtoint ptr %is_encrypt to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %is_encrypt, align 1, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool122.not = icmp eq i8 %139, 0
  %140 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  %141 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %mode, align 4
  %143 = ptrtoint ptr %aead_parms to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %aead_parms, align 4
  %add128 = select i1 %tobool122.not, i32 %11, i32 0
  %add138.sink.v = sub i32 %13, %add128
  %add138.sink = add i32 %144, %add138.sink.v
  %call139 = call i32 %140(i32 noundef %142, i32 noundef %add138.sink) #9
  %storemerge = trunc i32 %call139 to i8
  %145 = ptrtoint ptr %data_pad_len to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %storemerge, ptr %data_pad_len, align 1
  %146 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %7, align 1
  br label %if.end144

if.end144:                                        ; preds = %if.then119, %if.end116.if.end144_crit_edge
  %147 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mode, align 4
  %149 = ptrtoint ptr %is_encrypt to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %is_encrypt, align 1, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool148 = icmp eq i8 %150, 0
  %151 = add i32 %148, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %151)
  %152 = icmp ult i32 %151, 2
  %retval.0.i = and i1 %152, %tobool148
  br i1 %retval.0.i, label %if.then150, label %if.end144.if.end158_crit_edge

if.end144.if.end158_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

if.then150:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  %src = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 4
  %153 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %src, align 4
  %digest = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 2
  %155 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %assoclen, align 8
  %157 = ptrtoint ptr %total_sent to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %total_sent, align 4
  %add156 = sub i32 %156, %11
  %sub157 = add i32 %add156, %158
  call void @sg_copy_part_to_buf(ptr noundef %154, ptr noundef %digest, i32 noundef %11, i32 noundef %sub157) #9
  br label %if.end158

if.end158:                                        ; preds = %if.then150, %if.end144.if.end158_crit_edge
  %tx_frag_num.0 = phi i8 [ 2, %if.then150 ], [ 1, %if.end144.if.end158_crit_edge ]
  %conv159 = zext i32 %13 to i64
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9), i32 noundef 8) #9
  call void @generic_atomic64_add(i64 noundef %conv159, ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9)) #9
  %159 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %conv162 = zext i8 %159 to i32
  %160 = call ptr @memcpy(ptr %msg_buf, ptr @BCMHEADER, i32 %conv162)
  %161 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 10), align 4
  %add.ptr167 = getelementptr i8, ptr %msg_buf, i32 %conv162
  %call168 = call i32 %161(ptr noundef %add.ptr167, ptr noundef nonnull %req_opts, ptr noundef nonnull %cipher_parms, ptr noundef nonnull %hash_parms, ptr noundef nonnull %aead_parms, i32 noundef %13) #9
  %162 = ptrtoint ptr %aead_parms to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %aead_parms, align 4
  %164 = ptrtoint ptr %iv_len69 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %iv_len69, align 4
  %conv171 = zext i16 %165 to i32
  %166 = ptrtoint ptr %aad_pad_len to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %aad_pad_len, align 2
  %conv173 = zext i8 %167 to i32
  %168 = ptrtoint ptr %data_pad_len to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %data_pad_len, align 1
  %conv175 = zext i8 %169 to i32
  %add.i = add i32 %163, %13
  %add2.i = add i32 %add.i, %conv171
  %add3.i = add i32 %add2.i, %conv173
  %add4.i = add i32 %add3.i, %conv175
  %170 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 19), align 8
  %call177 = call i32 %170(i32 noundef %add4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  %not.tobool178.not = xor i1 %tobool178.not, true
  %inc180 = zext i1 %not.tobool178.not to i8
  %171 = ptrtoint ptr %data_pad_len to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %data_pad_len, align 1
  %conv183 = zext i8 %172 to i32
  %add184 = add i32 %call177, %conv183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add184)
  %tobool185.not = icmp eq i32 %add184, 0
  br i1 %tobool185.not, label %if.end158.if.end197_crit_edge, label %if.then186

if.end158.if.end197_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end197

if.then186:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  %inc187 = add nuw nsw i8 %tx_frag_num.0, 1
  %173 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 13), align 8
  %spu_req_pad = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 3
  %174 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %auth, align 4
  %176 = ptrtoint ptr %mode17 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %mode17, align 4
  %178 = ptrtoint ptr %total_sent to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %total_sent, align 4
  call void %173(ptr noundef %spu_req_pad, i32 noundef %conv183, i32 noundef 0, i32 noundef %175, i32 noundef %177, i32 noundef %179, i32 noundef %call177) #9
  br label %if.end197

if.end197:                                        ; preds = %if.then186, %if.end158.if.end197_crit_edge
  %tx_frag_num.1 = phi i8 [ %inc187, %if.then186 ], [ %tx_frag_num.0, %if.end158.if.end197_crit_edge ]
  %180 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1), align 4
  %181 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %conv201 = zext i8 %181 to i32
  %add.ptr202 = getelementptr i8, ptr %msg_buf, i32 %conv201
  call void %180(ptr noundef %add.ptr202, i32 noundef %call168) #9
  %assoc203 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 7
  %182 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 14, i32 1
  %183 = call ptr @memset(ptr %182, i32 0, i32 20)
  %184 = ptrtoint ptr %mb_mssg to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 2, ptr %mb_mssg, align 4
  %ctx216 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 14, i32 2
  %185 = ptrtoint ptr %ctx216 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %rctx, ptr %ctx216, align 4
  %186 = ptrtoint ptr %dst_nents to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %dst_nents, align 4
  %188 = trunc i32 %187 to i8
  %spec.select462 = select i1 %tobool60.not, i8 3, i8 4
  %conv220 = add nuw nsw i8 %spec.select462, %inc180
  %inc221 = add i8 %conv220, %188
  %189 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %mode, align 4
  %.off = add i32 %190, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true230, label %if.end197.if.end244_crit_edge

if.end197.if.end244_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end244

land.lhs.true230:                                 ; preds = %if.end197
  %191 = ptrtoint ptr %is_encrypt to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %is_encrypt, align 1, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool232.not = icmp eq i8 %192, 0
  br i1 %tobool232.not, label %if.then233, label %land.lhs.true230.if.end244_crit_edge

land.lhs.true230.if.end244_crit_edge:             ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end244

if.then233:                                       ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #11
  %193 = ptrtoint ptr %digestsize2 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %digestsize2, align 4
  %sub235 = sub i32 %13, %194
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %194)
  %cmp236 = icmp eq i32 %13, %194
  %spec.select546 = select i1 %cmp236, i32 0, i32 %sub235
  %spec.select547 = select i1 %cmp236, i8 %conv220, i8 %inc221
  br label %if.end244

if.end244:                                        ; preds = %if.then233, %land.lhs.true230.if.end244_crit_edge, %if.end197.if.end244_crit_edge
  %resp_len.0 = phi i32 [ %13, %land.lhs.true230.if.end244_crit_edge ], [ %13, %if.end197.if.end244_crit_edge ], [ %spec.select546, %if.then233 ]
  %rx_frag_num.2 = phi i8 [ %inc221, %land.lhs.true230.if.end244_crit_edge ], [ %inc221, %if.end197.if.end244_crit_edge ], [ %spec.select547, %if.then233 ]
  %195 = ptrtoint ptr %aead_parms to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %aead_parms, align 4
  %197 = ptrtoint ptr %ret_iv_len56 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %ret_iv_len56, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg.i) #9
  %199 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ctx1, align 4
  %is_rfc4543.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %200, i32 0, i32 23
  %201 = ptrtoint ptr %is_rfc4543.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %is_rfc4543.i, align 4, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool.not.i = icmp eq i8 %202, 0
  %203 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  %mode4.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %200, i32 0, i32 11, i32 1
  %204 = ptrtoint ptr %mode4.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %mode4.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #11
  %add.i464 = add i32 %196, %resp_len.0
  %call.i = call i32 %203(i32 noundef %205, i32 noundef %add.i464) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i = call i32 %203(i32 noundef %205, i32 noundef %resp_len.0) #9
  %206 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 6), align 4
  %207 = ptrtoint ptr %mode4.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %mode4.i, align 4
  %209 = ptrtoint ptr %is_encrypt to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %is_encrypt, align 1, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool9.i = icmp ne i8 %210, 0
  %call10.i = call i32 %206(i32 noundef %208, i32 noundef %196, i32 noundef %198, i1 noundef zeroext %tobool9.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %assoc_buf_len.0.i = phi i32 [ %196, %if.then.i ], [ %call10.i, %if.else.i ]
  %data_padlen.0.in.i = phi i32 [ %call.i, %if.then.i ], [ %call5.i, %if.else.i ]
  %211 = ptrtoint ptr %mode4.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %mode4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %212)
  %cmp.i = icmp eq i32 %212, 5
  br i1 %cmp.i, label %if.then14.i, label %if.end.i.if.end22.i_crit_edge

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %213 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 19), align 8
  %add15.i = add i32 %assoc_buf_len.0.i, %resp_len.0
  %conv16.i = and i32 %data_padlen.0.in.i, 255
  %add17.i = add i32 %add15.i, %conv16.i
  %call18.i = call i32 %213(i32 noundef %add17.i) #9
  %add20.i = add i32 %call18.i, %data_padlen.0.in.i
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then14.i, %if.end.i.if.end22.i_crit_edge
  %data_padlen.1.in.i = phi i32 [ %add20.i, %if.then14.i ], [ %data_padlen.0.in.i, %if.end.i.if.end22.i_crit_edge ]
  %data_padlen.1.i = trunc i32 %data_padlen.1.in.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %data_padlen.1.i)
  %tobool23.not.i = icmp eq i8 %data_padlen.1.i, 0
  %not.tobool23.not.i = xor i1 %tobool23.not.i, true
  %inc.i = zext i1 %not.tobool23.not.i to i8
  %spec.select.i = add i8 %rx_frag_num.2, %inc.i
  %conv26.i = zext i8 %spec.select.i to i32
  %gfp.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 27
  %214 = mul nuw nsw i32 %conv26.i, 20
  %215 = ptrtoint ptr %gfp.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %gfp.i, align 4
  %or.i.i = or i32 %216, 256
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %214, i32 noundef %or.i.i) #13
  %dst.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 14, i32 1, i32 0, i32 1
  %217 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %call8.i.i.i, ptr %dst.i, align 4
  %tobool29.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool29.not.i, label %if.end22.i.spu_aead_rx_sg_create.exit.thread_crit_edge, label %if.end31.i

if.end22.i.spu_aead_rx_sg_create.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_aead_rx_sg_create.exit.thread

if.end31.i:                                       ; preds = %if.end22.i
  call void @sg_init_table(ptr noundef nonnull %call8.i.i.i, i32 noundef %conv26.i) #9
  %incdec.ptr.i = getelementptr %struct.scatterlist, ptr %call8.i.i.i, i32 1
  %218 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %incdec.ptr.i, ptr %sg.i, align 4
  %spu_resp_hdr.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 5
  %spu_resp_hdr_len.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %200, i32 0, i32 21
  %219 = ptrtoint ptr %spu_resp_hdr_len.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %spu_resp_hdr_len.i, align 2
  %conv34.i = zext i16 %220 to i32
  %221 = ptrtoint ptr %spu_resp_hdr.i to i32
  %cmp.i.i = icmp ugt ptr %spu_resp_hdr.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end31.i.do.body5.i.i_crit_edge, !prof !497

if.end31.i.do.body5.i.i_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %if.end31.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %222 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %222, %spu_resp_hdr.i
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !497

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %221, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %223 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %223, %shr.i.i
  %call.i.i465 = call i32 @pfn_valid(i32 noundef %add.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i465)
  %tobool.i.i = icmp eq i32 %call.i.i465, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !493

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %if.end31.i.do.body5.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %224 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %224, i32 %shr.i.i
  %225 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %call8.i.i.i, align 128
  %227 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i.i = and i32 %227, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !497

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i1.i = and i32 %226, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i1.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i1.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_set_buf.exit.i, label %do.body19.i.i.i.i, !prof !497

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit.i:                                ; preds = %do.body11.i.i.i.i
  %and.i.i = and i32 %221, 4095
  %and.i.i.i.i = and i32 %226, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %227
  %228 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %or.i.i.i.i, ptr %call8.i.i.i, align 128
  %offset1.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call8.i.i.i, i32 0, i32 1
  %229 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %and.i.i, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call8.i.i.i, i32 0, i32 2
  %230 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %conv34.i, ptr %length.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %assoc_buf_len.0.i)
  %tobool35.not.i = icmp eq i32 %assoc_buf_len.0.i, 0
  br i1 %tobool35.not.i, label %sg_set_buf.exit.i.if.end43.i_crit_edge, label %if.then36.i

sg_set_buf.exit.i.if.end43.i_crit_edge:           ; preds = %sg_set_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then36.i:                                      ; preds = %sg_set_buf.exit.i
  %resp_aad.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 8, i32 0, i32 2
  %231 = call ptr @memset(ptr %resp_aad.i, i32 0, i32 %assoc_buf_len.0.i)
  %232 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %sg.i, align 4
  %incdec.ptr39.i = getelementptr %struct.scatterlist, ptr %233, i32 1
  store ptr %incdec.ptr39.i, ptr %sg.i, align 4
  %234 = ptrtoint ptr %resp_aad.i to i32
  %cmp.i2.i = icmp ugt ptr %resp_aad.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i2.i, label %land.lhs.true.i4.i, label %if.then36.i.do.body5.i11.i_crit_edge, !prof !497

if.then36.i.do.body5.i11.i_crit_edge:             ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i11.i

land.lhs.true.i4.i:                               ; preds = %if.then36.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %235 = load ptr, ptr @high_memory, align 4
  %cmp1.i3.i = icmp ugt ptr %235, %resp_aad.i
  br i1 %cmp1.i3.i, label %land.rhs.i10.i, label %land.lhs.true.i4.i.do.body5.i11.i_crit_edge, !prof !497

land.lhs.true.i4.i.do.body5.i11.i_crit_edge:      ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i11.i

land.rhs.i10.i:                                   ; preds = %land.lhs.true.i4.i
  %sub.i5.i = add i32 %234, 1073741824
  %shr.i6.i = lshr i32 %sub.i5.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %236 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i7.i = add i32 %236, %shr.i6.i
  %call.i8.i = call i32 @pfn_valid(i32 noundef %add.i7.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool.i9.i = icmp eq i32 %call.i8.i, 0
  br i1 %tobool.i9.i, label %land.rhs.i10.i.do.body5.i11.i_crit_edge, label %do.end8.i15.i, !prof !493

land.rhs.i10.i.do.body5.i11.i_crit_edge:          ; preds = %land.rhs.i10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i11.i

do.body5.i11.i:                                   ; preds = %land.rhs.i10.i.do.body5.i11.i_crit_edge, %land.lhs.true.i4.i.do.body5.i11.i_crit_edge, %if.then36.i.do.body5.i11.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i15.i:                                    ; preds = %land.rhs.i10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %237 = load ptr, ptr @mem_map, align 4
  %add.ptr.i12.i = getelementptr %struct.page, ptr %237, i32 %shr.i6.i
  %238 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %233, align 4
  %240 = ptrtoint ptr %add.ptr.i12.i to i32
  %and2.i.i.i13.i = and i32 %240, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i13.i)
  %tobool.not.i.i.i14.i = icmp eq i32 %and2.i.i.i13.i, 0
  br i1 %tobool.not.i.i.i14.i, label %do.body11.i.i.i19.i, label %do.body5.i.i.i16.i, !prof !497

do.body5.i.i.i16.i:                               ; preds = %do.end8.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i19.i:                              ; preds = %do.end8.i15.i
  %and.i.i.i.i17.i = and i32 %239, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i17.i)
  %tobool.i.not.i.i.i18.i = icmp eq i32 %and.i.i.i.i17.i, 0
  br i1 %tobool.i.not.i.i.i18.i, label %sg_set_buf.exit26.i, label %do.body19.i.i.i20.i, !prof !497

do.body19.i.i.i20.i:                              ; preds = %do.body11.i.i.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit26.i:                              ; preds = %do.body11.i.i.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i21.i = and i32 %234, 4095
  %and.i.i.i22.i = and i32 %239, 3
  %or.i.i.i23.i = or i32 %and.i.i.i22.i, %240
  %241 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %or.i.i.i23.i, ptr %233, align 4
  %offset1.i.i24.i = getelementptr inbounds %struct.scatterlist, ptr %233, i32 0, i32 1
  %242 = ptrtoint ptr %offset1.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %and.i21.i, ptr %offset1.i.i24.i, align 4
  %length.i.i25.i = getelementptr inbounds %struct.scatterlist, ptr %233, i32 0, i32 2
  %243 = ptrtoint ptr %length.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %assoc_buf_len.0.i, ptr %length.i.i25.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %sg_set_buf.exit26.i, %sg_set_buf.exit.i.if.end43.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resp_len.0)
  %tobool44.not.i = icmp eq i32 %resp_len.0, 0
  br i1 %tobool44.not.i, label %if.end43.i.if.end53.i_crit_edge, label %if.then45.i

if.end43.i.if.end53.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

if.then45.i:                                      ; preds = %if.end43.i
  %244 = ptrtoint ptr %dst_nents to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %dst_nents, align 4
  %conv46.i = trunc i32 %245 to i8
  %call47.i = call i32 @spu_msg_sg_add(ptr noundef nonnull %sg.i, ptr noundef %dst_sg, ptr noundef %dst_skip, i8 noundef zeroext %conv46.i, i32 noundef %resp_len.0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call47.i, i32 %resp_len.0)
  %cmp48.i = icmp ult i32 %call47.i, %resp_len.0
  br i1 %cmp48.i, label %do.end.i, label %if.then45.i.if.end53.i_crit_edge

if.then45.i.if.end53.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

do.end.i:                                         ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #11
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %resp_len.0, i32 noundef %call47.i) #12
  br label %spu_aead_rx_sg_create.exit.thread

if.end53.i:                                       ; preds = %if.then45.i.if.end53.i_crit_edge, %if.end43.i.if.end53.i_crit_edge
  br i1 %tobool23.not.i, label %if.end53.i.if.end64.i_crit_edge, label %if.then55.i

if.end53.i.if.end64.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i

if.then55.i:                                      ; preds = %if.end53.i
  %246 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 8
  %conv58.i = and i32 %data_padlen.1.in.i, 255
  %247 = call ptr @memset(ptr %246, i32 0, i32 %conv58.i)
  %248 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %sg.i, align 4
  %incdec.ptr59.i = getelementptr %struct.scatterlist, ptr %249, i32 1
  store ptr %incdec.ptr59.i, ptr %sg.i, align 4
  %250 = ptrtoint ptr %246 to i32
  %cmp.i27.i = icmp ugt ptr %246, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i27.i, label %land.lhs.true.i29.i, label %if.then55.i.do.body5.i36.i_crit_edge, !prof !497

if.then55.i.do.body5.i36.i_crit_edge:             ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i36.i

land.lhs.true.i29.i:                              ; preds = %if.then55.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %251 = load ptr, ptr @high_memory, align 4
  %cmp1.i28.i = icmp ugt ptr %251, %246
  br i1 %cmp1.i28.i, label %land.rhs.i35.i, label %land.lhs.true.i29.i.do.body5.i36.i_crit_edge, !prof !497

land.lhs.true.i29.i.do.body5.i36.i_crit_edge:     ; preds = %land.lhs.true.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i36.i

land.rhs.i35.i:                                   ; preds = %land.lhs.true.i29.i
  %sub.i30.i = add i32 %250, 1073741824
  %shr.i31.i = lshr i32 %sub.i30.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %252 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i32.i = add i32 %252, %shr.i31.i
  %call.i33.i = call i32 @pfn_valid(i32 noundef %add.i32.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %tobool.i34.i = icmp eq i32 %call.i33.i, 0
  br i1 %tobool.i34.i, label %land.rhs.i35.i.do.body5.i36.i_crit_edge, label %do.end8.i40.i, !prof !493

land.rhs.i35.i.do.body5.i36.i_crit_edge:          ; preds = %land.rhs.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i36.i

do.body5.i36.i:                                   ; preds = %land.rhs.i35.i.do.body5.i36.i_crit_edge, %land.lhs.true.i29.i.do.body5.i36.i_crit_edge, %if.then55.i.do.body5.i36.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i40.i:                                    ; preds = %land.rhs.i35.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %253 = load ptr, ptr @mem_map, align 4
  %add.ptr.i37.i = getelementptr %struct.page, ptr %253, i32 %shr.i31.i
  %254 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %249, align 4
  %256 = ptrtoint ptr %add.ptr.i37.i to i32
  %and2.i.i.i38.i = and i32 %256, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i38.i)
  %tobool.not.i.i.i39.i = icmp eq i32 %and2.i.i.i38.i, 0
  br i1 %tobool.not.i.i.i39.i, label %do.body11.i.i.i44.i, label %do.body5.i.i.i41.i, !prof !497

do.body5.i.i.i41.i:                               ; preds = %do.end8.i40.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i44.i:                              ; preds = %do.end8.i40.i
  %and.i.i.i.i42.i = and i32 %255, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i42.i)
  %tobool.i.not.i.i.i43.i = icmp eq i32 %and.i.i.i.i42.i, 0
  br i1 %tobool.i.not.i.i.i43.i, label %sg_set_buf.exit51.i, label %do.body19.i.i.i45.i, !prof !497

do.body19.i.i.i45.i:                              ; preds = %do.body11.i.i.i44.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit51.i:                              ; preds = %do.body11.i.i.i44.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i46.i = and i32 %250, 4095
  %and.i.i.i47.i = and i32 %255, 3
  %or.i.i.i48.i = or i32 %and.i.i.i47.i, %256
  %257 = ptrtoint ptr %249 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %or.i.i.i48.i, ptr %249, align 4
  %offset1.i.i49.i = getelementptr inbounds %struct.scatterlist, ptr %249, i32 0, i32 1
  %258 = ptrtoint ptr %offset1.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %and.i46.i, ptr %offset1.i.i49.i, align 4
  %length.i.i50.i = getelementptr inbounds %struct.scatterlist, ptr %249, i32 0, i32 2
  %259 = ptrtoint ptr %length.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %conv58.i, ptr %length.i.i50.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %sg_set_buf.exit51.i, %if.end53.i.if.end64.i_crit_edge
  %260 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %sg.i, align 4
  %incdec.ptr65.i = getelementptr %struct.scatterlist, ptr %261, i32 1
  store ptr %incdec.ptr65.i, ptr %sg.i, align 4
  %digest.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 2
  %262 = ptrtoint ptr %digest.i to i32
  %cmp.i52.i = icmp ugt ptr %digest.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i52.i, label %land.lhs.true.i54.i, label %if.end64.i.do.body5.i61.i_crit_edge, !prof !497

if.end64.i.do.body5.i61.i_crit_edge:              ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i61.i

land.lhs.true.i54.i:                              ; preds = %if.end64.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %263 = load ptr, ptr @high_memory, align 4
  %cmp1.i53.i = icmp ugt ptr %263, %digest.i
  br i1 %cmp1.i53.i, label %land.rhs.i60.i, label %land.lhs.true.i54.i.do.body5.i61.i_crit_edge, !prof !497

land.lhs.true.i54.i.do.body5.i61.i_crit_edge:     ; preds = %land.lhs.true.i54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i61.i

land.rhs.i60.i:                                   ; preds = %land.lhs.true.i54.i
  %sub.i55.i = add i32 %262, 1073741824
  %shr.i56.i = lshr i32 %sub.i55.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %264 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i57.i = add i32 %264, %shr.i56.i
  %call.i58.i = call i32 @pfn_valid(i32 noundef %add.i57.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %tobool.i59.i = icmp eq i32 %call.i58.i, 0
  br i1 %tobool.i59.i, label %land.rhs.i60.i.do.body5.i61.i_crit_edge, label %do.end8.i65.i, !prof !493

land.rhs.i60.i.do.body5.i61.i_crit_edge:          ; preds = %land.rhs.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i61.i

do.body5.i61.i:                                   ; preds = %land.rhs.i60.i.do.body5.i61.i_crit_edge, %land.lhs.true.i54.i.do.body5.i61.i_crit_edge, %if.end64.i.do.body5.i61.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i65.i:                                    ; preds = %land.rhs.i60.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %265 = load ptr, ptr @mem_map, align 4
  %add.ptr.i62.i = getelementptr %struct.page, ptr %265, i32 %shr.i56.i
  %266 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %261, align 4
  %268 = ptrtoint ptr %add.ptr.i62.i to i32
  %and2.i.i.i63.i = and i32 %268, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i63.i)
  %tobool.not.i.i.i64.i = icmp eq i32 %and2.i.i.i63.i, 0
  br i1 %tobool.not.i.i.i64.i, label %do.body11.i.i.i69.i, label %do.body5.i.i.i66.i, !prof !497

do.body5.i.i.i66.i:                               ; preds = %do.end8.i65.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i69.i:                              ; preds = %do.end8.i65.i
  %and.i.i.i.i67.i = and i32 %267, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i67.i)
  %tobool.i.not.i.i.i68.i = icmp eq i32 %and.i.i.i.i67.i, 0
  br i1 %tobool.i.not.i.i.i68.i, label %sg_set_buf.exit76.i, label %do.body19.i.i.i70.i, !prof !497

do.body19.i.i.i70.i:                              ; preds = %do.body11.i.i.i69.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit76.i:                              ; preds = %do.body11.i.i.i69.i
  %and.i71.i = and i32 %262, 4095
  %and.i.i.i72.i = and i32 %267, 3
  %or.i.i.i73.i = or i32 %and.i.i.i72.i, %268
  %269 = ptrtoint ptr %261 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %or.i.i.i73.i, ptr %261, align 4
  %offset1.i.i74.i = getelementptr inbounds %struct.scatterlist, ptr %261, i32 0, i32 1
  %270 = ptrtoint ptr %offset1.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %and.i71.i, ptr %offset1.i.i74.i, align 4
  %length.i.i75.i = getelementptr inbounds %struct.scatterlist, ptr %261, i32 0, i32 2
  %271 = ptrtoint ptr %length.i.i75.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %11, ptr %length.i.i75.i, align 4
  br i1 %tobool178.not, label %sg_set_buf.exit76.i.if.end76.i_crit_edge, label %if.then69.i

sg_set_buf.exit76.i.if.end76.i_crit_edge:         ; preds = %sg_set_buf.exit76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

if.then69.i:                                      ; preds = %sg_set_buf.exit76.i
  %rx_stat_pad.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 6
  %272 = call ptr @memset(ptr %rx_stat_pad.i, i32 0, i32 %call177)
  %273 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %sg.i, align 4
  %incdec.ptr72.i = getelementptr %struct.scatterlist, ptr %274, i32 1
  store ptr %incdec.ptr72.i, ptr %sg.i, align 4
  %275 = ptrtoint ptr %rx_stat_pad.i to i32
  %cmp.i77.i = icmp ugt ptr %rx_stat_pad.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i77.i, label %land.lhs.true.i79.i, label %if.then69.i.do.body5.i86.i_crit_edge, !prof !497

if.then69.i.do.body5.i86.i_crit_edge:             ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i86.i

land.lhs.true.i79.i:                              ; preds = %if.then69.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %276 = load ptr, ptr @high_memory, align 4
  %cmp1.i78.i = icmp ugt ptr %276, %rx_stat_pad.i
  br i1 %cmp1.i78.i, label %land.rhs.i85.i, label %land.lhs.true.i79.i.do.body5.i86.i_crit_edge, !prof !497

land.lhs.true.i79.i.do.body5.i86.i_crit_edge:     ; preds = %land.lhs.true.i79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i86.i

land.rhs.i85.i:                                   ; preds = %land.lhs.true.i79.i
  %sub.i80.i = add i32 %275, 1073741824
  %shr.i81.i = lshr i32 %sub.i80.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %277 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i82.i = add i32 %277, %shr.i81.i
  %call.i83.i = call i32 @pfn_valid(i32 noundef %add.i82.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %tobool.i84.i = icmp eq i32 %call.i83.i, 0
  br i1 %tobool.i84.i, label %land.rhs.i85.i.do.body5.i86.i_crit_edge, label %do.end8.i90.i, !prof !493

land.rhs.i85.i.do.body5.i86.i_crit_edge:          ; preds = %land.rhs.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i86.i

do.body5.i86.i:                                   ; preds = %land.rhs.i85.i.do.body5.i86.i_crit_edge, %land.lhs.true.i79.i.do.body5.i86.i_crit_edge, %if.then69.i.do.body5.i86.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i90.i:                                    ; preds = %land.rhs.i85.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %278 = load ptr, ptr @mem_map, align 4
  %add.ptr.i87.i = getelementptr %struct.page, ptr %278, i32 %shr.i81.i
  %279 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %274, align 4
  %281 = ptrtoint ptr %add.ptr.i87.i to i32
  %and2.i.i.i88.i = and i32 %281, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i88.i)
  %tobool.not.i.i.i89.i = icmp eq i32 %and2.i.i.i88.i, 0
  br i1 %tobool.not.i.i.i89.i, label %do.body11.i.i.i94.i, label %do.body5.i.i.i91.i, !prof !497

do.body5.i.i.i91.i:                               ; preds = %do.end8.i90.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i94.i:                              ; preds = %do.end8.i90.i
  %and.i.i.i.i92.i = and i32 %280, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i92.i)
  %tobool.i.not.i.i.i93.i = icmp eq i32 %and.i.i.i.i92.i, 0
  br i1 %tobool.i.not.i.i.i93.i, label %sg_set_buf.exit101.i, label %do.body19.i.i.i95.i, !prof !497

do.body19.i.i.i95.i:                              ; preds = %do.body11.i.i.i94.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit101.i:                             ; preds = %do.body11.i.i.i94.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i96.i = and i32 %275, 4095
  %and.i.i.i97.i = and i32 %280, 3
  %or.i.i.i98.i = or i32 %and.i.i.i97.i, %281
  %282 = ptrtoint ptr %274 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %or.i.i.i98.i, ptr %274, align 4
  %offset1.i.i99.i = getelementptr inbounds %struct.scatterlist, ptr %274, i32 0, i32 1
  %283 = ptrtoint ptr %offset1.i.i99.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %and.i96.i, ptr %offset1.i.i99.i, align 4
  %length.i.i100.i = getelementptr inbounds %struct.scatterlist, ptr %274, i32 0, i32 2
  %284 = ptrtoint ptr %length.i.i100.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %call177, ptr %length.i.i100.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %sg_set_buf.exit101.i, %sg_set_buf.exit76.i.if.end76.i_crit_edge
  %rx_stat.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 7
  %285 = ptrtoint ptr %rx_stat.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 0, ptr %rx_stat.i, align 4
  %286 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %sg.i, align 4
  %288 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 16), align 4
  %call82.i = call zeroext i8 %288() #9
  %conv83.i = zext i8 %call82.i to i32
  %289 = ptrtoint ptr %rx_stat.i to i32
  %cmp.i102.i = icmp ugt ptr %rx_stat.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i102.i, label %land.lhs.true.i104.i, label %if.end76.i.do.body5.i111.i_crit_edge, !prof !497

if.end76.i.do.body5.i111.i_crit_edge:             ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i111.i

land.lhs.true.i104.i:                             ; preds = %if.end76.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %290 = load ptr, ptr @high_memory, align 4
  %cmp1.i103.i = icmp ugt ptr %290, %rx_stat.i
  br i1 %cmp1.i103.i, label %land.rhs.i110.i, label %land.lhs.true.i104.i.do.body5.i111.i_crit_edge, !prof !497

land.lhs.true.i104.i.do.body5.i111.i_crit_edge:   ; preds = %land.lhs.true.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i111.i

land.rhs.i110.i:                                  ; preds = %land.lhs.true.i104.i
  %sub.i105.i = add i32 %289, 1073741824
  %shr.i106.i = lshr i32 %sub.i105.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %291 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i107.i = add i32 %291, %shr.i106.i
  %call.i108.i = call i32 @pfn_valid(i32 noundef %add.i107.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.i)
  %tobool.i109.i = icmp eq i32 %call.i108.i, 0
  br i1 %tobool.i109.i, label %land.rhs.i110.i.do.body5.i111.i_crit_edge, label %do.end8.i115.i, !prof !493

land.rhs.i110.i.do.body5.i111.i_crit_edge:        ; preds = %land.rhs.i110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i111.i

do.body5.i111.i:                                  ; preds = %land.rhs.i110.i.do.body5.i111.i_crit_edge, %land.lhs.true.i104.i.do.body5.i111.i_crit_edge, %if.end76.i.do.body5.i111.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i115.i:                                   ; preds = %land.rhs.i110.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %292 = load ptr, ptr @mem_map, align 4
  %add.ptr.i112.i = getelementptr %struct.page, ptr %292, i32 %shr.i106.i
  %293 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %287, align 4
  %295 = ptrtoint ptr %add.ptr.i112.i to i32
  %and2.i.i.i113.i = and i32 %295, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i113.i)
  %tobool.not.i.i.i114.i = icmp eq i32 %and2.i.i.i113.i, 0
  br i1 %tobool.not.i.i.i114.i, label %do.body11.i.i.i119.i, label %do.body5.i.i.i116.i, !prof !497

do.body5.i.i.i116.i:                              ; preds = %do.end8.i115.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i119.i:                             ; preds = %do.end8.i115.i
  %and.i.i.i.i117.i = and i32 %294, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i117.i)
  %tobool.i.not.i.i.i118.i = icmp eq i32 %and.i.i.i.i117.i, 0
  br i1 %tobool.i.not.i.i.i118.i, label %if.end250, label %do.body19.i.i.i120.i, !prof !497

do.body19.i.i.i120.i:                             ; preds = %do.body11.i.i.i119.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

spu_aead_rx_sg_create.exit.thread:                ; preds = %do.end.i, %if.end22.i.spu_aead_rx_sg_create.exit.thread_crit_edge
  %retval.0.i466.ph = phi i32 [ -12, %if.end22.i.spu_aead_rx_sg_create.exit.thread_crit_edge ], [ -14, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i) #9
  br label %cleanup

if.end250:                                        ; preds = %do.body11.i.i.i119.i
  %and.i121.i = and i32 %289, 4095
  %and.i.i.i122.i = and i32 %294, 3
  %or.i.i.i123.i = or i32 %and.i.i.i122.i, %295
  %296 = ptrtoint ptr %287 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %or.i.i.i123.i, ptr %287, align 4
  %offset1.i.i124.i = getelementptr inbounds %struct.scatterlist, ptr %287, i32 0, i32 1
  %297 = ptrtoint ptr %offset1.i.i124.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %and.i121.i, ptr %offset1.i.i124.i, align 4
  %length.i.i125.i = getelementptr inbounds %struct.scatterlist, ptr %287, i32 0, i32 2
  %298 = ptrtoint ptr %length.i.i125.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %conv83.i, ptr %length.i.i125.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i) #9
  %299 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %src_nents, align 4
  %301 = trunc i32 %300 to i8
  %302 = trunc i32 %assoc_nents.0 to i8
  %303 = ptrtoint ptr %aad_pad_len to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %aad_pad_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %304)
  %tobool259.not = icmp ne i8 %304, 0
  %inc261 = zext i1 %tobool259.not to i8
  %305 = ptrtoint ptr %iv_len69 to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %iv_len69, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %306)
  %tobool264.not = icmp ne i16 %306, 0
  %inc266 = zext i1 %tobool264.not to i8
  %307 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  %call268 = call zeroext i8 %307() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call268)
  %tobool269.not = icmp ne i8 %call268, 0
  %inc271 = zext i1 %tobool269.not to i8
  %conv254 = add i8 %tx_frag_num.1, %302
  %conv257 = add i8 %conv254, %301
  %spec.select463 = add i8 %conv257, %inc261
  %tx_frag_num.3 = add i8 %spec.select463, %inc266
  %tx_frag_num.4 = add i8 %tx_frag_num.3, %inc271
  %308 = ptrtoint ptr %assoc203 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %assoc203, align 4
  %310 = ptrtoint ptr %aead_parms to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %aead_parms, align 4
  %312 = ptrtoint ptr %iv_len69 to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %iv_len69, align 4
  %conv276 = zext i16 %313 to i32
  %314 = ptrtoint ptr %aad_pad_len to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %aad_pad_len, align 2
  %conv278 = zext i8 %315 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg.i467) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %assoc_sg.i) #9
  %316 = ptrtoint ptr %assoc_sg.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr %309, ptr %assoc_sg.i, align 4
  %317 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %ctx1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %assoc_offset.i) #9
  %319 = ptrtoint ptr %assoc_offset.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 0, ptr %assoc_offset.i, align 4
  %conv.i = zext i8 %tx_frag_num.4 to i32
  %320 = mul nuw nsw i32 %conv.i, 20
  %321 = ptrtoint ptr %gfp.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %gfp.i, align 4
  %or.i.i470 = or i32 %322, 256
  %call8.i.i.i504 = call noalias align 128 ptr @__kmalloc(i32 noundef %320, i32 noundef %or.i.i470) #13
  %323 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 14, i32 1
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %call8.i.i.i504, ptr %323, align 4
  %tobool.not.i507 = icmp eq ptr %call8.i.i.i504, null
  br i1 %tobool.not.i507, label %if.end250.spu_aead_tx_sg_create.exit.thread_crit_edge, label %if.end.i512

if.end250.spu_aead_tx_sg_create.exit.thread_crit_edge: ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_aead_tx_sg_create.exit.thread

if.end.i512:                                      ; preds = %if.end250
  call void @sg_init_table(ptr noundef nonnull %call8.i.i.i504, i32 noundef %conv.i) #9
  %incdec.ptr.i509 = getelementptr %struct.scatterlist, ptr %call8.i.i.i504, i32 1
  %325 = ptrtoint ptr %sg.i467 to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %incdec.ptr.i509, ptr %sg.i467, align 4
  %326 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %conv5.i = zext i8 %326 to i32
  %add.i510 = add i32 %call168, %conv5.i
  %327 = ptrtoint ptr %msg_buf to i32
  %cmp.i.i511 = icmp ugt ptr %msg_buf, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i511, label %land.lhs.true.i.i514, label %if.end.i512.do.body5.i.i521_crit_edge, !prof !497

if.end.i512.do.body5.i.i521_crit_edge:            ; preds = %if.end.i512
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i521

land.lhs.true.i.i514:                             ; preds = %if.end.i512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %328 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i513 = icmp ugt ptr %328, %msg_buf
  br i1 %cmp1.i.i513, label %land.rhs.i.i520, label %land.lhs.true.i.i514.do.body5.i.i521_crit_edge, !prof !497

land.lhs.true.i.i514.do.body5.i.i521_crit_edge:   ; preds = %land.lhs.true.i.i514
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i521

land.rhs.i.i520:                                  ; preds = %land.lhs.true.i.i514
  %sub.i.i515 = add i32 %327, 1073741824
  %shr.i.i516 = lshr i32 %sub.i.i515, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %329 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i517 = add i32 %329, %shr.i.i516
  %call.i.i518 = call i32 @pfn_valid(i32 noundef %add.i.i517) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i518)
  %tobool.i.i519 = icmp eq i32 %call.i.i518, 0
  br i1 %tobool.i.i519, label %land.rhs.i.i520.do.body5.i.i521_crit_edge, label %do.end8.i.i525, !prof !493

land.rhs.i.i520.do.body5.i.i521_crit_edge:        ; preds = %land.rhs.i.i520
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i521

do.body5.i.i521:                                  ; preds = %land.rhs.i.i520.do.body5.i.i521_crit_edge, %land.lhs.true.i.i514.do.body5.i.i521_crit_edge, %if.end.i512.do.body5.i.i521_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i.i525:                                   ; preds = %land.rhs.i.i520
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %330 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i522 = getelementptr %struct.page, ptr %330, i32 %shr.i.i516
  %331 = ptrtoint ptr %call8.i.i.i504 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %call8.i.i.i504, align 128
  %333 = ptrtoint ptr %add.ptr.i.i522 to i32
  %and2.i.i.i.i523 = and i32 %333, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i523)
  %tobool.not.i.i.i.i524 = icmp eq i32 %and2.i.i.i.i523, 0
  br i1 %tobool.not.i.i.i.i524, label %do.body11.i.i.i.i529, label %do.body5.i.i.i.i526, !prof !497

do.body5.i.i.i.i526:                              ; preds = %do.end8.i.i525
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i.i529:                             ; preds = %do.end8.i.i525
  %and.i.i.i.i117.i527 = and i32 %332, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i117.i527)
  %tobool.i.not.i.i.i.i528 = icmp eq i32 %and.i.i.i.i117.i527, 0
  br i1 %tobool.i.not.i.i.i.i528, label %sg_set_buf.exit.i536, label %do.body19.i.i.i.i530, !prof !497

do.body19.i.i.i.i530:                             ; preds = %do.body11.i.i.i.i529
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit.i536:                             ; preds = %do.body11.i.i.i.i529
  %and.i.i531 = and i32 %327, 4095
  %and.i.i.i.i532 = and i32 %332, 3
  %or.i.i.i.i533 = or i32 %and.i.i.i.i532, %333
  %334 = ptrtoint ptr %call8.i.i.i504 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %or.i.i.i.i533, ptr %call8.i.i.i504, align 128
  %offset1.i.i.i534 = getelementptr inbounds %struct.scatterlist, ptr %call8.i.i.i504, i32 0, i32 1
  %335 = ptrtoint ptr %offset1.i.i.i534 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %and.i.i531, ptr %offset1.i.i.i534, align 4
  %length.i.i.i535 = getelementptr inbounds %struct.scatterlist, ptr %call8.i.i.i504, i32 0, i32 2
  %336 = ptrtoint ptr %length.i.i.i535 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %add.i510, ptr %length.i.i.i535, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %tobool6.not.i = icmp eq i32 %311, 0
  br i1 %tobool6.not.i, label %sg_set_buf.exit.i536.if.end14.i_crit_edge, label %if.then7.i

sg_set_buf.exit.i536.if.end14.i_crit_edge:        ; preds = %sg_set_buf.exit.i536
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then7.i:                                       ; preds = %sg_set_buf.exit.i536
  %call9.i = call i32 @spu_msg_sg_add(ptr noundef nonnull %sg.i467, ptr noundef nonnull %assoc_sg.i, ptr noundef nonnull %assoc_offset.i, i8 noundef zeroext %302, i32 noundef %311) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %311)
  %cmp.i537 = icmp ult i32 %call9.i, %311
  br i1 %cmp.i537, label %if.then7.i.spu_aead_tx_sg_create.exit.thread.sink.split_crit_edge, label %if.then7.i.if.end14.i_crit_edge

if.then7.i.if.end14.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then7.i.spu_aead_tx_sg_create.exit.thread.sink.split_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_aead_tx_sg_create.exit.thread.sink.split

if.end14.i:                                       ; preds = %if.then7.i.if.end14.i_crit_edge, %sg_set_buf.exit.i536.if.end14.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %313)
  %tobool15.not.i = icmp eq i16 %313, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end20.i_crit_edge, label %if.then16.i

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then16.i:                                      ; preds = %if.end14.i
  %337 = ptrtoint ptr %sg.i467 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %sg.i467, align 4
  %incdec.ptr17.i = getelementptr %struct.scatterlist, ptr %338, i32 1
  store ptr %incdec.ptr17.i, ptr %sg.i467, align 4
  %339 = ptrtoint ptr %iv_ctr to i32
  %cmp.i118.i = icmp ugt ptr %iv_ctr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i118.i, label %land.lhs.true.i120.i, label %if.then16.i.do.body5.i127.i_crit_edge, !prof !497

if.then16.i.do.body5.i127.i_crit_edge:            ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i127.i

land.lhs.true.i120.i:                             ; preds = %if.then16.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %340 = load ptr, ptr @high_memory, align 4
  %cmp1.i119.i = icmp ugt ptr %340, %iv_ctr
  br i1 %cmp1.i119.i, label %land.rhs.i126.i, label %land.lhs.true.i120.i.do.body5.i127.i_crit_edge, !prof !497

land.lhs.true.i120.i.do.body5.i127.i_crit_edge:   ; preds = %land.lhs.true.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i127.i

land.rhs.i126.i:                                  ; preds = %land.lhs.true.i120.i
  %sub.i121.i = add i32 %339, 1073741824
  %shr.i122.i = lshr i32 %sub.i121.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %341 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i123.i = add i32 %341, %shr.i122.i
  %call.i124.i = call i32 @pfn_valid(i32 noundef %add.i123.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.i)
  %tobool.i125.i = icmp eq i32 %call.i124.i, 0
  br i1 %tobool.i125.i, label %land.rhs.i126.i.do.body5.i127.i_crit_edge, label %do.end8.i131.i, !prof !493

land.rhs.i126.i.do.body5.i127.i_crit_edge:        ; preds = %land.rhs.i126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i127.i

do.body5.i127.i:                                  ; preds = %land.rhs.i126.i.do.body5.i127.i_crit_edge, %land.lhs.true.i120.i.do.body5.i127.i_crit_edge, %if.then16.i.do.body5.i127.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i131.i:                                   ; preds = %land.rhs.i126.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %342 = load ptr, ptr @mem_map, align 4
  %add.ptr.i128.i = getelementptr %struct.page, ptr %342, i32 %shr.i122.i
  %343 = ptrtoint ptr %338 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %338, align 4
  %345 = ptrtoint ptr %add.ptr.i128.i to i32
  %and2.i.i.i129.i = and i32 %345, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i129.i)
  %tobool.not.i.i.i130.i = icmp eq i32 %and2.i.i.i129.i, 0
  br i1 %tobool.not.i.i.i130.i, label %do.body11.i.i.i135.i, label %do.body5.i.i.i132.i, !prof !497

do.body5.i.i.i132.i:                              ; preds = %do.end8.i131.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i135.i:                             ; preds = %do.end8.i131.i
  %and.i.i.i.i133.i = and i32 %344, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i133.i)
  %tobool.i.not.i.i.i134.i = icmp eq i32 %and.i.i.i.i133.i, 0
  br i1 %tobool.i.not.i.i.i134.i, label %sg_set_buf.exit142.i, label %do.body19.i.i.i136.i, !prof !497

do.body19.i.i.i136.i:                             ; preds = %do.body11.i.i.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit142.i:                             ; preds = %do.body11.i.i.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i137.i = and i32 %339, 4095
  %and.i.i.i138.i = and i32 %344, 3
  %or.i.i.i139.i = or i32 %and.i.i.i138.i, %345
  %346 = ptrtoint ptr %338 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %or.i.i.i139.i, ptr %338, align 4
  %offset1.i.i140.i = getelementptr inbounds %struct.scatterlist, ptr %338, i32 0, i32 1
  %347 = ptrtoint ptr %offset1.i.i140.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %and.i137.i, ptr %offset1.i.i140.i, align 4
  %length.i.i141.i = getelementptr inbounds %struct.scatterlist, ptr %338, i32 0, i32 2
  %348 = ptrtoint ptr %length.i.i141.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %conv276, ptr %length.i.i141.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %sg_set_buf.exit142.i, %if.end14.i.if.end20.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %315)
  %tobool21.not.i = icmp eq i8 %315, 0
  br i1 %tobool21.not.i, label %if.end20.i.if.end29.i_crit_edge, label %if.then22.i

if.end20.i.if.end29.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then22.i:                                      ; preds = %if.end20.i
  %req_aad_pad.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 8, i32 0, i32 1
  %349 = call ptr @memset(ptr %req_aad_pad.i, i32 0, i32 %conv278)
  %350 = ptrtoint ptr %sg.i467 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %sg.i467, align 4
  %incdec.ptr25.i = getelementptr %struct.scatterlist, ptr %351, i32 1
  store ptr %incdec.ptr25.i, ptr %sg.i467, align 4
  %352 = ptrtoint ptr %req_aad_pad.i to i32
  %cmp.i143.i = icmp ugt ptr %req_aad_pad.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i143.i, label %land.lhs.true.i145.i, label %if.then22.i.do.body5.i152.i_crit_edge, !prof !497

if.then22.i.do.body5.i152.i_crit_edge:            ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i152.i

land.lhs.true.i145.i:                             ; preds = %if.then22.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %353 = load ptr, ptr @high_memory, align 4
  %cmp1.i144.i = icmp ugt ptr %353, %req_aad_pad.i
  br i1 %cmp1.i144.i, label %land.rhs.i151.i, label %land.lhs.true.i145.i.do.body5.i152.i_crit_edge, !prof !497

land.lhs.true.i145.i.do.body5.i152.i_crit_edge:   ; preds = %land.lhs.true.i145.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i152.i

land.rhs.i151.i:                                  ; preds = %land.lhs.true.i145.i
  %sub.i146.i = add i32 %352, 1073741824
  %shr.i147.i = lshr i32 %sub.i146.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %354 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i148.i = add i32 %354, %shr.i147.i
  %call.i149.i = call i32 @pfn_valid(i32 noundef %add.i148.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149.i)
  %tobool.i150.i = icmp eq i32 %call.i149.i, 0
  br i1 %tobool.i150.i, label %land.rhs.i151.i.do.body5.i152.i_crit_edge, label %do.end8.i156.i, !prof !493

land.rhs.i151.i.do.body5.i152.i_crit_edge:        ; preds = %land.rhs.i151.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i152.i

do.body5.i152.i:                                  ; preds = %land.rhs.i151.i.do.body5.i152.i_crit_edge, %land.lhs.true.i145.i.do.body5.i152.i_crit_edge, %if.then22.i.do.body5.i152.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i156.i:                                   ; preds = %land.rhs.i151.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %355 = load ptr, ptr @mem_map, align 4
  %add.ptr.i153.i = getelementptr %struct.page, ptr %355, i32 %shr.i147.i
  %356 = ptrtoint ptr %351 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %351, align 4
  %358 = ptrtoint ptr %add.ptr.i153.i to i32
  %and2.i.i.i154.i = and i32 %358, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i154.i)
  %tobool.not.i.i.i155.i = icmp eq i32 %and2.i.i.i154.i, 0
  br i1 %tobool.not.i.i.i155.i, label %do.body11.i.i.i160.i, label %do.body5.i.i.i157.i, !prof !497

do.body5.i.i.i157.i:                              ; preds = %do.end8.i156.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i160.i:                             ; preds = %do.end8.i156.i
  %and.i.i.i.i158.i = and i32 %357, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i158.i)
  %tobool.i.not.i.i.i159.i = icmp eq i32 %and.i.i.i.i158.i, 0
  br i1 %tobool.i.not.i.i.i159.i, label %sg_set_buf.exit167.i, label %do.body19.i.i.i161.i, !prof !497

do.body19.i.i.i161.i:                             ; preds = %do.body11.i.i.i160.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit167.i:                             ; preds = %do.body11.i.i.i160.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i162.i = and i32 %352, 4095
  %and.i.i.i163.i = and i32 %357, 3
  %or.i.i.i164.i = or i32 %and.i.i.i163.i, %358
  %359 = ptrtoint ptr %351 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %or.i.i.i164.i, ptr %351, align 4
  %offset1.i.i165.i = getelementptr inbounds %struct.scatterlist, ptr %351, i32 0, i32 1
  %360 = ptrtoint ptr %offset1.i.i165.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %and.i162.i, ptr %offset1.i.i165.i, align 4
  %length.i.i166.i = getelementptr inbounds %struct.scatterlist, ptr %351, i32 0, i32 2
  %361 = ptrtoint ptr %length.i.i166.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %conv278, ptr %length.i.i166.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %sg_set_buf.exit167.i, %if.end20.i.if.end29.i_crit_edge
  %digestsize.i = getelementptr inbounds %struct.iproc_ctx_s, ptr %318, i32 0, i32 8
  %362 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %digestsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %363, i32 %13)
  %cmp30.i = icmp ult i32 %363, %13
  %364 = and i1 %retval.0.i, %cmp30.i
  %spec.select.i539 = select i1 %364, i32 %363, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %spec.select.i539)
  %tobool37.not.i = icmp eq i32 %13, %spec.select.i539
  br i1 %tobool37.not.i, label %if.end29.i.if.end50.i_crit_edge, label %if.then38.i

if.end29.i.if.end50.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

if.then38.i:                                      ; preds = %if.end29.i
  %datalen.0.i = sub i32 %13, %spec.select.i539
  %365 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %src_nents, align 4
  %conv39.i = trunc i32 %366 to i8
  %call40.i = call i32 @spu_msg_sg_add(ptr noundef nonnull %sg.i467, ptr noundef %src_sg, ptr noundef %src_skip, i8 noundef zeroext %conv39.i, i32 noundef %datalen.0.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call40.i, i32 %datalen.0.i)
  %cmp41.i = icmp ult i32 %call40.i, %datalen.0.i
  br i1 %cmp41.i, label %if.then38.i.spu_aead_tx_sg_create.exit.thread.sink.split_crit_edge, label %if.then38.i.if.end50.i_crit_edge

if.then38.i.if.end50.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

if.then38.i.spu_aead_tx_sg_create.exit.thread.sink.split_crit_edge: ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_aead_tx_sg_create.exit.thread.sink.split

if.end50.i:                                       ; preds = %if.then38.i.if.end50.i_crit_edge, %if.end29.i.if.end50.i_crit_edge
  br i1 %tobool185.not, label %if.end50.i.if.end59.i_crit_edge, label %if.then52.i

if.end50.i.if.end59.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

if.then52.i:                                      ; preds = %if.end50.i
  %spu_req_pad.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 3
  %367 = call ptr @memset(ptr %spu_req_pad.i, i32 0, i32 %add184)
  %368 = ptrtoint ptr %sg.i467 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %sg.i467, align 4
  %incdec.ptr55.i = getelementptr %struct.scatterlist, ptr %369, i32 1
  store ptr %incdec.ptr55.i, ptr %sg.i467, align 4
  %370 = ptrtoint ptr %spu_req_pad.i to i32
  %cmp.i168.i = icmp ugt ptr %spu_req_pad.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i168.i, label %land.lhs.true.i170.i, label %if.then52.i.do.body5.i177.i_crit_edge, !prof !497

if.then52.i.do.body5.i177.i_crit_edge:            ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i177.i

land.lhs.true.i170.i:                             ; preds = %if.then52.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %371 = load ptr, ptr @high_memory, align 4
  %cmp1.i169.i = icmp ugt ptr %371, %spu_req_pad.i
  br i1 %cmp1.i169.i, label %land.rhs.i176.i, label %land.lhs.true.i170.i.do.body5.i177.i_crit_edge, !prof !497

land.lhs.true.i170.i.do.body5.i177.i_crit_edge:   ; preds = %land.lhs.true.i170.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i177.i

land.rhs.i176.i:                                  ; preds = %land.lhs.true.i170.i
  %sub.i171.i = add i32 %370, 1073741824
  %shr.i172.i = lshr i32 %sub.i171.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %372 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i173.i = add i32 %372, %shr.i172.i
  %call.i174.i = call i32 @pfn_valid(i32 noundef %add.i173.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174.i)
  %tobool.i175.i = icmp eq i32 %call.i174.i, 0
  br i1 %tobool.i175.i, label %land.rhs.i176.i.do.body5.i177.i_crit_edge, label %do.end8.i181.i, !prof !493

land.rhs.i176.i.do.body5.i177.i_crit_edge:        ; preds = %land.rhs.i176.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i177.i

do.body5.i177.i:                                  ; preds = %land.rhs.i176.i.do.body5.i177.i_crit_edge, %land.lhs.true.i170.i.do.body5.i177.i_crit_edge, %if.then52.i.do.body5.i177.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i181.i:                                   ; preds = %land.rhs.i176.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %373 = load ptr, ptr @mem_map, align 4
  %add.ptr.i178.i = getelementptr %struct.page, ptr %373, i32 %shr.i172.i
  %374 = ptrtoint ptr %369 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %369, align 4
  %376 = ptrtoint ptr %add.ptr.i178.i to i32
  %and2.i.i.i179.i = and i32 %376, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i179.i)
  %tobool.not.i.i.i180.i = icmp eq i32 %and2.i.i.i179.i, 0
  br i1 %tobool.not.i.i.i180.i, label %do.body11.i.i.i185.i, label %do.body5.i.i.i182.i, !prof !497

do.body5.i.i.i182.i:                              ; preds = %do.end8.i181.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i185.i:                             ; preds = %do.end8.i181.i
  %and.i.i.i.i183.i = and i32 %375, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i183.i)
  %tobool.i.not.i.i.i184.i = icmp eq i32 %and.i.i.i.i183.i, 0
  br i1 %tobool.i.not.i.i.i184.i, label %sg_set_buf.exit192.i, label %do.body19.i.i.i186.i, !prof !497

do.body19.i.i.i186.i:                             ; preds = %do.body11.i.i.i185.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit192.i:                             ; preds = %do.body11.i.i.i185.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i187.i = and i32 %370, 4095
  %and.i.i.i188.i = and i32 %375, 3
  %or.i.i.i189.i = or i32 %and.i.i.i188.i, %376
  %377 = ptrtoint ptr %369 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %or.i.i.i189.i, ptr %369, align 4
  %offset1.i.i190.i = getelementptr inbounds %struct.scatterlist, ptr %369, i32 0, i32 1
  %378 = ptrtoint ptr %offset1.i.i190.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %and.i187.i, ptr %offset1.i.i190.i, align 4
  %length.i.i191.i = getelementptr inbounds %struct.scatterlist, ptr %369, i32 0, i32 2
  %379 = ptrtoint ptr %length.i.i191.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %add184, ptr %length.i.i191.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %sg_set_buf.exit192.i, %if.end50.i.if.end59.i_crit_edge
  br i1 %retval.0.i, label %land.lhs.true.i195.i, label %if.end59.i.if.end66.i_crit_edge

if.end59.i.if.end66.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i

land.lhs.true.i195.i:                             ; preds = %if.end59.i
  %380 = ptrtoint ptr %sg.i467 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %sg.i467, align 4
  %incdec.ptr62.i = getelementptr %struct.scatterlist, ptr %381, i32 1
  store ptr %incdec.ptr62.i, ptr %sg.i467, align 4
  %382 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %digestsize.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %384 = load ptr, ptr @high_memory, align 4
  %cmp1.i194.i = icmp ugt ptr %384, %digest.i
  br i1 %cmp1.i194.i, label %land.rhs.i201.i, label %land.lhs.true.i195.i.do.body5.i202.i_crit_edge, !prof !497

land.lhs.true.i195.i.do.body5.i202.i_crit_edge:   ; preds = %land.lhs.true.i195.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i202.i

land.rhs.i201.i:                                  ; preds = %land.lhs.true.i195.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %385 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i198.i = add i32 %385, %shr.i56.i
  %call.i199.i = call i32 @pfn_valid(i32 noundef %add.i198.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199.i)
  %tobool.i200.i = icmp eq i32 %call.i199.i, 0
  br i1 %tobool.i200.i, label %land.rhs.i201.i.do.body5.i202.i_crit_edge, label %do.end8.i206.i, !prof !493

land.rhs.i201.i.do.body5.i202.i_crit_edge:        ; preds = %land.rhs.i201.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i202.i

do.body5.i202.i:                                  ; preds = %land.rhs.i201.i.do.body5.i202.i_crit_edge, %land.lhs.true.i195.i.do.body5.i202.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i206.i:                                   ; preds = %land.rhs.i201.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %386 = load ptr, ptr @mem_map, align 4
  %add.ptr.i203.i = getelementptr %struct.page, ptr %386, i32 %shr.i56.i
  %387 = ptrtoint ptr %381 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %381, align 4
  %389 = ptrtoint ptr %add.ptr.i203.i to i32
  %and2.i.i.i204.i = and i32 %389, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i204.i)
  %tobool.not.i.i.i205.i = icmp eq i32 %and2.i.i.i204.i, 0
  br i1 %tobool.not.i.i.i205.i, label %do.body11.i.i.i210.i, label %do.body5.i.i.i207.i, !prof !497

do.body5.i.i.i207.i:                              ; preds = %do.end8.i206.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i210.i:                             ; preds = %do.end8.i206.i
  %and.i.i.i.i208.i = and i32 %388, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i208.i)
  %tobool.i.not.i.i.i209.i = icmp eq i32 %and.i.i.i.i208.i, 0
  br i1 %tobool.i.not.i.i.i209.i, label %sg_set_buf.exit217.i, label %do.body19.i.i.i211.i, !prof !497

do.body19.i.i.i211.i:                             ; preds = %do.body11.i.i.i210.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit217.i:                             ; preds = %do.body11.i.i.i210.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i.i213.i = and i32 %388, 3
  %or.i.i.i214.i = or i32 %and.i.i.i213.i, %389
  %390 = ptrtoint ptr %381 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 %or.i.i.i214.i, ptr %381, align 4
  %offset1.i.i215.i = getelementptr inbounds %struct.scatterlist, ptr %381, i32 0, i32 1
  %391 = ptrtoint ptr %offset1.i.i215.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %and.i71.i, ptr %offset1.i.i215.i, align 4
  %length.i.i216.i = getelementptr inbounds %struct.scatterlist, ptr %381, i32 0, i32 2
  %392 = ptrtoint ptr %length.i.i216.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 %383, ptr %length.i.i216.i, align 4
  br label %if.end66.i

if.end66.i:                                       ; preds = %sg_set_buf.exit217.i, %if.end59.i.if.end66.i_crit_edge
  %393 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  %call67.i = call zeroext i8 %393() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call67.i)
  %tobool69.not.i = icmp eq i8 %call67.i, 0
  br i1 %tobool69.not.i, label %if.end66.i.if.end283_crit_edge, label %if.then70.i

if.end66.i.if.end283_crit_edge:                   ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end283

if.then70.i:                                      ; preds = %if.end66.i
  %conv68.i = zext i8 %call67.i to i32
  %tx_stat.i = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 28, i32 4
  %394 = call ptr @memset(ptr %tx_stat.i, i32 0, i32 %conv68.i)
  %395 = ptrtoint ptr %sg.i467 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %sg.i467, align 4
  %397 = ptrtoint ptr %tx_stat.i to i32
  %cmp.i218.i = icmp ugt ptr %tx_stat.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i218.i, label %land.lhs.true.i220.i, label %if.then70.i.do.body5.i227.i_crit_edge, !prof !497

if.then70.i.do.body5.i227.i_crit_edge:            ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i227.i

land.lhs.true.i220.i:                             ; preds = %if.then70.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %398 = load ptr, ptr @high_memory, align 4
  %cmp1.i219.i = icmp ugt ptr %398, %tx_stat.i
  br i1 %cmp1.i219.i, label %land.rhs.i226.i, label %land.lhs.true.i220.i.do.body5.i227.i_crit_edge, !prof !497

land.lhs.true.i220.i.do.body5.i227.i_crit_edge:   ; preds = %land.lhs.true.i220.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i227.i

land.rhs.i226.i:                                  ; preds = %land.lhs.true.i220.i
  %sub.i221.i = add i32 %397, 1073741824
  %shr.i222.i = lshr i32 %sub.i221.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %399 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i223.i = add i32 %399, %shr.i222.i
  %call.i224.i = call i32 @pfn_valid(i32 noundef %add.i223.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224.i)
  %tobool.i225.i = icmp eq i32 %call.i224.i, 0
  br i1 %tobool.i225.i, label %land.rhs.i226.i.do.body5.i227.i_crit_edge, label %do.end8.i231.i, !prof !493

land.rhs.i226.i.do.body5.i227.i_crit_edge:        ; preds = %land.rhs.i226.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i227.i

do.body5.i227.i:                                  ; preds = %land.rhs.i226.i.do.body5.i227.i_crit_edge, %land.lhs.true.i220.i.do.body5.i227.i_crit_edge, %if.then70.i.do.body5.i227.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !498
  unreachable

do.end8.i231.i:                                   ; preds = %land.rhs.i226.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %400 = load ptr, ptr @mem_map, align 4
  %add.ptr.i228.i = getelementptr %struct.page, ptr %400, i32 %shr.i222.i
  %401 = ptrtoint ptr %396 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %396, align 4
  %403 = ptrtoint ptr %add.ptr.i228.i to i32
  %and2.i.i.i229.i = and i32 %403, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i229.i)
  %tobool.not.i.i.i230.i = icmp eq i32 %and2.i.i.i229.i, 0
  br i1 %tobool.not.i.i.i230.i, label %do.body11.i.i.i235.i, label %do.body5.i.i.i232.i, !prof !497

do.body5.i.i.i232.i:                              ; preds = %do.end8.i231.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !499
  unreachable

do.body11.i.i.i235.i:                             ; preds = %do.end8.i231.i
  %and.i.i.i.i233.i = and i32 %402, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i233.i)
  %tobool.i.not.i.i.i234.i = icmp eq i32 %and.i.i.i.i233.i, 0
  br i1 %tobool.i.not.i.i.i234.i, label %sg_set_buf.exit242.i, label %do.body19.i.i.i236.i, !prof !497

do.body19.i.i.i236.i:                             ; preds = %do.body11.i.i.i235.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !500
  unreachable

sg_set_buf.exit242.i:                             ; preds = %do.body11.i.i.i235.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i237.i = and i32 %397, 4095
  %and.i.i.i238.i = and i32 %402, 3
  %or.i.i.i239.i = or i32 %and.i.i.i238.i, %403
  %404 = ptrtoint ptr %396 to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %or.i.i.i239.i, ptr %396, align 4
  %offset1.i.i240.i = getelementptr inbounds %struct.scatterlist, ptr %396, i32 0, i32 1
  %405 = ptrtoint ptr %offset1.i.i240.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %and.i237.i, ptr %offset1.i.i240.i, align 4
  %length.i.i241.i = getelementptr inbounds %struct.scatterlist, ptr %396, i32 0, i32 2
  %406 = ptrtoint ptr %length.i.i241.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %conv68.i, ptr %length.i.i241.i, align 4
  br label %if.end283

spu_aead_tx_sg_create.exit.thread.sink.split:     ; preds = %if.then38.i.spu_aead_tx_sg_create.exit.thread.sink.split_crit_edge, %if.then7.i.spu_aead_tx_sg_create.exit.thread.sink.split_crit_edge
  %.str.64.sink = phi ptr [ @.str.64, %if.then7.i.spu_aead_tx_sg_create.exit.thread.sink.split_crit_edge ], [ @.str.44, %if.then38.i.spu_aead_tx_sg_create.exit.thread.sink.split_crit_edge ]
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.64.sink, ptr noundef nonnull @.str.65) #12
  br label %spu_aead_tx_sg_create.exit.thread

spu_aead_tx_sg_create.exit.thread:                ; preds = %spu_aead_tx_sg_create.exit.thread.sink.split, %if.end250.spu_aead_tx_sg_create.exit.thread_crit_edge
  %retval.0.i541.ph = phi i32 [ -12, %if.end250.spu_aead_tx_sg_create.exit.thread_crit_edge ], [ -14, %spu_aead_tx_sg_create.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %assoc_offset.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %assoc_sg.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i467) #9
  br label %cleanup

if.end283:                                        ; preds = %sg_set_buf.exit242.i, %if.end66.i.if.end283_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %assoc_offset.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %assoc_sg.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg.i467) #9
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 4
  %407 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %flags, align 4
  %chan_idx = getelementptr inbounds %struct.iproc_reqctx_s, ptr %rctx, i32 0, i32 2
  %409 = ptrtoint ptr %chan_idx to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %chan_idx, align 4
  %call284 = call fastcc i32 @mailbox_send_message(ptr noundef %mb_mssg, i32 noundef %408, i8 noundef zeroext %410)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284)
  %cmp285 = icmp slt i32 %call284, 0
  %call284. = select i1 %cmp285, i32 %call284, i32 -115, !prof !493
  br label %cleanup

cleanup:                                          ; preds = %if.end283, %spu_aead_tx_sg_create.exit.thread, %spu_aead_rx_sg_create.exit.thread
  %retval.0 = phi i32 [ %call284., %if.end283 ], [ %retval.0.i466.ph, %spu_aead_rx_sg_create.exit.thread ], [ %retval.0.i541.ph, %spu_aead_tx_sg_create.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %aead_parms) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %hash_parms) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cipher_parms) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %req_opts) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_shash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_copy_part_from_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu_sg_count(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_copy_part_to_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_to_ctr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mailbox_send_message(ptr noundef %mssg, i32 noundef %flags, i8 noundef zeroext %chan_idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @iproc_priv, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %idxprom = zext i8 %chan_idx to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @mbox_send_message(ptr noundef %3, ptr noundef %mssg) #9
  %and = and i32 %flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %call)
  %cmp34 = icmp eq i32 %call, -105
  %or.cond = select i1 %tobool.not, i1 %cmp34, i1 false
  br i1 %or.cond, label %entry.land.rhs_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %retry_cnt.035 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %retry_cnt.035)
  %exitcond.not = icmp eq i32 %retry_cnt.035, 1000
  br i1 %exitcond.not, label %land.rhs.if.then7_crit_edge, label %while.body

land.rhs.if.then7_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %retry_cnt.035, 1
  tail call void @usleep_range_state(i32 noundef 800, i32 noundef 1000, i32 noundef 2) #9
  %4 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %arrayidx4 = getelementptr ptr, ptr %4, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx4, align 4
  %call5 = tail call i32 @mbox_send_message(ptr noundef %6, ptr noundef %mssg) #9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 16), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 16), i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 16), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 16), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 16)) #9, !srcloc !496
  %cmp = icmp eq i32 %call5, -105
  br i1 %cmp, label %while.body.land.rhs_crit_edge, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.end:                                           ; preds = %while.body.if.end_crit_edge, %entry.if.end_crit_edge
  %err.1 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call5, %while.body.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp6 = icmp slt i32 %err.1, 0
  br i1 %cmp6, label %if.end.if.then7_crit_edge, label %if.end8

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %land.rhs.if.then7_crit_edge
  %err.132 = phi i32 [ %err.1, %if.end.if.then7_crit_edge ], [ -105, %land.rhs.if.then7_crit_edge ]
  %call.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 17), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 17), i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 17), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 17), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 17)) #9, !srcloc !496
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %error = getelementptr inbounds %struct.brcm_message, ptr %mssg, i32 0, i32 3
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9 = icmp slt i32 %10, 0
  br i1 %cmp9, label %do.end, label %if.end8.if.end13_crit_edge, !prof !493

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.46, i32 noundef %10) #12
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end8.if.end13_crit_edge
  %11 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %arrayidx15 = getelementptr ptr, ptr %11, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 4
  tail call void @mbox_client_txdone(ptr noundef %13, i32 noundef %10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then7
  %retval.0 = phi i32 [ %err.132, %if.then7 ], [ %10, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu_msg_sg_add(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_client_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spum_dump_msg_hdr(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_payload_length(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @spum_response_hdr_len(i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @spum_hash_pad_len(i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_gcm_ccm_pad_len(i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_assoc_resp_len(i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spum_aead_ivlen(i32 noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_hash_type(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_digest_size(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_create_request(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @spum_cipher_req_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spum_cipher_req_finish(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spum_request_pad(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spum_tx_status_len() #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spum_rx_status_len() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_status_process(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spum_xts_tweak_in_payload() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spum_ccm_update_iv(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_wordalign_padlen(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_ns2_ctx_max_payload(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_nsp_ctx_max_payload(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spu2_dump_msg_hdr(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_ctx_max_payload(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_payload_length(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @spu2_response_hdr_len(i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @spu2_hash_pad_len(i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_gcm_ccm_pad_len(i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_assoc_resp_len(i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spu2_aead_ivlen(i32 noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_hash_type(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_digest_size(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_create_request(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @spu2_cipher_req_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spu2_cipher_req_finish(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spu2_request_pad(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spu2_tx_status_len() #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spu2_rx_status_len() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_status_process(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spu2_xts_tweak_in_payload() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spu2_ccm_update_iv(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_wordalign_padlen(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spu_register_ahash(ptr noundef %driver_alg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %alg = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2
  %auth_info = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 4
  %0 = ptrtoint ptr %auth_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %auth_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %mode = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3.not = icmp eq i32 %3, 0
  br i1 %cmp3.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true4

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true4:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5 = icmp eq i32 %4, 0
  br i1 %cmp5, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.if.end12_crit_edge

land.lhs.true4.if.end12_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp8 = icmp ugt i32 %1, 7
  br i1 %cmp8, label %land.lhs.true9, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true9:                                   ; preds = %if.end
  %5 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 22), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp10.not = icmp eq i32 %5, 3
  br i1 %cmp10.not, label %land.lhs.true9.if.end12_crit_edge, label %land.lhs.true9.cleanup_crit_edge

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true9.if.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true9.if.end12_crit_edge, %if.end.if.end12_crit_edge, %land.lhs.true4.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge
  %cra_module = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 11, i32 3, i32 15
  %6 = ptrtoint ptr %cra_module to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %cra_module, align 4
  %7 = load i32, ptr @hash_pri, align 4
  %cra_priority = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 11, i32 3, i32 6
  %8 = ptrtoint ptr %cra_priority to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cra_priority, align 32
  %cra_alignmask = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 11, i32 3, i32 5
  %9 = ptrtoint ptr %cra_alignmask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cra_alignmask, align 4
  %cra_ctxsize = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 11, i32 3, i32 4
  %10 = ptrtoint ptr %cra_ctxsize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1436, ptr %cra_ctxsize, align 8
  %cra_init = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 11, i32 3, i32 12
  %11 = ptrtoint ptr %cra_init to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ahash_cra_init, ptr %cra_init, align 64
  %cra_exit = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 11, i32 3, i32 13
  %12 = ptrtoint ptr %cra_exit to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @generic_cra_exit, ptr %cra_exit, align 4
  %cra_flags = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 11, i32 3, i32 2
  %13 = ptrtoint ptr %cra_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65664, ptr %cra_flags, align 16
  %statesize = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %statesize to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 208, ptr %statesize, align 4
  %mode27 = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %mode27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp28.not = icmp eq i32 %16, 2
  br i1 %cmp28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end12
  %17 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ahash_init, ptr %alg, align 128
  %update = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ahash_update, ptr %update, align 4
  %final = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 2
  %19 = ptrtoint ptr %final to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ahash_final, ptr %final, align 8
  %finup = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 3
  %20 = ptrtoint ptr %finup to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ahash_finup, ptr %finup, align 4
  %digest = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 4
  %21 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ahash_digest, ptr %digest, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %switch = icmp ult i32 %16, 2
  %or.cond = select i1 %cmp, i1 %switch, i1 false
  br i1 %or.cond, label %if.then40, label %if.then29.if.end48_crit_edge

if.then29.if.end48_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then40:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %setkey = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 7
  %22 = ptrtoint ptr %setkey to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ahash_setkey, ptr %setkey, align 4
  br label %if.end48

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %setkey42 = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 7
  %23 = ptrtoint ptr %setkey42 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ahash_hmac_setkey, ptr %setkey42, align 4
  %24 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ahash_hmac_init, ptr %alg, align 128
  %update44 = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %update44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ahash_hmac_update, ptr %update44, align 4
  %final45 = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 2
  %26 = ptrtoint ptr %final45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ahash_hmac_final, ptr %final45, align 8
  %finup46 = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 3
  %27 = ptrtoint ptr %finup46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ahash_hmac_finup, ptr %finup46, align 4
  %digest47 = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 4
  %28 = ptrtoint ptr %digest47 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ahash_hmac_digest, ptr %digest47, align 16
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then40, %if.then29.if.end48_crit_edge
  %export = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 5
  %29 = ptrtoint ptr %export to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ahash_export, ptr %export, align 4
  %import = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 6
  %30 = ptrtoint ptr %import to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ahash_import, ptr %import, align 8
  %call = tail call i32 @crypto_register_ahash(ptr noundef %alg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp49 = icmp eq i32 %call, 0
  br i1 %cmp49, label %if.then50, label %if.end48.do.body_crit_edge

if.end48.do.body_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %registered = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 6
  %31 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %registered, align 1
  br label %do.body

do.body:                                          ; preds = %if.then50, %if.end48.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spu_register_ahash.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spu_register_ahash, %if.then55)) #9
          to label %cleanup [label %if.then55], !srcloc !495

if.then55:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %cra_driver_name = getelementptr inbounds %struct.iproc_alg_s, ptr %driver_alg, i32 0, i32 2, i32 0, i32 11, i32 3, i32 9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spu_register_ahash.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.99, ptr noundef %cra_driver_name) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %do.body, %land.lhs.true9.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true4.cleanup_crit_edge ], [ 0, %land.lhs.true9.cleanup_crit_edge ], [ %call, %if.then55 ], [ %call, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aead(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_gcm_ccm_setkey(ptr nocapture noundef %cipher, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 1
  %base.i = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 0, i32 3
  %is_esp = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 44
  %0 = ptrtoint ptr %is_esp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_esp, align 4, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %digestsize = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 36
  %2 = ptrtoint ptr %digestsize to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %keylen, ptr %digestsize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %enckeylen = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 2, i32 1
  %3 = ptrtoint ptr %enckeylen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %keylen, ptr %enckeylen, align 4
  %authkeylen = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 4
  %4 = ptrtoint ptr %authkeylen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %authkeylen, align 4
  %5 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %keylen, label %badkey [
    i32 16, label %if.end.sw.epilog_crit_edge
    i32 24, label %sw.bb3
    i32 32, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb3, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 2, %sw.bb5 ], [ 1, %sw.bb3 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %cipher_type6 = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 56
  %6 = ptrtoint ptr %cipher_type6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %cipher_type6, align 4
  %7 = ptrtoint ptr %enckeylen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enckeylen, align 4
  %9 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %key, i32 %8)
  %fallback_cipher = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 76
  %10 = ptrtoint ptr %fallback_cipher to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fallback_cipher, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %sw.epilog.if.end28_crit_edge, label %if.then16

sw.epilog.if.end28_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then16:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.crypto_aead, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base, align 128
  %and = and i32 %13, -1048321
  store i32 %and, ptr %base, align 128
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base.i, align 128
  %and19 = and i32 %15, 1048320
  %16 = ptrtoint ptr %fallback_cipher to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fallback_cipher, align 4
  %base21 = getelementptr inbounds %struct.crypto_aead, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base21, align 128
  %or = or i32 %19, %and19
  store i32 %or, ptr %base21, align 128
  %20 = load ptr, ptr %fallback_cipher, align 4
  %salt_len = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 12
  %21 = ptrtoint ptr %salt_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %salt_len, align 4
  %add = add i32 %22, %keylen
  %call24 = tail call i32 @crypto_aead_setkey(ptr noundef %20, ptr noundef %key, i32 noundef %add) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then16, %sw.epilog.if.end28_crit_edge
  %ret.0 = phi i32 [ 0, %sw.epilog.if.end28_crit_edge ], [ %call24, %if.then16 ]
  %23 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 3), align 8
  %24 = ptrtoint ptr %authkeylen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %authkeylen, align 4
  %conv = trunc i32 %25 to i16
  %26 = ptrtoint ptr %enckeylen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %enckeylen, align 4
  %conv31 = trunc i32 %27 to i16
  %call32 = tail call zeroext i16 %23(i16 noundef zeroext %conv, i16 noundef zeroext %conv31, i1 noundef zeroext false) #9
  %spu_resp_hdr_len = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 6, i32 3, i32 4, i32 2
  %28 = ptrtoint ptr %spu_resp_hdr_len to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %call32, ptr %spu_resp_hdr_len, align 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3), i32 1, i32 3, i32 1) #9
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3)) #9, !srcloc !496
  br label %cleanup

badkey:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %enckeylen to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %enckeylen, align 4
  %digestsize37 = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 36
  %31 = ptrtoint ptr %digestsize37 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %digestsize37, align 4
  br label %cleanup

cleanup:                                          ; preds = %badkey, %if.end28
  %retval.0 = phi i32 [ -22, %badkey ], [ %ret.0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_gcm_esp_setkey(ptr nocapture noundef %cipher, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %keylen)
  %cmp = icmp ult i32 %keylen, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %salt_len = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 12
  %0 = ptrtoint ptr %salt_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %salt_len, align 4
  %salt_offset = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 16
  %1 = ptrtoint ptr %salt_offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %salt_offset, align 4
  %salt = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 8
  %add.ptr = getelementptr i8, ptr %key, i32 %keylen
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -4
  %2 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr1, align 1
  %4 = ptrtoint ptr %salt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %salt, align 4
  %sub = add i32 %keylen, -4
  %digestsize = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 36
  %5 = ptrtoint ptr %digestsize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %digestsize, align 4
  %is_esp = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 44
  %6 = ptrtoint ptr %is_esp to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_esp, align 4
  %call4 = tail call i32 @aead_gcm_ccm_setkey(ptr noundef %cipher, ptr noundef %key, i32 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_ccm_esp_setkey(ptr nocapture noundef %cipher, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %keylen)
  %cmp = icmp ult i32 %keylen, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %salt_len = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 12
  %0 = ptrtoint ptr %salt_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %salt_len, align 4
  %salt_offset = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 16
  %1 = ptrtoint ptr %salt_offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %salt_offset, align 4
  %salt = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 8
  %add.ptr = getelementptr i8, ptr %key, i32 %keylen
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -3
  %2 = call ptr @memcpy(ptr %salt, ptr %add.ptr1, i32 3)
  %sub = add i32 %keylen, -3
  %is_esp = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 44
  %3 = ptrtoint ptr %is_esp to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %is_esp, align 4
  %call4 = tail call i32 @aead_gcm_ccm_setkey(ptr noundef %cipher, ptr noundef %key, i32 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfc4543_gcm_esp_setkey(ptr nocapture noundef %cipher, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %keylen)
  %cmp = icmp ult i32 %keylen, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %salt_len = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 12
  %0 = ptrtoint ptr %salt_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %salt_len, align 4
  %salt_offset = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 16
  %1 = ptrtoint ptr %salt_offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %salt_offset, align 4
  %salt = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 8
  %add.ptr = getelementptr i8, ptr %key, i32 %keylen
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -4
  %2 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr1, align 1
  %4 = ptrtoint ptr %salt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %salt, align 4
  %sub = add i32 %keylen, -4
  %digestsize = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 36
  %5 = ptrtoint ptr %digestsize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %digestsize, align 4
  %is_esp = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 44
  %6 = ptrtoint ptr %is_esp to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_esp, align 4
  %is_rfc4543 = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 6, i32 3, i32 4, i32 8
  %7 = ptrtoint ptr %is_rfc4543 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %is_rfc4543, align 4
  %call4 = tail call i32 @aead_gcm_ccm_setkey(ptr noundef %cipher, ptr noundef %key, i32 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_authenc_setkey(ptr nocapture noundef %cipher, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  %tmp.i.i = alloca %struct.des_ctx, align 4
  %keys = alloca %struct.crypto_authenc_keys, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 1
  %base.i = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys) #9
  %0 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 1
  %1 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 2
  %2 = call ptr @memset(ptr %keys, i32 255, i32 16)
  %call2 = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %keys, ptr noundef %key, i32 noundef %keylen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.badkey_crit_edge

entry.badkey_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %badkey

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp = icmp ugt i32 %5, 256
  br i1 %cmp, label %if.end.badkey_crit_edge, label %lor.lhs.false

if.end.badkey_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %badkey

lor.lhs.false:                                    ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %7)
  %cmp3 = icmp ugt i32 %7, 256
  br i1 %cmp3, label %lor.lhs.false.badkey_crit_edge, label %if.end5

lor.lhs.false.badkey_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %badkey

if.end5:                                          ; preds = %lor.lhs.false
  %enckeylen7 = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 2, i32 1
  %8 = ptrtoint ptr %enckeylen7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %enckeylen7, align 4
  %authkeylen9 = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 4
  %9 = ptrtoint ptr %authkeylen9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %authkeylen9, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %0, align 4
  %12 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %11, i32 %5)
  %authkey = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 2, i32 2
  %13 = call ptr @memset(ptr %authkey, i32 0, i32 260)
  %14 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %keys, align 4
  %16 = call ptr @memcpy(ptr %authkey, ptr %15, i32 %7)
  %alg = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 40
  %17 = ptrtoint ptr %alg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %alg, align 4
  %cipher_info = getelementptr inbounds %struct.iproc_alg_s, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cipher_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cipher_info, align 128
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %20, label %do.end [
    i32 2, label %sw.bb
    i32 3, label %sw.bb24
    i32 4, label %sw.bb32
  ]

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 8
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i.i) #9
  %22 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 128)
  %call.i.i115 = call i32 @des_expand_key(ptr noundef nonnull %tmp.i.i, ptr noundef %11, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call.i.i115)
  %cmp.i.i = icmp eq i32 %call.i.i115, -126
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.verify_aead_des_key.exit_crit_edge

if.end.i.verify_aead_des_key.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify_aead_des_key.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base.i, align 128
  %and.i.i = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select = select i1 %tobool.not.i.i, i32 0, i32 -22
  br label %verify_aead_des_key.exit

verify_aead_des_key.exit:                         ; preds = %if.then.i.i, %if.end.i.verify_aead_des_key.exit_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i115, %if.end.i.verify_aead_des_key.exit_crit_edge ], [ %spec.select, %if.then.i.i ]
  %25 = call ptr @memset(ptr %tmp.i.i, i32 0, i32 128)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #9, !srcloc !501
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool21.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool21.not, label %verify_aead_des_key.exit.sw.epilog42_crit_edge, label %verify_aead_des_key.exit.cleanup_crit_edge

verify_aead_des_key.exit.cleanup_crit_edge:       ; preds = %verify_aead_des_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

verify_aead_des_key.exit.sw.epilog42_crit_edge:   ; preds = %verify_aead_des_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog42

sw.bb24:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %5)
  %cmp.not.i116 = icmp eq i32 %5, 24
  br i1 %cmp.not.i116, label %if.end.i120, label %sw.bb24.cleanup_crit_edge

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i120:                                      ; preds = %sw.bb24
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base.i, align 128
  %and.i.i118 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i118)
  %tobool.not.i.i119 = icmp eq i32 %and.i.i118, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i) #9
  %28 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 1
  %29 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 2
  %30 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 3
  %31 = call ptr @memcpy(ptr %K.i.i.i, ptr %11, i32 24)
  %32 = ptrtoint ptr %K.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %K.i.i.i, align 4
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %29, align 4
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %28, align 4
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %40 = icmp eq i32 %33, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %41 = icmp eq i32 %37, %39
  %tobool.not.i.i.i = and i1 %40, %41
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i120
  %42 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 5
  %43 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %45)
  %48 = icmp ne i32 %35, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %47)
  %49 = icmp ne i32 %39, %47
  %tobool12.not.not.i.i.i = or i1 %48, %49
  %brmerge.i.i.i = or i1 %tobool.not.i.i119, %tobool12.not.not.i.i.i
  br i1 %brmerge.i.i.i, label %lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge, label %cleanup.critedge

lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i120
  br i1 %tobool.not.i.i119, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %cleanup.critedge127

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge
  %50 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #9, !srcloc !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #9
  br label %sw.epilog42

sw.bb32:                                          ; preds = %if.end5
  %51 = ptrtoint ptr %enckeylen7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %enckeylen7, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %52, label %sw.bb32.badkey_crit_edge [
    i32 16, label %sw.bb32.sw.epilog42_crit_edge
    i32 24, label %sw.bb36
    i32 32, label %sw.bb38
  ]

sw.bb32.sw.epilog42_crit_edge:                    ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog42

sw.bb32.badkey_crit_edge:                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %badkey

sw.bb36:                                          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog42

sw.bb38:                                          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog42

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.aead_authenc_setkey) #12
  br label %cleanup

sw.epilog42:                                      ; preds = %sw.bb38, %sw.bb36, %sw.bb32.sw.epilog42_crit_edge, %if.end.i.i.i, %verify_aead_des_key.exit.sw.epilog42_crit_edge
  %.sink = phi i32 [ 1, %sw.bb36 ], [ 2, %sw.bb38 ], [ 0, %if.end.i.i.i ], [ 0, %verify_aead_des_key.exit.sw.epilog42_crit_edge ], [ 0, %sw.bb32.sw.epilog42_crit_edge ]
  %cipher_type35 = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 56
  %54 = ptrtoint ptr %cipher_type35 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink, ptr %cipher_type35, align 4
  %fallback_cipher = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 76
  %55 = ptrtoint ptr %fallback_cipher to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fallback_cipher, align 4
  %tobool51.not = icmp eq ptr %56, null
  br i1 %tobool51.not, label %sw.epilog42.if.end64_crit_edge, label %if.then52

sw.epilog42.if.end64_crit_edge:                   ; preds = %sw.epilog42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then52:                                        ; preds = %sw.epilog42
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.crypto_aead, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %base, align 128
  %and = and i32 %58, -1048321
  store i32 %and, ptr %base, align 128
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base.i, align 128
  %and55 = and i32 %60, 1048320
  %61 = ptrtoint ptr %fallback_cipher to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fallback_cipher, align 4
  %base57 = getelementptr inbounds %struct.crypto_aead, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %base57 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %base57, align 128
  %or = or i32 %64, %and55
  store i32 %or, ptr %base57, align 128
  %65 = load ptr, ptr %fallback_cipher, align 4
  %call60 = call i32 @crypto_aead_setkey(ptr noundef %65, ptr noundef %key, i32 noundef %keylen) #9
  br label %if.end64

if.end64:                                         ; preds = %if.then52, %sw.epilog42.if.end64_crit_edge
  %ret.0 = phi i32 [ 0, %sw.epilog42.if.end64_crit_edge ], [ %call60, %if.then52 ]
  %66 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 3), align 8
  %67 = ptrtoint ptr %authkeylen9 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %authkeylen9, align 4
  %conv = trunc i32 %68 to i16
  %69 = ptrtoint ptr %enckeylen7 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %enckeylen7, align 4
  %conv67 = trunc i32 %70 to i16
  %call68 = call zeroext i16 %66(i16 noundef zeroext %conv, i16 noundef zeroext %conv67, i1 noundef zeroext false) #9
  %spu_resp_hdr_len = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 6, i32 3, i32 4, i32 2
  %71 = ptrtoint ptr %spu_resp_hdr_len to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %call68, ptr %spu_resp_hdr_len, align 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3), i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3), i32 1, i32 3, i32 1) #9
  %72 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3)) #9, !srcloc !496
  br label %cleanup

badkey:                                           ; preds = %sw.bb32.badkey_crit_edge, %lor.lhs.false.badkey_crit_edge, %if.end.badkey_crit_edge, %entry.badkey_crit_edge
  %enckeylen69 = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 2, i32 1
  %73 = ptrtoint ptr %enckeylen69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %enckeylen69, align 4
  %authkeylen70 = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 4
  %74 = ptrtoint ptr %authkeylen70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %authkeylen70, align 4
  %digestsize = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 36
  %75 = ptrtoint ptr %digestsize to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %digestsize, align 4
  br label %cleanup

cleanup.critedge:                                 ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #9, !srcloc !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #9
  br label %cleanup

cleanup.critedge127:                              ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #9, !srcloc !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge127, %cleanup.critedge, %badkey, %if.end64, %do.end, %sw.bb24.cleanup_crit_edge, %verify_aead_des_key.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %badkey ], [ -22, %do.end ], [ %ret.0, %if.end64 ], [ -22, %verify_aead_des_key.exit.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb24.cleanup_crit_edge ], [ -22, %cleanup.critedge ], [ -22, %cleanup.critedge127 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_authenc_extractkeys(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skcipher_init_tfm(ptr nocapture noundef %skcipher) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %2 = ptrtoint ptr %skcipher to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2396, ptr %skcipher, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 -256
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cra_blocksize.i.i, align 4
  %alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 1, i32 44
  %5 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %alg.i, align 4
  %cipher.i = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 1, i32 52
  %cipher_info.i = getelementptr i8, ptr %1, i32 640
  %6 = ptrtoint ptr %cipher_info.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cipher_info.i, align 128
  %8 = ptrtoint ptr %cipher.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %cipher.i, align 4
  %auth.i = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 1, i32 64
  %auth_info.i = getelementptr i8, ptr %1, i32 648
  %9 = ptrtoint ptr %auth_info.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %auth_info.i, align 8
  %11 = ptrtoint ptr %auth.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %auth.i, align 4
  %auth_first.i = getelementptr i8, ptr %1, i32 656
  %12 = ptrtoint ptr %auth_first.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %auth_first.i, align 16, !range !494
  %auth_first2.i = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 1, i32 72
  %14 = ptrtoint ptr %auth_first2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %auth_first2.i, align 4
  %15 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 1), align 8
  %16 = lshr i64 %7, 32
  %17 = trunc i64 %16 to i32
  %18 = trunc i64 %7 to i32
  %call6.i = tail call i32 %15(i32 noundef %17, i32 noundef %18, i32 noundef %4) #9
  %max_payload.i = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 1, i32 76
  %19 = ptrtoint ptr %max_payload.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call6.i, ptr %max_payload.i, align 4
  %fallback_cipher.i = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 1, i32 80
  %20 = ptrtoint ptr %fallback_cipher.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %fallback_cipher.i, align 4
  %enckeylen.i = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 2, i32 1
  %21 = ptrtoint ptr %enckeylen.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %enckeylen.i, align 4
  %authkeylen.i = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 1, i32 8
  %22 = ptrtoint ptr %authkeylen.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %authkeylen.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), i32 1, i32 3, i32 1) #9
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3)) #9, !srcloc !496
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, i32 3, i32 1) #9
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #9, !srcloc !496
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skcipher_exit_tfm(ptr nocapture noundef readnone %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #9, !srcloc !502
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skcipher_setkey(ptr noundef %cipher, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %K.i.i.i.i = alloca [6 x i32], align 4
  %tmp.i.i.i = alloca %struct.des_ctx, align 4
  %cipher_parms = alloca %struct.spu_cipher_parms, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cipher_parms) #9
  %0 = getelementptr inbounds i8, ptr %cipher_parms, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 20)
  %cipher1 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 3, i32 1, i32 52
  %2 = ptrtoint ptr %cipher1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cipher1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %3, label %do.end [
    i32 2, label %sw.bb
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i.i.i) #9
  %5 = call ptr @memset(ptr %tmp.i.i.i, i32 255, i32 128)
  %call.i.i.i = call i32 @des_expand_key(ptr noundef nonnull %tmp.i.i.i, ptr noundef %key, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, -126
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %sw.bb.verify_skcipher_des_key.exit.i_crit_edge

sw.bb.verify_skcipher_des_key.exit.i_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify_skcipher_des_key.exit.i

if.then.i.i.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i.i.i, align 128
  %and.i.i.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select = select i1 %tobool.not.i.i.i, i32 0, i32 -22
  br label %verify_skcipher_des_key.exit.i

verify_skcipher_des_key.exit.i:                   ; preds = %if.then.i.i.i, %sw.bb.verify_skcipher_des_key.exit.i_crit_edge
  %err.0.i.i.i = phi i32 [ %call.i.i.i, %sw.bb.verify_skcipher_des_key.exit.i_crit_edge ], [ %spec.select, %if.then.i.i.i ]
  %8 = call ptr @memset(ptr %tmp.i.i.i, i32 0, i32 128)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i.i) #9, !srcloc !501
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i.i)
  %tobool.not.i = icmp eq i32 %err.0.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %verify_skcipher_des_key.exit.i.cleanup_crit_edge

verify_skcipher_des_key.exit.i.cleanup_crit_edge: ; preds = %verify_skcipher_des_key.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %verify_skcipher_des_key.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %cipher_type.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 3, i32 1, i32 60
  %9 = ptrtoint ptr %cipher_type.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cipher_type.i, align 4
  br label %if.end

sw.bb3:                                           ; preds = %entry
  %base.i.i.i103 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2
  %10 = ptrtoint ptr %base.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i.i.i103, align 128
  %and.i.i.i104 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i104)
  %tobool.not.i.i.i105 = icmp eq i32 %and.i.i.i104, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i.i) #9
  %12 = getelementptr inbounds [6 x i32], ptr %K.i.i.i.i, i32 0, i32 1
  %13 = getelementptr inbounds [6 x i32], ptr %K.i.i.i.i, i32 0, i32 2
  %14 = getelementptr inbounds [6 x i32], ptr %K.i.i.i.i, i32 0, i32 3
  %15 = call ptr @memcpy(ptr %K.i.i.i.i, ptr %key, i32 24)
  %16 = ptrtoint ptr %K.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %K.i.i.i.i, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %13, align 4
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %12, align 4
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %24 = icmp eq i32 %17, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %25 = icmp eq i32 %21, %23
  %tobool.not.i.i.i.i = and i1 %24, %25
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %lor.lhs.false.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %sw.bb3
  %26 = getelementptr inbounds [6 x i32], ptr %K.i.i.i.i, i32 0, i32 5
  %27 = getelementptr inbounds [6 x i32], ptr %K.i.i.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %29)
  %32 = icmp ne i32 %19, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %31)
  %33 = icmp ne i32 %23, %31
  %tobool12.not.not.i.i.i.i = or i1 %32, %33
  %brmerge.i.i.i.i = or i1 %tobool.not.i.i.i105, %tobool12.not.not.i.i.i.i
  br i1 %brmerge.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.end.i107_crit_edge, label %lor.lhs.false.i.i.i.i.verify_skcipher_des3_key.exit.thread.i_crit_edge

lor.lhs.false.i.i.i.i.verify_skcipher_des3_key.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify_skcipher_des3_key.exit.thread.i

lor.lhs.false.i.i.i.i.if.end.i107_crit_edge:      ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i107

land.lhs.true.i.i.i.i:                            ; preds = %sw.bb3
  br i1 %tobool.not.i.i.i105, label %land.lhs.true.i.i.i.i.if.end.i107_crit_edge, label %land.lhs.true.i.i.i.i.verify_skcipher_des3_key.exit.thread.i_crit_edge

land.lhs.true.i.i.i.i.verify_skcipher_des3_key.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify_skcipher_des3_key.exit.thread.i

land.lhs.true.i.i.i.i.if.end.i107_crit_edge:      ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i107

verify_skcipher_des3_key.exit.thread.i:           ; preds = %land.lhs.true.i.i.i.i.verify_skcipher_des3_key.exit.thread.i_crit_edge, %lor.lhs.false.i.i.i.i.verify_skcipher_des3_key.exit.thread.i_crit_edge
  %34 = call ptr @memset(ptr %K.i.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i.i) #9, !srcloc !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i.i) #9
  br label %cleanup

if.end.i107:                                      ; preds = %land.lhs.true.i.i.i.i.if.end.i107_crit_edge, %lor.lhs.false.i.i.i.i.if.end.i107_crit_edge
  %35 = call ptr @memset(ptr %K.i.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i.i) #9, !srcloc !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i.i) #9
  %cipher_type.i106 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 3, i32 1, i32 60
  %36 = ptrtoint ptr %cipher_type.i106 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %cipher_type.i106, align 4
  br label %if.end

sw.bb5:                                           ; preds = %entry
  %mode.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 3, i32 1, i32 56
  %37 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %38)
  %cmp.i = icmp eq i32 %38, 7
  %div1.i = zext i1 %cmp.i to i32
  %spec.select.i108 = lshr i32 %keylen, %div1.i
  %39 = zext i32 %spec.select.i108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %spec.select.i108, label %sw.bb5.cleanup_crit_edge [
    i32 16, label %sw.bb5.sw.epilog.i_crit_edge
    i32 24, label %sw.bb2.i
    i32 32, label %sw.bb4.i
  ]

sw.bb5.sw.epilog.i_crit_edge:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb2.i, %sw.bb5.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 2, %sw.bb4.i ], [ 1, %sw.bb2.i ], [ 0, %sw.bb5.sw.epilog.i_crit_edge ]
  %cipher_type5.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 3, i32 1, i32 60
  %40 = ptrtoint ptr %cipher_type5.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink.i, ptr %cipher_type5.i, align 4
  %max_payload.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 3, i32 1, i32 76
  %41 = ptrtoint ptr %max_payload.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_payload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp6.not.i = icmp ne i32 %42, -1
  %rem.i = and i32 %42, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp8.i = icmp ne i32 %rem.i, 0
  %43 = and i1 %cmp6.not.i, %cmp8.i
  br i1 %43, label %do.end.i, label %sw.epilog.i.if.end_crit_edge, !prof !493

sw.epilog.i.if.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1815, i32 noundef 9, ptr noundef null) #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93) #12
  br label %cleanup

if.end:                                           ; preds = %do.end.i, %sw.epilog.i.if.end_crit_edge, %if.end.i107, %if.end.i
  %44 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %key, i32 %keylen)
  %enckeylen = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 2, i32 1
  %45 = ptrtoint ptr %enckeylen to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %keylen, ptr %enckeylen, align 4
  %46 = ptrtoint ptr %cipher1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cipher1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp = icmp eq i32 %47, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %mode = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 3, i32 1, i32 56
  %48 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %49)
  %cmp11 = icmp eq i32 %49, 7
  br i1 %cmp11, label %if.then12, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %div102 = lshr i32 %keylen, 1
  %add.ptr = getelementptr i8, ptr %key, i32 %div102
  %50 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %add.ptr, i32 %div102)
  %add.ptr17 = getelementptr i8, ptr %__crt_ctx.i.i, i32 %div102
  %51 = call ptr @memcpy(ptr %add.ptr17, ptr %key, i32 %div102)
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %52 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %52, label %if.end18.if.end28_crit_edge [
    i32 0, label %if.end18.if.end28.sink.split_crit_edge
    i32 1, label %if.then24
  ]

if.end18.if.end28.sink.split_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.sink.split

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %if.then24, %if.end18.if.end28.sink.split_crit_edge
  %.sink = phi i32 [ 568, %if.then24 ], [ 552, %if.end18.if.end28.sink.split_crit_edge ]
  %54 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %conv25 = zext i8 %54 to i32
  %add26 = add nuw nsw i32 %.sink, %conv25
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %if.end18.if.end28_crit_edge
  %alloc_len.0 = phi i32 [ 0, %if.end18.if.end28_crit_edge ], [ %add26, %if.end28.sink.split ]
  %bcm_spu_req_hdr = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 4, i32 1, i32 84
  %55 = call ptr @memset(ptr %bcm_spu_req_hdr, i32 0, i32 %alloc_len.0)
  %iv_buf = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 5
  %56 = ptrtoint ptr %iv_buf to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %iv_buf, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2, i32 3
  %57 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %58, i32 -100
  %59 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ivsize.i, align 4
  %conv31 = trunc i32 %60 to i16
  %iv_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 6
  %61 = ptrtoint ptr %iv_len to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv31, ptr %iv_len, align 4
  %62 = ptrtoint ptr %cipher1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cipher1, align 4
  %64 = ptrtoint ptr %cipher_parms to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %cipher_parms, align 4
  %mode38 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 3, i32 1, i32 56
  %65 = ptrtoint ptr %mode38 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mode38, align 4
  %mode39 = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 1
  %67 = ptrtoint ptr %mode39 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %mode39, align 4
  %cipher_type = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 3, i32 1, i32 60
  %68 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cipher_type, align 4
  %type = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 2
  %70 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %type, align 4
  %key_buf = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 3
  %71 = ptrtoint ptr %key_buf to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %__crt_ctx.i.i, ptr %key_buf, align 4
  %72 = ptrtoint ptr %enckeylen to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %enckeylen, align 4
  %conv43 = trunc i32 %73 to i16
  %key_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 4
  %74 = ptrtoint ptr %key_len to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv43, ptr %key_len, align 4
  %75 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %conv46 = zext i8 %75 to i32
  %76 = call ptr @memcpy(ptr %bcm_spu_req_hdr, ptr @BCMHEADER, i32 %conv46)
  %77 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 11), align 8
  %add.ptr50 = getelementptr i8, ptr %bcm_spu_req_hdr, i32 %conv46
  %call51 = call zeroext i16 %77(ptr noundef %add.ptr50, ptr noundef nonnull %cipher_parms) #9
  %spu_req_hdr_len = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 6, i32 2, i32 4
  %78 = ptrtoint ptr %spu_req_hdr_len to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %call51, ptr %spu_req_hdr_len, align 4
  %79 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 3), align 8
  %authkeylen = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 3, i32 1, i32 8
  %80 = ptrtoint ptr %authkeylen to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %authkeylen, align 4
  %conv52 = trunc i32 %81 to i16
  %82 = ptrtoint ptr %enckeylen to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %enckeylen, align 4
  %conv54 = trunc i32 %83 to i16
  %call55 = call zeroext i16 %79(i16 noundef zeroext %conv52, i16 noundef zeroext %conv54, i1 noundef zeroext false) #9
  %spu_resp_hdr_len = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 6, i32 2, i32 4, i32 2
  %84 = ptrtoint ptr %spu_resp_hdr_len to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %call55, ptr %spu_resp_hdr_len, align 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15), i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15), i32 1, i32 3, i32 1) #9
  %85 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15)) #9, !srcloc !496
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end, %sw.bb5.cleanup_crit_edge, %verify_skcipher_des3_key.exit.thread.i, %verify_skcipher_des_key.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -126, %verify_skcipher_des3_key.exit.thread.i ], [ -22, %do.end ], [ %err.0.i.i.i, %verify_skcipher_des_key.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cipher_parms) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skcipher_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @skcipher_enqueue(ptr noundef %req, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skcipher_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @skcipher_enqueue(ptr noundef %req, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @generic_cra_exit(ptr nocapture noundef readnone %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #9, !srcloc !502
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skcipher_enqueue(ptr noundef %req, i1 noundef zeroext %encrypt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %encrypt to i8
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool3.not, i32 2592, i32 3264
  %gfp = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 3, i32 5, i32 12
  %4 = ptrtoint ptr %gfp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %gfp, align 4
  %5 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %base, ptr %__ctx.i, align 4
  %is_encrypt = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 41
  %6 = ptrtoint ptr %is_encrypt to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %is_encrypt, align 1
  %bd_suppress = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 40
  %7 = ptrtoint ptr %bd_suppress to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %bd_suppress, align 4
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %req, align 128
  %total_todo = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 3
  %10 = ptrtoint ptr %total_todo to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %total_todo, align 4
  %src_sent = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 1
  %11 = ptrtoint ptr %src_sent to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %src_sent, align 4
  %total_sent = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 0, i32 1
  %12 = ptrtoint ptr %total_sent to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %total_sent, align 4
  %total_received = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4
  %13 = ptrtoint ptr %total_received to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %total_received, align 4
  %ctx7 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %14 = ptrtoint ptr %ctx7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %__crt_ctx.i.i, ptr %ctx7, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %15 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %src, align 8
  %src_sg = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %17 = ptrtoint ptr %src_sg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %src_sg, align 4
  %src_nents = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 4
  %18 = ptrtoint ptr %src_nents to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %src_nents, align 4
  %src_skip = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5
  %19 = ptrtoint ptr %src_skip to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %src_skip, align 4
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %20 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst, align 4
  %dst_sg = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 4
  %22 = ptrtoint ptr %dst_sg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %dst_sg, align 4
  %dst_nents = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 8
  %23 = ptrtoint ptr %dst_nents to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %dst_nents, align 4
  %dst_skip = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 12
  %24 = ptrtoint ptr %dst_skip to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %dst_skip, align 4
  %mode = getelementptr i8, ptr %1, i32 700
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %26, label %if.else [
    i32 1, label %entry.if.then_crit_edge
    i32 4, label %entry.if.then_crit_edge82
    i32 2, label %entry.if.then_crit_edge83
    i32 7, label %entry.if.then_crit_edge84
    i32 6, label %entry.if.then_crit_edge85
    i32 5, label %entry.if.then_crit_edge86
  ]

entry.if.then_crit_edge86:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge85:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge84:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge83:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge82:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge82, %entry.if.then_crit_edge83, %entry.if.then_crit_edge84, %entry.if.then_crit_edge85, %entry.if.then_crit_edge86
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %28 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %29, i32 -100
  %30 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ivsize.i, align 4
  %iv_ctr_len = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 48
  %32 = ptrtoint ptr %iv_ctr_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %iv_ctr_len, align 4
  %iv_ctr = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 7, i32 5, i32 72
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %33 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iv, align 4
  %35 = call ptr @memcpy(ptr %iv_ctr, ptr %34, i32 %31)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %iv_ctr_len36 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 48
  %36 = ptrtoint ptr %iv_ctr_len36 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %iv_ctr_len36, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !503
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), i32 1, i32 3, i32 1) #9
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5)) #9, !srcloc !504
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !505
  %conv1.i = and i32 %asmresult.i.i.i.i.i, 255
  %38 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %rem.i = urem i32 %conv1.i, %38
  %conv2.i = trunc i32 %rem.i to i8
  %chan_idx = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %39 = ptrtoint ptr %chan_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv2.i, ptr %chan_idx, align 4
  %call38 = tail call fastcc i32 @handle_skcipher_req(ptr noundef %__ctx.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, -115
  br i1 %cmp39.not, label %if.end.if.end42_crit_edge, label %if.then41

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then41:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mb_mssg.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 16
  %40 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 20
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  tail call void @kfree(ptr noundef %42) #9
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 24
  %43 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dst.i, align 4
  tail call void @kfree(ptr noundef %44) #9
  %45 = call ptr @memset(ptr %mb_mssg.i, i32 0, i32 24)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end.if.end42_crit_edge
  ret i32 %call38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_cra_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -384
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cra_blocksize.i.i, align 4
  %alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 5, i32 4, i32 32
  %4 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %alg.i, align 4
  %cipher.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 5, i32 4, i32 40
  %cipher_info.i = getelementptr i8, ptr %1, i32 512
  %5 = ptrtoint ptr %cipher_info.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %cipher_info.i, align 128
  %7 = ptrtoint ptr %cipher.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %cipher.i, align 4
  %auth.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 5, i32 4, i32 52
  %auth_info.i = getelementptr i8, ptr %1, i32 520
  %8 = ptrtoint ptr %auth_info.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %auth_info.i, align 8
  %10 = ptrtoint ptr %auth.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %auth.i, align 4
  %auth_first.i = getelementptr i8, ptr %1, i32 528
  %11 = ptrtoint ptr %auth_first.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %auth_first.i, align 16, !range !494
  %auth_first2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 5, i32 4, i32 60
  %13 = ptrtoint ptr %auth_first2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %auth_first2.i, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 1), align 8
  %15 = lshr i64 %6, 32
  %16 = trunc i64 %15 to i32
  %17 = trunc i64 %6 to i32
  %call6.i = tail call i32 %14(i32 noundef %16, i32 noundef %17, i32 noundef %3) #9
  %max_payload.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 5, i32 4, i32 64
  %18 = ptrtoint ptr %max_payload.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call6.i, ptr %max_payload.i, align 4
  %fallback_cipher.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 5, i32 4, i32 68
  %19 = ptrtoint ptr %fallback_cipher.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %fallback_cipher.i, align 4
  %enckeylen.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 1
  %20 = ptrtoint ptr %enckeylen.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %enckeylen.i, align 4
  %authkeylen.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 5, i32 3
  %21 = ptrtoint ptr %authkeylen.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %authkeylen.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3)) #9, !srcloc !496
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, i32 3, i32 1) #9
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #9, !srcloc !496
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %24 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2396, ptr %reqsize1.i, align 32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_init(ptr nocapture noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i56 = icmp eq i32 %2, 1
  br i1 %cmp.i56, label %entry.if.then_crit_edge, label %if.end.i57

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i57:                                       ; preds = %entry
  %auth.i = getelementptr i8, ptr %1, i32 708
  %3 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %auth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp1.i = icmp eq i32 %4, 5
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i57.if.else_crit_edge

if.end.i57.if.else_crit_edge:                     ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.end.i57
  %mode.i = getelementptr i8, ptr %1, i32 712
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.i = icmp eq i32 %6, 0
  br i1 %cmp3.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 8
  %call5 = tail call ptr @crypto_alloc_shash(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 0) #9
  %cmp.i58 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58, label %if.then7, label %if.end8.i

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end8.i:                                        ; preds = %if.then
  %10 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call5, align 128
  %add = add i32 %11, 8
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2592, i32 3264
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef %cond) #13
  %shash = getelementptr i8, ptr %1, i32 1556
  %14 = ptrtoint ptr %shash to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i, ptr %shash, align 4
  %tobool12.not = icmp eq ptr %call9.i, null
  br i1 %tobool12.not, label %if.end8.i.err_hash_crit_edge, label %if.end14

if.end8.i.err_hash_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_hash

if.end14:                                         ; preds = %if.end8.i
  %15 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5, ptr %call9.i, align 128
  %authkeylen = getelementptr i8, ptr %1, i32 652
  %16 = ptrtoint ptr %authkeylen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %authkeylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not = icmp eq i32 %17, 0
  br i1 %cmp.not, label %if.end14.if.end23_crit_edge, label %if.then17

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then17:                                        ; preds = %if.end14
  %authkey = getelementptr i8, ptr %1, i32 392
  %call19 = tail call i32 @crypto_shash_setkey(ptr noundef %call5, ptr noundef %authkey, i32 noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then17.if.end23_crit_edge, label %if.then17.err_shash_crit_edge

if.then17.err_shash_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_shash

if.then17.if.end23_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end23:                                         ; preds = %if.then17.if.end23_crit_edge, %if.end14.if.end23_crit_edge
  %18 = ptrtoint ptr %shash to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shash, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end23.err_shash_crit_edge

if.end23.err_shash_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_shash

crypto_shash_init.exit:                           ; preds = %if.end23
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %21, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 -256
  %26 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %27(ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool26.not = icmp eq i32 %call3.i, 0
  br i1 %tobool26.not, label %crypto_shash_init.exit.cleanup_crit_edge, label %crypto_shash_init.exit.err_shash_crit_edge

crypto_shash_init.exit.err_shash_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_shash

crypto_shash_init.exit.cleanup_crit_edge:         ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.i.if.else_crit_edge, %if.end.i57.if.else_crit_edge
  %hash_carry_len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 52
  %28 = ptrtoint ptr %hash_carry_len.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %hash_carry_len.i, align 4
  %is_final.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %29 = ptrtoint ptr %is_final.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %is_final.i, align 4
  %total_todo.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %30 = call ptr @memset(ptr %total_todo.i, i32 0, i32 16)
  %31 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %32, i32 -128
  %33 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %digestsize.i = getelementptr i8, ptr %1, i32 684
  %35 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %digestsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %34)
  %cmp.i61 = icmp ugt i32 %34, 64
  br i1 %cmp.i61, label %do.end.i, label %if.else.__ahash_init.exit_crit_edge, !prof !493

if.else.__ahash_init.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ahash_init.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1979, i32 noundef 9, ptr noundef null) #9
  br label %__ahash_init.exit

__ahash_init.exit:                                ; preds = %do.end.i, %if.else.__ahash_init.exit_crit_edge
  %is_sw_hmac.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 4
  %36 = ptrtoint ptr %is_sw_hmac.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %is_sw_hmac.i, align 4
  %37 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 3), align 8
  %authkeylen.i = getelementptr i8, ptr %1, i32 652
  %38 = ptrtoint ptr %authkeylen.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %authkeylen.i, align 4
  %conv.i = trunc i32 %39 to i16
  %call23.i = tail call zeroext i16 %37(i16 noundef zeroext %conv.i, i16 noundef zeroext 0, i1 noundef zeroext true) #9
  %spu_resp_hdr_len.i = getelementptr i8, ptr %1, i32 1554
  %40 = ptrtoint ptr %spu_resp_hdr_len.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %call23.i, ptr %spu_resp_hdr_len.i, align 2
  br label %cleanup

err_shash:                                        ; preds = %crypto_shash_init.exit.err_shash_crit_edge, %if.end23.err_shash_crit_edge, %if.then17.err_shash_crit_edge
  %ret.1 = phi i32 [ %call19, %if.then17.err_shash_crit_edge ], [ %call3.i, %crypto_shash_init.exit.err_shash_crit_edge ], [ -126, %if.end23.err_shash_crit_edge ]
  %41 = ptrtoint ptr %shash to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %shash, align 4
  tail call void @kfree(ptr noundef %42) #9
  br label %err_hash

err_hash:                                         ; preds = %err_shash, %if.end8.i.err_hash_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_shash ], [ -12, %if.end8.i.err_hash_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call5, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call5, ptr noundef %base.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_hash, %__ahash_init.exit, %crypto_shash_init.exit.cleanup_crit_edge, %if.then7
  %retval.0 = phi i32 [ 0, %crypto_shash_init.exit.cleanup_crit_edge ], [ 0, %__ahash_init.exit ], [ %9, %if.then7 ], [ %ret.2, %err_hash ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_update(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i42 = icmp eq i32 %2, 1
  br i1 %cmp.i42, label %entry.if.then_crit_edge, label %if.end.i43

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i43:                                       ; preds = %entry
  %auth.i = getelementptr i8, ptr %1, i32 708
  %3 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %auth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp1.i = icmp eq i32 %4, 5
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i43.if.else19_crit_edge

if.end.i43.if.else19_crit_edge:                   ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else19

land.lhs.true.i:                                  ; preds = %if.end.i43
  %mode.i = getelementptr i8, ptr %1, i32 712
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.i = icmp eq i32 %6, 0
  br i1 %cmp3.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.if.else19_crit_edge

land.lhs.true.i.if.else19_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else19

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.then
  %call5 = tail call i32 @sg_nents(ptr noundef nonnull %8) #9
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbytes, align 8
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool6.not, i32 2592, i32 3264
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef %cond) #13
  %tobool8.not = icmp eq ptr %call9.i, null
  br i1 %tobool8.not, label %if.then3.cleanup_crit_edge, label %if.end10

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.then3
  %13 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src, align 4
  %15 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nbytes, align 8
  %call13 = tail call i32 @sg_copy_to_buffer(ptr noundef %14, i32 noundef %call5, ptr noundef nonnull %call9.i, i32 noundef %16) #9
  %17 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %18)
  %cmp.not = icmp eq i32 %call13, %18
  br i1 %cmp.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %shash = getelementptr i8, ptr %1, i32 1556
  %19 = ptrtoint ptr %shash to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %shash, align 4
  %call18 = tail call i32 @crypto_shash_update(ptr noundef %20, ptr noundef nonnull %call9.i, i32 noundef %call13) #9
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

if.else19:                                        ; preds = %land.lhs.true.i.if.else19_crit_edge, %if.end.i43.if.else19_crit_edge
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %21 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nbytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.else19.cleanup_crit_edge, label %if.end.i44

if.else19.cleanup_crit_edge:                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i44:                                       ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #11
  %total_todo.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %total_todo.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_todo.i, align 4
  %add.i = add i32 %24, %22
  store i32 %add.i, ptr %total_todo.i, align 4
  %src_sent.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %25 = ptrtoint ptr %src_sent.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %src_sent.i, align 4
  %call3.i = tail call fastcc i32 @ahash_enqueue(ptr noundef %req) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i44, %if.else19.cleanup_crit_edge, %if.end16, %if.then15, %if.then3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then15 ], [ -22, %if.then.cleanup_crit_edge ], [ -12, %if.then3.cleanup_crit_edge ], [ %call18, %if.end16 ], [ %call3.i, %if.end.i44 ], [ 0, %if.else19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_final(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp eq i32 %2, 1
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %auth.i = getelementptr i8, ptr %1, i32 708
  %3 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %auth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp1.i = icmp eq i32 %4, 5
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.else_crit_edge

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.end.i
  %mode.i = getelementptr i8, ptr %1, i32 712
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.i = icmp eq i32 %6, 0
  br i1 %cmp3.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  %shash = getelementptr i8, ptr %1, i32 1556
  %7 = ptrtoint ptr %shash to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shash, align 4
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %result, align 32
  %call3 = tail call i32 @crypto_shash_final(ptr noundef %8, ptr noundef %10) #9
  %11 = ptrtoint ptr %shash to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shash, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %14, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %14, ptr noundef %base.i.i) #9
  %15 = ptrtoint ptr %shash to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shash, align 4
  tail call void @kfree(ptr noundef %16) #9
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.i.if.else_crit_edge, %if.end.i.if.else_crit_edge
  %is_final.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %17 = ptrtoint ptr %is_final.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %is_final.i, align 4
  %call1.i = tail call fastcc i32 @ahash_enqueue(ptr noundef %req) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call1.i, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_finup(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i47 = icmp eq i32 %2, 1
  br i1 %cmp.i47, label %entry.if.then_crit_edge, label %if.end.i48

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i48:                                       ; preds = %entry
  %auth.i = getelementptr i8, ptr %1, i32 708
  %3 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %auth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp1.i = icmp eq i32 %4, 5
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i48.if.else19_crit_edge

if.end.i48.if.else19_crit_edge:                   ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else19

land.lhs.true.i:                                  ; preds = %if.end.i48
  %mode.i = getelementptr i8, ptr %1, i32 712
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.i = icmp eq i32 %6, 0
  br i1 %cmp3.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.if.else19_crit_edge

land.lhs.true.i.if.else19_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else19

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then.ahash_finup_exit_crit_edge, label %if.then3

if.then.ahash_finup_exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %ahash_finup_exit

if.then3:                                         ; preds = %if.then
  %call5 = tail call i32 @sg_nents(ptr noundef nonnull %8) #9
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbytes, align 8
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool6.not, i32 2592, i32 3264
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef %cond) #13
  %tobool8.not = icmp eq ptr %call9.i, null
  br i1 %tobool8.not, label %if.then3.ahash_finup_exit_crit_edge, label %if.end10

if.then3.ahash_finup_exit_crit_edge:              ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %ahash_finup_exit

if.end10:                                         ; preds = %if.then3
  %13 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src, align 4
  %15 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nbytes, align 8
  %call13 = tail call i32 @sg_copy_to_buffer(ptr noundef %14, i32 noundef %call5, ptr noundef nonnull %call9.i, i32 noundef %16) #9
  %17 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %18)
  %cmp.not = icmp eq i32 %call13, %18
  br i1 %cmp.not, label %if.end16, label %if.end10.ahash_finup_free_crit_edge

if.end10.ahash_finup_free_crit_edge:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %ahash_finup_free

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %shash = getelementptr i8, ptr %1, i32 1556
  %19 = ptrtoint ptr %shash to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %shash, align 4
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %21 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %result, align 32
  %call18 = tail call i32 @crypto_shash_finup(ptr noundef %20, ptr noundef nonnull %call9.i, i32 noundef %call13, ptr noundef %22) #9
  br label %ahash_finup_free

if.else19:                                        ; preds = %land.lhs.true.i.if.else19_crit_edge, %if.end.i48.if.else19_crit_edge
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %23 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbytes.i, align 8
  %total_todo.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %total_todo.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total_todo.i, align 4
  %add.i = add i32 %26, %24
  store i32 %add.i, ptr %total_todo.i, align 4
  %src_sent.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %27 = ptrtoint ptr %src_sent.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %src_sent.i, align 4
  %is_final.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %28 = ptrtoint ptr %is_final.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %is_final.i, align 4
  %call2.i = tail call fastcc i32 @ahash_enqueue(ptr noundef %req) #9
  br label %cleanup

ahash_finup_free:                                 ; preds = %if.end16, %if.end10.ahash_finup_free_crit_edge
  %ret.0 = phi i32 [ %call18, %if.end16 ], [ -22, %if.end10.ahash_finup_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %ahash_finup_exit

ahash_finup_exit:                                 ; preds = %ahash_finup_free, %if.then3.ahash_finup_exit_crit_edge, %if.then.ahash_finup_exit_crit_edge
  %ret.1 = phi i32 [ %ret.0, %ahash_finup_free ], [ -22, %if.then.ahash_finup_exit_crit_edge ], [ -12, %if.then3.ahash_finup_exit_crit_edge ]
  %shash22 = getelementptr i8, ptr %1, i32 1556
  %29 = ptrtoint ptr %shash22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %shash22, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %32, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %32, ptr noundef %base.i.i) #9
  %33 = ptrtoint ptr %shash22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %shash22, align 4
  tail call void @kfree(ptr noundef %34) #9
  br label %cleanup

cleanup:                                          ; preds = %ahash_finup_exit, %if.else19
  %retval.0 = phi i32 [ %ret.1, %ahash_finup_exit ], [ %call2.i, %if.else19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_digest(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %hash_carry_len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 52
  %2 = ptrtoint ptr %hash_carry_len.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %hash_carry_len.i, align 4
  %is_final.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %3 = ptrtoint ptr %is_final.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %is_final.i, align 4
  %total_todo.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %4 = call ptr @memset(ptr %total_todo.i, i32 0, i32 16)
  %5 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %6, i32 -128
  %7 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %digestsize.i = getelementptr i8, ptr %1, i32 684
  %9 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %digestsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %8)
  %cmp.i = icmp ugt i32 %8, 64
  br i1 %cmp.i, label %do.end.i, label %entry.__ahash_init.exit_crit_edge, !prof !493

entry.__ahash_init.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ahash_init.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1979, i32 noundef 9, ptr noundef null) #9
  br label %__ahash_init.exit

__ahash_init.exit:                                ; preds = %do.end.i, %entry.__ahash_init.exit_crit_edge
  %is_sw_hmac.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 4
  %10 = ptrtoint ptr %is_sw_hmac.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %is_sw_hmac.i, align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 3), align 8
  %authkeylen.i = getelementptr i8, ptr %1, i32 652
  %12 = ptrtoint ptr %authkeylen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %authkeylen.i, align 4
  %conv.i = trunc i32 %13 to i16
  %call23.i = tail call zeroext i16 %11(i16 noundef zeroext %conv.i, i16 noundef zeroext 0, i1 noundef zeroext true) #9
  %spu_resp_hdr_len.i = getelementptr i8, ptr %1, i32 1554
  %14 = ptrtoint ptr %spu_resp_hdr_len.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %call23.i, ptr %spu_resp_hdr_len.i, align 2
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %15 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nbytes.i, align 8
  %17 = ptrtoint ptr %total_todo.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %total_todo.i, align 4
  %add.i = add i32 %18, %16
  store i32 %add.i, ptr %total_todo.i, align 4
  %src_sent.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %19 = ptrtoint ptr %src_sent.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %src_sent.i, align 4
  %20 = ptrtoint ptr %is_final.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %is_final.i, align 4
  %call2.i = tail call fastcc i32 @ahash_enqueue(ptr noundef %req) #9
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_setkey(ptr nocapture noundef %ahash, ptr nocapture noundef readonly %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %auth = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 3, i32 9, i32 32
  %0 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %auth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %do.end8

if.then:                                          ; preds = %entry
  %2 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %keylen, label %do.end [
    i32 16, label %if.then.if.end_crit_edge
    i32 24, label %sw.bb1
    i32 32, label %sw.bb3
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @__func__.ahash_setkey) #12
  br label %cleanup

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.ahash_setkey) #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb3, %sw.bb1, %if.then.if.end_crit_edge
  %.sink = phi i32 [ 1, %sw.bb1 ], [ 2, %sw.bb3 ], [ 0, %if.then.if.end_crit_edge ]
  %cipher_type = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 3, i32 9, i32 28
  %3 = ptrtoint ptr %cipher_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %cipher_type, align 4
  %authkey = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 2
  %4 = call ptr @memcpy(ptr %authkey, ptr %key, i32 %keylen)
  %authkeylen = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 3, i32 3
  %5 = ptrtoint ptr %authkeylen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %keylen, ptr %authkeylen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ], [ -22, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_hmac_setkey(ptr noundef %ahash, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 1
  %__crt_alg.i = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cra_blocksize.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -128
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %keylen)
  %cmp = icmp ult i32 %3, %keylen
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %auth = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 3, i32 9, i32 32
  %6 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %auth, align 4
  %switch.tableidx = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 11
  br i1 %8, label %switch.hole_check, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %if.then.do.end_crit_edge
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.ahash_hmac_setkey) #12
  br label %cleanup

switch.hole_check:                                ; preds = %if.then
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 2031, %switch.maskindex
  %9 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %switch.lobit.not = icmp eq i16 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [11 x ptr], ptr @switch.table.ahash_hmac_setkey, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %authkey38 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 2
  %call40 = tail call i32 @do_shash(ptr noundef nonnull %switch.load, ptr noundef %authkey38, ptr noundef %key, i32 noundef %keylen, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp42 = icmp slt i32 %call40, 0
  br i1 %cmp42, label %do.end46, label %switch.lookup.if.end57_crit_edge

switch.lookup.if.end57_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

do.end46:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %auth, align 4
  %arrayidx = getelementptr [12 x ptr], ptr @hash_alg_name, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.ahash_hmac_setkey, i32 noundef %call40, ptr noundef %14) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %authkey54 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 2
  %15 = call ptr @memcpy(ptr %authkey54, ptr %key, i32 %keylen)
  br label %if.end57

if.end57:                                         ; preds = %if.else, %switch.lookup.if.end57_crit_edge
  %keylen.sink = phi i32 [ %keylen, %if.else ], [ %5, %switch.lookup.if.end57_crit_edge ]
  %authkeylen56 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 3, i32 3
  %16 = ptrtoint ptr %authkeylen56 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %keylen.sink, ptr %authkeylen56, align 4
  %17 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp58 = icmp eq i32 %17, 0
  br i1 %cmp58, label %if.then59, label %if.end57.if.end85_crit_edge

if.end57.if.end85_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then59:                                        ; preds = %if.end57
  %ipad = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 3, i32 9, i32 52
  %authkey61 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 2
  %authkeylen63 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 3, i32 3
  %18 = ptrtoint ptr %authkeylen63 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %authkeylen63, align 4
  %20 = call ptr @memcpy(ptr %ipad, ptr %authkey61, i32 %19)
  %add.ptr = getelementptr i8, ptr %ipad, i32 %19
  %sub = sub i32 %3, %19
  %21 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  store i32 0, ptr %authkeylen63, align 4
  %opad = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 3, i32 10, i32 4, i32 72
  %22 = call ptr @memcpy(ptr %opad, ptr %ipad, i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp72163.not = icmp eq i32 %3, 0
  br i1 %cmp72163.not, label %if.then59.if.end85_crit_edge, label %if.then59.for.body_crit_edge

if.then59.for.body_crit_edge:                     ; preds = %if.then59
  br label %for.body

if.then59.if.end85_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then59.for.body_crit_edge
  %index.0164 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then59.for.body_crit_edge ]
  %arrayidx74 = getelementptr %struct.iproc_ctx_s, ptr %__crt_ctx.i.i, i32 0, i32 17, i32 %index.0164
  %23 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx74, align 1
  %25 = xor i8 %24, 54
  store i8 %25, ptr %arrayidx74, align 1
  %arrayidx77 = getelementptr %struct.iproc_ctx_s, ptr %__crt_ctx.i.i, i32 0, i32 18, i32 %index.0164
  %26 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx77, align 1
  %28 = xor i8 %27, 92
  store i8 %28, ptr %arrayidx77, align 1
  %inc = add nuw i32 %index.0164, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body.if.end85_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end85_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end85:                                         ; preds = %for.body.if.end85_crit_edge, %if.then59.if.end85_crit_edge, %if.end57.if.end85_crit_edge
  %digestsize86 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 3, i32 9, i32 8
  %29 = ptrtoint ptr %digestsize86 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %5, ptr %digestsize86, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 2), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 2), i32 1, i32 3, i32 1) #9
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 2)) #9, !srcloc !496
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %do.end46, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call40, %do.end46 ], [ 0, %if.end85 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_hmac_init(ptr nocapture noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_blocksize.i, align 4
  %call5 = tail call i32 @ahash_init(ptr noundef %req)
  %6 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp eq i32 %6, 1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %auth.i = getelementptr i8, ptr %1, i32 708
  %7 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %auth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp1.i = icmp eq i32 %8, 5
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.i:                                  ; preds = %if.end.i
  %mode.i = getelementptr i8, ptr %1, i32 712
  %9 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3.i = icmp eq i32 %10, 0
  br i1 %cmp3.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %is_sw_hmac = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 4
  %11 = ptrtoint ptr %is_sw_hmac to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %is_sw_hmac, align 4
  %mode = getelementptr i8, ptr %1, i32 712
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mode, align 4
  %hash_carry = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 52
  %ipad = getelementptr i8, ptr %1, i32 728
  %13 = call ptr @memcpy(ptr %hash_carry, ptr %ipad, i32 %5)
  %hash_carry_len = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 52
  %14 = ptrtoint ptr %hash_carry_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %hash_carry_len, align 4
  %total_todo = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %total_todo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %total_todo, align 4
  %add = add i32 %16, %5
  store i32 %add, ptr %total_todo, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_hmac_update(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @ahash_update(ptr noundef %req)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_hmac_final(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %2 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 1
  br i1 %cmp.i.i, label %entry.if.then.i_crit_edge, label %if.end.i.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.i.i:                                       ; preds = %entry
  %auth.i.i = getelementptr i8, ptr %1, i32 708
  %3 = ptrtoint ptr %auth.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %auth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp1.i.i = icmp eq i32 %4, 5
  br i1 %cmp1.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.else.i_crit_edge

if.end.i.i.if.else.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %mode.i.i = getelementptr i8, ptr %1, i32 712
  %5 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.i.i = icmp eq i32 %6, 0
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.if.then.i_crit_edge, label %land.lhs.true.i.i.if.else.i_crit_edge

land.lhs.true.i.i.if.else.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %shash.i = getelementptr i8, ptr %1, i32 1556
  %7 = ptrtoint ptr %shash.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shash.i, align 4
  %result.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %result.i, align 32
  %call3.i = tail call i32 @crypto_shash_final(ptr noundef %8, ptr noundef %10) #9
  %11 = ptrtoint ptr %shash.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shash.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %14, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %14, ptr noundef %base.i.i.i) #9
  %15 = ptrtoint ptr %shash.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shash.i, align 4
  tail call void @kfree(ptr noundef %16) #9
  br label %ahash_final.exit

if.else.i:                                        ; preds = %land.lhs.true.i.i.if.else.i_crit_edge, %if.end.i.i.if.else.i_crit_edge
  %is_final.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %17 = ptrtoint ptr %is_final.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %is_final.i.i, align 4
  %call1.i.i = tail call fastcc i32 @ahash_enqueue(ptr noundef %req) #9
  br label %ahash_final.exit

ahash_final.exit:                                 ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call3.i, %if.then.i ], [ %call1.i.i, %if.else.i ]
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_hmac_finup(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ahash_finup(ptr noundef %req)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_hmac_digest(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i = getelementptr %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_blocksize.i, align 4
  %hash_carry_len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 52
  %6 = ptrtoint ptr %hash_carry_len.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %hash_carry_len.i, align 4
  %is_final.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %7 = ptrtoint ptr %is_final.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %is_final.i, align 4
  %total_todo.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %8 = call ptr @memset(ptr %total_todo.i, i32 0, i32 16)
  %9 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 -128
  %10 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %digestsize.i = getelementptr i8, ptr %1, i32 684
  %12 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %digestsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %11)
  %cmp.i = icmp ugt i32 %11, 64
  br i1 %cmp.i, label %do.end.i, label %entry.__ahash_init.exit_crit_edge, !prof !493

entry.__ahash_init.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ahash_init.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1979, i32 noundef 9, ptr noundef null) #9
  br label %__ahash_init.exit

__ahash_init.exit:                                ; preds = %do.end.i, %entry.__ahash_init.exit_crit_edge
  %is_sw_hmac.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 4
  %13 = ptrtoint ptr %is_sw_hmac.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %is_sw_hmac.i, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 3), align 8
  %authkeylen.i = getelementptr i8, ptr %1, i32 652
  %15 = ptrtoint ptr %authkeylen.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %authkeylen.i, align 4
  %conv.i = trunc i32 %16 to i16
  %call23.i = tail call zeroext i16 %14(i16 noundef zeroext %conv.i, i16 noundef zeroext 0, i1 noundef zeroext true) #9
  %spu_resp_hdr_len.i = getelementptr i8, ptr %1, i32 1554
  %17 = ptrtoint ptr %spu_resp_hdr_len.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %call23.i, ptr %spu_resp_hdr_len.i, align 2
  %18 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp eq i32 %18, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %__ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %is_sw_hmac.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %is_sw_hmac.i, align 4
  %mode = getelementptr i8, ptr %1, i32 712
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %mode, align 4
  br label %if.end

if.else:                                          ; preds = %__ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %is_sw_hmac.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %is_sw_hmac.i, align 4
  %mode8 = getelementptr i8, ptr %1, i32 712
  %22 = ptrtoint ptr %mode8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %mode8, align 4
  %hash_carry = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 52
  %ipad = getelementptr i8, ptr %1, i32 728
  %23 = call ptr @memcpy(ptr %hash_carry, ptr %ipad, i32 %5)
  %24 = ptrtoint ptr %hash_carry_len.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %5, ptr %hash_carry_len.i, align 4
  %25 = ptrtoint ptr %total_todo.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total_todo.i, align 4
  %add = add i32 %26, %5
  store i32 %add, ptr %total_todo.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %27 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nbytes.i, align 8
  %29 = ptrtoint ptr %total_todo.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %total_todo.i, align 4
  %add.i = add i32 %30, %28
  store i32 %add.i, ptr %total_todo.i, align 4
  %src_sent.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %31 = ptrtoint ptr %src_sent.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %src_sent.i, align 4
  %32 = ptrtoint ptr %is_final.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %is_final.i, align 4
  %call2.i = tail call fastcc i32 @ahash_enqueue(ptr noundef %req) #9
  ret i32 %call2.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ahash_export(ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %out) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %total_todo = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %total_todo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total_todo, align 4
  %2 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %out, align 4
  %total_sent = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %3 = ptrtoint ptr %total_sent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total_sent, align 4
  %total_sent2 = getelementptr inbounds %struct.spu_hash_export_s, ptr %out, i32 0, i32 1
  %5 = ptrtoint ptr %total_sent2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %total_sent2, align 4
  %is_sw_hmac = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 4
  %6 = ptrtoint ptr %is_sw_hmac to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_sw_hmac, align 4, !range !494
  %is_sw_hmac3 = getelementptr inbounds %struct.spu_hash_export_s, ptr %out, i32 0, i32 5
  %8 = ptrtoint ptr %is_sw_hmac3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %is_sw_hmac3, align 4
  %hash_carry = getelementptr inbounds %struct.spu_hash_export_s, ptr %out, i32 0, i32 2
  %hash_carry4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 52
  %9 = call ptr @memcpy(ptr %hash_carry, ptr %hash_carry4, i32 128)
  %hash_carry_len = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 52
  %10 = ptrtoint ptr %hash_carry_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_carry_len, align 4
  %hash_carry_len6 = getelementptr inbounds %struct.spu_hash_export_s, ptr %out, i32 0, i32 3
  %12 = ptrtoint ptr %hash_carry_len6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %hash_carry_len6, align 4
  %incr_hash = getelementptr inbounds %struct.spu_hash_export_s, ptr %out, i32 0, i32 4
  %incr_hash8 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 60
  %13 = call ptr @memcpy(ptr %incr_hash, ptr %incr_hash8, i32 64)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ahash_import(ptr nocapture noundef writeonly %req, ptr nocapture noundef readonly %in) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in, align 4
  %total_todo1 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %total_todo1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %total_todo1, align 4
  %total_sent = getelementptr inbounds %struct.spu_hash_export_s, ptr %in, i32 0, i32 1
  %3 = ptrtoint ptr %total_sent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total_sent, align 4
  %total_sent2 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %total_sent2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %total_sent2, align 4
  %is_sw_hmac = getelementptr inbounds %struct.spu_hash_export_s, ptr %in, i32 0, i32 5
  %6 = ptrtoint ptr %is_sw_hmac to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_sw_hmac, align 4, !range !494
  %is_sw_hmac3 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 4
  %8 = ptrtoint ptr %is_sw_hmac3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %is_sw_hmac3, align 4
  %hash_carry = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 52
  %hash_carry4 = getelementptr inbounds %struct.spu_hash_export_s, ptr %in, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %hash_carry, ptr %hash_carry4, i32 128)
  %hash_carry_len = getelementptr inbounds %struct.spu_hash_export_s, ptr %in, i32 0, i32 3
  %10 = ptrtoint ptr %hash_carry_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_carry_len, align 4
  %hash_carry_len6 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 52
  %12 = ptrtoint ptr %hash_carry_len6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %hash_carry_len6, align 4
  %incr_hash = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 60
  %incr_hash8 = getelementptr inbounds %struct.spu_hash_export_s, ptr %in, i32 0, i32 4
  %13 = call ptr @memcpy(ptr %incr_hash, ptr %incr_hash8, i32 64)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ahash_enqueue(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2592, i32 3264
  %gfp = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 12
  %4 = ptrtoint ptr %gfp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %gfp, align 4
  %5 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %req, ptr %__ctx.i, align 4
  %ctx4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %ctx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %__crt_ctx.i.i, ptr %ctx4, align 4
  %bd_suppress = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 40
  %7 = ptrtoint ptr %bd_suppress to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %bd_suppress, align 4
  %mb_mssg = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 16
  %8 = call ptr @memset(ptr %mb_mssg, i32 0, i32 24)
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %9 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src, align 4
  %src_sg = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %11 = ptrtoint ptr %src_sg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %src_sg, align 4
  %src_nents = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 4
  %is_final = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 56
  %12 = call ptr @memset(ptr %src_nents, i32 0, i32 20)
  %13 = ptrtoint ptr %is_final to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %is_final, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %total_todo = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %total_todo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %total_todo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp5 = icmp eq i32 %16, 0
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true6:                                   ; preds = %land.lhs.true
  %17 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp7 = icmp eq i32 %17, 1
  br i1 %cmp7, label %if.then, label %land.lhs.true6.if.end16_crit_edge

land.lhs.true6.if.end16_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %19, i32 0, i32 8
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %20 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %result, align 32
  %authkey = getelementptr i8, ptr %1, i32 392
  %authkeylen = getelementptr i8, ptr %1, i32 652
  %22 = ptrtoint ptr %authkeylen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %authkeylen, align 4
  %call13 = tail call i32 @do_shash(ptr noundef %cra_name.i, ptr noundef %21, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %authkey, i32 noundef %23) #9
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true6.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !503
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), i32 1, i32 3, i32 1) #9
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5)) #9, !srcloc !504
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !505
  %conv1.i = and i32 %asmresult.i.i.i.i.i, 255
  %25 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %rem.i = urem i32 %conv1.i, %25
  %conv2.i = trunc i32 %rem.i to i8
  %chan_idx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %chan_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv2.i, ptr %chan_idx, align 4
  %call18 = tail call fastcc i32 @handle_ahash_req(ptr noundef %__ctx.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, -115
  br i1 %cmp19.not, label %if.end16.if.end21_crit_edge, label %if.then20

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %27 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 20
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %29) #9
  %dst.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 24
  %30 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dst.i, align 4
  tail call void @kfree(ptr noundef %31) #9
  %32 = call ptr @memset(ptr %mb_mssg, i32 0, i32 24)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call18)
  %cmp22 = icmp eq i32 %call18, -11
  %spec.store.select = select i1 %cmp22, i32 0, i32 %call18
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then
  %retval.0 = phi i32 [ %spec.store.select, %if.end21 ], [ %call13, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_setauthsize(ptr nocapture noundef %cipher, i32 noundef %authsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %digestsize = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 36
  %0 = ptrtoint ptr %digestsize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %authsize, ptr %digestsize, align 4
  %fallback_cipher = getelementptr inbounds %struct.crypto_aead, ptr %cipher, i32 3, i32 2, i32 76
  %1 = ptrtoint ptr %fallback_cipher to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fallback_cipher, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @crypto_aead_setauthsize(ptr noundef nonnull %2, i32 noundef %authsize) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end5_crit_edge ], [ %call2, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aead_enqueue(ptr noundef %req, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aead_enqueue(ptr noundef %req, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_cra_init(ptr noundef %aead) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 -256
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cra_blocksize.i.i, align 4
  %alg.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 40
  %4 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr4, ptr %alg.i, align 4
  %cipher.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 48
  %cipher_info.i = getelementptr i8, ptr %1, i32 640
  %5 = ptrtoint ptr %cipher_info.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %cipher_info.i, align 128
  %7 = ptrtoint ptr %cipher.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %cipher.i, align 4
  %auth.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 60
  %auth_info.i = getelementptr i8, ptr %1, i32 648
  %8 = ptrtoint ptr %auth_info.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %auth_info.i, align 8
  %10 = ptrtoint ptr %auth.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %auth.i, align 4
  %auth_first.i = getelementptr i8, ptr %1, i32 656
  %11 = ptrtoint ptr %auth_first.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %auth_first.i, align 16, !range !494
  %auth_first2.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 68
  %13 = ptrtoint ptr %auth_first2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %auth_first2.i, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 1), align 8
  %15 = lshr i64 %6, 32
  %16 = trunc i64 %15 to i32
  %17 = trunc i64 %6 to i32
  %call6.i = tail call i32 %14(i32 noundef %16, i32 noundef %17, i32 noundef %3) #9
  %max_payload.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 72
  %18 = ptrtoint ptr %max_payload.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call6.i, ptr %max_payload.i, align 4
  %fallback_cipher.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 76
  %19 = ptrtoint ptr %fallback_cipher.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %fallback_cipher.i, align 4
  %enckeylen.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 2, i32 1
  %20 = ptrtoint ptr %enckeylen.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %enckeylen.i, align 4
  %authkeylen.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 4
  %21 = ptrtoint ptr %authkeylen.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %authkeylen.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3)) #9, !srcloc !496
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, i32 3, i32 1) #9
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #9, !srcloc !496
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 1
  %24 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2396, ptr %reqsize1.i, align 4
  %is_esp = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 44
  %25 = ptrtoint ptr %is_esp to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %is_esp, align 4
  %salt_len = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 12
  %26 = ptrtoint ptr %salt_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %salt_len, align 4
  %salt_offset = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 16
  %27 = ptrtoint ptr %salt_offset to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %salt_offset, align 4
  %iv = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 20
  tail call void @get_random_bytes(ptr noundef %iv, i32 noundef 16) #9
  %cra_flags = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %cra_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cra_flags, align 16
  %and = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %entry.cleanup_crit_edge, label %if.then9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %entry
  %cra_name = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %call11 = tail call ptr @crypto_alloc_aead(ptr noundef %cra_name, i32 noundef 0, i32 noundef 384) #9
  %30 = ptrtoint ptr %fallback_cipher.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call11, ptr %fallback_cipher.i, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef nonnull @__func__.aead_cra_init, ptr noundef %cra_name) #12
  %31 = ptrtoint ptr %fallback_cipher.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fallback_cipher.i, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %33, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aead_cra_exit(ptr nocapture noundef %aead) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #9, !srcloc !502
  %fallback_cipher = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 76
  %1 = ptrtoint ptr %fallback_cipher to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fallback_cipher, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %2, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %2, ptr noundef %base.i.i) #9
  %3 = ptrtoint ptr %fallback_cipher to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fallback_cipher, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aead(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aead_enqueue(ptr noundef %req, i1 noundef zeroext %is_encrypt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %assoclen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %3)
  %cmp = icmp ugt i32 %3, 512
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @__func__.aead_enqueue, i32 noundef %3, i32 noundef 512) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %frombool = zext i1 %is_encrypt to i8
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool6.not, i32 2592, i32 3264
  %gfp = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 6, i32 8
  %6 = ptrtoint ptr %gfp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %gfp, align 4
  %7 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %req, ptr %__ctx.i, align 4
  %is_encrypt9 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 37
  %8 = ptrtoint ptr %is_encrypt9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %is_encrypt9, align 1
  %bd_suppress = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 36
  %9 = ptrtoint ptr %bd_suppress to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %bd_suppress, align 4
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cryptlen, align 4
  %total_todo = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %total_todo to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %total_todo, align 4
  %src_sent = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %13 = ptrtoint ptr %src_sent to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %src_sent, align 4
  %total_sent = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %14 = ptrtoint ptr %total_sent to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %total_sent, align 4
  %total_received = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %total_received to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %total_received, align 4
  %is_sw_hmac = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 4
  %16 = ptrtoint ptr %is_sw_hmac to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %is_sw_hmac, align 4
  %ctx11 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %ctx11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %__crt_ctx.i.i, ptr %ctx11, align 4
  %mb_mssg = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 12
  %18 = call ptr @memset(ptr %mb_mssg, i32 0, i32 24)
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %19 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %src, align 4
  %assoc = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %21 = ptrtoint ptr %assoc to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %assoc, align 4
  %src_sg = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %src_skip = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %call14 = tail call i32 @spu_sg_at_offset(ptr noundef %20, i32 noundef %3, ptr noundef %src_sg, ptr noundef %src_skip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.aead_enqueue) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %src_nents = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %22 = ptrtoint ptr %src_nents to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %src_nents, align 4
  %dst_nents = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 4
  %23 = ptrtoint ptr %dst_nents to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %dst_nents, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %24 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dst, align 8
  %26 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %src, align 4
  %cmp25 = icmp eq ptr %25, %27
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %src_sg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %src_sg, align 4
  %dst_sg = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6
  %30 = ptrtoint ptr %dst_sg to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %dst_sg, align 4
  %31 = ptrtoint ptr %src_skip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src_skip, align 4
  %dst_skip = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 8
  %33 = ptrtoint ptr %dst_skip to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %dst_skip, align 4
  br label %if.end44

if.else:                                          ; preds = %if.end23
  %34 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %assoclen, align 8
  %dst_sg32 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6
  %dst_skip33 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 8
  %call34 = tail call i32 @spu_sg_at_offset(ptr noundef %25, i32 noundef %35, ptr noundef %dst_sg32, ptr noundef %dst_skip33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end40, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.end40:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef nonnull @__func__.aead_enqueue) #12
  br label %cleanup

if.end44:                                         ; preds = %if.else.if.end44_crit_edge, %if.then27
  %mode = getelementptr i8, ptr %1, i32 700
  %36 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mode, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %37, label %if.else76 [
    i32 1, label %if.end44.if.then66_crit_edge
    i32 4, label %if.end44.if.then66_crit_edge233
    i32 2, label %if.end44.if.then66_crit_edge234
    i32 7, label %if.end44.if.then66_crit_edge235
    i32 6, label %if.end44.if.then66_crit_edge236
    i32 5, label %if.end44.if.end79_crit_edge
  ]

if.end44.if.end79_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.end44.if.then66_crit_edge236:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then66

if.end44.if.then66_crit_edge235:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then66

if.end44.if.then66_crit_edge234:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then66

if.end44.if.then66_crit_edge233:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then66

if.end44.if.then66_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then66

if.then66:                                        ; preds = %if.end44.if.then66_crit_edge, %if.end44.if.then66_crit_edge233, %if.end44.if.then66_crit_edge234, %if.end44.if.then66_crit_edge235, %if.end44.if.then66_crit_edge236
  %salt_len = getelementptr i8, ptr %1, i32 660
  %39 = ptrtoint ptr %salt_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %salt_len, align 4
  %41 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %42, i32 12
  %43 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %44, i32 -104
  %45 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ivsize.i.i, align 8
  %add = add i32 %46, %40
  br label %if.end79

if.else76:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.end79:                                         ; preds = %if.else76, %if.then66, %if.end44.if.end79_crit_edge
  %.sink = phi i32 [ 0, %if.else76 ], [ %add, %if.then66 ], [ 16, %if.end44.if.end79_crit_edge ]
  %iv_ctr_len75 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 44
  %47 = ptrtoint ptr %iv_ctr_len75 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink, ptr %iv_ctr_len75, align 4
  %hash_carry_len = getelementptr inbounds %struct.aead_request, ptr %req, i32 2, i32 6, i32 48
  %48 = ptrtoint ptr %hash_carry_len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %hash_carry_len, align 4
  %iv_ctr_len88 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 44
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %49 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tfm.i, align 16
  %cipher.i = getelementptr i8, ptr %50, i32 696
  %mode.i = getelementptr i8, ptr %50, i32 700
  %51 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mode.i, align 4
  %.off.i = add i32 %52, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true.i, label %if.end79.if.end59.i_crit_edge

if.end79.if.end59.i_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

land.lhs.true.i:                                  ; preds = %if.end79
  %53 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %assoclen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp6.i = icmp eq i32 %54, 0
  br i1 %cmp6.i, label %if.then.i, label %land.lhs.true.i.if.end16.i_crit_edge

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %55 = ptrtoint ptr %is_encrypt9 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %is_encrypt9, align 1, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  %57 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cryptlen, align 4
  br i1 %tobool.not.i, label %land.lhs.true12.i, label %land.lhs.true7.i

land.lhs.true7.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp8.i = icmp eq i32 %58, 0
  br i1 %cmp8.i, label %land.lhs.true7.i.if.then103_crit_edge, label %land.lhs.true7.i.if.end16.i_crit_edge

land.lhs.true7.i.if.end16.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true7.i.if.then103_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then103

land.lhs.true12.i:                                ; preds = %if.then.i
  %digestsize.i = getelementptr i8, ptr %50, i32 684
  %59 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %digestsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp14.i = icmp eq i32 %58, %60
  br i1 %cmp14.i, label %land.lhs.true12.i.if.then103_crit_edge, label %land.lhs.true12.i.if.end16.i_crit_edge

land.lhs.true12.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true12.i.if.then103_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then103

if.end16.i:                                       ; preds = %land.lhs.true12.i.if.end16.i_crit_edge, %land.lhs.true7.i.if.end16.i_crit_edge, %land.lhs.true.i.if.end16.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %52)
  %cmp19.i = icmp eq i32 %52, 5
  br i1 %cmp19.i, label %land.lhs.true20.i, label %land.lhs.true47.i

land.lhs.true20.i:                                ; preds = %if.end16.i
  %61 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp21.i = icmp eq i32 %61, 0
  br i1 %cmp21.i, label %land.lhs.true22.i, label %land.lhs.true20.i.land.lhs.true37.i_crit_edge

land.lhs.true20.i.land.lhs.true37.i_crit_edge:    ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true37.i

land.lhs.true22.i:                                ; preds = %land.lhs.true20.i
  %digestsize23.i = getelementptr i8, ptr %50, i32 684
  %62 = ptrtoint ptr %digestsize23.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %digestsize23.i, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %63, label %land.lhs.true22.i.if.then103_crit_edge [
    i32 8, label %land.lhs.true22.i.land.lhs.true37.i_crit_edge
    i32 12, label %land.lhs.true22.i.land.lhs.true37.i_crit_edge237
    i32 16, label %land.lhs.true22.i.land.lhs.true37.i_crit_edge238
  ]

land.lhs.true22.i.land.lhs.true37.i_crit_edge238: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true37.i

land.lhs.true22.i.land.lhs.true37.i_crit_edge237: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true37.i

land.lhs.true22.i.land.lhs.true37.i_crit_edge:    ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true37.i

land.lhs.true22.i.if.then103_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then103

land.lhs.true37.i:                                ; preds = %land.lhs.true22.i.land.lhs.true37.i_crit_edge, %land.lhs.true22.i.land.lhs.true37.i_crit_edge237, %land.lhs.true22.i.land.lhs.true37.i_crit_edge238, %land.lhs.true20.i.land.lhs.true37.i_crit_edge
  %65 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 22), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp38.i = icmp ne i32 %65, 1
  %cmp6.i.not = xor i1 %cmp6.i, true
  %brmerge = select i1 %cmp38.i, i1 true, i1 %cmp6.i.not
  br i1 %brmerge, label %land.lhs.true37.i.if.end59.i_crit_edge, label %land.lhs.true37.i.if.then103_crit_edge

land.lhs.true37.i.if.then103_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then103

land.lhs.true37.i.if.end59.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

land.lhs.true47.i:                                ; preds = %if.end16.i
  %66 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cipher.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %67)
  %cmp49.i = icmp eq i32 %67, 4
  br i1 %cmp49.i, label %land.lhs.true50.i, label %land.lhs.true47.i.if.end59.i_crit_edge

land.lhs.true47.i.if.end59.i_crit_edge:           ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

land.lhs.true50.i:                                ; preds = %land.lhs.true47.i
  %68 = ptrtoint ptr %iv_ctr_len88 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %iv_ctr_len88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %69)
  %cmp51.i = icmp eq i32 %69, 8
  br i1 %cmp51.i, label %land.lhs.true52.i, label %land.lhs.true50.i.if.end59.i_crit_edge

land.lhs.true50.i.if.end59.i_crit_edge:           ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

land.lhs.true52.i:                                ; preds = %land.lhs.true50.i
  %70 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %54, label %land.lhs.true52.i.if.then103_crit_edge [
    i32 16, label %land.lhs.true52.i.if.end59.i_crit_edge
    i32 20, label %land.lhs.true52.i.if.end59.i_crit_edge239
  ]

land.lhs.true52.i.if.end59.i_crit_edge239:        ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

land.lhs.true52.i.if.end59.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

land.lhs.true52.i.if.then103_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then103

if.end59.i:                                       ; preds = %land.lhs.true52.i.if.end59.i_crit_edge, %land.lhs.true52.i.if.end59.i_crit_edge239, %land.lhs.true50.i.if.end59.i_crit_edge, %land.lhs.true47.i.if.end59.i_crit_edge, %land.lhs.true37.i.if.end59.i_crit_edge, %if.end79.if.end59.i_crit_edge
  %71 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cryptlen, align 4
  %73 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp62.i = icmp eq i32 %73, 0
  br i1 %cmp62.i, label %if.then63.i, label %if.end59.i.if.end65.i_crit_edge

if.end59.i.if.end65.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

if.then63.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %assoclen, align 8
  %add.i = add i32 %75, %72
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then63.i, %if.end59.i.if.end65.i_crit_edge
  %payload_len.0.i = phi i32 [ %add.i, %if.then63.i ], [ %72, %if.end59.i.if.end65.i_crit_edge ]
  %max_payload.i = getelementptr i8, ptr %50, i32 720
  %76 = ptrtoint ptr %max_payload.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %max_payload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %cmp66.i = icmp ne i32 %77, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %payload_len.0.i, i32 %77)
  %cmp69.i.not = icmp ugt i32 %payload_len.0.i, %77
  %or.cond = select i1 %cmp66.i, i1 %cmp69.i.not, i1 false
  br i1 %or.cond, label %if.end65.i.if.then103_crit_edge, label %if.end106, !prof !506

if.end65.i.if.then103_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then103

if.then103:                                       ; preds = %if.end65.i.if.then103_crit_edge, %land.lhs.true52.i.if.then103_crit_edge, %land.lhs.true37.i.if.then103_crit_edge, %land.lhs.true22.i.if.then103_crit_edge, %land.lhs.true12.i.if.then103_crit_edge, %land.lhs.true7.i.if.then103_crit_edge
  %call105 = tail call fastcc i32 @aead_do_fallback(ptr noundef %req, i1 noundef zeroext %is_encrypt)
  br label %cleanup

if.end106:                                        ; preds = %if.end65.i
  %78 = ptrtoint ptr %iv_ctr_len88 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %iv_ctr_len88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool108.not = icmp eq i32 %79, 0
  br i1 %tobool108.not, label %if.end106.if.end128_crit_edge, label %if.then109

if.end106.if.end128_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.then109:                                       ; preds = %if.end106
  %salt_len110 = getelementptr i8, ptr %1, i32 660
  %80 = ptrtoint ptr %salt_len110 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %salt_len110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool111.not = icmp eq i32 %81, 0
  br i1 %tobool111.not, label %if.then109.if.end115_crit_edge, label %if.then112

if.then109.if.end115_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.then112:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  %iv_ctr = getelementptr inbounds %struct.aead_request, ptr %req, i32 7, i32 6, i32 68
  %salt_offset = getelementptr i8, ptr %1, i32 664
  %82 = ptrtoint ptr %salt_offset to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %salt_offset, align 4
  %add.ptr = getelementptr i8, ptr %iv_ctr, i32 %83
  %salt = getelementptr i8, ptr %1, i32 656
  %84 = call ptr @memcpy(ptr %add.ptr, ptr %salt, i32 %81)
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %if.then109.if.end115_crit_edge
  %iv_ctr117 = getelementptr inbounds %struct.aead_request, ptr %req, i32 7, i32 6, i32 68
  %salt_offset119 = getelementptr i8, ptr %1, i32 664
  %85 = ptrtoint ptr %salt_offset119 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %salt_offset119, align 4
  %add.ptr120 = getelementptr i8, ptr %iv_ctr117, i32 %86
  %87 = ptrtoint ptr %salt_len110 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %salt_len110, align 4
  %add.ptr122 = getelementptr i8, ptr %add.ptr120, i32 %88
  %89 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %iv, align 32
  %91 = ptrtoint ptr %iv_ctr_len88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %iv_ctr_len88, align 4
  %93 = add i32 %88, %86
  %sub127 = sub i32 %92, %93
  %94 = call ptr @memcpy(ptr %add.ptr122, ptr %90, i32 %sub127)
  br label %if.end128

if.end128:                                        ; preds = %if.end115, %if.end106.if.end128_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !503
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), i32 1, i32 3, i32 1) #9
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5)) #9, !srcloc !504
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %95, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !505
  %conv1.i = and i32 %asmresult.i.i.i.i.i, 255
  %96 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %rem.i = urem i32 %conv1.i, %96
  %conv2.i = trunc i32 %rem.i to i8
  %chan_idx = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %chan_idx to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv2.i, ptr %chan_idx, align 4
  %call130 = tail call fastcc i32 @handle_aead_req(ptr noundef %__ctx.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call130)
  %cmp131.not = icmp eq i32 %call130, -115
  br i1 %cmp131.not, label %if.end128.cleanup_crit_edge, label %if.then133

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then133:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  %98 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 16
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  tail call void @kfree(ptr noundef %100) #9
  %dst.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 20
  %101 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dst.i, align 4
  tail call void @kfree(ptr noundef %102) #9
  %103 = call ptr @memset(ptr %mb_mssg, i32 0, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.then133, %if.end128.cleanup_crit_edge, %if.then103, %do.end40, %do.end20, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end20 ], [ %call105, %if.then103 ], [ -22, %do.end40 ], [ %call130, %if.then133 ], [ -115, %if.end128.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu_sg_at_offset(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aead_do_fallback(ptr noundef %req, i1 noundef zeroext %is_encrypt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_cipher = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 5, i32 4, i32 68
  %2 = ptrtoint ptr %fallback_cipher to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_cipher, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then:                                          ; preds = %entry
  %old_tfm = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 5
  %4 = ptrtoint ptr %old_tfm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %old_tfm, align 4
  %5 = ptrtoint ptr %fallback_cipher to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fallback_cipher, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %tfm.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %base.i.i, ptr %tfm.i, align 16
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %complete, align 8
  %old_complete = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 6
  %10 = ptrtoint ptr %old_complete to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %old_complete, align 4
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %old_data = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 6, i32 4
  %13 = ptrtoint ptr %old_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %old_data, align 4
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  store ptr @aead_complete, ptr %complete, align 8
  store ptr %req, ptr %data, align 4
  br i1 %is_encrypt, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 @crypto_aead_encrypt(ptr noundef %req) #9
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 @crypto_aead_decrypt(ptr noundef %req) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call10, %cond.true ], [ %call11, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp = icmp eq i32 %cond, 0
  br i1 %cmp, label %if.then13, label %cond.end.if.end18_crit_edge

cond.end.if.end18_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then13:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %old_complete to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %old_complete, align 4
  %18 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %complete, align 8
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %flags.i, align 4
  %20 = ptrtoint ptr %old_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %old_data, align 4
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %data, align 4
  %23 = ptrtoint ptr %tfm.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %1, ptr %tfm.i, align 16
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %cond.end.if.end18_crit_edge, %entry.if.end18_crit_edge
  %err.0 = phi i32 [ 0, %if.then13 ], [ %cond, %cond.end.if.end18_crit_edge ], [ -22, %entry.if.end18_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aead_complete(ptr noundef %areq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %old_complete = getelementptr inbounds %struct.aead_request, ptr %areq, i32 3, i32 6
  %0 = ptrtoint ptr %old_complete to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %old_complete, align 4
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 1
  %2 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %complete, align 4
  %old_data = getelementptr inbounds %struct.aead_request, ptr %areq, i32 3, i32 6, i32 4
  %3 = ptrtoint ptr %old_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %old_data, align 4
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %data, align 4
  tail call void %1(ptr noundef %areq, i32 noundef %err) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !39, !40, !42, !44, !46, !48, !49, !50, !51, !52, !54, !55, !57, !58, !60, !62, !64, !66, !67, !68, !69, !70, !71, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !126, !127, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !171, !173, !175, !177, !179, !181, !182, !183, !185, !187, !189, !191, !192, !193, !195, !197, !199, !201, !203, !205, !206, !207, !208, !210, !212, !213, !214, !215, !217, !218, !220, !222, !224, !225, !226, !228, !229, !231, !232, !233, !234, !236, !237, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !271, !272, !274, !275, !276, !278, !280, !282, !284, !286, !287, !288, !289, !291, !293, !295, !297, !299, !301, !302, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !332, !333, !335, !336, !337, !339, !341, !343, !345, !347, !349, !351, !352, !354, !355, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !377, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !397, !398, !400, !401, !402, !404, !405, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !463, !464, !466, !467, !468, !470, !471, !473, !474, !476, !478, !480, !482}
!llvm.module.flags = !{!484, !485, !486, !487, !488, !489, !490, !491}
!llvm.ident = !{!492}

!0 = !{ptr @__param_flow_debug_logging, !1, !"__param_flow_debug_logging", i1 false, i1 false}
!1 = !{!"../drivers/crypto/bcm/cipher.c", i32 50, i32 1}
!2 = !{ptr @__UNIQUE_ID_flow_debug_loggingtype339, !1, !"__UNIQUE_ID_flow_debug_loggingtype339", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_flow_debug_logging340, !4, !"__UNIQUE_ID_flow_debug_logging340", i1 false, i1 false}
!4 = !{!"../drivers/crypto/bcm/cipher.c", i32 51, i32 1}
!5 = !{ptr @__param_packet_debug_logging, !6, !"__param_packet_debug_logging", i1 false, i1 false}
!6 = !{!"../drivers/crypto/bcm/cipher.c", i32 54, i32 1}
!7 = !{ptr @__UNIQUE_ID_packet_debug_loggingtype341, !6, !"__UNIQUE_ID_packet_debug_loggingtype341", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_packet_debug_logging342, !9, !"__UNIQUE_ID_packet_debug_logging342", i1 false, i1 false}
!9 = !{!"../drivers/crypto/bcm/cipher.c", i32 55, i32 1}
!10 = !{ptr @__param_debug_logging_sleep, !11, !"__param_debug_logging_sleep", i1 false, i1 false}
!11 = !{!"../drivers/crypto/bcm/cipher.c", i32 58, i32 1}
!12 = !{ptr @__UNIQUE_ID_debug_logging_sleeptype343, !11, !"__UNIQUE_ID_debug_logging_sleeptype343", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_debug_logging_sleep344, !14, !"__UNIQUE_ID_debug_logging_sleep344", i1 false, i1 false}
!14 = !{!"../drivers/crypto/bcm/cipher.c", i32 59, i32 1}
!15 = !{ptr @__param_cipher_pri, !16, !"__param_cipher_pri", i1 false, i1 false}
!16 = !{!"../drivers/crypto/bcm/cipher.c", i32 71, i32 1}
!17 = !{ptr @__UNIQUE_ID_cipher_pritype345, !16, !"__UNIQUE_ID_cipher_pritype345", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_cipher_pri346, !19, !"__UNIQUE_ID_cipher_pri346", i1 false, i1 false}
!19 = !{!"../drivers/crypto/bcm/cipher.c", i32 72, i32 1}
!20 = !{ptr @__param_hash_pri, !21, !"__param_hash_pri", i1 false, i1 false}
!21 = !{!"../drivers/crypto/bcm/cipher.c", i32 75, i32 1}
!22 = !{ptr @__UNIQUE_ID_hash_pritype347, !21, !"__UNIQUE_ID_hash_pritype347", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_hash_pri348, !24, !"__UNIQUE_ID_hash_pri348", i1 false, i1 false}
!24 = !{!"../drivers/crypto/bcm/cipher.c", i32 76, i32 1}
!25 = !{ptr @__param_aead_pri, !26, !"__param_aead_pri", i1 false, i1 false}
!26 = !{!"../drivers/crypto/bcm/cipher.c", i32 79, i32 1}
!27 = !{ptr @__UNIQUE_ID_aead_pritype349, !26, !"__UNIQUE_ID_aead_pritype349", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_aead_pri350, !29, !"__UNIQUE_ID_aead_pri350", i1 false, i1 false}
!29 = !{!"../drivers/crypto/bcm/cipher.c", i32 80, i32 1}
!30 = !{ptr @__initcall__kmod_bcm_crypto_spu__360_4797_bcm_spu_pdriver_init6, !31, !"__initcall__kmod_bcm_crypto_spu__360_4797_bcm_spu_pdriver_init6", i1 false, i1 false}
!31 = !{!"../drivers/crypto/bcm/cipher.c", i32 4797, i32 1}
!32 = !{ptr @__exitcall_bcm_spu_pdriver_exit, !31, !"__exitcall_bcm_spu_pdriver_exit", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_author361, !34, !"__UNIQUE_ID_author361", i1 false, i1 false}
!34 = !{!"../drivers/crypto/bcm/cipher.c", i32 4799, i32 1}
!35 = !{ptr @__UNIQUE_ID_description362, !36, !"__UNIQUE_ID_description362", i1 false, i1 false}
!36 = !{!"../drivers/crypto/bcm/cipher.c", i32 4800, i32 1}
!37 = !{ptr @__UNIQUE_ID_file363, !38, !"__UNIQUE_ID_file363", i1 false, i1 false}
!38 = !{!"../drivers/crypto/bcm/cipher.c", i32 4801, i32 1}
!39 = !{ptr @__UNIQUE_ID_license364, !38, !"__UNIQUE_ID_license364", i1 false, i1 false}
!40 = !{ptr @iproc_priv, !41, !"iproc_priv", i1 false, i1 false}
!41 = !{!"../drivers/crypto/bcm/cipher.c", i32 45, i32 27}
!42 = !{ptr @flow_debug_logging, !43, !"flow_debug_logging", i1 false, i1 false}
!43 = !{!"../drivers/crypto/bcm/cipher.c", i32 49, i32 5}
!44 = !{ptr @packet_debug_logging, !45, !"packet_debug_logging", i1 false, i1 false}
!45 = !{!"../drivers/crypto/bcm/cipher.c", i32 53, i32 5}
!46 = !{ptr @debug_logging_sleep, !47, !"debug_logging_sleep", i1 false, i1 false}
!47 = !{!"../drivers/crypto/bcm/cipher.c", i32 57, i32 5}
!48 = !{ptr @__param_str_flow_debug_logging, !1, !"__param_str_flow_debug_logging", i1 false, i1 false}
!49 = !{ptr @__param_str_packet_debug_logging, !6, !"__param_str_packet_debug_logging", i1 false, i1 false}
!50 = !{ptr @__param_str_debug_logging_sleep, !11, !"__param_str_debug_logging_sleep", i1 false, i1 false}
!51 = !{ptr @__param_str_cipher_pri, !16, !"__param_str_cipher_pri", i1 false, i1 false}
!52 = !{ptr @cipher_pri, !53, !"cipher_pri", i1 false, i1 false}
!53 = !{!"../drivers/crypto/bcm/cipher.c", i32 70, i32 12}
!54 = !{ptr @__param_str_hash_pri, !21, !"__param_str_hash_pri", i1 false, i1 false}
!55 = !{ptr @hash_pri, !56, !"hash_pri", i1 false, i1 false}
!56 = !{!"../drivers/crypto/bcm/cipher.c", i32 74, i32 12}
!57 = !{ptr @__param_str_aead_pri, !26, !"__param_str_aead_pri", i1 false, i1 false}
!58 = !{ptr @aead_pri, !59, !"aead_pri", i1 false, i1 false}
!59 = !{!"../drivers/crypto/bcm/cipher.c", i32 78, i32 12}
!60 = !{ptr @.str, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/crypto/bcm/cipher.c", i32 4791, i32 14}
!62 = !{ptr @bcm_spu_pdriver, !63, !"bcm_spu_pdriver", i1 false, i1 false}
!63 = !{!"../drivers/crypto/bcm/cipher.c", i32 4789, i32 31}
!64 = !{ptr @.str.1, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/crypto/bcm/cipher.c", i32 4741, i32 2}
!66 = !{ptr @.str.2, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.3, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.4, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.5, !65, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @bcm_spu_probe._entry, !65, !"_entry", i1 false, i1 false}
!71 = !{ptr @bcm_spu_probe._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.6, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/crypto/bcm/cipher.c", i32 4673, i32 49}
!74 = !{ptr @.str.7, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/crypto/bcm/cipher.c", i32 4673, i32 59}
!76 = !{ptr @.str.8, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/crypto/bcm/cipher.c", i32 4677, i32 3}
!78 = !{ptr @.str.9, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @spu_dt_read._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @spu_dt_read._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.11, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/crypto/bcm/cipher.c", i32 4690, i32 4}
!83 = !{ptr @spu_dt_read._entry.10, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @spu_dt_read._entry_ptr.12, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.13, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/crypto/bcm/cipher.c", i32 4697, i32 2}
!87 = !{ptr @.str.14, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @spu_dt_read.__UNIQUE_ID_ddebug356, !86, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!89 = !{ptr @.str.15, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/crypto/bcm/cipher.c", i32 4400, i32 4}
!91 = !{ptr @.str.16, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @spu_mb_init._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @spu_mb_init._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.17, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/crypto/bcm/cipher.c", i32 1635, i32 3}
!96 = !{ptr @.str.18, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @spu_rx_callback._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @spu_rx_callback._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/crypto/bcm/cipher.c", i32 493, i32 11}
!101 = distinct !{null, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/crypto/bcm/cipher.c", i32 494, i32 4}
!103 = distinct !{null, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/crypto/bcm/cipher.c", i32 1008, i32 11}
!105 = distinct !{null, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/crypto/bcm/cipher.c", i32 1009, i32 4}
!107 = distinct !{null, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/crypto/bcm/cipher.c", i32 967, i32 12}
!109 = distinct !{null, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/crypto/bcm/cipher.c", i32 974, i32 13}
!111 = !{ptr @.str.23, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/crypto/bcm/cipher.c", i32 907, i32 17}
!113 = !{ptr @.str.24, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/crypto/bcm/cipher.c", i32 911, i32 17}
!115 = !{ptr @.str.25, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/crypto/bcm/cipher.c", i32 915, i32 17}
!117 = !{ptr @.str.26, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/crypto/bcm/cipher.c", i32 919, i32 17}
!119 = !{ptr @.str.27, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/crypto/bcm/cipher.c", i32 923, i32 17}
!121 = !{ptr @.str.28, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/crypto/bcm/cipher.c", i32 927, i32 17}
!123 = !{ptr @.str.29, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/crypto/bcm/cipher.c", i32 931, i32 3}
!125 = !{ptr @.str.30, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @spu_hmac_outer_hash._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @spu_hmac_outer_hash._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/crypto/bcm/cipher.c", i32 1542, i32 11}
!130 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/crypto/bcm/cipher.c", i32 1548, i32 15}
!132 = distinct !{null, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/crypto/bcm/cipher.c", i32 1559, i32 15}
!134 = distinct !{null, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/crypto/bcm/cipher.c", i32 1560, i32 12}
!136 = distinct !{null, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/crypto/bcm/cipher.c", i32 1566, i32 13}
!138 = distinct !{null, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/crypto/bcm/cipher.c", i32 323, i32 11}
!140 = distinct !{null, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/crypto/bcm/cipher.c", i32 323, i32 19}
!142 = distinct !{null, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/crypto/bcm/cipher.c", i32 391, i32 12}
!144 = distinct !{null, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/crypto/bcm/cipher.c", i32 393, i32 12}
!146 = distinct !{null, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/crypto/bcm/cipher.c", i32 395, i32 11}
!148 = distinct !{null, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/crypto/bcm/cipher.c", i32 421, i32 13}
!150 = distinct !{null, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/crypto/bcm/cipher.c", i32 423, i32 14}
!152 = !{ptr @.str.42, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/crypto/bcm/cipher.c", i32 164, i32 3}
!154 = !{ptr @.str.43, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @spu_skcipher_rx_sg_create._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @spu_skcipher_rx_sg_create._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.44, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/crypto/bcm/cipher.c", i32 228, i32 3}
!159 = !{ptr @.str.45, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @spu_skcipher_tx_sg_create._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @spu_skcipher_tx_sg_create._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.46, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/crypto/bcm/cipher.c", i32 273, i32 3}
!164 = !{ptr @.str.47, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @mailbox_send_message._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @mailbox_send_message._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = distinct !{null, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/crypto/bcm/cipher.c", i32 695, i32 11}
!169 = distinct !{null, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/crypto/bcm/cipher.c", i32 751, i32 14}
!171 = distinct !{null, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/crypto/bcm/cipher.c", i32 753, i32 17}
!173 = distinct !{null, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/crypto/bcm/cipher.c", i32 805, i32 11}
!175 = !{ptr @__func__.handle_ahash_req, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/crypto/bcm/cipher.c", i32 806, i32 4}
!177 = distinct !{null, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/crypto/bcm/cipher.c", i32 813, i32 11}
!179 = !{ptr @.str.53, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/crypto/bcm/cipher.c", i32 826, i32 3}
!181 = !{ptr @handle_ahash_req._entry, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @handle_ahash_req._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!183 = distinct !{null, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/crypto/bcm/cipher.c", i32 852, i32 14}
!185 = distinct !{null, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/crypto/bcm/cipher.c", i32 853, i32 11}
!187 = !{ptr @BCMHEADER, !188, !"BCMHEADER", i1 false, i1 false}
!188 = !{!"../drivers/crypto/bcm/cipher.c", i32 89, i32 13}
!189 = !{ptr @.str.56, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/crypto/bcm/cipher.c", i32 609, i32 4}
!191 = !{ptr @spu_ahash_tx_sg_create._entry, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @spu_ahash_tx_sg_create._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!193 = distinct !{null, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/crypto/bcm/cipher.c", i32 1290, i32 11}
!195 = distinct !{null, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/crypto/bcm/cipher.c", i32 1290, i32 33}
!197 = distinct !{null, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/crypto/bcm/cipher.c", i32 1428, i32 11}
!199 = distinct !{null, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/crypto/bcm/cipher.c", i32 1459, i32 14}
!201 = distinct !{null, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/crypto/bcm/cipher.c", i32 1460, i32 13}
!203 = !{ptr @.str.61, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/crypto/bcm/cipher.c", i32 1108, i32 4}
!205 = !{ptr @.str.62, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @spu_aead_rx_sg_create._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @spu_aead_rx_sg_create._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = distinct !{null, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/crypto/bcm/cipher.c", i32 1123, i32 11}
!210 = !{ptr @.str.64, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/crypto/bcm/cipher.c", i32 1198, i32 4}
!212 = !{ptr @.str.65, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @spu_aead_tx_sg_create._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @spu_aead_tx_sg_create._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @spu_aead_tx_sg_create._entry.66, !216, !"_entry", i1 false, i1 false}
!216 = !{!"../drivers/crypto/bcm/cipher.c", i32 1220, i32 4}
!217 = !{ptr @spu_aead_tx_sg_create._entry_ptr.67, !216, !"_entry_ptr", i1 false, i1 false}
!218 = distinct !{null, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/crypto/bcm/cipher.c", i32 1611, i32 11}
!220 = distinct !{null, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/crypto/bcm/cipher.c", i32 1611, i32 30}
!222 = !{ptr @.str.69, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/crypto/bcm/cipher.c", i32 4322, i32 3}
!224 = !{ptr @.str.70, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @spu_functions_register.__UNIQUE_ID_ddebug351, !223, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!226 = !{ptr @.str.71, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/crypto/bcm/cipher.c", i32 4347, i32 3}
!228 = !{ptr @spu_functions_register.__UNIQUE_ID_ddebug352, !227, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!229 = !{ptr @.str.72, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/crypto/bcm/cipher.c", i32 4585, i32 4}
!231 = !{ptr @.str.73, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @spu_algs_register._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @spu_algs_register._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.75, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/crypto/bcm/cipher.c", i32 4592, i32 4}
!236 = !{ptr @spu_algs_register._entry.74, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @spu_algs_register._entry_ptr.76, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @driver_algs, !239, !"driver_algs", i1 false, i1 false}
!239 = !{!"../drivers/crypto/bcm/cipher.c", i32 3061, i32 27}
!240 = distinct !{null, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/crypto/bcm/cipher.c", i32 2860, i32 11}
!242 = distinct !{null, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/crypto/bcm/cipher.c", i32 2860, i32 31}
!244 = distinct !{null, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/crypto/bcm/cipher.c", i32 2861, i32 12}
!246 = distinct !{null, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/crypto/bcm/cipher.c", i32 2885, i32 11}
!248 = distinct !{null, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/crypto/bcm/cipher.c", i32 2887, i32 12}
!250 = distinct !{null, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/crypto/bcm/cipher.c", i32 2888, i32 12}
!252 = distinct !{null, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/crypto/bcm/cipher.c", i32 2892, i32 12}
!254 = distinct !{null, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/crypto/bcm/cipher.c", i32 2900, i32 13}
!256 = distinct !{null, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/crypto/bcm/cipher.c", i32 2938, i32 19}
!258 = distinct !{null, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/crypto/bcm/cipher.c", i32 2949, i32 12}
!260 = distinct !{null, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/crypto/bcm/cipher.c", i32 3003, i32 19}
!262 = distinct !{null, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/crypto/bcm/cipher.c", i32 2970, i32 19}
!264 = distinct !{null, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/crypto/bcm/cipher.c", i32 2765, i32 11}
!266 = !{ptr @__func__.aead_authenc_setkey, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/crypto/bcm/cipher.c", i32 2765, i32 46}
!268 = !{ptr @.str.87, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/crypto/bcm/cipher.c", i32 2814, i32 3}
!270 = !{ptr @aead_authenc_setkey._entry, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @aead_authenc_setkey._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.88, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/crypto/bcm/cipher.c", i32 4479, i32 2}
!274 = !{ptr @.str.89, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @spu_register_skcipher.__UNIQUE_ID_ddebug353, !273, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!276 = distinct !{null, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/crypto/bcm/cipher.c", i32 4214, i32 11}
!278 = distinct !{null, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/crypto/bcm/cipher.c", i32 4214, i32 21}
!280 = distinct !{null, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/crypto/bcm/cipher.c", i32 4188, i32 21}
!282 = distinct !{null, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/crypto/bcm/cipher.c", i32 1828, i32 11}
!284 = !{ptr @.str.92, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/crypto/bcm/cipher.c", i32 1842, i32 3}
!286 = !{ptr @.str.93, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @skcipher_setkey._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @skcipher_setkey._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = distinct !{null, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/crypto/bcm/cipher.c", i32 1867, i32 11}
!291 = distinct !{null, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/crypto/bcm/cipher.c", i32 1892, i32 11}
!293 = distinct !{null, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/crypto/bcm/cipher.c", i32 1720, i32 11}
!295 = distinct !{null, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/crypto/bcm/cipher.c", i32 1720, i32 28}
!297 = distinct !{null, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/crypto/bcm/cipher.c", i32 1899, i32 11}
!299 = !{ptr @.str.98, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/crypto/bcm/cipher.c", i32 4536, i32 2}
!301 = !{ptr @.str.99, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @spu_register_ahash.__UNIQUE_ID_ddebug354, !300, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!303 = distinct !{null, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/crypto/bcm/cipher.c", i32 4232, i32 21}
!305 = distinct !{null, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/crypto/bcm/cipher.c", i32 1966, i32 21}
!307 = distinct !{null, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/crypto/bcm/cipher.c", i32 2080, i32 11}
!309 = distinct !{null, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/crypto/bcm/cipher.c", i32 1911, i32 11}
!311 = distinct !{null, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/crypto/bcm/cipher.c", i32 1932, i32 12}
!313 = distinct !{null, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/crypto/bcm/cipher.c", i32 1933, i32 22}
!315 = distinct !{null, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/crypto/bcm/cipher.c", i32 1933, i32 27}
!317 = distinct !{null, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/crypto/bcm/cipher.c", i32 1938, i32 13}
!319 = distinct !{null, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/crypto/bcm/cipher.c", i32 2138, i32 11}
!321 = distinct !{null, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/crypto/bcm/cipher.c", i32 2175, i32 11}
!323 = distinct !{null, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/crypto/bcm/cipher.c", i32 2242, i32 11}
!325 = distinct !{null, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/crypto/bcm/cipher.c", i32 2257, i32 11}
!327 = !{ptr @__func__.ahash_setkey, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/crypto/bcm/cipher.c", i32 2258, i32 4}
!329 = !{ptr @.str.110, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/crypto/bcm/cipher.c", i32 2273, i32 4}
!331 = !{ptr @ahash_setkey._entry, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @ahash_setkey._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.112, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/crypto/bcm/cipher.c", i32 2277, i32 3}
!335 = !{ptr @ahash_setkey._entry.111, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @ahash_setkey._entry_ptr.113, !334, !"_entry_ptr", i1 false, i1 false}
!337 = distinct !{null, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/crypto/bcm/cipher.c", i32 2326, i32 11}
!339 = !{ptr @__func__.ahash_hmac_setkey, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/crypto/bcm/cipher.c", i32 2327, i32 4}
!341 = !{ptr @.str.115, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/crypto/bcm/cipher.c", i32 2357, i32 18}
!343 = !{ptr @.str.116, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/crypto/bcm/cipher.c", i32 2361, i32 18}
!345 = !{ptr @.str.117, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/crypto/bcm/cipher.c", i32 2365, i32 18}
!347 = !{ptr @.str.118, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/crypto/bcm/cipher.c", i32 2369, i32 18}
!349 = !{ptr @ahash_hmac_setkey._entry, !350, !"_entry", i1 false, i1 false}
!350 = !{!"../drivers/crypto/bcm/cipher.c", i32 2373, i32 4}
!351 = !{ptr @ahash_hmac_setkey._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.120, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/crypto/bcm/cipher.c", i32 2377, i32 4}
!354 = !{ptr @ahash_hmac_setkey._entry.119, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @ahash_hmac_setkey._entry_ptr.121, !353, !"_entry_ptr", i1 false, i1 false}
!356 = distinct !{null, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/crypto/bcm/cipher.c", i32 2383, i32 12}
!358 = distinct !{null, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/crypto/bcm/cipher.c", i32 2384, i32 13}
!360 = distinct !{null, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/crypto/bcm/cipher.c", i32 2407, i32 13}
!362 = distinct !{null, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/crypto/bcm/cipher.c", i32 2408, i32 13}
!364 = distinct !{null, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/crypto/bcm/cipher.c", i32 2424, i32 11}
!366 = distinct !{null, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/crypto/bcm/cipher.c", i32 2444, i32 11}
!368 = distinct !{null, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/crypto/bcm/cipher.c", i32 2454, i32 11}
!370 = distinct !{null, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/crypto/bcm/cipher.c", i32 2461, i32 11}
!372 = distinct !{null, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/crypto/bcm/cipher.c", i32 2474, i32 11}
!374 = !{ptr @.str.131, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/crypto/bcm/cipher.c", i32 4563, i32 2}
!376 = !{ptr @.str.132, !375, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @spu_register_aead.__UNIQUE_ID_ddebug355, !375, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!378 = distinct !{null, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/crypto/bcm/cipher.c", i32 3023, i32 11}
!380 = distinct !{null, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/crypto/bcm/cipher.c", i32 3024, i32 4}
!382 = distinct !{null, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/crypto/bcm/cipher.c", i32 3030, i32 12}
!384 = distinct !{null, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/crypto/bcm/cipher.c", i32 3034, i32 13}
!386 = distinct !{null, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/crypto/bcm/cipher.c", i32 3042, i32 11}
!388 = distinct !{null, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/crypto/bcm/cipher.c", i32 3042, i32 38}
!390 = distinct !{null, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/crypto/bcm/cipher.c", i32 3045, i32 11}
!392 = !{ptr @__func__.aead_enqueue, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/crypto/bcm/cipher.c", i32 2642, i32 28}
!394 = !{ptr @.str.138, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/crypto/bcm/cipher.c", i32 2645, i32 3}
!396 = !{ptr @aead_enqueue._entry, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @aead_enqueue._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.140, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/crypto/bcm/cipher.c", i32 2674, i32 3}
!400 = !{ptr @aead_enqueue._entry.139, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @aead_enqueue._entry_ptr.141, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.143, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/crypto/bcm/cipher.c", i32 2692, i32 4}
!404 = !{ptr @aead_enqueue._entry.142, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @aead_enqueue._entry_ptr.144, !403, !"_entry_ptr", i1 false, i1 false}
!406 = distinct !{null, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/crypto/bcm/cipher.c", i32 2714, i32 11}
!408 = distinct !{null, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/crypto/bcm/cipher.c", i32 2715, i32 11}
!410 = distinct !{null, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/crypto/bcm/cipher.c", i32 2717, i32 11}
!412 = distinct !{null, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/crypto/bcm/cipher.c", i32 2718, i32 11}
!414 = distinct !{null, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/crypto/bcm/cipher.c", i32 2719, i32 11}
!416 = distinct !{null, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/crypto/bcm/cipher.c", i32 2721, i32 11}
!418 = distinct !{null, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/crypto/bcm/cipher.c", i32 2722, i32 12}
!420 = distinct !{null, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/crypto/bcm/cipher.c", i32 2723, i32 11}
!422 = distinct !{null, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/crypto/bcm/cipher.c", i32 2724, i32 11}
!424 = distinct !{null, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/crypto/bcm/cipher.c", i32 2724, i32 43}
!426 = distinct !{null, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/crypto/bcm/cipher.c", i32 2724, i32 51}
!428 = distinct !{null, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/crypto/bcm/cipher.c", i32 2727, i32 12}
!430 = distinct !{null, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/crypto/bcm/cipher.c", i32 2729, i32 12}
!432 = distinct !{null, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/crypto/bcm/cipher.c", i32 2521, i32 13}
!434 = distinct !{null, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/crypto/bcm/cipher.c", i32 2531, i32 12}
!436 = distinct !{null, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/crypto/bcm/cipher.c", i32 2532, i32 5}
!438 = distinct !{null, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/crypto/bcm/cipher.c", i32 2543, i32 12}
!440 = distinct !{null, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/crypto/bcm/cipher.c", i32 2556, i32 12}
!442 = distinct !{null, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/crypto/bcm/cipher.c", i32 2565, i32 11}
!444 = distinct !{null, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/crypto/bcm/cipher.c", i32 2599, i32 28}
!446 = distinct !{null, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/crypto/bcm/cipher.c", i32 2625, i32 13}
!448 = distinct !{null, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/crypto/bcm/cipher.c", i32 2580, i32 11}
!450 = distinct !{null, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/crypto/bcm/cipher.c", i32 2580, i32 28}
!452 = distinct !{null, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/crypto/bcm/cipher.c", i32 3052, i32 11}
!454 = distinct !{null, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/crypto/bcm/cipher.c", i32 3052, i32 33}
!456 = !{ptr @__func__.aead_cra_init, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/crypto/bcm/cipher.c", i32 4255, i32 21}
!458 = distinct !{null, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/crypto/bcm/cipher.c", i32 4268, i32 13}
!460 = !{ptr @.str.167, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/crypto/bcm/cipher.c", i32 4275, i32 5}
!462 = !{ptr @aead_cra_init._entry, !461, !"_entry", i1 false, i1 false}
!463 = !{ptr @aead_cra_init._entry_ptr, !461, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.168, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/crypto/bcm/cipher.c", i32 4764, i32 4}
!466 = !{ptr @.str.169, !465, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @bcm_spu_remove.__UNIQUE_ID_ddebug357, !465, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!468 = !{ptr @.str.170, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/crypto/bcm/cipher.c", i32 4771, i32 4}
!470 = !{ptr @bcm_spu_remove.__UNIQUE_ID_ddebug358, !469, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!471 = !{ptr @.str.171, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/crypto/bcm/cipher.c", i32 4776, i32 4}
!473 = !{ptr @bcm_spu_remove.__UNIQUE_ID_ddebug359, !472, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!474 = !{ptr @bcm_spu_dt_ids, !475, !"bcm_spu_dt_ids", i1 false, i1 false}
!475 = !{!"../drivers/crypto/bcm/cipher.c", i32 4641, i32 34}
!476 = !{ptr @spum_ns2_types, !477, !"spum_ns2_types", i1 false, i1 false}
!477 = !{!"../drivers/crypto/bcm/cipher.c", i32 4625, i32 32}
!478 = !{ptr @spum_nsp_types, !479, !"spum_nsp_types", i1 false, i1 false}
!479 = !{!"../drivers/crypto/bcm/cipher.c", i32 4629, i32 32}
!480 = !{ptr @spu2_types, !481, !"spu2_types", i1 false, i1 false}
!481 = !{!"../drivers/crypto/bcm/cipher.c", i32 4633, i32 32}
!482 = !{ptr @spu2_v2_types, !483, !"spu2_v2_types", i1 false, i1 false}
!483 = !{!"../drivers/crypto/bcm/cipher.c", i32 4637, i32 32}
!484 = !{i32 1, !"wchar_size", i32 2}
!485 = !{i32 1, !"min_enum_size", i32 4}
!486 = !{i32 8, !"branch-target-enforcement", i32 0}
!487 = !{i32 8, !"sign-return-address", i32 0}
!488 = !{i32 8, !"sign-return-address-all", i32 0}
!489 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!490 = !{i32 7, !"uwtable", i32 1}
!491 = !{i32 7, !"frame-pointer", i32 2}
!492 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!493 = !{!"branch_weights", i32 1, i32 2000}
!494 = !{i8 0, i8 2}
!495 = !{i64 2149085701, i64 2149085706, i64 2149085719, i64 2149085763, i64 2149085797, i64 2149085818}
!496 = !{i64 2148472324, i64 2148472350, i64 2148472379, i64 2148472413, i64 2148472444, i64 2148472467}
!497 = !{!"branch_weights", i32 2000, i32 1}
!498 = !{i64 2154189334, i64 2154189826, i64 2154189371, i64 2154189427, i64 2154189461, i64 2154189485, i64 2154189526, i64 2154189547, i64 2154189575, i64 2154189609}
!499 = !{i64 2154178954, i64 2154179446, i64 2154178991, i64 2154179047, i64 2154179081, i64 2154179105, i64 2154179146, i64 2154179167, i64 2154179195, i64 2154179229}
!500 = !{i64 2154180564, i64 2154181056, i64 2154180601, i64 2154180657, i64 2154180691, i64 2154180715, i64 2154180756, i64 2154180777, i64 2154180805, i64 2154180839}
!501 = !{i64 2149142837}
!502 = !{i64 2148474789, i64 2148474815, i64 2148474844, i64 2148474878, i64 2148474909, i64 2148474932}
!503 = !{i64 2148557759}
!504 = !{i64 2148473044, i64 2148473076, i64 2148473105, i64 2148473139, i64 2148473170, i64 2148473193}
!505 = !{i64 2148557988}
!506 = !{!"branch_weights", i32 1, i32 4001}
