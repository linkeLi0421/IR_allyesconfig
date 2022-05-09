; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/brocade/bna/bfa_ioc.c_pt.bc'
source_filename = "../drivers/net/ethernet/brocade/bna/bfa_ioc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bfa_sm_table = type { ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bfa_ioc = type { ptr, ptr, %struct.bfa_pcidev, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, %struct.list_head, ptr, i32, i8, i32, %struct.bfa_ioc_regs, %struct.bfa_ioc_drv_stats, i8, i8, i8, i8, %struct.bfa_dma, ptr, ptr, %struct.bfa_ioc_mbox_mod, ptr, %struct.bfa_iocpf, i32, i32, i32, i32, i32, i8, i8 }
%struct.bfa_pcidev = type { i32, i8, i16, i16, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.bfa_ioc_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bfa_ioc_drv_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_dma = type { ptr, i64 }
%struct.bfa_ioc_mbox_mod = type { %struct.list_head, i32, [34 x %struct.anon] }
%struct.anon = type { ptr, ptr }
%struct.bfa_iocpf = type { ptr, ptr, i8, i8, i32 }
%struct.bfi_ioc_image_hdr = type { i32, i8, i8, i8, i8, i32, i32, [2 x i32], %struct.bfi_ioc_fwver, [4 x i32] }
%struct.bfi_ioc_fwver = type { i8, i8, i8, i8, [2 x i8], i8, i8 }
%struct.bfa_mbox_cmd = type { %struct.list_head, ptr, ptr, [8 x i32] }
%struct.bfa_ioc_hwif = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bfi_mbmsg = type { %struct.bfi_mhdr, [7 x i32] }
%struct.bfi_mhdr = type { i8, i8, %union.anon.0 }
%union.anon.0 = type { i16 }
%struct.bfi_ioc_ctrl_reply = type { %struct.bfi_mhdr, i8, i8, i8, i8 }
%struct.bfa_ioc_cbfn = type { ptr, ptr, ptr, ptr }
%struct.bfa_ioc_notify = type { %struct.list_head, ptr, ptr }
%struct.bfa_ioc_attr = type { i32, i32, %struct.bfa_adapter_attr, %struct.bfa_ioc_driver_attr, %struct.bfa_ioc_pci_attr, i8, i8, i8, i8, i8, [3 x i8] }
%struct.bfa_adapter_attr = type { [8 x i8], [12 x i8], i32, [16 x i8], [128 x i8], i64, [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.bfa_mfg_vpd, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.bfa_mfg_vpd = type { i8, [3 x i8], i8, i8, i8, i8, [512 x i8] }
%struct.bfa_ioc_driver_attr = type { [16 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.bfa_ioc_pci_attr = type { i16, i16, i16, i16, i32, i32, [8 x i8] }
%struct.bfi_ioc_attr = type <{ i64, i64, [6 x i8], i8, i8, i64, i64, [6 x i8], i16, [6 x i8], i16, [12 x i8], i8, i8, i8, i8, i32, i16, i8, i8, [64 x i8], [64 x i8], %struct.bfa_mfg_vpd, i32 }>
%struct.bfa_flash = type { ptr, i32, i8, [3 x i8], i32, i32, i32, i32, ptr, i64, ptr, ptr, ptr, i32, %struct.bfa_mbox_cmd, %struct.bfa_ioc_notify }
%struct.bfi_flash_query_rsp = type { %struct.bfi_mhdr, i32 }
%struct.bfa_flash_attr = type { i32, i32, [32 x %struct.bfa_flash_part_attr] }
%struct.bfa_flash_part_attr = type { i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.bfi_flash_write_rsp = type { %struct.bfi_mhdr, i32, i8, [3 x i8], i32, i32 }
%struct.bfi_flash_write_req = type { %struct.bfi_mhdr, %struct.bfi_alen, i32, i8, i8, [2 x i8], i32, i32 }
%struct.bfi_alen = type { %union.bfi_addr_u, i32 }
%union.bfi_addr_u = type { %struct.anon.2 }
%struct.anon.2 = type { i32, i32 }
%struct.anon.1 = type { i8, i8 }
%struct.bfi_flash_read_rsp = type { %struct.bfi_mhdr, i32, i8, [3 x i8], i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bfa_nw_auto_recover = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/brocade/bna/bfa_ioc.c\00", [53 x i8] zeroinitializer }, align 32
@iocpf_sm_table = internal constant { [14 x %struct.bfa_sm_table], [56 x i8] } { [14 x %struct.bfa_sm_table] [%struct.bfa_sm_table { ptr @bfa_iocpf_sm_reset, i32 1, ptr null }, %struct.bfa_sm_table { ptr @bfa_iocpf_sm_fwcheck, i32 9, ptr null }, %struct.bfa_sm_table { ptr @bfa_iocpf_sm_mismatch, i32 9, ptr null }, %struct.bfa_sm_table { ptr @bfa_iocpf_sm_semwait, i32 2, ptr null }, %struct.bfa_sm_table { ptr @bfa_iocpf_sm_hwinit, i32 3, ptr null }, %struct.bfa_sm_table { ptr @bfa_iocpf_sm_enabling, i32 3, ptr null }, %struct.bfa_sm_table { ptr @bfa_iocpf_sm_ready, i32 4, ptr null }, %struct.bfa_sm_table { ptr @bfa_iocpf_sm_initfail_sync, i32 5, ptr null }, %struct.bfa_sm_table { ptr @bfa_iocpf_sm_initfail, i32 5, ptr null }, %struct.bfa_sm_table { ptr @bfa_iocpf_sm_fail_sync, i32 6, ptr null }, %struct.bfa_sm_table { ptr @bfa_iocpf_sm_fail, i32 6, ptr null }, %struct.bfa_sm_table { ptr @bfa_iocpf_sm_disabling, i32 7, ptr null }, %struct.bfa_sm_table { ptr @bfa_iocpf_sm_disabling_sync, i32 7, ptr null }, %struct.bfa_sm_table { ptr @bfa_iocpf_sm_disabled, i32 8, ptr null }], [56 x i8] zeroinitializer }, align 32
@bfa_ioc_sm_uninit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013SM Assertion failure: %s: %d: event = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bfa_ioc_sm_uninit\00", [46 x i8] zeroinitializer }, align 32
@bfa_ioc_sm_uninit._entry_ptr = internal global ptr @bfa_ioc_sm_uninit._entry, section ".printk_index", align 4
@bfa_ioc_sm_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.3, ptr @.str, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bfa_ioc_sm_reset\00", [47 x i8] zeroinitializer }, align 32
@bfa_ioc_sm_reset._entry_ptr = internal global ptr @bfa_ioc_sm_reset._entry, section ".printk_index", align 4
@bfa_ioc_sm_enabling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.4, ptr @.str, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bfa_ioc_sm_enabling\00", [44 x i8] zeroinitializer }, align 32
@bfa_ioc_sm_enabling._entry_ptr = internal global ptr @bfa_ioc_sm_enabling._entry, section ".printk_index", align 4
@bfa_ioc_sm_getattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.5, ptr @.str, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bfa_ioc_sm_getattr\00", [45 x i8] zeroinitializer }, align 32
@bfa_ioc_sm_getattr._entry_ptr = internal global ptr @bfa_ioc_sm_getattr._entry, section ".printk_index", align 4
@bfa_ioc_sm_fail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.6, ptr @.str, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bfa_ioc_sm_fail\00", [16 x i8] zeroinitializer }, align 32
@bfa_ioc_sm_fail._entry_ptr = internal global ptr @bfa_ioc_sm_fail._entry, section ".printk_index", align 4
@bfa_ioc_sm_hwfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.7, ptr @.str, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bfa_ioc_sm_hwfail\00", [46 x i8] zeroinitializer }, align 32
@bfa_ioc_sm_hwfail._entry_ptr = internal global ptr @bfa_ioc_sm_hwfail._entry, section ".printk_index", align 4
@bfa_iocpf_sm_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.8, ptr @.str, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bfa_iocpf_sm_reset\00", [45 x i8] zeroinitializer }, align 32
@bfa_iocpf_sm_reset._entry_ptr = internal global ptr @bfa_iocpf_sm_reset._entry, section ".printk_index", align 4
@bfa_iocpf_sm_fwcheck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.9, ptr @.str, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bfa_iocpf_sm_fwcheck\00", [43 x i8] zeroinitializer }, align 32
@bfa_iocpf_sm_fwcheck._entry_ptr = internal global ptr @bfa_iocpf_sm_fwcheck._entry, section ".printk_index", align 4
@bfa_iocpf_sm_hwinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.10, ptr @.str, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bfa_iocpf_sm_hwinit\00", [44 x i8] zeroinitializer }, align 32
@bfa_iocpf_sm_hwinit._entry_ptr = internal global ptr @bfa_iocpf_sm_hwinit._entry, section ".printk_index", align 4
@bfa_iocpf_sm_enabling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.11, ptr @.str, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bfa_iocpf_sm_enabling\00", [42 x i8] zeroinitializer }, align 32
@bfa_iocpf_sm_enabling._entry_ptr = internal global ptr @bfa_iocpf_sm_enabling._entry, section ".printk_index", align 4
@bfa_iocpf_sm_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.12, ptr @.str, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bfa_iocpf_sm_ready\00", [45 x i8] zeroinitializer }, align 32
@bfa_iocpf_sm_ready._entry_ptr = internal global ptr @bfa_iocpf_sm_ready._entry, section ".printk_index", align 4
@bfa_iocpf_sm_fail_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.13, ptr @.str, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bfa_iocpf_sm_fail_sync\00", [41 x i8] zeroinitializer }, align 32
@bfa_iocpf_sm_fail_sync._entry_ptr = internal global ptr @bfa_iocpf_sm_fail_sync._entry, section ".printk_index", align 4
@bfa_iocpf_sm_semwait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.14, ptr @.str, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bfa_iocpf_sm_semwait\00", [43 x i8] zeroinitializer }, align 32
@bfa_iocpf_sm_semwait._entry_ptr = internal global ptr @bfa_iocpf_sm_semwait._entry, section ".printk_index", align 4
@bfa_iocpf_sm_disabling_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.15, ptr @.str, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bfa_iocpf_sm_disabling_sync\00", [36 x i8] zeroinitializer }, align 32
@bfa_iocpf_sm_disabling_sync._entry_ptr = internal global ptr @bfa_iocpf_sm_disabling_sync._entry, section ".printk_index", align 4
@bfa_iocpf_sm_disabling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.16, ptr @.str, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bfa_iocpf_sm_disabling\00", [41 x i8] zeroinitializer }, align 32
@bfa_iocpf_sm_disabling._entry_ptr = internal global ptr @bfa_iocpf_sm_disabling._entry, section ".printk_index", align 4
@bfa_iocpf_sm_initfail_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.17, ptr @.str, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bfa_iocpf_sm_initfail_sync\00", [37 x i8] zeroinitializer }, align 32
@bfa_iocpf_sm_initfail_sync._entry_ptr = internal global ptr @bfa_iocpf_sm_initfail_sync._entry, section ".printk_index", align 4
@bfa_iocpf_sm_initfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.18, ptr @.str, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bfa_iocpf_sm_initfail\00", [42 x i8] zeroinitializer }, align 32
@bfa_iocpf_sm_initfail._entry_ptr = internal global ptr @bfa_iocpf_sm_initfail._entry, section ".printk_index", align 4
@bfa_iocpf_sm_disabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.19, ptr @.str, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bfa_iocpf_sm_disabled\00", [42 x i8] zeroinitializer }, align 32
@bfa_iocpf_sm_disabled._entry_ptr = internal global ptr @bfa_iocpf_sm_disabled._entry, section ".printk_index", align 4
@bfa_iocpf_sm_mismatch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.20, ptr @.str, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bfa_iocpf_sm_mismatch\00", [42 x i8] zeroinitializer }, align 32
@bfa_iocpf_sm_mismatch._entry_ptr = internal global ptr @bfa_iocpf_sm_mismatch._entry, section ".printk_index", align 4
@bfa_iocpf_sm_fail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.21, ptr @.str, i32 1073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bfa_iocpf_sm_fail\00", [46 x i8] zeroinitializer }, align 32
@bfa_iocpf_sm_fail._entry_ptr = internal global ptr @bfa_iocpf_sm_fail._entry, section ".printk_index", align 4
@bfa_ioc_sm_disabling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.22, ptr @.str, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bfa_ioc_sm_disabling\00", [43 x i8] zeroinitializer }, align 32
@bfa_ioc_sm_disabling._entry_ptr = internal global ptr @bfa_ioc_sm_disabling._entry, section ".printk_index", align 4
@bfa_ioc_sm_disabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.23, ptr @.str, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bfa_ioc_sm_disabled\00", [44 x i8] zeroinitializer }, align 32
@bfa_ioc_sm_disabled._entry_ptr = internal global ptr @bfa_ioc_sm_disabled._entry, section ".printk_index", align 4
@bfa_ioc_sm_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.24, ptr @.str, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bfa_ioc_sm_op\00", [18 x i8] zeroinitializer }, align 32
@bfa_ioc_sm_op._entry_ptr = internal global ptr @bfa_ioc_sm_op._entry, section ".printk_index", align 4
@bfa_ioc_sm_fail_retry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.25, ptr @.str, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bfa_ioc_sm_fail_retry\00", [42 x i8] zeroinitializer }, align 32
@bfa_ioc_sm_fail_retry._entry_ptr = internal global ptr @bfa_ioc_sm_fail_retry._entry, section ".printk_index", align 4
@ioc_sm_table = internal constant { [10 x %struct.bfa_sm_table], [40 x i8] } { [10 x %struct.bfa_sm_table] [%struct.bfa_sm_table { ptr @bfa_ioc_sm_uninit, i32 1, ptr null }, %struct.bfa_sm_table { ptr @bfa_ioc_sm_reset, i32 2, ptr null }, %struct.bfa_sm_table { ptr @bfa_ioc_sm_enabling, i32 12, ptr null }, %struct.bfa_sm_table { ptr @bfa_ioc_sm_getattr, i32 5, ptr null }, %struct.bfa_sm_table { ptr @bfa_ioc_sm_op, i32 6, ptr null }, %struct.bfa_sm_table { ptr @bfa_ioc_sm_fail_retry, i32 7, ptr null }, %struct.bfa_sm_table { ptr @bfa_ioc_sm_fail, i32 8, ptr null }, %struct.bfa_sm_table { ptr @bfa_ioc_sm_disabling, i32 9, ptr null }, %struct.bfa_sm_table { ptr @bfa_ioc_sm_disabled, i32 10, ptr null }, %struct.bfa_sm_table { ptr @bfa_ioc_sm_hwfail, i32 13, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"QLogic\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%u\00", [26 x i8] zeroinitializer }, align 32
@bfa_ioc_recover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str, i32 2937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\012Heart Beat of IOC has failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bfa_ioc_recover\00", [16 x i8] zeroinitializer }, align 32
@bfa_ioc_recover._entry_ptr = internal global ptr @bfa_ioc_recover._entry, section ".printk_index", align 4
@switch.table.bfa_nw_ioc_get_attr = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 4, i32 3, i32 7, i32 8, i32 3, i32 3, i32 11], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 16, i64 20, i64 34]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 8, i64 129, i64 130, i64 131, i64 132]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 10, i64 12]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 12]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 3076]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 32, i64 804, i64 807, i64 902, i64 1007, i64 1741, i64 1867]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 8, i64 129, i64 131, i64 132, i64 133, i64 255]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 5, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.42 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 6, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 10]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 10, i64 12]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 11]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 6]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 11]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 5, i64 8, i64 11]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 7, i64 10, i64 12]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 7, i64 9]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 7, i64 11]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 7, i64 10, i64 12]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 10, i64 12]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 10, i64 12]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 5, i64 8, i64 10, i64 12]
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"bfa_nw_auto_recover\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 45, i32 13 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 2564, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"iocpf_sm_table\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 186, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 221, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 250, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 298, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 341, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 525, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 553, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 580, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 633, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 751, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 800, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 827, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1054, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 713, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 896, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 864, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 970, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 996, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 924, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 673, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1073, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 417, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 446, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 383, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 493, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [13 x i8] c"ioc_sm_table\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 117, i32 28 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 2842, i32 24 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 2855, i32 46 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [46 x i8] c"../drivers/net/ethernet/brocade/bna/bfa_ioc.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 2937, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [33 x i8] c"switch.table.bfa_nw_ioc_get_attr\00", align 1
@llvm.compiler.used = appending global [84 x ptr] [ptr @bfa_ioc_recover._entry, ptr @bfa_ioc_recover._entry_ptr, ptr @bfa_ioc_sm_disabled._entry, ptr @bfa_ioc_sm_disabled._entry_ptr, ptr @bfa_ioc_sm_disabling._entry, ptr @bfa_ioc_sm_disabling._entry_ptr, ptr @bfa_ioc_sm_enabling._entry, ptr @bfa_ioc_sm_enabling._entry_ptr, ptr @bfa_ioc_sm_fail._entry, ptr @bfa_ioc_sm_fail._entry_ptr, ptr @bfa_ioc_sm_fail_retry._entry, ptr @bfa_ioc_sm_fail_retry._entry_ptr, ptr @bfa_ioc_sm_getattr._entry, ptr @bfa_ioc_sm_getattr._entry_ptr, ptr @bfa_ioc_sm_hwfail._entry, ptr @bfa_ioc_sm_hwfail._entry_ptr, ptr @bfa_ioc_sm_op._entry, ptr @bfa_ioc_sm_op._entry_ptr, ptr @bfa_ioc_sm_reset._entry, ptr @bfa_ioc_sm_reset._entry_ptr, ptr @bfa_ioc_sm_uninit._entry, ptr @bfa_ioc_sm_uninit._entry_ptr, ptr @bfa_iocpf_sm_disabled._entry, ptr @bfa_iocpf_sm_disabled._entry_ptr, ptr @bfa_iocpf_sm_disabling._entry, ptr @bfa_iocpf_sm_disabling._entry_ptr, ptr @bfa_iocpf_sm_disabling_sync._entry, ptr @bfa_iocpf_sm_disabling_sync._entry_ptr, ptr @bfa_iocpf_sm_enabling._entry, ptr @bfa_iocpf_sm_enabling._entry_ptr, ptr @bfa_iocpf_sm_fail._entry, ptr @bfa_iocpf_sm_fail._entry_ptr, ptr @bfa_iocpf_sm_fail_sync._entry, ptr @bfa_iocpf_sm_fail_sync._entry_ptr, ptr @bfa_iocpf_sm_fwcheck._entry, ptr @bfa_iocpf_sm_fwcheck._entry_ptr, ptr @bfa_iocpf_sm_hwinit._entry, ptr @bfa_iocpf_sm_hwinit._entry_ptr, ptr @bfa_iocpf_sm_initfail._entry, ptr @bfa_iocpf_sm_initfail._entry_ptr, ptr @bfa_iocpf_sm_initfail_sync._entry, ptr @bfa_iocpf_sm_initfail_sync._entry_ptr, ptr @bfa_iocpf_sm_mismatch._entry, ptr @bfa_iocpf_sm_mismatch._entry_ptr, ptr @bfa_iocpf_sm_ready._entry, ptr @bfa_iocpf_sm_ready._entry_ptr, ptr @bfa_iocpf_sm_reset._entry, ptr @bfa_iocpf_sm_reset._entry_ptr, ptr @bfa_iocpf_sm_semwait._entry, ptr @bfa_iocpf_sm_semwait._entry_ptr, ptr @bfa_nw_auto_recover, ptr @.str, ptr @iocpf_sm_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @ioc_sm_table, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @switch.table.bfa_nw_ioc_get_attr], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_nw_auto_recover to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iocpf_sm_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_ioc_sm_uninit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_ioc_sm_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_ioc_sm_enabling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_ioc_sm_getattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_ioc_sm_fail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_ioc_sm_hwfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocpf_sm_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocpf_sm_fwcheck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocpf_sm_hwinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocpf_sm_enabling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocpf_sm_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocpf_sm_fail_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocpf_sm_semwait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocpf_sm_disabling_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocpf_sm_disabling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocpf_sm_initfail_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocpf_sm_initfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocpf_sm_disabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocpf_sm_mismatch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_iocpf_sm_fail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_ioc_sm_disabling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_ioc_sm_disabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_ioc_sm_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_ioc_sm_fail_retry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioc_sm_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfa_ioc_recover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bfa_nw_ioc_get_attr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bfa_nw_ioc_sem_get(ptr noundef %sem_reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sem_reg) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !124
  %1 = and i32 %0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not14 = icmp eq i32 %1, 0
  br i1 %tobool.not14, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %cnt.016 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %inc = add nuw nsw i32 %cnt.016, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 429496) #15
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sem_reg) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !125
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %cnt.016)
  %cmp = icmp ult i32 %cnt.016, 2999
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %tobool.not.lcssa = phi i1 [ true, %entry.cleanup_crit_edge ], [ %tobool.not, %while.body.cleanup_crit_edge ]
  ret i1 %tobool.not.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_ioc_sem_release(ptr noundef %sem_reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sem_reg) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !127
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sem_reg, i32 16777216) #15, !srcloc !128
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_ioc_hw_sem_release(ptr nocapture noundef readonly %ioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @arm_heavy_mb() #15
  %ioc_sem_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 9
  %0 = ptrtoint ptr %ioc_sem_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_sem_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #15, !srcloc !128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_ioc_fwver_get(ptr nocapture noundef readonly %ioc, ptr nocapture noundef writeonly %fwhdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %smem_pg0.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 24
  %0 = ptrtoint ptr %smem_pg0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smem_pg0.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !130
  tail call void @arm_heavy_mb() #15
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %host_page_num_fn = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 13
  %3 = ptrtoint ptr %host_page_num_fn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host_page_num_fn, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #15, !srcloc !128
  %smem_page_start = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 23
  %5 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smem_page_start, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %8 = ptrtoint ptr %fwhdr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fwhdr, align 4
  %9 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smem_page_start, align 4
  %add.ptr.1 = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.1 = getelementptr i32, ptr %fwhdr, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx.1, align 4
  %13 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smem_page_start, align 4
  %add.ptr.2 = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.2 = getelementptr i32, ptr %fwhdr, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx.2, align 4
  %17 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smem_page_start, align 4
  %add.ptr.3 = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.3 = getelementptr i32, ptr %fwhdr, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.3, align 4
  %21 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %smem_page_start, align 4
  %add.ptr.4 = getelementptr i8, ptr %22, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.4 = getelementptr i32, ptr %fwhdr, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.4, align 4
  %25 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smem_page_start, align 4
  %add.ptr.5 = getelementptr i8, ptr %26, i32 20
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.5 = getelementptr i32, ptr %fwhdr, i32 5
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.5, align 4
  %29 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %smem_page_start, align 4
  %add.ptr.6 = getelementptr i8, ptr %30, i32 24
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.6 = getelementptr i32, ptr %fwhdr, i32 6
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx.6, align 4
  %33 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %smem_page_start, align 4
  %add.ptr.7 = getelementptr i8, ptr %34, i32 28
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.7 = getelementptr i32, ptr %fwhdr, i32 7
  %36 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx.7, align 4
  %37 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %smem_page_start, align 4
  %add.ptr.8 = getelementptr i8, ptr %38, i32 32
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.8) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.8 = getelementptr i32, ptr %fwhdr, i32 8
  %40 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx.8, align 4
  %41 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %smem_page_start, align 4
  %add.ptr.9 = getelementptr i8, ptr %42, i32 36
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.9) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.9 = getelementptr i32, ptr %fwhdr, i32 9
  %44 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx.9, align 4
  %45 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %smem_page_start, align 4
  %add.ptr.10 = getelementptr i8, ptr %46, i32 40
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.10) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.10 = getelementptr i32, ptr %fwhdr, i32 10
  %48 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx.10, align 4
  %49 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %smem_page_start, align 4
  %add.ptr.11 = getelementptr i8, ptr %50, i32 44
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.11) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.11 = getelementptr i32, ptr %fwhdr, i32 11
  %52 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx.11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bfa_nw_ioc_fwver_cmp(ptr nocapture noundef readonly %ioc, ptr nocapture noundef readonly %fwhdr) local_unnamed_addr #0 align 64 {
entry:
  %fwimg.i = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_gen = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 25
  %0 = ptrtoint ptr %asic_gen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_gen, align 8
  %call = tail call ptr @bfa_cb_image_get_chunk(i32 noundef %1, i32 noundef 0) #15
  %call1 = tail call fastcc i32 @bfa_ioc_fw_ver_patch_cmp(ptr noundef %call, ptr noundef %fwhdr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %switch = icmp ult i32 %call1, 2
  br i1 %switch, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %fwimg.i) #15
  %2 = call ptr @memset(ptr %fwimg.i, i32 255, i32 256)
  %call.i = call fastcc i32 @bfa_nw_ioc_flash_img_get_chnk(ptr noundef %ioc, i32 noundef 0, ptr noundef nonnull %fwimg.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end.bfa_ioc_flash_fwver_cmp.exit.thread_crit_edge

if.end.bfa_ioc_flash_fwver_cmp.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_flash_fwver_cmp.exit.thread

if.end.i:                                         ; preds = %if.end
  %major.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwimg.i, i32 0, i32 8, i32 3
  %3 = ptrtoint ptr %major.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %major.i.i, align 1
  %5 = add i8 %4, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %5)
  %switch.selectcmp.i.i = icmp ult i8 %5, -2
  br i1 %switch.selectcmp.i.i, label %bfa_ioc_flash_fwver_cmp.exit, label %if.end.i.bfa_ioc_flash_fwver_cmp.exit.thread_crit_edge

if.end.i.bfa_ioc_flash_fwver_cmp.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_flash_fwver_cmp.exit.thread

bfa_ioc_flash_fwver_cmp.exit.thread:              ; preds = %if.end.i.bfa_ioc_flash_fwver_cmp.exit.thread_crit_edge, %if.end.bfa_ioc_flash_fwver_cmp.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fwimg.i) #15
  br label %if.else8

bfa_ioc_flash_fwver_cmp.exit:                     ; preds = %if.end.i
  %call4.i = call fastcc i32 @bfa_ioc_fw_ver_patch_cmp(ptr noundef %fwhdr, ptr noundef nonnull %fwimg.i) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fwimg.i) #15
  %6 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4.i, label %bfa_ioc_flash_fwver_cmp.exit.if.else8_crit_edge [
    i32 3, label %bfa_ioc_flash_fwver_cmp.exit.cleanup_crit_edge
    i32 2, label %if.then7
  ]

bfa_ioc_flash_fwver_cmp.exit.cleanup_crit_edge:   ; preds = %bfa_ioc_flash_fwver_cmp.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

bfa_ioc_flash_fwver_cmp.exit.if.else8_crit_edge:  ; preds = %bfa_ioc_flash_fwver_cmp.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else8

if.then7:                                         ; preds = %bfa_ioc_flash_fwver_cmp.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else8:                                         ; preds = %bfa_ioc_flash_fwver_cmp.exit.if.else8_crit_edge, %bfa_ioc_flash_fwver_cmp.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp9 = icmp eq i32 %call1, 2
  br label %cleanup

cleanup:                                          ; preds = %if.else8, %if.then7, %bfa_ioc_flash_fwver_cmp.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then7 ], [ %cmp9, %if.else8 ], [ false, %entry.cleanup_crit_edge ], [ false, %bfa_ioc_flash_fwver_cmp.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfa_cb_image_get_chunk(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @bfa_ioc_fw_ver_patch_cmp(ptr nocapture noundef readonly %base_fwhdr, ptr nocapture noundef readonly %fwhdr_to_cmp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base_fwhdr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %base_fwhdr, align 1
  %2 = ptrtoint ptr %fwhdr_to_cmp to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %fwhdr_to_cmp, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp eq i32 %1, %3
  br i1 %cmp.not.i, label %if.end.i, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end.i:                                         ; preds = %entry
  %fwver.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %base_fwhdr, i32 0, i32 8
  %major.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %base_fwhdr, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %major.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %major.i, align 1
  %fwver2.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr_to_cmp, i32 0, i32 8
  %major3.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr_to_cmp, i32 0, i32 8, i32 3
  %6 = ptrtoint ptr %major3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %major3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp5.not.i = icmp eq i8 %5, %7
  br i1 %cmp5.not.i, label %if.end8.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end8.i:                                        ; preds = %if.end.i
  %minor.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %base_fwhdr, i32 0, i32 8, i32 2
  %8 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %minor.i, align 1
  %minor12.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr_to_cmp, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %minor12.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %minor12.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp14.not.i = icmp eq i8 %9, %11
  br i1 %cmp14.not.i, label %if.end17.i, label %if.end8.i.return_crit_edge

if.end8.i.return_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end17.i:                                       ; preds = %if.end8.i
  %maint.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %base_fwhdr, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %maint.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %maint.i, align 1
  %maint21.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr_to_cmp, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %maint21.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %maint21.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp23.not.i = icmp eq i8 %13, %15
  br i1 %cmp23.not.i, label %if.end26.i, label %if.end17.i.return_crit_edge

if.end17.i.return_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end26.i:                                       ; preds = %if.end17.i
  %16 = ptrtoint ptr %fwver.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fwver.i, align 1
  %18 = ptrtoint ptr %fwver2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fwver2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp32.i = icmp eq i8 %17, %19
  br i1 %cmp32.i, label %land.lhs.true.i, label %if.end26.i.if.end_crit_edge

if.end26.i.if.end_crit_edge:                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end26.i
  %phase.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %base_fwhdr, i32 0, i32 8, i32 6
  %20 = ptrtoint ptr %phase.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %phase.i, align 1
  %phase37.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr_to_cmp, i32 0, i32 8, i32 6
  %22 = ptrtoint ptr %phase37.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %phase37.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp39.i = icmp eq i8 %21, %23
  br i1 %cmp39.i, label %land.lhs.true41.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true41.i:                                ; preds = %land.lhs.true.i
  %build.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %base_fwhdr, i32 0, i32 8, i32 5
  %24 = ptrtoint ptr %build.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %build.i, align 1
  %build45.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr_to_cmp, i32 0, i32 8, i32 5
  %26 = ptrtoint ptr %build45.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %build45.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp47.i = icmp eq i8 %25, %27
  br i1 %cmp47.i, label %if.then49.i, label %land.lhs.true41.i.if.end_crit_edge

land.lhs.true41.i.if.end_crit_edge:               ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then49.i:                                      ; preds = %land.lhs.true41.i
  %arrayidx.i.i = getelementptr %struct.bfi_ioc_image_hdr, ptr %base_fwhdr, i32 0, i32 9, i32 0
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %arrayidx.i.i, align 1
  %arrayidx2.i.i = getelementptr %struct.bfi_ioc_image_hdr, ptr %fwhdr_to_cmp, i32 0, i32 9, i32 0
  %30 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp3.not.i.i = icmp eq i32 %29, %31
  br i1 %cmp3.not.i.i, label %for.cond.i.i, label %if.then49.i.return_crit_edge

if.then49.i.return_crit_edge:                     ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

for.cond.i.i:                                     ; preds = %if.then49.i
  %arrayidx.1.i.i = getelementptr %struct.bfi_ioc_image_hdr, ptr %base_fwhdr, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %arrayidx.1.i.i, align 1
  %arrayidx2.1.i.i = getelementptr %struct.bfi_ioc_image_hdr, ptr %fwhdr_to_cmp, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %arrayidx2.1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp3.not.1.i.i = icmp eq i32 %33, %35
  br i1 %cmp3.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.return_crit_edge

for.cond.i.i.return_crit_edge:                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx.2.i.i = getelementptr %struct.bfi_ioc_image_hdr, ptr %base_fwhdr, i32 0, i32 9, i32 2
  %36 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %arrayidx.2.i.i, align 1
  %arrayidx2.2.i.i = getelementptr %struct.bfi_ioc_image_hdr, ptr %fwhdr_to_cmp, i32 0, i32 9, i32 2
  %38 = ptrtoint ptr %arrayidx2.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %arrayidx2.2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp3.not.2.i.i = icmp eq i32 %37, %39
  br i1 %cmp3.not.2.i.i, label %bfa_ioc_fw_ver_compatible.exit, label %for.cond.1.i.i.return_crit_edge

for.cond.1.i.i.return_crit_edge:                  ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

bfa_ioc_fw_ver_compatible.exit:                   ; preds = %for.cond.1.i.i
  %arrayidx.3.i.i = getelementptr %struct.bfi_ioc_image_hdr, ptr %base_fwhdr, i32 0, i32 9, i32 3
  %40 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %arrayidx.3.i.i, align 1
  %arrayidx2.3.i.i = getelementptr %struct.bfi_ioc_image_hdr, ptr %fwhdr_to_cmp, i32 0, i32 9, i32 3
  %42 = ptrtoint ptr %arrayidx2.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %arrayidx2.3.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp3.not.3.i.i = icmp eq i32 %41, %43
  br i1 %cmp3.not.3.i.i, label %bfa_ioc_fw_ver_compatible.exit.if.end_crit_edge, label %bfa_ioc_fw_ver_compatible.exit.return_crit_edge

bfa_ioc_fw_ver_compatible.exit.return_crit_edge:  ; preds = %bfa_ioc_fw_ver_compatible.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

bfa_ioc_fw_ver_compatible.exit.if.end_crit_edge:  ; preds = %bfa_ioc_fw_ver_compatible.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %bfa_ioc_fw_ver_compatible.exit.if.end_crit_edge, %land.lhs.true41.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.end26.i.if.end_crit_edge
  %44 = ptrtoint ptr %fwver2.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fwver2.i, align 1
  %46 = ptrtoint ptr %fwver.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %fwver.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp = icmp ugt i8 %45, %47
  br i1 %cmp, label %if.end.return_crit_edge, label %if.else

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp12 = icmp ult i8 %45, %47
  br i1 %cmp12, label %if.else.return_crit_edge, label %if.end16

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end16:                                         ; preds = %if.else
  %phase.i83 = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %base_fwhdr, i32 0, i32 8, i32 6
  %48 = ptrtoint ptr %phase.i83 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %phase.i83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp.i = icmp eq i8 %49, 0
  br i1 %cmp.i, label %land.lhs.true.i85, label %if.end16.if.then18_crit_edge

if.end16.if.then18_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18

land.lhs.true.i85:                                ; preds = %if.end16
  %build.i84 = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %base_fwhdr, i32 0, i32 8, i32 5
  %50 = ptrtoint ptr %build.i84 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %build.i84, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp4.i = icmp eq i8 %51, 0
  br i1 %cmp4.i, label %if.else22, label %land.lhs.true.i85.if.then18_crit_edge

land.lhs.true.i85.if.then18_crit_edge:            ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18

if.then18:                                        ; preds = %land.lhs.true.i85.if.then18_crit_edge, %if.end16.if.then18_crit_edge
  %phase.i88 = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr_to_cmp, i32 0, i32 8, i32 6
  %52 = ptrtoint ptr %phase.i88 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %phase.i88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp.i89 = icmp eq i8 %53, 0
  br i1 %cmp.i89, label %land.lhs.true.i92, label %if.then18._crit_edge

if.then18._crit_edge:                             ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %56

land.lhs.true.i92:                                ; preds = %if.then18
  %build.i90 = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr_to_cmp, i32 0, i32 8, i32 5
  %54 = ptrtoint ptr %build.i90 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %build.i90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp4.i91 = icmp eq i8 %55, 0
  br i1 %cmp4.i91, label %land.lhs.true.i92.return_crit_edge, label %land.lhs.true.i92._crit_edge

land.lhs.true.i92._crit_edge:                     ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #17
  br label %56

land.lhs.true.i92.return_crit_edge:               ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

56:                                               ; preds = %land.lhs.true.i92._crit_edge, %if.then18._crit_edge
  br label %return

if.else22:                                        ; preds = %land.lhs.true.i85
  %phase.i96 = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr_to_cmp, i32 0, i32 8, i32 6
  %57 = ptrtoint ptr %phase.i96 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %phase.i96, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp.i97 = icmp eq i8 %58, 0
  br i1 %cmp.i97, label %land.lhs.true.i100, label %if.else22.return_crit_edge

if.else22.return_crit_edge:                       ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true.i100:                               ; preds = %if.else22
  %build.i98 = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr_to_cmp, i32 0, i32 8, i32 5
  %59 = ptrtoint ptr %build.i98 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %build.i98, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp4.i99.not = icmp eq i8 %60, 0
  br i1 %cmp4.i99.not, label %if.end46, label %land.lhs.true.i100.return_crit_edge

land.lhs.true.i100.return_crit_edge:              ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end46:                                         ; preds = %land.lhs.true.i100
  %61 = ptrtoint ptr %build.i98 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %build.i98, align 1
  %63 = ptrtoint ptr %build.i84 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %build.i84, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %64)
  %cmp52 = icmp ugt i8 %62, %64
  br i1 %cmp52, label %if.end46.return_crit_edge, label %if.else55

if.end46.return_crit_edge:                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.else55:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %64)
  %cmp62 = icmp ult i8 %62, %64
  %.82 = select i1 %cmp62, i32 1, i32 2
  br label %return

return:                                           ; preds = %if.else55, %if.end46.return_crit_edge, %land.lhs.true.i100.return_crit_edge, %if.else22.return_crit_edge, %56, %land.lhs.true.i92.return_crit_edge, %if.else.return_crit_edge, %if.end.return_crit_edge, %bfa_ioc_fw_ver_compatible.exit.return_crit_edge, %for.cond.1.i.i.return_crit_edge, %for.cond.i.i.return_crit_edge, %if.then49.i.return_crit_edge, %if.end17.i.return_crit_edge, %if.end8.i.return_crit_edge, %if.end.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %bfa_ioc_fw_ver_compatible.exit.return_crit_edge ], [ 3, %if.end.return_crit_edge ], [ 1, %if.else.return_crit_edge ], [ 3, %if.end46.return_crit_edge ], [ %.82, %if.else55 ], [ 2, %56 ], [ 1, %land.lhs.true.i92.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %if.end.i.return_crit_edge ], [ 0, %if.end8.i.return_crit_edge ], [ 0, %if.end17.i.return_crit_edge ], [ 0, %if.then49.i.return_crit_edge ], [ 0, %for.cond.i.i.return_crit_edge ], [ 0, %for.cond.1.i.i.return_crit_edge ], [ 3, %if.else22.return_crit_edge ], [ 3, %land.lhs.true.i100.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_ioc_timeout(ptr noundef %ioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc, align 8
  tail call void %1(ptr noundef %ioc, i32 noundef 11) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_ioc_hb_check(ptr noundef %ioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %heartbeat = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 14
  %0 = ptrtoint ptr %heartbeat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %heartbeat, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #15, !srcloc !123
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !132
  %hb_count2 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 7
  %4 = ptrtoint ptr %hb_count2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hb_count2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp = icmp eq i32 %5, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #18
  %ioc_hbfails.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 14, i32 3
  %6 = ptrtoint ptr %ioc_hbfails.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ioc_hbfails.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %ioc_hbfails.i, align 4
  %8 = ptrtoint ptr %hb_count2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hb_count2, align 8
  %hb_count2.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 14, i32 6
  %10 = ptrtoint ptr %hb_count2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %hb_count2.i, align 8
  %11 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioc, align 8
  tail call void %12(ptr noundef %ioc, i32 noundef 9) #15
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %hb_count2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %3, ptr %hb_count2, align 8
  tail call fastcc void @bfa_ioc_mbox_poll(ptr noundef %ioc)
  %hb_timer = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 50
  %call5 = tail call i32 @mod_timer(ptr noundef %hb_timer, i32 noundef %add) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_ioc_mbox_poll(ptr noundef %ioc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mod = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 22
  %0 = ptrtoint ptr %mbox_mod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mbox_mod, align 4
  %cmp.i.not = icmp eq ptr %1, %mbox_mod
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ioc_regs = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13
  %2 = ptrtoint ptr %ioc_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc_regs, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %mbox_mod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mbox_mod, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_del.exit_crit_edge

if.end5.list_del.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end5.list_del.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %msg = getelementptr inbounds %struct.bfa_mbox_cmd, ptr %6, i32 0, i32 3
  %hfn_mbox.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg, align 4
  %17 = ptrtoint ptr %hfn_mbox.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hfn_mbox.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %arrayidx.i.1 = getelementptr %struct.bfa_mbox_cmd, ptr %6, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.1, align 4
  %21 = ptrtoint ptr %hfn_mbox.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hfn_mbox.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %20) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %arrayidx.i.2 = getelementptr %struct.bfa_mbox_cmd, ptr %6, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.2, align 4
  %25 = ptrtoint ptr %hfn_mbox.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hfn_mbox.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %24) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %arrayidx.i.3 = getelementptr %struct.bfa_mbox_cmd, ptr %6, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.3, align 4
  %29 = ptrtoint ptr %hfn_mbox.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hfn_mbox.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %28) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %arrayidx.i.4 = getelementptr %struct.bfa_mbox_cmd, ptr %6, i32 0, i32 3, i32 4
  %31 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.4, align 4
  %33 = ptrtoint ptr %hfn_mbox.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hfn_mbox.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 %32) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %arrayidx.i.5 = getelementptr %struct.bfa_mbox_cmd, ptr %6, i32 0, i32 3, i32 5
  %35 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.5, align 4
  %37 = ptrtoint ptr %hfn_mbox.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hfn_mbox.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %38, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 %36) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %arrayidx.i.6 = getelementptr %struct.bfa_mbox_cmd, ptr %6, i32 0, i32 3, i32 6
  %39 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.6, align 4
  %41 = ptrtoint ptr %hfn_mbox.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hfn_mbox.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %42, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 %40) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %arrayidx.i.7 = getelementptr %struct.bfa_mbox_cmd, ptr %6, i32 0, i32 3, i32 7
  %43 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.7, align 4
  %45 = ptrtoint ptr %hfn_mbox.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hfn_mbox.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %46, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7, i32 %44) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !135
  tail call void @arm_heavy_mb() #15
  %47 = ptrtoint ptr %ioc_regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioc_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 16777216) #15, !srcloc !128
  %49 = ptrtoint ptr %ioc_regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ioc_regs, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  %cbfn8 = getelementptr inbounds %struct.bfa_mbox_cmd, ptr %6, i32 0, i32 1
  %52 = ptrtoint ptr %cbfn8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cbfn8, align 4
  %tobool9.not = icmp eq ptr %53, null
  br i1 %tobool9.not, label %list_del.exit.cleanup_crit_edge, label %if.then10

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  %cbarg12 = getelementptr inbounds %struct.bfa_mbox_cmd, ptr %6, i32 0, i32 2
  %54 = ptrtoint ptr %cbarg12 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cbarg12, align 4
  %56 = ptrtoint ptr %cbfn8 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %cbfn8, align 4
  tail call void %53(ptr noundef %55) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %list_del.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_nw_ioc_debug_fwtrc(ptr nocapture noundef readonly %ioc, ptr nocapture noundef writeonly %trcdata, ptr nocapture noundef %trclen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %port_id = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 18
  %0 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_id, align 1
  %conv = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv, 4128
  %add = add nuw nsw i32 %mul, 19200
  %2 = ptrtoint ptr %trclen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trclen, align 4
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 4128)
  %smem_pg0.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 24
  %5 = ptrtoint ptr %smem_pg0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %smem_pg0.i, align 4
  %ioc_init_sem_reg.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 11
  %7 = ptrtoint ptr %ioc_init_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_init_sem_reg.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !124
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not14.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not14.i.i, label %entry.do.body.i_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %cnt.016.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %entry.while.body.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %cnt.016.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 429496) #15
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !125
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  %tobool.not.not.i.i = xor i1 %tobool.not.i.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %cnt.016.i.i)
  %cmp.i.i = icmp ult i32 %cnt.016.i.i, 2999
  %or.cond.i.i = select i1 %tobool.not.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %bfa_nw_ioc_sem_get.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

