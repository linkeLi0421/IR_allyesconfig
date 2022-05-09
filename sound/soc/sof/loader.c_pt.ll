; ModuleID = '/llk/IR_all_yes/sound/soc/sof/loader.c_pt.bc'
source_filename = "../sound/soc/sof/loader.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sof_fw_ready\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_fw_ready\09\09\09\09"
module asm "\09.long\09__crc_sof_fw_ready\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_fw_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_fw_ready\22\09\09\09\09\09"
module asm "__kstrtabns_sof_fw_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_sof_parse_module_memcpy\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_sof_parse_module_memcpy\09\09\09\09"
module asm "\09.long\09__crc_snd_sof_parse_module_memcpy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sof_parse_module_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sof_parse_module_memcpy\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sof_parse_module_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_sof_load_firmware_raw\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_sof_load_firmware_raw\09\09\09\09"
module asm "\09.long\09__crc_snd_sof_load_firmware_raw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sof_load_firmware_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sof_load_firmware_raw\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sof_load_firmware_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_sof_load_firmware_memcpy\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_sof_load_firmware_memcpy\09\09\09\09"
module asm "\09.long\09__crc_snd_sof_load_firmware_memcpy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sof_load_firmware_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sof_load_firmware_memcpy\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sof_load_firmware_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_sof_run_firmware\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_sof_run_firmware\09\09\09\09"
module asm "\09.long\09__crc_snd_sof_run_firmware\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sof_run_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sof_run_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sof_run_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_sof_fw_unload\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_sof_fw_unload\09\09\09\09"
module asm "\09.long\09__crc_snd_sof_fw_unload\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sof_fw_unload:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sof_fw_unload\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sof_fw_unload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.sof_ipc_ext_data_hdr = type { %struct.sof_ipc_cmd_hdr, i32 }
%struct.sof_ipc_window = type { %struct.sof_ipc_ext_data_hdr, i32, [16 x %struct.sof_ipc_window_elem] }
%struct.sof_ipc_window_elem = type { %struct.sof_ipc_hdr, i32, i32, i32, i32, i32 }
%struct.snd_sof_mod_hdr = type { i32, i32, i32 }
%struct.snd_sof_blk_hdr = type { i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.sof_ext_man_header = type { i32, i32, i32, i32 }
%struct.sof_ext_man_elem_header = type { i32, i32 }
%struct.sof_ext_man_fw_version = type { %struct.sof_ext_man_elem_header, %struct.sof_ipc_fw_version, i32 }
%struct.sof_ext_man_window = type { %struct.sof_ext_man_elem_header, %struct.sof_ipc_window }
%struct.sof_ext_man_cc_version = type { %struct.sof_ext_man_elem_header, %struct.sof_ipc_cc_version }
%struct.sof_ipc_cc_version = type { %struct.sof_ipc_ext_data_hdr, i32, i32, i32, [4 x i32], [16 x i8], [4 x i8], [32 x i8] }
%struct.ext_man_dbg_abi = type { %struct.sof_ext_man_elem_header, %struct.sof_ipc_user_abi_version }
%struct.sof_ipc_user_abi_version = type { %struct.sof_ipc_ext_data_hdr, i32 }
%struct.snd_sof_fw_header = type { [4 x i8], i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sof_ext_man_config_data = type { %struct.sof_ext_man_elem_header, [0 x %struct.sof_config_elem] }
%struct.sof_config_elem = type { i32, i32 }

@sof_fw_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 488, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error: have no mailbox offset\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sof_fw_ready\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sound/soc/sof/loader.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sof_fw_ready._entry_ptr = internal global ptr @sof_fw_ready._entry, section ".printk_index", align 4
@sof_fw_ready.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"snd_sof\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ipc: DSP is ready 0x%8.8x offset 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@sof_fw_ready._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 507, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"error: unable to read fw_ready, read from TYPE_SRAM failed\0A\00", [36 x i8] zeroinitializer }, align 32
@sof_fw_ready._entry_ptr.9 = internal global ptr @sof_fw_ready._entry.7, section ".printk_index", align 4
@__kstrtab_sof_fw_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_fw_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_fw_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_fw_ready to i32), ptr @__kstrtab_sof_fw_ready, ptr @__kstrtabns_sof_fw_ready }, section "___ksymtab+sof_fw_ready", align 4
@snd_sof_parse_module_memcpy.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_sof_parse_module_memcpy\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"new module size 0x%x blocks 0x%x type 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@snd_sof_parse_module_memcpy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 544, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error: not enough data remaining\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_sof_parse_module_memcpy._entry_ptr = internal global ptr @snd_sof_parse_module_memcpy._entry, section ".printk_index", align 4
@snd_sof_parse_module_memcpy._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.2, i32 553, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"warning: block %d size zero\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_sof_parse_module_memcpy._entry_ptr.16 = internal global ptr @snd_sof_parse_module_memcpy._entry.13, section ".printk_index", align 4
@snd_sof_parse_module_memcpy._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.2, i32 555, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" type 0x%x offset 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_sof_parse_module_memcpy._entry_ptr.19 = internal global ptr @snd_sof_parse_module_memcpy._entry.17, section ".printk_index", align 4
@snd_sof_parse_module_memcpy._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.2, i32 570, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error: bad type 0x%x for block 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_sof_parse_module_memcpy._entry_ptr.22 = internal global ptr @snd_sof_parse_module_memcpy._entry.20, section ".printk_index", align 4
@snd_sof_parse_module_memcpy.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.2, ptr @.str.23, i8 0, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"block %d type 0x%x size 0x%x ==>  offset 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@snd_sof_parse_module_memcpy._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.10, ptr @.str.2, i32 581, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error: invalid block size 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_sof_parse_module_memcpy._entry_ptr.26 = internal global ptr @snd_sof_parse_module_memcpy._entry.24, section ".printk_index", align 4
@snd_sof_parse_module_memcpy._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str.2, i32 588, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: write to block type 0x%x failed\0A\00", [56 x i8] zeroinitializer }, align 32
@snd_sof_parse_module_memcpy._entry_ptr.29 = internal global ptr @snd_sof_parse_module_memcpy._entry.27, section ".printk_index", align 4
@snd_sof_parse_module_memcpy._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 593, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@snd_sof_parse_module_memcpy._entry_ptr.31 = internal global ptr @snd_sof_parse_module_memcpy._entry.30, section ".printk_index", align 4
@__kstrtab_snd_sof_parse_module_memcpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sof_parse_module_memcpy = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sof_parse_module_memcpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sof_parse_module_memcpy to i32), ptr @__kstrtab_snd_sof_parse_module_memcpy, ptr @__kstrtabns_snd_sof_parse_module_memcpy }, section "___ksymtab+snd_sof_parse_module_memcpy", align 4
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s/%s\00", [26 x i8] zeroinitializer }, align 32
@snd_sof_load_firmware_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 719, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"error: sof firmware file is missing, you might need to\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_sof_load_firmware_raw\00", [38 x i8] zeroinitializer }, align 32
@snd_sof_load_firmware_raw._entry_ptr = internal global ptr @snd_sof_load_firmware_raw._entry, section ".printk_index", align 4
@snd_sof_load_firmware_raw._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 721, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"       download it from https://github.com/thesofproject/sof-bin/\0A\00", [61 x i8] zeroinitializer }, align 32
@snd_sof_load_firmware_raw._entry_ptr.37 = internal global ptr @snd_sof_load_firmware_raw._entry.35, section ".printk_index", align 4
@snd_sof_load_firmware_raw.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.34, ptr @.str.2, ptr @.str.38, i8 0, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"request_firmware %s successful\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_sof_load_firmware_raw.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.34, ptr @.str.2, ptr @.str.39, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"firmware doesn't contain extended manifest\0A\00", [52 x i8] zeroinitializer }, align 32
@snd_sof_load_firmware_raw._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.34, ptr @.str.2, i32 739, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"error: firmware %s contains unsupported or invalid extended manifest: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@snd_sof_load_firmware_raw._entry_ptr.42 = internal global ptr @snd_sof_load_firmware_raw._entry.40, section ".printk_index", align 4
@__kstrtab_snd_sof_load_firmware_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sof_load_firmware_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sof_load_firmware_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sof_load_firmware_raw to i32), ptr @__kstrtab_snd_sof_load_firmware_raw, ptr @__kstrtabns_snd_sof_load_firmware_raw }, section "___ksymtab+snd_sof_load_firmware_raw", align 4
@snd_sof_load_firmware_memcpy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 761, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error: invalid FW header\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_sof_load_firmware_memcpy\00", [35 x i8] zeroinitializer }, align 32
@snd_sof_load_firmware_memcpy._entry_ptr = internal global ptr @snd_sof_load_firmware_memcpy._entry, section ".printk_index", align 4
@snd_sof_load_firmware_memcpy._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 768, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error: failed to reset DSP\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_sof_load_firmware_memcpy._entry_ptr.47 = internal global ptr @snd_sof_load_firmware_memcpy._entry.45, section ".printk_index", align 4
@snd_sof_load_firmware_memcpy._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 775, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error: invalid FW modules\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_sof_load_firmware_memcpy._entry_ptr.50 = internal global ptr @snd_sof_load_firmware_memcpy._entry.48, section ".printk_index", align 4
@__kstrtab_snd_sof_load_firmware_memcpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sof_load_firmware_memcpy = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sof_load_firmware_memcpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sof_load_firmware_memcpy to i32), ptr @__kstrtab_snd_sof_load_firmware_memcpy, ptr @__kstrtabns_snd_sof_load_firmware_memcpy }, section "___ksymtab+snd_sof_load_firmware_memcpy", align 4
@snd_sof_run_firmware.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sdev->boot_wait\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_version\00", [21 x i8] zeroinitializer }, align 32
@snd_sof_run_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 806, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: snd_sof_debugfs_buf_item failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_sof_run_firmware\00", [43 x i8] zeroinitializer }, align 32
@snd_sof_run_firmware._entry_ptr = internal global ptr @snd_sof_run_firmware._entry, section ".printk_index", align 4
@snd_sof_run_firmware._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 814, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error: failed pre fw run op\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_sof_run_firmware._entry_ptr.57 = internal global ptr @snd_sof_run_firmware._entry.55, section ".printk_index", align 4
@snd_sof_run_firmware.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.54, ptr @.str.2, ptr @.str.58, i8 0, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"booting DSP firmware\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to start DSP\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Firmware boot failure due to timeout\00", [59 x i8] zeroinitializer }, align 32
@snd_sof_run_firmware._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.2, i32 850, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error: failed post fw run op\0A\00", [34 x i8] zeroinitializer }, align 32
@snd_sof_run_firmware._entry_ptr.63 = internal global ptr @snd_sof_run_firmware._entry.61, section ".printk_index", align 4
@snd_sof_run_firmware.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.54, ptr @.str.2, ptr @.str.64, i8 0, i8 -43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"firmware boot complete\0A\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_snd_sof_run_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sof_run_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sof_run_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sof_run_firmware to i32), ptr @__kstrtab_snd_sof_run_firmware, ptr @__kstrtabns_snd_sof_run_firmware }, section "___ksymtab+snd_sof_run_firmware", align 4
@__kstrtab_snd_sof_fw_unload = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sof_fw_unload = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sof_fw_unload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sof_fw_unload to i32), ptr @__kstrtab_snd_sof_fw_unload, ptr @__kstrtabns_snd_sof_fw_unload }, section "___ksymtab+snd_sof_fw_unload", align 4
@snd_sof_dsp_get_mailbox_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.67, i32 190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: %s not defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"snd_sof_dsp_get_mailbox_offset\00", [33 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sound/soc/sof/ops.h\00", [44 x i8] zeroinitializer }, align 32
@snd_sof_dsp_get_mailbox_offset._entry_ptr = internal global ptr @snd_sof_dsp_get_mailbox_offset._entry, section ".printk_index", align 4
@snd_sof_fw_parse_ext_data.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_sof_fw_parse_ext_data\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"found ext header type %d size 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_sof_fw_parse_ext_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 130, ptr @.str.71, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unknown ext header type %d size 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_sof_fw_parse_ext_data._entry_ptr = internal global ptr @snd_sof_fw_parse_ext_data._entry, section ".printk_index", align 4
@snd_sof_fw_parse_ext_data._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 137, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: failed to parse ext data type %d\0A\00", [55 x i8] zeroinitializer }, align 32
@snd_sof_fw_parse_ext_data._entry_ptr.74 = internal global ptr @snd_sof_fw_parse_ext_data._entry.72, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_ext_windows._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 30, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"error: mismatch between window descriptor from extended manifest and mailbox\00", [51 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_ext_windows\00", [16 x i8] zeroinitializer }, align 32
@get_ext_windows._entry_ptr = internal global ptr @get_ext_windows._entry, section ".printk_index", align 4
@get_cc_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 55, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"error: receive diverged cc_version descriptions\00", [48 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_cc_info\00", [20 x i8] zeroinitializer }, align 32
@get_cc_info._entry_ptr = internal global ptr @get_cc_info._entry, section ".printk_index", align 4
@get_cc_info.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Firmware info: used compiler %s %d:%d:%d%s used optimization flags %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cc_version\00", [21 x i8] zeroinitializer }, align 32
@get_cc_info._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.78, ptr @.str.2, i32 81, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@get_cc_info._entry_ptr.82 = internal global ptr @get_cc_info._entry.81, section ".printk_index", align 4
@sof_get_windows._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 379, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error: have no window info\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sof_get_windows\00", [16 x i8] zeroinitializer }, align 32
@sof_get_windows._entry_ptr = internal global ptr @sof_get_windows._entry, section ".printk_index", align 4
@sof_get_windows._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 389, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"warn: no offset for window %d\0A\00", [33 x i8] zeroinitializer }, align 32
@sof_get_windows._entry_ptr.87 = internal global ptr @sof_get_windows._entry.85, section ".printk_index", align 4
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inbox\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"outbox\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"etrace\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stream\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exception\00", [22 x i8] zeroinitializer }, align 32
@sof_get_windows._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.84, ptr @.str.2, i32 446, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error: get illegal window info\0A\00", [32 x i8] zeroinitializer }, align 32
@sof_get_windows._entry_ptr.97 = internal global ptr @sof_get_windows._entry.95, section ".printk_index", align 4
@sof_get_windows._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.84, ptr @.str.2, i32 452, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: get illegal mailbox window\0A\00", [61 x i8] zeroinitializer }, align 32
@sof_get_windows._entry_ptr.100 = internal global ptr @sof_get_windows._entry.98, section ".printk_index", align 4
@sof_get_windows.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.84, ptr @.str.2, ptr @.str.101, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" mailbox upstream 0x%x - size 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@sof_get_windows.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.84, ptr @.str.2, ptr @.str.102, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" mailbox downstream 0x%x - size 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@sof_get_windows.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.84, ptr @.str.2, ptr @.str.103, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" stream region 0x%x - size 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@sof_get_windows.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.84, ptr @.str.2, ptr @.str.104, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" debug region 0x%x - size 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_sof_dsp_get_window_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.105, ptr @.str.67, i32 200, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_sof_dsp_get_window_offset\00", [34 x i8] zeroinitializer }, align 32
@snd_sof_dsp_get_window_offset._entry_ptr = internal global ptr @snd_sof_dsp_get_window_offset._entry, section ".printk_index", align 4
@snd_sof_fw_ext_man_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"error: extended manifest version 0x%X differ from used 0x%X\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_sof_fw_ext_man_parse\00", [39 x i8] zeroinitializer }, align 32
@snd_sof_fw_ext_man_parse._entry_ptr = internal global ptr @snd_sof_fw_ext_man_parse._entry, section ".printk_index", align 4
@snd_sof_fw_ext_man_parse.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.107, ptr @.str.2, ptr @.str.108, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"found sof_ext_man header type %d size 0x%X\0A\00", [52 x i8] zeroinitializer }, align 32
@snd_sof_fw_ext_man_parse._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.107, ptr @.str.2, i32 313, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"error: invalid sof_ext_man header size, type %d size 0x%X\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_sof_fw_ext_man_parse._entry_ptr.111 = internal global ptr @snd_sof_fw_ext_man_parse._entry.109, section ".printk_index", align 4
@snd_sof_fw_ext_man_parse._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.107, ptr @.str.2, i32 339, ptr @.str.71, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unknown sof_ext_man header type %d size 0x%X\0A\00", [50 x i8] zeroinitializer }, align 32
@snd_sof_fw_ext_man_parse._entry_ptr.114 = internal global ptr @snd_sof_fw_ext_man_parse._entry.112, section ".printk_index", align 4
@snd_sof_fw_ext_man_parse._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.107, ptr @.str.2, i32 345, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"error: failed to parse sof_ext_man header type %d size 0x%X\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_sof_fw_ext_man_parse._entry_ptr.117 = internal global ptr @snd_sof_fw_ext_man_parse._entry.115, section ".printk_index", align 4
@snd_sof_fw_ext_man_parse._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.107, ptr @.str.2, i32 354, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error: sof_ext_man header is inconsistent\0A\00", [53 x i8] zeroinitializer }, align 32
@snd_sof_fw_ext_man_parse._entry_ptr.120 = internal global ptr @snd_sof_fw_ext_man_parse._entry.118, section ".printk_index", align 4
@ext_man_get_dbg_abi_info.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.121, ptr @.str.2, ptr @.str.122, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ext_man_get_dbg_abi_info\00", [39 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Firmware: DBG_ABI %d:%d:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@ext_man_get_config_data.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.123, ptr @.str.2, ptr @.str.124, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ext_man_get_config_data\00", [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s can hold up to %d config elements\0A\00", [58 x i8] zeroinitializer }, align 32
@ext_man_get_config_data.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.123, ptr @.str.2, ptr @.str.125, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s get index %d token %d val %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ext_man_get_config_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.123, ptr @.str.2, i32 236, ptr @.str.71, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unknown firmware configuration token %d value %d\00", [47 x i8] zeroinitializer }, align 32
@ext_man_get_config_data._entry_ptr = internal global ptr @ext_man_get_config_data._entry, section ".printk_index", align 4
@ext_man_get_config_data._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.123, ptr @.str.2, i32 241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"error: processing sof_ext_man_config_data failed for token %d value 0x%x, %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ext_man_get_config_data._entry_ptr.129 = internal global ptr @ext_man_get_config_data._entry.127, section ".printk_index", align 4
@check_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 615, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"error: firmware size must be greater than firmware offset\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check_header\00", [19 x i8] zeroinitializer }, align 32
@check_header._entry_ptr = internal global ptr @check_header._entry, section ".printk_index", align 4
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Reef\00", [27 x i8] zeroinitializer }, align 32
@check_header._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.131, ptr @.str.2, i32 624, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: invalid firmware signature\0A\00", [61 x i8] zeroinitializer }, align 32
@check_header._entry_ptr.135 = internal global ptr @check_header._entry.133, section ".printk_index", align 4
@check_header._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.131, ptr @.str.2, i32 631, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"error: invalid filesize mismatch got 0x%zx expected 0x%zx\0A\00", [37 x i8] zeroinitializer }, align 32
@check_header._entry_ptr.138 = internal global ptr @check_header._entry.136, section ".printk_index", align 4
@check_header.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.131, ptr @.str.2, ptr @.str.139, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"header size=0x%x modules=0x%x abi=0x%x size=%zu\0A\00", [47 x i8] zeroinitializer }, align 32
@load_modules._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.2, i32 663, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: fw size smaller than header size\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"load_modules\00", [19 x i8] zeroinitializer }, align 32
@load_modules._entry_ptr = internal global ptr @load_modules._entry, section ".printk_index", align 4
@load_modules._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.141, ptr @.str.2, i32 670, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@load_modules._entry_ptr.143 = internal global ptr @load_modules._entry.142, section ".printk_index", align 4
@load_modules._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.141, ptr @.str.2, i32 680, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error: invalid module %d\0A\00", [38 x i8] zeroinitializer }, align 32
@load_modules._entry_ptr.146 = internal global ptr @load_modules._entry.144, section ".printk_index", align 4
@load_modules._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.141, ptr @.str.2, i32 685, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@load_modules._entry_ptr.148 = internal global ptr @load_modules._entry.147, section ".printk_index", align 4
@sof_set_fw_state.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.149, ptr @.str.150, ptr @.str.151, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sof_set_fw_state\00", [47 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/sof/sof-priv.h\00", [39 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fw_state change: %d -> %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.152 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.153 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.154 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.155 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 488, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 492, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 506, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 534, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 544, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 552, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 554, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 569, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 574, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 580, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 587, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 593, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 709, i32 38 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 718, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 720, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 724, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 735, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 738, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 761, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 768, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 775, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 793, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 803, i32 13 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 806, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 814, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 818, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 823, i32 30 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 838, i32 30 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 850, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 854, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 190, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 112, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 129, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 136, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 30, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 55, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 61, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 77, i32 13 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 81, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 379, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 388, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 399, i32 20 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 407, i32 20 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 413, i32 20 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 421, i32 20 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 429, i32 20 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 435, i32 20 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 442, i32 20 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 446, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 452, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 468, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 470, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 472, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 474, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant [23 x i8] c"../sound/soc/sof/ops.h\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 200, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 296, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 307, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 312, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 338, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 344, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 354, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 192, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 216, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 221, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 235, i32 4 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 240, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 615, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 623, i32 27 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 624, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 630, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 635, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 663, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 670, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 680, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.565 = private constant [26 x i8] c"../sound/soc/sof/loader.c\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 685, i32 4 }
@___asan_gen_.573 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.574 = private unnamed_addr constant [28 x i8] c"../sound/soc/sof/sof-priv.h\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 602, i32 2 }
@llvm.compiler.used = appending global [189 x ptr] [ptr @__ksymtab_snd_sof_fw_unload, ptr @__ksymtab_snd_sof_load_firmware_memcpy, ptr @__ksymtab_snd_sof_load_firmware_raw, ptr @__ksymtab_snd_sof_parse_module_memcpy, ptr @__ksymtab_snd_sof_run_firmware, ptr @__ksymtab_sof_fw_ready, ptr @check_header._entry, ptr @check_header._entry.133, ptr @check_header._entry.136, ptr @check_header._entry_ptr, ptr @check_header._entry_ptr.135, ptr @check_header._entry_ptr.138, ptr @ext_man_get_config_data._entry, ptr @ext_man_get_config_data._entry.127, ptr @ext_man_get_config_data._entry_ptr, ptr @ext_man_get_config_data._entry_ptr.129, ptr @get_cc_info._entry, ptr @get_cc_info._entry.81, ptr @get_cc_info._entry_ptr, ptr @get_cc_info._entry_ptr.82, ptr @get_ext_windows._entry, ptr @get_ext_windows._entry_ptr, ptr @load_modules._entry, ptr @load_modules._entry.142, ptr @load_modules._entry.144, ptr @load_modules._entry.147, ptr @load_modules._entry_ptr, ptr @load_modules._entry_ptr.143, ptr @load_modules._entry_ptr.146, ptr @load_modules._entry_ptr.148, ptr @snd_sof_dsp_get_mailbox_offset._entry, ptr @snd_sof_dsp_get_mailbox_offset._entry_ptr, ptr @snd_sof_dsp_get_window_offset._entry, ptr @snd_sof_dsp_get_window_offset._entry_ptr, ptr @snd_sof_fw_ext_man_parse._entry, ptr @snd_sof_fw_ext_man_parse._entry.109, ptr @snd_sof_fw_ext_man_parse._entry.112, ptr @snd_sof_fw_ext_man_parse._entry.115, ptr @snd_sof_fw_ext_man_parse._entry.118, ptr @snd_sof_fw_ext_man_parse._entry_ptr, ptr @snd_sof_fw_ext_man_parse._entry_ptr.111, ptr @snd_sof_fw_ext_man_parse._entry_ptr.114, ptr @snd_sof_fw_ext_man_parse._entry_ptr.117, ptr @snd_sof_fw_ext_man_parse._entry_ptr.120, ptr @snd_sof_fw_parse_ext_data._entry, ptr @snd_sof_fw_parse_ext_data._entry.72, ptr @snd_sof_fw_parse_ext_data._entry_ptr, ptr @snd_sof_fw_parse_ext_data._entry_ptr.74, ptr @snd_sof_load_firmware_memcpy._entry, ptr @snd_sof_load_firmware_memcpy._entry.45, ptr @snd_sof_load_firmware_memcpy._entry.48, ptr @snd_sof_load_firmware_memcpy._entry_ptr, ptr @snd_sof_load_firmware_memcpy._entry_ptr.47, ptr @snd_sof_load_firmware_memcpy._entry_ptr.50, ptr @snd_sof_load_firmware_raw._entry, ptr @snd_sof_load_firmware_raw._entry.35, ptr @snd_sof_load_firmware_raw._entry.40, ptr @snd_sof_load_firmware_raw._entry_ptr, ptr @snd_sof_load_firmware_raw._entry_ptr.37, ptr @snd_sof_load_firmware_raw._entry_ptr.42, ptr @snd_sof_parse_module_memcpy._entry, ptr @snd_sof_parse_module_memcpy._entry.13, ptr @snd_sof_parse_module_memcpy._entry.17, ptr @snd_sof_parse_module_memcpy._entry.20, ptr @snd_sof_parse_module_memcpy._entry.24, ptr @snd_sof_parse_module_memcpy._entry.27, ptr @snd_sof_parse_module_memcpy._entry.30, ptr @snd_sof_parse_module_memcpy._entry_ptr, ptr @snd_sof_parse_module_memcpy._entry_ptr.16, ptr @snd_sof_parse_module_memcpy._entry_ptr.19, ptr @snd_sof_parse_module_memcpy._entry_ptr.22, ptr @snd_sof_parse_module_memcpy._entry_ptr.26, ptr @snd_sof_parse_module_memcpy._entry_ptr.29, ptr @snd_sof_parse_module_memcpy._entry_ptr.31, ptr @snd_sof_run_firmware._entry, ptr @snd_sof_run_firmware._entry.55, ptr @snd_sof_run_firmware._entry.61, ptr @snd_sof_run_firmware._entry_ptr, ptr @snd_sof_run_firmware._entry_ptr.57, ptr @snd_sof_run_firmware._entry_ptr.63, ptr @sof_fw_ready._entry, ptr @sof_fw_ready._entry.7, ptr @sof_fw_ready._entry_ptr, ptr @sof_fw_ready._entry_ptr.9, ptr @sof_get_windows._entry, ptr @sof_get_windows._entry.85, ptr @sof_get_windows._entry.95, ptr @sof_get_windows._entry.98, ptr @sof_get_windows._entry_ptr, ptr @sof_get_windows._entry_ptr.100, ptr @sof_get_windows._entry_ptr.87, ptr @sof_get_windows._entry_ptr.97, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @snd_sof_run_firmware.__key, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.145, ptr @.str.149, ptr @.str.150, ptr @.str.151], section "llvm.metadata"
@0 = internal global [140 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_fw_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_fw_ready._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_parse_module_memcpy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_parse_module_memcpy._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_parse_module_memcpy._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_parse_module_memcpy._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_parse_module_memcpy._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_parse_module_memcpy._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_parse_module_memcpy._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_load_firmware_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_load_firmware_raw._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_load_firmware_raw._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_load_firmware_memcpy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_load_firmware_memcpy._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_load_firmware_memcpy._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_run_firmware.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_run_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_run_firmware._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_run_firmware._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_get_mailbox_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_fw_parse_ext_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_fw_parse_ext_data._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_ext_windows._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_cc_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_cc_info._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_get_windows._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_get_windows._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_get_windows._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_get_windows._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_get_window_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_fw_ext_man_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_fw_ext_man_parse._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_fw_ext_man_parse._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_fw_ext_man_parse._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_fw_ext_man_parse._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_man_get_config_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_man_get_config_data._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_header._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_header._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_modules._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_modules._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_modules._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_modules._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sof_fw_ready(ptr noundef %sdev, i32 noundef %msg_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_ready1 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 31
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %get_mailbox_offset.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %5, i32 0, i32 56
  %6 = ptrtoint ptr %get_mailbox_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_mailbox_offset.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %snd_sof_dsp_get_mailbox_offset.exit.thread, label %snd_sof_dsp_get_mailbox_offset.exit

snd_sof_dsp_get_mailbox_offset.exit.thread:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #11
  br label %do.end

snd_sof_dsp_get_mailbox_offset.exit:              ; preds = %entry
  %call.i = tail call i32 %7(ptr noundef %sdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %snd_sof_dsp_get_mailbox_offset.exit.do.end_crit_edge, label %do.body2

snd_sof_dsp_get_mailbox_offset.exit.do.end_crit_edge: ; preds = %snd_sof_dsp_get_mailbox_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %snd_sof_dsp_get_mailbox_offset.exit.do.end_crit_edge, %snd_sof_dsp_get_mailbox_offset.exit.thread
  %retval.0.i4755 = phi i32 [ -524, %snd_sof_dsp_get_mailbox_offset.exit.thread ], [ %call.i, %snd_sof_dsp_get_mailbox_offset.exit.do.end_crit_edge ]
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str) #11
  br label %cleanup

do.body2:                                         ; preds = %snd_sof_dsp_get_mailbox_offset.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_fw_ready.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_fw_ready, %if.then6)) #8
          to label %do.end10 [label %if.then6], !srcloc !299

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_fw_ready.__UNIQUE_ID_ddebug257, ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef %msg_id, i32 noundef %call.i) #8
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body2
  %first_boot = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 9
  %14 = ptrtoint ptr %first_boot to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %first_boot, align 4, !range !300
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %do.end10.cleanup_crit_edge, label %if.end13

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  %16 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata.i, align 4
  %desc.i49 = getelementptr inbounds %struct.snd_sof_pdata, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %desc.i49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc.i49, align 4
  %ops.i50 = getelementptr inbounds %struct.sof_dev_desc, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %ops.i50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i50, align 4
  %block_read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %block_read.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %block_read.i, align 4
  %call.i51 = tail call i32 %23(ptr noundef %sdev, i32 noundef 3, i32 noundef %call.i, ptr noundef %fw_ready1, i32 noundef 108) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool15.not = icmp eq i32 %call.i51, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %call22 = tail call i32 @snd_sof_ipc_valid(ptr noundef %sdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw i32 %call.i, 108
  tail call fastcc void @snd_sof_fw_parse_ext_data(ptr noundef %sdev, i32 noundef %add)
  tail call fastcc void @sof_get_windows(ptr noundef %sdev)
  %call27 = tail call i32 @sof_ipc_init_msg_memory(ptr noundef %sdev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end21.cleanup_crit_edge, %do.end19, %do.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i4755, %do.end ], [ %call.i51, %do.end19 ], [ %call27, %if.end25 ], [ 0, %do.end10.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_ipc_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_sof_fw_parse_ext_data(ptr noundef %sdev, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %1 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %block_read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %block_read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %block_read.i, align 4
  %call.i = tail call i32 %8(ptr noundef %sdev, i32 noundef 3, i32 noundef %offset, ptr noundef nonnull %call7.i.i, i32 noundef 12) #8
  %cmd = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1879048192, i32 %10)
  %cmp22 = icmp eq i32 %10, 1879048192
  br i1 %cmp22, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 12
  %type = getelementptr inbounds %struct.sof_ipc_ext_data_hdr, ptr %call7.i.i, i32 0, i32 1
  %info_window.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 42
  br label %while.body

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %while.body.lr.ph
  %offset.addr.023 = phi i32 [ %offset, %while.body.lr.ph ], [ %add34, %if.end31.while.body_crit_edge ]
  %add = add i32 %offset.addr.023, 12
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call7.i.i, align 8
  %sub = add i32 %12, -12
  %13 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata.i, align 4
  %desc.i2 = getelementptr inbounds %struct.snd_sof_pdata, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %desc.i2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc.i2, align 4
  %ops.i3 = getelementptr inbounds %struct.sof_dev_desc, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %ops.i3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i3, align 4
  %block_read.i4 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %block_read.i4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %block_read.i4, align 4
  %call.i5 = tail call i32 %20(ptr noundef %sdev, i32 noundef 3, i32 noundef %add, ptr noundef %add.ptr, i32 noundef %sub) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_sof_fw_parse_ext_data.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_sof_fw_parse_ext_data, %if.then8)) #8
          to label %do.end [label %if.then8], !srcloc !299