bfa_nw_ioc_sem_get.exit.i:                        ; preds = %while.body.i.i
  br i1 %tobool.not.i.i, label %bfa_nw_ioc_sem_get.exit.i.do.body.i_crit_edge, label %bfa_nw_ioc_sem_get.exit.i.bfa_nw_ioc_smem_read.exit_crit_edge

bfa_nw_ioc_sem_get.exit.i.bfa_nw_ioc_smem_read.exit_crit_edge: ; preds = %bfa_nw_ioc_sem_get.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_nw_ioc_smem_read.exit

bfa_nw_ioc_sem_get.exit.i.do.body.i_crit_edge:    ; preds = %bfa_nw_ioc_sem_get.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.body.i:                                        ; preds = %bfa_nw_ioc_sem_get.exit.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %shr.i = lshr i32 %add, 15
  %add.i = add i32 %shr.i, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !137
  tail call void @arm_heavy_mb() #15
  %14 = tail call i32 @llvm.bswap.i32(i32 %add.i) #15
  %host_page_num_fn.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 13
  %15 = ptrtoint ptr %host_page_num_fn.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host_page_num_fn.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #15, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp60.not.i = icmp ult i32 %4, 4
  br i1 %cmp60.not.i, label %do.body.i.do.body17.i_crit_edge, label %for.body.lr.ph.i

do.body.i.do.body17.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body17.i

for.body.lr.ph.i:                                 ; preds = %do.body.i
  %div58.i = lshr i32 %4, 2
  %and.i = and i32 %add, 32736
  %smem_page_start.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pgnum.063.i = phi i32 [ %add.i, %for.body.lr.ph.i ], [ %pgnum.1.i, %for.inc.i.for.body.i_crit_edge ]
  %loff.062.i = phi i32 [ %and.i, %for.body.lr.ph.i ], [ %and7.i, %for.inc.i.for.body.i_crit_edge ]
  %i.061.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc16.i, %for.inc.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %smem_page_start.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smem_page_start.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %loff.062.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !138
  %arrayidx.i = getelementptr i32, ptr %trcdata, i32 %i.061.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %add6.i = add nuw nsw i32 %loff.062.i, 4
  %and7.i = and i32 %add6.i, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %cmp8.i = icmp eq i32 %and7.i, 0
  br i1 %cmp8.i, label %if.then9.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %inc.i = add i32 %pgnum.063.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !139
  tail call void @arm_heavy_mb() #15
  %21 = tail call i32 @llvm.bswap.i32(i32 %inc.i) #15
  %22 = ptrtoint ptr %host_page_num_fn.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host_page_num_fn.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #15, !srcloc !128
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %for.body.i.for.inc.i_crit_edge
  %pgnum.1.i = phi i32 [ %inc.i, %if.then9.i ], [ %pgnum.063.i, %for.body.i.for.inc.i_crit_edge ]
  %inc16.i = add nuw nsw i32 %i.061.i, 1
  %exitcond.not.i = icmp eq i32 %inc16.i, %div58.i
  br i1 %exitcond.not.i, label %for.inc.i.do.body17.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.do.body17.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body17.i

do.body17.i:                                      ; preds = %for.inc.i.do.body17.i_crit_edge, %do.body.i.do.body17.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !140
  tail call void @arm_heavy_mb() #15
  %24 = ptrtoint ptr %smem_pg0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %smem_pg0.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #15
  %27 = ptrtoint ptr %host_page_num_fn.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host_page_num_fn.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #15, !srcloc !128
  %29 = ptrtoint ptr %ioc_init_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioc_init_sem_reg.i, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !142
  tail call void @arm_heavy_mb() #15
  %32 = ptrtoint ptr %ioc_init_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioc_init_sem_reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 16777216) #15, !srcloc !128
  br label %bfa_nw_ioc_smem_read.exit

bfa_nw_ioc_smem_read.exit:                        ; preds = %do.body17.i, %bfa_nw_ioc_sem_get.exit.i.bfa_nw_ioc_smem_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body17.i ], [ 1, %bfa_nw_ioc_sem_get.exit.i.bfa_nw_ioc_smem_read.exit_crit_edge ]
  %34 = ptrtoint ptr %trclen to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %4, ptr %trclen, align 4
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bfa_nw_ioc_debug_fwsave(ptr nocapture noundef readonly %ioc, ptr nocapture noundef writeonly %trcdata, ptr nocapture noundef %trclen) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg_fwsave_len = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 10
  %0 = ptrtoint ptr %dbg_fwsave_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dbg_fwsave_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %trclen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trclen, align 4
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 %1)
  %dbg_fwsave = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 9
  %5 = ptrtoint ptr %dbg_fwsave to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dbg_fwsave, align 4
  %7 = call ptr @memcpy(ptr %trcdata, ptr %6, i32 %4)
  %8 = ptrtoint ptr %trclen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %4, ptr %trclen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 78, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_nw_ioc_auto_recover(i1 noundef zeroext %auto_recover) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %auto_recover to i8
  store i8 %frombool, ptr @bfa_nw_auto_recover, align 1
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_ioc_attach(ptr noundef %ioc, ptr noundef %bfa, ptr noundef %cbfn) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa1 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 1
  %0 = ptrtoint ptr %bfa1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bfa, ptr %bfa1, align 4
  %cbfn2 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 21
  %1 = ptrtoint ptr %cbfn2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cbfn, ptr %cbfn2, align 4
  %fcmode = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 15
  %2 = ptrtoint ptr %fcmode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fcmode, align 8
  %pllinit = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 16
  %3 = ptrtoint ptr %pllinit to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %pllinit, align 1
  %dbg_fwsave_once = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 11
  %4 = ptrtoint ptr %dbg_fwsave_once to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %dbg_fwsave_once, align 4
  %ioc3 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24, i32 1
  %5 = ptrtoint ptr %ioc3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ioc, ptr %ioc3, align 4
  %mbox_mod.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 22
  %6 = ptrtoint ptr %mbox_mod.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %mbox_mod.i, ptr %mbox_mod.i, align 4
  %prev.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 22, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mbox_mod.i, ptr %prev.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %mc.09.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bfa_ioc, ptr %ioc, i32 0, i32 22, i32 2, i32 %mc.09.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %bfa1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bfa1, align 4
  %cbarg.i = getelementptr %struct.bfa_ioc, ptr %ioc, i32 0, i32 22, i32 2, i32 %mc.09.i, i32 1
  %11 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %cbarg.i, align 4
  %inc.i = add nuw nsw i32 %mc.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 34
  br i1 %exitcond.not.i, label %bfa_ioc_mbox_attach.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

bfa_ioc_mbox_attach.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %notify_q = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 8
  %12 = ptrtoint ptr %notify_q to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %notify_q, ptr %notify_q, align 4
  %prev.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %notify_q, ptr %prev.i, align 4
  %14 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @bfa_ioc_sm_reset, ptr %ioc, align 8
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %15 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @bfa_iocpf_sm_reset, ptr %iocpf.i.i, align 8
  %fw_mismatch_notified.i.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24, i32 2
  %16 = ptrtoint ptr %fw_mismatch_notified.i.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %fw_mismatch_notified.i.i.i, align 4
  %17 = load i8, ptr @bfa_nw_auto_recover, align 1, !range !143
  %auto_recover.i.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24, i32 3
  %18 = ptrtoint ptr %auto_recover.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %auto_recover.i.i.i, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_sm_uninit(ptr nocapture noundef writeonly %ioc, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cond = icmp eq i32 %event, 1
  br i1 %cond, label %do.body, label %do.end3

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bfa_ioc_sm_reset, ptr %ioc, align 8
  %iocpf.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %1 = ptrtoint ptr %iocpf.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bfa_iocpf_sm_reset, ptr %iocpf.i, align 8
  %fw_mismatch_notified.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24, i32 2
  %2 = ptrtoint ptr %fw_mismatch_notified.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fw_mismatch_notified.i.i, align 4
  %3 = load i8, ptr @bfa_nw_auto_recover, align 1, !range !143
  %auto_recover.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24, i32 3
  %4 = ptrtoint ptr %auto_recover.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %auto_recover.i.i, align 1
  br label %sw.epilog

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 221, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end3, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_ioc_detach(ptr noundef %ioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc, align 8
  tail call void %1(ptr noundef %ioc, i32 noundef 4) #15
  %notify_q = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 8
  %2 = ptrtoint ptr %notify_q to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %notify_q, ptr %notify_q, align 4
  %prev.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %notify_q, ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_ioc_pci_init(ptr noundef %ioc, ptr nocapture noundef readonly %pcidev, i32 noundef %clscode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %clscode1 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 12
  %0 = ptrtoint ptr %clscode1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %clscode, ptr %clscode1, align 8
  %pcidev2 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2
  %1 = call ptr @memcpy(ptr %pcidev2, ptr %pcidev, i32 16)
  %port1_mode = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 28
  %2 = ptrtoint ptr %port1_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %port1_mode, align 4
  %port0_mode = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 27
  %3 = ptrtoint ptr %port0_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %port0_mode, align 8
  %asic_mode = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 26
  %4 = ptrtoint ptr %asic_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %asic_mode, align 4
  %device_id = getelementptr inbounds %struct.bfa_pcidev, ptr %pcidev, i32 0, i32 2
  %5 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device_id, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %6, label %do.body32 [
    i16 20, label %sw.bb
    i16 34, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %asic_gen = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 25
  %8 = ptrtoint ptr %asic_gen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %asic_gen, align 8
  %9 = ptrtoint ptr %port1_mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %port1_mode, align 4
  %10 = ptrtoint ptr %port0_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %port0_mode, align 8
  %11 = ptrtoint ptr %asic_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %asic_mode, align 4
  %port_mode_cfg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 31
  %12 = ptrtoint ptr %port_mode_cfg to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %port_mode_cfg, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %asic_gen7 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 25
  %13 = ptrtoint ptr %asic_gen7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %asic_gen7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3076, i32 %clscode)
  %cmp = icmp eq i32 %clscode, 3076
  br i1 %cmp, label %land.lhs.true, label %sw.bb6.if.else_crit_edge

sw.bb6.if.else_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb6
  %ssid = getelementptr inbounds %struct.bfa_pcidev, ptr %pcidev, i32 0, i32 3
  %14 = ptrtoint ptr %ssid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ssid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 36, i16 %15)
  %cmp10 = icmp eq i16 %15, 36
  br i1 %cmp10, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %asic_mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %asic_mode, align 4
  %fcmode = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 15
  %17 = ptrtoint ptr %fcmode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %fcmode, align 8
  %port_mode_cfg13 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 31
  %18 = ptrtoint ptr %port_mode_cfg13 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %port_mode_cfg13, align 1
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb6.if.else_crit_edge
  %19 = ptrtoint ptr %port1_mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %port1_mode, align 4
  %20 = ptrtoint ptr %port0_mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %port0_mode, align 8
  %21 = ptrtoint ptr %asic_mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %asic_mode, align 4
  %ssid19 = getelementptr inbounds %struct.bfa_pcidev, ptr %pcidev, i32 0, i32 3
  %22 = ptrtoint ptr %ssid19 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ssid19, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %23)
  %cmp21 = icmp eq i16 %23, 34
  %port_mode_cfg24 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 31
  br i1 %cmp21, label %if.then23, label %if.else27

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %port_mode_cfg24 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %port_mode_cfg24, align 1
  br label %sw.epilog

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %port_mode_cfg24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 3, ptr %port_mode_cfg24, align 1
  br label %sw.epilog

do.body32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bfa_ioc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2555, 0\0A.popsection", ""() #15, !srcloc !144
  unreachable

sw.epilog:                                        ; preds = %if.else27, %if.then23, %if.then, %sw.bb
  %.sink108 = phi i32 [ 1, %if.then ], [ 3, %if.else27 ], [ 2, %if.then23 ], [ 2, %sw.bb ]
  %.sink = phi i8 [ 1, %if.then ], [ 4, %if.else27 ], [ 2, %if.then23 ], [ 2, %sw.bb ]
  %port_mode14 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 29
  %26 = ptrtoint ptr %port_mode14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink108, ptr %port_mode14, align 8
  %ad_cap_bm15 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 30
  %27 = ptrtoint ptr %ad_cap_bm15 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink, ptr %ad_cap_bm15, align 4
  %asic_gen36 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 25
  %28 = ptrtoint ptr %asic_gen36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %asic_gen36, align 8
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %29, label %do.end53 [
    i32 2, label %if.then39
    i32 3, label %sw.epilog.if.end59_crit_edge
  ], !prof !145

sw.epilog.if.end59_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then39:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @bfa_nw_ioc_set_ct_hwif(ptr noundef %ioc) #15
  br label %if.end66

do.end53:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2564, i32 noundef 9, ptr noundef null) #15
  br label %if.end59

if.end59:                                         ; preds = %do.end53, %sw.epilog.if.end59_crit_edge
  tail call void @bfa_nw_ioc_set_ct2_hwif(ptr noundef %ioc) #15
  tail call void @bfa_nw_ioc_ct2_poweron(ptr noundef %ioc) #15
  br label %if.end66

if.end66:                                         ; preds = %if.end59, %if.then39
  %ioc_hwif = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 23
  %31 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioc_hwif, align 4
  %ioc_map_port = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %ioc_map_port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioc_map_port, align 4
  tail call void %34(ptr noundef %ioc) #15
  %35 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioc_hwif, align 4
  %ioc_reg_init = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %ioc_reg_init to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioc_reg_init, align 4
  tail call void %38(ptr noundef %ioc) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_set_ct_hwif(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_set_ct2_hwif(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_ct2_poweron(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_nw_ioc_mem_claim(ptr nocapture noundef writeonly %ioc, ptr noundef %dm_kva, i64 noundef %dm_pa) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_dma = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 19
  %0 = ptrtoint ptr %attr_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dm_kva, ptr %attr_dma, align 8
  %pa = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 19, i32 1
  %1 = ptrtoint ptr %pa to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %dm_pa, ptr %pa, align 8
  %attr = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 20
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dm_kva, ptr %attr, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bfa_nw_ioc_meminfo() local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 768
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_ioc_enable(ptr noundef %ioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_enables = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 14, i32 1
  %0 = ptrtoint ptr %ioc_enables to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ioc_enables, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %ioc_enables, align 4
  %dbg_fwsave_once = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 11
  %2 = ptrtoint ptr %dbg_fwsave_once to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %dbg_fwsave_once, align 4
  %3 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc, align 8
  tail call void %4(ptr noundef %ioc, i32 noundef 2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_ioc_disable(ptr noundef %ioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_disables = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 14, i32 2
  %0 = ptrtoint ptr %ioc_disables to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ioc_disables, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %ioc_disables, align 8
  %2 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc, align 8
  tail call void %3(ptr noundef %ioc, i32 noundef 3) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bfa_nw_ioc_debug_memclaim(ptr nocapture noundef %ioc, ptr noundef %dbg_fwsave) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg_fwsave1 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 9
  %0 = ptrtoint ptr %dbg_fwsave1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dbg_fwsave, ptr %dbg_fwsave1, align 4
  %auto_recover = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24, i32 3
  %1 = ptrtoint ptr %auto_recover to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %auto_recover, align 1, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %cond = select i1 %tobool.not, i32 0, i32 4128
  %dbg_fwsave_len = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 10
  %3 = ptrtoint ptr %dbg_fwsave_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %dbg_fwsave_len, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_nw_ioc_mbox_regisr(ptr nocapture noundef writeonly %ioc, i32 noundef %mc, ptr noundef %cbfn, ptr noundef %cbarg) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bfa_ioc, ptr %ioc, i32 0, i32 22, i32 2, i32 %mc
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cbfn, ptr %arrayidx, align 4
  %cbarg4 = getelementptr %struct.bfa_ioc, ptr %ioc, i32 0, i32 22, i32 2, i32 %mc, i32 1
  %1 = ptrtoint ptr %cbarg4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cbarg, ptr %cbarg4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef %ioc, ptr noundef %cmd, ptr noundef %cbfn, ptr noundef %cbarg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mod = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 22
  %cbfn1 = getelementptr inbounds %struct.bfa_mbox_cmd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %cbfn1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cbfn, ptr %cbfn1, align 4
  %cbarg2 = getelementptr inbounds %struct.bfa_mbox_cmd, ptr %cmd, i32 0, i32 2
  %1 = ptrtoint ptr %cbarg2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cbarg, ptr %cbarg2, align 4
  %2 = ptrtoint ptr %mbox_mod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mbox_mod, align 4
  %cmp.i.not = icmp eq ptr %3, %mbox_mod
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %prev.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 22, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cmd, ptr noundef %5, ptr noundef %mbox_mod) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cmd, ptr %prev.i, align 4
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mbox_mod, ptr %cmd, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %cmd, ptr %5, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %ioc_regs = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13
  %10 = ptrtoint ptr %ioc_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioc_regs, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  %prev.i20 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 22, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i20, align 4
  %call.i.i21 = tail call zeroext i1 @__list_add_valid(ptr noundef %cmd, ptr noundef %14, ptr noundef %mbox_mod) #15
  br i1 %call.i.i21, label %if.end.i.i23, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i23:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cmd, ptr %prev.i20, align 4
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mbox_mod, ptr %cmd, align 4
  %prev3.i.i22 = getelementptr inbounds %struct.list_head, ptr %cmd, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i22, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %cmd, ptr %14, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %msg = getelementptr inbounds %struct.bfa_mbox_cmd, ptr %cmd, i32 0, i32 3
  %hfn_mbox.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg, align 4
  %21 = ptrtoint ptr %hfn_mbox.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hfn_mbox.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %arrayidx.i.1 = getelementptr %struct.bfa_mbox_cmd, ptr %cmd, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.1, align 4
  %25 = ptrtoint ptr %hfn_mbox.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hfn_mbox.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %24) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %arrayidx.i.2 = getelementptr %struct.bfa_mbox_cmd, ptr %cmd, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.2, align 4
  %29 = ptrtoint ptr %hfn_mbox.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hfn_mbox.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %28) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %arrayidx.i.3 = getelementptr %struct.bfa_mbox_cmd, ptr %cmd, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.3, align 4
  %33 = ptrtoint ptr %hfn_mbox.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hfn_mbox.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %34, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %32) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %arrayidx.i.4 = getelementptr %struct.bfa_mbox_cmd, ptr %cmd, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.4, align 4
  %37 = ptrtoint ptr %hfn_mbox.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hfn_mbox.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %38, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 %36) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %arrayidx.i.5 = getelementptr %struct.bfa_mbox_cmd, ptr %cmd, i32 0, i32 3, i32 5
  %39 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.5, align 4
  %41 = ptrtoint ptr %hfn_mbox.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hfn_mbox.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %42, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 %40) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %arrayidx.i.6 = getelementptr %struct.bfa_mbox_cmd, ptr %cmd, i32 0, i32 3, i32 6
  %43 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.6, align 4
  %45 = ptrtoint ptr %hfn_mbox.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hfn_mbox.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %46, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 %44) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %arrayidx.i.7 = getelementptr %struct.bfa_mbox_cmd, ptr %cmd, i32 0, i32 3, i32 7
  %47 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.7, align 4
  %49 = ptrtoint ptr %hfn_mbox.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hfn_mbox.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %50, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7, i32 %48) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !135
  tail call void @arm_heavy_mb() #15
  %51 = ptrtoint ptr %ioc_regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ioc_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 16777216) #15, !srcloc !128
  %53 = ptrtoint ptr %ioc_regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ioc_regs, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.i.i23, %if.then7.cleanup_crit_edge, %if.end.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end10 ], [ true, %if.then.cleanup_crit_edge ], [ true, %if.end.i.i ], [ true, %if.then7.cleanup_crit_edge ], [ true, %if.end.i.i23 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_ioc_mbox_isr(ptr noundef %ioc) local_unnamed_addr #0 align 64 {
entry:
  %m = alloca %struct.bfi_mbmsg, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %m) #15
  %0 = getelementptr inbounds %struct.bfi_mhdr, ptr %m, i32 0, i32 1
  %lpu_mbox_cmd.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 2
  %1 = call ptr @memset(ptr %m, i32 255, i32 32)
  %2 = ptrtoint ptr %lpu_mbox_cmd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lpu_mbox_cmd.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !147
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.then:                                          ; preds = %entry
  %6 = getelementptr inbounds %struct.bfi_mbmsg, ptr %m, i32 0, i32 1, i32 6
  %7 = getelementptr inbounds %struct.bfi_mbmsg, ptr %m, i32 0, i32 1, i32 5
  %8 = getelementptr inbounds %struct.bfi_mbmsg, ptr %m, i32 0, i32 1, i32 4
  %9 = getelementptr inbounds %struct.bfi_mbmsg, ptr %m, i32 0, i32 1, i32 3
  %10 = getelementptr inbounds %struct.bfi_mbmsg, ptr %m, i32 0, i32 1, i32 2
  %11 = getelementptr inbounds %struct.bfi_mbmsg, ptr %m, i32 0, i32 1, i32 1
  %12 = getelementptr inbounds %struct.bfi_mbmsg, ptr %m, i32 0, i32 1
  %lpu_mbox.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 3
  %13 = ptrtoint ptr %lpu_mbox.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lpu_mbox.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #15, !srcloc !123
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !148
  %17 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %m, align 4
  %18 = ptrtoint ptr %lpu_mbox.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lpu_mbox.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i) #15, !srcloc !123
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !148
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %12, align 4
  %23 = ptrtoint ptr %lpu_mbox.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lpu_mbox.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %24, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i) #15, !srcloc !123
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !148
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %11, align 4
  %28 = ptrtoint ptr %lpu_mbox.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lpu_mbox.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %29, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i) #15, !srcloc !123
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !148
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %10, align 4
  %33 = ptrtoint ptr %lpu_mbox.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lpu_mbox.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %34, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i) #15, !srcloc !123
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !148
  %37 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %9, align 4
  %38 = ptrtoint ptr %lpu_mbox.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lpu_mbox.i, align 4
  %add.ptr.5.i = getelementptr i8, ptr %39, i32 20
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5.i) #15, !srcloc !123
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !148
  %42 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %8, align 4
  %43 = ptrtoint ptr %lpu_mbox.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lpu_mbox.i, align 4
  %add.ptr.6.i = getelementptr i8, ptr %44, i32 24
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6.i) #15, !srcloc !123
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !148
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %7, align 4
  %48 = ptrtoint ptr %lpu_mbox.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lpu_mbox.i, align 4
  %add.ptr.7.i = getelementptr i8, ptr %49, i32 28
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7.i) #15, !srcloc !123
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !148
  %52 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !149
  tail call void @arm_heavy_mb() #15
  %53 = ptrtoint ptr %lpu_mbox_cmd.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lpu_mbox_cmd.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 16777216) #15, !srcloc !128
  %55 = ptrtoint ptr %lpu_mbox_cmd.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lpu_mbox_cmd.i, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !150
  %58 = lshr i32 %16, 24
  %59 = trunc i32 %58 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp = icmp eq i8 %59, 1
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %stats.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 14
  %60 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %61, 1
  store i32 %inc.i, ptr %stats.i, align 8
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %0, align 1
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %63, label %do.body5.i [
    i8 -124, label %if.then2.cleanup_crit_edge
    i8 -127, label %sw.bb.i
    i8 -126, label %sw.bb3.i
    i8 -125, label %sw.bb4.i
  ]

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %port_mode.i = getelementptr inbounds %struct.bfi_ioc_ctrl_reply, ptr %m, i32 0, i32 2
  %65 = ptrtoint ptr %port_mode.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %port_mode.i, align 1
  %conv2.i = zext i8 %66 to i32
  %cap_bm.i = getelementptr inbounds %struct.bfi_ioc_ctrl_reply, ptr %m, i32 0, i32 3
  %67 = ptrtoint ptr %cap_bm.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %cap_bm.i, align 2
  %iocpf1.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %port_mode_cfg.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 31
  %69 = ptrtoint ptr %port_mode_cfg.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %66, ptr %port_mode_cfg.i.i, align 1
  %port_mode3.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 29
  %70 = ptrtoint ptr %port_mode3.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv2.i, ptr %port_mode3.i.i, align 8
  %ad_cap_bm.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 30
  %71 = ptrtoint ptr %ad_cap_bm.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %68, ptr %ad_cap_bm.i.i, align 4
  %72 = ptrtoint ptr %iocpf1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %iocpf1.i.i, align 4
  tail call void %73(ptr noundef %iocpf1.i.i, i32 noundef 5) #15
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf1.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %74 = ptrtoint ptr %iocpf1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iocpf1.i, align 4
  tail call void %75(ptr noundef %iocpf1.i, i32 noundef 6) #15
  br label %cleanup

sw.bb4.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %76 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ioc, align 8
  tail call void %77(ptr noundef %ioc, i32 noundef 6) #15
  br label %cleanup

do.body5.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bfa_ioc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2464, 0\0A.popsection", ""() #15, !srcloc !151
  unreachable

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %59)
  %cmp3 = icmp ugt i8 %59, 33
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx = getelementptr %struct.bfa_ioc, ptr %ioc, i32 0, i32 22, i32 2, i32 %58
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx, align 4
  %cmp5 = icmp eq ptr %79, null
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %cbarg = getelementptr %struct.bfa_ioc, ptr %ioc, i32 0, i32 22, i32 2, i32 %58, i32 1
  %80 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cbarg, align 4
  call void %79(ptr noundef %81, ptr noundef nonnull %m) #15
  br label %do.body