if.then8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdev, align 4
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 8
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_sof_fw_parse_ext_data.__UNIQUE_ID_ddebug248, ptr noundef %22, ptr noundef nonnull @.str.69, i32 noundef %24, i32 noundef %26) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %while.body
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 8
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %do.end19 [
    i32 1, label %sw.bb
    i32 2, label %sw.epilog
    i32 0, label %do.end.if.end31_crit_edge
    i32 3, label %do.end.if.end31_crit_edge24
    i32 4, label %do.end.if.end31_crit_edge25
  ]

do.end.if.end31_crit_edge25:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end.if.end31_crit_edge24:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

sw.bb:                                            ; preds = %do.end
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr, align 4
  %32 = add i32 %31, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %32)
  %33 = icmp ult i32 %32, -16
  br i1 %33, label %sw.bb.do.end28_crit_edge, label %if.end.i

sw.bb.do.end28_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

if.end.i:                                         ; preds = %sw.bb
  %34 = ptrtoint ptr %info_window.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info_window.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.end8.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call7.i.i, align 8
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %35, ptr nonnull %call7.i.i, i32 %37) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool5.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.if.end31_crit_edge, label %do.end.i

if.then3.i.if.end31_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.75) #11
  br label %do.end28

if.end8.i:                                        ; preds = %if.end.i
  %40 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdev, align 4
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call7.i.i, align 8
  %call12.i = tail call ptr @devm_kmemdup(ptr noundef %41, ptr noundef nonnull %call7.i.i, i32 noundef %43, i32 noundef 3264) #8
  %44 = ptrtoint ptr %info_window.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call12.i, ptr %info_window.i, align 4
  %tobool15.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool15.not.i, label %if.end8.i.do.end28_crit_edge, label %if.end8.i.if.end31_crit_edge