do.body:                                          ; preds = %if.end8, %entry.do.body_crit_edge
  %ioc_hwif = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 23
  %82 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ioc_hwif, align 4
  %ioc_lpu_read_stat = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %83, i32 0, i32 13
  %84 = ptrtoint ptr %ioc_lpu_read_stat to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ioc_lpu_read_stat, align 4
  %tobool.not = icmp eq ptr %85, null
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then15

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call18 = call zeroext i1 %85(ptr noundef %ioc) #15
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body.do.end_crit_edge
  call fastcc void @bfa_ioc_mbox_poll(ptr noundef %ioc)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb4.i, %sw.bb3.i, %sw.bb.i, %if.then2.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %m) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_ioc_error_isr(ptr noundef %ioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_hbfails = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 14, i32 3
  %0 = ptrtoint ptr %ioc_hbfails to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ioc_hbfails, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %ioc_hbfails, align 4
  %hb_count = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 7
  %2 = ptrtoint ptr %hb_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hb_count, align 8
  %hb_count2 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 14, i32 6
  %4 = ptrtoint ptr %hb_count2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %hb_count2, align 8
  %5 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioc, align 8
  tail call void %6(ptr noundef %ioc, i32 noundef 10) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @bfa_nw_ioc_is_disabled(ptr nocapture noundef readonly %ioc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc, align 8
  %cmp = icmp eq ptr %1, @bfa_ioc_sm_disabling
  %cmp2 = icmp eq ptr %1, @bfa_ioc_sm_disabled
  %spec.select = or i1 %cmp, %cmp2
  ret i1 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_sm_disabling(ptr noundef %ioc, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %event, label %do.end8 [
    i32 7, label %do.body
    i32 10, label %sw.bb1
    i32 12, label %do.body3
  ]

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bfa_ioc_sm_disabled, ptr %ioc, align 8
  %cbfn.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 21
  %2 = ptrtoint ptr %cbfn.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cbfn.i.i, align 4
  %disable_cbfn.i.i = getelementptr inbounds %struct.bfa_ioc_cbfn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %disable_cbfn.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable_cbfn.i.i, align 4
  %bfa.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 1
  %6 = ptrtoint ptr %bfa.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bfa.i.i, align 4
  tail call void %5(ptr noundef %7) #15
  %notify_q.i.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 8
  %8 = ptrtoint ptr %notify_q.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %notify.011.i.i.i = load ptr, ptr %notify_q.i.i.i, align 4
  %cmp.not12.i.i.i = icmp eq ptr %notify.011.i.i.i, %notify_q.i.i.i
  br i1 %cmp.not12.i.i.i, label %do.body.sw.epilog_crit_edge, label %do.body.for.body.i.i.i_crit_edge

do.body.for.body.i.i.i_crit_edge:                 ; preds = %do.body
  br label %for.body.i.i.i

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %do.body.for.body.i.i.i_crit_edge
  %notify.013.i.i.i = phi ptr [ %notify.0.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %notify.011.i.i.i, %do.body.for.body.i.i.i_crit_edge ]
  %cbfn.i.i.i = getelementptr inbounds %struct.bfa_ioc_notify, ptr %notify.013.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %cbfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cbfn.i.i.i, align 4
  %cbarg.i.i.i = getelementptr inbounds %struct.bfa_ioc_notify, ptr %notify.013.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %cbarg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cbarg.i.i.i, align 4
  tail call void %10(ptr noundef %12, i32 noundef 2) #15
  %13 = ptrtoint ptr %notify.013.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %notify.0.i.i.i = load ptr, ptr %notify.013.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %notify.0.i.i.i, %notify_q.i.i.i
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.sw.epilog_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

for.body.i.i.i.sw.epilog_crit_edge:               ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %14 = ptrtoint ptr %iocpf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iocpf.i, align 8
  tail call void %15(ptr noundef %iocpf.i, i32 noundef 7) #15
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  %16 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @bfa_ioc_sm_hwfail, ptr %ioc, align 8
  %cbfn.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 21
  %17 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cbfn.i, align 4
  %disable_cbfn.i = getelementptr inbounds %struct.bfa_ioc_cbfn, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %disable_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %disable_cbfn.i, align 4
  %bfa.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 1
  %21 = ptrtoint ptr %bfa.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bfa.i, align 4
  tail call void %20(ptr noundef %22) #15
  %notify_q.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 8
  %23 = ptrtoint ptr %notify_q.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %notify.011.i.i = load ptr, ptr %notify_q.i.i, align 4
  %cmp.not12.i.i = icmp eq ptr %notify.011.i.i, %notify_q.i.i
  br i1 %cmp.not12.i.i, label %do.body3.sw.epilog_crit_edge, label %do.body3.for.body.i.i_crit_edge

do.body3.for.body.i.i_crit_edge:                  ; preds = %do.body3
  br label %for.body.i.i

do.body3.sw.epilog_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.body3.for.body.i.i_crit_edge
  %notify.013.i.i = phi ptr [ %notify.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %notify.011.i.i, %do.body3.for.body.i.i_crit_edge ]
  %cbfn.i.i16 = getelementptr inbounds %struct.bfa_ioc_notify, ptr %notify.013.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %cbfn.i.i16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cbfn.i.i16, align 4
  %cbarg.i.i = getelementptr inbounds %struct.bfa_ioc_notify, ptr %notify.013.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %cbarg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cbarg.i.i, align 4
  tail call void %25(ptr noundef %27, i32 noundef 2) #15
  %28 = ptrtoint ptr %notify.013.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %notify.0.i.i = load ptr, ptr %notify.013.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %notify.0.i.i, %notify_q.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.sw.epilog_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.sw.epilog_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 417, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end8, %for.body.i.i.sw.epilog_crit_edge, %do.body3.sw.epilog_crit_edge, %sw.bb1, %for.body.i.i.i.sw.epilog_crit_edge, %do.body.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_sm_disabled(ptr noundef %ioc, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %event, label %do.end8 [
    i32 2, label %do.body
    i32 3, label %sw.bb1
    i32 4, label %do.body3
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bfa_ioc_sm_enabling, ptr %ioc, align 8
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %2 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocpf.i.i, align 8
  tail call void %3(ptr noundef %iocpf.i.i, i32 noundef 1) #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cbfn = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 21
  %4 = ptrtoint ptr %cbfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cbfn, align 4
  %disable_cbfn = getelementptr inbounds %struct.bfa_ioc_cbfn, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %disable_cbfn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_cbfn, align 4
  %bfa = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 1
  %8 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bfa, align 4
  tail call void %7(ptr noundef %9) #15
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bfa_ioc_sm_uninit, ptr %ioc, align 8
  %iocpf.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %11 = ptrtoint ptr %iocpf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iocpf.i, align 8
  tail call void %12(ptr noundef %iocpf.i, i32 noundef 3) #15
  br label %sw.epilog

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 446, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end8, %do.body3, %sw.bb1, %do.body
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @bfa_nw_ioc_is_operational(ptr nocapture noundef readonly %ioc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc, align 8
  %cmp = icmp eq ptr %1, @bfa_ioc_sm_op
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_sm_op(ptr noundef %ioc, i32 noundef %event) #0 align 64 {
entry:
  %tlen.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %event, label %do.end13 [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 3, label %sw.bb
    i32 8, label %entry.sw.bb1_crit_edge
    i32 10, label %entry.sw.bb1_crit_edge29
    i32 9, label %entry.sw.bb2_crit_edge
  ]

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb2

entry.sw.bb1_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %hb_timer.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 6
  %call.i = tail call i32 @del_timer(ptr noundef %hb_timer.i) #15
  %1 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bfa_ioc_sm_disabling, ptr %ioc, align 8
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %2 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocpf.i.i, align 8
  tail call void %3(ptr noundef %iocpf.i.i, i32 noundef 2) #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge29
  %hb_timer.i27 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 6
  %call.i28 = tail call i32 @del_timer(ptr noundef %hb_timer.i27) #15
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb1, %entry.sw.bb2_crit_edge
  %auto_recover = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24, i32 3
  %4 = ptrtoint ptr %auto_recover to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %auto_recover, align 1, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %bfa_ioc_sm_fail.bfa_ioc_sm_fail_retry = select i1 %tobool.not, ptr @bfa_ioc_sm_fail, ptr @bfa_ioc_sm_fail_retry
  %6 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bfa_ioc_sm_fail.bfa_ioc_sm_fail_retry, ptr %ioc, align 8
  %cbfn.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 21
  %7 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cbfn.i, align 4
  %hbfail_cbfn.i = getelementptr inbounds %struct.bfa_ioc_cbfn, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %hbfail_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hbfail_cbfn.i, align 4
  %bfa.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 1
  %11 = ptrtoint ptr %bfa.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bfa.i, align 4
  tail call void %10(ptr noundef %12) #15
  %notify_q.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 8
  %13 = ptrtoint ptr %notify_q.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %notify.011.i.i = load ptr, ptr %notify_q.i.i, align 4
  %cmp.not12.i.i = icmp eq ptr %notify.011.i.i, %notify_q.i.i
  br i1 %cmp.not12.i.i, label %sw.bb2.bfa_ioc_event_notify.exit.i_crit_edge, label %sw.bb2.for.body.i.i_crit_edge

sw.bb2.for.body.i.i_crit_edge:                    ; preds = %sw.bb2
  br label %for.body.i.i

sw.bb2.bfa_ioc_event_notify.exit.i_crit_edge:     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_event_notify.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb2.for.body.i.i_crit_edge
  %notify.013.i.i = phi ptr [ %notify.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %notify.011.i.i, %sw.bb2.for.body.i.i_crit_edge ]
  %cbfn.i.i = getelementptr inbounds %struct.bfa_ioc_notify, ptr %notify.013.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %cbfn.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cbfn.i.i, align 4
  %cbarg.i.i = getelementptr inbounds %struct.bfa_ioc_notify, ptr %notify.013.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %cbarg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cbarg.i.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef 3) #15
  %18 = ptrtoint ptr %notify.013.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %notify.0.i.i = load ptr, ptr %notify.013.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %notify.0.i.i, %notify_q.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.bfa_ioc_event_notify.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.bfa_ioc_event_notify.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_event_notify.exit.i

bfa_ioc_event_notify.exit.i:                      ; preds = %for.body.i.i.bfa_ioc_event_notify.exit.i_crit_edge, %sw.bb2.bfa_ioc_event_notify.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tlen.i.i) #15
  %dbg_fwsave_once.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 11
  %19 = ptrtoint ptr %dbg_fwsave_once.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dbg_fwsave_once.i.i, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %bfa_ioc_event_notify.exit.i.bfa_ioc_fail_notify.exit_crit_edge, label %if.then.i.i

bfa_ioc_event_notify.exit.i.bfa_ioc_fail_notify.exit_crit_edge: ; preds = %bfa_ioc_event_notify.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fail_notify.exit

if.then.i.i:                                      ; preds = %bfa_ioc_event_notify.exit.i
  %21 = ptrtoint ptr %dbg_fwsave_once.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %dbg_fwsave_once.i.i, align 4
  %dbg_fwsave_len.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 10
  %22 = ptrtoint ptr %dbg_fwsave_len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dbg_fwsave_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool2.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.bfa_ioc_fail_notify.exit_crit_edge, label %if.then3.i.i

if.then.i.i.bfa_ioc_fail_notify.exit_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fail_notify.exit

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %tlen.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tlen.i.i, align 4
  %dbg_fwsave.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 9
  %25 = ptrtoint ptr %dbg_fwsave.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dbg_fwsave.i.i, align 4
  %call.i.i = call i32 @bfa_nw_ioc_debug_fwtrc(ptr noundef %ioc, ptr noundef %26, ptr noundef nonnull %tlen.i.i) #15
  br label %bfa_ioc_fail_notify.exit

bfa_ioc_fail_notify.exit:                         ; preds = %if.then3.i.i, %if.then.i.i.bfa_ioc_fail_notify.exit_crit_edge, %bfa_ioc_event_notify.exit.i.bfa_ioc_fail_notify.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tlen.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %event)
  %cmp.not = icmp eq i32 %event, 8
  br i1 %cmp.not, label %bfa_ioc_fail_notify.exit.sw.epilog_crit_edge, label %if.then9

bfa_ioc_fail_notify.exit.sw.epilog_crit_edge:     ; preds = %bfa_ioc_fail_notify.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then9:                                         ; preds = %bfa_ioc_fail_notify.exit
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %27 = ptrtoint ptr %iocpf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iocpf.i, align 8
  tail call void %28(ptr noundef %iocpf.i, i32 noundef 7) #15
  br label %sw.epilog

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 383, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end13, %if.then9, %bfa_ioc_fail_notify.exit.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_ioc_notify_register(ptr noundef %ioc, ptr noundef %notify) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %notify_q = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %notify, ptr noundef %1, ptr noundef %notify_q) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %notify, ptr %prev.i, align 4
  %3 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %notify_q, ptr %notify, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %notify, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %notify, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_ioc_get_attr(ptr nocapture noundef readonly %ioc, ptr noundef writeonly %ioc_attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %ioc_attr, i32 0, i32 1600)
  %1 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioc, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %entry
  %i.0.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.bfa_sm_table, ptr @ioc_sm_table, i32 %i.0.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  %cmp.not.i.i = icmp eq ptr %4, %2
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp.not.i.i
  %inc.i.i = add i32 %i.0.i.i, 1
  br i1 %or.cond.i.i, label %bfa_sm_to_state.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i.i

bfa_sm_to_state.exit.i:                           ; preds = %while.cond.i.i
  %state.i.i = getelementptr %struct.bfa_sm_table, ptr @ioc_sm_table, i32 %i.0.i.i, i32 1
  %5 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %6, label %bfa_sm_to_state.exit.i.bfa_ioc_get_state.exit_crit_edge [
    i32 12, label %bfa_sm_to_state.exit.i.if.then.i_crit_edge
    i32 8, label %bfa_sm_to_state.exit.i.if.then.i_crit_edge43
    i32 7, label %bfa_sm_to_state.exit.i.if.then.i_crit_edge44
  ]

bfa_sm_to_state.exit.i.if.then.i_crit_edge44:     ; preds = %bfa_sm_to_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

bfa_sm_to_state.exit.i.if.then.i_crit_edge43:     ; preds = %bfa_sm_to_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

bfa_sm_to_state.exit.i.if.then.i_crit_edge:       ; preds = %bfa_sm_to_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

bfa_sm_to_state.exit.i.bfa_ioc_get_state.exit_crit_edge: ; preds = %bfa_sm_to_state.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_get_state.exit

if.then.i:                                        ; preds = %bfa_sm_to_state.exit.i.if.then.i_crit_edge, %bfa_sm_to_state.exit.i.if.then.i_crit_edge43, %bfa_sm_to_state.exit.i.if.then.i_crit_edge44
  %iocpf.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %8 = ptrtoint ptr %iocpf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iocpf.i, align 8
  br label %while.cond.i20.i

while.cond.i20.i:                                 ; preds = %while.cond.i20.i.while.cond.i20.i_crit_edge, %if.then.i
  %i.0.i14.i = phi i32 [ 0, %if.then.i ], [ %inc.i19.i, %while.cond.i20.i.while.cond.i20.i_crit_edge ]
  %arrayidx.i15.i = getelementptr %struct.bfa_sm_table, ptr @iocpf_sm_table, i32 %i.0.i14.i
  %10 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i15.i, align 4
  %tobool.not.i16.i = icmp eq ptr %11, null
  %cmp.not.i17.i = icmp eq ptr %11, %9
  %or.cond.i18.i = or i1 %tobool.not.i16.i, %cmp.not.i17.i
  %inc.i19.i = add i32 %i.0.i14.i, 1
  br i1 %or.cond.i18.i, label %bfa_sm_to_state.exit22.i, label %while.cond.i20.i.while.cond.i20.i_crit_edge

while.cond.i20.i.while.cond.i20.i_crit_edge:      ; preds = %while.cond.i20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i20.i

bfa_sm_to_state.exit22.i:                         ; preds = %while.cond.i20.i
  %state.i21.i = getelementptr %struct.bfa_sm_table, ptr @iocpf_sm_table, i32 %i.0.i14.i, i32 1
  %12 = ptrtoint ptr %state.i21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i21.i, align 4
  %switch.tableidx = add i32 %13, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 8
  br i1 %14, label %switch.hole_check, label %bfa_sm_to_state.exit22.i.bfa_ioc_get_state.exit_crit_edge

bfa_sm_to_state.exit22.i.bfa_ioc_get_state.exit_crit_edge: ; preds = %bfa_sm_to_state.exit22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_get_state.exit

switch.hole_check:                                ; preds = %bfa_sm_to_state.exit22.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -101, %switch.maskindex
  %15 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.lobit.not = icmp eq i8 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.bfa_ioc_get_state.exit_crit_edge, label %switch.lookup

switch.hole_check.bfa_ioc_get_state.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_get_state.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.bfa_nw_ioc_get_attr, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bfa_ioc_get_state.exit

bfa_ioc_get_state.exit:                           ; preds = %switch.lookup, %switch.hole_check.bfa_ioc_get_state.exit_crit_edge, %bfa_sm_to_state.exit22.i.bfa_ioc_get_state.exit_crit_edge, %bfa_sm_to_state.exit.i.bfa_ioc_get_state.exit_crit_edge
  %ioc_st.0.i = phi i32 [ %6, %bfa_sm_to_state.exit22.i.bfa_ioc_get_state.exit_crit_edge ], [ %6, %bfa_sm_to_state.exit.i.bfa_ioc_get_state.exit_crit_edge ], [ %6, %switch.hole_check.bfa_ioc_get_state.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %state = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 1
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %ioc_st.0.i, ptr %state, align 4
  %port_id = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 18
  %18 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_id, align 1
  %port_id1 = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 5
  %20 = ptrtoint ptr %port_id1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %port_id1, align 8
  %port_mode = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 29
  %21 = ptrtoint ptr %port_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port_mode, align 8
  %conv = trunc i32 %22 to i8
  %port_mode2 = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 6
  %23 = ptrtoint ptr %port_mode2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %port_mode2, align 1
  %port_mode_cfg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 31
  %24 = ptrtoint ptr %port_mode_cfg to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %port_mode_cfg, align 1
  %port_mode_cfg3 = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 8
  %26 = ptrtoint ptr %port_mode_cfg3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %port_mode_cfg3, align 1
  %ad_cap_bm = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 30
  %27 = ptrtoint ptr %ad_cap_bm to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ad_cap_bm, align 4
  %cap_bm = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 7
  %29 = ptrtoint ptr %cap_bm to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %cap_bm, align 2
  %clscode.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 12
  %30 = ptrtoint ptr %clscode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clscode.i, align 8
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %31, label %do.body6.i [
    i32 512, label %bfa_ioc_get_state.exit.bfa_ioc_get_type.exit_crit_edge
    i32 3076, label %do.end10.i
  ], !prof !145

bfa_ioc_get_state.exit.bfa_ioc_get_type.exit_crit_edge: ; preds = %bfa_ioc_get_state.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_get_type.exit

do.body6.i:                                       ; preds = %bfa_ioc_get_state.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bfa_ioc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2797, 0\0A.popsection", ""() #15, !srcloc !152
  unreachable

do.end10.i:                                       ; preds = %bfa_ioc_get_state.exit
  call void @__sanitizer_cov_trace_pc() #17
  %attr.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 20
  %33 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %attr.i, align 8
  %port_mode.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %port_mode.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %port_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp11.i = icmp eq i8 %36, 1
  %cond.i = select i1 %cmp11.i, i32 1, i32 2
  br label %bfa_ioc_get_type.exit

bfa_ioc_get_type.exit:                            ; preds = %do.end10.i, %bfa_ioc_get_state.exit.bfa_ioc_get_type.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %do.end10.i ], [ 3, %bfa_ioc_get_state.exit.bfa_ioc_get_type.exit_crit_edge ]
  %37 = ptrtoint ptr %ioc_attr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i, ptr %ioc_attr, align 8
  %adapter_attr = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2
  %attr.i39 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 20
  %38 = ptrtoint ptr %attr.i39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %attr.i39, align 8
  %serial_num.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 1
  %brcd_serialnum.i.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %39, i32 0, i32 11
  %40 = call ptr @memcpy(ptr %serial_num.i, ptr %brcd_serialnum.i.i, i32 12)
  %fw_ver.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 8
  %41 = load ptr, ptr %attr.i39, align 8
  %fw_version.i.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %41, i32 0, i32 20
  %42 = call ptr @memcpy(ptr %fw_ver.i, ptr %fw_version.i.i, i32 64)
  %optrom_ver.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 9
  %43 = load ptr, ptr %attr.i39, align 8
  %optrom_version.i.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %43, i32 0, i32 21
  %44 = call ptr @memcpy(ptr %optrom_ver.i, ptr %optrom_version.i.i, i32 64)
  %45 = ptrtoint ptr %adapter_attr to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 5858179705242583040, ptr %adapter_attr, align 1
  %vpd.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 11
  %vpd4.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %39, i32 0, i32 22
  %46 = call ptr @memcpy(ptr %vpd.i, ptr %vpd4.i, i32 520)
  %47 = load ptr, ptr %attr.i39, align 8
  %adapter_prop.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %adapter_prop.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %adapter_prop.i, align 1
  %and.i = lshr i32 %49, 8
  %conv.i = trunc i32 %and.i to i8
  %nports.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 13
  %50 = ptrtoint ptr %nports.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i, ptr %nports.i, align 2
  %51 = load ptr, ptr %attr.i39, align 8
  %adapter_prop7.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %51, i32 0, i32 16
  %52 = ptrtoint ptr %adapter_prop7.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %adapter_prop7.i, align 1
  %conv10.i = trunc i32 %53 to i8
  %max_speed.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 14
  %54 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv10.i, ptr %max_speed.i, align 1
  %model.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 3
  %55 = call ptr @memset(ptr %model.i, i32 0, i32 16)
  %56 = load ptr, ptr %attr.i39, align 8
  %card_type.i.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %56, i32 0, i32 23
  %57 = ptrtoint ptr %card_type.i.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %card_type.i.i, align 1
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %model.i, i32 noundef 16, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %58) #15
  %model_descr.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 4
  %59 = call ptr @memset(ptr %model_descr.i, i32 0, i32 16)
  %60 = ptrtoint ptr %attr.i39 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %attr.i39, align 8
  %card_type.i92.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %61, i32 0, i32 23
  %62 = ptrtoint ptr %card_type.i92.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %card_type.i92.i, align 1
  %call.i93.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %model_descr.i, i32 noundef 16, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %63) #15
  %card_type.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %39, i32 0, i32 23
  %64 = ptrtoint ptr %card_type.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %card_type.i, align 1
  %card_type13.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 2
  %66 = ptrtoint ptr %card_type13.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %card_type13.i, align 4
  %67 = load i32, ptr %card_type.i, align 1
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %67, label %lor.rhs.i [
    i32 804, label %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge
    i32 1007, label %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge45
    i32 807, label %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge46
    i32 902, label %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge47
    i32 1741, label %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge48
    i32 1867, label %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge49
  ]

bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge49: ; preds = %bfa_ioc_get_type.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_get_adapter_attr.exit

bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge48: ; preds = %bfa_ioc_get_type.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_get_adapter_attr.exit

bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge47: ; preds = %bfa_ioc_get_type.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_get_adapter_attr.exit

bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge46: ; preds = %bfa_ioc_get_type.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_get_adapter_attr.exit

bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge45: ; preds = %bfa_ioc_get_type.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_get_adapter_attr.exit

bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge: ; preds = %bfa_ioc_get_type.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_get_adapter_attr.exit

lor.rhs.i:                                        ; preds = %bfa_ioc_get_type.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_get_adapter_attr.exit

bfa_ioc_get_adapter_attr.exit:                    ; preds = %lor.rhs.i, %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge, %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge45, %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge46, %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge47, %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge48, %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge49
  %69 = phi i1 [ true, %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge ], [ false, %lor.rhs.i ], [ true, %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge45 ], [ true, %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge46 ], [ true, %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge47 ], [ true, %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge48 ], [ true, %bfa_ioc_get_type.exit.bfa_ioc_get_adapter_attr.exit_crit_edge49 ]
  %conv34.i = zext i1 %69 to i8
  %is_mezz.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 21
  %70 = ptrtoint ptr %is_mezz.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv34.i, ptr %is_mezz.i, align 2
  %adapter_prop35.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %39, i32 0, i32 16
  %71 = ptrtoint ptr %adapter_prop35.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %adapter_prop35.i, align 1
  %and36.i = and i32 %72, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool.not.i = icmp ne i32 %and36.i, 0
  %spec.select.i = zext i1 %tobool.not.i to i8
  %73 = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 15
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %spec.select.i, ptr %73, align 8
  %75 = ptrtoint ptr %attr.i39 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %attr.i39, align 8
  %pwwn.i.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %pwwn.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 8)
  %78 = load i64, ptr %pwwn.i.i, align 1
  %pwwn.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 5
  %79 = ptrtoint ptr %pwwn.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %pwwn.i, align 8
  %mac.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 12
  %80 = load ptr, ptr %attr.i39, align 8
  %mac1.i.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %mac1.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mac1.i.i, align 4
  %83 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %mac.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.bfi_ioc_attr, ptr %80, i32 0, i32 7, i32 4
  %84 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 12, i32 4
  %86 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %add.ptr1.i.i.i, align 2
  %pcie_gen.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %39, i32 0, i32 12
  %87 = ptrtoint ptr %pcie_gen.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %pcie_gen.i, align 1
  %pcie_gen39.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 17
  %89 = ptrtoint ptr %pcie_gen39.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %pcie_gen39.i, align 2
  %pcie_lanes.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %39, i32 0, i32 14
  %90 = ptrtoint ptr %pcie_lanes.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %pcie_lanes.i, align 1
  %pcie_lanes40.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 19
  %92 = ptrtoint ptr %pcie_lanes40.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %pcie_lanes40.i, align 4
  %pcie_lanes_orig.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %39, i32 0, i32 13
  %93 = ptrtoint ptr %pcie_lanes_orig.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %pcie_lanes_orig.i, align 1
  %pcie_lanes_orig41.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 18
  %95 = ptrtoint ptr %pcie_lanes_orig41.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %pcie_lanes_orig41.i, align 1
  %asic_rev.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %39, i32 0, i32 18
  %96 = ptrtoint ptr %asic_rev.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %asic_rev.i, align 1
  %asic_rev42.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 16
  %98 = ptrtoint ptr %asic_rev42.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %asic_rev42.i, align 1
  %hw_ver.i = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 7
  %99 = ptrtoint ptr %hw_ver.i to i32
  call void @__asan_storeN_noabort(i32 %99, i32 8)
  store i64 5937281619403472896, ptr %hw_ver.i, align 1
  %100 = load ptr, ptr %attr.i39, align 8
  %asic_rev.i.i = getelementptr inbounds %struct.bfi_ioc_attr, ptr %100, i32 0, i32 18
  %101 = ptrtoint ptr %asic_rev.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %asic_rev.i.i, align 1
  %arrayidx11.i.i = getelementptr %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 7, i32 4
  %103 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %arrayidx11.i.i, align 1
  %arrayidx12.i.i = getelementptr %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 2, i32 7, i32 5
  %104 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %arrayidx12.i.i, align 1
  %device_id = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 2
  %105 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %device_id, align 2
  %device_id5 = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 4, i32 1
  %107 = ptrtoint ptr %device_id5 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %device_id5, align 2
  %pci_func = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 1
  %108 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %pci_func, align 4
  %conv7 = zext i8 %109 to i32
  %pcifn = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 4, i32 4
  %110 = ptrtoint ptr %pcifn to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv7, ptr %pcifn, align 8
  %111 = load i8, ptr %pci_func, align 4
  %112 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %port_id, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %111, i8 %113)
  %cmp = icmp eq i8 %111, %113
  %conv15 = zext i1 %cmp to i8
  %def_fn = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 9
  %114 = ptrtoint ptr %def_fn to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv15, ptr %def_fn, align 4
  %chip_rev = getelementptr inbounds %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 4, i32 6
  %tobool.not.i40 = icmp eq ptr %chip_rev, null
  br i1 %tobool.not.i40, label %do.body4.i, label %bfa_ioc_get_pci_chip_rev.exit, !prof !153

do.body4.i:                                       ; preds = %bfa_ioc_get_adapter_attr.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bfa_ioc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2820, 0\0A.popsection", ""() #15, !srcloc !154
  unreachable