if.end8.i.if.end31_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.end8.i.do.end28_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sdev, align 4
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.70, i32 noundef %28, i32 noundef %48) #11
  br label %if.end31

sw.epilog:                                        ; preds = %do.end
  %call15 = tail call fastcc i32 @get_cc_info(ptr noundef %sdev, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp24 = icmp slt i32 %call15, 0
  br i1 %cmp24, label %sw.epilog.do.end28_crit_edge, label %sw.epilog.if.end31_crit_edge

sw.epilog.if.end31_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

sw.epilog.do.end28_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

do.end28:                                         ; preds = %sw.epilog.do.end28_crit_edge, %if.end8.i.do.end28_crit_edge, %do.end.i, %sw.bb.do.end28_crit_edge
  %49 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sdev, align 4
  %51 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.73, i32 noundef %52) #11
  br label %while.end

if.end31:                                         ; preds = %sw.epilog.if.end31_crit_edge, %do.end19, %if.end8.i.if.end31_crit_edge, %if.then3.i.if.end31_crit_edge, %do.end.if.end31_crit_edge, %do.end.if.end31_crit_edge24, %do.end.if.end31_crit_edge25
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call7.i.i, align 8
  %add34 = add i32 %54, %offset.addr.023
  %55 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdata.i, align 4
  %desc.i8 = getelementptr inbounds %struct.snd_sof_pdata, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %desc.i8 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %desc.i8, align 4
  %ops.i9 = getelementptr inbounds %struct.sof_dev_desc, ptr %58, i32 0, i32 14
  %59 = ptrtoint ptr %ops.i9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i9, align 4
  %block_read.i10 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %60, i32 0, i32 12
  %61 = ptrtoint ptr %block_read.i10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %block_read.i10, align 4
  %call.i11 = tail call i32 %62(ptr noundef %sdev, i32 noundef 3, i32 noundef %add34, ptr noundef nonnull %call7.i.i, i32 noundef 12) #8
  %63 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cmd, align 4
  %cmp = icmp eq i32 %64, 1879048192
  br i1 %cmp, label %if.end31.while.body_crit_edge, label %if.end31.while.end_crit_edge

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end31.while.end_crit_edge, %do.end28, %if.end.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sof_get_windows(ptr noundef %sdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info_window = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 42
  %0 = ptrtoint ptr %info_window to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info_window, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %info_window to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info_window, align 4
  %num_windows308 = getelementptr inbounds %struct.sof_ipc_window, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_windows308 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %num_windows308, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp309.not = icmp eq i32 %5, 0
  br i1 %cmp309.not, label %for.cond.preheader.do.end59_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end59_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %dsp_oops_offset = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 24
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.83) #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %8 = phi ptr [ %3, %for.body.lr.ph ], [ %117, %for.inc.for.body_crit_edge ]
  %outbox_offset.0327 = phi i32 [ 0, %for.body.lr.ph ], [ %outbox_offset.1, %for.inc.for.body_crit_edge ]
  %stream_offset.0325 = phi i32 [ 0, %for.body.lr.ph ], [ %stream_offset.1, %for.inc.for.body_crit_edge ]
  %inbox_offset.0323 = phi i32 [ 0, %for.body.lr.ph ], [ %inbox_offset.1, %for.inc.for.body_crit_edge ]
  %outbox_size.0321 = phi i32 [ 0, %for.body.lr.ph ], [ %outbox_size.1, %for.inc.for.body_crit_edge ]
  %stream_size.0319 = phi i32 [ 0, %for.body.lr.ph ], [ %stream_size.1, %for.inc.for.body_crit_edge ]
  %inbox_size.0317 = phi i32 [ 0, %for.body.lr.ph ], [ %inbox_size.1, %for.inc.for.body_crit_edge ]
  %debug_size.0315 = phi i32 [ 0, %for.body.lr.ph ], [ %debug_size.1, %for.inc.for.body_crit_edge ]
  %i.0312 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %debug_offset.0310 = phi i32 [ 0, %for.body.lr.ph ], [ %debug_offset.1, %for.inc.for.body_crit_edge ]
  %id = getelementptr %struct.sof_ipc_window, ptr %8, i32 0, i32 2, i32 %i.0312, i32 2
  %9 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %get_window_offset.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %14, i32 0, i32 57
  %15 = ptrtoint ptr %get_window_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_window_offset.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %snd_sof_dsp_get_window_offset.exit.thread, label %snd_sof_dsp_get_window_offset.exit

snd_sof_dsp_get_window_offset.exit.thread:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.105) #11
  br label %do.end7

snd_sof_dsp_get_window_offset.exit:               ; preds = %for.body
  %19 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %id, align 1
  %call.i = tail call i32 %16(ptr noundef %sdev, i32 noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %snd_sof_dsp_get_window_offset.exit.do.end7_crit_edge, label %if.end10

snd_sof_dsp_get_window_offset.exit.do.end7_crit_edge: ; preds = %snd_sof_dsp_get_window_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end7:                                          ; preds = %snd_sof_dsp_get_window_offset.exit.do.end7_crit_edge, %snd_sof_dsp_get_window_offset.exit.thread
  %21 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdev, align 4
  %23 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %id, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.86, i32 noundef %24) #11
  br label %for.inc

if.end10:                                         ; preds = %snd_sof_dsp_get_window_offset.exit
  %type = getelementptr %struct.sof_ipc_window, ptr %8, i32 0, i32 2, i32 %i.0312, i32 1
  %25 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %type, align 1
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %26, label %do.end52 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb13
    i32 2, label %sw.bb19
    i32 3, label %sw.bb24
    i32 4, label %sw.bb32
    i32 5, label %sw.bb38
    i32 6, label %sw.bb43
  ]

sw.bb:                                            ; preds = %if.end10
  %offset = getelementptr %struct.sof_ipc_window, ptr %8, i32 0, i32 2, i32 %i.0312, i32 5
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %offset, align 1
  %add = add i32 %29, %call.i
  %size = getelementptr %struct.sof_ipc_window, ptr %8, i32 0, i32 2, i32 %i.0312, i32 4
  %30 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %size, align 1
  %32 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdata.i, align 4
  %desc.i229 = getelementptr inbounds %struct.snd_sof_pdata, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %desc.i229 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc.i229, align 4
  %ops.i230 = getelementptr inbounds %struct.sof_dev_desc, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %ops.i230 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i230, align 4
  %tobool.not.i231 = icmp eq ptr %37, null
  br i1 %tobool.not.i231, label %sw.bb.for.inc_crit_edge, label %land.lhs.true.i

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i:                                  ; preds = %sw.bb
  %debugfs_add_region_item.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %37, i32 0, i32 51
  %38 = ptrtoint ptr %debugfs_add_region_item.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %debugfs_add_region_item.i, align 4
  %tobool4.not.i = icmp eq ptr %39, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %if.then.i233

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i233:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i232 = tail call i32 %39(ptr noundef %sdev, i32 noundef 3, i32 noundef %add, i32 noundef %31, ptr noundef nonnull @.str.88, i32 noundef 1) #8
  br label %for.inc

sw.bb13:                                          ; preds = %if.end10
  %offset14 = getelementptr %struct.sof_ipc_window, ptr %8, i32 0, i32 2, i32 %i.0312, i32 5
  %40 = ptrtoint ptr %offset14 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %offset14, align 1
  %add15 = add i32 %41, %call.i
  %size16 = getelementptr %struct.sof_ipc_window, ptr %8, i32 0, i32 2, i32 %i.0312, i32 4
  %42 = ptrtoint ptr %size16 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %size16, align 1
  %44 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdata.i, align 4
  %desc.i235 = getelementptr inbounds %struct.snd_sof_pdata, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %desc.i235 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %desc.i235, align 4
  %ops.i236 = getelementptr inbounds %struct.sof_dev_desc, ptr %47, i32 0, i32 14
  %48 = ptrtoint ptr %ops.i236 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i236, align 4
  %tobool.not.i237 = icmp eq ptr %49, null
  br i1 %tobool.not.i237, label %sw.bb13.for.inc_crit_edge, label %land.lhs.true.i240

sw.bb13.for.inc_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i240:                               ; preds = %sw.bb13
  %debugfs_add_region_item.i238 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %49, i32 0, i32 51
  %50 = ptrtoint ptr %debugfs_add_region_item.i238 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %debugfs_add_region_item.i238, align 4
  %tobool4.not.i239 = icmp eq ptr %51, null
  br i1 %tobool4.not.i239, label %land.lhs.true.i240.for.inc_crit_edge, label %if.then.i242

land.lhs.true.i240.for.inc_crit_edge:             ; preds = %land.lhs.true.i240
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i242:                                     ; preds = %land.lhs.true.i240
  call void @__sanitizer_cov_trace_pc() #10
  %call.i241 = tail call i32 %51(ptr noundef %sdev, i32 noundef 3, i32 noundef %add15, i32 noundef %43, ptr noundef nonnull @.str.89, i32 noundef 1) #8
  br label %for.inc

sw.bb19:                                          ; preds = %if.end10
  %offset20 = getelementptr %struct.sof_ipc_window, ptr %8, i32 0, i32 2, i32 %i.0312, i32 5
  %52 = ptrtoint ptr %offset20 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %offset20, align 1
  %add21 = add i32 %53, %call.i
  %size22 = getelementptr %struct.sof_ipc_window, ptr %8, i32 0, i32 2, i32 %i.0312, i32 4
  %54 = ptrtoint ptr %size22 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %size22, align 1
  %56 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdata.i, align 4
  %desc.i245 = getelementptr inbounds %struct.snd_sof_pdata, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %desc.i245 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %desc.i245, align 4
  %ops.i246 = getelementptr inbounds %struct.sof_dev_desc, ptr %59, i32 0, i32 14
  %60 = ptrtoint ptr %ops.i246 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i246, align 4
  %tobool.not.i247 = icmp eq ptr %61, null
  br i1 %tobool.not.i247, label %sw.bb19.for.inc_crit_edge, label %land.lhs.true.i250

sw.bb19.for.inc_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i250:                               ; preds = %sw.bb19
  %debugfs_add_region_item.i248 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %61, i32 0, i32 51
  %62 = ptrtoint ptr %debugfs_add_region_item.i248 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %debugfs_add_region_item.i248, align 4
  %tobool4.not.i249 = icmp eq ptr %63, null
  br i1 %tobool4.not.i249, label %land.lhs.true.i250.for.inc_crit_edge, label %if.then.i252

land.lhs.true.i250.for.inc_crit_edge:             ; preds = %land.lhs.true.i250
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i252:                                     ; preds = %land.lhs.true.i250
  call void @__sanitizer_cov_trace_pc() #10
  %call.i251 = tail call i32 %63(ptr noundef %sdev, i32 noundef 3, i32 noundef %add21, i32 noundef %55, ptr noundef nonnull @.str.90, i32 noundef 1) #8
  br label %for.inc

sw.bb24:                                          ; preds = %if.end10
  %offset25 = getelementptr %struct.sof_ipc_window, ptr %8, i32 0, i32 2, i32 %i.0312, i32 5
  %64 = ptrtoint ptr %offset25 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %offset25, align 1
  %add26 = add i32 %65, %call.i
  %size27 = getelementptr %struct.sof_ipc_window, ptr %8, i32 0, i32 2, i32 %i.0312, i32 4
  %66 = ptrtoint ptr %size27 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %size27, align 1
  %68 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdata.i, align 4
  %desc.i255 = getelementptr inbounds %struct.snd_sof_pdata, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %desc.i255 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %desc.i255, align 4
  %ops.i256 = getelementptr inbounds %struct.sof_dev_desc, ptr %71, i32 0, i32 14
  %72 = ptrtoint ptr %ops.i256 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i256, align 4
  %tobool.not.i257 = icmp eq ptr %73, null
  br i1 %tobool.not.i257, label %sw.bb24.for.inc_crit_edge, label %land.lhs.true.i260

sw.bb24.for.inc_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i260:                               ; preds = %sw.bb24
  %debugfs_add_region_item.i258 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %73, i32 0, i32 51
  %74 = ptrtoint ptr %debugfs_add_region_item.i258 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %debugfs_add_region_item.i258, align 4
  %tobool4.not.i259 = icmp eq ptr %75, null
  br i1 %tobool4.not.i259, label %land.lhs.true.i260.for.inc_crit_edge, label %if.then.i262

land.lhs.true.i260.for.inc_crit_edge:             ; preds = %land.lhs.true.i260
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i262:                                     ; preds = %land.lhs.true.i260
  call void @__sanitizer_cov_trace_pc() #10
  %call.i261 = tail call i32 %75(ptr noundef %sdev, i32 noundef 3, i32 noundef %add26, i32 noundef %67, ptr noundef nonnull @.str.91, i32 noundef 1) #8
  br label %for.inc

sw.bb32:                                          ; preds = %if.end10
  %offset33 = getelementptr %struct.sof_ipc_window, ptr %8, i32 0, i32 2, i32 %i.0312, i32 5
  %76 = ptrtoint ptr %offset33 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %offset33, align 1
  %add34 = add i32 %77, %call.i
  %size35 = getelementptr %struct.sof_ipc_window, ptr %8, i32 0, i32 2, i32 %i.0312, i32 4
  %78 = ptrtoint ptr %size35 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %size35, align 1
  %80 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdata.i, align 4
  %desc.i265 = getelementptr inbounds %struct.snd_sof_pdata, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %desc.i265 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %desc.i265, align 4
  %ops.i266 = getelementptr inbounds %struct.sof_dev_desc, ptr %83, i32 0, i32 14
  %84 = ptrtoint ptr %ops.i266 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i266, align 4
  %tobool.not.i267 = icmp eq ptr %85, null
  br i1 %tobool.not.i267, label %sw.bb32.for.inc_crit_edge, label %land.lhs.true.i270

sw.bb32.for.inc_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i270:                               ; preds = %sw.bb32
  %debugfs_add_region_item.i268 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %85, i32 0, i32 51
  %86 = ptrtoint ptr %debugfs_add_region_item.i268 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %debugfs_add_region_item.i268, align 4
  %tobool4.not.i269 = icmp eq ptr %87, null
  br i1 %tobool4.not.i269, label %land.lhs.true.i270.for.inc_crit_edge, label %if.then.i272

land.lhs.true.i270.for.inc_crit_edge:             ; preds = %land.lhs.true.i270
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i272:                                     ; preds = %land.lhs.true.i270
  call void @__sanitizer_cov_trace_pc() #10
  %call.i271 = tail call i32 %87(ptr noundef %sdev, i32 noundef 3, i32 noundef %add34, i32 noundef %79, ptr noundef nonnull @.str.92, i32 noundef 1) #8
  br label %for.inc

sw.bb38:                                          ; preds = %if.end10
  %offset39 = getelementptr %struct.sof_ipc_window, ptr %8, i32 0, i32 2, i32 %i.0312, i32 5
  %88 = ptrtoint ptr %offset39 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %offset39, align 1
  %add40 = add i32 %89, %call.i
  %size41 = getelementptr %struct.sof_ipc_window, ptr %8, i32 0, i32 2, i32 %i.0312, i32 4
  %90 = ptrtoint ptr %size41 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %size41, align 1
  %92 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdata.i, align 4
  %desc.i275 = getelementptr inbounds %struct.snd_sof_pdata, ptr %93, i32 0, i32 6
  %94 = ptrtoint ptr %desc.i275 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %desc.i275, align 4
  %ops.i276 = getelementptr inbounds %struct.sof_dev_desc, ptr %95, i32 0, i32 14
  %96 = ptrtoint ptr %ops.i276 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops.i276, align 4
  %tobool.not.i277 = icmp eq ptr %97, null
  br i1 %tobool.not.i277, label %sw.bb38.for.inc_crit_edge, label %land.lhs.true.i280

sw.bb38.for.inc_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i280:                               ; preds = %sw.bb38
  %debugfs_add_region_item.i278 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %97, i32 0, i32 51
  %98 = ptrtoint ptr %debugfs_add_region_item.i278 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %debugfs_add_region_item.i278, align 4
  %tobool4.not.i279 = icmp eq ptr %99, null
  br i1 %tobool4.not.i279, label %land.lhs.true.i280.for.inc_crit_edge, label %if.then.i282

land.lhs.true.i280.for.inc_crit_edge:             ; preds = %land.lhs.true.i280
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i282:                                     ; preds = %land.lhs.true.i280
  call void @__sanitizer_cov_trace_pc() #10
  %call.i281 = tail call i32 %99(ptr noundef %sdev, i32 noundef 3, i32 noundef %add40, i32 noundef %91, ptr noundef nonnull @.str.93, i32 noundef 1) #8
  br label %for.inc

sw.bb43:                                          ; preds = %if.end10
  %offset44 = getelementptr %struct.sof_ipc_window, ptr %8, i32 0, i32 2, i32 %i.0312, i32 5
  %100 = ptrtoint ptr %offset44 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %offset44, align 1
  %add45 = add i32 %101, %call.i
  %102 = ptrtoint ptr %dsp_oops_offset to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add45, ptr %dsp_oops_offset, align 4
  %103 = load i32, ptr %offset44, align 1
  %add47 = add i32 %103, %call.i
  %size48 = getelementptr %struct.sof_ipc_window, ptr %8, i32 0, i32 2, i32 %i.0312, i32 4
  %104 = ptrtoint ptr %size48 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %size48, align 1
  %106 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdata.i, align 4
  %desc.i285 = getelementptr inbounds %struct.snd_sof_pdata, ptr %107, i32 0, i32 6
  %108 = ptrtoint ptr %desc.i285 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %desc.i285, align 4
  %ops.i286 = getelementptr inbounds %struct.sof_dev_desc, ptr %109, i32 0, i32 14
  %110 = ptrtoint ptr %ops.i286 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ops.i286, align 4
  %tobool.not.i287 = icmp eq ptr %111, null
  br i1 %tobool.not.i287, label %sw.bb43.for.inc_crit_edge, label %land.lhs.true.i290

sw.bb43.for.inc_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i290:                               ; preds = %sw.bb43
  %debugfs_add_region_item.i288 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %111, i32 0, i32 51
  %112 = ptrtoint ptr %debugfs_add_region_item.i288 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %debugfs_add_region_item.i288, align 4
  %tobool4.not.i289 = icmp eq ptr %113, null
  br i1 %tobool4.not.i289, label %land.lhs.true.i290.for.inc_crit_edge, label %if.then.i292

land.lhs.true.i290.for.inc_crit_edge:             ; preds = %land.lhs.true.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i292:                                     ; preds = %land.lhs.true.i290
  call void @__sanitizer_cov_trace_pc() #10
  %call.i291 = tail call i32 %113(ptr noundef %sdev, i32 noundef 3, i32 noundef %add47, i32 noundef %105, ptr noundef nonnull @.str.94, i32 noundef 1) #8
  br label %for.inc

do.end52:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.96) #11
  br label %cleanup

for.inc:                                          ; preds = %if.then.i292, %land.lhs.true.i290.for.inc_crit_edge, %sw.bb43.for.inc_crit_edge, %if.then.i282, %land.lhs.true.i280.for.inc_crit_edge, %sw.bb38.for.inc_crit_edge, %if.then.i272, %land.lhs.true.i270.for.inc_crit_edge, %sw.bb32.for.inc_crit_edge, %if.then.i262, %land.lhs.true.i260.for.inc_crit_edge, %sw.bb24.for.inc_crit_edge, %if.then.i252, %land.lhs.true.i250.for.inc_crit_edge, %sw.bb19.for.inc_crit_edge, %if.then.i242, %land.lhs.true.i240.for.inc_crit_edge, %sw.bb13.for.inc_crit_edge, %if.then.i233, %land.lhs.true.i.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %do.end7
  %debug_offset.1 = phi i32 [ %debug_offset.0310, %do.end7 ], [ %debug_offset.0310, %sw.bb.for.inc_crit_edge ], [ %debug_offset.0310, %land.lhs.true.i.for.inc_crit_edge ], [ %debug_offset.0310, %if.then.i233 ], [ %debug_offset.0310, %sw.bb13.for.inc_crit_edge ], [ %debug_offset.0310, %land.lhs.true.i240.for.inc_crit_edge ], [ %debug_offset.0310, %if.then.i242 ], [ %debug_offset.0310, %sw.bb19.for.inc_crit_edge ], [ %debug_offset.0310, %land.lhs.true.i250.for.inc_crit_edge ], [ %debug_offset.0310, %if.then.i252 ], [ %add26, %sw.bb24.for.inc_crit_edge ], [ %add26, %land.lhs.true.i260.for.inc_crit_edge ], [ %add26, %if.then.i262 ], [ %debug_offset.0310, %sw.bb32.for.inc_crit_edge ], [ %debug_offset.0310, %land.lhs.true.i270.for.inc_crit_edge ], [ %debug_offset.0310, %if.then.i272 ], [ %debug_offset.0310, %sw.bb38.for.inc_crit_edge ], [ %debug_offset.0310, %land.lhs.true.i280.for.inc_crit_edge ], [ %debug_offset.0310, %if.then.i282 ], [ %debug_offset.0310, %sw.bb43.for.inc_crit_edge ], [ %debug_offset.0310, %land.lhs.true.i290.for.inc_crit_edge ], [ %debug_offset.0310, %if.then.i292 ]
  %debug_size.1 = phi i32 [ %debug_size.0315, %do.end7 ], [ %debug_size.0315, %sw.bb.for.inc_crit_edge ], [ %debug_size.0315, %land.lhs.true.i.for.inc_crit_edge ], [ %debug_size.0315, %if.then.i233 ], [ %debug_size.0315, %sw.bb13.for.inc_crit_edge ], [ %debug_size.0315, %land.lhs.true.i240.for.inc_crit_edge ], [ %debug_size.0315, %if.then.i242 ], [ %debug_size.0315, %sw.bb19.for.inc_crit_edge ], [ %debug_size.0315, %land.lhs.true.i250.for.inc_crit_edge ], [ %debug_size.0315, %if.then.i252 ], [ %67, %sw.bb24.for.inc_crit_edge ], [ %67, %land.lhs.true.i260.for.inc_crit_edge ], [ %67, %if.then.i262 ], [ %debug_size.0315, %sw.bb32.for.inc_crit_edge ], [ %debug_size.0315, %land.lhs.true.i270.for.inc_crit_edge ], [ %debug_size.0315, %if.then.i272 ], [ %debug_size.0315, %sw.bb38.for.inc_crit_edge ], [ %debug_size.0315, %land.lhs.true.i280.for.inc_crit_edge ], [ %debug_size.0315, %if.then.i282 ], [ %debug_size.0315, %sw.bb43.for.inc_crit_edge ], [ %debug_size.0315, %land.lhs.true.i290.for.inc_crit_edge ], [ %debug_size.0315, %if.then.i292 ]
  %inbox_size.1 = phi i32 [ %inbox_size.0317, %do.end7 ], [ %31, %sw.bb.for.inc_crit_edge ], [ %31, %land.lhs.true.i.for.inc_crit_edge ], [ %31, %if.then.i233 ], [ %inbox_size.0317, %sw.bb13.for.inc_crit_edge ], [ %inbox_size.0317, %land.lhs.true.i240.for.inc_crit_edge ], [ %inbox_size.0317, %if.then.i242 ], [ %inbox_size.0317, %sw.bb19.for.inc_crit_edge ], [ %inbox_size.0317, %land.lhs.true.i250.for.inc_crit_edge ], [ %inbox_size.0317, %if.then.i252 ], [ %inbox_size.0317, %sw.bb24.for.inc_crit_edge ], [ %inbox_size.0317, %land.lhs.true.i260.for.inc_crit_edge ], [ %inbox_size.0317, %if.then.i262 ], [ %inbox_size.0317, %sw.bb32.for.inc_crit_edge ], [ %inbox_size.0317, %land.lhs.true.i270.for.inc_crit_edge ], [ %inbox_size.0317, %if.then.i272 ], [ %inbox_size.0317, %sw.bb38.for.inc_crit_edge ], [ %inbox_size.0317, %land.lhs.true.i280.for.inc_crit_edge ], [ %inbox_size.0317, %if.then.i282 ], [ %inbox_size.0317, %sw.bb43.for.inc_crit_edge ], [ %inbox_size.0317, %land.lhs.true.i290.for.inc_crit_edge ], [ %inbox_size.0317, %if.then.i292 ]
  %stream_size.1 = phi i32 [ %stream_size.0319, %do.end7 ], [ %stream_size.0319, %sw.bb.for.inc_crit_edge ], [ %stream_size.0319, %land.lhs.true.i.for.inc_crit_edge ], [ %stream_size.0319, %if.then.i233 ], [ %stream_size.0319, %sw.bb13.for.inc_crit_edge ], [ %stream_size.0319, %land.lhs.true.i240.for.inc_crit_edge ], [ %stream_size.0319, %if.then.i242 ], [ %stream_size.0319, %sw.bb19.for.inc_crit_edge ], [ %stream_size.0319, %land.lhs.true.i250.for.inc_crit_edge ], [ %stream_size.0319, %if.then.i252 ], [ %stream_size.0319, %sw.bb24.for.inc_crit_edge ], [ %stream_size.0319, %land.lhs.true.i260.for.inc_crit_edge ], [ %stream_size.0319, %if.then.i262 ], [ %79, %sw.bb32.for.inc_crit_edge ], [ %79, %land.lhs.true.i270.for.inc_crit_edge ], [ %79, %if.then.i272 ], [ %stream_size.0319, %sw.bb38.for.inc_crit_edge ], [ %stream_size.0319, %land.lhs.true.i280.for.inc_crit_edge ], [ %stream_size.0319, %if.then.i282 ], [ %stream_size.0319, %sw.bb43.for.inc_crit_edge ], [ %stream_size.0319, %land.lhs.true.i290.for.inc_crit_edge ], [ %stream_size.0319, %if.then.i292 ]
  %outbox_size.1 = phi i32 [ %outbox_size.0321, %do.end7 ], [ %outbox_size.0321, %sw.bb.for.inc_crit_edge ], [ %outbox_size.0321, %land.lhs.true.i.for.inc_crit_edge ], [ %outbox_size.0321, %if.then.i233 ], [ %43, %sw.bb13.for.inc_crit_edge ], [ %43, %land.lhs.true.i240.for.inc_crit_edge ], [ %43, %if.then.i242 ], [ %outbox_size.0321, %sw.bb19.for.inc_crit_edge ], [ %outbox_size.0321, %land.lhs.true.i250.for.inc_crit_edge ], [ %outbox_size.0321, %if.then.i252 ], [ %outbox_size.0321, %sw.bb24.for.inc_crit_edge ], [ %outbox_size.0321, %land.lhs.true.i260.for.inc_crit_edge ], [ %outbox_size.0321, %if.then.i262 ], [ %outbox_size.0321, %sw.bb32.for.inc_crit_edge ], [ %outbox_size.0321, %land.lhs.true.i270.for.inc_crit_edge ], [ %outbox_size.0321, %if.then.i272 ], [ %outbox_size.0321, %sw.bb38.for.inc_crit_edge ], [ %outbox_size.0321, %land.lhs.true.i280.for.inc_crit_edge ], [ %outbox_size.0321, %if.then.i282 ], [ %outbox_size.0321, %sw.bb43.for.inc_crit_edge ], [ %outbox_size.0321, %land.lhs.true.i290.for.inc_crit_edge ], [ %outbox_size.0321, %if.then.i292 ]
  %inbox_offset.1 = phi i32 [ %inbox_offset.0323, %do.end7 ], [ %add, %sw.bb.for.inc_crit_edge ], [ %add, %land.lhs.true.i.for.inc_crit_edge ], [ %add, %if.then.i233 ], [ %inbox_offset.0323, %sw.bb13.for.inc_crit_edge ], [ %inbox_offset.0323, %land.lhs.true.i240.for.inc_crit_edge ], [ %inbox_offset.0323, %if.then.i242 ], [ %inbox_offset.0323, %sw.bb19.for.inc_crit_edge ], [ %inbox_offset.0323, %land.lhs.true.i250.for.inc_crit_edge ], [ %inbox_offset.0323, %if.then.i252 ], [ %inbox_offset.0323, %sw.bb24.for.inc_crit_edge ], [ %inbox_offset.0323, %land.lhs.true.i260.for.inc_crit_edge ], [ %inbox_offset.0323, %if.then.i262 ], [ %inbox_offset.0323, %sw.bb32.for.inc_crit_edge ], [ %inbox_offset.0323, %land.lhs.true.i270.for.inc_crit_edge ], [ %inbox_offset.0323, %if.then.i272 ], [ %inbox_offset.0323, %sw.bb38.for.inc_crit_edge ], [ %inbox_offset.0323, %land.lhs.true.i280.for.inc_crit_edge ], [ %inbox_offset.0323, %if.then.i282 ], [ %inbox_offset.0323, %sw.bb43.for.inc_crit_edge ], [ %inbox_offset.0323, %land.lhs.true.i290.for.inc_crit_edge ], [ %inbox_offset.0323, %if.then.i292 ]
  %stream_offset.1 = phi i32 [ %stream_offset.0325, %do.end7 ], [ %stream_offset.0325, %sw.bb.for.inc_crit_edge ], [ %stream_offset.0325, %land.lhs.true.i.for.inc_crit_edge ], [ %stream_offset.0325, %if.then.i233 ], [ %stream_offset.0325, %sw.bb13.for.inc_crit_edge ], [ %stream_offset.0325, %land.lhs.true.i240.for.inc_crit_edge ], [ %stream_offset.0325, %if.then.i242 ], [ %stream_offset.0325, %sw.bb19.for.inc_crit_edge ], [ %stream_offset.0325, %land.lhs.true.i250.for.inc_crit_edge ], [ %stream_offset.0325, %if.then.i252 ], [ %stream_offset.0325, %sw.bb24.for.inc_crit_edge ], [ %stream_offset.0325, %land.lhs.true.i260.for.inc_crit_edge ], [ %stream_offset.0325, %if.then.i262 ], [ %add34, %sw.bb32.for.inc_crit_edge ], [ %add34, %land.lhs.true.i270.for.inc_crit_edge ], [ %add34, %if.then.i272 ], [ %stream_offset.0325, %sw.bb38.for.inc_crit_edge ], [ %stream_offset.0325, %land.lhs.true.i280.for.inc_crit_edge ], [ %stream_offset.0325, %if.then.i282 ], [ %stream_offset.0325, %sw.bb43.for.inc_crit_edge ], [ %stream_offset.0325, %land.lhs.true.i290.for.inc_crit_edge ], [ %stream_offset.0325, %if.then.i292 ]
  %outbox_offset.1 = phi i32 [ %outbox_offset.0327, %do.end7 ], [ %outbox_offset.0327, %sw.bb.for.inc_crit_edge ], [ %outbox_offset.0327, %land.lhs.true.i.for.inc_crit_edge ], [ %outbox_offset.0327, %if.then.i233 ], [ %add15, %sw.bb13.for.inc_crit_edge ], [ %add15, %land.lhs.true.i240.for.inc_crit_edge ], [ %add15, %if.then.i242 ], [ %outbox_offset.0327, %sw.bb19.for.inc_crit_edge ], [ %outbox_offset.0327, %land.lhs.true.i250.for.inc_crit_edge ], [ %outbox_offset.0327, %if.then.i252 ], [ %outbox_offset.0327, %sw.bb24.for.inc_crit_edge ], [ %outbox_offset.0327, %land.lhs.true.i260.for.inc_crit_edge ], [ %outbox_offset.0327, %if.then.i262 ], [ %outbox_offset.0327, %sw.bb32.for.inc_crit_edge ], [ %outbox_offset.0327, %land.lhs.true.i270.for.inc_crit_edge ], [ %outbox_offset.0327, %if.then.i272 ], [ %outbox_offset.0327, %sw.bb38.for.inc_crit_edge ], [ %outbox_offset.0327, %land.lhs.true.i280.for.inc_crit_edge ], [ %outbox_offset.0327, %if.then.i282 ], [ %outbox_offset.0327, %sw.bb43.for.inc_crit_edge ], [ %outbox_offset.0327, %land.lhs.true.i290.for.inc_crit_edge ], [ %outbox_offset.0327, %if.then.i292 ]
  %inc = add nuw i32 %i.0312, 1
  %116 = ptrtoint ptr %info_window to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %info_window, align 4
  %num_windows = getelementptr inbounds %struct.sof_ipc_window, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %num_windows to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %num_windows, align 1
  %cmp = icmp ult i32 %inc, %119
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %outbox_size.1)
  %cmp54 = icmp eq i32 %outbox_size.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inbox_size.1)
  %cmp55 = icmp eq i32 %inbox_size.1, 0
  %or.cond = select i1 %cmp54, i1 true, i1 %cmp55
  br i1 %or.cond, label %for.end.do.end59_crit_edge, label %if.end61