bfa_ioc_get_pci_chip_rev.exit:                    ; preds = %bfa_ioc_get_adapter_attr.exit
  call void @__sanitizer_cov_trace_pc() #17
  %115 = ptrtoint ptr %chip_rev to i32
  call void @__asan_storeN_noabort(i32 %115, i32 8)
  store i64 5937281619403472896, ptr %chip_rev, align 1
  %116 = ptrtoint ptr %attr.i39 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %attr.i39, align 8
  %asic_rev.i42 = getelementptr inbounds %struct.bfi_ioc_attr, ptr %117, i32 0, i32 18
  %118 = ptrtoint ptr %asic_rev.i42 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %asic_rev.i42, align 1
  %arrayidx11.i = getelementptr %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 4, i32 6, i32 4
  %120 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %arrayidx11.i, align 1
  %arrayidx12.i = getelementptr %struct.bfa_ioc_attr, ptr %ioc_attr, i32 0, i32 4, i32 6, i32 5
  %121 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %arrayidx12.i, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bfa_nw_ioc_get_mac(ptr nocapture noundef readonly %ioc, ptr nocapture noundef writeonly %mac) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %attr = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 20
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 8
  %mac1 = getelementptr inbounds %struct.bfi_ioc_attr, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac1, align 4
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mac, align 4
  %add.ptr.i = getelementptr %struct.bfi_ioc_attr, ptr %1, i32 0, i32 7, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %mac, i32 4
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %add.ptr1.i, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_iocpf_timeout(ptr noundef %ioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %iocpf = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %0 = ptrtoint ptr %iocpf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocpf, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %i.0.i = phi i32 [ 0, %entry ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bfa_sm_table, ptr @iocpf_sm_table, i32 %i.0.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.not.i = icmp eq ptr %3, %1
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  %inc.i = add i32 %i.0.i, 1
  br i1 %or.cond.i, label %bfa_sm_to_state.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i

bfa_sm_to_state.exit:                             ; preds = %while.cond.i
  %state.i = getelementptr %struct.bfa_sm_table, ptr @iocpf_sm_table, i32 %i.0.i, i32 1
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %bfa_sm_to_state.exit
  %ioc_hwif.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 23
  %6 = ptrtoint ptr %ioc_hwif.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioc_hwif.i, align 4
  %ioc_get_fwstate.i = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %ioc_get_fwstate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioc_get_fwstate.i, align 4
  %call.i = tail call i32 %9(ptr noundef %ioc) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 6
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %iocpf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iocpf, align 8
  tail call void %11(ptr noundef %iocpf, i32 noundef 4) #15
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %poll_time.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24, i32 4
  %12 = ptrtoint ptr %poll_time.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %poll_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %13)
  %cmp3.i = icmp ugt i32 %13, 2999
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %iocpf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iocpf, align 8
  tail call void %15(ptr noundef %iocpf, i32 noundef 11) #15
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.i = add nuw nsw i32 %13, 200
  %16 = ptrtoint ptr %poll_time.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %poll_time.i, align 4
  %iocpf_timer.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add11.i = add i32 %17, 20
  %call12.i = tail call i32 @mod_timer(ptr noundef %iocpf_timer.i, i32 noundef %add11.i) #15
  br label %if.end

if.else:                                          ; preds = %bfa_sm_to_state.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %1(ptr noundef %iocpf, i32 noundef 11) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.else.i, %if.then4.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_iocpf_sem_timeout(ptr noundef %ioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_sem_reg.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 9
  %0 = ptrtoint ptr %ioc_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_sem_reg.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.i = icmp eq i32 %2, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %3 = ptrtoint ptr %iocpf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iocpf.i, align 8
  tail call void %4(ptr noundef %iocpf.i, i32 noundef 12) #15
  br label %bfa_ioc_hw_sem_get.exit

if.end.i:                                         ; preds = %entry
  %5 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf4.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %6 = ptrtoint ptr %iocpf4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iocpf4.i, align 8
  tail call void %7(ptr noundef %iocpf4.i, i32 noundef 10) #15
  br label %bfa_ioc_hw_sem_get.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %sem_timer.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 50
  %call9.i = tail call i32 @mod_timer(ptr noundef %sem_timer.i, i32 noundef %add.i) #15
  br label %bfa_ioc_hw_sem_get.exit

bfa_ioc_hw_sem_get.exit:                          ; preds = %if.end7.i, %if.then3.i, %if.then.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bfa_nw_flash_meminfo() local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 67584
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_flash_attach(ptr noundef %flash, ptr noundef %ioc, ptr nocapture noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flash to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ioc, ptr %flash, align 8
  %cbfn = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 10
  %1 = ptrtoint ptr %cbfn to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %cbfn, align 8
  %cbarg = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 11
  %2 = ptrtoint ptr %cbarg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cbarg, align 4
  %op_busy = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 4
  %3 = ptrtoint ptr %op_busy to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %op_busy, align 4
  %arrayidx.i = getelementptr %struct.bfa_ioc, ptr %ioc, i32 0, i32 22, i32 2, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bfa_flash_intr, ptr %arrayidx.i, align 4
  %cbarg4.i = getelementptr %struct.bfa_ioc, ptr %ioc, i32 0, i32 22, i32 2, i32 3, i32 1
  %5 = ptrtoint ptr %cbarg4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %flash, ptr %cbarg4.i, align 4
  %ioc_notify = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 15
  %cbfn3 = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %cbfn3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bfa_flash_notify, ptr %cbfn3, align 8
  %cbarg5 = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 15, i32 2
  %7 = ptrtoint ptr %cbarg5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %flash, ptr %cbarg5, align 4
  %8 = load ptr, ptr %flash, align 8
  %notify_q = getelementptr inbounds %struct.bfa_ioc, ptr %8, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.bfa_ioc, ptr %8, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ioc_notify, ptr noundef %10, ptr noundef %notify_q) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ioc_notify, ptr %prev.i, align 4
  %12 = ptrtoint ptr %ioc_notify to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %notify_q, ptr %ioc_notify, align 4
  %prev3.i.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 15, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %ioc_notify, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_flash_intr(ptr noundef %flasharg, ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %op_busy = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 4
  %0 = ptrtoint ptr %op_busy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %msg_id = getelementptr inbounds %struct.bfi_mhdr, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %msg_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msg_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.not = icmp eq i8 %3, -1
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %msg_id3 = getelementptr inbounds %struct.bfi_mhdr, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %msg_id3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msg_id3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %5, label %do.end [
    i8 -127, label %sw.bb
    i8 -125, label %sw.bb45
    i8 -124, label %sw.bb54
    i8 -123, label %if.end.cleanup_crit_edge
    i8 -1, label %if.end.cleanup_crit_edge201
  ]

if.end.cleanup_crit_edge201:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %status5 = getelementptr inbounds %struct.bfi_flash_query_rsp, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %status5 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %status5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then8, label %sw.bb.if.end43_crit_edge

sw.bb.if.end43_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then8:                                         ; preds = %sw.bb
  %ubuf = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 12
  %9 = ptrtoint ptr %ubuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ubuf, align 8
  %dbuf_kva = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 8
  %11 = ptrtoint ptr %dbuf_kva to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dbuf_kva, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %10, align 4
  %npart = getelementptr inbounds %struct.bfa_flash_attr, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %npart to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %npart, align 4
  %npart11 = getelementptr inbounds %struct.bfa_flash_attr, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %npart11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %npart11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp13199.not = icmp eq i32 %17, 0
  br i1 %cmp13199.not, label %if.then8.if.end43_crit_edge, label %if.then8.for.body_crit_edge

if.then8.for.body_crit_edge:                      ; preds = %if.then8
  br label %for.body

if.then8.if.end43_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then8.for.body_crit_edge
  %i.0200 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then8.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bfa_flash_attr, ptr %12, i32 0, i32 2, i32 %i.0200
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %arrayidx16 = getelementptr %struct.bfa_flash_attr, ptr %10, i32 0, i32 2, i32 %i.0200
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx16, align 4
  %part_instance = getelementptr %struct.bfa_flash_attr, ptr %12, i32 0, i32 2, i32 %i.0200, i32 1
  %22 = ptrtoint ptr %part_instance to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %part_instance, align 4
  %part_instance22 = getelementptr %struct.bfa_flash_attr, ptr %10, i32 0, i32 2, i32 %i.0200, i32 1
  %24 = ptrtoint ptr %part_instance22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %part_instance22, align 4
  %part_off = getelementptr %struct.bfa_flash_attr, ptr %12, i32 0, i32 2, i32 %i.0200, i32 2
  %25 = ptrtoint ptr %part_off to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %part_off, align 4
  %part_off27 = getelementptr %struct.bfa_flash_attr, ptr %10, i32 0, i32 2, i32 %i.0200, i32 2
  %27 = ptrtoint ptr %part_off27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %part_off27, align 4
  %part_size = getelementptr %struct.bfa_flash_attr, ptr %12, i32 0, i32 2, i32 %i.0200, i32 3
  %28 = ptrtoint ptr %part_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %part_size, align 4
  %part_size32 = getelementptr %struct.bfa_flash_attr, ptr %10, i32 0, i32 2, i32 %i.0200, i32 3
  %30 = ptrtoint ptr %part_size32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %part_size32, align 4
  %part_len = getelementptr %struct.bfa_flash_attr, ptr %12, i32 0, i32 2, i32 %i.0200, i32 4
  %31 = ptrtoint ptr %part_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %part_len, align 4
  %part_len37 = getelementptr %struct.bfa_flash_attr, ptr %10, i32 0, i32 2, i32 %i.0200, i32 4
  %33 = ptrtoint ptr %part_len37 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %part_len37, align 4
  %part_status = getelementptr %struct.bfa_flash_attr, ptr %12, i32 0, i32 2, i32 %i.0200, i32 5
  %34 = ptrtoint ptr %part_status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %part_status, align 4
  %part_status42 = getelementptr %struct.bfa_flash_attr, ptr %10, i32 0, i32 2, i32 %i.0200, i32 5
  %36 = ptrtoint ptr %part_status42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %part_status42, align 4
  %inc = add nuw i32 %i.0200, 1
  %37 = ptrtoint ptr %npart11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %npart11, align 4
  %cmp13 = icmp ult i32 %inc, %38
  br i1 %cmp13, label %for.body.for.body_crit_edge, label %for.body.if.end43_crit_edge

for.body.if.end43_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end43:                                         ; preds = %for.body.if.end43_crit_edge, %if.then8.if.end43_crit_edge, %sw.bb.if.end43_crit_edge
  %status44 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 7
  %39 = ptrtoint ptr %status44 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %8, ptr %status44, align 8
  %40 = ptrtoint ptr %op_busy to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %op_busy, align 4
  %cbfn.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 10
  %41 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cbfn.i, align 8
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %if.end43.cleanup_crit_edge, label %if.then.i

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  %cbarg.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 11
  %43 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cbarg.i, align 4
  tail call void %42(ptr noundef %44, i32 noundef %8) #15
  br label %cleanup

sw.bb45:                                          ; preds = %if.end
  %status46 = getelementptr inbounds %struct.bfi_flash_write_rsp, ptr %msg, i32 0, i32 4
  %45 = ptrtoint ptr %status46 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %status46, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp47.not = icmp eq i32 %46, 0
  br i1 %cmp47.not, label %lor.lhs.false, label %sw.bb45.if.then51_crit_edge

sw.bb45.if.then51_crit_edge:                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then51

lor.lhs.false:                                    ; preds = %sw.bb45
  %residue = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 5
  %47 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %residue, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp49 = icmp eq i32 %48, 0
  br i1 %cmp49, label %lor.lhs.false.if.then51_crit_edge, label %if.else

lor.lhs.false.if.then51_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then51

if.then51:                                        ; preds = %lor.lhs.false.if.then51_crit_edge, %sw.bb45.if.then51_crit_edge
  %status52 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 7
  %49 = ptrtoint ptr %status52 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %status52, align 8
  %50 = ptrtoint ptr %op_busy to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %op_busy, align 4
  %cbfn.i155 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 10
  %51 = ptrtoint ptr %cbfn.i155 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cbfn.i155, align 8
  %tobool.not.i156 = icmp eq ptr %52, null
  br i1 %tobool.not.i156, label %if.then51.cleanup_crit_edge, label %if.then.i159

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i159:                                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  %cbarg.i157 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 11
  %53 = ptrtoint ptr %cbarg.i157 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cbarg.i157, align 4
  tail call void %52(ptr noundef %54, i32 noundef %46) #15
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %type.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 1
  %55 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type.i, align 4
  %type2.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14, i32 3, i32 4
  %57 = ptrtoint ptr %type2.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %type2.i, align 1
  %instance.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 2
  %58 = ptrtoint ptr %instance.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %instance.i, align 8
  %instance3.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14, i32 3, i32 5
  %60 = ptrtoint ptr %instance3.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %instance3.i, align 1
  %addr_off.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 13
  %61 = ptrtoint ptr %addr_off.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addr_off.i, align 4
  %offset.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 6
  %63 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %64, %62
  %offset4.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14, i32 3, i32 6
  %65 = ptrtoint ptr %offset4.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %add.i, ptr %offset4.i, align 1
  %66 = tail call i32 @llvm.umin.i32(i32 %48, i32 67584) #15
  %msg1.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14, i32 3
  %mb.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14
  %length.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14, i32 3, i32 7
  %67 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67585, i32 %48)
  %cmp14.i = icmp ult i32 %48, 67585
  %conv.i = zext i1 %cmp14.i to i8
  %last.i = getelementptr inbounds %struct.bfi_flash_write_req, ptr %msg1.i, i32 0, i32 4
  %68 = ptrtoint ptr %last.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv.i, ptr %last.i, align 1
  %69 = ptrtoint ptr %msg1.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 3, ptr %msg1.i, align 1
  %msg_id.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg1.i, i32 0, i32 1
  %70 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 3, ptr %msg_id.i, align 1
  %71 = ptrtoint ptr %flasharg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %flasharg, align 8
  %port_id.i = getelementptr inbounds %struct.bfa_ioc, ptr %72, i32 0, i32 18
  %73 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %port_id.i, align 1
  %mtag.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg1.i, i32 0, i32 2
  %fn_lpu.i = getelementptr inbounds %struct.anon.1, ptr %mtag.i, i32 0, i32 1
  %75 = ptrtoint ptr %fn_lpu.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %fn_lpu.i, align 1
  %alen.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14, i32 3, i32 1
  %dbuf_pa.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 9
  %76 = ptrtoint ptr %dbuf_pa.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %dbuf_pa.i, align 8
  %al_len.i.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14, i32 3, i32 3
  %78 = ptrtoint ptr %al_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %66, ptr %al_len.i.i, align 1
  %conv.i.i.i = trunc i64 %77 to i32
  %79 = ptrtoint ptr %alen.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %conv.i.i.i, ptr %alen.i, align 1
  %shr.i.i.i = lshr i64 %77, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %addr_hi.i.i.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14, i32 3, i32 2
  %80 = ptrtoint ptr %addr_hi.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %conv2.i.i.i, ptr %addr_hi.i.i.i, align 1
  %dbuf_kva.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 8
  %81 = ptrtoint ptr %dbuf_kva.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dbuf_kva.i, align 4
  %ubuf.i = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 12
  %83 = ptrtoint ptr %ubuf.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ubuf.i, align 8
  %add.ptr.i = getelementptr i8, ptr %84, i32 %64
  %85 = call ptr @memcpy(ptr %82, ptr %add.ptr.i, i32 %66)
  %86 = load ptr, ptr %flasharg, align 8
  %call.i = tail call zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef %86, ptr noundef %mb.i, ptr noundef null, ptr noundef null) #15
  %87 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %residue, align 8
  %sub22.i = sub i32 %88, %66
  store i32 %sub22.i, ptr %residue, align 8
  %89 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %offset.i, align 4
  %add24.i = add i32 %90, %66
  store i32 %add24.i, ptr %offset.i, align 4
  br label %cleanup

sw.bb54:                                          ; preds = %if.end
  %status55 = getelementptr inbounds %struct.bfi_flash_read_rsp, ptr %msg, i32 0, i32 4
  %91 = ptrtoint ptr %status55 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %status55, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp56.not = icmp eq i32 %92, 0
  br i1 %cmp56.not, label %if.else60, label %if.then58

if.then58:                                        ; preds = %sw.bb54
  %status59 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 7
  %93 = ptrtoint ptr %status59 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %status59, align 8
  %94 = ptrtoint ptr %op_busy to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %op_busy, align 4
  %cbfn.i162 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 10
  %95 = ptrtoint ptr %cbfn.i162 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cbfn.i162, align 8
  %tobool.not.i163 = icmp eq ptr %96, null
  br i1 %tobool.not.i163, label %if.then58.cleanup_crit_edge, label %if.then.i166

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i166:                                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #17
  %cbarg.i164 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 11
  %97 = ptrtoint ptr %cbarg.i164 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cbarg.i164, align 4
  tail call void %96(ptr noundef %98, i32 noundef %92) #15
  br label %cleanup

if.else60:                                        ; preds = %sw.bb54
  %length = getelementptr inbounds %struct.bfi_flash_read_rsp, ptr %msg, i32 0, i32 5
  %99 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %length, align 1
  %ubuf61 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 12
  %101 = ptrtoint ptr %ubuf61 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ubuf61, align 8
  %offset = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 6
  %103 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %102, i32 %104
  %dbuf_kva62 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 8
  %105 = ptrtoint ptr %dbuf_kva62 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dbuf_kva62, align 4
  %107 = call ptr @memcpy(ptr %add.ptr, ptr %106, i32 %100)
  %residue63 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 5
  %108 = ptrtoint ptr %residue63 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %residue63, align 8
  %sub = sub i32 %109, %100
  store i32 %sub, ptr %residue63, align 8
  %110 = load i32, ptr %offset, align 4
  %add = add i32 %110, %100
  store i32 %add, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %100)
  %cmp66 = icmp eq i32 %109, %100
  br i1 %cmp66, label %if.then68, label %if.else70

if.then68:                                        ; preds = %if.else60
  %status69 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 7
  %111 = ptrtoint ptr %status69 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %status69, align 8
  %112 = ptrtoint ptr %op_busy to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %op_busy, align 4
  %cbfn.i169 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 10
  %113 = ptrtoint ptr %cbfn.i169 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cbfn.i169, align 8
  %tobool.not.i170 = icmp eq ptr %114, null
  br i1 %tobool.not.i170, label %if.then68.cleanup_crit_edge, label %if.then.i173

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i173:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  %cbarg.i171 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 11
  %115 = ptrtoint ptr %cbarg.i171 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cbarg.i171, align 4
  tail call void %114(ptr noundef %116, i32 noundef 0) #15
  br label %cleanup

if.else70:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #17
  %type.i175 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 1
  %117 = ptrtoint ptr %type.i175 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %type.i175, align 4
  %type2.i176 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14, i32 3, i32 1
  %119 = ptrtoint ptr %type2.i176 to i32
  call void @__asan_storeN_noabort(i32 %119, i32 4)
  store i32 %118, ptr %type2.i176, align 1
  %instance.i177 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 2
  %120 = ptrtoint ptr %instance.i177 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %instance.i177, align 8
  %instance3.i178 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14, i32 3, i32 2
  %122 = ptrtoint ptr %instance3.i178 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %instance3.i178, align 1
  %addr_off.i179 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 13
  %123 = ptrtoint ptr %addr_off.i179 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %addr_off.i179, align 4
  %add.i181 = add i32 %124, %add
  %offset4.i182 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14, i32 3, i32 3
  %125 = ptrtoint ptr %offset4.i182 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %add.i181, ptr %offset4.i182, align 1
  %126 = tail call i32 @llvm.umin.i32(i32 %sub, i32 67584) #15
  %msg1.i184 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14, i32 3
  %mb.i185 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14
  %length.i186 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14, i32 3, i32 4
  %127 = ptrtoint ptr %length.i186 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 %126, ptr %length.i186, align 1
  %128 = ptrtoint ptr %msg1.i184 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 3, ptr %msg1.i184, align 1
  %msg_id.i187 = getelementptr inbounds %struct.bfi_mhdr, ptr %msg1.i184, i32 0, i32 1
  %129 = ptrtoint ptr %msg_id.i187 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 4, ptr %msg_id.i187, align 1
  %130 = ptrtoint ptr %flasharg to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %flasharg, align 8
  %port_id.i188 = getelementptr inbounds %struct.bfa_ioc, ptr %131, i32 0, i32 18
  %132 = ptrtoint ptr %port_id.i188 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %port_id.i188, align 1
  %mtag.i189 = getelementptr inbounds %struct.bfi_mhdr, ptr %msg1.i184, i32 0, i32 2
  %fn_lpu.i190 = getelementptr inbounds %struct.anon.1, ptr %mtag.i189, i32 0, i32 1
  %134 = ptrtoint ptr %fn_lpu.i190 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %fn_lpu.i190, align 1
  %alen.i191 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14, i32 3, i32 5
  %dbuf_pa.i192 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 9
  %135 = ptrtoint ptr %dbuf_pa.i192 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %dbuf_pa.i192, align 8
  %al_len.i.i193 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14, i32 3, i32 7
  %137 = ptrtoint ptr %al_len.i.i193 to i32
  call void @__asan_storeN_noabort(i32 %137, i32 4)
  store i32 %126, ptr %al_len.i.i193, align 1
  %conv.i.i.i194 = trunc i64 %136 to i32
  %138 = ptrtoint ptr %alen.i191 to i32
  call void @__asan_storeN_noabort(i32 %138, i32 4)
  store i32 %conv.i.i.i194, ptr %alen.i191, align 1
  %shr.i.i.i195 = lshr i64 %136, 32
  %conv2.i.i.i196 = trunc i64 %shr.i.i.i195 to i32
  %addr_hi.i.i.i197 = getelementptr inbounds %struct.bfa_flash, ptr %flasharg, i32 0, i32 14, i32 3, i32 6
  %139 = ptrtoint ptr %addr_hi.i.i.i197 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 4)
  store i32 %conv2.i.i.i196, ptr %addr_hi.i.i.i197, align 1
  %call.i198 = tail call zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef %131, ptr noundef %mb.i185, ptr noundef null, ptr noundef null) #15
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3198, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else70, %if.then.i173, %if.then68.cleanup_crit_edge, %if.then.i166, %if.then58.cleanup_crit_edge, %if.else, %if.then.i159, %if.then51.cleanup_crit_edge, %if.then.i, %if.end43.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge201, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_flash_notify(ptr nocapture noundef %cbarg, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %event, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %switch = icmp eq i32 %0, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %op_busy = getelementptr inbounds %struct.bfa_flash, ptr %cbarg, i32 0, i32 4
  %1 = ptrtoint ptr %op_busy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %op_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %status = getelementptr inbounds %struct.bfa_flash, ptr %cbarg, i32 0, i32 7
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 56, ptr %status, align 8
  %cbfn = getelementptr inbounds %struct.bfa_flash, ptr %cbarg, i32 0, i32 10
  %4 = ptrtoint ptr %cbfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cbfn, align 8
  %cbarg1 = getelementptr inbounds %struct.bfa_flash, ptr %cbarg, i32 0, i32 11
  %6 = ptrtoint ptr %cbarg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cbarg1, align 4
  tail call void %5(ptr noundef %7, i32 noundef 56) #15
  %8 = ptrtoint ptr %op_busy to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %op_busy, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_nw_flash_memclaim(ptr nocapture noundef writeonly %flash, ptr noundef %dm_kva, i64 noundef %dm_pa) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dbuf_kva = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 8
  %0 = ptrtoint ptr %dbuf_kva to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dm_kva, ptr %dbuf_kva, align 4
  %dbuf_pa = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 9
  %1 = ptrtoint ptr %dbuf_pa to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %dm_pa, ptr %dbuf_pa, align 8
  %2 = call ptr @memset(ptr %dm_kva, i32 0, i32 67584)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_nw_flash_get_attr(ptr noundef %flash, ptr noundef %attr, ptr noundef %cbfn, ptr noundef %cbarg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14
  %msg1 = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3
  %0 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flash, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %cmp.i = icmp eq ptr %3, @bfa_ioc_sm_op
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %op_busy = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 4
  %4 = ptrtoint ptr %op_busy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %op_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %op_busy to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %op_busy, align 4
  %cbfn5 = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 10
  %7 = ptrtoint ptr %cbfn5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cbfn, ptr %cbfn5, align 8
  %cbarg6 = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 11
  %8 = ptrtoint ptr %cbarg6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cbarg, ptr %cbarg6, align 4
  %ubuf = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 12
  %9 = ptrtoint ptr %ubuf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %attr, ptr %ubuf, align 8
  %10 = ptrtoint ptr %msg1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %msg1, align 1
  %msg_id = getelementptr inbounds %struct.bfi_mhdr, ptr %msg1, i32 0, i32 1
  %11 = ptrtoint ptr %msg_id to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %msg_id, align 1
  %port_id = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port_id, align 1
  %mtag = getelementptr inbounds %struct.bfi_mhdr, ptr %msg1, i32 0, i32 2
  %fn_lpu = getelementptr inbounds %struct.anon.1, ptr %mtag, i32 0, i32 1
  %14 = ptrtoint ptr %fn_lpu to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %fn_lpu, align 1
  %alen = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 1
  %dbuf_pa = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 9
  %15 = ptrtoint ptr %dbuf_pa to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %dbuf_pa, align 8
  %al_len.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 3
  %17 = ptrtoint ptr %al_len.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 1032, ptr %al_len.i, align 1
  %conv.i.i = trunc i64 %16 to i32
  %18 = ptrtoint ptr %alen to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %conv.i.i, ptr %alen, align 1
  %shr.i.i = lshr i64 %16, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %addr_hi.i.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 2
  %19 = ptrtoint ptr %addr_hi.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %conv2.i.i, ptr %addr_hi.i.i, align 1
  %call12 = tail call zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef %1, ptr noundef %mb, ptr noundef null, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 61, %entry.cleanup_crit_edge ], [ 13, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_nw_flash_update_part(ptr noundef %flash, i32 noundef %type, i8 noundef zeroext %instance, ptr noundef %buf, i32 noundef %len, i32 noundef %offset, ptr noundef %cbfn, ptr noundef %cbarg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flash, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %cmp.i = icmp eq ptr %3, @bfa_ioc_sm_op
  br i1 %cmp.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp ne i32 %len, 0
  %and = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %cmp = icmp eq i32 %type, 7
  br i1 %cmp, label %if.end3.return_crit_edge, label %if.end5

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end5:                                          ; preds = %if.end3
  %op_busy = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 4
  %4 = ptrtoint ptr %op_busy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %op_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.return_crit_edge

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %op_busy to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %op_busy, align 4
  %cbfn10 = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 10
  %7 = ptrtoint ptr %cbfn10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cbfn, ptr %cbfn10, align 8
  %cbarg11 = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 11
  %8 = ptrtoint ptr %cbarg11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cbarg, ptr %cbarg11, align 4
  %type12 = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 1
  %9 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %type, ptr %type12, align 4
  %instance13 = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 2
  %10 = ptrtoint ptr %instance13 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %instance, ptr %instance13, align 8
  %residue = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 5
  %11 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %len, ptr %residue, align 8
  %offset14 = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 6
  %12 = ptrtoint ptr %offset14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %offset14, align 4
  %addr_off = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 13
  %13 = ptrtoint ptr %addr_off to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %offset, ptr %addr_off, align 4
  %ubuf = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 12
  %14 = ptrtoint ptr %ubuf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf, ptr %ubuf, align 8
  %type2.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 4
  %15 = ptrtoint ptr %type2.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %type, ptr %type2.i, align 1
  %instance3.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 5
  %16 = ptrtoint ptr %instance3.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %instance, ptr %instance3.i, align 1
  %offset4.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 6
  %17 = ptrtoint ptr %offset4.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %offset, ptr %offset4.i, align 1
  %18 = tail call i32 @llvm.umin.i32(i32 %len, i32 67584) #15
  %msg1.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3
  %mb.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14
  %length.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 7
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67585, i32 %len)
  %cmp14.i = icmp ult i32 %len, 67585
  %conv.i = zext i1 %cmp14.i to i8
  %last.i = getelementptr inbounds %struct.bfi_flash_write_req, ptr %msg1.i, i32 0, i32 4
  %20 = ptrtoint ptr %last.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %last.i, align 1
  %21 = ptrtoint ptr %msg1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %msg1.i, align 1
  %msg_id.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg1.i, i32 0, i32 1
  %22 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %msg_id.i, align 1
  %port_id.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 18
  %23 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %port_id.i, align 1
  %mtag.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg1.i, i32 0, i32 2
  %fn_lpu.i = getelementptr inbounds %struct.anon.1, ptr %mtag.i, i32 0, i32 1
  %25 = ptrtoint ptr %fn_lpu.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %fn_lpu.i, align 1
  %alen.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 1
  %dbuf_pa.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 9
  %26 = ptrtoint ptr %dbuf_pa.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dbuf_pa.i, align 8
  %al_len.i.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 3
  %28 = ptrtoint ptr %al_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %18, ptr %al_len.i.i, align 1
  %conv.i.i.i = trunc i64 %27 to i32
  %29 = ptrtoint ptr %alen.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %conv.i.i.i, ptr %alen.i, align 1
  %shr.i.i.i = lshr i64 %27, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %addr_hi.i.i.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 2
  %30 = ptrtoint ptr %addr_hi.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %conv2.i.i.i, ptr %addr_hi.i.i.i, align 1
  %dbuf_kva.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 8
  %31 = ptrtoint ptr %dbuf_kva.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dbuf_kva.i, align 4
  %33 = call ptr @memcpy(ptr %32, ptr %buf, i32 %18)
  %34 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %flash, align 8
  %call.i = tail call zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef %35, ptr noundef %mb.i, ptr noundef null, ptr noundef null) #15
  %36 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %residue, align 8
  %sub22.i = sub i32 %37, %18
  store i32 %sub22.i, ptr %residue, align 8
  %38 = ptrtoint ptr %offset14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset14, align 4
  %add24.i = add i32 %39, %18
  store i32 %add24.i, ptr %offset14, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.end5.return_crit_edge, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 61, %entry.return_crit_edge ], [ 17, %if.end.return_crit_edge ], [ 2, %if.end3.return_crit_edge ], [ 13, %if.end5.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_nw_flash_read_part(ptr noundef %flash, i32 noundef %type, i8 noundef zeroext %instance, ptr noundef %buf, i32 noundef %len, i32 noundef %offset, ptr noundef %cbfn, ptr noundef %cbarg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flash, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %cmp.i = icmp eq ptr %3, @bfa_ioc_sm_op
  br i1 %cmp.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp ne i32 %len, 0
  %and = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end3:                                          ; preds = %if.end
  %op_busy = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 4
  %4 = ptrtoint ptr %op_busy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %op_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.return_crit_edge

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %op_busy to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %op_busy, align 4
  %cbfn8 = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 10
  %7 = ptrtoint ptr %cbfn8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cbfn, ptr %cbfn8, align 8
  %cbarg9 = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 11
  %8 = ptrtoint ptr %cbarg9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cbarg, ptr %cbarg9, align 4
  %type10 = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 1
  %9 = ptrtoint ptr %type10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %type, ptr %type10, align 4
  %instance11 = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 2
  %10 = ptrtoint ptr %instance11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %instance, ptr %instance11, align 8
  %residue = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 5
  %11 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %len, ptr %residue, align 8
  %offset12 = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 6
  %12 = ptrtoint ptr %offset12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %offset12, align 4
  %addr_off = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 13
  %13 = ptrtoint ptr %addr_off to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %offset, ptr %addr_off, align 4
  %ubuf = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 12
  %14 = ptrtoint ptr %ubuf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf, ptr %ubuf, align 8
  %type2.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 1
  %15 = ptrtoint ptr %type2.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %type, ptr %type2.i, align 1
  %instance3.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 2
  %16 = ptrtoint ptr %instance3.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %instance, ptr %instance3.i, align 1
  %offset4.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 3
  %17 = ptrtoint ptr %offset4.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %offset, ptr %offset4.i, align 1
  %18 = tail call i32 @llvm.umin.i32(i32 %len, i32 67584) #15
  %msg1.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3
  %mb.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14
  %length.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 4
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %length.i, align 1
  %20 = ptrtoint ptr %msg1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %msg1.i, align 1
  %msg_id.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg1.i, i32 0, i32 1
  %21 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %msg_id.i, align 1
  %port_id.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 18
  %22 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_id.i, align 1
  %mtag.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg1.i, i32 0, i32 2
  %fn_lpu.i = getelementptr inbounds %struct.anon.1, ptr %mtag.i, i32 0, i32 1
  %24 = ptrtoint ptr %fn_lpu.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %fn_lpu.i, align 1
  %alen.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 5
  %dbuf_pa.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 9
  %25 = ptrtoint ptr %dbuf_pa.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %dbuf_pa.i, align 8
  %al_len.i.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 7
  %27 = ptrtoint ptr %al_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %18, ptr %al_len.i.i, align 1
  %conv.i.i.i = trunc i64 %26 to i32
  %28 = ptrtoint ptr %alen.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %conv.i.i.i, ptr %alen.i, align 1
  %shr.i.i.i = lshr i64 %26, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %addr_hi.i.i.i = getelementptr inbounds %struct.bfa_flash, ptr %flash, i32 0, i32 14, i32 3, i32 6
  %29 = ptrtoint ptr %addr_hi.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %conv2.i.i.i, ptr %addr_hi.i.i.i, align 1
  %call.i = tail call zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef %1, ptr noundef %mb.i, ptr noundef null, ptr noundef null) #15
  br label %return

return:                                           ; preds = %if.end6, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 61, %entry.return_crit_edge ], [ 17, %if.end.return_crit_edge ], [ 13, %if.end3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bfa_nw_ioc_flash_img_get_chnk(ptr nocapture noundef readonly %ioc, i32 noundef %off, ptr nocapture noundef writeonly %fwimg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_bar_kva = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_bar_kva, align 4
  %mul = shl i32 %off, 2
  %add = add i32 %mul, 1048576
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 100384
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.not7.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.not7.i.i, label %entry.bfa_flash_sem_get.exit.i_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.bfa_flash_sem_get.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_flash_sem_get.exit.i

while.body.i.i:                                   ; preds = %while.body4.preheader.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %n.08.i.i = phi i32 [ %dec.i.i, %while.body4.preheader.i.i.while.body.i.i_crit_edge ], [ 500, %entry.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %n.08.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i.bfa_flash_raw_read.exit_crit_edge, label %while.body4.preheader.i.i

while.body.i.i.bfa_flash_raw_read.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_flash_raw_read.exit

while.body4.preheader.i.i:                        ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #15
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !156
  %tobool.not.i.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.not.i.i, label %while.body4.preheader.i.i.bfa_flash_sem_get.exit.i_crit_edge, label %while.body4.preheader.i.i.while.body.i.i_crit_edge

while.body4.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.body4.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

while.body4.preheader.i.i.bfa_flash_sem_get.exit.i_crit_edge: ; preds = %while.body4.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_flash_sem_get.exit.i

bfa_flash_sem_get.exit.i:                         ; preds = %while.body4.preheader.i.i.bfa_flash_sem_get.exit.i_crit_edge, %entry.bfa_flash_sem_get.exit.i_crit_edge
  %add.ptr.i.i2.i = getelementptr i8, ptr %1, i32 118788
  %add.ptr.i2.i.i = getelementptr i8, ptr %1, i32 118784
  %add.ptr.i6.i = getelementptr i8, ptr %1, i32 118800
  %add.ptr.i.i8.i = getelementptr i8, ptr %1, i32 118804
  br label %while.body.i

while.body.i:                                     ; preds = %bfa_flash_read_end.exit.i.while.body.i_crit_edge, %bfa_flash_sem_get.exit.i
  %residue.015.i = phi i32 [ 256, %bfa_flash_sem_get.exit.i ], [ %sub18.i, %bfa_flash_read_end.exit.i.while.body.i_crit_edge ]
  %off.014.i = phi i32 [ 0, %bfa_flash_sem_get.exit.i ], [ %add19.i, %bfa_flash_read_end.exit.i.while.body.i_crit_edge ]
  %add.i = add i32 %add, %off.014.i
  %14 = add i32 %add.i, 128
  %mul.i = and i32 %14, -128
  %sub.i = sub i32 %mul.i, %add.i
  %15 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %residue.015.i) #15
  %arrayidx.i = getelementptr i8, ptr %fwimg, i32 %off.014.i
  %16 = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %16)
  %17 = icmp ult i32 %16, 128
  %and.i.i = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp3.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond1.i.i = and i1 %17, %cmp3.not.i.i
  br i1 %or.cond1.i.i, label %if.end.i.i, label %while.body.i.if.then8.i_crit_edge

while.body.i.if.then8.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8.i

if.end.i.i:                                       ; preds = %while.body.i
  %call.i.i = tail call fastcc i32 @bfa_flash_status_read(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i)
  %cmp4.i.i = icmp eq i32 %call.i.i, -4
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end.i.i.if.end7.i.i_crit_edge

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call6.i.i = tail call fastcc i32 @bfa_flash_status_read(ptr noundef %1) #15
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %status.0.i.i = phi i32 [ %call6.i.i, %if.then5.i.i ], [ %call.i.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  %18 = and i32 %status.0.i.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %bfa_flash_read_start.exit.i, label %if.end7.i.i.if.then8.i_crit_edge

if.end7.i.i.if.then8.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8.i

bfa_flash_read_start.exit.i:                      ; preds = %if.end7.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !157
  tail call void @arm_heavy_mb() #15
  %20 = tail call i32 @llvm.bswap.i32(i32 %add.i) #15
  %21 = lshr i32 %20, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i, i32 %21) #15, !srcloc !128
  %conv4.i.i.i = shl nuw nsw i32 %15, 12
  %bf.shl7.i.i.i = and i32 %conv4.i.i.i, 1044480
  %bf.set20.i.i.i = or i32 %bf.shl7.i.i.i, -2147482613
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !158
  tail call void @arm_heavy_mb() #15
  %22 = tail call i32 @llvm.bswap.i32(i32 %bf.set20.i.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %22) #15, !srcloc !128
  br label %while.cond10.i

if.then8.i:                                       ; preds = %if.end7.i.i.if.then8.i_crit_edge, %while.body.i.if.then8.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !159
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #15, !srcloc !128
  br label %bfa_flash_raw_read.exit

while.cond10.i:                                   ; preds = %while.body13.i.while.cond10.i_crit_edge, %bfa_flash_read_start.exit.i
  %n.0.i = phi i32 [ %dec.i, %while.body13.i.while.cond10.i_crit_edge ], [ 1000000, %bfa_flash_read_start.exit.i ]
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !160
  %24 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.not.i = icmp eq i32 %24, 0
  br i1 %tobool12.not.i, label %while.end.i, label %while.body13.i

while.body13.i:                                   ; preds = %while.cond10.i
  %dec.i = add nsw i32 %n.0.i, -1
  %cmp14.i = icmp eq i32 %dec.i, 0
  br i1 %cmp14.i, label %if.then15.i, label %while.body13.i.while.cond10.i_crit_edge

while.body13.i.while.cond10.i_crit_edge:          ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond10.i

if.then15.i:                                      ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !159
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #15, !srcloc !128
  br label %bfa_flash_raw_read.exit

while.end.i:                                      ; preds = %while.cond10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp7.not.i.i = icmp eq i32 %15, 0
  br i1 %cmp7.not.i.i, label %while.end.i.for.end.i.i_crit_edge, label %while.end.i.for.body.i.i_crit_edge

while.end.i.for.body.i.i_crit_edge:               ; preds = %while.end.i
  br label %for.body.i.i

while.end.i.for.end.i.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %while.end.i.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %while.end.i.for.body.i.i_crit_edge ]
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !161
  %add.ptr2.i.i = getelementptr i8, ptr %arrayidx.i, i32 %i.08.i.i
  %26 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %add.ptr2.i.i, align 4
  %add.i.i = add i32 %i.08.i.i, 4
  %cmp.i7.i = icmp ult i32 %add.i.i, %15
  br i1 %cmp.i7.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %while.end.i.for.end.i.i_crit_edge
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i) #15, !srcloc !123
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !162
  %bf.lshr.i.i.i = lshr i32 %28, 5
  %bf.clear.i.i.i = and i32 %bf.lshr.i.i.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %bf.clear.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.end.i.i.bfa_flash_read_end.exit.i_crit_edge, label %for.end.i.i.for.body.i.i.i_crit_edge

for.end.i.i.for.body.i.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body.i.i.i

for.end.i.i.bfa_flash_read_end.exit.i_crit_edge:  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_flash_read_end.exit.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.end.i.i.for.body.i.i.i_crit_edge
  %i.045.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.end.i.i.for.body.i.i.i_crit_edge ]
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !163
  %inc.i.i.i = add nuw nsw i32 %i.045.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %bf.clear.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.for.body13.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

for.body.i.i.i.for.body13.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  br label %for.body13.i.i.i

for.body13.i.i.i:                                 ; preds = %for.body13.i.i.i.for.body13.i.i.i_crit_edge, %for.body.i.i.i.for.body13.i.i.i_crit_edge
  %i.146.i.i.i = phi i32 [ %inc27.i.i.i, %for.body13.i.i.i.for.body13.i.i.i_crit_edge ], [ 0, %for.body.i.i.i.for.body13.i.i.i_crit_edge ]
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !164
  %31 = and i32 %30, -536412160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool23.not.i.i.i = icmp eq i32 %31, 0
  %inc27.i.i.i = add nuw nsw i32 %i.146.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %inc27.i.i.i)
  %exitcond47.not.i.i.i = icmp eq i32 %inc27.i.i.i, 10000
  %or.cond.i.i = select i1 %tobool23.not.i.i.i, i1 true, i1 %exitcond47.not.i.i.i
  br i1 %or.cond.i.i, label %for.body13.i.i.i.bfa_flash_read_end.exit.i_crit_edge, label %for.body13.i.i.i.for.body13.i.i.i_crit_edge

for.body13.i.i.i.for.body13.i.i.i_crit_edge:      ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body13.i.i.i

for.body13.i.i.i.bfa_flash_read_end.exit.i_crit_edge: ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_flash_read_end.exit.i

bfa_flash_read_end.exit.i:                        ; preds = %for.body13.i.i.i.bfa_flash_read_end.exit.i_crit_edge, %for.end.i.i.bfa_flash_read_end.exit.i_crit_edge
  %sub18.i = sub i32 %residue.015.i, %15
  %add19.i = add i32 %15, %off.014.i
  %tobool.not.i = icmp eq i32 %sub18.i, 0
  br i1 %tobool.not.i, label %while.end20.i, label %bfa_flash_read_end.exit.i.while.body.i_crit_edge

bfa_flash_read_end.exit.i.while.body.i_crit_edge: ; preds = %bfa_flash_read_end.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.end20.i:                                    ; preds = %bfa_flash_read_end.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !159
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #15, !srcloc !128
  br label %bfa_flash_raw_read.exit

bfa_flash_raw_read.exit:                          ; preds = %while.end20.i, %if.then15.i, %if.then8.i, %while.body.i.i.bfa_flash_raw_read.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.then8.i ], [ 1, %if.then15.i ], [ 0, %while.end20.i ], [ 9, %while.body.i.i.bfa_flash_raw_read.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bfa_flash_status_read(ptr noundef %pci_bar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %pci_bar, i32 118804
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !123
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !162
  %bf.lshr.i = lshr i32 %1, 5
  %bf.clear.i = and i32 %bf.lshr.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i)
  %tobool.not.i = icmp eq i32 %bf.clear.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %for.body.preheader.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.preheader.i:                             ; preds = %entry
  %add.ptr7.i = getelementptr i8, ptr %pci_bar, i32 118800
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.045.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !163
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %bf.clear.i
  br i1 %exitcond.not.i, label %for.body.i.for.body13.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.for.body13.i_crit_edge:                ; preds = %for.body.i
  br label %for.body13.i

for.cond11.i:                                     ; preds = %for.body13.i
  %inc27.i = add nuw nsw i32 %i.146.i, 1
  %exitcond47.not.i = icmp eq i32 %inc27.i, 10000
  br i1 %exitcond47.not.i, label %for.cond11.i.cleanup_crit_edge, label %for.cond11.i.for.body13.i_crit_edge

for.cond11.i.for.body13.i_crit_edge:              ; preds = %for.cond11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body13.i

for.cond11.i.cleanup_crit_edge:                   ; preds = %for.cond11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body13.i:                                     ; preds = %for.cond11.i.for.body13.i_crit_edge, %for.body.i.for.body13.i_crit_edge
  %i.146.i = phi i32 [ %inc27.i, %for.cond11.i.for.body13.i_crit_edge ], [ 0, %for.body.i.for.body13.i_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !164
  %4 = and i32 %3, -536412160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool23.not.i = icmp eq i32 %4, 0
  br i1 %tobool23.not.i, label %for.body13.i.if.end_crit_edge, label %for.cond11.i

for.body13.i.if.end_crit_edge:                    ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %for.body13.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !158
  tail call void @arm_heavy_mb() #15
  %add.ptr.i39 = getelementptr i8, ptr %pci_bar, i32 118784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 88080512) #15, !srcloc !128
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %i.070 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.body_crit_edge ]
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !160
  %6 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i41 = icmp eq i32 %6, 0
  br i1 %tobool.not.i41, label %if.end7, label %for.cond