for.end.do.end59_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

do.end59:                                         ; preds = %for.end.do.end59_crit_edge, %for.cond.preheader.do.end59_crit_edge
  %120 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.99) #11
  br label %cleanup

if.end61:                                         ; preds = %for.end
  %dsp_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 14
  %122 = ptrtoint ptr %dsp_box to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %inbox_offset.1, ptr %dsp_box, align 4
  %size64 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 14, i32 1
  %123 = ptrtoint ptr %size64 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %inbox_size.1, ptr %size64, align 4
  %host_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 15
  %124 = ptrtoint ptr %host_box to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %outbox_offset.1, ptr %host_box, align 4
  %size67 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 15, i32 1
  %125 = ptrtoint ptr %size67 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %outbox_size.1, ptr %size67, align 4
  %stream_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 16
  %126 = ptrtoint ptr %stream_box to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %stream_offset.1, ptr %stream_box, align 4
  %size70 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 16, i32 1
  %127 = ptrtoint ptr %size70 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %stream_size.1, ptr %size70, align 4
  %debug_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 17
  %128 = ptrtoint ptr %debug_box to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %debug_offset.1, ptr %debug_box, align 4
  %size73 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 17, i32 1
  %129 = ptrtoint ptr %size73 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %debug_size.1, ptr %size73, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_get_windows.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_get_windows, %if.then79)) #8
          to label %do.body84 [label %if.then79], !srcloc !299

if.then79:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_get_windows.__UNIQUE_ID_ddebug253, ptr noundef %131, ptr noundef nonnull @.str.101, i32 noundef %inbox_offset.1, i32 noundef %inbox_size.1) #8
  br label %do.body84

do.body84:                                        ; preds = %if.then79, %if.end61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_get_windows.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_get_windows, %if.then96)) #8
          to label %do.body101 [label %if.then96], !srcloc !299

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  %132 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_get_windows.__UNIQUE_ID_ddebug254, ptr noundef %133, ptr noundef nonnull @.str.102, i32 noundef %outbox_offset.1, i32 noundef %outbox_size.1) #8
  br label %do.body101

do.body101:                                       ; preds = %if.then96, %do.body84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_get_windows.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_get_windows, %if.then113)) #8
          to label %do.body118 [label %if.then113], !srcloc !299

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  %134 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_get_windows.__UNIQUE_ID_ddebug255, ptr noundef %135, ptr noundef nonnull @.str.103, i32 noundef %stream_offset.1, i32 noundef %stream_size.1) #8
  br label %do.body118

do.body118:                                       ; preds = %if.then113, %do.body101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_get_windows.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_get_windows, %if.then130)) #8
          to label %cleanup [label %if.then130], !srcloc !299

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_get_windows.__UNIQUE_ID_ddebug256, ptr noundef %137, ptr noundef nonnull @.str.104, i32 noundef %debug_offset.1, i32 noundef %debug_size.1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then130, %do.body118, %do.end59, %do.end52, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_ipc_init_msg_memory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_parse_module_memcpy(ptr noundef %sdev, ptr noundef %module) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_sof_parse_module_memcpy.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_sof_parse_module_memcpy, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !299

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  %size = getelementptr inbounds %struct.snd_sof_mod_hdr, ptr %module, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %size, align 1
  %num_blocks = getelementptr inbounds %struct.snd_sof_mod_hdr, ptr %module, i32 0, i32 2
  %4 = ptrtoint ptr %num_blocks to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %num_blocks, align 1
  %6 = ptrtoint ptr %module to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %module, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_sof_parse_module_memcpy.__UNIQUE_ID_ddebug258, ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %3, i32 noundef %5, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_blocks4 = getelementptr inbounds %struct.snd_sof_mod_hdr, ptr %module, i32 0, i32 2
  %8 = ptrtoint ptr %num_blocks4 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %num_blocks4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp154.not = icmp eq i32 %9, 0
  br i1 %cmp154.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %size3 = getelementptr inbounds %struct.snd_sof_mod_hdr, ptr %module, i32 0, i32 1
  %10 = ptrtoint ptr %size3 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %size3, align 1
  %add.ptr = getelementptr i8, ptr %module, i32 12
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %block.0158 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %block.1, %for.inc.for.body_crit_edge ]
  %count.0156 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %remaining.0155 = phi i32 [ %11, %for.body.lr.ph ], [ %remaining.1, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %remaining.0155)
  %cmp5 = icmp ult i32 %remaining.0155, 12
  br i1 %cmp5, label %do.end9, label %if.end11

do.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %sub = add i32 %remaining.0155, -12
  %size12 = getelementptr inbounds %struct.snd_sof_blk_hdr, ptr %block.0158, i32 0, i32 1
  %14 = ptrtoint ptr %size12 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %size12, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13 = icmp eq i32 %15, 0
  br i1 %cmp13, label %do.end17, label %if.end25

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.14, i32 noundef %count.0156) #11
  %18 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev, align 4
  %20 = ptrtoint ptr %block.0158 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %block.0158, align 1
  %offset24 = getelementptr inbounds %struct.snd_sof_blk_hdr, ptr %block.0158, i32 0, i32 2
  %22 = ptrtoint ptr %offset24 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %offset24, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.18, i32 noundef %21, i32 noundef %23) #11
  br label %for.inc

if.end25:                                         ; preds = %if.end11
  %24 = ptrtoint ptr %block.0158 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %block.0158, align 1
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %25, label %do.end32 [
    i32 0, label %if.end25.for.inc_crit_edge
    i32 4, label %if.end25.for.inc_crit_edge244
    i32 5, label %if.end25.for.inc_crit_edge245
    i32 6, label %if.end25.for.inc_crit_edge246
    i32 7, label %if.end25.for.inc_crit_edge247
    i32 8, label %if.end25.for.inc_crit_edge248
    i32 9, label %if.end25.for.inc_crit_edge249
    i32 10, label %if.end25.for.inc_crit_edge250
    i32 11, label %if.end25.for.inc_crit_edge251
    i32 12, label %if.end25.for.inc_crit_edge252
    i32 13, label %if.end25.for.inc_crit_edge253
    i32 14, label %if.end25.for.inc_crit_edge254
    i32 1, label %if.end25.sw.bb28_crit_edge
    i32 2, label %if.end25.sw.bb28_crit_edge255
    i32 3, label %if.end25.sw.bb28_crit_edge256
  ]

if.end25.sw.bb28_crit_edge256:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end25.sw.bb28_crit_edge255:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end25.sw.bb28_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end25.for.inc_crit_edge254:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end25.for.inc_crit_edge253:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end25.for.inc_crit_edge252:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end25.for.inc_crit_edge251:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end25.for.inc_crit_edge250:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end25.for.inc_crit_edge249:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end25.for.inc_crit_edge248:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end25.for.inc_crit_edge247:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end25.for.inc_crit_edge246:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end25.for.inc_crit_edge245:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end25.for.inc_crit_edge244:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb28:                                          ; preds = %if.end25.sw.bb28_crit_edge, %if.end25.sw.bb28_crit_edge255, %if.end25.sw.bb28_crit_edge256
  %offset29 = getelementptr inbounds %struct.snd_sof_blk_hdr, ptr %block.0158, i32 0, i32 2
  %27 = ptrtoint ptr %offset29 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %offset29, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_sof_parse_module_memcpy.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_sof_parse_module_memcpy, %if.then47)) #8
          to label %do.end53 [label %if.then47], !srcloc !299

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.21, i32 noundef %25, i32 noundef %count.0156) #11
  br label %cleanup

if.then47:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sdev, align 4
  %33 = ptrtoint ptr %block.0158 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %block.0158, align 1
  %35 = ptrtoint ptr %size12 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %size12, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_sof_parse_module_memcpy.__UNIQUE_ID_ddebug259, ptr noundef %32, ptr noundef nonnull @.str.23, i32 noundef %count.0156, i32 noundef %34, i32 noundef %36, i32 noundef %28) #8
  br label %do.end53

do.end53:                                         ; preds = %if.then47, %sw.bb28
  %37 = ptrtoint ptr %size12 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %size12, align 1
  %rem = and i32 %38, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool55.not = icmp eq i32 %rem, 0
  br i1 %tobool55.not, label %if.end62, label %do.end59

do.end59:                                         ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.25, i32 noundef %38) #11
  br label %cleanup

if.end62:                                         ; preds = %do.end53
  %41 = ptrtoint ptr %block.0158 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %block.0158, align 1
  %add.ptr64 = getelementptr %struct.snd_sof_blk_hdr, ptr %block.0158, i32 1
  %43 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %46, i32 0, i32 14
  %47 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i, align 4
  %block_write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %block_write.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %block_write.i, align 4
  %call.i = tail call i32 %50(ptr noundef %sdev, i32 noundef %42, i32 noundef %28, ptr noundef %add.ptr64, i32 noundef %38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp67 = icmp slt i32 %call.i, 0
  br i1 %cmp67, label %do.end71, label %if.end74

do.end71:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sdev, align 4
  %53 = ptrtoint ptr %block.0158 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %block.0158, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.28, i32 noundef %54) #11
  br label %cleanup

if.end74:                                         ; preds = %if.end62
  %55 = ptrtoint ptr %size12 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %size12, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %56)
  %cmp76 = icmp ult i32 %sub, %56
  br i1 %cmp76, label %do.end80, label %if.end82

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end82:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %sub84 = sub i32 %sub, %56
  %add.ptr87 = getelementptr i8, ptr %add.ptr64, i32 %56
  br label %for.inc

for.inc:                                          ; preds = %if.end82, %if.end25.for.inc_crit_edge, %if.end25.for.inc_crit_edge244, %if.end25.for.inc_crit_edge245, %if.end25.for.inc_crit_edge246, %if.end25.for.inc_crit_edge247, %if.end25.for.inc_crit_edge248, %if.end25.for.inc_crit_edge249, %if.end25.for.inc_crit_edge250, %if.end25.for.inc_crit_edge251, %if.end25.for.inc_crit_edge252, %if.end25.for.inc_crit_edge253, %if.end25.for.inc_crit_edge254, %do.end17
  %remaining.1 = phi i32 [ %sub, %do.end17 ], [ %sub84, %if.end82 ], [ %sub, %if.end25.for.inc_crit_edge ], [ %sub, %if.end25.for.inc_crit_edge244 ], [ %sub, %if.end25.for.inc_crit_edge245 ], [ %sub, %if.end25.for.inc_crit_edge246 ], [ %sub, %if.end25.for.inc_crit_edge247 ], [ %sub, %if.end25.for.inc_crit_edge248 ], [ %sub, %if.end25.for.inc_crit_edge249 ], [ %sub, %if.end25.for.inc_crit_edge250 ], [ %sub, %if.end25.for.inc_crit_edge251 ], [ %sub, %if.end25.for.inc_crit_edge252 ], [ %sub, %if.end25.for.inc_crit_edge253 ], [ %sub, %if.end25.for.inc_crit_edge254 ]
  %block.1 = phi ptr [ %block.0158, %do.end17 ], [ %add.ptr87, %if.end82 ], [ %block.0158, %if.end25.for.inc_crit_edge ], [ %block.0158, %if.end25.for.inc_crit_edge244 ], [ %block.0158, %if.end25.for.inc_crit_edge245 ], [ %block.0158, %if.end25.for.inc_crit_edge246 ], [ %block.0158, %if.end25.for.inc_crit_edge247 ], [ %block.0158, %if.end25.for.inc_crit_edge248 ], [ %block.0158, %if.end25.for.inc_crit_edge249 ], [ %block.0158, %if.end25.for.inc_crit_edge250 ], [ %block.0158, %if.end25.for.inc_crit_edge251 ], [ %block.0158, %if.end25.for.inc_crit_edge252 ], [ %block.0158, %if.end25.for.inc_crit_edge253 ], [ %block.0158, %if.end25.for.inc_crit_edge254 ]
  %inc = add nuw i32 %count.0156, 1
  %59 = ptrtoint ptr %num_blocks4 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %num_blocks4, align 1
  %cmp = icmp ult i32 %inc, %60
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end80, %do.end71, %do.end59, %do.end32, %do.end9, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end9 ], [ -22, %do.end32 ], [ -22, %do.end59 ], [ %call.i, %do.end71 ], [ -22, %do.end80 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_load_firmware_raw(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_filename_prefix = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %fw_filename_prefix to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw_filename_prefix, align 4
  %fw_filename1 = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %fw_filename1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw_filename1, align 4
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.32, ptr noundef %5, ptr noundef %7) #8
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev, align 4
  %call6 = tail call i32 @request_firmware(ptr noundef %1, ptr noundef nonnull %call, ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %do.body13

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.33) #11
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.36) #11
  br label %err