if.end7:                                          ; preds = %for.body
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !165
  %8 = and i32 %7, -536412160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %add.ptr15 = getelementptr i8, ptr %pci_bar, i32 118800
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !166
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !123
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !162
  %bf.lshr.i43 = lshr i32 %11, 5
  %bf.clear.i44 = and i32 %bf.lshr.i43, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i44)
  %tobool.not.i45 = icmp eq i32 %bf.clear.i44, 0
  br i1 %tobool.not.i45, label %if.end12.bfa_flash_fifo_flush.exit59.thread_crit_edge, label %if.end12.for.body.i51_crit_edge

if.end12.for.body.i51_crit_edge:                  ; preds = %if.end12
  br label %for.body.i51

if.end12.bfa_flash_fifo_flush.exit59.thread_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_flash_fifo_flush.exit59.thread

for.body.i51:                                     ; preds = %for.body.i51.for.body.i51_crit_edge, %if.end12.for.body.i51_crit_edge
  %i.045.i48 = phi i32 [ %inc.i49, %for.body.i51.for.body.i51_crit_edge ], [ 0, %if.end12.for.body.i51_crit_edge ]
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !163
  %inc.i49 = add nuw nsw i32 %i.045.i48, 1
  %exitcond.not.i50 = icmp eq i32 %inc.i49, %bf.clear.i44
  br i1 %exitcond.not.i50, label %for.body.i51.for.body13.i57_crit_edge, label %for.body.i51.for.body.i51_crit_edge

for.body.i51.for.body.i51_crit_edge:              ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i51

for.body.i51.for.body13.i57_crit_edge:            ; preds = %for.body.i51
  br label %for.body13.i57

for.cond11.i54:                                   ; preds = %for.body13.i57
  %inc27.i52 = add nuw nsw i32 %i.146.i55, 1
  %exitcond47.not.i53 = icmp eq i32 %inc27.i52, 10000
  br i1 %exitcond47.not.i53, label %for.cond11.i54.cleanup_crit_edge, label %for.cond11.i54.for.body13.i57_crit_edge

for.cond11.i54.for.body13.i57_crit_edge:          ; preds = %for.cond11.i54
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body13.i57

for.cond11.i54.cleanup_crit_edge:                 ; preds = %for.cond11.i54
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body13.i57:                                   ; preds = %for.cond11.i54.for.body13.i57_crit_edge, %for.body.i51.for.body13.i57_crit_edge
  %i.146.i55 = phi i32 [ %inc27.i52, %for.cond11.i54.for.body13.i57_crit_edge ], [ 0, %for.body.i51.for.body13.i57_crit_edge ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !164
  %14 = and i32 %13, -536412160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool23.not.i56 = icmp eq i32 %14, 0
  br i1 %tobool23.not.i56, label %for.body13.i57.bfa_flash_fifo_flush.exit59.thread_crit_edge, label %for.cond11.i54

for.body13.i57.bfa_flash_fifo_flush.exit59.thread_crit_edge: ; preds = %for.body13.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_flash_fifo_flush.exit59.thread

bfa_flash_fifo_flush.exit59.thread:               ; preds = %for.body13.i57.bfa_flash_fifo_flush.exit59.thread_crit_edge, %if.end12.bfa_flash_fifo_flush.exit59.thread_crit_edge
  %15 = and i32 %9, 255
  br label %cleanup

cleanup:                                          ; preds = %bfa_flash_fifo_flush.exit59.thread, %for.cond11.i54.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond11.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %if.end7.cleanup_crit_edge ], [ %15, %bfa_flash_fifo_flush.exit59.thread ], [ -6, %for.cond11.i54.cleanup_crit_edge ], [ -5, %for.cond.cleanup_crit_edge ], [ -6, %for.cond11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_sm_reset(ptr noundef %ioc, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %event, label %do.end8 [
    i32 2, label %do.body
    i32 3, label %sw.bb1
    i32 4, label %do.body3
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bfa_ioc_sm_enabling, ptr %ioc, align 8
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %2 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocpf.i.i, align 8
  tail call void %3(ptr noundef %iocpf.i.i, i32 noundef 1) #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %cbfn.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 21
  %4 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cbfn.i, align 4
  %disable_cbfn.i = getelementptr inbounds %struct.bfa_ioc_cbfn, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %disable_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_cbfn.i, align 4
  %bfa.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 1
  %8 = ptrtoint ptr %bfa.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bfa.i, align 4
  tail call void %7(ptr noundef %9) #15
  %notify_q.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 8
  %10 = ptrtoint ptr %notify_q.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %notify.011.i.i = load ptr, ptr %notify_q.i.i, align 4
  %cmp.not12.i.i = icmp eq ptr %notify.011.i.i, %notify_q.i.i
  br i1 %cmp.not12.i.i, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.for.body.i.i_crit_edge

sw.bb1.for.body.i.i_crit_edge:                    ; preds = %sw.bb1
  br label %for.body.i.i

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb1.for.body.i.i_crit_edge
  %notify.013.i.i = phi ptr [ %notify.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %notify.011.i.i, %sw.bb1.for.body.i.i_crit_edge ]
  %cbfn.i.i = getelementptr inbounds %struct.bfa_ioc_notify, ptr %notify.013.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %cbfn.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cbfn.i.i, align 4
  %cbarg.i.i = getelementptr inbounds %struct.bfa_ioc_notify, ptr %notify.013.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %cbarg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cbarg.i.i, align 4
  tail call void %12(ptr noundef %14, i32 noundef 2) #15
  %15 = ptrtoint ptr %notify.013.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %notify.0.i.i = load ptr, ptr %notify.013.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %notify.0.i.i, %notify_q.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.sw.epilog_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.sw.epilog_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @bfa_ioc_sm_uninit, ptr %ioc, align 8
  br label %sw.epilog

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 250, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end8, %do.body3, %for.body.i.i.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %do.body
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_sm_enabling(ptr noundef %ioc, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %event, label %do.end23 [
    i32 5, label %do.body
    i32 8, label %entry.sw.bb2_crit_edge
    i32 10, label %entry.sw.bb2_crit_edge43
    i32 12, label %sw.bb6
    i32 3, label %do.body14
    i32 4, label %do.body18
    i32 2, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

entry.sw.bb2_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb2

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bfa_ioc_sm_getattr, ptr %ioc, align 8
  tail call fastcc void @bfa_ioc_sm_getattr_entry(ptr noundef %ioc)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge43
  %cbfn = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 21
  %2 = ptrtoint ptr %cbfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cbfn, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bfa = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 1
  %6 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bfa, align 4
  tail call void %5(ptr noundef %7, i32 noundef 56) #15
  %8 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bfa_ioc_sm_fail, ptr %ioc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %event)
  %cmp.not = icmp eq i32 %event, 8
  br i1 %cmp.not, label %sw.bb2.sw.epilog_crit_edge, label %if.then

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %9 = ptrtoint ptr %iocpf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iocpf.i, align 8
  tail call void %10(ptr noundef %iocpf.i, i32 noundef 8) #15
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cbfn7 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 21
  %11 = ptrtoint ptr %cbfn7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cbfn7, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %bfa9 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 1
  %15 = ptrtoint ptr %bfa9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bfa9, align 4
  tail call void %14(ptr noundef %16, i32 noundef 56) #15
  %17 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_ioc_sm_hwfail, ptr %ioc, align 8
  br label %sw.epilog

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfa_ioc_sm_disabling, ptr %ioc, align 8
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %19 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iocpf.i.i, align 8
  tail call void %20(ptr noundef %iocpf.i.i, i32 noundef 2) #15
  br label %sw.epilog

do.body18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @bfa_ioc_sm_uninit, ptr %ioc, align 8
  %iocpf.i42 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %22 = ptrtoint ptr %iocpf.i42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iocpf.i42, align 8
  tail call void %23(ptr noundef %iocpf.i42, i32 noundef 3) #15
  br label %sw.epilog

do.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 298, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end23, %do.body18, %do.body14, %sw.bb6, %if.then, %sw.bb2.sw.epilog_crit_edge, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_sm_getattr(ptr noundef %ioc, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %event, label %do.end16 [
    i32 6, label %sw.bb
    i32 8, label %entry.sw.bb1_crit_edge
    i32 10, label %entry.sw.bb1_crit_edge32
    i32 11, label %entry.sw.bb4_crit_edge
    i32 3, label %sw.bb8
    i32 2, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb4

entry.sw.bb1_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  %ioc_timer = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 3
  %call = tail call i32 @del_timer(ptr noundef %ioc_timer) #15
  %1 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bfa_ioc_sm_op, ptr %ioc, align 8
  %cbfn.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 21
  %2 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cbfn.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bfa.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 1
  %6 = ptrtoint ptr %bfa.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bfa.i, align 4
  tail call void %5(ptr noundef %7, i32 noundef 0) #15
  %notify_q.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 8
  %8 = ptrtoint ptr %notify_q.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %notify.011.i.i = load ptr, ptr %notify_q.i.i, align 4
  %cmp.not12.i.i = icmp eq ptr %notify.011.i.i, %notify_q.i.i
  br i1 %cmp.not12.i.i, label %sw.bb.bfa_ioc_sm_op_entry.exit_crit_edge, label %sw.bb.for.body.i.i_crit_edge

sw.bb.for.body.i.i_crit_edge:                     ; preds = %sw.bb
  br label %for.body.i.i

sw.bb.bfa_ioc_sm_op_entry.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_sm_op_entry.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb.for.body.i.i_crit_edge
  %notify.013.i.i = phi ptr [ %notify.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %notify.011.i.i, %sw.bb.for.body.i.i_crit_edge ]
  %cbfn.i.i = getelementptr inbounds %struct.bfa_ioc_notify, ptr %notify.013.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %cbfn.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cbfn.i.i, align 4
  %cbarg.i.i = getelementptr inbounds %struct.bfa_ioc_notify, ptr %notify.013.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %cbarg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cbarg.i.i, align 4
  tail call void %10(ptr noundef %12, i32 noundef 1) #15
  %13 = ptrtoint ptr %notify.013.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %notify.0.i.i = load ptr, ptr %notify.013.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %notify.0.i.i, %notify_q.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.bfa_ioc_sm_op_entry.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.bfa_ioc_sm_op_entry.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_sm_op_entry.exit

bfa_ioc_sm_op_entry.exit:                         ; preds = %for.body.i.i.bfa_ioc_sm_op_entry.exit_crit_edge, %sw.bb.bfa_ioc_sm_op_entry.exit_crit_edge
  %heartbeat.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 14
  %14 = ptrtoint ptr %heartbeat.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %heartbeat.i.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #15, !srcloc !123
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !167
  %hb_count.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 7
  %18 = ptrtoint ptr %hb_count.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %hb_count.i.i, align 8
  %hb_timer.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %19, 50
  %call3.i.i = tail call i32 @mod_timer(ptr noundef %hb_timer.i.i, i32 noundef %add.i.i) #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge32
  %ioc_timer2 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 3
  %call3 = tail call i32 @del_timer(ptr noundef %ioc_timer2) #15
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb1, %entry.sw.bb4_crit_edge
  %cbfn = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 21
  %20 = ptrtoint ptr %cbfn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cbfn, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %bfa = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 1
  %24 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bfa, align 4
  tail call void %23(ptr noundef %25, i32 noundef 56) #15
  %26 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bfa_ioc_sm_fail, ptr %ioc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %event)
  %cmp.not = icmp eq i32 %event, 8
  br i1 %cmp.not, label %sw.bb4.sw.epilog_crit_edge, label %if.then

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %27 = ptrtoint ptr %iocpf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iocpf.i, align 8
  tail call void %28(ptr noundef %iocpf.i, i32 noundef 9) #15
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ioc_timer9 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 3
  %call10 = tail call i32 @del_timer(ptr noundef %ioc_timer9) #15
  %29 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @bfa_ioc_sm_disabling, ptr %ioc, align 8
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %30 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iocpf.i.i, align 8
  tail call void %31(ptr noundef %iocpf.i.i, i32 noundef 2) #15
  br label %sw.epilog

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 341, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end16, %sw.bb8, %if.then, %sw.bb4.sw.epilog_crit_edge, %bfa_ioc_sm_op_entry.exit, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_ioc_sm_getattr_entry(ptr noundef %ioc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_timer = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 300
  %call1 = tail call i32 @mod_timer(ptr noundef %ioc_timer, i32 noundef %add) #15
  %port_id.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 18
  %1 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %port_id.i, align 1
  %pa.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 19, i32 1
  %3 = ptrtoint ptr %pa.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %pa.i, align 8
  %conv.i.i = trunc i64 %4 to i32
  %shr.i.i = lshr i64 %4, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %hfn_mbox.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %attr_req.sroa.0.sroa.7.sroa.4.0.insert.ext.i = zext i8 %2 to i32
  %attr_req.sroa.0.sroa.0.0.insert.insert.i = or i32 %attr_req.sroa.0.sroa.7.sroa.4.0.insert.ext.i, 17039104
  %5 = ptrtoint ptr %hfn_mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hfn_mbox.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %attr_req.sroa.0.sroa.0.0.insert.insert.i) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %7 = ptrtoint ptr %hfn_mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hfn_mbox.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 %conv.i.i) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %9 = ptrtoint ptr %hfn_mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hfn_mbox.i.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i, i32 %conv2.i.i) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %11 = ptrtoint ptr %hfn_mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hfn_mbox.i.i, align 4
  %add.ptr22.i.i = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %13 = ptrtoint ptr %hfn_mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hfn_mbox.i.i, align 4
  %add.ptr22.i.1.i = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.1.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %15 = ptrtoint ptr %hfn_mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hfn_mbox.i.i, align 4
  %add.ptr22.i.2.i = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.2.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %17 = ptrtoint ptr %hfn_mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hfn_mbox.i.i, align 4
  %add.ptr22.i.3.i = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.3.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %19 = ptrtoint ptr %hfn_mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hfn_mbox.i.i, align 4
  %add.ptr22.i.4.i = getelementptr i8, ptr %20, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.4.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !135
  tail call void @arm_heavy_mb() #15
  %ioc_regs29.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13
  %21 = ptrtoint ptr %ioc_regs29.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioc_regs29.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 16777216) #15, !srcloc !128
  %23 = ptrtoint ptr %ioc_regs29.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioc_regs29.i.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_sm_fail(ptr noundef %ioc, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %event, label %do.end8 [
    i32 2, label %sw.bb
    i32 3, label %do.body
    i32 4, label %do.body3
    i32 10, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cbfn = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 21
  %1 = ptrtoint ptr %cbfn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cbfn, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %bfa = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 1
  %5 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bfa, align 4
  tail call void %4(ptr noundef %6, i32 noundef 56) #15
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bfa_ioc_sm_disabling, ptr %ioc, align 8
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %8 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iocpf.i.i, align 8
  tail call void %9(ptr noundef %iocpf.i.i, i32 noundef 2) #15
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bfa_ioc_sm_uninit, ptr %ioc, align 8
  %iocpf.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %11 = ptrtoint ptr %iocpf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iocpf.i, align 8
  tail call void %12(ptr noundef %iocpf.i, i32 noundef 3) #15
  br label %sw.epilog

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 525, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end8, %do.body3, %do.body, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_sm_hwfail(ptr nocapture noundef %ioc, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %event, label %do.end7 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %do.body
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cbfn = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 21
  %1 = ptrtoint ptr %cbfn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cbfn, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %bfa = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 1
  %5 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bfa, align 4
  tail call void %4(ptr noundef %6, i32 noundef 56) #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cbfn2 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 21
  %7 = ptrtoint ptr %cbfn2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cbfn2, align 4
  %disable_cbfn = getelementptr inbounds %struct.bfa_ioc_cbfn, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %disable_cbfn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disable_cbfn, align 4
  %bfa3 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 1
  %11 = ptrtoint ptr %bfa3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bfa3, align 4
  tail call void %10(ptr noundef %12) #15
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bfa_ioc_sm_uninit, ptr %ioc, align 8
  br label %sw.epilog

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 553, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end7, %do.body, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocpf_sm_reset(ptr nocapture noundef %iocpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %event, label %do.end3 [
    i32 1, label %do.body
    i32 3, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bfa_iocpf_sm_fwcheck, ptr %iocpf, align 4
  tail call fastcc void @bfa_iocpf_sm_fwcheck_entry(ptr noundef %iocpf)
  br label %sw.epilog

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 580, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end3, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocpf_sm_fwcheck(ptr nocapture noundef %iocpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %event, label %do.end33 [
    i32 10, label %sw.bb
    i32 12, label %do.body16
    i32 2, label %sw.bb20
    i32 3, label %sw.bb25
  ]

sw.bb:                                            ; preds = %entry
  %ioc_hwif = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc_hwif, align 4
  %ioc_firmware_lock = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ioc_firmware_lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioc_firmware_lock, align 4
  %call = tail call zeroext i1 %6(ptr noundef %1) #15
  br i1 %call, label %if.then, label %if.else9

if.then:                                          ; preds = %sw.bb
  %7 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_hwif, align 4
  %ioc_sync_start = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %ioc_sync_start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioc_sync_start, align 4
  %call3 = tail call zeroext i1 %10(ptr noundef %1) #15
  %11 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioc_hwif, align 4
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %ioc_sync_join = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %ioc_sync_join to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioc_sync_join, align 4
  tail call void %14(ptr noundef %1) #15
  %15 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @bfa_iocpf_sm_hwinit, ptr %iocpf, align 4
  tail call fastcc void @bfa_iocpf_sm_hwinit_entry(ptr noundef %iocpf)
  br label %sw.epilog

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %ioc_firmware_unlock = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %12, i32 0, i32 2
  %16 = ptrtoint ptr %ioc_firmware_unlock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioc_firmware_unlock, align 4
  tail call void %17(ptr noundef %1) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @arm_heavy_mb() #15
  %ioc_sem_reg.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 9
  %18 = ptrtoint ptr %ioc_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioc_sem_reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 16777216) #15, !srcloc !128
  %sem_timer = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %20, 50
  %call8 = tail call i32 @mod_timer(ptr noundef %sem_timer, i32 noundef %add) #15
  br label %sw.epilog

if.else9:                                         ; preds = %sw.bb
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @arm_heavy_mb() #15
  %ioc_sem_reg.i62 = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 9
  %21 = ptrtoint ptr %ioc_sem_reg.i62 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioc_sem_reg.i62, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 16777216) #15, !srcloc !128
  %23 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bfa_iocpf_sm_mismatch, ptr %iocpf, align 4
  %fw_mismatch_notified.i = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 2
  %24 = ptrtoint ptr %fw_mismatch_notified.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fw_mismatch_notified.i, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else9.bfa_iocpf_sm_mismatch_entry.exit_crit_edge

if.else9.bfa_iocpf_sm_mismatch_entry.exit_crit_edge: ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_iocpf_sm_mismatch_entry.exit

if.then.i:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioc1, align 4
  %cbfn.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %27, i32 0, i32 21
  %28 = ptrtoint ptr %cbfn.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cbfn.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %bfa.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %bfa.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bfa.i.i, align 4
  tail call void %31(ptr noundef %33, i32 noundef 56) #15
  br label %bfa_iocpf_sm_mismatch_entry.exit

bfa_iocpf_sm_mismatch_entry.exit:                 ; preds = %if.then.i, %if.else9.bfa_iocpf_sm_mismatch_entry.exit_crit_edge
  %34 = ptrtoint ptr %fw_mismatch_notified.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %fw_mismatch_notified.i, align 4
  %35 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioc1, align 4
  %iocpf_timer.i = getelementptr inbounds %struct.bfa_ioc, ptr %36, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %37, 300
  %call3.i = tail call i32 @mod_timer(ptr noundef %iocpf_timer.i, i32 noundef %add.i) #15
  br label %sw.epilog

do.body16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @bfa_iocpf_sm_fail, ptr %iocpf, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  tail call void %40(ptr noundef %1, i32 noundef 12) #15
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sem_timer.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 5
  %call.i = tail call i32 @del_timer(ptr noundef %sem_timer.i) #15
  %41 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bfa_iocpf_sm_reset, ptr %iocpf, align 4
  %fw_mismatch_notified.i63 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 2
  %42 = ptrtoint ptr %fw_mismatch_notified.i63 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %fw_mismatch_notified.i63, align 4
  %43 = load i8, ptr @bfa_nw_auto_recover, align 1, !range !143
  %auto_recover.i = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 3
  %44 = ptrtoint ptr %auto_recover.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %auto_recover.i, align 1
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  tail call void %46(ptr noundef %1, i32 noundef 7) #15
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sem_timer.i64 = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 5
  %call.i65 = tail call i32 @del_timer(ptr noundef %sem_timer.i64) #15
  %47 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @bfa_iocpf_sm_reset, ptr %iocpf, align 4
  %fw_mismatch_notified.i66 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 2
  %48 = ptrtoint ptr %fw_mismatch_notified.i66 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %fw_mismatch_notified.i66, align 4
  %49 = load i8, ptr @bfa_nw_auto_recover, align 1, !range !143
  %auto_recover.i67 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 3
  %50 = ptrtoint ptr %auto_recover.i67 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %auto_recover.i67, align 1
  br label %sw.epilog

do.end33:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 633, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end33, %sw.bb25, %sw.bb20, %do.body16, %bfa_iocpf_sm_mismatch_entry.exit, %if.else, %if.then4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_iocpf_sm_fwcheck_entry(ptr nocapture noundef readonly %iocpf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %0 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc, align 4
  %ioc_init_sem_reg.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %ioc_init_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc_init_sem_reg.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !169
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not68.i = icmp eq i32 %5, 0
  br i1 %tobool.not68.i, label %entry.while.end.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 4294960) #15
  %7 = ptrtoint ptr %ioc_init_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_init_sem_reg.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !170
  %10 = and i32 %9, 16777216
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %ioc_hwif.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 23
  %11 = ptrtoint ptr %ioc_hwif.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioc_hwif.i, align 4
  %ioc_get_fwstate.i = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %ioc_get_fwstate.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioc_get_fwstate.i, align 4
  %call9.i = tail call i32 %14(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i = icmp eq i32 %call9.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @arm_heavy_mb() #15
  %15 = ptrtoint ptr %ioc_init_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioc_init_sem_reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 16777216) #15, !srcloc !128
  br label %bfa_ioc_hw_sem_init.exit

if.end.i:                                         ; preds = %while.end.i
  %smem_pg0.i.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 24
  %17 = ptrtoint ptr %smem_pg0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %smem_pg0.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !130
  tail call void @arm_heavy_mb() #15
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #15
  %host_page_num_fn.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 13
  %20 = ptrtoint ptr %host_page_num_fn.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host_page_num_fn.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #15, !srcloc !128
  %smem_page_start.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 23
  %22 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %smem_page_start.i.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %25 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.1.i.i = getelementptr i8, ptr %26, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %28 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.2.i.i = getelementptr i8, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %31 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.3.i.i = getelementptr i8, ptr %32, i32 12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %34 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.4.i.i = getelementptr i8, ptr %35, i32 16
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %37 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.5.i.i = getelementptr i8, ptr %38, i32 20
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %40 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.6.i.i = getelementptr i8, ptr %41, i32 24
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %43 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.7.i.i = getelementptr i8, ptr %44, i32 28
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %46 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.8.i.i = getelementptr i8, ptr %47, i32 32
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.8.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %49 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.9.i.i = getelementptr i8, ptr %50, i32 36
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.9.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %52 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.10.i.i = getelementptr i8, ptr %53, i32 40
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.10.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %55 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.11.i.i = getelementptr i8, ptr %56, i32 44
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.11.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp12.i = icmp eq i32 %30, 0
  br i1 %cmp12.i, label %do.body14.i, label %if.end19.i

do.body14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !172
  tail call void @arm_heavy_mb() #15
  %58 = ptrtoint ptr %ioc_init_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ioc_init_sem_reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 16777216) #15, !srcloc !128
  br label %bfa_ioc_hw_sem_init.exit

if.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %60 = ptrtoint ptr %smem_pg0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %smem_pg0.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !173
  tail call void @arm_heavy_mb() #15
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #15
  %63 = ptrtoint ptr %host_page_num_fn.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %host_page_num_fn.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !174
  tail call void @arm_heavy_mb() #15
  %65 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %smem_page_start.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !174
  tail call void @arm_heavy_mb() #15
  %67 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.1.i56.i = getelementptr i8, ptr %68, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i56.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !174
  tail call void @arm_heavy_mb() #15
  %69 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.2.i57.i = getelementptr i8, ptr %70, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i57.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !174
  tail call void @arm_heavy_mb() #15
  %71 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.3.i58.i = getelementptr i8, ptr %72, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i58.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !174
  tail call void @arm_heavy_mb() #15
  %73 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.4.i59.i = getelementptr i8, ptr %74, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4.i59.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !174
  tail call void @arm_heavy_mb() #15
  %75 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.5.i60.i = getelementptr i8, ptr %76, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5.i60.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !174
  tail call void @arm_heavy_mb() #15
  %77 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.6.i61.i = getelementptr i8, ptr %78, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.6.i61.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !174
  tail call void @arm_heavy_mb() #15
  %79 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.7.i62.i = getelementptr i8, ptr %80, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.7.i62.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !174
  tail call void @arm_heavy_mb() #15
  %81 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.8.i63.i = getelementptr i8, ptr %82, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.8.i63.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !174
  tail call void @arm_heavy_mb() #15
  %83 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.9.i64.i = getelementptr i8, ptr %84, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.9.i64.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !174
  tail call void @arm_heavy_mb() #15
  %85 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.10.i65.i = getelementptr i8, ptr %86, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.10.i65.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !174
  tail call void @arm_heavy_mb() #15
  %87 = ptrtoint ptr %smem_page_start.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %smem_page_start.i.i, align 4
  %add.ptr.11.i66.i = getelementptr i8, ptr %88, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.11.i66.i, i32 0) #15, !srcloc !128
  %89 = ptrtoint ptr %ioc_hwif.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ioc_hwif.i, align 4
  %ioc_set_fwstate.i = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %90, i32 0, i32 14
  %91 = ptrtoint ptr %ioc_set_fwstate.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ioc_set_fwstate.i, align 4
  tail call void %92(ptr noundef %1, i32 noundef 0) #15
  %93 = ptrtoint ptr %ioc_hwif.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ioc_hwif.i, align 4
  %ioc_set_alt_fwstate.i = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %94, i32 0, i32 16
  %95 = ptrtoint ptr %ioc_set_alt_fwstate.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ioc_set_alt_fwstate.i, align 4
  tail call void %96(ptr noundef %1, i32 noundef 0) #15
  %ioc_sem_reg.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 9
  %97 = ptrtoint ptr %ioc_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ioc_sem_reg.i, align 4
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !176
  tail call void @arm_heavy_mb() #15
  %100 = ptrtoint ptr %ioc_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ioc_sem_reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 16777216) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !177
  tail call void @arm_heavy_mb() #15
  %102 = ptrtoint ptr %ioc_init_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ioc_init_sem_reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 16777216) #15, !srcloc !128
  br label %bfa_ioc_hw_sem_init.exit

bfa_ioc_hw_sem_init.exit:                         ; preds = %if.end19.i, %do.body14.i, %do.body.i
  %104 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ioc, align 4
  %ioc_sem_reg.i3 = getelementptr inbounds %struct.bfa_ioc, ptr %105, i32 0, i32 13, i32 9
  %106 = ptrtoint ptr %ioc_sem_reg.i3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ioc_sem_reg.i3, align 4
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %cmp.i4 = icmp eq i32 %108, -1
  br i1 %cmp.i4, label %if.then.i, label %if.end.i6

if.then.i:                                        ; preds = %bfa_ioc_hw_sem_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i = getelementptr inbounds %struct.bfa_ioc, ptr %105, i32 0, i32 24
  %109 = ptrtoint ptr %iocpf.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %iocpf.i, align 8
  tail call void %110(ptr noundef %iocpf.i, i32 noundef 12) #15
  br label %bfa_ioc_hw_sem_get.exit

if.end.i6:                                        ; preds = %bfa_ioc_hw_sem_init.exit
  %111 = and i32 %108, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i5 = icmp eq i32 %111, 0
  br i1 %tobool.not.i5, label %if.then3.i, label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf4.i = getelementptr inbounds %struct.bfa_ioc, ptr %105, i32 0, i32 24
  %112 = ptrtoint ptr %iocpf4.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %iocpf4.i, align 8
  tail call void %113(ptr noundef %iocpf4.i, i32 noundef 10) #15
  br label %bfa_ioc_hw_sem_get.exit

if.end7.i:                                        ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #17
  %sem_timer.i = getelementptr inbounds %struct.bfa_ioc, ptr %105, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %114 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %114, 50
  %call9.i7 = tail call i32 @mod_timer(ptr noundef %sem_timer.i, i32 noundef %add.i) #15
  br label %bfa_ioc_hw_sem_get.exit

bfa_ioc_hw_sem_get.exit:                          ; preds = %if.end7.i, %if.then3.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocpf_sm_hwinit(ptr nocapture noundef %iocpf, i32 noundef %event) #0 align 64 {
entry:
  %tlen.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %event, label %do.end15 [
    i32 4, label %do.body
    i32 11, label %sw.bb2
    i32 2, label %sw.bb7
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bfa_iocpf_sm_enabling, ptr %iocpf, align 4
  %iocpf_timer.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %4, 300
  %call1.i = tail call i32 @mod_timer(ptr noundef %iocpf_timer.i, i32 noundef %add.i) #15
  %5 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioc1, align 4
  %cbfn.i = getelementptr inbounds %struct.bfa_ioc, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cbfn.i, align 4
  %reset_cbfn.i = getelementptr inbounds %struct.bfa_ioc_cbfn, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %reset_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_cbfn.i, align 4
  %bfa.i = getelementptr inbounds %struct.bfa_ioc, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %bfa.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bfa.i, align 4
  tail call void %10(ptr noundef %12) #15
  %13 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioc1, align 4
  %port_id.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %port_id.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port_id.i.i, align 1
  %clscode.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %14, i32 0, i32 12
  %17 = ptrtoint ptr %clscode.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clscode.i.i, align 8
  %call.i.i = tail call i64 @ktime_get_real_seconds() #15
  %conv4.i.i = trunc i64 %call.i.i to i32
  %hfn_mbox.i.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %14, i32 0, i32 13, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %enable_req.sroa.0.sroa.7.sroa.4.0.insert.ext.i.i = zext i8 %16 to i32
  %enable_req.sroa.0.sroa.0.0.insert.insert.i.i = or i32 %enable_req.sroa.0.sroa.7.sroa.4.0.insert.ext.i.i, 16908032
  %19 = ptrtoint ptr %hfn_mbox.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hfn_mbox.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %enable_req.sroa.0.sroa.0.0.insert.insert.i.i) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %enable_req.sroa.9.sroa.0.0.insert.shift.i.i = shl i32 %18, 16
  %21 = ptrtoint ptr %hfn_mbox.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hfn_mbox.i.i.i, align 4
  %add.ptr.i.1.i.i = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i.i, i32 %enable_req.sroa.9.sroa.0.0.insert.shift.i.i) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %23 = ptrtoint ptr %hfn_mbox.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hfn_mbox.i.i.i, align 4
  %add.ptr.i.2.i.i = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i.i, i32 %conv4.i.i) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %25 = ptrtoint ptr %hfn_mbox.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hfn_mbox.i.i.i, align 4
  %add.ptr22.i.i.i = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.i.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %27 = ptrtoint ptr %hfn_mbox.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hfn_mbox.i.i.i, align 4
  %add.ptr22.i.1.i.i = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.1.i.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %29 = ptrtoint ptr %hfn_mbox.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hfn_mbox.i.i.i, align 4
  %add.ptr22.i.2.i.i = getelementptr i8, ptr %30, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.2.i.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %31 = ptrtoint ptr %hfn_mbox.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hfn_mbox.i.i.i, align 4
  %add.ptr22.i.3.i.i = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.3.i.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %33 = ptrtoint ptr %hfn_mbox.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hfn_mbox.i.i.i, align 4
  %add.ptr22.i.4.i.i = getelementptr i8, ptr %34, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.4.i.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !135
  tail call void @arm_heavy_mb() #15
  %ioc_regs29.i.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %14, i32 0, i32 13
  %35 = ptrtoint ptr %ioc_regs29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioc_regs29.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 16777216) #15, !srcloc !128
  %37 = ptrtoint ptr %ioc_regs29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioc_regs29.i.i.i, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @arm_heavy_mb() #15
  %ioc_sem_reg.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 9
  %40 = ptrtoint ptr %ioc_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioc_sem_reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 16777216) #15, !srcloc !128
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  tail call void %43(ptr noundef %1, i32 noundef 8) #15
  %44 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @bfa_iocpf_sm_initfail_sync, ptr %iocpf, align 4
  %45 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ioc1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tlen.i.i) #15
  %dbg_fwsave_once.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %dbg_fwsave_once.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dbg_fwsave_once.i.i, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i.i, label %sw.bb2.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge, label %if.then.i.i

sw.bb2.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge: ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_nw_ioc_debug_save_ftrc.exit.i

if.then.i.i:                                      ; preds = %sw.bb2
  %49 = ptrtoint ptr %dbg_fwsave_once.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %dbg_fwsave_once.i.i, align 4
  %dbg_fwsave_len.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %46, i32 0, i32 10
  %50 = ptrtoint ptr %dbg_fwsave_len.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dbg_fwsave_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool2.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge, label %if.then3.i.i

if.then.i.i.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_nw_ioc_debug_save_ftrc.exit.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %52 = ptrtoint ptr %tlen.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %tlen.i.i, align 4
  %dbg_fwsave.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %46, i32 0, i32 9
  %53 = ptrtoint ptr %dbg_fwsave.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dbg_fwsave.i.i, align 4
  %call.i.i32 = call i32 @bfa_nw_ioc_debug_fwtrc(ptr noundef %46, ptr noundef %54, ptr noundef nonnull %tlen.i.i) #15
  br label %bfa_nw_ioc_debug_save_ftrc.exit.i

bfa_nw_ioc_debug_save_ftrc.exit.i:                ; preds = %if.then3.i.i, %if.then.i.i.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge, %sw.bb2.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tlen.i.i) #15
  %55 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ioc1, align 4
  %ioc_sem_reg.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %56, i32 0, i32 13, i32 9
  %57 = ptrtoint ptr %ioc_sem_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ioc_sem_reg.i.i, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp.i.i = icmp eq i32 %59, -1
  br i1 %cmp.i.i, label %if.then.i3.i, label %if.end.i.i