do.body13:                                        ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_sof_load_firmware_raw.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_sof_load_firmware_raw, %if.then18)) #8
          to label %if.end23 [label %if.then18], !srcloc !299

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_sof_load_firmware_raw.__UNIQUE_ID_ddebug261, ptr noundef %15, ptr noundef nonnull @.str.38, ptr noundef nonnull %call) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %do.body13
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call25 = tail call fastcc i32 @snd_sof_fw_ext_man_parse(ptr noundef %sdev, ptr noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp sgt i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %fw_offset = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %fw_offset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call25, ptr %fw_offset, align 4
  br label %err

if.else28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool29.not = icmp eq i32 %call25, 0
  br i1 %tobool29.not, label %do.body31, label %if.else48

do.body31:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_sof_load_firmware_raw.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_sof_load_firmware_raw, %if.then43)) #8
          to label %err [label %if.then43], !srcloc !299

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_sof_load_firmware_raw.__UNIQUE_ID_ddebug262, ptr noundef %20, ptr noundef nonnull @.str.39) #8
  br label %err

if.else48:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.41, ptr noundef nonnull %call, i32 noundef %call25) #11
  br label %err

err:                                              ; preds = %if.else48, %if.then43, %do.body31, %if.then27, %do.end
  %ret.0 = phi i32 [ %call6, %do.end ], [ %call6, %if.then27 ], [ %call25, %if.else48 ], [ %call6, %if.then43 ], [ %call6, %do.body31 ]
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_sof_fw_ext_man_parse(ptr noundef %sdev, ptr nocapture noundef readonly %fw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %full_size = getelementptr inbounds %struct.sof_ext_man_header, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %full_size to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %full_size, align 1
  %header_size = getelementptr inbounds %struct.sof_ext_man_header, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %header_size to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %header_size, align 1
  %sub = sub i32 %3, %5
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp.i = icmp ult i32 %7, 16
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1851870552, i32 %9)
  %cmp1.i = icmp eq i32 %9, 1851870552
  br i1 %cmp1.i, label %snd_sof_ext_man_size.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

snd_sof_ext_man_size.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %snd_sof_ext_man_size.exit.cleanup_crit_edge, label %if.end

snd_sof_ext_man_size.exit.cleanup_crit_edge:      ; preds = %snd_sof_ext_man_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %snd_sof_ext_man_size.exit
  %header_version = getelementptr inbounds %struct.sof_ext_man_header, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %header_version to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %header_version, align 1
  %and = and i32 %11, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %and)
  %cmp1.not = icmp eq i32 %and, 16777216
  br i1 %cmp1.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.106, i32 noundef %11, i32 noundef 16777216) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp7144 = icmp ugt i32 %sub, 8
  br i1 %cmp7144, label %while.body.lr.ph, label %if.end4.while.end_crit_edge

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end4
  %14 = ptrtoint ptr %1 to i32
  %add = add i32 %5, %14
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %first_boot.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 9
  %info_window.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 42
  %version.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 31, i32 5
  %flags3.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 31, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end55.while.body_crit_edge, %while.body.lr.ph
  %iptr.0146 = phi i32 [ %add, %while.body.lr.ph ], [ %add59, %if.end55.while.body_crit_edge ]
  %remaining.0145 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub57, %if.end55.while.body_crit_edge ]
  %15 = inttoptr i32 %iptr.0146 to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_sof_fw_ext_man_parse.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_sof_fw_ext_man_parse, %if.then12)) #8
          to label %do.end16 [label %if.then12], !srcloc !299

if.then12:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %15, align 1
  %size = getelementptr inbounds %struct.sof_ext_man_elem_header, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %size, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_sof_fw_ext_man_parse.__UNIQUE_ID_ddebug252, ptr noundef %17, ptr noundef nonnull @.str.108, i32 noundef %19, i32 noundef %21) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %while.body
  %size17 = getelementptr inbounds %struct.sof_ext_man_elem_header, ptr %15, i32 0, i32 1
  %22 = ptrtoint ptr %size17 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %size17, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %23)
  %cmp18 = icmp ult i32 %23, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %remaining.0145)
  %cmp20 = icmp ugt i32 %23, %remaining.0145
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp20
  br i1 %or.cond, label %do.end24, label %if.end28

do.end24:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  %24 = inttoptr i32 %iptr.0146 to ptr
  %25 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdev, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %24, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.110, i32 noundef %28, i32 noundef %23) #11
  br label %cleanup

if.end28:                                         ; preds = %do.end16
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %15, align 1
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %30, label %do.end43 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb31
    i32 2, label %sw.bb33
    i32 4, label %sw.bb35
    i32 5, label %sw.bb37
    i32 6, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %version1.i = getelementptr inbounds %struct.sof_ext_man_fw_version, ptr %15, i32 0, i32 1
  %32 = call ptr @memcpy(ptr %version.i, ptr %version1.i, i32 60)
  %flags.i = getelementptr inbounds %struct.sof_ext_man_fw_version, ptr %15, i32 0, i32 2
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %flags.i, align 1
  %conv.i = zext i32 %34 to i64
  %35 = ptrtoint ptr %flags3.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %conv.i, ptr %flags3.i, align 4
  %call.i = tail call i32 @snd_sof_ipc_valid(ptr noundef %sdev) #8
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end28
  %ipc_window.i = getelementptr inbounds %struct.sof_ext_man_window, ptr %15, i32 0, i32 1
  %num_windows.i.i = getelementptr inbounds %struct.sof_ext_man_window, ptr %15, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %num_windows.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %num_windows.i.i, align 1
  %38 = add i32 %37, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %38)
  %39 = icmp ult i32 %38, -16
  br i1 %39, label %sw.bb31.do.end51_crit_edge, label %if.end.i.i

sw.bb31.do.end51_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

if.end.i.i:                                       ; preds = %sw.bb31
  %40 = ptrtoint ptr %info_window.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info_window.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.end8.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %42 = ptrtoint ptr %ipc_window.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %ipc_window.i, align 1
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %41, ptr %ipc_window.i, i32 %43) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool5.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then3.i.i.if.end55_crit_edge, label %do.end.i.i

if.then3.i.i.if.end55_crit_edge:                  ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end.i.i:                                       ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.75) #11
  br label %do.end51

if.end8.i.i:                                      ; preds = %if.end.i.i
  %46 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sdev, align 4
  %48 = ptrtoint ptr %ipc_window.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %ipc_window.i, align 1
  %call12.i.i = tail call ptr @devm_kmemdup(ptr noundef %47, ptr noundef %ipc_window.i, i32 noundef %49, i32 noundef 3264) #8
  %50 = ptrtoint ptr %info_window.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call12.i.i, ptr %info_window.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %call12.i.i, null
  br i1 %tobool15.not.i.i, label %if.end8.i.i.do.end51_crit_edge, label %if.end8.i.i.if.end55_crit_edge

if.end8.i.i.if.end55_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.end8.i.i.do.end51_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

sw.bb33:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %cc_version.i = getelementptr inbounds %struct.sof_ext_man_cc_version, ptr %15, i32 0, i32 1
  %call.i115 = tail call fastcc i32 @get_cc_info(ptr noundef %sdev, ptr noundef %cc_version.i) #8
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end28
  %51 = ptrtoint ptr %first_boot.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %first_boot.i, align 4, !range !300
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i, label %sw.bb35.if.end55_crit_edge, label %do.body.i

sw.bb35.if.end55_crit_edge:                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.body.i:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ext_man_get_dbg_abi_info.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_sof_fw_ext_man_parse, %if.then5.i)) #8
          to label %sw.epilog [label %if.then5.i], !srcloc !299

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sdev, align 4
  %abi_dbg_version.i = getelementptr inbounds %struct.ext_man_dbg_abi, ptr %15, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %abi_dbg_version.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %abi_dbg_version.i, align 1
  %shr.i = lshr i32 %56, 24
  %shr9.i = lshr i32 %56, 12
  %and10.i = and i32 %shr9.i, 4095
  %and14.i = and i32 %56, 4095
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ext_man_get_dbg_abi_info.__UNIQUE_ID_ddebug249, ptr noundef %54, ptr noundef nonnull @.str.122, i32 noundef %shr.i, i32 noundef %and10.i, i32 noundef %and14.i) #8
  br label %if.end55

sw.bb37:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call fastcc i32 @ext_man_get_config_data(ptr noundef %sdev, ptr noundef %15)
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end28
  %57 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %60, i32 0, i32 14
  %61 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i, align 4
  %parse_platform_ext_manifest.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %62, i32 0, i32 38
  %63 = ptrtoint ptr %parse_platform_ext_manifest.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %parse_platform_ext_manifest.i, align 4
  %tobool.not.i116 = icmp eq ptr %64, null
  br i1 %tobool.not.i116, label %sw.bb39.if.end55_crit_edge, label %if.then.i

sw.bb39.if.end55_crit_edge:                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then.i:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  %call.i117 = tail call i32 %64(ptr noundef %sdev, ptr noundef %15) #8
  br label %sw.epilog

do.end43:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.113, i32 noundef %30, i32 noundef %23) #11
  br label %if.end55

sw.epilog:                                        ; preds = %if.then.i, %sw.bb37, %do.body.i, %sw.bb33, %sw.bb
  %ret.1 = phi i32 [ %call38, %sw.bb37 ], [ %call.i115, %sw.bb33 ], [ %call.i, %sw.bb ], [ 0, %do.body.i ], [ %call.i117, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp47 = icmp slt i32 %ret.1, 0
  br i1 %cmp47, label %sw.epilog.do.end51_crit_edge, label %sw.epilog.if.end55_crit_edge

sw.epilog.if.end55_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

sw.epilog.do.end51_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

do.end51:                                         ; preds = %sw.epilog.do.end51_crit_edge, %if.end8.i.i.do.end51_crit_edge, %do.end.i.i, %sw.bb31.do.end51_crit_edge
  %ret.1130 = phi i32 [ -22, %do.end.i.i ], [ -12, %if.end8.i.i.do.end51_crit_edge ], [ -22, %sw.bb31.do.end51_crit_edge ], [ %ret.1, %sw.epilog.do.end51_crit_edge ]
  %67 = inttoptr i32 %iptr.0146 to ptr
  %68 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sdev, align 4
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %67, align 1
  %72 = ptrtoint ptr %size17 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %size17, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.116, i32 noundef %71, i32 noundef %73) #11
  br label %cleanup

if.end55:                                         ; preds = %sw.epilog.if.end55_crit_edge, %do.end43, %sw.bb39.if.end55_crit_edge, %if.then5.i, %sw.bb35.if.end55_crit_edge, %if.end8.i.i.if.end55_crit_edge, %if.then3.i.i.if.end55_crit_edge
  %74 = ptrtoint ptr %size17 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %size17, align 1
  %sub57 = sub i32 %remaining.0145, %75
  %add59 = add i32 %75, %iptr.0146
  %cmp7 = icmp ugt i32 %sub57, 8
  br i1 %cmp7, label %if.end55.while.body_crit_edge, label %if.end55.while.end_crit_edge

if.end55.while.end_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end55.while.body_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end55.while.end_crit_edge, %if.end4.while.end_crit_edge
  %remaining.0.lcssa = phi i32 [ %sub, %if.end4.while.end_crit_edge ], [ %sub57, %if.end55.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining.0.lcssa)
  %tobool60.not = icmp eq i32 %remaining.0.lcssa, 0
  br i1 %tobool60.not, label %while.end.cleanup_crit_edge, label %do.end64

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end64:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.119) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %while.end.cleanup_crit_edge, %do.end51, %do.end24, %do.end, %snd_sof_ext_man_size.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end24 ], [ %ret.1130, %do.end51 ], [ -22, %do.end64 ], [ %3, %snd_sof_ext_man_size.exit.cleanup_crit_edge ], [ %3, %while.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_load_firmware_memcpy(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %call = tail call i32 @snd_sof_load_firmware_raw(ptr noundef %sdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fw_offset = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %fw_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_offset, align 4
  %call1 = tail call fastcc i32 @check_header(ptr noundef %sdev, ptr noundef %3, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.error_crit_edge, label %if.end4

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %reset.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end4.if.end12_crit_edge, label %snd_sof_dsp_reset.exit

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

snd_sof_dsp_reset.exit:                           ; preds = %if.end4
  %call.i = tail call i32 %13(ptr noundef %sdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %snd_sof_dsp_reset.exit.error_crit_edge, label %snd_sof_dsp_reset.exit.if.end12_crit_edge

snd_sof_dsp_reset.exit.if.end12_crit_edge:        ; preds = %snd_sof_dsp_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

snd_sof_dsp_reset.exit.error_crit_edge:           ; preds = %snd_sof_dsp_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end12:                                         ; preds = %snd_sof_dsp_reset.exit.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %fw_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_offset, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %17
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata, align 4
  %desc.i44 = getelementptr inbounds %struct.snd_sof_pdata, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %desc.i44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc.i44, align 4
  %ops.i45 = getelementptr inbounds %struct.sof_dev_desc, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %ops.i45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i45, align 4
  %load_module1.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %load_module1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %load_module1.i, align 4
  %tobool.not.i46 = icmp eq ptr %27, null
  br i1 %tobool.not.i46, label %if.end12.error_crit_edge, label %if.end.i

if.end12.error_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end.i:                                         ; preds = %if.end12
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %15, align 4
  %sub.i = sub i32 -16, %17
  %sub5.i = add i32 %29, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i, i32 %29)
  %cmp.i = icmp ugt i32 %sub5.i, %29
  br i1 %cmp.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.140) #11
  br label %error

if.end8.i:                                        ; preds = %if.end.i
  %num_modules.i = getelementptr inbounds %struct.snd_sof_fw_header, ptr %add.ptr.i, i32 0, i32 2
  %32 = ptrtoint ptr %num_modules.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %num_modules.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp970.not.i = icmp eq i32 %33, 0
  br i1 %cmp970.not.i, label %if.end8.i.cleanup_crit_edge, label %for.body.preheader.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end8.i
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %if.end32.i.for.body.i_crit_edge, %for.body.preheader.i
  %remaining.073.i = phi i32 [ %sub34.i, %if.end32.i.for.body.i_crit_edge ], [ %sub5.i, %for.body.preheader.i ]
  %count.072.i = phi i32 [ %inc.i, %if.end32.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %module.071.i = phi ptr [ %add.ptr37.i, %if.end32.i.for.body.i_crit_edge ], [ %add.ptr4.i, %for.body.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %remaining.073.i)
  %cmp10.i = icmp ult i32 %remaining.073.i, 12
  br i1 %cmp10.i, label %do.end14.i, label %if.end16.i

do.end14.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.12) #11
  br label %error

if.end16.i:                                       ; preds = %for.body.i
  %sub17.i = add i32 %remaining.073.i, -12
  %call.i47 = tail call i32 %27(ptr noundef %sdev, ptr noundef %module.071.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp18.i = icmp slt i32 %call.i47, 0
  br i1 %cmp18.i, label %do.end22.i, label %if.end24.i

do.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.145, i32 noundef %count.072.i) #11
  br label %error

if.end24.i:                                       ; preds = %if.end16.i
  %size25.i = getelementptr inbounds %struct.snd_sof_mod_hdr, ptr %module.071.i, i32 0, i32 1
  %38 = ptrtoint ptr %size25.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %size25.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17.i, i32 %39)
  %cmp26.i = icmp ult i32 %sub17.i, %39
  br i1 %cmp26.i, label %do.end30.i, label %if.end32.i

do.end30.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.12) #11
  br label %error

if.end32.i:                                       ; preds = %if.end24.i
  %sub34.i = sub i32 %sub17.i, %39
  %add.ptr35.i = getelementptr i8, ptr %module.071.i, i32 12
  %add.ptr37.i = getelementptr i8, ptr %add.ptr35.i, i32 %39
  %inc.i = add nuw i32 %count.072.i, 1
  %42 = ptrtoint ptr %num_modules.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %num_modules.i, align 1
  %cmp9.i = icmp ult i32 %inc.i, %43
  br i1 %cmp9.i, label %if.end32.i.for.body.i_crit_edge, label %if.end32.i.cleanup_crit_edge

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32.i.for.body.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

error:                                            ; preds = %do.end30.i, %do.end22.i, %do.end14.i, %do.end.i, %if.end12.error_crit_edge, %snd_sof_dsp_reset.exit.error_crit_edge, %if.end.error_crit_edge
  %.str.49.sink = phi ptr [ @.str.43, %if.end.error_crit_edge ], [ @.str.46, %snd_sof_dsp_reset.exit.error_crit_edge ], [ @.str.49, %do.end.i ], [ @.str.49, %do.end14.i ], [ @.str.49, %do.end22.i ], [ @.str.49, %do.end30.i ], [ @.str.49, %if.end12.error_crit_edge ]
  %ret.0 = phi i32 [ %call1, %if.end.error_crit_edge ], [ %call.i, %snd_sof_dsp_reset.exit.error_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end14.i ], [ %call.i47, %do.end22.i ], [ -22, %do.end30.i ], [ -22, %if.end12.error_crit_edge ]
  %44 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull %.str.49.sink) #11
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  tail call void @release_firmware(ptr noundef %47) #8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end32.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end8.i.cleanup_crit_edge ], [ 0, %if.end32.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_header(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readonly %fw, i32 noundef %fw_offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw, align 4
  %sub = sub i32 %1, %fw_offset
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %fw_offset)
  %cmp.not = icmp ugt i32 %1, %fw_offset
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.130) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %fw_offset
  %call = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(5) @.str.132, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.134) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %file_size = getelementptr inbounds %struct.snd_sof_fw_header, ptr %add.ptr, i32 0, i32 1
  %8 = ptrtoint ptr %file_size to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %file_size, align 1
  %add = add i32 %9, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %add)
  %cmp9.not = icmp eq i32 %sub, %add
  br i1 %cmp9.not, label %do.body18, label %do.end13

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.137, i32 noundef %sub, i32 noundef %add) #11
  br label %cleanup

do.body18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_header.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_header, %if.then22)) #8
          to label %cleanup [label %if.then22], !srcloc !299

if.then22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  %14 = ptrtoint ptr %file_size to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %file_size, align 1
  %num_modules = getelementptr inbounds %struct.snd_sof_fw_header, ptr %add.ptr, i32 0, i32 2
  %16 = ptrtoint ptr %num_modules to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %num_modules, align 1
  %abi = getelementptr inbounds %struct.snd_sof_fw_header, ptr %add.ptr, i32 0, i32 3
  %18 = ptrtoint ptr %abi to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %abi, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_header.__UNIQUE_ID_ddebug260, ptr noundef %13, ptr noundef nonnull @.str.139, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef 16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %do.body18, %do.end13, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ -22, %do.end13 ], [ 0, %if.then22 ], [ 0, %do.body18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_run_firmware(ptr noundef %sdev) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %boot_wait = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %boot_wait, ptr noundef nonnull @.str.51, ptr noundef nonnull @snd_sof_run_firmware.__key) #8
  %dbg_dump_printed = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 27
  %0 = ptrtoint ptr %dbg_dump_printed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %dbg_dump_printed, align 4
  %ipc_dump_printed = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 28
  %1 = ptrtoint ptr %ipc_dump_printed to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ipc_dump_printed, align 1
  %first_boot = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 9
  %2 = ptrtoint ptr %first_boot to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %first_boot, align 4, !range !300
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %fw_version = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 32
  %call = tail call i32 @snd_sof_debugfs_buf_item(ptr noundef %sdev, ptr noundef %fw_version, i32 noundef 60, ptr noundef nonnull @.str.52, i16 noundef zeroext 292) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end4, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end4:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.53) #11
  br label %cleanup110

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %6 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %pre_fw_run.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %11, i32 0, i32 36
  %12 = ptrtoint ptr %pre_fw_run.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pre_fw_run.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end5.do.body14_crit_edge, label %snd_sof_dsp_pre_fw_run.exit

if.end5.do.body14_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

snd_sof_dsp_pre_fw_run.exit:                      ; preds = %if.end5
  %call.i = tail call i32 %13(ptr noundef %sdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %do.end11, label %snd_sof_dsp_pre_fw_run.exit.do.body14_crit_edge

snd_sof_dsp_pre_fw_run.exit.do.body14_crit_edge:  ; preds = %snd_sof_dsp_pre_fw_run.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

do.end11:                                         ; preds = %snd_sof_dsp_pre_fw_run.exit
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.56) #11
  br label %cleanup110

do.body14:                                        ; preds = %snd_sof_dsp_pre_fw_run.exit.do.body14_crit_edge, %if.end5.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_sof_run_firmware.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_sof_run_firmware, %if.then19)) #8
          to label %do.end23 [label %if.then19], !srcloc !299

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_sof_run_firmware.__UNIQUE_ID_ddebug263, ptr noundef %17, ptr noundef nonnull @.str.58) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body14
  %18 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata.i, align 4
  %desc.i166 = getelementptr inbounds %struct.snd_sof_pdata, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %desc.i166 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc.i166, align 4
  %ops.i167 = getelementptr inbounds %struct.sof_dev_desc, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %ops.i167 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i167, align 4
  %run.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %run.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %run.i, align 4
  %call.i168 = tail call i32 %25(ptr noundef %sdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %cmp25 = icmp slt i32 %call.i168, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_sof_dsp_dbg_dump(ptr noundef %sdev, ptr noundef nonnull @.str.59, i32 noundef 10) #8
  br label %cleanup110

if.end27:                                         ; preds = %do.end23
  %boot_timeout = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 44
  %26 = ptrtoint ptr %boot_timeout to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %boot_timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %27) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 836) #8
  %fw_state = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 8
  %28 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp35 = icmp ugt i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool38.not = icmp eq i32 %call2.i, 0
  %30 = select i1 %cmp35, i1 %tobool38.not, i1 false
  %__ret.0 = select i1 %30, i32 1, i32 %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool43.not = icmp eq i32 %__ret.0, 0
  %31 = select i1 %cmp35, i1 true, i1 %tobool43.not
  br i1 %31, label %if.end27.if.end76_crit_edge, label %if.then47

if.end27.if.end76_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then47:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %32 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %33 = ptrtoint ptr %boot_timeout to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %boot_timeout, align 4
  %call2.i156 = tail call i32 @__msecs_to_jiffies(i32 noundef %34) #8
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call52187 = call i32 @prepare_to_wait_event(ptr noundef %boot_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %35 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp55188 = icmp ugt i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i156)
  %tobool59.not189 = icmp eq i32 %call2.i156, 0
  %37 = select i1 %cmp55188, i1 %tobool59.not189, i1 false
  %__ret48.1190 = select i1 %37, i32 1, i32 %call2.i156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret48.1190)
  %tobool65.not191 = icmp eq i32 %__ret48.1190, 0
  %38 = select i1 %cmp55188, i1 true, i1 %tobool65.not191
  br i1 %38, label %if.then47.for.end_crit_edge, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  br label %cleanup

if.then47.for.end_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then47.cleanup_crit_edge
  %__ret48.1192 = phi i32 [ %__ret48.1, %cleanup.cleanup_crit_edge ], [ %__ret48.1190, %if.then47.cleanup_crit_edge ]
  %call73 = call i32 @schedule_timeout(i32 noundef %__ret48.1192) #8
  %call52 = call i32 @prepare_to_wait_event(ptr noundef %boot_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %39 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp55 = icmp ugt i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool59.not = icmp eq i32 %call73, 0
  %41 = select i1 %cmp55, i1 %tobool59.not, i1 false
  %__ret48.1 = select i1 %41, i32 1, i32 %call73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret48.1)
  %tobool65.not = icmp eq i32 %__ret48.1, 0
  %42 = select i1 %cmp55, i1 true, i1 %tobool65.not
  br i1 %42, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then47.for.end_crit_edge
  %__ret48.1.lcssa = phi i32 [ %__ret48.1190, %if.then47.for.end_crit_edge ], [ %__ret48.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %boot_wait, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end76

if.end76:                                         ; preds = %for.end, %if.end27.if.end76_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %if.end27.if.end76_crit_edge ], [ %__ret48.1.lcssa, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp78 = icmp eq i32 %__ret.1, 0
  br i1 %cmp78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  call void @snd_sof_dsp_dbg_dump(ptr noundef %sdev, ptr noundef nonnull @.str.60, i32 noundef 15) #8
  br label %cleanup110

if.end80:                                         ; preds = %if.end76
  %43 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %cmp82 = icmp eq i32 %44, 4
  br i1 %cmp82, label %if.end80.cleanup110_crit_edge, label %if.end84

if.end80.cleanup110_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup110

if.end84:                                         ; preds = %if.end80
  %45 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdata.i, align 4
  %desc.i170 = getelementptr inbounds %struct.snd_sof_pdata, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %desc.i170 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc.i170, align 4
  %ops.i171 = getelementptr inbounds %struct.sof_dev_desc, ptr %48, i32 0, i32 14
  %49 = ptrtoint ptr %ops.i171 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i171, align 4
  %post_fw_run.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %50, i32 0, i32 37
  %51 = ptrtoint ptr %post_fw_run.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %post_fw_run.i, align 4
  %tobool.not.i172 = icmp eq ptr %52, null
  br i1 %tobool.not.i172, label %if.end84.do.body93_crit_edge, label %snd_sof_dsp_post_fw_run.exit

if.end84.do.body93_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body93

snd_sof_dsp_post_fw_run.exit:                     ; preds = %if.end84
  %call.i173 = call i32 %52(ptr noundef %sdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %cmp86 = icmp slt i32 %call.i173, 0
  br i1 %cmp86, label %do.end90, label %snd_sof_dsp_post_fw_run.exit.do.body93_crit_edge

snd_sof_dsp_post_fw_run.exit.do.body93_crit_edge: ; preds = %snd_sof_dsp_post_fw_run.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body93

do.end90:                                         ; preds = %snd_sof_dsp_post_fw_run.exit
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.62) #11
  br label %cleanup110

do.body93:                                        ; preds = %snd_sof_dsp_post_fw_run.exit.do.body93_crit_edge, %if.end84.do.body93_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_sof_run_firmware.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_sof_run_firmware, %if.then105)) #8
          to label %do.end109 [label %if.then105], !srcloc !299

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_sof_run_firmware.__UNIQUE_ID_ddebug264, ptr noundef %56, ptr noundef nonnull @.str.64) #8
  br label %do.end109

do.end109:                                        ; preds = %if.then105, %do.body93
  %57 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %58)
  %cmp.i176 = icmp eq i32 %58, 6
  br i1 %cmp.i176, label %do.end109.cleanup110_crit_edge, label %do.body.i

do.end109.cleanup110_crit_edge:                   ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup110

do.body.i:                                        ; preds = %do.end109
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_set_fw_state.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_sof_run_firmware, %if.then3.i)) #8
          to label %do.end.i [label %if.then3.i], !srcloc !299

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sdev, align 4
  %61 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fw_state, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_set_fw_state.__UNIQUE_ID_ddebug243, ptr noundef %60, ptr noundef nonnull @.str.151, i32 noundef %62, i32 noundef 6) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i, %do.body.i
  %63 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 6, ptr %fw_state, align 4
  br label %cleanup110

cleanup110:                                       ; preds = %do.end.i, %do.end109.cleanup110_crit_edge, %do.end90, %if.end80.cleanup110_crit_edge, %if.then79, %if.then26, %do.end11, %do.end4
  %retval.0 = phi i32 [ %call, %do.end4 ], [ %call.i, %do.end11 ], [ %call.i168, %if.then26 ], [ -5, %if.then79 ], [ %call.i173, %do.end90 ], [ -5, %if.end80.cleanup110_crit_edge ], [ 0, %do.end109.cleanup110_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_debugfs_buf_item(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_dsp_dbg_dump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_sof_fw_unload(ptr nocapture noundef readonly %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @release_firmware(ptr noundef %3) #8
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_cc_info(ptr noundef %sdev, ptr noundef %ext_hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_version = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 33
  %0 = ptrtoint ptr %cc_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc_version, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body6, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %ext_hdr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %ext_hdr, align 1
  %bcmp = tail call i32 @bcmp(ptr nonnull %1, ptr %ext_hdr, i32 %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool3.not = icmp eq i32 %bcmp, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body6:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cc_info.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_cc_info, %if.then12)) #8
          to label %do.end18 [label %if.then12], !srcloc !299

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev, align 4
  %name = getelementptr inbounds %struct.sof_ipc_cc_version, ptr %ext_hdr, i32 0, i32 5
  %major = getelementptr inbounds %struct.sof_ipc_cc_version, ptr %ext_hdr, i32 0, i32 1
  %6 = ptrtoint ptr %major to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %major, align 1
  %minor = getelementptr inbounds %struct.sof_ipc_cc_version, ptr %ext_hdr, i32 0, i32 2
  %8 = ptrtoint ptr %minor to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %minor, align 1
  %micro = getelementptr inbounds %struct.sof_ipc_cc_version, ptr %ext_hdr, i32 0, i32 3
  %10 = ptrtoint ptr %micro to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %micro, align 1
  %desc = getelementptr inbounds %struct.sof_ipc_cc_version, ptr %ext_hdr, i32 0, i32 7
  %optim = getelementptr inbounds %struct.sof_ipc_cc_version, ptr %ext_hdr, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_cc_info.__UNIQUE_ID_ddebug247, ptr noundef %5, ptr noundef nonnull @.str.79, ptr noundef %name, i32 noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef %desc, ptr noundef %optim) #8
  br label %do.end18

do.end18:                                         ; preds = %if.then12, %do.body6
  %first_boot = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 9
  %12 = ptrtoint ptr %first_boot to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %first_boot, align 4, !range !300
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool19.not = icmp eq i8 %13, 0
  br i1 %tobool19.not, label %do.end18.cleanup_crit_edge, label %if.then20

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %do.end18
  %14 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev, align 4
  %16 = ptrtoint ptr %ext_hdr to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %ext_hdr, align 1
  %call25 = tail call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef %17, i32 noundef 3264) #8
  %18 = ptrtoint ptr %cc_version to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call25, ptr %cc_version, align 4
  %tobool28.not = icmp eq ptr %call25, null
  br i1 %tobool28.not, label %if.then20.cleanup_crit_edge, label %if.end30

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.then20
  %19 = ptrtoint ptr %ext_hdr to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %ext_hdr, align 1
  %21 = call ptr @memcpy(ptr %call25, ptr %ext_hdr, i32 %20)
  %call39 = tail call i32 @snd_sof_debugfs_buf_item(ptr noundef %sdev, ptr noundef nonnull %call25, i32 noundef %20, ptr noundef nonnull @.str.80, i16 noundef zeroext 292) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %if.end30.cleanup.sink.split_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.cleanup.sink.split_crit_edge:            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end30.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.53.sink = phi ptr [ @.str.77, %if.then.cleanup.sink.split_crit_edge ], [ @.str.53, %if.end30.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %if.then.cleanup.sink.split_crit_edge ], [ %call39, %if.end30.cleanup.sink.split_crit_edge ]
  %22 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull %.str.53.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end30.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %do.end18.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ -12, %if.then20.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ 0, %do.end18.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext_man_get_config_data(ptr noundef %sdev, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.sof_ext_man_elem_header, ptr %hdr, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %size, align 1
  %sub = add i32 %1, -8
  %div68 = lshr i32 %sub, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ext_man_get_config_data.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ext_man_get_config_data, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !299

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ext_man_get_config_data.__UNIQUE_ID_ddebug250, ptr noundef %3, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.123, i32 noundef %div68) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp78.not = icmp ult i32 %sub, 8
  br i1 %cmp78.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %first_boot = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 9
  %umax = call i32 @llvm.umax.i32(i32 %div68, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.080 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sof_ext_man_config_data, ptr %hdr, i32 0, i32 1, i32 %i.080
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ext_man_get_config_data.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ext_man_get_config_data, %if.then17)) #8
          to label %do.end21 [label %if.then17], !srcloc !299

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %arrayidx, align 1
  %value = getelementptr %struct.sof_ext_man_config_data, ptr %hdr, i32 0, i32 1, i32 %i.080, i32 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %value, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ext_man_get_config_data.__UNIQUE_ID_ddebug251, ptr noundef %5, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.123, i32 noundef %i.080, i32 noundef %7, i32 noundef %9) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %for.body
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %arrayidx, align 1
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %11, label %do.end31 [
    i32 0, label %do.end21.for.inc_crit_edge
    i32 1, label %do.end21.for.inc_crit_edge88
    i32 2, label %sw.bb
  ]