if.then.i3.i:                                     ; preds = %bfa_nw_ioc_debug_save_ftrc.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %56, i32 0, i32 24
  %60 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iocpf.i.i, align 8
  tail call void %61(ptr noundef %iocpf.i.i, i32 noundef 12) #15
  br label %sw.epilog

if.end.i.i:                                       ; preds = %bfa_nw_ioc_debug_save_ftrc.exit.i
  %62 = and i32 %59, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i4.i = icmp eq i32 %62, 0
  br i1 %tobool.not.i4.i, label %if.then3.i5.i, label %if.end7.i.i

if.then3.i5.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf4.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %56, i32 0, i32 24
  %63 = ptrtoint ptr %iocpf4.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iocpf4.i.i, align 8
  tail call void %64(ptr noundef %iocpf4.i.i, i32 noundef 10) #15
  br label %sw.epilog

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sem_timer.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %56, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %65, 50
  %call9.i.i = tail call i32 @mod_timer(ptr noundef %sem_timer.i.i, i32 noundef %add.i.i) #15
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %iocpf_timer = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 4
  %call = tail call i32 @del_timer(ptr noundef %iocpf_timer) #15
  %ioc_hwif = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 23
  %66 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ioc_hwif, align 4
  %ioc_sync_leave = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %ioc_sync_leave to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ioc_sync_leave, align 4
  tail call void %69(ptr noundef %1) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @arm_heavy_mb() #15
  %ioc_sem_reg.i33 = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 9
  %70 = ptrtoint ptr %ioc_sem_reg.i33 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ioc_sem_reg.i33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 16777216) #15, !srcloc !128
  %72 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @bfa_iocpf_sm_disabled, ptr %iocpf, align 4
  %73 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ioc1, align 4
  %mbox_mod.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %74, i32 0, i32 22
  %75 = ptrtoint ptr %mbox_mod.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %mbox_mod.i.i, align 4
  %cmp.i.not3.i.i = icmp eq ptr %76, %mbox_mod.i.i
  br i1 %cmp.i.not3.i.i, label %sw.bb7.bfa_iocpf_sm_disabled_entry.exit_crit_edge, label %sw.bb7.while.body.i.i_crit_edge

sw.bb7.while.body.i.i_crit_edge:                  ; preds = %sw.bb7
  br label %while.body.i.i

sw.bb7.bfa_iocpf_sm_disabled_entry.exit_crit_edge: ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_iocpf_sm_disabled_entry.exit

while.body.i.i:                                   ; preds = %list_del.exit.i.i.while.body.i.i_crit_edge, %sw.bb7.while.body.i.i_crit_edge
  %77 = phi ptr [ %87, %list_del.exit.i.i.while.body.i.i_crit_edge ], [ %76, %sw.bb7.while.body.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %77) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.i.list_del.exit.i.i_crit_edge

while.body.i.i.list_del.exit.i.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i.i.i, align 4
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %77, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i.i.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %while.body.i.i.list_del.exit.i.i_crit_edge
  %84 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 256 to ptr), ptr %77, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %86 = ptrtoint ptr %mbox_mod.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %mbox_mod.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %87, %mbox_mod.i.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.bfa_iocpf_sm_disabled_entry.exit_crit_edge, label %list_del.exit.i.i.while.body.i.i_crit_edge

list_del.exit.i.i.while.body.i.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

list_del.exit.i.i.bfa_iocpf_sm_disabled_entry.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_iocpf_sm_disabled_entry.exit

bfa_iocpf_sm_disabled_entry.exit:                 ; preds = %list_del.exit.i.i.bfa_iocpf_sm_disabled_entry.exit_crit_edge, %sw.bb7.bfa_iocpf_sm_disabled_entry.exit_crit_edge
  %88 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ioc1, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 8
  tail call void %91(ptr noundef %89, i32 noundef 7) #15
  br label %sw.epilog

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 751, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end15, %bfa_iocpf_sm_disabled_entry.exit, %if.end7.i.i, %if.then3.i5.i, %if.then.i3.i, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_iocpf_sm_hwinit_entry(ptr nocapture noundef %iocpf) unnamed_addr #0 align 64 {
entry:
  %fwimg.i.i.i.i.i = alloca [64 x i32], align 4
  %fwhdr.i.i.i = alloca %struct.bfi_ioc_image_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %poll_time = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 4
  %0 = ptrtoint ptr %poll_time to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %poll_time, align 4
  %ioc = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %1 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioc, align 4
  %ioc_hwif.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 23
  %3 = ptrtoint ptr %ioc_hwif.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc_hwif.i.i, align 4
  %ioc_get_fwstate.i.i = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %ioc_get_fwstate.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioc_get_fwstate.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.if.then5.i.i_crit_edge, label %cond.false.i.i

entry.if.then5.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5.i.i

cond.false.i.i:                                   ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fwhdr.i.i.i) #15
  %smem_pg0.i.i.i.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 13, i32 24
  %7 = ptrtoint ptr %smem_pg0.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smem_pg0.i.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !130
  tail call void @arm_heavy_mb() #15
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #15
  %host_page_num_fn.i.i.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 13, i32 13
  %10 = ptrtoint ptr %host_page_num_fn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_page_num_fn.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #15, !srcloc !128
  %smem_page_start.i.i.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 13, i32 23
  %12 = ptrtoint ptr %smem_page_start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smem_page_start.i.i.i.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %15 = ptrtoint ptr %fwhdr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %fwhdr.i.i.i, align 4
  %16 = ptrtoint ptr %smem_page_start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %smem_page_start.i.i.i.i, align 4
  %add.ptr.1.i.i.i.i = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i.i.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.1.i.i.i.i = getelementptr inbounds i32, ptr %fwhdr.i.i.i, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.1.i.i.i.i, align 4
  %20 = ptrtoint ptr %smem_page_start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %smem_page_start.i.i.i.i, align 4
  %add.ptr.2.i.i.i.i = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i.i.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.2.i.i.i.i = getelementptr inbounds i32, ptr %fwhdr.i.i.i, i32 2
  %23 = ptrtoint ptr %arrayidx.2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx.2.i.i.i.i, align 4
  %24 = ptrtoint ptr %smem_page_start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smem_page_start.i.i.i.i, align 4
  %add.ptr.3.i.i.i.i = getelementptr i8, ptr %25, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i.i.i.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.3.i.i.i.i = getelementptr inbounds i32, ptr %fwhdr.i.i.i, i32 3
  %27 = ptrtoint ptr %arrayidx.3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx.3.i.i.i.i, align 4
  %28 = ptrtoint ptr %smem_page_start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smem_page_start.i.i.i.i, align 4
  %add.ptr.4.i.i.i.i = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i.i.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.4.i.i.i.i = getelementptr inbounds i32, ptr %fwhdr.i.i.i, i32 4
  %31 = ptrtoint ptr %arrayidx.4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx.4.i.i.i.i, align 4
  %32 = ptrtoint ptr %smem_page_start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %smem_page_start.i.i.i.i, align 4
  %add.ptr.5.i.i.i.i = getelementptr i8, ptr %33, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5.i.i.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.5.i.i.i.i = getelementptr inbounds i32, ptr %fwhdr.i.i.i, i32 5
  %35 = ptrtoint ptr %arrayidx.5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx.5.i.i.i.i, align 4
  %36 = ptrtoint ptr %smem_page_start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %smem_page_start.i.i.i.i, align 4
  %add.ptr.6.i.i.i.i = getelementptr i8, ptr %37, i32 24
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6.i.i.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.6.i.i.i.i = getelementptr inbounds i32, ptr %fwhdr.i.i.i, i32 6
  %39 = ptrtoint ptr %arrayidx.6.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx.6.i.i.i.i, align 4
  %40 = ptrtoint ptr %smem_page_start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %smem_page_start.i.i.i.i, align 4
  %add.ptr.7.i.i.i.i = getelementptr i8, ptr %41, i32 28
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7.i.i.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.7.i.i.i.i = getelementptr inbounds i32, ptr %fwhdr.i.i.i, i32 7
  %43 = ptrtoint ptr %arrayidx.7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx.7.i.i.i.i, align 4
  %44 = ptrtoint ptr %smem_page_start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %smem_page_start.i.i.i.i, align 4
  %add.ptr.8.i.i.i.i = getelementptr i8, ptr %45, i32 32
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.8.i.i.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.8.i.i.i.i = getelementptr inbounds i32, ptr %fwhdr.i.i.i, i32 8
  %47 = ptrtoint ptr %arrayidx.8.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx.8.i.i.i.i, align 4
  %48 = ptrtoint ptr %smem_page_start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %smem_page_start.i.i.i.i, align 4
  %add.ptr.9.i.i.i.i = getelementptr i8, ptr %49, i32 36
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.9.i.i.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.9.i.i.i.i = getelementptr inbounds i32, ptr %fwhdr.i.i.i, i32 9
  %51 = ptrtoint ptr %arrayidx.9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx.9.i.i.i.i, align 4
  %52 = ptrtoint ptr %smem_page_start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %smem_page_start.i.i.i.i, align 4
  %add.ptr.10.i.i.i.i = getelementptr i8, ptr %53, i32 40
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.10.i.i.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.10.i.i.i.i = getelementptr inbounds i32, ptr %fwhdr.i.i.i, i32 10
  %55 = ptrtoint ptr %arrayidx.10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx.10.i.i.i.i, align 4
  %56 = ptrtoint ptr %smem_page_start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %smem_page_start.i.i.i.i, align 4
  %add.ptr.11.i.i.i.i = getelementptr i8, ptr %57, i32 44
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.11.i.i.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !131
  %arrayidx.11.i.i.i.i = getelementptr inbounds i32, ptr %fwhdr.i.i.i, i32 11
  %59 = ptrtoint ptr %arrayidx.11.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx.11.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i.i.i = icmp eq i32 %26, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %cond.false.i.i.bfa_ioc_fwver_valid.exit.thread.i.i_crit_edge

cond.false.i.i.bfa_ioc_fwver_valid.exit.thread.i.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fwver_valid.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %cond.false.i.i
  %asic_gen.i.i.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 25
  %60 = ptrtoint ptr %asic_gen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %asic_gen.i.i.i.i, align 8
  %call.i.i.i.i = tail call ptr @bfa_cb_image_get_chunk(i32 noundef %61, i32 noundef 0) #15
  %call1.i.i.i.i = call fastcc i32 @bfa_ioc_fw_ver_patch_cmp(ptr noundef %call.i.i.i.i, ptr noundef nonnull %fwhdr.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1.i.i.i.i)
  %switch.i.i.i.i = icmp ult i32 %call1.i.i.i.i, 2
  br i1 %switch.i.i.i.i, label %if.end.i.i.i.bfa_ioc_fwver_valid.exit.thread.i.i_crit_edge, label %if.end.i.i.i.i

if.end.i.i.i.bfa_ioc_fwver_valid.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fwver_valid.exit.thread.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %fwimg.i.i.i.i.i) #15
  %62 = call ptr @memset(ptr %fwimg.i.i.i.i.i, i32 255, i32 256)
  %call.i.i.i.i.i = call fastcc i32 @bfa_nw_ioc_flash_img_get_chnk(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %fwimg.i.i.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.i.bfa_ioc_flash_fwver_cmp.exit.thread.i.i.i.i_crit_edge

if.end.i.i.i.i.bfa_ioc_flash_fwver_cmp.exit.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_flash_fwver_cmp.exit.thread.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %major.i.i.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwimg.i.i.i.i.i, i32 0, i32 8, i32 3
  %63 = ptrtoint ptr %major.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %major.i.i.i.i.i.i, align 1
  %65 = add i8 %64, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %65)
  %switch.selectcmp.i.i.i.i.i.i = icmp ult i8 %65, -2
  br i1 %switch.selectcmp.i.i.i.i.i.i, label %bfa_ioc_flash_fwver_cmp.exit.i.i.i.i, label %if.end.i.i.i.i.i.bfa_ioc_flash_fwver_cmp.exit.thread.i.i.i.i_crit_edge

if.end.i.i.i.i.i.bfa_ioc_flash_fwver_cmp.exit.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_flash_fwver_cmp.exit.thread.i.i.i.i

bfa_ioc_flash_fwver_cmp.exit.thread.i.i.i.i:      ; preds = %if.end.i.i.i.i.i.bfa_ioc_flash_fwver_cmp.exit.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.bfa_ioc_flash_fwver_cmp.exit.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fwimg.i.i.i.i.i) #15
  br label %bfa_ioc_fwver_valid.exit.i.i

bfa_ioc_flash_fwver_cmp.exit.i.i.i.i:             ; preds = %if.end.i.i.i.i.i
  %66 = ptrtoint ptr %fwhdr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fwhdr.i.i.i, align 4
  %68 = ptrtoint ptr %fwimg.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fwimg.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp.not.i.i1.i.i.i = icmp eq i32 %67, %69
  br i1 %cmp.not.i.i1.i.i.i, label %if.end.i.i2.i.i.i, label %bfa_ioc_flash_fwver_cmp.exit.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge

bfa_ioc_flash_fwver_cmp.exit.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge: ; preds = %bfa_ioc_flash_fwver_cmp.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i

if.end.i.i2.i.i.i:                                ; preds = %bfa_ioc_flash_fwver_cmp.exit.i.i.i.i
  %major.i.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr.i.i.i, i32 0, i32 8, i32 3
  %70 = ptrtoint ptr %major.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %major.i.i.i.i.i, align 1
  %fwver2.i.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwimg.i.i.i.i.i, i32 0, i32 8
  call void @__sanitizer_cov_trace_cmp1(i8 %71, i8 %64)
  %cmp5.not.i.i.i.i.i = icmp eq i8 %71, %64
  br i1 %cmp5.not.i.i.i.i.i, label %if.end8.i.i.i.i.i, label %if.end.i.i2.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge

if.end.i.i2.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge: ; preds = %if.end.i.i2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i

if.end8.i.i.i.i.i:                                ; preds = %if.end.i.i2.i.i.i
  %minor.i.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr.i.i.i, i32 0, i32 8, i32 2
  %72 = ptrtoint ptr %minor.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %minor.i.i.i.i.i, align 2
  %minor12.i.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwimg.i.i.i.i.i, i32 0, i32 8, i32 2
  %74 = ptrtoint ptr %minor12.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %minor12.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %73, i8 %75)
  %cmp14.not.i.i.i.i.i = icmp eq i8 %73, %75
  br i1 %cmp14.not.i.i.i.i.i, label %if.end17.i.i.i.i.i, label %if.end8.i.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge

if.end8.i.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge: ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i

if.end17.i.i.i.i.i:                               ; preds = %if.end8.i.i.i.i.i
  %maint.i.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr.i.i.i, i32 0, i32 8, i32 1
  %76 = ptrtoint ptr %maint.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %maint.i.i.i.i.i, align 1
  %maint21.i.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwimg.i.i.i.i.i, i32 0, i32 8, i32 1
  %78 = ptrtoint ptr %maint21.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %maint21.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %79)
  %cmp23.not.i.i.i.i.i = icmp eq i8 %77, %79
  br i1 %cmp23.not.i.i.i.i.i, label %if.end26.i.i.i.i.i, label %if.end17.i.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge

if.end17.i.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge: ; preds = %if.end17.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i

if.end26.i.i.i.i.i:                               ; preds = %if.end17.i.i.i.i.i
  %80 = ptrtoint ptr %arrayidx.6.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.6.i.i.i.i, align 4
  %82 = ptrtoint ptr %fwver2.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %fwver2.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %81, i8 %83)
  %cmp32.i.i.i.i.i = icmp eq i8 %81, %83
  br i1 %cmp32.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %if.end26.i.i.i.i.i.if.end.i3.i.i.i_crit_edge

if.end26.i.i.i.i.i.if.end.i3.i.i.i_crit_edge:     ; preds = %if.end26.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i3.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end26.i.i.i.i.i
  %phase.i.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr.i.i.i, i32 0, i32 8, i32 6
  %84 = ptrtoint ptr %phase.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %phase.i.i.i.i.i, align 1
  %phase37.i.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwimg.i.i.i.i.i, i32 0, i32 8, i32 6
  %86 = ptrtoint ptr %phase37.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %phase37.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %87)
  %cmp39.i.i.i.i.i = icmp eq i8 %85, %87
  br i1 %cmp39.i.i.i.i.i, label %land.lhs.true41.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.end.i3.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.if.end.i3.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i3.i.i.i

land.lhs.true41.i.i.i.i.i:                        ; preds = %land.lhs.true.i.i.i.i.i
  %build.i.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr.i.i.i, i32 0, i32 8, i32 5
  %88 = ptrtoint ptr %build.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %build.i.i.i.i.i, align 2
  %build45.i.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwimg.i.i.i.i.i, i32 0, i32 8, i32 5
  %90 = ptrtoint ptr %build45.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %build45.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %91)
  %cmp47.i.i.i.i.i = icmp eq i8 %89, %91
  br i1 %cmp47.i.i.i.i.i, label %if.then49.i.i.i.i.i, label %land.lhs.true41.i.i.i.i.i.if.end.i3.i.i.i_crit_edge

land.lhs.true41.i.i.i.i.i.if.end.i3.i.i.i_crit_edge: ; preds = %land.lhs.true41.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i3.i.i.i

if.then49.i.i.i.i.i:                              ; preds = %land.lhs.true41.i.i.i.i.i
  %92 = ptrtoint ptr %arrayidx.8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.8.i.i.i.i, align 4
  %arrayidx2.i.i.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwimg.i.i.i.i.i, i32 0, i32 9, i32 0
  %94 = ptrtoint ptr %arrayidx2.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx2.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp3.not.i.i.i.i.i.i = icmp eq i32 %93, %95
  br i1 %cmp3.not.i.i.i.i.i.i, label %for.cond.i.i.i.i.i.i, label %if.then49.i.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge

if.then49.i.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge: ; preds = %if.then49.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i

for.cond.i.i.i.i.i.i:                             ; preds = %if.then49.i.i.i.i.i
  %96 = ptrtoint ptr %arrayidx.9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.9.i.i.i.i, align 4
  %arrayidx2.1.i.i.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwimg.i.i.i.i.i, i32 0, i32 9, i32 1
  %98 = ptrtoint ptr %arrayidx2.1.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx2.1.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp3.not.1.i.i.i.i.i.i = icmp eq i32 %97, %99
  br i1 %cmp3.not.1.i.i.i.i.i.i, label %for.cond.1.i.i.i.i.i.i, label %for.cond.i.i.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge

for.cond.i.i.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge: ; preds = %for.cond.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i

for.cond.1.i.i.i.i.i.i:                           ; preds = %for.cond.i.i.i.i.i.i
  %100 = ptrtoint ptr %arrayidx.10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.10.i.i.i.i, align 4
  %arrayidx2.2.i.i.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwimg.i.i.i.i.i, i32 0, i32 9, i32 2
  %102 = ptrtoint ptr %arrayidx2.2.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx2.2.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %103)
  %cmp3.not.2.i.i.i.i.i.i = icmp eq i32 %101, %103
  br i1 %cmp3.not.2.i.i.i.i.i.i, label %bfa_ioc_fw_ver_compatible.exit.i.i.i.i, label %for.cond.1.i.i.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge

for.cond.1.i.i.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge: ; preds = %for.cond.1.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i

bfa_ioc_fw_ver_compatible.exit.i.i.i.i:           ; preds = %for.cond.1.i.i.i.i.i.i
  %104 = ptrtoint ptr %arrayidx.11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.11.i.i.i.i, align 4
  %arrayidx2.3.i.i.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwimg.i.i.i.i.i, i32 0, i32 9, i32 3
  %106 = ptrtoint ptr %arrayidx2.3.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx2.3.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp3.not.3.i.i.i.i.i.i = icmp eq i32 %105, %107
  br i1 %cmp3.not.3.i.i.i.i.i.i, label %bfa_ioc_fw_ver_compatible.exit.i.i.i.i.if.end.i3.i.i.i_crit_edge, label %bfa_ioc_fw_ver_compatible.exit.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge

bfa_ioc_fw_ver_compatible.exit.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge: ; preds = %bfa_ioc_fw_ver_compatible.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i

bfa_ioc_fw_ver_compatible.exit.i.i.i.i.if.end.i3.i.i.i_crit_edge: ; preds = %bfa_ioc_fw_ver_compatible.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i3.i.i.i

if.end.i3.i.i.i:                                  ; preds = %bfa_ioc_fw_ver_compatible.exit.i.i.i.i.if.end.i3.i.i.i_crit_edge, %land.lhs.true41.i.i.i.i.i.if.end.i3.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.end.i3.i.i.i_crit_edge, %if.end26.i.i.i.i.i.if.end.i3.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %81)
  %cmp.i.i.i.i = icmp ugt i8 %83, %81
  br i1 %cmp.i.i.i.i, label %if.end.i3.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread7.i.i.i_crit_edge, label %if.else.i.i.i.i

if.end.i3.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread7.i.i.i_crit_edge: ; preds = %if.end.i3.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fw_ver_patch_cmp.exit.thread7.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i3.i.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %81)
  %cmp12.i.i.i.i = icmp ult i8 %83, %81
  br i1 %cmp12.i.i.i.i, label %if.else.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge, label %if.end16.i.i.i.i

if.else.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i

if.end16.i.i.i.i:                                 ; preds = %if.else.i.i.i.i
  %phase.i83.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr.i.i.i, i32 0, i32 8, i32 6
  %108 = ptrtoint ptr %phase.i83.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %phase.i83.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %cmp.i.i.i.i.i = icmp eq i8 %109, 0
  br i1 %cmp.i.i.i.i.i, label %land.lhs.true.i85.i.i.i.i, label %if.end16.i.i.i.i.if.then18.i.i.i.i_crit_edge

if.end16.i.i.i.i.if.then18.i.i.i.i_crit_edge:     ; preds = %if.end16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18.i.i.i.i

land.lhs.true.i85.i.i.i.i:                        ; preds = %if.end16.i.i.i.i
  %build.i84.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwhdr.i.i.i, i32 0, i32 8, i32 5
  %110 = ptrtoint ptr %build.i84.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %build.i84.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %cmp4.i.i.i.i.i = icmp eq i8 %111, 0
  br i1 %cmp4.i.i.i.i.i, label %if.else22.i.i.i.i, label %land.lhs.true.i85.i.i.i.i.if.then18.i.i.i.i_crit_edge

land.lhs.true.i85.i.i.i.i.if.then18.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i85.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18.i.i.i.i

if.then18.i.i.i.i:                                ; preds = %land.lhs.true.i85.i.i.i.i.if.then18.i.i.i.i_crit_edge, %if.end16.i.i.i.i.if.then18.i.i.i.i_crit_edge
  %phase.i88.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwimg.i.i.i.i.i, i32 0, i32 8, i32 6
  %112 = ptrtoint ptr %phase.i88.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %phase.i88.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %cmp.i89.i.i.i.i = icmp eq i8 %113, 0
  br i1 %cmp.i89.i.i.i.i, label %land.lhs.true.i92.i.i.i.i, label %if.then18.i.i.i.i.bfa_ioc_fwver_valid.exit.thread39.i.i_crit_edge

if.then18.i.i.i.i.bfa_ioc_fwver_valid.exit.thread39.i.i_crit_edge: ; preds = %if.then18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fwver_valid.exit.thread39.i.i

land.lhs.true.i92.i.i.i.i:                        ; preds = %if.then18.i.i.i.i
  %build.i90.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwimg.i.i.i.i.i, i32 0, i32 8, i32 5
  %114 = ptrtoint ptr %build.i90.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %build.i90.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp4.i91.i.i.i.i = icmp eq i8 %115, 0
  br i1 %cmp4.i91.i.i.i.i, label %land.lhs.true.i92.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge, label %land.lhs.true.i92.i.i.i.i.bfa_ioc_fwver_valid.exit.thread39.i.i_crit_edge

land.lhs.true.i92.i.i.i.i.bfa_ioc_fwver_valid.exit.thread39.i.i_crit_edge: ; preds = %land.lhs.true.i92.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fwver_valid.exit.thread39.i.i

land.lhs.true.i92.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge: ; preds = %land.lhs.true.i92.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i

if.else22.i.i.i.i:                                ; preds = %land.lhs.true.i85.i.i.i.i
  %phase.i96.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwimg.i.i.i.i.i, i32 0, i32 8, i32 6
  %116 = ptrtoint ptr %phase.i96.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %phase.i96.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp.i97.i.i.i.i = icmp eq i8 %117, 0
  br i1 %cmp.i97.i.i.i.i, label %land.lhs.true.i100.i.i.i.i, label %if.else22.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread7.i.i.i_crit_edge

if.else22.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread7.i.i.i_crit_edge: ; preds = %if.else22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fw_ver_patch_cmp.exit.thread7.i.i.i

land.lhs.true.i100.i.i.i.i:                       ; preds = %if.else22.i.i.i.i
  %build.i98.i.i.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwimg.i.i.i.i.i, i32 0, i32 8, i32 5
  %118 = ptrtoint ptr %build.i98.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %build.i98.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp4.i99.not.i.not.i.i.i = icmp eq i8 %119, 0
  br i1 %cmp4.i99.not.i.not.i.i.i, label %land.lhs.true.i100.i.i.i.i.bfa_ioc_fwver_valid.exit.thread39.i.i_crit_edge, label %land.lhs.true.i100.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread7.i.i.i_crit_edge

land.lhs.true.i100.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread7.i.i.i_crit_edge: ; preds = %land.lhs.true.i100.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fw_ver_patch_cmp.exit.thread7.i.i.i

land.lhs.true.i100.i.i.i.i.bfa_ioc_fwver_valid.exit.thread39.i.i_crit_edge: ; preds = %land.lhs.true.i100.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_fwver_valid.exit.thread39.i.i

bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i:       ; preds = %land.lhs.true.i92.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge, %if.else.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge, %bfa_ioc_fw_ver_compatible.exit.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge, %for.cond.1.i.i.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge, %for.cond.i.i.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge, %if.then49.i.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge, %if.end17.i.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge, %if.end8.i.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge, %if.end.i.i2.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge, %bfa_ioc_flash_fwver_cmp.exit.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fwimg.i.i.i.i.i) #15
  br label %bfa_ioc_fwver_valid.exit.i.i

bfa_ioc_fw_ver_patch_cmp.exit.thread7.i.i.i:      ; preds = %land.lhs.true.i100.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread7.i.i.i_crit_edge, %if.else22.i.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread7.i.i.i_crit_edge, %if.end.i3.i.i.i.bfa_ioc_fw_ver_patch_cmp.exit.thread7.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fwimg.i.i.i.i.i) #15
  br label %bfa_ioc_fwver_valid.exit.thread.i.i

bfa_ioc_fwver_valid.exit.thread39.i.i:            ; preds = %land.lhs.true.i100.i.i.i.i.bfa_ioc_fwver_valid.exit.thread39.i.i_crit_edge, %land.lhs.true.i92.i.i.i.i.bfa_ioc_fwver_valid.exit.thread39.i.i_crit_edge, %if.then18.i.i.i.i.bfa_ioc_fwver_valid.exit.thread39.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fwimg.i.i.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fwhdr.i.i.i) #15
  br label %if.end11.i.i

bfa_ioc_fwver_valid.exit.thread.i.i:              ; preds = %bfa_ioc_fw_ver_patch_cmp.exit.thread7.i.i.i, %if.end.i.i.i.bfa_ioc_fwver_valid.exit.thread.i.i_crit_edge, %cond.false.i.i.bfa_ioc_fwver_valid.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fwhdr.i.i.i) #15
  br label %if.then5.i.i

bfa_ioc_fwver_valid.exit.i.i:                     ; preds = %bfa_ioc_fw_ver_patch_cmp.exit.thread.i.i.i, %bfa_ioc_flash_fwver_cmp.exit.thread.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1.i.i.i.i)
  %cmp9.i.i.not.i.i = icmp eq i32 %call1.i.i.i.i, 2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fwhdr.i.i.i) #15
  br i1 %cmp9.i.i.not.i.i, label %bfa_ioc_fwver_valid.exit.i.i.if.end11.i.i_crit_edge, label %bfa_ioc_fwver_valid.exit.i.i.if.then5.i.i_crit_edge

bfa_ioc_fwver_valid.exit.i.i.if.then5.i.i_crit_edge: ; preds = %bfa_ioc_fwver_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5.i.i

bfa_ioc_fwver_valid.exit.i.i.if.end11.i.i_crit_edge: ; preds = %bfa_ioc_fwver_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i.i

if.then5.i.i:                                     ; preds = %bfa_ioc_fwver_valid.exit.i.i.if.then5.i.i_crit_edge, %bfa_ioc_fwver_valid.exit.thread.i.i, %entry.if.then5.i.i_crit_edge
  %call6.i.i = tail call fastcc i32 @bfa_ioc_boot(ptr noundef %2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.then5.i.i.bfa_ioc_reset.exit_crit_edge

if.then5.i.i.bfa_ioc_reset.exit_crit_edge:        ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_reset.exit

if.then9.i.i:                                     ; preds = %if.then5.i.i
  %120 = ptrtoint ptr %ioc_hwif.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ioc_hwif.i.i, align 4
  %ioc_get_fwstate.i.i.i = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %121, i32 0, i32 15
  %122 = ptrtoint ptr %ioc_get_fwstate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ioc_get_fwstate.i.i.i, align 4
  %call.i.i.i = tail call i32 %123(ptr noundef %2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 6
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i1.i.i

if.then.i.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 24
  %124 = ptrtoint ptr %iocpf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %iocpf.i.i.i, align 8
  tail call void %125(ptr noundef %iocpf.i.i.i, i32 noundef 4) #15
  br label %bfa_ioc_reset.exit

if.end.i1.i.i:                                    ; preds = %if.then9.i.i
  %poll_time.i.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 24, i32 4
  %126 = ptrtoint ptr %poll_time.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %poll_time.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %127)
  %cmp3.i.i.i = icmp ugt i32 %127, 2999
  br i1 %cmp3.i.i.i, label %if.then4.i.i.i, label %if.else.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf2.i.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 24
  %128 = ptrtoint ptr %iocpf2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %iocpf2.i.i.i, align 8
  tail call void %129(ptr noundef %iocpf2.i.i.i, i32 noundef 11) #15
  br label %bfa_ioc_reset.exit

if.else.i.i.i:                                    ; preds = %if.end.i1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.i.i.i = add nuw nsw i32 %127, 200
  %130 = ptrtoint ptr %poll_time.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %add.i.i.i, ptr %poll_time.i.i.i, align 4
  %iocpf_timer.i.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %131 = load volatile i32, ptr @jiffies, align 128
  %add11.i.i.i = add i32 %131, 20
  %call12.i.i.i = tail call i32 @mod_timer(ptr noundef %iocpf_timer.i.i.i, i32 noundef %add11.i.i.i) #15
  br label %bfa_ioc_reset.exit

if.end11.i.i:                                     ; preds = %bfa_ioc_fwver_valid.exit.i.i.if.end11.i.i_crit_edge, %bfa_ioc_fwver_valid.exit.thread39.i.i
  %132 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call.i.i, label %if.end22.i.i [
    i32 1, label %if.then14.i.i
    i32 6, label %if.end11.i.i.if.then20.i.i_crit_edge
    i32 4, label %if.end11.i.i.if.then20.i.i_crit_edge2
  ]

if.end11.i.i.if.then20.i.i_crit_edge2:            ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then20.i.i

if.end11.i.i.if.then20.i.i_crit_edge:             ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then20.i.i

if.then14.i.i:                                    ; preds = %if.end11.i.i
  %133 = ptrtoint ptr %ioc_hwif.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ioc_hwif.i.i, align 4
  %ioc_get_fwstate.i3.i.i = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %134, i32 0, i32 15
  %135 = ptrtoint ptr %ioc_get_fwstate.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ioc_get_fwstate.i3.i.i, align 4
  %call.i4.i.i = tail call i32 %136(ptr noundef %2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i4.i.i)
  %cmp.i5.i.i = icmp eq i32 %call.i4.i.i, 6
  br i1 %cmp.i5.i.i, label %if.then.i7.i.i, label %if.end.i10.i.i

if.then.i7.i.i:                                   ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i6.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 24
  %137 = ptrtoint ptr %iocpf.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %iocpf.i6.i.i, align 8
  tail call void %138(ptr noundef %iocpf.i6.i.i, i32 noundef 4) #15
  br label %bfa_ioc_reset.exit

if.end.i10.i.i:                                   ; preds = %if.then14.i.i
  %poll_time.i8.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 24, i32 4
  %139 = ptrtoint ptr %poll_time.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %poll_time.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %140)
  %cmp3.i9.i.i = icmp ugt i32 %140, 2999
  br i1 %cmp3.i9.i.i, label %if.then4.i12.i.i, label %if.else.i17.i.i

if.then4.i12.i.i:                                 ; preds = %if.end.i10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf2.i11.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 24
  %141 = ptrtoint ptr %iocpf2.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %iocpf2.i11.i.i, align 8
  tail call void %142(ptr noundef %iocpf2.i11.i.i, i32 noundef 11) #15
  br label %bfa_ioc_reset.exit

if.else.i17.i.i:                                  ; preds = %if.end.i10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.i13.i.i = add nuw nsw i32 %140, 200
  %143 = ptrtoint ptr %poll_time.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %add.i13.i.i, ptr %poll_time.i8.i.i, align 4
  %iocpf_timer.i14.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %144 = load volatile i32, ptr @jiffies, align 128
  %add11.i15.i.i = add i32 %144, 20
  %call12.i16.i.i = tail call i32 @mod_timer(ptr noundef %iocpf_timer.i14.i.i, i32 noundef %add11.i15.i.i) #15
  br label %bfa_ioc_reset.exit

if.then20.i.i:                                    ; preds = %if.end11.i.i.if.then20.i.i_crit_edge, %if.end11.i.i.if.then20.i.i_crit_edge2
  %lpu_mbox_cmd.i.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 13, i32 2
  %145 = ptrtoint ptr %lpu_mbox_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %lpu_mbox_cmd.i.i.i, align 4
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool.not.i.i.i = icmp eq i32 %147, 0
  br i1 %tobool.not.i.i.i, label %if.then20.i.i.bfa_ioc_msgflush.exit.i.i_crit_edge, label %do.body.i.i.i

if.then20.i.i.bfa_ioc_msgflush.exit.i.i_crit_edge: ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_msgflush.exit.i.i

do.body.i.i.i:                                    ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !179
  tail call void @arm_heavy_mb() #15
  %148 = ptrtoint ptr %lpu_mbox_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %lpu_mbox_cmd.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 16777216) #15, !srcloc !128
  br label %bfa_ioc_msgflush.exit.i.i

bfa_ioc_msgflush.exit.i.i:                        ; preds = %do.body.i.i.i, %if.then20.i.i.bfa_ioc_msgflush.exit.i.i_crit_edge
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 24
  %150 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %iocpf.i.i, align 8
  tail call void %151(ptr noundef %iocpf.i.i, i32 noundef 4) #15
  br label %bfa_ioc_reset.exit

if.end22.i.i:                                     ; preds = %if.end11.i.i
  %call23.i.i = tail call fastcc i32 @bfa_ioc_boot(ptr noundef %2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %cmp24.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %cmp24.i.i, label %if.then26.i.i, label %if.end22.i.i.bfa_ioc_reset.exit_crit_edge

if.end22.i.i.bfa_ioc_reset.exit_crit_edge:        ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_reset.exit

if.then26.i.i:                                    ; preds = %if.end22.i.i
  %152 = ptrtoint ptr %ioc_hwif.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ioc_hwif.i.i, align 4
  %ioc_get_fwstate.i21.i.i = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %153, i32 0, i32 15
  %154 = ptrtoint ptr %ioc_get_fwstate.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ioc_get_fwstate.i21.i.i, align 4
  %call.i22.i.i = tail call i32 %155(ptr noundef %2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i22.i.i)
  %cmp.i23.i.i = icmp eq i32 %call.i22.i.i, 6
  br i1 %cmp.i23.i.i, label %if.then.i25.i.i, label %if.end.i28.i.i

if.then.i25.i.i:                                  ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i24.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 24
  %156 = ptrtoint ptr %iocpf.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %iocpf.i24.i.i, align 8
  tail call void %157(ptr noundef %iocpf.i24.i.i, i32 noundef 4) #15
  br label %bfa_ioc_reset.exit

if.end.i28.i.i:                                   ; preds = %if.then26.i.i
  %poll_time.i26.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 24, i32 4
  %158 = ptrtoint ptr %poll_time.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %poll_time.i26.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %159)
  %cmp3.i27.i.i = icmp ugt i32 %159, 2999
  br i1 %cmp3.i27.i.i, label %if.then4.i30.i.i, label %if.else.i35.i.i

if.then4.i30.i.i:                                 ; preds = %if.end.i28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf2.i29.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 24
  %160 = ptrtoint ptr %iocpf2.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %iocpf2.i29.i.i, align 8
  tail call void %161(ptr noundef %iocpf2.i29.i.i, i32 noundef 11) #15
  br label %bfa_ioc_reset.exit

if.else.i35.i.i:                                  ; preds = %if.end.i28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.i31.i.i = add nuw nsw i32 %159, 200
  %162 = ptrtoint ptr %poll_time.i26.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %add.i31.i.i, ptr %poll_time.i26.i.i, align 4
  %iocpf_timer.i32.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %163 = load volatile i32, ptr @jiffies, align 128
  %add11.i33.i.i = add i32 %163, 20
  %call12.i34.i.i = tail call i32 @mod_timer(ptr noundef %iocpf_timer.i32.i.i, i32 noundef %add11.i33.i.i) #15
  br label %bfa_ioc_reset.exit

bfa_ioc_reset.exit:                               ; preds = %if.else.i35.i.i, %if.then4.i30.i.i, %if.then.i25.i.i, %if.end22.i.i.bfa_ioc_reset.exit_crit_edge, %bfa_ioc_msgflush.exit.i.i, %if.else.i17.i.i, %if.then4.i12.i.i, %if.then.i7.i.i, %if.else.i.i.i, %if.then4.i.i.i, %if.then.i.i.i, %if.then5.i.i.bfa_ioc_reset.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocpf_sm_mismatch(ptr nocapture noundef %iocpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %event, label %do.end17 [
    i32 11, label %do.body
    i32 2, label %sw.bb2
    i32 3, label %sw.bb7
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bfa_iocpf_sm_fwcheck, ptr %iocpf, align 4
  tail call fastcc void @bfa_iocpf_sm_fwcheck_entry(ptr noundef %iocpf)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf_timer = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 4
  %call = tail call i32 @del_timer(ptr noundef %iocpf_timer) #15
  %4 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bfa_iocpf_sm_reset, ptr %iocpf, align 4
  %fw_mismatch_notified.i = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 2
  %5 = ptrtoint ptr %fw_mismatch_notified.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %fw_mismatch_notified.i, align 4
  %6 = load i8, ptr @bfa_nw_auto_recover, align 1, !range !143
  %auto_recover.i = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 3
  %7 = ptrtoint ptr %auto_recover.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %auto_recover.i, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void %9(ptr noundef %1, i32 noundef 7) #15
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf_timer8 = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 4
  %call9 = tail call i32 @del_timer(ptr noundef %iocpf_timer8) #15
  %10 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bfa_iocpf_sm_reset, ptr %iocpf, align 4
  %fw_mismatch_notified.i30 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 2
  %11 = ptrtoint ptr %fw_mismatch_notified.i30 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %fw_mismatch_notified.i30, align 4
  %12 = load i8, ptr @bfa_nw_auto_recover, align 1, !range !143
  %auto_recover.i31 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 3
  %13 = ptrtoint ptr %auto_recover.i31 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %auto_recover.i31, align 1
  br label %sw.epilog

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 673, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end17, %sw.bb7, %sw.bb2, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocpf_sm_fail(ptr nocapture noundef %iocpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cond = icmp eq i32 %event, 2
  br i1 %cond, label %do.body, label %do.end3

do.body:                                          ; preds = %entry
  %0 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bfa_iocpf_sm_disabled, ptr %iocpf, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %1 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioc.i, align 4
  %mbox_mod.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %mbox_mod.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %mbox_mod.i.i, align 4
  %cmp.i.not3.i.i = icmp eq ptr %4, %mbox_mod.i.i
  br i1 %cmp.i.not3.i.i, label %do.body.bfa_iocpf_sm_disabled_entry.exit_crit_edge, label %do.body.while.body.i.i_crit_edge

do.body.while.body.i.i_crit_edge:                 ; preds = %do.body
  br label %while.body.i.i

do.body.bfa_iocpf_sm_disabled_entry.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_iocpf_sm_disabled_entry.exit

while.body.i.i:                                   ; preds = %list_del.exit.i.i.while.body.i.i_crit_edge, %do.body.while.body.i.i_crit_edge
  %5 = phi ptr [ %15, %list_del.exit.i.i.while.body.i.i_crit_edge ], [ %4, %do.body.while.body.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.i.list_del.exit.i.i_crit_edge

while.body.i.i.list_del.exit.i.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %while.body.i.i.list_del.exit.i.i_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %mbox_mod.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %mbox_mod.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %15, %mbox_mod.i.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.bfa_iocpf_sm_disabled_entry.exit_crit_edge, label %list_del.exit.i.i.while.body.i.i_crit_edge

list_del.exit.i.i.while.body.i.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

list_del.exit.i.i.bfa_iocpf_sm_disabled_entry.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_iocpf_sm_disabled_entry.exit

bfa_iocpf_sm_disabled_entry.exit:                 ; preds = %list_del.exit.i.i.bfa_iocpf_sm_disabled_entry.exit_crit_edge, %do.body.bfa_iocpf_sm_disabled_entry.exit_crit_edge
  %16 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioc.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  tail call void %19(ptr noundef %17, i32 noundef 7) #15
  br label %sw.epilog

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1073, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end3, %bfa_iocpf_sm_disabled_entry.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocpf_sm_enabling(ptr nocapture noundef %iocpf, i32 noundef %event) #0 align 64 {
entry:
  %tlen.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %event, label %do.end20 [
    i32 5, label %sw.bb
    i32 8, label %sw.bb2
    i32 11, label %entry.sw.bb5_crit_edge
    i32 2, label %sw.bb10
  ]

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf_timer = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 4
  %call = tail call i32 @del_timer(ptr noundef %iocpf_timer) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @arm_heavy_mb() #15
  %ioc_sem_reg.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 9
  %3 = ptrtoint ptr %ioc_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc_sem_reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 16777216) #15, !srcloc !128
  %5 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bfa_iocpf_sm_ready, ptr %iocpf, align 4
  %6 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioc1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void %9(ptr noundef %7, i32 noundef 5) #15
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf_timer3 = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 4
  %call4 = tail call i32 @del_timer(ptr noundef %iocpf_timer3) #15
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb2, %entry.sw.bb5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @arm_heavy_mb() #15
  %ioc_sem_reg.i38 = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 9
  %10 = ptrtoint ptr %ioc_sem_reg.i38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioc_sem_reg.i38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 16777216) #15, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %event)
  %cmp = icmp eq i32 %event, 11
  br i1 %cmp, label %if.then, label %sw.bb5.do.body6_crit_edge

sw.bb5.do.body6_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body6

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  tail call void %13(ptr noundef %1, i32 noundef 8) #15
  br label %do.body6

do.body6:                                         ; preds = %if.then, %sw.bb5.do.body6_crit_edge
  %14 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @bfa_iocpf_sm_initfail_sync, ptr %iocpf, align 4
  %15 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioc1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tlen.i.i) #15
  %dbg_fwsave_once.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %dbg_fwsave_once.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dbg_fwsave_once.i.i, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %do.body6.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge, label %if.then.i.i

do.body6.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge: ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_nw_ioc_debug_save_ftrc.exit.i

if.then.i.i:                                      ; preds = %do.body6
  %19 = ptrtoint ptr %dbg_fwsave_once.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %dbg_fwsave_once.i.i, align 4
  %dbg_fwsave_len.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %16, i32 0, i32 10
  %20 = ptrtoint ptr %dbg_fwsave_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dbg_fwsave_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool2.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge, label %if.then3.i.i

if.then.i.i.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_nw_ioc_debug_save_ftrc.exit.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %tlen.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tlen.i.i, align 4
  %dbg_fwsave.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %16, i32 0, i32 9
  %23 = ptrtoint ptr %dbg_fwsave.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dbg_fwsave.i.i, align 4
  %call.i.i = call i32 @bfa_nw_ioc_debug_fwtrc(ptr noundef %16, ptr noundef %24, ptr noundef nonnull %tlen.i.i) #15
  br label %bfa_nw_ioc_debug_save_ftrc.exit.i

bfa_nw_ioc_debug_save_ftrc.exit.i:                ; preds = %if.then3.i.i, %if.then.i.i.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge, %do.body6.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tlen.i.i) #15
  %25 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioc1, align 4
  %ioc_sem_reg.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %26, i32 0, i32 13, i32 9
  %27 = ptrtoint ptr %ioc_sem_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioc_sem_reg.i.i, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i.i = icmp eq i32 %29, -1
  br i1 %cmp.i.i, label %if.then.i3.i, label %if.end.i.i

if.then.i3.i:                                     ; preds = %bfa_nw_ioc_debug_save_ftrc.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %26, i32 0, i32 24
  %30 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iocpf.i.i, align 8
  tail call void %31(ptr noundef %iocpf.i.i, i32 noundef 12) #15
  br label %sw.epilog

if.end.i.i:                                       ; preds = %bfa_nw_ioc_debug_save_ftrc.exit.i
  %32 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i4.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i4.i, label %if.then3.i5.i, label %if.end7.i.i

if.then3.i5.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf4.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %26, i32 0, i32 24
  %33 = ptrtoint ptr %iocpf4.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iocpf4.i.i, align 8
  tail call void %34(ptr noundef %iocpf4.i.i, i32 noundef 10) #15
  br label %sw.epilog

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sem_timer.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %26, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %35, 50
  %call9.i.i = tail call i32 @mod_timer(ptr noundef %sem_timer.i.i, i32 noundef %add.i.i) #15
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf_timer11 = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 4
  %call12 = tail call i32 @del_timer(ptr noundef %iocpf_timer11) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @arm_heavy_mb() #15
  %ioc_sem_reg.i40 = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 9
  %36 = ptrtoint ptr %ioc_sem_reg.i40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioc_sem_reg.i40, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 16777216) #15, !srcloc !128
  %38 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @bfa_iocpf_sm_disabling, ptr %iocpf, align 4
  tail call fastcc void @bfa_iocpf_sm_disabling_entry(ptr noundef %iocpf)
  br label %sw.epilog

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 800, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end20, %sw.bb10, %if.end7.i.i, %if.then3.i5.i, %if.then.i3.i, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocpf_sm_initfail_sync(ptr nocapture noundef %iocpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %event, label %do.end23 [
    i32 10, label %sw.bb
    i32 12, label %do.body5
    i32 2, label %sw.bb9
    i32 3, label %sw.bb14
    i32 7, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ioc_hwif = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc_hwif, align 4
  %ioc_notify_fail = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %ioc_notify_fail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioc_notify_fail, align 4
  tail call void %6(ptr noundef %1) #15
  %7 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_hwif, align 4
  %ioc_sync_leave = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %ioc_sync_leave to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioc_sync_leave, align 4
  tail call void %10(ptr noundef %1) #15
  %11 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioc_hwif, align 4
  %ioc_set_fwstate = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %ioc_set_fwstate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioc_set_fwstate, align 4
  tail call void %14(ptr noundef %1, i32 noundef 8) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @arm_heavy_mb() #15
  %ioc_sem_reg.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 9
  %15 = ptrtoint ptr %ioc_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioc_sem_reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 16777216) #15, !srcloc !128
  %17 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_iocpf_sm_initfail, ptr %iocpf, align 4
  br label %sw.epilog

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfa_iocpf_sm_fail, ptr %iocpf, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  tail call void %20(ptr noundef %1, i32 noundef 12) #15
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %sem_timer.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 5
  %call.i = tail call i32 @del_timer(ptr noundef %sem_timer.i) #15
  %21 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @bfa_iocpf_sm_disabling_sync, ptr %iocpf, align 4
  %22 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioc1, align 4
  %ioc_sem_reg.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %23, i32 0, i32 13, i32 9
  %24 = ptrtoint ptr %ioc_sem_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioc_sem_reg.i.i, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.i = icmp eq i32 %26, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %23, i32 0, i32 24
  %27 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iocpf.i.i, align 8
  tail call void %28(ptr noundef %iocpf.i.i, i32 noundef 12) #15
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb9
  %29 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %if.then3.i.i, label %if.end7.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf4.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %23, i32 0, i32 24
  %30 = ptrtoint ptr %iocpf4.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iocpf4.i.i, align 8
  tail call void %31(ptr noundef %iocpf4.i.i, i32 noundef 10) #15
  br label %sw.epilog

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sem_timer.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %23, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %32, 50
  %call9.i.i = tail call i32 @mod_timer(ptr noundef %sem_timer.i.i, i32 noundef %add.i.i) #15
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sem_timer.i46 = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 5
  %call.i47 = tail call i32 @del_timer(ptr noundef %sem_timer.i46) #15
  %ioc_hwif15 = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 23
  %33 = ptrtoint ptr %ioc_hwif15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioc_hwif15, align 4
  %ioc_firmware_unlock = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %ioc_firmware_unlock to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioc_firmware_unlock, align 4
  tail call void %36(ptr noundef %1) #15
  %37 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @bfa_iocpf_sm_reset, ptr %iocpf, align 4
  %fw_mismatch_notified.i = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 2
  %38 = ptrtoint ptr %fw_mismatch_notified.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %fw_mismatch_notified.i, align 4
  %39 = load i8, ptr @bfa_nw_auto_recover, align 1, !range !143
  %auto_recover.i = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 3
  %40 = ptrtoint ptr %auto_recover.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %auto_recover.i, align 1
  br label %sw.epilog

do.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 970, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end23, %sw.bb14, %if.end7.i.i, %if.then3.i.i, %if.then.i.i, %do.body5, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocpf_sm_disabled(ptr nocapture noundef %iocpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %event, label %do.end10 [
    i32 1, label %do.body
    i32 3, label %sw.bb2
  ]

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bfa_iocpf_sm_semwait, ptr %iocpf, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %2 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc.i, align 4
  %ioc_sem_reg.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %3, i32 0, i32 13, i32 9
  %4 = ptrtoint ptr %ioc_sem_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioc_sem_reg.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.i = icmp eq i32 %6, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %3, i32 0, i32 24
  %7 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iocpf.i.i, align 8
  tail call void %8(ptr noundef %iocpf.i.i, i32 noundef 12) #15
  br label %sw.epilog

if.end.i.i:                                       ; preds = %do.body
  %9 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.then3.i.i, label %if.end7.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf4.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %3, i32 0, i32 24
  %10 = ptrtoint ptr %iocpf4.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iocpf4.i.i, align 8
  tail call void %11(ptr noundef %iocpf4.i.i, i32 noundef 10) #15
  br label %sw.epilog

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sem_timer.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %3, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %12, 50
  %call9.i.i = tail call i32 @mod_timer(ptr noundef %sem_timer.i.i, i32 noundef %add.i.i) #15
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ioc1 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %13 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioc1, align 4
  %ioc_hwif = getelementptr inbounds %struct.bfa_ioc, ptr %14, i32 0, i32 23
  %15 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioc_hwif, align 4
  %ioc_firmware_unlock = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %ioc_firmware_unlock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioc_firmware_unlock, align 4
  tail call void %18(ptr noundef %14) #15
  %19 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bfa_iocpf_sm_reset, ptr %iocpf, align 4
  %fw_mismatch_notified.i = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 2
  %20 = ptrtoint ptr %fw_mismatch_notified.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %fw_mismatch_notified.i, align 4
  %21 = load i8, ptr @bfa_nw_auto_recover, align 1, !range !143
  %auto_recover.i = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 3
  %22 = ptrtoint ptr %auto_recover.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %auto_recover.i, align 1
  br label %sw.epilog

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 924, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end10, %sw.bb2, %if.end7.i.i, %if.then3.i.i, %if.then.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocpf_sm_ready(ptr nocapture noundef %iocpf, i32 noundef %event) #0 align 64 {
entry:
  %tlen.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %event, label %do.end11 [
    i32 2, label %do.body
    i32 9, label %do.body2
    i32 7, label %do.body6
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bfa_iocpf_sm_disabling, ptr %iocpf, align 4
  tail call fastcc void @bfa_iocpf_sm_disabling_entry(ptr noundef %iocpf)
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %2 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bfa_iocpf_sm_initfail_sync, ptr %iocpf, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %3 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tlen.i.i) #15
  %dbg_fwsave_once.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %dbg_fwsave_once.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dbg_fwsave_once.i.i, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %do.body2.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge, label %if.then.i.i

do.body2.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge: ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_nw_ioc_debug_save_ftrc.exit.i

if.then.i.i:                                      ; preds = %do.body2
  %7 = ptrtoint ptr %dbg_fwsave_once.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %dbg_fwsave_once.i.i, align 4
  %dbg_fwsave_len.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %4, i32 0, i32 10
  %8 = ptrtoint ptr %dbg_fwsave_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dbg_fwsave_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge, label %if.then3.i.i

if.then.i.i.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_nw_ioc_debug_save_ftrc.exit.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %tlen.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tlen.i.i, align 4
  %dbg_fwsave.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %4, i32 0, i32 9
  %11 = ptrtoint ptr %dbg_fwsave.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dbg_fwsave.i.i, align 4
  %call.i.i = call i32 @bfa_nw_ioc_debug_fwtrc(ptr noundef %4, ptr noundef %12, ptr noundef nonnull %tlen.i.i) #15
  br label %bfa_nw_ioc_debug_save_ftrc.exit.i

bfa_nw_ioc_debug_save_ftrc.exit.i:                ; preds = %if.then3.i.i, %if.then.i.i.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge, %do.body2.bfa_nw_ioc_debug_save_ftrc.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tlen.i.i) #15
  %13 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioc.i, align 4
  %ioc_sem_reg.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %14, i32 0, i32 13, i32 9
  %15 = ptrtoint ptr %ioc_sem_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioc_sem_reg.i.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i.i = icmp eq i32 %17, -1
  br i1 %cmp.i.i, label %if.then.i3.i, label %if.end.i.i

if.then.i3.i:                                     ; preds = %bfa_nw_ioc_debug_save_ftrc.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %14, i32 0, i32 24
  %18 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iocpf.i.i, align 8
  tail call void %19(ptr noundef %iocpf.i.i, i32 noundef 12) #15
  br label %sw.epilog

if.end.i.i:                                       ; preds = %bfa_nw_ioc_debug_save_ftrc.exit.i
  %20 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i4.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i4.i, label %if.then3.i5.i, label %if.end7.i.i

if.then3.i5.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf4.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %14, i32 0, i32 24
  %21 = ptrtoint ptr %iocpf4.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iocpf4.i.i, align 8
  tail call void %22(ptr noundef %iocpf4.i.i, i32 noundef 10) #15
  br label %sw.epilog

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sem_timer.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %14, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %23, 50
  %call9.i.i = tail call i32 @mod_timer(ptr noundef %sem_timer.i.i, i32 noundef %add.i.i) #15
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  %24 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @bfa_iocpf_sm_fail_sync, ptr %iocpf, align 4
  %ioc.i19 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %25 = ptrtoint ptr %ioc.i19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioc.i19, align 4
  %pss_ctl_reg.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %26, i32 0, i32 13, i32 5
  %27 = ptrtoint ptr %pss_ctl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pss_ctl_reg.i.i, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !180
  %30 = or i32 %29, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !181
  tail call void @arm_heavy_mb() #15
  %31 = ptrtoint ptr %pss_ctl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pss_ctl_reg.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #15, !srcloc !128
  %33 = ptrtoint ptr %ioc.i19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioc.i19, align 4
  %mbox_mod.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %34, i32 0, i32 22
  %35 = ptrtoint ptr %mbox_mod.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %mbox_mod.i.i, align 4
  %cmp.i.not3.i.i = icmp eq ptr %36, %mbox_mod.i.i
  br i1 %cmp.i.not3.i.i, label %do.body6.bfa_ioc_mbox_flush.exit.i_crit_edge, label %do.body6.while.body.i.i_crit_edge

do.body6.while.body.i.i_crit_edge:                ; preds = %do.body6
  br label %while.body.i.i

do.body6.bfa_ioc_mbox_flush.exit.i_crit_edge:     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_mbox_flush.exit.i

while.body.i.i:                                   ; preds = %list_del.exit.i.i.while.body.i.i_crit_edge, %do.body6.while.body.i.i_crit_edge
  %37 = phi ptr [ %47, %list_del.exit.i.i.while.body.i.i_crit_edge ], [ %36, %do.body6.while.body.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %37) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.i.list_del.exit.i.i_crit_edge

while.body.i.i.list_del.exit.i.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i.i, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %while.body.i.i.list_del.exit.i.i_crit_edge
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %37, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %46 = ptrtoint ptr %mbox_mod.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %mbox_mod.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %47, %mbox_mod.i.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.bfa_ioc_mbox_flush.exit.i_crit_edge, label %list_del.exit.i.i.while.body.i.i_crit_edge

list_del.exit.i.i.while.body.i.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

list_del.exit.i.i.bfa_ioc_mbox_flush.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_mbox_flush.exit.i

bfa_ioc_mbox_flush.exit.i:                        ; preds = %list_del.exit.i.i.bfa_ioc_mbox_flush.exit.i_crit_edge, %do.body6.bfa_ioc_mbox_flush.exit.i_crit_edge
  %48 = ptrtoint ptr %ioc.i19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioc.i19, align 4
  %ioc_sem_reg.i.i20 = getelementptr inbounds %struct.bfa_ioc, ptr %49, i32 0, i32 13, i32 9
  %50 = ptrtoint ptr %ioc_sem_reg.i.i20 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ioc_sem_reg.i.i20, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp.i.i21 = icmp eq i32 %52, -1
  br i1 %cmp.i.i21, label %if.then.i.i23, label %if.end.i.i25

if.then.i.i23:                                    ; preds = %bfa_ioc_mbox_flush.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i.i22 = getelementptr inbounds %struct.bfa_ioc, ptr %49, i32 0, i32 24
  %53 = ptrtoint ptr %iocpf.i.i22 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iocpf.i.i22, align 8
  tail call void %54(ptr noundef %iocpf.i.i22, i32 noundef 12) #15
  br label %sw.epilog

if.end.i.i25:                                     ; preds = %bfa_ioc_mbox_flush.exit.i
  %55 = and i32 %52, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i24 = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i24, label %if.then3.i.i27, label %if.end7.i.i31

if.then3.i.i27:                                   ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf4.i.i26 = getelementptr inbounds %struct.bfa_ioc, ptr %49, i32 0, i32 24
  %56 = ptrtoint ptr %iocpf4.i.i26 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iocpf4.i.i26, align 8
  tail call void %57(ptr noundef %iocpf4.i.i26, i32 noundef 10) #15
  br label %sw.epilog

if.end7.i.i31:                                    ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #17
  %sem_timer.i.i28 = getelementptr inbounds %struct.bfa_ioc, ptr %49, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %add.i.i29 = add i32 %58, 50
  %call9.i.i30 = tail call i32 @mod_timer(ptr noundef %sem_timer.i.i28, i32 noundef %add.i.i29) #15
  br label %sw.epilog

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 827, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end11, %if.end7.i.i31, %if.then3.i.i27, %if.then.i.i23, %if.end7.i.i, %if.then3.i5.i, %if.then.i3.i, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocpf_sm_disabling(ptr nocapture noundef %iocpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %event, label %do.end13 [
    i32 6, label %sw.bb
    i32 7, label %sw.bb2
    i32 11, label %entry.sw.bb5_crit_edge
    i32 5, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

sw.bb:                                            ; preds = %entry
  %iocpf_timer = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 4
  %call = tail call i32 @del_timer(ptr noundef %iocpf_timer) #15
  %3 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bfa_iocpf_sm_disabling_sync, ptr %iocpf, align 4
  %4 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioc1, align 4
  %ioc_sem_reg.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %5, i32 0, i32 13, i32 9
  %6 = ptrtoint ptr %ioc_sem_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioc_sem_reg.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.i = icmp eq i32 %8, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %5, i32 0, i32 24
  %9 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iocpf.i.i, align 8
  tail call void %10(ptr noundef %iocpf.i.i, i32 noundef 12) #15
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb
  %11 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.then3.i.i, label %if.end7.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf4.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %5, i32 0, i32 24
  %12 = ptrtoint ptr %iocpf4.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iocpf4.i.i, align 8
  tail call void %13(ptr noundef %iocpf4.i.i, i32 noundef 10) #15
  br label %sw.epilog

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sem_timer.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %5, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %14, 50
  %call9.i.i = tail call i32 @mod_timer(ptr noundef %sem_timer.i.i, i32 noundef %add.i.i) #15
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf_timer3 = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 4
  %call4 = tail call i32 @del_timer(ptr noundef %iocpf_timer3) #15
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb2, %entry.sw.bb5_crit_edge
  %ioc_hwif = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 23
  %15 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioc_hwif, align 4
  %ioc_set_fwstate = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %ioc_set_fwstate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioc_set_fwstate, align 4
  tail call void %18(ptr noundef %1, i32 noundef 8) #15
  %19 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bfa_iocpf_sm_disabling_sync, ptr %iocpf, align 4
  %20 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioc1, align 4
  %ioc_sem_reg.i.i26 = getelementptr inbounds %struct.bfa_ioc, ptr %21, i32 0, i32 13, i32 9
  %22 = ptrtoint ptr %ioc_sem_reg.i.i26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioc_sem_reg.i.i26, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.i27 = icmp eq i32 %24, -1
  br i1 %cmp.i.i27, label %if.then.i.i29, label %if.end.i.i31

if.then.i.i29:                                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i.i28 = getelementptr inbounds %struct.bfa_ioc, ptr %21, i32 0, i32 24
  %25 = ptrtoint ptr %iocpf.i.i28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iocpf.i.i28, align 8
  tail call void %26(ptr noundef %iocpf.i.i28, i32 noundef 12) #15
  br label %sw.epilog

if.end.i.i31:                                     ; preds = %sw.bb5
  %27 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i30 = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i30, label %if.then3.i.i33, label %if.end7.i.i37

if.then3.i.i33:                                   ; preds = %if.end.i.i31
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf4.i.i32 = getelementptr inbounds %struct.bfa_ioc, ptr %21, i32 0, i32 24
  %28 = ptrtoint ptr %iocpf4.i.i32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iocpf4.i.i32, align 8
  tail call void %29(ptr noundef %iocpf4.i.i32, i32 noundef 10) #15
  br label %sw.epilog

if.end7.i.i37:                                    ; preds = %if.end.i.i31
  call void @__sanitizer_cov_trace_pc() #17
  %sem_timer.i.i34 = getelementptr inbounds %struct.bfa_ioc, ptr %21, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add.i.i35 = add i32 %30, 50
  %call9.i.i36 = tail call i32 @mod_timer(ptr noundef %sem_timer.i.i34, i32 noundef %add.i.i35) #15
  br label %sw.epilog

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 864, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end13, %if.end7.i.i37, %if.then3.i.i33, %if.then.i.i29, %if.end7.i.i, %if.then3.i.i, %if.then.i.i, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_iocpf_sm_disabling_entry(ptr nocapture noundef readonly %iocpf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %0 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc, align 4
  %iocpf_timer = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 300
  %call1 = tail call i32 @mod_timer(ptr noundef %iocpf_timer, i32 noundef %add) #15
  %3 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc, align 4
  %port_id.i = getelementptr inbounds %struct.bfa_ioc, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port_id.i, align 1
  %clscode.i = getelementptr inbounds %struct.bfa_ioc, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %clscode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clscode.i, align 8
  %call.i = tail call i64 @ktime_get_real_seconds() #15
  %conv4.i = trunc i64 %call.i to i32
  %hfn_mbox.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %4, i32 0, i32 13, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %disable_req.sroa.0.sroa.7.sroa.4.0.insert.ext.i = zext i8 %6 to i32
  %disable_req.sroa.0.sroa.0.0.insert.insert.i = or i32 %disable_req.sroa.0.sroa.7.sroa.4.0.insert.ext.i, 16973568
  %9 = ptrtoint ptr %hfn_mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hfn_mbox.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %disable_req.sroa.0.sroa.0.0.insert.insert.i) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %disable_req.sroa.9.sroa.0.0.insert.shift.i = shl i32 %8, 16
  %11 = ptrtoint ptr %hfn_mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hfn_mbox.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 %disable_req.sroa.9.sroa.0.0.insert.shift.i) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !134
  tail call void @arm_heavy_mb() #15
  %13 = ptrtoint ptr %hfn_mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hfn_mbox.i.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i, i32 %conv4.i) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %15 = ptrtoint ptr %hfn_mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hfn_mbox.i.i, align 4
  %add.ptr22.i.i = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %17 = ptrtoint ptr %hfn_mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hfn_mbox.i.i, align 4
  %add.ptr22.i.1.i = getelementptr i8, ptr %18, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.1.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %19 = ptrtoint ptr %hfn_mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hfn_mbox.i.i, align 4
  %add.ptr22.i.2.i = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.2.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %21 = ptrtoint ptr %hfn_mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hfn_mbox.i.i, align 4
  %add.ptr22.i.3.i = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.3.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %23 = ptrtoint ptr %hfn_mbox.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hfn_mbox.i.i, align 4
  %add.ptr22.i.4.i = getelementptr i8, ptr %24, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.4.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !135
  tail call void @arm_heavy_mb() #15
  %ioc_regs29.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %4, i32 0, i32 13
  %25 = ptrtoint ptr %ioc_regs29.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioc_regs29.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 16777216) #15, !srcloc !128
  %27 = ptrtoint ptr %ioc_regs29.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioc_regs29.i.i, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocpf_sm_fail_sync(ptr nocapture noundef %iocpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %event, label %do.end30 [
    i32 10, label %sw.bb
    i32 12, label %do.body18
    i32 2, label %sw.bb22
    i32 7, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ioc_hwif = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc_hwif, align 4
  %ioc_sync_ack = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %ioc_sync_ack to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioc_sync_ack, align 4
  tail call void %6(ptr noundef %1) #15
  %7 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_hwif, align 4
  %ioc_notify_fail = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %ioc_notify_fail to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioc_notify_fail, align 4
  tail call void %10(ptr noundef %1) #15
  %auto_recover = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 3
  %11 = ptrtoint ptr %auto_recover to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %auto_recover, align 1, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %13 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioc_hwif, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %ioc_sync_leave = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %ioc_sync_leave to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioc_sync_leave, align 4
  tail call void %16(ptr noundef %1) #15
  %17 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioc_hwif, align 4
  %ioc_set_fwstate = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %ioc_set_fwstate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioc_set_fwstate, align 4
  tail call void %20(ptr noundef %1, i32 noundef 8) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @arm_heavy_mb() #15
  %ioc_sem_reg.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 9
  %21 = ptrtoint ptr %ioc_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioc_sem_reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 16777216) #15, !srcloc !128
  %23 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bfa_iocpf_sm_fail, ptr %iocpf, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %ioc_sync_complete = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %14, i32 0, i32 12
  %24 = ptrtoint ptr %ioc_sync_complete to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioc_sync_complete, align 4
  %call = tail call zeroext i1 %25(ptr noundef %1) #15
  br i1 %call, label %do.body7, label %if.else11

do.body7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bfa_iocpf_sm_hwinit, ptr %iocpf, align 4
  tail call fastcc void @bfa_iocpf_sm_hwinit_entry(ptr noundef %iocpf)
  br label %sw.epilog

if.else11:                                        ; preds = %if.else
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @arm_heavy_mb() #15
  %ioc_sem_reg.i59 = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 9
  %27 = ptrtoint ptr %ioc_sem_reg.i59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioc_sem_reg.i59, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 16777216) #15, !srcloc !128
  %29 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @bfa_iocpf_sm_semwait, ptr %iocpf, align 4
  %30 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioc1, align 4
  %ioc_sem_reg.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %31, i32 0, i32 13, i32 9
  %32 = ptrtoint ptr %ioc_sem_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioc_sem_reg.i.i, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp.i.i = icmp eq i32 %34, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %31, i32 0, i32 24
  %35 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iocpf.i.i, align 8
  tail call void %36(ptr noundef %iocpf.i.i, i32 noundef 12) #15
  br label %sw.epilog

if.end.i.i:                                       ; preds = %if.else11
  %37 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i, label %if.then3.i.i, label %if.end7.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf4.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %31, i32 0, i32 24
  %38 = ptrtoint ptr %iocpf4.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iocpf4.i.i, align 8
  tail call void %39(ptr noundef %iocpf4.i.i, i32 noundef 10) #15
  br label %sw.epilog

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sem_timer.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %31, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %40, 50
  %call9.i.i = tail call i32 @mod_timer(ptr noundef %sem_timer.i.i, i32 noundef %add.i.i) #15
  br label %sw.epilog

do.body18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bfa_iocpf_sm_fail, ptr %iocpf, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  tail call void %43(ptr noundef %1, i32 noundef 12) #15
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %sem_timer.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 5
  %call.i = tail call i32 @del_timer(ptr noundef %sem_timer.i) #15
  %44 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @bfa_iocpf_sm_disabling_sync, ptr %iocpf, align 4
  %45 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ioc1, align 4
  %ioc_sem_reg.i.i61 = getelementptr inbounds %struct.bfa_ioc, ptr %46, i32 0, i32 13, i32 9
  %47 = ptrtoint ptr %ioc_sem_reg.i.i61 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioc_sem_reg.i.i61, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.i.i62 = icmp eq i32 %49, -1
  br i1 %cmp.i.i62, label %if.then.i.i64, label %if.end.i.i66

if.then.i.i64:                                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i.i63 = getelementptr inbounds %struct.bfa_ioc, ptr %46, i32 0, i32 24
  %50 = ptrtoint ptr %iocpf.i.i63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iocpf.i.i63, align 8
  tail call void %51(ptr noundef %iocpf.i.i63, i32 noundef 12) #15
  br label %sw.epilog

if.end.i.i66:                                     ; preds = %sw.bb22
  %52 = and i32 %49, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i65 = icmp eq i32 %52, 0
  br i1 %tobool.not.i.i65, label %if.then3.i.i68, label %if.end7.i.i72

if.then3.i.i68:                                   ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf4.i.i67 = getelementptr inbounds %struct.bfa_ioc, ptr %46, i32 0, i32 24
  %53 = ptrtoint ptr %iocpf4.i.i67 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iocpf4.i.i67, align 8
  tail call void %54(ptr noundef %iocpf4.i.i67, i32 noundef 10) #15
  br label %sw.epilog