do.end21.for.inc_crit_edge88:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end21.for.inc_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb:                                            ; preds = %do.end21
  %13 = ptrtoint ptr %first_boot to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %first_boot, align 4, !range !300
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool23.not = icmp eq i8 %14, 0
  br i1 %tobool23.not, label %sw.bb.for.inc_crit_edge, label %land.lhs.true

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %sw.bb
  %value24 = getelementptr %struct.sof_ext_man_config_data, ptr %hdr, i32 0, i32 1, i32 %i.080, i32 1
  %15 = ptrtoint ptr %value24 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %value24, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool25.not = icmp eq i32 %16, 0
  br i1 %tobool25.not, label %land.lhs.true.for.inc_crit_edge, label %sw.epilog

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end31:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev, align 4
  %value34 = getelementptr %struct.sof_ext_man_config_data, ptr %hdr, i32 0, i32 1, i32 %i.080, i32 1
  %19 = ptrtoint ptr %value34 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %value34, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.126, i32 noundef %11, i32 noundef %20) #11
  br label %for.inc

sw.epilog:                                        ; preds = %land.lhs.true
  %call27 = tail call i32 @snd_sof_dbg_memory_info_init(ptr noundef %sdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp35 = icmp slt i32 %call27, 0
  br i1 %cmp35, label %do.end39, label %sw.epilog.for.inc_crit_edge

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end39:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdev, align 4
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %arrayidx, align 1
  %25 = ptrtoint ptr %value24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %value24, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.128, i32 noundef %24, i32 noundef %26, i32 noundef %call27) #11
  br label %cleanup

for.inc:                                          ; preds = %sw.epilog.for.inc_crit_edge, %do.end31, %land.lhs.true.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %do.end21.for.inc_crit_edge, %do.end21.for.inc_crit_edge88
  %inc = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end39, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %do.end39 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_dbg_memory_info_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !112, !114, !116, !117, !118, !120, !121, !123, !125, !127, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !159, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !175, !177, !179, !181, !183, !185, !187, !188, !189, !191, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !209, !211, !212, !213, !214, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !257, !259, !261, !262, !263, !265, !266, !267, !269, !270, !272, !273, !274, !275, !277, !278, !280, !281, !282, !284, !285, !287, !288, !289}
!llvm.module.flags = !{!290, !291, !292, !293, !294, !295, !296, !297}
!llvm.ident = !{!298}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/loader.c", i32 488, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sof_fw_ready._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sof_fw_ready._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/loader.c", i32 492, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sof_fw_ready.__UNIQUE_ID_ddebug257, !9, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/loader.c", i32 506, i32 3}
!14 = !{ptr @sof_fw_ready._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sof_fw_ready._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_sof_fw_ready, !17, !"__ksymtab_sof_fw_ready", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/loader.c", i32 523, i32 1}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/sof/loader.c", i32 534, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @snd_sof_parse_module_memcpy.__UNIQUE_ID_ddebug258, !19, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/sof/loader.c", i32 544, i32 4}
!24 = !{ptr @snd_sof_parse_module_memcpy._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @snd_sof_parse_module_memcpy._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/sof/loader.c", i32 552, i32 4}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @snd_sof_parse_module_memcpy._entry.13, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @snd_sof_parse_module_memcpy._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/sof/loader.c", i32 554, i32 4}
!33 = !{ptr @snd_sof_parse_module_memcpy._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @snd_sof_parse_module_memcpy._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/sof/loader.c", i32 569, i32 4}
!37 = !{ptr @snd_sof_parse_module_memcpy._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @snd_sof_parse_module_memcpy._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/sof/loader.c", i32 574, i32 3}
!41 = !{ptr @snd_sof_parse_module_memcpy.__UNIQUE_ID_ddebug259, !40, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/sof/loader.c", i32 580, i32 4}
!44 = !{ptr @snd_sof_parse_module_memcpy._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @snd_sof_parse_module_memcpy._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/sof/loader.c", i32 587, i32 4}
!48 = !{ptr @snd_sof_parse_module_memcpy._entry.27, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @snd_sof_parse_module_memcpy._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @snd_sof_parse_module_memcpy._entry.30, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../sound/soc/sof/loader.c", i32 593, i32 4}
!52 = !{ptr @snd_sof_parse_module_memcpy._entry_ptr.31, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @__ksymtab_snd_sof_parse_module_memcpy, !54, !"__ksymtab_snd_sof_parse_module_memcpy", i1 false, i1 false}
!54 = !{!"../sound/soc/sof/loader.c", i32 606, i32 1}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/sof/loader.c", i32 709, i32 38}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/sof/loader.c", i32 718, i32 3}
!59 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @snd_sof_load_firmware_raw._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @snd_sof_load_firmware_raw._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/sof/loader.c", i32 720, i32 3}
!64 = !{ptr @snd_sof_load_firmware_raw._entry.35, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @snd_sof_load_firmware_raw._entry_ptr.37, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/sof/loader.c", i32 724, i32 3}
!68 = !{ptr @snd_sof_load_firmware_raw.__UNIQUE_ID_ddebug261, !67, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/sof/loader.c", i32 735, i32 3}
!71 = !{ptr @snd_sof_load_firmware_raw.__UNIQUE_ID_ddebug262, !70, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/sof/loader.c", i32 738, i32 3}
!74 = !{ptr @snd_sof_load_firmware_raw._entry.40, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @snd_sof_load_firmware_raw._entry_ptr.42, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @__ksymtab_snd_sof_load_firmware_raw, !77, !"__ksymtab_snd_sof_load_firmware_raw", i1 false, i1 false}
!77 = !{!"../sound/soc/sof/loader.c", i32 747, i32 1}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/sof/loader.c", i32 761, i32 3}
!80 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @snd_sof_load_firmware_memcpy._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @snd_sof_load_firmware_memcpy._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/sof/loader.c", i32 768, i32 3}
!85 = !{ptr @snd_sof_load_firmware_memcpy._entry.45, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @snd_sof_load_firmware_memcpy._entry_ptr.47, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/sof/loader.c", i32 775, i32 3}
!89 = !{ptr @snd_sof_load_firmware_memcpy._entry.48, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @snd_sof_load_firmware_memcpy._entry_ptr.50, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @__ksymtab_snd_sof_load_firmware_memcpy, !92, !"__ksymtab_snd_sof_load_firmware_memcpy", i1 false, i1 false}
!92 = !{!"../sound/soc/sof/loader.c", i32 787, i32 1}
!93 = !{ptr @snd_sof_run_firmware.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../sound/soc/sof/loader.c", i32 793, i32 2}
!95 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/sof/loader.c", i32 803, i32 13}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/sof/loader.c", i32 806, i32 4}
!100 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @snd_sof_run_firmware._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @snd_sof_run_firmware._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/sof/loader.c", i32 814, i32 3}
!105 = !{ptr @snd_sof_run_firmware._entry.55, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @snd_sof_run_firmware._entry_ptr.57, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/sof/loader.c", i32 818, i32 2}
!109 = !{ptr @snd_sof_run_firmware.__UNIQUE_ID_ddebug263, !108, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/sof/loader.c", i32 823, i32 30}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/sof/loader.c", i32 838, i32 30}
!114 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/sof/loader.c", i32 850, i32 3}
!116 = !{ptr @snd_sof_run_firmware._entry.61, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @snd_sof_run_firmware._entry_ptr.63, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/sof/loader.c", i32 854, i32 2}
!120 = !{ptr @snd_sof_run_firmware.__UNIQUE_ID_ddebug264, !119, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!121 = !{ptr @__ksymtab_snd_sof_run_firmware, !122, !"__ksymtab_snd_sof_run_firmware", i1 false, i1 false}
!122 = !{!"../sound/soc/sof/loader.c", i32 859, i32 1}
!123 = !{ptr @__ksymtab_snd_sof_fw_unload, !124, !"__ksymtab_snd_sof_fw_unload", i1 false, i1 false}
!124 = !{!"../sound/soc/sof/loader.c", i32 867, i32 1}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/sof/ops.h", i32 190, i32 2}
!127 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @snd_sof_dsp_get_mailbox_offset._entry, !126, !"_entry", i1 false, i1 false}
!130 = !{ptr @snd_sof_dsp_get_mailbox_offset._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/sof/loader.c", i32 112, i32 3}
!133 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @snd_sof_fw_parse_ext_data.__UNIQUE_ID_ddebug248, !132, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!135 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/sof/loader.c", i32 129, i32 4}
!137 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @snd_sof_fw_parse_ext_data._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @snd_sof_fw_parse_ext_data._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/sof/loader.c", i32 136, i32 4}
!142 = !{ptr @snd_sof_fw_parse_ext_data._entry.72, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @snd_sof_fw_parse_ext_data._entry_ptr.74, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/sof/loader.c", i32 30, i32 4}
!146 = !{ptr @.str.76, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @get_ext_windows._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @get_ext_windows._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/sof/loader.c", i32 55, i32 4}
!151 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @get_cc_info._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @get_cc_info._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/sof/loader.c", i32 61, i32 2}
!156 = !{ptr @get_cc_info.__UNIQUE_ID_ddebug247, !155, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!157 = !{ptr @.str.80, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/sof/loader.c", i32 77, i32 13}
!159 = !{ptr @get_cc_info._entry.81, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../sound/soc/sof/loader.c", i32 81, i32 4}
!161 = !{ptr @get_cc_info._entry_ptr.82, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/sof/loader.c", i32 379, i32 3}
!164 = !{ptr @.str.84, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @sof_get_windows._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @sof_get_windows._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.86, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/sof/loader.c", i32 388, i32 4}
!169 = !{ptr @sof_get_windows._entry.85, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @sof_get_windows._entry_ptr.87, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.88, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/sof/loader.c", i32 399, i32 20}
!173 = !{ptr @.str.89, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/sof/loader.c", i32 407, i32 20}
!175 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/sof/loader.c", i32 413, i32 20}
!177 = !{ptr @.str.91, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/sof/loader.c", i32 421, i32 20}
!179 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/sof/loader.c", i32 429, i32 20}
!181 = !{ptr @.str.93, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/sof/loader.c", i32 435, i32 20}
!183 = !{ptr @.str.94, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/sof/loader.c", i32 442, i32 20}
!185 = !{ptr @.str.96, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/sof/loader.c", i32 446, i32 4}
!187 = !{ptr @sof_get_windows._entry.95, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @sof_get_windows._entry_ptr.97, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.99, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/sof/loader.c", i32 452, i32 3}
!191 = !{ptr @sof_get_windows._entry.98, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @sof_get_windows._entry_ptr.100, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.101, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/sof/loader.c", i32 468, i32 2}
!195 = !{ptr @sof_get_windows.__UNIQUE_ID_ddebug253, !194, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!196 = !{ptr @.str.102, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/sof/loader.c", i32 470, i32 2}
!198 = !{ptr @sof_get_windows.__UNIQUE_ID_ddebug254, !197, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!199 = !{ptr @.str.103, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/sof/loader.c", i32 472, i32 2}
!201 = !{ptr @sof_get_windows.__UNIQUE_ID_ddebug255, !200, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!202 = !{ptr @.str.104, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/sof/loader.c", i32 474, i32 2}
!204 = !{ptr @sof_get_windows.__UNIQUE_ID_ddebug256, !203, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!205 = !{ptr @.str.105, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/sof/ops.h", i32 200, i32 2}
!207 = !{ptr @snd_sof_dsp_get_window_offset._entry, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @snd_sof_dsp_get_window_offset._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.106, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/sof/loader.c", i32 296, i32 3}
!211 = !{ptr @.str.107, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @snd_sof_fw_ext_man_parse._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @snd_sof_fw_ext_man_parse._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.108, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/sof/loader.c", i32 307, i32 3}
!216 = !{ptr @snd_sof_fw_ext_man_parse.__UNIQUE_ID_ddebug252, !215, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!217 = !{ptr @.str.110, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/sof/loader.c", i32 312, i32 4}
!219 = !{ptr @snd_sof_fw_ext_man_parse._entry.109, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @snd_sof_fw_ext_man_parse._entry_ptr.111, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.113, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/sof/loader.c", i32 338, i32 4}
!223 = !{ptr @snd_sof_fw_ext_man_parse._entry.112, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @snd_sof_fw_ext_man_parse._entry_ptr.114, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.116, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/sof/loader.c", i32 344, i32 4}
!227 = !{ptr @snd_sof_fw_ext_man_parse._entry.115, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @snd_sof_fw_ext_man_parse._entry_ptr.117, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.119, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/sof/loader.c", i32 354, i32 3}
!231 = !{ptr @snd_sof_fw_ext_man_parse._entry.118, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @snd_sof_fw_ext_man_parse._entry_ptr.120, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.121, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/sof/loader.c", i32 192, i32 3}
!235 = !{ptr @.str.122, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @ext_man_get_dbg_abi_info.__UNIQUE_ID_ddebug249, !234, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!237 = !{ptr @.str.123, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/sof/loader.c", i32 216, i32 2}
!239 = !{ptr @.str.124, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @ext_man_get_config_data.__UNIQUE_ID_ddebug250, !238, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!241 = !{ptr @.str.125, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/sof/loader.c", i32 221, i32 3}
!243 = !{ptr @ext_man_get_config_data.__UNIQUE_ID_ddebug251, !242, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!244 = !{ptr @.str.126, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/sof/loader.c", i32 235, i32 4}
!246 = !{ptr @ext_man_get_config_data._entry, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @ext_man_get_config_data._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.128, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/sof/loader.c", i32 240, i32 4}
!250 = !{ptr @ext_man_get_config_data._entry.127, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @ext_man_get_config_data._entry_ptr.129, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.130, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/sof/loader.c", i32 615, i32 3}
!254 = !{ptr @.str.131, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @check_header._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @check_header._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.132, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/sof/loader.c", i32 623, i32 27}
!259 = !{ptr @.str.134, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/sof/loader.c", i32 624, i32 3}
!261 = !{ptr @check_header._entry.133, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @check_header._entry_ptr.135, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.137, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/sof/loader.c", i32 630, i32 3}
!265 = !{ptr @check_header._entry.136, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @check_header._entry_ptr.138, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.139, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/sof/loader.c", i32 635, i32 2}
!269 = !{ptr @check_header.__UNIQUE_ID_ddebug260, !268, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!270 = !{ptr @.str.140, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/sof/loader.c", i32 663, i32 3}
!272 = !{ptr @.str.141, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @load_modules._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @load_modules._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @load_modules._entry.142, !276, !"_entry", i1 false, i1 false}
!276 = !{!"../sound/soc/sof/loader.c", i32 670, i32 4}
!277 = !{ptr @load_modules._entry_ptr.143, !276, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.145, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/sof/loader.c", i32 680, i32 4}
!280 = !{ptr @load_modules._entry.144, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @load_modules._entry_ptr.146, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @load_modules._entry.147, !283, !"_entry", i1 false, i1 false}
!283 = !{!"../sound/soc/sof/loader.c", i32 685, i32 4}
!284 = !{ptr @load_modules._entry_ptr.148, !283, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.149, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/sof/sof-priv.h", i32 602, i32 2}
!287 = !{ptr @.str.150, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.151, !286, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @sof_set_fw_state.__UNIQUE_ID_ddebug243, !286, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!290 = !{i32 1, !"wchar_size", i32 2}
!291 = !{i32 1, !"min_enum_size", i32 4}
!292 = !{i32 8, !"branch-target-enforcement", i32 0}
!293 = !{i32 8, !"sign-return-address", i32 0}
!294 = !{i32 8, !"sign-return-address-all", i32 0}
!295 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!296 = !{i32 7, !"uwtable", i32 1}
!297 = !{i32 7, !"frame-pointer", i32 2}
!298 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!299 = !{i64 2148202146, i64 2148202151, i64 2148202164, i64 2148202208, i64 2148202242, i64 2148202263}
!300 = !{i8 0, i8 2}