if.end7.i.i72:                                    ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #17
  %sem_timer.i.i69 = getelementptr inbounds %struct.bfa_ioc, ptr %46, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %add.i.i70 = add i32 %55, 50
  %call9.i.i71 = tail call i32 @mod_timer(ptr noundef %sem_timer.i.i69, i32 noundef %add.i.i70) #15
  br label %sw.epilog

do.end30:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1054, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end30, %if.end7.i.i72, %if.then3.i.i68, %if.then.i.i64, %do.body18, %if.end7.i.i, %if.then3.i.i, %if.then.i.i, %do.body7, %if.then, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocpf_sm_semwait(ptr nocapture noundef %iocpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %event, label %do.end18 [
    i32 10, label %sw.bb
    i32 12, label %do.body6
    i32 2, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %ioc_hwif = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc_hwif, align 4
  %ioc_sync_complete = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %ioc_sync_complete to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioc_sync_complete, align 4
  %call = tail call zeroext i1 %6(ptr noundef %1) #15
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_hwif, align 4
  %ioc_sync_join = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %ioc_sync_join to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioc_sync_join, align 4
  tail call void %10(ptr noundef %1) #15
  %11 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bfa_iocpf_sm_hwinit, ptr %iocpf, align 4
  tail call fastcc void @bfa_iocpf_sm_hwinit_entry(ptr noundef %iocpf)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @arm_heavy_mb() #15
  %ioc_sem_reg.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 9
  %12 = ptrtoint ptr %ioc_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioc_sem_reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 16777216) #15, !srcloc !128
  %sem_timer = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 50
  %call4 = tail call i32 @mod_timer(ptr noundef %sem_timer, i32 noundef %add) #15
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @bfa_iocpf_sm_fail, ptr %iocpf, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  tail call void %17(ptr noundef %1, i32 noundef 12) #15
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %sem_timer.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 5
  %call.i = tail call i32 @del_timer(ptr noundef %sem_timer.i) #15
  %18 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfa_iocpf_sm_disabling_sync, ptr %iocpf, align 4
  %19 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioc1, align 4
  %ioc_sem_reg.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %20, i32 0, i32 13, i32 9
  %21 = ptrtoint ptr %ioc_sem_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioc_sem_reg.i.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i.i = icmp eq i32 %23, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %20, i32 0, i32 24
  %24 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iocpf.i.i, align 8
  tail call void %25(ptr noundef %iocpf.i.i, i32 noundef 12) #15
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb10
  %26 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %if.then3.i.i, label %if.end7.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf4.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %20, i32 0, i32 24
  %27 = ptrtoint ptr %iocpf4.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iocpf4.i.i, align 8
  tail call void %28(ptr noundef %iocpf4.i.i, i32 noundef 10) #15
  br label %sw.epilog

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sem_timer.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %20, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %29, 50
  %call9.i.i = tail call i32 @mod_timer(ptr noundef %sem_timer.i.i, i32 noundef %add.i.i) #15
  br label %sw.epilog

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 713, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end18, %if.end7.i.i, %if.then3.i.i, %if.then.i.i, %do.body6, %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocpf_sm_disabling_sync(ptr nocapture noundef %iocpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %event, label %do.end10 [
    i32 10, label %sw.bb
    i32 12, label %do.body3
    i32 7, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ioc_hwif = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc_hwif, align 4
  %ioc_sync_leave = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %ioc_sync_leave to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioc_sync_leave, align 4
  tail call void %6(ptr noundef %1) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !129
  tail call void @arm_heavy_mb() #15
  %ioc_sem_reg.i = getelementptr inbounds %struct.bfa_ioc, ptr %1, i32 0, i32 13, i32 9
  %7 = ptrtoint ptr %ioc_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_sem_reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 16777216) #15, !srcloc !128
  %9 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @bfa_iocpf_sm_disabled, ptr %iocpf, align 4
  %10 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioc1, align 4
  %mbox_mod.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %mbox_mod.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %mbox_mod.i.i, align 4
  %cmp.i.not3.i.i = icmp eq ptr %13, %mbox_mod.i.i
  br i1 %cmp.i.not3.i.i, label %sw.bb.bfa_iocpf_sm_disabled_entry.exit_crit_edge, label %sw.bb.while.body.i.i_crit_edge

sw.bb.while.body.i.i_crit_edge:                   ; preds = %sw.bb
  br label %while.body.i.i

sw.bb.bfa_iocpf_sm_disabled_entry.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_iocpf_sm_disabled_entry.exit

while.body.i.i:                                   ; preds = %list_del.exit.i.i.while.body.i.i_crit_edge, %sw.bb.while.body.i.i_crit_edge
  %14 = phi ptr [ %24, %list_del.exit.i.i.while.body.i.i_crit_edge ], [ %13, %sw.bb.while.body.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.i.list_del.exit.i.i_crit_edge

while.body.i.i.list_del.exit.i.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %while.body.i.i.list_del.exit.i.i_crit_edge
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %mbox_mod.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %mbox_mod.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %24, %mbox_mod.i.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.bfa_iocpf_sm_disabled_entry.exit_crit_edge, label %list_del.exit.i.i.while.body.i.i_crit_edge

list_del.exit.i.i.while.body.i.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

list_del.exit.i.i.bfa_iocpf_sm_disabled_entry.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_iocpf_sm_disabled_entry.exit

bfa_iocpf_sm_disabled_entry.exit:                 ; preds = %list_del.exit.i.i.bfa_iocpf_sm_disabled_entry.exit_crit_edge, %sw.bb.bfa_iocpf_sm_disabled_entry.exit_crit_edge
  %25 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioc1, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  tail call void %28(ptr noundef %26, i32 noundef 7) #15
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @bfa_iocpf_sm_fail, ptr %iocpf, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  tail call void %31(ptr noundef %1, i32 noundef 12) #15
  br label %sw.epilog

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 896, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end10, %do.body3, %bfa_iocpf_sm_disabled_entry.exit, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_iocpf_sm_initfail(ptr nocapture noundef %iocpf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %event, label %do.end10 [
    i32 2, label %do.body
    i32 3, label %sw.bb2
  ]

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bfa_iocpf_sm_disabled, ptr %iocpf, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %2 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc.i, align 4
  %mbox_mod.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %mbox_mod.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mbox_mod.i.i, align 4
  %cmp.i.not3.i.i = icmp eq ptr %5, %mbox_mod.i.i
  br i1 %cmp.i.not3.i.i, label %do.body.bfa_iocpf_sm_disabled_entry.exit_crit_edge, label %do.body.while.body.i.i_crit_edge

do.body.while.body.i.i_crit_edge:                 ; preds = %do.body
  br label %while.body.i.i

do.body.bfa_iocpf_sm_disabled_entry.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_iocpf_sm_disabled_entry.exit

while.body.i.i:                                   ; preds = %list_del.exit.i.i.while.body.i.i_crit_edge, %do.body.while.body.i.i_crit_edge
  %6 = phi ptr [ %16, %list_del.exit.i.i.while.body.i.i_crit_edge ], [ %5, %do.body.while.body.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.i.list_del.exit.i.i_crit_edge

while.body.i.i.list_del.exit.i.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %while.body.i.i.list_del.exit.i.i_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %mbox_mod.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %mbox_mod.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %16, %mbox_mod.i.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.bfa_iocpf_sm_disabled_entry.exit_crit_edge, label %list_del.exit.i.i.while.body.i.i_crit_edge

list_del.exit.i.i.while.body.i.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

list_del.exit.i.i.bfa_iocpf_sm_disabled_entry.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_iocpf_sm_disabled_entry.exit

bfa_iocpf_sm_disabled_entry.exit:                 ; preds = %list_del.exit.i.i.bfa_iocpf_sm_disabled_entry.exit_crit_edge, %do.body.bfa_iocpf_sm_disabled_entry.exit_crit_edge
  %17 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioc.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  tail call void %20(ptr noundef %18, i32 noundef 7) #15
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ioc1 = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 1
  %21 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioc1, align 4
  %ioc_hwif = getelementptr inbounds %struct.bfa_ioc, ptr %22, i32 0, i32 23
  %23 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioc_hwif, align 4
  %ioc_firmware_unlock = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %ioc_firmware_unlock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioc_firmware_unlock, align 4
  tail call void %26(ptr noundef %22) #15
  %27 = ptrtoint ptr %iocpf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bfa_iocpf_sm_reset, ptr %iocpf, align 4
  %fw_mismatch_notified.i = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 2
  %28 = ptrtoint ptr %fw_mismatch_notified.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %fw_mismatch_notified.i, align 4
  %29 = load i8, ptr @bfa_nw_auto_recover, align 1, !range !143
  %auto_recover.i = getelementptr inbounds %struct.bfa_iocpf, ptr %iocpf, i32 0, i32 3
  %30 = ptrtoint ptr %auto_recover.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %auto_recover.i, align 1
  br label %sw.epilog

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 996, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end10, %sw.bb2, %bfa_iocpf_sm_disabled_entry.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bfa_ioc_boot(ptr noundef %ioc) unnamed_addr #0 align 64 {
entry:
  %fwimg_buf.i = alloca [64 x i32], align 4
  %fwimg.i = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_boots = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 14, i32 4
  %0 = ptrtoint ptr %ioc_boots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ioc_boots, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %ioc_boots, align 8
  %ioc_init_sem_reg.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %ioc_init_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc_init_sem_reg.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !124
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not14.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not14.i.i, label %entry.bfa_nw_ioc_sem_get.exit.i_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.bfa_nw_ioc_sem_get.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_nw_ioc_sem_get.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %cnt.016.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %entry.while.body.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %cnt.016.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 429496) #15
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !125
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp ne i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %cnt.016.i.i)
  %cmp.i.i = icmp ult i32 %cnt.016.i.i, 2999
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.bfa_nw_ioc_sem_get.exit.i_crit_edge

while.body.i.i.bfa_nw_ioc_sem_get.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_nw_ioc_sem_get.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

bfa_nw_ioc_sem_get.exit.i:                        ; preds = %while.body.i.i.bfa_nw_ioc_sem_get.exit.i_crit_edge, %entry.bfa_nw_ioc_sem_get.exit.i_crit_edge
  %ioc_hwif.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 23
  %9 = ptrtoint ptr %ioc_hwif.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioc_hwif.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %pci_bar_kva.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %pci_bar_kva.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_bar_kva.i, align 4
  %asic_mode.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 26
  %15 = ptrtoint ptr %asic_mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %asic_mode.i, align 4
  %call1.i = tail call i32 %12(ptr noundef %14, i32 noundef %16) #15
  %pllinit.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 16
  %17 = ptrtoint ptr %pllinit.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %pllinit.i, align 1
  %pss_ctl_reg.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 5
  %18 = ptrtoint ptr %pss_ctl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pss_ctl_reg.i.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  %21 = and i32 %20, -197377
  %22 = or i32 %21, 66304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !183
  tail call void @arm_heavy_mb() #15
  %23 = ptrtoint ptr %pss_ctl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pss_ctl_reg.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #15, !srcloc !128
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %do.body5.i.i.do.body5.i.i_crit_edge, %bfa_nw_ioc_sem_get.exit.i
  %i.0.i.i = phi i32 [ 0, %bfa_nw_ioc_sem_get.exit.i ], [ %inc.i2.i, %do.body5.i.i.do.body5.i.i_crit_edge ]
  %25 = ptrtoint ptr %pss_ctl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pss_ctl_reg.i.i, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #15, !srcloc !123
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !184
  %and14.i.i = and i32 %28, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool.not.i1.i = icmp eq i32 %and14.i.i, 0
  %inc.i2.i = add nuw nsw i32 %i.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %i.0.i.i)
  %cmp.i3.i = icmp ult i32 %i.0.i.i, 9999
  %or.cond.i4.i = select i1 %tobool.not.i1.i, i1 %cmp.i3.i, i1 false
  br i1 %or.cond.i4.i, label %do.body5.i.i.do.body5.i.i_crit_edge, label %do.body16.i.i

do.body5.i.i.do.body5.i.i_crit_edge:              ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5.i.i

do.body16.i.i:                                    ; preds = %do.body5.i.i
  br i1 %tobool.not.i1.i, label %do.body22.i.i, label %bfa_ioc_pll_init.exit, !prof !153

do.body22.i.i:                                    ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bfa_ioc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1247, 0\0A.popsection", ""() #15, !srcloc !185
  unreachable

bfa_ioc_pll_init.exit:                            ; preds = %do.body16.i.i
  %and30.i.i = and i32 %28, -4353
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !186
  tail call void @arm_heavy_mb() #15
  %29 = tail call i32 @llvm.bswap.i32(i32 %and30.i.i) #15
  %30 = ptrtoint ptr %pss_ctl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pss_ctl_reg.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #15, !srcloc !128
  %32 = ptrtoint ptr %ioc_init_sem_reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioc_init_sem_reg.i, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !127
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 16777216) #15, !srcloc !128
  %asic_gen = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 25
  %35 = ptrtoint ptr %asic_gen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %asic_gen, align 8
  %call4 = tail call ptr @bfa_cb_image_get_chunk(i32 noundef %36, i32 noundef 0) #15
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %fwimg.i) #15
  %37 = call ptr @memset(ptr %fwimg.i, i32 255, i32 256)
  %call.i = call fastcc i32 @bfa_nw_ioc_flash_img_get_chnk(ptr noundef %ioc, i32 noundef 0, ptr noundef nonnull %fwimg.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %bfa_ioc_pll_init.exit.bfa_ioc_flash_fwver_cmp.exit_crit_edge

bfa_ioc_pll_init.exit.bfa_ioc_flash_fwver_cmp.exit_crit_edge: ; preds = %bfa_ioc_pll_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_flash_fwver_cmp.exit

if.end.i:                                         ; preds = %bfa_ioc_pll_init.exit
  %major.i.i = getelementptr inbounds %struct.bfi_ioc_image_hdr, ptr %fwimg.i, i32 0, i32 8, i32 3
  %38 = ptrtoint ptr %major.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %major.i.i, align 1
  %40 = add i8 %39, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %40)
  %switch.selectcmp.i.i = icmp ult i8 %40, -2
  br i1 %switch.selectcmp.i.i, label %if.then3.i, label %if.end.i.bfa_ioc_flash_fwver_cmp.exit_crit_edge

if.end.i.bfa_ioc_flash_fwver_cmp.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_flash_fwver_cmp.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i = call fastcc i32 @bfa_ioc_fw_ver_patch_cmp(ptr noundef %call4, ptr noundef nonnull %fwimg.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call4.i)
  %phi.cmp = icmp eq i32 %call4.i, 3
  br label %bfa_ioc_flash_fwver_cmp.exit

bfa_ioc_flash_fwver_cmp.exit:                     ; preds = %if.then3.i, %if.end.i.bfa_ioc_flash_fwver_cmp.exit_crit_edge, %bfa_ioc_pll_init.exit.bfa_ioc_flash_fwver_cmp.exit_crit_edge
  %retval.0.i = phi i1 [ %phi.cmp, %if.then3.i ], [ false, %bfa_ioc_pll_init.exit.bfa_ioc_flash_fwver_cmp.exit_crit_edge ], [ false, %if.end.i.bfa_ioc_flash_fwver_cmp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fwimg.i) #15
  %41 = ptrtoint ptr %ioc_hwif.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioc_hwif.i, align 4
  %ioc_set_fwstate14 = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %ioc_set_fwstate14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioc_set_fwstate14, align 4
  tail call void %44(ptr noundef %ioc, i32 noundef 1) #15
  %45 = ptrtoint ptr %ioc_hwif.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ioc_hwif.i, align 4
  %ioc_set_alt_fwstate16 = getelementptr inbounds %struct.bfa_ioc_hwif, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %ioc_set_alt_fwstate16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioc_set_alt_fwstate16, align 4
  tail call void %48(ptr noundef %ioc, i32 noundef 1) #15
  %lpu_mbox_cmd.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 2
  %49 = ptrtoint ptr %lpu_mbox_cmd.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lpu_mbox_cmd.i, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i, label %bfa_ioc_flash_fwver_cmp.exit.bfa_ioc_msgflush.exit_crit_edge, label %do.body.i

bfa_ioc_flash_fwver_cmp.exit.bfa_ioc_msgflush.exit_crit_edge: ; preds = %bfa_ioc_flash_fwver_cmp.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %bfa_ioc_msgflush.exit

do.body.i:                                        ; preds = %bfa_ioc_flash_fwver_cmp.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !179
  tail call void @arm_heavy_mb() #15
  %52 = ptrtoint ptr %lpu_mbox_cmd.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lpu_mbox_cmd.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 16777216) #15, !srcloc !128
  br label %bfa_ioc_msgflush.exit

bfa_ioc_msgflush.exit:                            ; preds = %do.body.i, %bfa_ioc_flash_fwver_cmp.exit.bfa_ioc_msgflush.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %fwimg_buf.i) #15
  %54 = call ptr @memset(ptr %fwimg_buf.i, i32 255, i32 256)
  br i1 %retval.0.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %bfa_ioc_msgflush.exit
  %call.i2 = call fastcc i32 @bfa_nw_ioc_flash_img_get_chnk(ptr noundef %ioc, i32 noundef 0, ptr noundef nonnull %fwimg_buf.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp2.not.i = icmp eq i32 %call.i2, 0
  br i1 %cmp2.not.i, label %if.then.i.if.end9.i_crit_edge, label %if.then.i.if.else21_crit_edge

if.then.i.if.else21_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else21

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i

if.else.i:                                        ; preds = %bfa_ioc_msgflush.exit
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %asic_gen to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %asic_gen, align 8
  %call5.i = tail call i32 @bfa_cb_image_get_size(i32 noundef %56) #15
  %57 = ptrtoint ptr %asic_gen to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %asic_gen, align 8
  %call8.i = tail call ptr @bfa_cb_image_get_chunk(i32 noundef %58, i32 noundef 0) #15
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then.i.if.end9.i_crit_edge
  %fwimg.0.i = phi ptr [ %call8.i, %if.else.i ], [ %fwimg_buf.i, %if.then.i.if.end9.i_crit_edge ]
  %fwimg_size.0.i = phi i32 [ %call5.i, %if.else.i ], [ 262144, %if.then.i.if.end9.i_crit_edge ]
  %smem_pg0.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 24
  %59 = ptrtoint ptr %smem_pg0.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %smem_pg0.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !187
  tail call void @arm_heavy_mb() #15
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #15
  %host_page_num_fn.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 13
  %62 = ptrtoint ptr %host_page_num_fn.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %host_page_num_fn.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #15, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fwimg_size.0.i)
  %cmp113.not.i = icmp eq i32 %fwimg_size.0.i, 0
  br i1 %cmp113.not.i, label %if.end9.i.if.then20_crit_edge, label %for.body.lr.ph.i

if.end9.i.if.then20_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then20

for.body.lr.ph.i:                                 ; preds = %if.end9.i
  %smem_page_start.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc44.i, %for.inc.i.for.body.i_crit_edge ]
  %chunkno.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %chunkno.1.i, %for.inc.i.for.body.i_crit_edge ]
  %loff.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %and.i, %for.inc.i.for.body.i_crit_edge ]
  %pgnum.05.i = phi i32 [ %60, %for.body.lr.ph.i ], [ %pgnum.1.i, %for.inc.i.for.body.i_crit_edge ]
  %fwimg.14.i = phi ptr [ %fwimg.0.i, %for.body.lr.ph.i ], [ %fwimg.2.i, %for.inc.i.for.body.i_crit_edge ]
  %div1.i = lshr i32 %i.08.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %chunkno.07.i)
  %cmp12.not.i = icmp eq i32 %div1.i, %chunkno.07.i
  br i1 %cmp12.not.i, label %for.body.i.do.body32.i_crit_edge, label %land.lhs.true16.i

for.body.i.do.body32.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body32.i

land.lhs.true16.i:                                ; preds = %for.body.i
  br i1 %retval.0.i, label %if.then18.i, label %if.else26.i

if.then18.i:                                      ; preds = %land.lhs.true16.i
  %mul19.i = and i32 %i.08.i, -64
  %call21.i = call fastcc i32 @bfa_nw_ioc_flash_img_get_chnk(ptr noundef %ioc, i32 noundef %mul19.i, ptr noundef nonnull %fwimg_buf.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.not.i = icmp eq i32 %call21.i, 0
  br i1 %cmp22.not.i, label %if.then18.i.do.body32.i_crit_edge, label %if.then18.i.if.else21_crit_edge

if.then18.i.if.else21_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else21

if.then18.i.do.body32.i_crit_edge:                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body32.i

if.else26.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %asic_gen to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %asic_gen, align 8
  %mul28.i = and i32 %i.08.i, -64
  %call29.i = tail call ptr @bfa_cb_image_get_chunk(i32 noundef %65, i32 noundef %mul28.i) #15
  br label %do.body32.i

do.body32.i:                                      ; preds = %if.else26.i, %if.then18.i.do.body32.i_crit_edge, %for.body.i.do.body32.i_crit_edge
  %fwimg.2.i = phi ptr [ %call29.i, %if.else26.i ], [ %fwimg.14.i, %for.body.i.do.body32.i_crit_edge ], [ %fwimg_buf.i, %if.then18.i.do.body32.i_crit_edge ]
  %chunkno.1.i = phi i32 [ %div1.i, %if.else26.i ], [ %chunkno.07.i, %for.body.i.do.body32.i_crit_edge ], [ %div1.i, %if.then18.i.do.body32.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !188
  tail call void @arm_heavy_mb() #15
  %rem.i = and i32 %i.08.i, 63
  %arrayidx.i = getelementptr i32, ptr %fwimg.2.i, i32 %rem.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i, align 4
  %68 = ptrtoint ptr %smem_page_start.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %smem_page_start.i, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 %loff.06.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %67) #15, !srcloc !128
  %add.i = add nuw nsw i32 %loff.06.i, 4
  %and.i = and i32 %add.i, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp36.i = icmp eq i32 %and.i, 0
  br i1 %cmp36.i, label %if.then37.i, label %do.body32.i.for.inc.i_crit_edge

do.body32.i.for.inc.i_crit_edge:                  ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then37.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #17
  %inc.i = add i32 %pgnum.05.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !189
  tail call void @arm_heavy_mb() #15
  %70 = tail call i32 @llvm.bswap.i32(i32 %inc.i) #15
  %71 = ptrtoint ptr %host_page_num_fn.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %host_page_num_fn.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #15, !srcloc !128
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then37.i, %do.body32.i.for.inc.i_crit_edge
  %pgnum.1.i = phi i32 [ %inc.i, %if.then37.i ], [ %pgnum.05.i, %do.body32.i.for.inc.i_crit_edge ]
  %inc44.i = add nuw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc44.i, %fwimg_size.0.i
  br i1 %exitcond.not.i, label %for.inc.i.if.then20_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.if.then20_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then20

if.then20:                                        ; preds = %for.inc.i.if.then20_crit_edge, %if.end9.i.if.then20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %73 = ptrtoint ptr %smem_pg0.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %smem_pg0.i.i, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #15
  %76 = ptrtoint ptr %host_page_num_fn.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %host_page_num_fn.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #15, !srcloc !128
  %78 = ptrtoint ptr %asic_gen to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %asic_gen, align 8
  %shl.i = shl i32 %79, 24
  %80 = ptrtoint ptr %asic_mode.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %asic_mode.i, align 4
  %shl57.i = shl i32 %81, 16
  %or.i = or i32 %shl57.i, %shl.i
  %port0_mode.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 27
  %82 = ptrtoint ptr %port0_mode.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port0_mode.i, align 8
  %shl58.i = shl i32 %83, 8
  %or59.i = or i32 %or.i, %shl58.i
  %port1_mode.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 28
  %84 = ptrtoint ptr %port1_mode.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port1_mode.i, align 4
  %or60.i = or i32 %or59.i, %85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  tail call void @arm_heavy_mb() #15
  %86 = tail call i32 @llvm.bswap.i32(i32 %or60.i) #15
  %smem_page_start65.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 23
  %87 = ptrtoint ptr %smem_page_start65.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %smem_page_start65.i, align 4
  %add.ptr66.i = getelementptr i8, ptr %88, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i, i32 %86) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  tail call void @arm_heavy_mb() #15
  %89 = ptrtoint ptr %smem_page_start65.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %smem_page_start65.i, align 4
  %add.ptr72.i = getelementptr i8, ptr %90, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 0) #15, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  tail call void @arm_heavy_mb() #15
  %91 = ptrtoint ptr %smem_page_start65.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %smem_page_start65.i, align 4
  %add.ptr78.i = getelementptr i8, ptr %92, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i, i32 0) #15, !srcloc !128
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fwimg_buf.i) #15
  %93 = ptrtoint ptr %pss_ctl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pss_ctl_reg.i.i, align 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !194
  %96 = and i32 %95, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !195
  tail call void @arm_heavy_mb() #15
  %97 = ptrtoint ptr %pss_ctl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pss_ctl_reg.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #15, !srcloc !128
  br label %cleanup

if.else21:                                        ; preds = %if.then18.i.if.else21_crit_edge, %if.then.i.if.else21_crit_edge
  %retval.0.i4.ph = phi i32 [ %call.i2, %if.then.i.if.else21_crit_edge ], [ %call21.i, %if.then18.i.if.else21_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fwimg_buf.i) #15
  %iocpf = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %99 = ptrtoint ptr %iocpf to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %iocpf, align 8
  tail call void %100(ptr noundef %iocpf, i32 noundef 11) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else21, %if.then20
  %retval.0.i47 = phi i32 [ 0, %if.then20 ], [ %retval.0.i4.ph, %if.else21 ]
  ret i32 %retval.0.i47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_cb_image_get_size(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_sm_fail_retry(ptr noundef %ioc, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %event, label %do.end22 [
    i32 5, label %do.body
    i32 8, label %entry.sw.bb1_crit_edge
    i32 10, label %entry.sw.bb1_crit_edge42
    i32 12, label %sw.bb5
    i32 2, label %entry.sw.epilog_crit_edge
    i32 3, label %do.body13
    i32 4, label %do.body17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

entry.sw.bb1_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bfa_ioc_sm_getattr, ptr %ioc, align 8
  tail call fastcc void @bfa_ioc_sm_getattr_entry(ptr noundef %ioc)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge42
  %cbfn = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 21
  %2 = ptrtoint ptr %cbfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cbfn, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bfa = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 1
  %6 = ptrtoint ptr %bfa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bfa, align 4
  tail call void %5(ptr noundef %7, i32 noundef 56) #15
  %8 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bfa_ioc_sm_fail, ptr %ioc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %event)
  %cmp.not = icmp eq i32 %event, 8
  br i1 %cmp.not, label %sw.bb1.sw.epilog_crit_edge, label %if.then

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  %iocpf.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %9 = ptrtoint ptr %iocpf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iocpf.i, align 8
  tail call void %10(ptr noundef %iocpf.i, i32 noundef 8) #15
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cbfn6 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 21
  %11 = ptrtoint ptr %cbfn6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cbfn6, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %bfa8 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 1
  %15 = ptrtoint ptr %bfa8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bfa8, align 4
  tail call void %14(ptr noundef %16, i32 noundef 56) #15
  %17 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bfa_ioc_sm_hwfail, ptr %ioc, align 8
  br label %sw.epilog

do.body13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bfa_ioc_sm_disabling, ptr %ioc, align 8
  %iocpf.i.i = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %19 = ptrtoint ptr %iocpf.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iocpf.i.i, align 8
  tail call void %20(ptr noundef %iocpf.i.i, i32 noundef 2) #15
  br label %sw.epilog

do.body17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %ioc to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @bfa_ioc_sm_uninit, ptr %ioc, align 8
  %iocpf.i41 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 24
  %22 = ptrtoint ptr %iocpf.i41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iocpf.i41, align 8
  tail call void %23(ptr noundef %iocpf.i41, i32 noundef 3) #15
  br label %sw.epilog

do.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 493, i32 noundef %event) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end22, %do.body17, %do.body13, %sw.bb5, %if.then, %sw.bb1.sw.epilog_crit_edge, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105, !107, !109, !110, !111, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 2564, i32 3}
!2 = !{ptr @bfa_nw_auto_recover, !3, !"bfa_nw_auto_recover", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 45, i32 13}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 221, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @bfa_ioc_sm_uninit._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @bfa_ioc_sm_uninit._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 250, i32 3}
!11 = !{ptr @bfa_ioc_sm_reset._entry, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @bfa_ioc_sm_reset._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 298, i32 3}
!15 = !{ptr @bfa_ioc_sm_enabling._entry, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @bfa_ioc_sm_enabling._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 341, i32 3}
!19 = !{ptr @bfa_ioc_sm_getattr._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @bfa_ioc_sm_getattr._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 525, i32 3}
!23 = !{ptr @bfa_ioc_sm_fail._entry, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @bfa_ioc_sm_fail._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 553, i32 3}
!27 = !{ptr @bfa_ioc_sm_hwfail._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @bfa_ioc_sm_hwfail._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 580, i32 3}
!31 = !{ptr @bfa_iocpf_sm_reset._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @bfa_iocpf_sm_reset._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 633, i32 3}
!35 = !{ptr @bfa_iocpf_sm_fwcheck._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @bfa_iocpf_sm_fwcheck._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 751, i32 3}
!39 = !{ptr @bfa_iocpf_sm_hwinit._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @bfa_iocpf_sm_hwinit._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 800, i32 3}
!43 = !{ptr @bfa_iocpf_sm_enabling._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @bfa_iocpf_sm_enabling._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 827, i32 3}
!47 = !{ptr @bfa_iocpf_sm_ready._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @bfa_iocpf_sm_ready._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 1054, i32 3}
!51 = !{ptr @bfa_iocpf_sm_fail_sync._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @bfa_iocpf_sm_fail_sync._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 713, i32 3}
!55 = !{ptr @bfa_iocpf_sm_semwait._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @bfa_iocpf_sm_semwait._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 896, i32 3}
!59 = !{ptr @bfa_iocpf_sm_disabling_sync._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @bfa_iocpf_sm_disabling_sync._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 864, i32 3}
!63 = !{ptr @bfa_iocpf_sm_disabling._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @bfa_iocpf_sm_disabling._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 970, i32 3}
!67 = !{ptr @bfa_iocpf_sm_initfail_sync._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @bfa_iocpf_sm_initfail_sync._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 996, i32 3}
!71 = !{ptr @bfa_iocpf_sm_initfail._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @bfa_iocpf_sm_initfail._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 924, i32 3}
!75 = !{ptr @bfa_iocpf_sm_disabled._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @bfa_iocpf_sm_disabled._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 673, i32 3}
!79 = !{ptr @bfa_iocpf_sm_mismatch._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @bfa_iocpf_sm_mismatch._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 1073, i32 3}
!83 = !{ptr @bfa_iocpf_sm_fail._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @bfa_iocpf_sm_fail._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.22, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 417, i32 3}
!87 = !{ptr @bfa_ioc_sm_disabling._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @bfa_ioc_sm_disabling._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.23, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 446, i32 3}
!91 = !{ptr @bfa_ioc_sm_disabled._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @bfa_ioc_sm_disabled._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.24, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 383, i32 3}
!95 = !{ptr @bfa_ioc_sm_op._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @bfa_ioc_sm_op._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.25, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 493, i32 3}
!99 = !{ptr @bfa_ioc_sm_fail_retry._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @bfa_ioc_sm_fail_retry._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @ioc_sm_table, !102, !"ioc_sm_table", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 117, i32 28}
!103 = !{ptr @.str.26, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 2842, i32 24}
!105 = !{ptr @.str.27, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 2855, i32 46}
!107 = !{ptr @.str.28, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 2937, i32 2}
!109 = !{ptr @.str.29, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @bfa_ioc_recover._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @bfa_ioc_recover._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @iocpf_sm_table, !113, !"iocpf_sm_table", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc.c", i32 186, i32 28}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i64 5071940}
!124 = !{i64 2156592331}
!125 = !{i64 2156593318}
!126 = !{i64 2156593764}
!127 = !{i64 2156593966}
!128 = !{i64 5071522}
!129 = !{i64 2156599933}
!130 = !{i64 2156605914}
!131 = !{i64 2156606973}
!132 = !{i64 2156624628}
!133 = !{i64 2156630538}
!134 = !{i64 2156620998}
!135 = !{i64 2156622042}
!136 = !{i64 2156622742}
!137 = !{i64 2156633838}
!138 = !{i64 2156634897}
!139 = !{i64 2156635205}
!140 = !{i64 2156635717}
!141 = !{i64 2156636566}
!142 = !{i64 2156636791}
!143 = !{i8 0, i8 2}
!144 = !{i64 2156642486, i64 2156642994, i64 2156642523, i64 2156642579, i64 2156642613, i64 2156642637, i64 2156642678, i64 2156642699, i64 2156642727, i64 2156642761}
!145 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!146 = !{i64 2156645368}
!147 = !{i64 2156638518}
!148 = !{i64 2156639124}
!149 = !{i64 2156639415}
!150 = !{i64 2156640115}
!151 = !{i64 2156640581, i64 2156641089, i64 2156640618, i64 2156640674, i64 2156640708, i64 2156640732, i64 2156640773, i64 2156640794, i64 2156640822, i64 2156640856}
!152 = !{i64 2156647189, i64 2156647697, i64 2156647226, i64 2156647282, i64 2156647316, i64 2156647340, i64 2156647381, i64 2156647402, i64 2156647430, i64 2156647464}
!153 = !{!"branch_weights", i32 1, i32 2000}
!154 = !{i64 2156648842, i64 2156649350, i64 2156648879, i64 2156648935, i64 2156648969, i64 2156648993, i64 2156649034, i64 2156649055, i64 2156649083, i64 2156649117}
!155 = !{i64 2156599561}
!156 = !{i64 2156611939}
!157 = !{i64 2156607639}
!158 = !{i64 2156607218}
!159 = !{i64 2156613460}
!160 = !{i64 2156608338}
!161 = !{i64 2156611413}
!162 = !{i64 2156608847}
!163 = !{i64 2156609356}
!164 = !{i64 2156609871}
!165 = !{i64 2156610386}
!166 = !{i64 2156610895}
!167 = !{i64 2156625142}
!168 = !{i64 2156621629}
!169 = !{i64 2156595558}
!170 = !{i64 2156596638}
!171 = !{i64 2156596915}
!172 = !{i64 2156597379}
!173 = !{i64 2156594407}
!174 = !{i64 2156594832}
!175 = !{i64 2156598239}
!176 = !{i64 2156598459}
!177 = !{i64 2156598861}
!178 = !{i64 2156614296}
!179 = !{i64 2156614517}
!180 = !{i64 2156605242}
!181 = !{i64 2156605490}
!182 = !{i64 2156600628}
!183 = !{i64 2156600914}
!184 = !{i64 2156601627}
!185 = !{i64 2156602063, i64 2156602571, i64 2156602100, i64 2156602156, i64 2156602190, i64 2156602214, i64 2156602255, i64 2156602276, i64 2156602304, i64 2156602338}
!186 = !{i64 2156603579}
!187 = !{i64 2156625635}
!188 = !{i64 2156626621}
!189 = !{i64 2156627276}
!190 = !{i64 2156627720}
!191 = !{i64 2156628401}
!192 = !{i64 2156628864}
!193 = !{i64 2156629334}
!194 = !{i64 2156604292}
!195 = !{i64 2156604529}
