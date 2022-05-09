; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mlxfw_firmware_flash\22, \22a\22\09"
module asm "\09.weak\09__crc_mlxfw_firmware_flash\09\09\09\09"
module asm "\09.long\09__crc_mlxfw_firmware_flash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlxfw_firmware_flash:\09\09\09\09\09"
module asm "\09.asciz \09\22mlxfw_firmware_flash\22\09\09\09\09\09"
module asm "__kstrtabns_mlxfw_firmware_flash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mlxfw_dev = type { ptr, ptr, i16, ptr }
%struct.mlxfw_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxfw_mfa2_component = type { i16, i32, ptr }

@mlxfw_firmware_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 358, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlxfw: %s, err (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlxfw_firmware_flash\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash._entry_ptr = internal global ptr @mlxfw_firmware_flash._entry, section ".printk_index", align 4
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Firmware flash failed: Firmware file is not MFA2\00", [47 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash.__msg = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mlxfw: Firmware flash failed: Firmware file is not MFA2\00", [40 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 366, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash._entry_ptr.7 = internal global ptr @mlxfw_firmware_flash._entry.6, section ".printk_index", align 4
@.str.8 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Firmware flash failed: Failed to initialize MFA2 firmware file\00", [33 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash.__msg.9 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"mlxfw: Firmware flash failed: Failed to initialize MFA2 firmware file\00", [58 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 370, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mlxfw: Initialize firmware flash process\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash._entry_ptr.13 = internal global ptr @mlxfw_firmware_flash._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Initializing firmware flash process\00", [60 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 376, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash._entry_ptr.16 = internal global ptr @mlxfw_firmware_flash._entry.15, section ".printk_index", align 4
@.str.17 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Firmware flash failed: Could not lock the firmware FSM\00", [41 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash.__msg.18 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"mlxfw: Firmware flash failed: Could not lock the firmware FSM\00", [34 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.1, ptr @.str.2, ptr @.str.20, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mlxfw\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlxfw: Activate image\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Activating image\00", [47 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 404, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash._entry_ptr.23 = internal global ptr @mlxfw_firmware_flash._entry.22, section ".printk_index", align 4
@.str.24 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Firmware flash failed: Could not activate the downloaded image\00", [33 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash.__msg.25 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"mlxfw: Firmware flash failed: Could not activate the downloaded image\00", [58 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.1, ptr @.str.2, ptr @.str.26, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlxfw: Handle release\0A\00", [41 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 416, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlxfw: Firmware flash done\0A\00", [36 x i8] zeroinitializer }, align 32
@mlxfw_firmware_flash._entry_ptr.29 = internal global ptr @mlxfw_firmware_flash._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Firmware flash done\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_mlxfw_firmware_flash = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlxfw_firmware_flash = external dso_local constant [0 x i8], align 1
@__ksymtab_mlxfw_firmware_flash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlxfw_firmware_flash to i32), ptr @__kstrtab_mlxfw_firmware_flash, ptr @__kstrtabns_mlxfw_firmware_flash }, section "___ksymtab+mlxfw_firmware_flash", align 4
@__UNIQUE_ID_file352 = internal constant [53 x i8] c"mlxfw.file=drivers/net/ethernet/mellanox/mlxfw/mlxfw\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [27 x i8] c"mlxfw.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author354 = internal constant [46 x i8] c"mlxfw.author=Yotam Gigi <yotamg@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description355 = internal constant [46 x i8] c"mlxfw.description=Mellanox firmware flash lib\00", section ".modinfo", align 1
@mlxfw_fsm_state_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.31, ptr @.str.2, i32 98, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlxfw_fsm_state_wait\00", [43 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_wait._entry_ptr = internal global ptr @mlxfw_fsm_state_wait._entry, section ".printk_index", align 4
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Firmware flash failed: FSM state query failed\00", [50 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_wait.__msg = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mlxfw: Firmware flash failed: FSM state query failed\00", [43 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_wait._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.31, ptr @.str.2, i32 108, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_wait._entry_ptr.34 = internal global ptr @mlxfw_fsm_state_wait._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Firmware flash failed: Timeout reached on FSM state change\00", [37 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_wait.__msg.36 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"mlxfw: Firmware flash failed: Timeout reached on FSM state change\00", [62 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 49, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlxfw_fsm_state_err\00", [44 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry_ptr = internal global ptr @mlxfw_fsm_state_err._entry, section ".printk_index", align 4
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Firmware flash failed: general error\00", [59 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mlxfw: Firmware flash failed: general error\00", [52 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 52, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry_ptr.40 = internal global ptr @mlxfw_fsm_state_err._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Firmware flash failed: component hash mismatch\00", [49 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err.__msg.42 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mlxfw: Firmware flash failed: component hash mismatch\00", [42 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 55, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry_ptr.44 = internal global ptr @mlxfw_fsm_state_err._entry.43, section ".printk_index", align 4
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Firmware flash failed: component not applicable\00", [48 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err.__msg.46 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mlxfw: Firmware flash failed: component not applicable\00", [41 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 58, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry_ptr.48 = internal global ptr @mlxfw_fsm_state_err._entry.47, section ".printk_index", align 4
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Firmware flash failed: unknown key\00", [61 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err.__msg.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mlxfw: Firmware flash failed: unknown key\00", [54 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 61, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry_ptr.52 = internal global ptr @mlxfw_fsm_state_err._entry.51, section ".printk_index", align 4
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Firmware flash failed: authentication failed\00", [51 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err.__msg.54 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"mlxfw: Firmware flash failed: authentication failed\00", [44 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 64, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry_ptr.56 = internal global ptr @mlxfw_fsm_state_err._entry.55, section ".printk_index", align 4
@.str.57 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Firmware flash failed: component was not signed\00", [48 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err.__msg.58 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mlxfw: Firmware flash failed: component was not signed\00", [41 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 67, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry_ptr.60 = internal global ptr @mlxfw_fsm_state_err._entry.59, section ".printk_index", align 4
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Firmware flash failed: key not applicable\00", [54 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err.__msg.62 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mlxfw: Firmware flash failed: key not applicable\00", [47 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 70, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry_ptr.64 = internal global ptr @mlxfw_fsm_state_err._entry.63, section ".printk_index", align 4
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Firmware flash failed: bad format\00", [62 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err.__msg.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mlxfw: Firmware flash failed: bad format\00", [55 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 73, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry_ptr.68 = internal global ptr @mlxfw_fsm_state_err._entry.67, section ".printk_index", align 4
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Firmware flash failed: pending reset\00", [59 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err.__msg.70 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mlxfw: Firmware flash failed: pending reset\00", [52 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 77, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err._entry_ptr.72 = internal global ptr @mlxfw_fsm_state_err._entry.71, section ".printk_index", align 4
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Firmware flash failed: unknown error\00", [59 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_err.__msg.74 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mlxfw: Firmware flash failed: unknown error\00", [52 x i8] zeroinitializer }, align 32
@mlxfw_fsm_state_errno = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 -5, i32 -74, i32 -2, i32 -126, i32 -13, i32 -128, i32 -129, i32 -8, i32 -16, i32 -22], [52 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.75, ptr @.str.2, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlxfw_fsm_reactivate\00", [43 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate._entry_ptr = internal global ptr @mlxfw_fsm_reactivate._entry, section ".printk_index", align 4
@.str.76 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Firmware flash failed: Could not reactivate firmware flash\00", [37 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate.__msg = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"mlxfw: Firmware flash failed: Could not reactivate firmware flash\00", [62 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.77, ptr @.str.2, i32 132, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlxfw_fsm_reactivate_err\00", [39 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry_ptr = internal global ptr @mlxfw_fsm_reactivate_err._entry, section ".printk_index", align 4
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Firmware flash failed: Reactivate FSM: busy\00", [52 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err.__msg = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"mlxfw: Firmware flash failed: Reactivate FSM: busy\00", [45 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.77, ptr @.str.2, i32 135, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry_ptr.80 = internal global ptr @mlxfw_fsm_reactivate_err._entry.79, section ".printk_index", align 4
@.str.81 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Firmware flash failed: Reactivate FSM: prohibited fw ver\00", [39 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err.__msg.82 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"mlxfw: Firmware flash failed: Reactivate FSM: prohibited fw ver\00", [32 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.77, ptr @.str.2, i32 138, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry_ptr.84 = internal global ptr @mlxfw_fsm_reactivate_err._entry.83, section ".printk_index", align 4
@.str.85 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Firmware flash failed: Reactivate FSM: first page copy failed\00", [34 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err.__msg.86 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"mlxfw: Firmware flash failed: Reactivate FSM: first page copy failed\00", [59 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.77, ptr @.str.2, i32 141, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry_ptr.88 = internal global ptr @mlxfw_fsm_reactivate_err._entry.87, section ".printk_index", align 4
@.str.89 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Firmware flash failed: Reactivate FSM: first page erase failed\00", [33 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err.__msg.90 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"mlxfw: Firmware flash failed: Reactivate FSM: first page erase failed\00", [58 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.77, ptr @.str.2, i32 144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry_ptr.92 = internal global ptr @mlxfw_fsm_reactivate_err._entry.91, section ".printk_index", align 4
@.str.93 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Firmware flash failed: Reactivate FSM: first page restore failed\00", [63 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err.__msg.94 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"mlxfw: Firmware flash failed: Reactivate FSM: first page restore failed\00", [56 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.77, ptr @.str.2, i32 147, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry_ptr.96 = internal global ptr @mlxfw_fsm_reactivate_err._entry.95, section ".printk_index", align 4
@.str.97 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Firmware flash failed: Reactivate FSM: candidate fw deactivation failed\00", [56 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err.__msg.98 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"mlxfw: Firmware flash failed: Reactivate FSM: candidate fw deactivation failed\00", [49 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.77, ptr @.str.2, i32 150, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry_ptr.100 = internal global ptr @mlxfw_fsm_reactivate_err._entry.99, section ".printk_index", align 4
@.str.101 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Firmware flash failed: Reactivate FSM: device reset required\00", [35 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err.__msg.102 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"mlxfw: Firmware flash failed: Reactivate FSM: device reset required\00", [60 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.77, ptr @.str.2, i32 153, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry_ptr.104 = internal global ptr @mlxfw_fsm_reactivate_err._entry.103, section ".printk_index", align 4
@.str.105 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Firmware flash failed: Reactivate FSM: fw programming needed\00", [35 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err.__msg.106 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"mlxfw: Firmware flash failed: Reactivate FSM: fw programming needed\00", [60 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.77, ptr @.str.2, i32 156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry_ptr.108 = internal global ptr @mlxfw_fsm_reactivate_err._entry.107, section ".printk_index", align 4
@.str.109 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Firmware flash failed: Reactivate FSM: fw already activated\00", [36 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err.__msg.110 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"mlxfw: Firmware flash failed: Reactivate FSM: fw already activated\00", [61 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.77, ptr @.str.2, i32 160, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err._entry_ptr.112 = internal global ptr @mlxfw_fsm_reactivate_err._entry.111, section ".printk_index", align 4
@.str.113 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Firmware flash failed: Reactivate FSM: unexpected error\00", [40 x i8] zeroinitializer }, align 32
@mlxfw_fsm_reactivate_err.__msg.114 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"mlxfw: Firmware flash failed: Reactivate FSM: unexpected error\00", [33 x i8] zeroinitializer }, align 32
@mlxfw_flash_components._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.115, ptr @.str.2, i32 320, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlxfw_flash_components\00", [41 x i8] zeroinitializer }, align 32
@mlxfw_flash_components._entry_ptr = internal global ptr @mlxfw_flash_components._entry, section ".printk_index", align 4
@.str.116 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Firmware flash failed: Could not find device PSID in MFA2 file\00", [33 x i8] zeroinitializer }, align 32
@mlxfw_flash_components.__msg = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"mlxfw: Firmware flash failed: Could not find device PSID in MFA2 file\00", [58 x i8] zeroinitializer }, align 32
@mlxfw_flash_components._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.115, ptr @.str.2, i32 332, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_flash_components._entry_ptr.118 = internal global ptr @mlxfw_flash_components._entry.117, section ".printk_index", align 4
@.str.119 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Firmware flash failed: Failed to get MFA2 component\00", [44 x i8] zeroinitializer }, align 32
@mlxfw_flash_components.__msg.120 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"mlxfw: Firmware flash failed: Failed to get MFA2 component\00", [37 x i8] zeroinitializer }, align 32
@mlxfw_flash_components._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.115, ptr @.str.2, i32 337, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mlxfw: Flashing component type %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mlxfw_flash_components._entry_ptr.123 = internal global ptr @mlxfw_flash_components._entry.121, section ".printk_index", align 4
@.str.124 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@mlxfw_flash_component._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.125, ptr @.str.2, i32 228, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlxfw_flash_component\00", [42 x i8] zeroinitializer }, align 32
@mlxfw_flash_component._entry_ptr = internal global ptr @mlxfw_flash_component._entry, section ".printk_index", align 4
@.str.126 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Firmware flash failed: FSM component query failed\00", [46 x i8] zeroinitializer }, align 32
@mlxfw_flash_component.__msg = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"mlxfw: Firmware flash failed: FSM component query failed\00", [39 x i8] zeroinitializer }, align 32
@mlxfw_flash_component._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.125, ptr @.str.2, i32 235, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_flash_component._entry_ptr.128 = internal global ptr @mlxfw_flash_component._entry.127, section ".printk_index", align 4
@.str.129 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Firmware flash failed: Component size is bigger than limit\00", [37 x i8] zeroinitializer }, align 32
@mlxfw_flash_component.__msg.130 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"mlxfw: Firmware flash failed: Component size is bigger than limit\00", [62 x i8] zeroinitializer }, align 32
@mlxfw_flash_component.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.125, ptr @.str.2, ptr @.str.131, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlxfw: Component update\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Updating component\00", [45 x i8] zeroinitializer }, align 32
@mlxfw_flash_component._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.125, ptr @.str.2, i32 251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_flash_component._entry_ptr.134 = internal global ptr @mlxfw_flash_component._entry.133, section ".printk_index", align 4
@.str.135 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Firmware flash failed: FSM component update failed, FW reactivate is not supported\00", [45 x i8] zeroinitializer }, align 32
@mlxfw_flash_component.__msg.136 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"mlxfw: Firmware flash failed: FSM component update failed, FW reactivate is not supported\00", [38 x i8] zeroinitializer }, align 32
@mlxfw_flash_component._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.125, ptr @.str.2, i32 254, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_flash_component._entry_ptr.138 = internal global ptr @mlxfw_flash_component._entry.137, section ".printk_index", align 4
@.str.139 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Firmware flash failed: FSM component update failed\00", [45 x i8] zeroinitializer }, align 32
@mlxfw_flash_component.__msg.140 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"mlxfw: Firmware flash failed: FSM component update failed\00", [38 x i8] zeroinitializer }, align 32
@mlxfw_flash_component.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.125, ptr @.str.2, ptr @.str.141, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlxfw: Component download\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Downloading component\00", [42 x i8] zeroinitializer }, align 32
@mlxfw_flash_component._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.125, ptr @.str.2, i32 277, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_flash_component._entry_ptr.144 = internal global ptr @mlxfw_flash_component._entry.143, section ".printk_index", align 4
@.str.145 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Firmware flash failed: Component download failed\00", [47 x i8] zeroinitializer }, align 32
@mlxfw_flash_component.__msg.146 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mlxfw: Firmware flash failed: Component download failed\00", [40 x i8] zeroinitializer }, align 32
@mlxfw_flash_component.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.125, ptr @.str.2, ptr @.str.147, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlxfw: Component verify\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Verifying component\00", [44 x i8] zeroinitializer }, align 32
@mlxfw_flash_component._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.125, ptr @.str.2, i32 291, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxfw_flash_component._entry_ptr.150 = internal global ptr @mlxfw_flash_component._entry.149, section ".printk_index", align 4
@.str.151 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Firmware flash failed: FSM component verify failed\00", [45 x i8] zeroinitializer }, align 32
@mlxfw_flash_component.__msg.152 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"mlxfw: Firmware flash failed: FSM component verify failed\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 7]
@__sancov_gen_cov_switch_values.154 = internal global [13 x i64] [i64 11, i64 4, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.155 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 357, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 365, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 370, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 371, i32 33 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 375, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 399, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 400, i32 33 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 403, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 413, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 416, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 417, i32 33 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 98, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 107, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 49, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 52, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 55, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 58, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 61, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 64, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 67, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 70, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 73, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 77, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant [22 x i8] c"mlxfw_fsm_state_errno\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 19, i32 18 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 183, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 132, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 135, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 138, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 141, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 144, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 147, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 150, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 153, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 156, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 160, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 319, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 331, i32 4 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 336, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 222, i32 21 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 228, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 234, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 242, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 243, i32 33 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 249, i32 4 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 253, i32 4 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 263, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 264, i32 33 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 276, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 285, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 286, i32 33 }
@___asan_gen_.558 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.561 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.565 = private constant [51 x i8] c"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 290, i32 3 }
@llvm.compiler.used = appending global [180 x ptr] [ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_description355, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__ksymtab_mlxfw_firmware_flash, ptr @mlxfw_firmware_flash._entry, ptr @mlxfw_firmware_flash._entry.10, ptr @mlxfw_firmware_flash._entry.15, ptr @mlxfw_firmware_flash._entry.22, ptr @mlxfw_firmware_flash._entry.27, ptr @mlxfw_firmware_flash._entry.6, ptr @mlxfw_firmware_flash._entry_ptr, ptr @mlxfw_firmware_flash._entry_ptr.13, ptr @mlxfw_firmware_flash._entry_ptr.16, ptr @mlxfw_firmware_flash._entry_ptr.23, ptr @mlxfw_firmware_flash._entry_ptr.29, ptr @mlxfw_firmware_flash._entry_ptr.7, ptr @mlxfw_flash_component._entry, ptr @mlxfw_flash_component._entry.127, ptr @mlxfw_flash_component._entry.133, ptr @mlxfw_flash_component._entry.137, ptr @mlxfw_flash_component._entry.143, ptr @mlxfw_flash_component._entry.149, ptr @mlxfw_flash_component._entry_ptr, ptr @mlxfw_flash_component._entry_ptr.128, ptr @mlxfw_flash_component._entry_ptr.134, ptr @mlxfw_flash_component._entry_ptr.138, ptr @mlxfw_flash_component._entry_ptr.144, ptr @mlxfw_flash_component._entry_ptr.150, ptr @mlxfw_flash_components._entry, ptr @mlxfw_flash_components._entry.117, ptr @mlxfw_flash_components._entry.121, ptr @mlxfw_flash_components._entry_ptr, ptr @mlxfw_flash_components._entry_ptr.118, ptr @mlxfw_flash_components._entry_ptr.123, ptr @mlxfw_fsm_reactivate._entry, ptr @mlxfw_fsm_reactivate._entry_ptr, ptr @mlxfw_fsm_reactivate_err._entry, ptr @mlxfw_fsm_reactivate_err._entry.103, ptr @mlxfw_fsm_reactivate_err._entry.107, ptr @mlxfw_fsm_reactivate_err._entry.111, ptr @mlxfw_fsm_reactivate_err._entry.79, ptr @mlxfw_fsm_reactivate_err._entry.83, ptr @mlxfw_fsm_reactivate_err._entry.87, ptr @mlxfw_fsm_reactivate_err._entry.91, ptr @mlxfw_fsm_reactivate_err._entry.95, ptr @mlxfw_fsm_reactivate_err._entry.99, ptr @mlxfw_fsm_reactivate_err._entry_ptr, ptr @mlxfw_fsm_reactivate_err._entry_ptr.100, ptr @mlxfw_fsm_reactivate_err._entry_ptr.104, ptr @mlxfw_fsm_reactivate_err._entry_ptr.108, ptr @mlxfw_fsm_reactivate_err._entry_ptr.112, ptr @mlxfw_fsm_reactivate_err._entry_ptr.80, ptr @mlxfw_fsm_reactivate_err._entry_ptr.84, ptr @mlxfw_fsm_reactivate_err._entry_ptr.88, ptr @mlxfw_fsm_reactivate_err._entry_ptr.92, ptr @mlxfw_fsm_reactivate_err._entry_ptr.96, ptr @mlxfw_fsm_state_err._entry, ptr @mlxfw_fsm_state_err._entry.39, ptr @mlxfw_fsm_state_err._entry.43, ptr @mlxfw_fsm_state_err._entry.47, ptr @mlxfw_fsm_state_err._entry.51, ptr @mlxfw_fsm_state_err._entry.55, ptr @mlxfw_fsm_state_err._entry.59, ptr @mlxfw_fsm_state_err._entry.63, ptr @mlxfw_fsm_state_err._entry.67, ptr @mlxfw_fsm_state_err._entry.71, ptr @mlxfw_fsm_state_err._entry_ptr, ptr @mlxfw_fsm_state_err._entry_ptr.40, ptr @mlxfw_fsm_state_err._entry_ptr.44, ptr @mlxfw_fsm_state_err._entry_ptr.48, ptr @mlxfw_fsm_state_err._entry_ptr.52, ptr @mlxfw_fsm_state_err._entry_ptr.56, ptr @mlxfw_fsm_state_err._entry_ptr.60, ptr @mlxfw_fsm_state_err._entry_ptr.64, ptr @mlxfw_fsm_state_err._entry_ptr.68, ptr @mlxfw_fsm_state_err._entry_ptr.72, ptr @mlxfw_fsm_state_wait._entry, ptr @mlxfw_fsm_state_wait._entry.33, ptr @mlxfw_fsm_state_wait._entry_ptr, ptr @mlxfw_fsm_state_wait._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mlxfw_firmware_flash.__msg, ptr @.str.8, ptr @mlxfw_firmware_flash.__msg.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @mlxfw_firmware_flash.__msg.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @mlxfw_firmware_flash.__msg.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @mlxfw_fsm_state_wait.__msg, ptr @.str.35, ptr @mlxfw_fsm_state_wait.__msg.36, ptr @.str.37, ptr @.str.38, ptr @mlxfw_fsm_state_err.__msg, ptr @.str.41, ptr @mlxfw_fsm_state_err.__msg.42, ptr @.str.45, ptr @mlxfw_fsm_state_err.__msg.46, ptr @.str.49, ptr @mlxfw_fsm_state_err.__msg.50, ptr @.str.53, ptr @mlxfw_fsm_state_err.__msg.54, ptr @.str.57, ptr @mlxfw_fsm_state_err.__msg.58, ptr @.str.61, ptr @mlxfw_fsm_state_err.__msg.62, ptr @.str.65, ptr @mlxfw_fsm_state_err.__msg.66, ptr @.str.69, ptr @mlxfw_fsm_state_err.__msg.70, ptr @.str.73, ptr @mlxfw_fsm_state_err.__msg.74, ptr @mlxfw_fsm_state_errno, ptr @.str.75, ptr @.str.76, ptr @mlxfw_fsm_reactivate.__msg, ptr @.str.77, ptr @.str.78, ptr @mlxfw_fsm_reactivate_err.__msg, ptr @.str.81, ptr @mlxfw_fsm_reactivate_err.__msg.82, ptr @.str.85, ptr @mlxfw_fsm_reactivate_err.__msg.86, ptr @.str.89, ptr @mlxfw_fsm_reactivate_err.__msg.90, ptr @.str.93, ptr @mlxfw_fsm_reactivate_err.__msg.94, ptr @.str.97, ptr @mlxfw_fsm_reactivate_err.__msg.98, ptr @.str.101, ptr @mlxfw_fsm_reactivate_err.__msg.102, ptr @.str.105, ptr @mlxfw_fsm_reactivate_err.__msg.106, ptr @.str.109, ptr @mlxfw_fsm_reactivate_err.__msg.110, ptr @.str.113, ptr @mlxfw_fsm_reactivate_err.__msg.114, ptr @.str.115, ptr @.str.116, ptr @mlxfw_flash_components.__msg, ptr @.str.119, ptr @mlxfw_flash_components.__msg.120, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @mlxfw_flash_component.__msg, ptr @.str.129, ptr @mlxfw_flash_component.__msg.130, ptr @.str.131, ptr @.str.132, ptr @.str.135, ptr @mlxfw_flash_component.__msg.136, ptr @.str.139, ptr @mlxfw_flash_component.__msg.140, ptr @.str.141, ptr @.str.142, ptr @.str.145, ptr @mlxfw_flash_component.__msg.146, ptr @.str.147, ptr @.str.148, ptr @.str.151, ptr @mlxfw_flash_component.__msg.152], section "llvm.metadata"
@0 = internal global [137 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_firmware_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_firmware_flash.__msg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_firmware_flash._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_firmware_flash.__msg.9 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_firmware_flash._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_firmware_flash._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_firmware_flash.__msg.18 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_firmware_flash._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_firmware_flash.__msg.25 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_firmware_flash._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_wait.__msg to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_wait._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_wait.__msg.36 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err.__msg.42 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err.__msg.46 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err.__msg.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err.__msg.54 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err.__msg.58 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err.__msg.62 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err.__msg.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err.__msg.70 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_err.__msg.74 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_state_errno to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate.__msg to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err.__msg to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err.__msg.82 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err.__msg.86 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err.__msg.90 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err.__msg.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err.__msg.98 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err.__msg.102 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err.__msg.106 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err.__msg.110 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_fsm_reactivate_err.__msg.114 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_components._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_components.__msg to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_components._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_components.__msg.120 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_components._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_component._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_component.__msg to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_component._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_component.__msg.130 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_component._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_component.__msg.136 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_component._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_component.__msg.140 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_component._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_component.__msg.146 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_component._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_flash_component.__msg.152 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxfw_firmware_flash(ptr noundef %mlxfw_dev, ptr noundef %firmware, ptr noundef %extack) #0 align 64 {
entry:
  %status.i = alloca i8, align 1
  %fwhandle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fwhandle) #6
  %0 = ptrtoint ptr %fwhandle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fwhandle, align 4, !annotation !249
  %call = tail call zeroext i1 @mlxfw_mfa2_check(ptr noundef %firmware) #6
  br i1 %call, label %if.end9, label %do.end

do.end:                                           ; preds = %entry
  %devlink.i = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %1 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devlink.i, align 4
  %call.i = tail call ptr @devlink_to_dev(ptr noundef %2) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef -22) #9
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_firmware_flash.__msg) #6
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %if.then4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mlxfw_firmware_flash.__msg, ptr %extack, align 4
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call10 = tail call ptr @mlxfw_mfa2_file_init(ptr noundef %firmware) #6
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %do.end32

if.then12:                                        ; preds = %if.end9
  %4 = ptrtoint ptr %call10 to i32
  %devlink.i185 = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %5 = ptrtoint ptr %devlink.i185 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devlink.i185, align 4
  %call.i186 = tail call ptr @devlink_to_dev(ptr noundef %6) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i186, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef %4) #9
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_firmware_flash.__msg.9) #6
  %tobool21.not = icmp eq ptr %extack, null
  br i1 %tobool21.not, label %if.then12.cleanup_crit_edge, label %if.then22

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mlxfw_firmware_flash.__msg.9, ptr %extack, align 4
  br label %cleanup

do.end32:                                         ; preds = %if.end9
  %devlink.i187 = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %8 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devlink.i187, align 4
  %call.i188 = tail call ptr @devlink_to_dev(ptr noundef %9) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %call.i188, ptr noundef nonnull @.str.11) #9
  %10 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devlink.i187, align 4
  tail call void @devlink_flash_update_status_notify(ptr noundef %11, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %12 = ptrtoint ptr %mlxfw_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mlxfw_dev, align 4
  %fsm_lock = getelementptr inbounds %struct.mlxfw_dev_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %fsm_lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fsm_lock, align 4
  %call34 = call i32 %15(ptr noundef %mlxfw_dev, ptr noundef nonnull %fwhandle) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end52, label %do.end40

do.end40:                                         ; preds = %do.end32
  %16 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devlink.i187, align 4
  %call.i191 = call ptr @devlink_to_dev(ptr noundef %17) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i191, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17, i32 noundef %call34) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_firmware_flash.__msg.18) #6
  %tobool44.not = icmp eq ptr %extack, null
  br i1 %tobool44.not, label %do.end40.err_fsm_lock_crit_edge, label %if.then45

do.end40.err_fsm_lock_crit_edge:                  ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_fsm_lock

if.then45:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mlxfw_firmware_flash.__msg.18, ptr %extack, align 4
  br label %err_fsm_lock

if.end52:                                         ; preds = %do.end32
  %19 = ptrtoint ptr %fwhandle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fwhandle, align 4
  %call53 = call fastcc i32 @mlxfw_fsm_state_wait(ptr noundef %mlxfw_dev, i32 noundef %20, i32 noundef 1, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.err_state_wait_idle_to_locked_crit_edge

if.end52.err_state_wait_idle_to_locked_crit_edge: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_state_wait_idle_to_locked

if.end56:                                         ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #6
  %21 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %status.i, align 1, !annotation !249
  %22 = ptrtoint ptr %mlxfw_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mlxfw_dev, align 4
  %fsm_reactivate.i = getelementptr inbounds %struct.mlxfw_dev_ops, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %fsm_reactivate.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fsm_reactivate.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end56.if.end60_crit_edge, label %if.end.i

if.end56.if.end60_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.end.i:                                         ; preds = %if.end56
  %call.i192 = call i32 %25(ptr noundef %mlxfw_dev, ptr noundef nonnull %status.i) #6
  %26 = zext i32 %call.i192 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i192, label %do.end.i [
    i32 -95, label %if.end.i.if.end60_crit_edge
    i32 0, label %if.end17.i
  ]

if.end.i.if.end60_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

do.end.i:                                         ; preds = %if.end.i
  %27 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %devlink.i187, align 4
  %call.i.i = call ptr @devlink_to_dev(ptr noundef %28) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.76, i32 noundef %call.i192) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_reactivate.__msg) #6
  %tobool10.not.i = icmp eq ptr %extack, null
  br i1 %tobool10.not.i, label %do.end.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, label %do.end.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge

do.end.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread.sink.split

do.end.i.mlxfw_fsm_reactivate.exit.thread_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread

if.end17.i:                                       ; preds = %if.end.i
  %29 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %status.i, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.153)
  switch i8 %30, label %if.end24.i [
    i8 0, label %if.end17.i.if.end60_crit_edge
    i8 7, label %if.end17.i.if.end60_crit_edge209
  ]

if.end17.i.if.end60_crit_edge209:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.end17.i.if.end60_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.end24.i:                                       ; preds = %if.end17.i
  %conv.i.i = zext i8 %30 to i32
  %32 = call i8 @llvm.umin.i8(i8 %30, i8 10) #6
  %trunc.i.i = trunc i8 %32 to i4
  %33 = zext i4 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.154)
  switch i4 %trunc.i.i, label %if.end24.i.mlxfw_fsm_reactivate.exit.thread_crit_edge [
    i4 1, label %do.end.i.i
    i4 2, label %do.end13.i.i
    i4 3, label %do.end30.i.i
    i4 4, label %do.end47.i.i
    i4 5, label %do.end64.i.i
    i4 6, label %do.end81.i.i
    i4 -8, label %do.end98.i.i
    i4 -7, label %do.end115.i.i
    i4 7, label %do.end132.i.i
    i4 0, label %if.end24.i.do.end149.i.i_crit_edge
    i4 -6, label %if.end24.i.do.end149.i.i_crit_edge210
  ]

if.end24.i.do.end149.i.i_crit_edge210:            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end149.i.i

if.end24.i.do.end149.i.i_crit_edge:               ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end149.i.i

if.end24.i.mlxfw_fsm_reactivate.exit.thread_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread

do.end.i.i:                                       ; preds = %if.end24.i
  %34 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %devlink.i187, align 4
  %call.i.i.i = call ptr @devlink_to_dev(ptr noundef %35) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.78, i32 noundef %conv.i.i) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_reactivate_err.__msg) #6
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.end.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, label %do.end.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge

do.end.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread.sink.split

do.end.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread

do.end13.i.i:                                     ; preds = %if.end24.i
  %36 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %devlink.i187, align 4
  %call.i2.i.i = call ptr @devlink_to_dev(ptr noundef %37) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i2.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.81, i32 noundef %conv.i.i) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_reactivate_err.__msg.82) #6
  %tobool18.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool18.not.i.i, label %do.end13.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, label %do.end13.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge

do.end13.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge: ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread.sink.split

do.end13.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge: ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread

do.end30.i.i:                                     ; preds = %if.end24.i
  %38 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %devlink.i187, align 4
  %call.i4.i.i = call ptr @devlink_to_dev(ptr noundef %39) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i4.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.85, i32 noundef %conv.i.i) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_reactivate_err.__msg.86) #6
  %tobool35.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool35.not.i.i, label %do.end30.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, label %do.end30.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge

do.end30.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge: ; preds = %do.end30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread.sink.split

do.end30.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge: ; preds = %do.end30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread

do.end47.i.i:                                     ; preds = %if.end24.i
  %40 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %devlink.i187, align 4
  %call.i6.i.i = call ptr @devlink_to_dev(ptr noundef %41) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i6.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.89, i32 noundef %conv.i.i) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_reactivate_err.__msg.90) #6
  %tobool52.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool52.not.i.i, label %do.end47.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, label %do.end47.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge

do.end47.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge: ; preds = %do.end47.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread.sink.split

do.end47.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge: ; preds = %do.end47.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread

do.end64.i.i:                                     ; preds = %if.end24.i
  %42 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %devlink.i187, align 4
  %call.i8.i.i = call ptr @devlink_to_dev(ptr noundef %43) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i8.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.93, i32 noundef %conv.i.i) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_reactivate_err.__msg.94) #6
  %tobool69.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool69.not.i.i, label %do.end64.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, label %do.end64.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge

do.end64.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge: ; preds = %do.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread.sink.split

do.end64.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge: ; preds = %do.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread

do.end81.i.i:                                     ; preds = %if.end24.i
  %44 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %devlink.i187, align 4
  %call.i10.i.i = call ptr @devlink_to_dev(ptr noundef %45) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i10.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.97, i32 noundef %conv.i.i) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_reactivate_err.__msg.98) #6
  %tobool86.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool86.not.i.i, label %do.end81.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, label %do.end81.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge

do.end81.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge: ; preds = %do.end81.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread.sink.split

do.end81.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge: ; preds = %do.end81.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread

do.end98.i.i:                                     ; preds = %if.end24.i
  %46 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %devlink.i187, align 4
  %call.i12.i.i = call ptr @devlink_to_dev(ptr noundef %47) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i12.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.101, i32 noundef %conv.i.i) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_reactivate_err.__msg.102) #6
  %tobool103.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool103.not.i.i, label %do.end98.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, label %do.end98.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge

do.end98.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge: ; preds = %do.end98.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread.sink.split

do.end98.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge: ; preds = %do.end98.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread

do.end115.i.i:                                    ; preds = %if.end24.i
  %48 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %devlink.i187, align 4
  %call.i14.i.i = call ptr @devlink_to_dev(ptr noundef %49) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i14.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.105, i32 noundef %conv.i.i) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_reactivate_err.__msg.106) #6
  %tobool120.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool120.not.i.i, label %do.end115.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, label %do.end115.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge

do.end115.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge: ; preds = %do.end115.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread.sink.split

do.end115.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge: ; preds = %do.end115.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread

do.end132.i.i:                                    ; preds = %if.end24.i
  %50 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %devlink.i187, align 4
  %call.i16.i.i = call ptr @devlink_to_dev(ptr noundef %51) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i16.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.109, i32 noundef %conv.i.i) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_reactivate_err.__msg.110) #6
  %tobool137.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool137.not.i.i, label %do.end132.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, label %do.end132.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge

do.end132.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge: ; preds = %do.end132.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread.sink.split

do.end132.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge: ; preds = %do.end132.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread

do.end149.i.i:                                    ; preds = %if.end24.i.do.end149.i.i_crit_edge, %if.end24.i.do.end149.i.i_crit_edge210
  %52 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %devlink.i187, align 4
  %call.i18.i.i = call ptr @devlink_to_dev(ptr noundef %53) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i18.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.113, i32 noundef %conv.i.i) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_reactivate_err.__msg.114) #6
  %tobool154.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool154.not.i.i, label %do.end149.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, label %do.end149.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge

do.end149.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge: ; preds = %do.end149.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread.sink.split

do.end149.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge: ; preds = %do.end149.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_reactivate.exit.thread

mlxfw_fsm_reactivate.exit.thread.sink.split:      ; preds = %do.end149.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge, %do.end132.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge, %do.end115.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge, %do.end98.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge, %do.end81.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge, %do.end64.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge, %do.end47.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge, %do.end30.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge, %do.end13.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge, %do.end.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge, %do.end.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge
  %mlxfw_fsm_reactivate.__msg.sink = phi ptr [ @mlxfw_fsm_reactivate.__msg, %do.end.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ @mlxfw_fsm_reactivate_err.__msg, %do.end.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ @mlxfw_fsm_reactivate_err.__msg.82, %do.end13.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ @mlxfw_fsm_reactivate_err.__msg.86, %do.end30.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ @mlxfw_fsm_reactivate_err.__msg.90, %do.end47.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ @mlxfw_fsm_reactivate_err.__msg.94, %do.end64.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ @mlxfw_fsm_reactivate_err.__msg.98, %do.end81.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ @mlxfw_fsm_reactivate_err.__msg.102, %do.end98.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ @mlxfw_fsm_reactivate_err.__msg.106, %do.end115.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ @mlxfw_fsm_reactivate_err.__msg.110, %do.end132.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ @mlxfw_fsm_reactivate_err.__msg.114, %do.end149.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ]
  %retval.0.i193.ph.ph = phi i32 [ %call.i192, %do.end.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ -121, %do.end.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ -121, %do.end13.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ -121, %do.end30.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ -121, %do.end47.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ -121, %do.end64.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ -121, %do.end81.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ -121, %do.end98.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ -121, %do.end115.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ -121, %do.end132.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ], [ -121, %do.end149.i.i.mlxfw_fsm_reactivate.exit.thread.sink.split_crit_edge ]
  %54 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %mlxfw_fsm_reactivate.__msg.sink, ptr %extack, align 4
  br label %mlxfw_fsm_reactivate.exit.thread

mlxfw_fsm_reactivate.exit.thread:                 ; preds = %mlxfw_fsm_reactivate.exit.thread.sink.split, %do.end149.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, %do.end132.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, %do.end115.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, %do.end98.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, %do.end81.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, %do.end64.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, %do.end47.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, %do.end30.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, %do.end13.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, %do.end.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, %if.end24.i.mlxfw_fsm_reactivate.exit.thread_crit_edge, %do.end.i.mlxfw_fsm_reactivate.exit.thread_crit_edge
  %retval.0.i193.ph = phi i32 [ -121, %do.end149.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge ], [ -121, %do.end132.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge ], [ -121, %do.end115.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge ], [ -121, %do.end98.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge ], [ -121, %do.end81.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge ], [ -121, %do.end64.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge ], [ -121, %do.end47.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge ], [ -121, %do.end30.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge ], [ -121, %do.end13.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge ], [ -121, %do.end.i.i.mlxfw_fsm_reactivate.exit.thread_crit_edge ], [ -121, %if.end24.i.mlxfw_fsm_reactivate.exit.thread_crit_edge ], [ %call.i192, %do.end.i.mlxfw_fsm_reactivate.exit.thread_crit_edge ], [ %retval.0.i193.ph.ph, %mlxfw_fsm_reactivate.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #6
  br label %err_state_wait_idle_to_locked

if.end60:                                         ; preds = %if.end17.i.if.end60_crit_edge, %if.end17.i.if.end60_crit_edge209, %if.end.i.if.end60_crit_edge, %if.end56.if.end60_crit_edge
  %tobool65 = phi i1 [ true, %if.end17.i.if.end60_crit_edge ], [ true, %if.end17.i.if.end60_crit_edge209 ], [ true, %if.end56.if.end60_crit_edge ], [ false, %if.end.i.if.end60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #6
  %55 = ptrtoint ptr %fwhandle to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fwhandle, align 4
  %call61 = call fastcc i32 @mlxfw_fsm_state_wait(ptr noundef %mlxfw_dev, i32 noundef %56, i32 noundef 1, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.err_state_wait_idle_to_locked_crit_edge

if.end60.err_state_wait_idle_to_locked_crit_edge: ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_state_wait_idle_to_locked

if.end64:                                         ; preds = %if.end60
  %57 = ptrtoint ptr %fwhandle to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fwhandle, align 4
  %call66 = call fastcc i32 @mlxfw_flash_components(ptr noundef %mlxfw_dev, i32 noundef %58, ptr noundef %call10, i1 noundef zeroext %tobool65, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %do.body70, label %if.end64.err_state_wait_idle_to_locked_crit_edge

if.end64.err_state_wait_idle_to_locked_crit_edge: ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_state_wait_idle_to_locked

do.body70:                                        ; preds = %if.end64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlxfw_firmware_flash.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlxfw_firmware_flash, %if.then75)) #6
          to label %do.end79 [label %if.then75], !srcloc !250

if.then75:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %devlink.i187, align 4
  %call.i195 = call ptr @devlink_to_dev(ptr noundef %60) #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlxfw_firmware_flash.__UNIQUE_ID_ddebug350, ptr noundef %call.i195, ptr noundef nonnull @.str.20) #6
  br label %do.end79

do.end79:                                         ; preds = %if.then75, %do.body70
  %61 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %devlink.i187, align 4
  call void @devlink_flash_update_status_notify(ptr noundef %62, ptr noundef nonnull @.str.21, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %63 = ptrtoint ptr %mlxfw_dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mlxfw_dev, align 4
  %fsm_activate = getelementptr inbounds %struct.mlxfw_dev_ops, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %fsm_activate to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fsm_activate, align 4
  %67 = ptrtoint ptr %fwhandle to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fwhandle, align 4
  %call81 = call i32 %66(ptr noundef %mlxfw_dev, i32 noundef %68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end99, label %do.end87

do.end87:                                         ; preds = %do.end79
  %69 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %devlink.i187, align 4
  %call.i198 = call ptr @devlink_to_dev(ptr noundef %70) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i198, ptr noundef nonnull @.str, ptr noundef nonnull @.str.24, i32 noundef %call81) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_firmware_flash.__msg.25) #6
  %tobool91.not = icmp eq ptr %extack, null
  br i1 %tobool91.not, label %do.end87.err_state_wait_idle_to_locked_crit_edge, label %if.then92

do.end87.err_state_wait_idle_to_locked_crit_edge: ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_state_wait_idle_to_locked

if.then92:                                        ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @mlxfw_firmware_flash.__msg.25, ptr %extack, align 4
  br label %err_state_wait_idle_to_locked

if.end99:                                         ; preds = %do.end79
  %72 = ptrtoint ptr %fwhandle to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %fwhandle, align 4
  %call100 = call fastcc i32 @mlxfw_fsm_state_wait(ptr noundef %mlxfw_dev, i32 noundef %73, i32 noundef 1, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %do.body104, label %if.end99.err_state_wait_idle_to_locked_crit_edge

if.end99.err_state_wait_idle_to_locked_crit_edge: ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_state_wait_idle_to_locked

do.body104:                                       ; preds = %if.end99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlxfw_firmware_flash.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlxfw_firmware_flash, %if.then116)) #6
          to label %do.end120 [label %if.then116], !srcloc !250

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %devlink.i187, align 4
  %call.i200 = call ptr @devlink_to_dev(ptr noundef %75) #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlxfw_firmware_flash.__UNIQUE_ID_ddebug351, ptr noundef %call.i200, ptr noundef nonnull @.str.26) #6
  br label %do.end120

do.end120:                                        ; preds = %if.then116, %do.body104
  %76 = ptrtoint ptr %mlxfw_dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mlxfw_dev, align 4
  %fsm_release = getelementptr inbounds %struct.mlxfw_dev_ops, ptr %77, i32 0, i32 9
  %78 = ptrtoint ptr %fsm_release to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fsm_release, align 4
  %80 = ptrtoint ptr %fwhandle to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fwhandle, align 4
  call void %79(ptr noundef %mlxfw_dev, i32 noundef %81) #6
  %82 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %devlink.i187, align 4
  %call.i202 = call ptr @devlink_to_dev(ptr noundef %83) #6
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %call.i202, ptr noundef nonnull @.str.28) #9
  %84 = ptrtoint ptr %devlink.i187 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %devlink.i187, align 4
  call void @devlink_flash_update_status_notify(ptr noundef %85, ptr noundef nonnull @.str.30, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  call void @mlxfw_mfa2_file_fini(ptr noundef %call10) #6
  br label %cleanup

err_state_wait_idle_to_locked:                    ; preds = %if.end99.err_state_wait_idle_to_locked_crit_edge, %if.then92, %do.end87.err_state_wait_idle_to_locked_crit_edge, %if.end64.err_state_wait_idle_to_locked_crit_edge, %if.end60.err_state_wait_idle_to_locked_crit_edge, %mlxfw_fsm_reactivate.exit.thread, %if.end52.err_state_wait_idle_to_locked_crit_edge
  %err.0 = phi i32 [ %call53, %if.end52.err_state_wait_idle_to_locked_crit_edge ], [ %call61, %if.end60.err_state_wait_idle_to_locked_crit_edge ], [ %call66, %if.end64.err_state_wait_idle_to_locked_crit_edge ], [ %call100, %if.end99.err_state_wait_idle_to_locked_crit_edge ], [ %call81, %if.then92 ], [ %call81, %do.end87.err_state_wait_idle_to_locked_crit_edge ], [ %retval.0.i193.ph, %mlxfw_fsm_reactivate.exit.thread ]
  %86 = ptrtoint ptr %mlxfw_dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mlxfw_dev, align 4
  %fsm_release127 = getelementptr inbounds %struct.mlxfw_dev_ops, ptr %87, i32 0, i32 9
  %88 = ptrtoint ptr %fsm_release127 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fsm_release127, align 4
  %90 = ptrtoint ptr %fwhandle to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %fwhandle, align 4
  call void %89(ptr noundef %mlxfw_dev, i32 noundef %91) #6
  br label %err_fsm_lock

err_fsm_lock:                                     ; preds = %err_state_wait_idle_to_locked, %if.then45, %do.end40.err_fsm_lock_crit_edge
  %err.1 = phi i32 [ %err.0, %err_state_wait_idle_to_locked ], [ %call34, %if.then45 ], [ %call34, %do.end40.err_fsm_lock_crit_edge ]
  call void @mlxfw_mfa2_file_fini(ptr noundef %call10) #6
  br label %cleanup

cleanup:                                          ; preds = %err_fsm_lock, %do.end120, %if.then22, %if.then12.cleanup_crit_edge, %if.then4, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_fsm_lock ], [ 0, %do.end120 ], [ -22, %if.then4 ], [ -22, %do.end.cleanup_crit_edge ], [ %4, %if.then22 ], [ %4, %if.then12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fwhandle) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxfw_mfa2_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxfw_mfa2_file_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxfw_fsm_state_wait(ptr noundef %mlxfw_dev, i32 noundef %fwhandle, i32 noundef %fsm_state, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  %fsm_state_err = alloca i32, align 4
  %curr_fsm_state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fsm_state_err) #6
  %0 = ptrtoint ptr %fsm_state_err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fsm_state_err, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_fsm_state) #6
  %1 = ptrtoint ptr %curr_fsm_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %curr_fsm_state, align 4, !annotation !249
  %2 = ptrtoint ptr %mlxfw_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxfw_dev, align 4
  %fsm_query_state55 = getelementptr inbounds %struct.mlxfw_dev_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %fsm_query_state55 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fsm_query_state55, align 4
  %call56 = call i32 %5(ptr noundef %mlxfw_dev, i32 noundef %fwhandle, ptr noundef nonnull %curr_fsm_state, ptr noundef nonnull %fsm_state_err) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool.not57 = icmp eq i32 %call56, 0
  br i1 %tobool.not57, label %entry.if.end10_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

entry.if.end10_crit_edge:                         ; preds = %entry
  br label %if.end10

do.end:                                           ; preds = %if.end33.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call56, %entry.do.end_crit_edge ], [ %call, %if.end33.do.end_crit_edge ]
  %devlink.i = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %6 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devlink.i, align 4
  %call.i = call ptr @devlink_to_dev(ptr noundef %7) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, i32 noundef %call.lcssa) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_state_wait.__msg) #6
  %tobool4.not = icmp eq ptr %extack, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.then5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mlxfw_fsm_state_wait.__msg, ptr %extack, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end33.if.end10_crit_edge, %entry.if.end10_crit_edge
  %times.058 = phi i32 [ %dec, %if.end33.if.end10_crit_edge ], [ 150, %entry.if.end10_crit_edge ]
  %9 = ptrtoint ptr %fsm_state_err to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fsm_state_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end10
  %11 = call i32 @llvm.umin.i32(i32 %10, i32 10) #6
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %11, label %if.then11.mlxfw_fsm_state_err.exit_crit_edge [
    i32 1, label %do.end.i
    i32 2, label %do.end11.i
    i32 3, label %do.end27.i
    i32 4, label %do.end43.i
    i32 5, label %do.end59.i
    i32 6, label %do.end75.i
    i32 7, label %do.end91.i
    i32 8, label %do.end107.i
    i32 9, label %do.end123.i
    i32 10, label %do.end139.i
  ]

if.then11.mlxfw_fsm_state_err.exit_crit_edge:     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_state_err.exit

do.end.i:                                         ; preds = %if.then11
  %devlink.i.i = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %13 = ptrtoint ptr %devlink.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %devlink.i.i, align 4
  %call.i.i = call ptr @devlink_to_dev(ptr noundef %14) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.38, i32 noundef %10) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_state_err.__msg) #6
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.end.i.mlxfw_fsm_state_err.exit_crit_edge, label %do.end.i.sw.epilog.sink.split.i_crit_edge

do.end.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

do.end.i.mlxfw_fsm_state_err.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_state_err.exit

do.end11.i:                                       ; preds = %if.then11
  %devlink.i192.i = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %15 = ptrtoint ptr %devlink.i192.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %devlink.i192.i, align 4
  %call.i193.i = call ptr @devlink_to_dev(ptr noundef %16) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i193.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.41, i32 noundef %10) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_state_err.__msg.42) #6
  %tobool15.not.i = icmp eq ptr %extack, null
  br i1 %tobool15.not.i, label %do.end11.i.mlxfw_fsm_state_err.exit_crit_edge, label %do.end11.i.sw.epilog.sink.split.i_crit_edge

do.end11.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

do.end11.i.mlxfw_fsm_state_err.exit_crit_edge:    ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_state_err.exit

do.end27.i:                                       ; preds = %if.then11
  %devlink.i194.i = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %17 = ptrtoint ptr %devlink.i194.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %devlink.i194.i, align 4
  %call.i195.i = call ptr @devlink_to_dev(ptr noundef %18) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i195.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.45, i32 noundef %10) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_state_err.__msg.46) #6
  %tobool31.not.i = icmp eq ptr %extack, null
  br i1 %tobool31.not.i, label %do.end27.i.mlxfw_fsm_state_err.exit_crit_edge, label %do.end27.i.sw.epilog.sink.split.i_crit_edge

do.end27.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

do.end27.i.mlxfw_fsm_state_err.exit_crit_edge:    ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_state_err.exit

do.end43.i:                                       ; preds = %if.then11
  %devlink.i196.i = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %19 = ptrtoint ptr %devlink.i196.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %devlink.i196.i, align 4
  %call.i197.i = call ptr @devlink_to_dev(ptr noundef %20) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i197.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49, i32 noundef %10) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_state_err.__msg.50) #6
  %tobool47.not.i = icmp eq ptr %extack, null
  br i1 %tobool47.not.i, label %do.end43.i.mlxfw_fsm_state_err.exit_crit_edge, label %do.end43.i.sw.epilog.sink.split.i_crit_edge

do.end43.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

do.end43.i.mlxfw_fsm_state_err.exit_crit_edge:    ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_state_err.exit

do.end59.i:                                       ; preds = %if.then11
  %devlink.i198.i = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %21 = ptrtoint ptr %devlink.i198.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %devlink.i198.i, align 4
  %call.i199.i = call ptr @devlink_to_dev(ptr noundef %22) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i199.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.53, i32 noundef %10) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_state_err.__msg.54) #6
  %tobool63.not.i = icmp eq ptr %extack, null
  br i1 %tobool63.not.i, label %do.end59.i.mlxfw_fsm_state_err.exit_crit_edge, label %do.end59.i.sw.epilog.sink.split.i_crit_edge

do.end59.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

do.end59.i.mlxfw_fsm_state_err.exit_crit_edge:    ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_state_err.exit

do.end75.i:                                       ; preds = %if.then11
  %devlink.i200.i = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %23 = ptrtoint ptr %devlink.i200.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %devlink.i200.i, align 4
  %call.i201.i = call ptr @devlink_to_dev(ptr noundef %24) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i201.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.57, i32 noundef %10) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_state_err.__msg.58) #6
  %tobool79.not.i = icmp eq ptr %extack, null
  br i1 %tobool79.not.i, label %do.end75.i.mlxfw_fsm_state_err.exit_crit_edge, label %do.end75.i.sw.epilog.sink.split.i_crit_edge

do.end75.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

do.end75.i.mlxfw_fsm_state_err.exit_crit_edge:    ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_state_err.exit

do.end91.i:                                       ; preds = %if.then11
  %devlink.i202.i = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %25 = ptrtoint ptr %devlink.i202.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %devlink.i202.i, align 4
  %call.i203.i = call ptr @devlink_to_dev(ptr noundef %26) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i203.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.61, i32 noundef %10) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_state_err.__msg.62) #6
  %tobool95.not.i = icmp eq ptr %extack, null
  br i1 %tobool95.not.i, label %do.end91.i.mlxfw_fsm_state_err.exit_crit_edge, label %do.end91.i.sw.epilog.sink.split.i_crit_edge

do.end91.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %do.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

do.end91.i.mlxfw_fsm_state_err.exit_crit_edge:    ; preds = %do.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_state_err.exit

do.end107.i:                                      ; preds = %if.then11
  %devlink.i204.i = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %27 = ptrtoint ptr %devlink.i204.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %devlink.i204.i, align 4
  %call.i205.i = call ptr @devlink_to_dev(ptr noundef %28) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i205.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.65, i32 noundef %10) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_state_err.__msg.66) #6
  %tobool111.not.i = icmp eq ptr %extack, null
  br i1 %tobool111.not.i, label %do.end107.i.mlxfw_fsm_state_err.exit_crit_edge, label %do.end107.i.sw.epilog.sink.split.i_crit_edge

do.end107.i.sw.epilog.sink.split.i_crit_edge:     ; preds = %do.end107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

do.end107.i.mlxfw_fsm_state_err.exit_crit_edge:   ; preds = %do.end107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_state_err.exit

do.end123.i:                                      ; preds = %if.then11
  %devlink.i206.i = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %29 = ptrtoint ptr %devlink.i206.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %devlink.i206.i, align 4
  %call.i207.i = call ptr @devlink_to_dev(ptr noundef %30) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i207.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.69, i32 noundef %10) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_state_err.__msg.70) #6
  %tobool127.not.i = icmp eq ptr %extack, null
  br i1 %tobool127.not.i, label %do.end123.i.mlxfw_fsm_state_err.exit_crit_edge, label %do.end123.i.sw.epilog.sink.split.i_crit_edge

do.end123.i.sw.epilog.sink.split.i_crit_edge:     ; preds = %do.end123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

do.end123.i.mlxfw_fsm_state_err.exit_crit_edge:   ; preds = %do.end123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_state_err.exit

do.end139.i:                                      ; preds = %if.then11
  %devlink.i208.i = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %31 = ptrtoint ptr %devlink.i208.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %devlink.i208.i, align 4
  %call.i209.i = call ptr @devlink_to_dev(ptr noundef %32) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i209.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.73, i32 noundef %10) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_state_err.__msg.74) #6
  %tobool143.not.i = icmp eq ptr %extack, null
  br i1 %tobool143.not.i, label %do.end139.i.mlxfw_fsm_state_err.exit_crit_edge, label %do.end139.i.sw.epilog.sink.split.i_crit_edge

do.end139.i.sw.epilog.sink.split.i_crit_edge:     ; preds = %do.end139.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

do.end139.i.mlxfw_fsm_state_err.exit_crit_edge:   ; preds = %do.end139.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxfw_fsm_state_err.exit

sw.epilog.sink.split.i:                           ; preds = %do.end139.i.sw.epilog.sink.split.i_crit_edge, %do.end123.i.sw.epilog.sink.split.i_crit_edge, %do.end107.i.sw.epilog.sink.split.i_crit_edge, %do.end91.i.sw.epilog.sink.split.i_crit_edge, %do.end75.i.sw.epilog.sink.split.i_crit_edge, %do.end59.i.sw.epilog.sink.split.i_crit_edge, %do.end43.i.sw.epilog.sink.split.i_crit_edge, %do.end27.i.sw.epilog.sink.split.i_crit_edge, %do.end11.i.sw.epilog.sink.split.i_crit_edge, %do.end.i.sw.epilog.sink.split.i_crit_edge
  %mlxfw_fsm_state_err.__msg.74.sink.i = phi ptr [ @mlxfw_fsm_state_err.__msg, %do.end.i.sw.epilog.sink.split.i_crit_edge ], [ @mlxfw_fsm_state_err.__msg.42, %do.end11.i.sw.epilog.sink.split.i_crit_edge ], [ @mlxfw_fsm_state_err.__msg.46, %do.end27.i.sw.epilog.sink.split.i_crit_edge ], [ @mlxfw_fsm_state_err.__msg.50, %do.end43.i.sw.epilog.sink.split.i_crit_edge ], [ @mlxfw_fsm_state_err.__msg.54, %do.end59.i.sw.epilog.sink.split.i_crit_edge ], [ @mlxfw_fsm_state_err.__msg.58, %do.end75.i.sw.epilog.sink.split.i_crit_edge ], [ @mlxfw_fsm_state_err.__msg.62, %do.end91.i.sw.epilog.sink.split.i_crit_edge ], [ @mlxfw_fsm_state_err.__msg.66, %do.end107.i.sw.epilog.sink.split.i_crit_edge ], [ @mlxfw_fsm_state_err.__msg.70, %do.end123.i.sw.epilog.sink.split.i_crit_edge ], [ @mlxfw_fsm_state_err.__msg.74, %do.end139.i.sw.epilog.sink.split.i_crit_edge ]
  %33 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %mlxfw_fsm_state_err.__msg.74.sink.i, ptr %extack, align 4
  br label %mlxfw_fsm_state_err.exit

mlxfw_fsm_state_err.exit:                         ; preds = %sw.epilog.sink.split.i, %do.end139.i.mlxfw_fsm_state_err.exit_crit_edge, %do.end123.i.mlxfw_fsm_state_err.exit_crit_edge, %do.end107.i.mlxfw_fsm_state_err.exit_crit_edge, %do.end91.i.mlxfw_fsm_state_err.exit_crit_edge, %do.end75.i.mlxfw_fsm_state_err.exit_crit_edge, %do.end59.i.mlxfw_fsm_state_err.exit_crit_edge, %do.end43.i.mlxfw_fsm_state_err.exit_crit_edge, %do.end27.i.mlxfw_fsm_state_err.exit_crit_edge, %do.end11.i.mlxfw_fsm_state_err.exit_crit_edge, %do.end.i.mlxfw_fsm_state_err.exit_crit_edge, %if.then11.mlxfw_fsm_state_err.exit_crit_edge
  %arrayidx.i = getelementptr [11 x i32], ptr @mlxfw_fsm_state_errno, i32 0, i32 %11
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %36 = ptrtoint ptr %curr_fsm_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %curr_fsm_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %fsm_state)
  %cmp14.not = icmp eq i32 %37, %fsm_state
  br i1 %cmp14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  %dec = add nsw i32 %times.058, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp16 = icmp eq i32 %dec, 0
  br i1 %cmp16, label %do.end21, label %if.end33

do.end21:                                         ; preds = %if.then15
  %devlink.i48 = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %38 = ptrtoint ptr %devlink.i48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %devlink.i48, align 4
  %call.i49 = call ptr @devlink_to_dev(ptr noundef %39) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i49, ptr noundef nonnull @.str, ptr noundef nonnull @.str.35, i32 noundef -110) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_fsm_state_wait.__msg.36) #6
  %tobool25.not = icmp eq ptr %extack, null
  br i1 %tobool25.not, label %do.end21.cleanup_crit_edge, label %if.then26

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mlxfw_fsm_state_wait.__msg.36, ptr %extack, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.then15
  call void @msleep(i32 noundef 200) #6
  %41 = ptrtoint ptr %mlxfw_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mlxfw_dev, align 4
  %fsm_query_state = getelementptr inbounds %struct.mlxfw_dev_ops, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %fsm_query_state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fsm_query_state, align 4
  %call = call i32 %44(ptr noundef %mlxfw_dev, i32 noundef %fwhandle, ptr noundef nonnull %curr_fsm_state, ptr noundef nonnull %fsm_state_err) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end33.if.end10_crit_edge, label %if.end33.do.end_crit_edge

if.end33.do.end_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end33.if.end10_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

cleanup:                                          ; preds = %if.then26, %do.end21.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %mlxfw_fsm_state_err.exit, %if.then5, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %35, %mlxfw_fsm_state_err.exit ], [ %call.lcssa, %if.then5 ], [ %call.lcssa, %do.end.cleanup_crit_edge ], [ -110, %if.then26 ], [ -110, %do.end21.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_fsm_state) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fsm_state_err) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxfw_flash_components(ptr noundef %mlxfw_dev, i32 noundef %fwhandle, ptr noundef %mfa2_file, i1 noundef zeroext %reactivate_supp, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %component_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %component_count) #6
  %0 = ptrtoint ptr %component_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %component_count, align 4, !annotation !249
  %psid = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 1
  %1 = ptrtoint ptr %psid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %psid, align 4
  %psid_size = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 2
  %3 = ptrtoint ptr %psid_size to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %psid_size, align 4
  %conv = zext i16 %4 to i32
  %call = call i32 @mlxfw_mfa2_file_component_count(ptr noundef %mfa2_file, ptr noundef %2, i32 noundef %conv, ptr noundef nonnull %component_count) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %5 = ptrtoint ptr %component_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %component_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp78.not = icmp eq i32 %6, 0
  br i1 %cmp78.not, label %for.cond.preheader.cleanup45_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup45_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup45

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %devlink.i74 = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  br label %for.body

do.end:                                           ; preds = %entry
  %devlink.i = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %7 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devlink.i, align 4
  %call.i = call ptr @devlink_to_dev(ptr noundef %8) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.116, i32 noundef %call) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_flash_components.__msg) #6
  %tobool4.not = icmp eq ptr %extack, null
  br i1 %tobool4.not, label %do.end.cleanup45_crit_edge, label %do.end.cleanup45.sink.split_crit_edge

do.end.cleanup45.sink.split_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup45.sink.split

do.end.cleanup45_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup45

for.cond:                                         ; preds = %cleanup
  %inc = add nuw i32 %i.079, 1
  %9 = ptrtoint ptr %component_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %component_count, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup45_crit_edge

for.cond.cleanup45_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup45

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %11 = ptrtoint ptr %psid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %psid, align 4
  %13 = ptrtoint ptr %psid_size to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %psid_size, align 4
  %conv14 = zext i16 %14 to i32
  %call15 = call ptr @mlxfw_mfa2_file_component_get(ptr noundef %mfa2_file, ptr noundef %12, i32 noundef %conv14, i32 noundef %i.079) #6
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %cleanup

if.then17:                                        ; preds = %for.body
  %15 = ptrtoint ptr %call15 to i32
  %16 = ptrtoint ptr %devlink.i74 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devlink.i74, align 4
  %call.i73 = call ptr @devlink_to_dev(ptr noundef %17) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i73, ptr noundef nonnull @.str, ptr noundef nonnull @.str.119, i32 noundef %15) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_flash_components.__msg.120) #6
  %tobool26.not = icmp eq ptr %extack, null
  br i1 %tobool26.not, label %if.then17.cleanup45_crit_edge, label %if.then17.cleanup45.sink.split_crit_edge

if.then17.cleanup45.sink.split_crit_edge:         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup45.sink.split

if.then17.cleanup45_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup45

cleanup:                                          ; preds = %for.body
  %18 = ptrtoint ptr %devlink.i74 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %devlink.i74, align 4
  %call.i75 = call ptr @devlink_to_dev(ptr noundef %19) #6
  %20 = ptrtoint ptr %call15 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %call15, align 4
  %conv39 = zext i16 %21 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %call.i75, ptr noundef nonnull @.str.122, i32 noundef %conv39) #9
  %call41 = call fastcc i32 @mlxfw_flash_component(ptr noundef %mlxfw_dev, i32 noundef %fwhandle, ptr noundef %call15, i1 noundef zeroext %reactivate_supp, ptr noundef %extack)
  call void @mlxfw_mfa2_file_component_put(ptr noundef %call15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %for.cond, label %cleanup.cleanup45_crit_edge

cleanup.cleanup45_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup45

cleanup45.sink.split:                             ; preds = %if.then17.cleanup45.sink.split_crit_edge, %do.end.cleanup45.sink.split_crit_edge
  %mlxfw_flash_components.__msg.120.sink = phi ptr [ @mlxfw_flash_components.__msg, %do.end.cleanup45.sink.split_crit_edge ], [ @mlxfw_flash_components.__msg.120, %if.then17.cleanup45.sink.split_crit_edge ]
  %retval.2.ph = phi i32 [ %call, %do.end.cleanup45.sink.split_crit_edge ], [ %15, %if.then17.cleanup45.sink.split_crit_edge ]
  %22 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mlxfw_flash_components.__msg.120.sink, ptr %extack, align 4
  br label %cleanup45

cleanup45:                                        ; preds = %cleanup45.sink.split, %cleanup.cleanup45_crit_edge, %if.then17.cleanup45_crit_edge, %for.cond.cleanup45_crit_edge, %do.end.cleanup45_crit_edge, %for.cond.preheader.cleanup45_crit_edge
  %retval.2 = phi i32 [ %call, %do.end.cleanup45_crit_edge ], [ %15, %if.then17.cleanup45_crit_edge ], [ 0, %for.cond.preheader.cleanup45_crit_edge ], [ %retval.2.ph, %cleanup45.sink.split ], [ %call41, %cleanup.cleanup45_crit_edge ], [ 0, %for.cond.cleanup45_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %component_count) #6
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxfw_mfa2_file_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_to_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_flash_update_status_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxfw_mfa2_file_component_count(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxfw_mfa2_file_component_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxfw_flash_component(ptr noundef %mlxfw_dev, i32 noundef %fwhandle, ptr nocapture noundef readonly %comp, i1 noundef zeroext %reactivate_supp, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %comp_max_write_size = alloca i16, align 2
  %comp_align_bits = alloca i8, align 1
  %comp_max_size = alloca i32, align 4
  %comp_name = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %comp_max_write_size) #6
  %0 = ptrtoint ptr %comp_max_write_size to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %comp_max_write_size, align 2, !annotation !249
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %comp_align_bits) #6
  %1 = ptrtoint ptr %comp_align_bits to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %comp_align_bits, align 1, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_max_size) #6
  %2 = ptrtoint ptr %comp_max_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %comp_max_size, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %comp_name) #6
  %3 = ptrtoint ptr %comp_name to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %comp_name, align 8
  %4 = ptrtoint ptr %comp to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %comp, align 4
  %conv = zext i16 %5 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %comp_name, ptr noundef nonnull @.str.124, i32 noundef %conv)
  %6 = ptrtoint ptr %mlxfw_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mlxfw_dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %comp to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %comp, align 4
  %call2 = call i32 %9(ptr noundef %mlxfw_dev, i16 noundef zeroext %11, ptr noundef nonnull %comp_max_size, ptr noundef nonnull %comp_align_bits, ptr noundef nonnull %comp_max_write_size) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end12, label %do.end

do.end:                                           ; preds = %entry
  %devlink.i = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %12 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %devlink.i, align 4
  %call.i = call ptr @devlink_to_dev(ptr noundef %13) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.126, i32 noundef %call2) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_flash_component.__msg) #6
  %tobool6.not = icmp eq ptr %extack, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.then7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mlxfw_flash_component.__msg, ptr %extack, align 4
  br label %cleanup

if.end12:                                         ; preds = %entry
  %15 = ptrtoint ptr %comp_max_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %comp_max_size, align 4
  %17 = call i32 @llvm.umin.i32(i32 %16, i32 10485760)
  %18 = ptrtoint ptr %comp_max_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %comp_max_size, align 4
  %data_size = getelementptr inbounds %struct.mlxfw_mfa2_component, ptr %comp, i32 0, i32 1
  %19 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %17)
  %cmp14 = icmp ugt i32 %20, %17
  br i1 %cmp14, label %do.end20, label %if.end32

do.end20:                                         ; preds = %if.end12
  %devlink.i293 = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %21 = ptrtoint ptr %devlink.i293 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %devlink.i293, align 4
  %call.i294 = call ptr @devlink_to_dev(ptr noundef %22) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i294, ptr noundef nonnull @.str, ptr noundef nonnull @.str.129, i32 noundef -22) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_flash_component.__msg.130) #6
  %tobool24.not = icmp eq ptr %extack, null
  br i1 %tobool24.not, label %do.end20.cleanup_crit_edge, label %if.then25

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mlxfw_flash_component.__msg.130, ptr %extack, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end12
  %24 = ptrtoint ptr %comp_max_write_size to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %comp_max_write_size, align 2
  %26 = ptrtoint ptr %comp_align_bits to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %comp_align_bits, align 1
  %conv34 = zext i8 %27 to i32
  %notmask = shl nsw i32 -1, %conv34
  %28 = trunc i32 %notmask to i16
  %conv35 = and i16 %25, %28
  store i16 %conv35, ptr %comp_max_write_size, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlxfw_flash_component.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlxfw_flash_component, %if.then43)) #6
          to label %do.end47 [label %if.then43], !srcloc !250

if.then43:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %devlink.i295 = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %29 = ptrtoint ptr %devlink.i295 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %devlink.i295, align 4
  %call.i296 = call ptr @devlink_to_dev(ptr noundef %30) #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlxfw_flash_component.__UNIQUE_ID_ddebug345, ptr noundef %call.i296, ptr noundef nonnull @.str.131) #6
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %if.end32
  %devlink.i297 = getelementptr inbounds %struct.mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 3
  %31 = ptrtoint ptr %devlink.i297 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %devlink.i297, align 4
  call void @devlink_flash_update_status_notify(ptr noundef %32, ptr noundef nonnull @.str.132, ptr noundef nonnull %comp_name, i32 noundef 0, i32 noundef 0) #6
  %33 = ptrtoint ptr %mlxfw_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mlxfw_dev, align 4
  %fsm_component_update = getelementptr inbounds %struct.mlxfw_dev_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %fsm_component_update to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fsm_component_update, align 4
  %37 = ptrtoint ptr %comp to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %comp, align 4
  %39 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_size, align 4
  %call52 = call i32 %36(ptr noundef %mlxfw_dev, i32 noundef %fwhandle, i16 noundef zeroext %38, i32 noundef %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end88, label %if.then54

if.then54:                                        ; preds = %do.end47
  %41 = ptrtoint ptr %devlink.i297 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %devlink.i297, align 4
  %call.i301 = call ptr @devlink_to_dev(ptr noundef %42) #6
  br i1 %reactivate_supp, label %do.end75, label %do.end60

do.end60:                                         ; preds = %if.then54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i301, ptr noundef nonnull @.str, ptr noundef nonnull @.str.135, i32 noundef %call52) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_flash_component.__msg.136) #6
  %tobool64.not = icmp eq ptr %extack, null
  br i1 %tobool64.not, label %do.end60.cleanup_crit_edge, label %if.then65

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then65:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @mlxfw_flash_component.__msg.136, ptr %extack, align 4
  br label %cleanup

do.end75:                                         ; preds = %if.then54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i301, ptr noundef nonnull @.str, ptr noundef nonnull @.str.139, i32 noundef %call52) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_flash_component.__msg.140) #6
  %tobool79.not = icmp eq ptr %extack, null
  br i1 %tobool79.not, label %do.end75.cleanup_crit_edge, label %if.then80

do.end75.cleanup_crit_edge:                       ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then80:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @mlxfw_flash_component.__msg.140, ptr %extack, align 4
  br label %cleanup

if.end88:                                         ; preds = %do.end47
  %call89 = call fastcc i32 @mlxfw_fsm_state_wait(ptr noundef %mlxfw_dev, i32 noundef %fwhandle, i32 noundef 3, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %do.body93, label %if.end88.err_out_crit_edge

if.end88.err_out_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

do.body93:                                        ; preds = %if.end88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlxfw_flash_component.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlxfw_flash_component, %if.then105)) #6
          to label %do.end109 [label %if.then105], !srcloc !250

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %devlink.i297 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %devlink.i297, align 4
  %call.i303 = call ptr @devlink_to_dev(ptr noundef %46) #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlxfw_flash_component.__UNIQUE_ID_ddebug346, ptr noundef %call.i303, ptr noundef nonnull @.str.141) #6
  br label %do.end109

do.end109:                                        ; preds = %if.then105, %do.body93
  %47 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_size, align 4
  %49 = ptrtoint ptr %devlink.i297 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %devlink.i297, align 4
  call void @devlink_flash_update_status_notify(ptr noundef %50, ptr noundef nonnull @.str.142, ptr noundef nonnull %comp_name, i32 noundef 0, i32 noundef %48) #6
  %51 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_size, align 4
  %53 = ptrtoint ptr %comp_align_bits to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %comp_align_bits, align 1
  %conv113316 = zext i8 %54 to i32
  %notmask286317 = shl nsw i32 -1, %conv113316
  %sub115318 = xor i32 %notmask286317, -1
  %add319 = add i32 %52, %sub115318
  %and120320 = and i32 %add319, %notmask286317
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120320)
  %cmp121321.not = icmp eq i32 %and120320, 0
  br i1 %cmp121321.not, label %do.end109.do.body160_crit_edge, label %for.body.lr.ph

do.end109.do.body160_crit_edge:                   ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body160

for.body.lr.ph:                                   ; preds = %do.end109
  %data = getelementptr inbounds %struct.mlxfw_mfa2_component, ptr %comp, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end153.for.body_crit_edge, %for.body.lr.ph
  %55 = phi i32 [ %52, %for.body.lr.ph ], [ %74, %if.end153.for.body_crit_edge ]
  %offset.0322 = phi i32 [ 0, %for.body.lr.ph ], [ %add159, %if.end153.for.body_crit_edge ]
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %57, i32 %offset.0322
  %sub124 = sub i32 %55, %offset.0322
  %58 = ptrtoint ptr %comp_max_write_size to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %comp_max_write_size, align 2
  %conv125 = zext i16 %59 to i32
  %60 = call i32 @llvm.umin.i32(i32 %sub124, i32 %conv125)
  %conv133 = trunc i32 %60 to i16
  %61 = ptrtoint ptr %mlxfw_dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mlxfw_dev, align 4
  %fsm_block_download = getelementptr inbounds %struct.mlxfw_dev_ops, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %fsm_block_download to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fsm_block_download, align 4
  %call135 = call i32 %64(ptr noundef %mlxfw_dev, i32 noundef %fwhandle, ptr noundef %add.ptr, i16 noundef zeroext %conv133, i32 noundef %offset.0322) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end153, label %do.end141

do.end141:                                        ; preds = %for.body
  %65 = ptrtoint ptr %devlink.i297 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %devlink.i297, align 4
  %call.i306 = call ptr @devlink_to_dev(ptr noundef %66) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i306, ptr noundef nonnull @.str, ptr noundef nonnull @.str.145, i32 noundef %call135) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_flash_component.__msg.146) #6
  %tobool145.not = icmp eq ptr %extack, null
  br i1 %tobool145.not, label %do.end141.err_out_crit_edge, label %do.end141.err_out.sink.split_crit_edge

do.end141.err_out.sink.split_crit_edge:           ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.sink.split

do.end141.err_out_crit_edge:                      ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end153:                                        ; preds = %for.body
  %add156 = add i32 %60, %offset.0322
  %67 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data_size, align 4
  %69 = ptrtoint ptr %devlink.i297 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %devlink.i297, align 4
  call void @devlink_flash_update_status_notify(ptr noundef %70, ptr noundef nonnull @.str.142, ptr noundef nonnull %comp_name, i32 noundef %add156, i32 noundef %68) #6
  %71 = ptrtoint ptr %comp_max_write_size to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %comp_max_write_size, align 2
  %conv158 = zext i16 %72 to i32
  %add159 = add i32 %offset.0322, %conv158
  %73 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data_size, align 4
  %75 = ptrtoint ptr %comp_align_bits to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %comp_align_bits, align 1
  %conv113 = zext i8 %76 to i32
  %notmask286 = shl nsw i32 -1, %conv113
  %sub115 = xor i32 %notmask286, -1
  %add = add i32 %74, %sub115
  %and120 = and i32 %add, %notmask286
  %cmp121 = icmp ult i32 %add159, %and120
  br i1 %cmp121, label %if.end153.for.body_crit_edge, label %if.end153.do.body160_crit_edge

if.end153.do.body160_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body160

if.end153.for.body_crit_edge:                     ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body160:                                       ; preds = %if.end153.do.body160_crit_edge, %do.end109.do.body160_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlxfw_flash_component.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlxfw_flash_component, %if.then172)) #6
          to label %do.end176 [label %if.then172], !srcloc !250

if.then172:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %devlink.i297 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %devlink.i297, align 4
  %call.i309 = call ptr @devlink_to_dev(ptr noundef %78) #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlxfw_flash_component.__UNIQUE_ID_ddebug349, ptr noundef %call.i309, ptr noundef nonnull @.str.147) #6
  br label %do.end176

do.end176:                                        ; preds = %if.then172, %do.body160
  %79 = ptrtoint ptr %devlink.i297 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %devlink.i297, align 4
  call void @devlink_flash_update_status_notify(ptr noundef %80, ptr noundef nonnull @.str.148, ptr noundef nonnull %comp_name, i32 noundef 0, i32 noundef 0) #6
  %81 = ptrtoint ptr %mlxfw_dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mlxfw_dev, align 4
  %fsm_component_verify = getelementptr inbounds %struct.mlxfw_dev_ops, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %fsm_component_verify to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fsm_component_verify, align 4
  %85 = ptrtoint ptr %comp to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %comp, align 4
  %call180 = call i32 %84(ptr noundef %mlxfw_dev, i32 noundef %fwhandle, i16 noundef zeroext %86) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end198, label %do.end186

do.end186:                                        ; preds = %do.end176
  %87 = ptrtoint ptr %devlink.i297 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %devlink.i297, align 4
  %call.i312 = call ptr @devlink_to_dev(ptr noundef %88) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i312, ptr noundef nonnull @.str, ptr noundef nonnull @.str.151, i32 noundef %call180) #9
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxfw_flash_component.__msg.152) #6
  %tobool190.not = icmp eq ptr %extack, null
  br i1 %tobool190.not, label %do.end186.err_out_crit_edge, label %do.end186.err_out.sink.split_crit_edge

do.end186.err_out.sink.split_crit_edge:           ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.sink.split

do.end186.err_out_crit_edge:                      ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end198:                                        ; preds = %do.end176
  %call199 = call fastcc i32 @mlxfw_fsm_state_wait(ptr noundef %mlxfw_dev, i32 noundef %fwhandle, i32 noundef 1, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.end198.cleanup_crit_edge, label %if.end198.err_out_crit_edge

if.end198.err_out_crit_edge:                      ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end198.cleanup_crit_edge:                      ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_out.sink.split:                               ; preds = %do.end186.err_out.sink.split_crit_edge, %do.end141.err_out.sink.split_crit_edge
  %mlxfw_flash_component.__msg.152.sink = phi ptr [ @mlxfw_flash_component.__msg.146, %do.end141.err_out.sink.split_crit_edge ], [ @mlxfw_flash_component.__msg.152, %do.end186.err_out.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ %call135, %do.end141.err_out.sink.split_crit_edge ], [ %call180, %do.end186.err_out.sink.split_crit_edge ]
  %89 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %mlxfw_flash_component.__msg.152.sink, ptr %extack, align 4
  br label %err_out

err_out:                                          ; preds = %err_out.sink.split, %if.end198.err_out_crit_edge, %do.end186.err_out_crit_edge, %do.end141.err_out_crit_edge, %if.end88.err_out_crit_edge
  %err.0 = phi i32 [ %call89, %if.end88.err_out_crit_edge ], [ %call199, %if.end198.err_out_crit_edge ], [ %call135, %do.end141.err_out_crit_edge ], [ %call180, %do.end186.err_out_crit_edge ], [ %err.0.ph, %err_out.sink.split ]
  %90 = ptrtoint ptr %mlxfw_dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mlxfw_dev, align 4
  %fsm_cancel = getelementptr inbounds %struct.mlxfw_dev_ops, ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %fsm_cancel to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fsm_cancel, align 4
  call void %93(ptr noundef %mlxfw_dev, i32 noundef %fwhandle) #6
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end198.cleanup_crit_edge, %if.then80, %do.end75.cleanup_crit_edge, %if.then65, %do.end60.cleanup_crit_edge, %if.then25, %do.end20.cleanup_crit_edge, %if.then7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_out ], [ %call2, %if.then7 ], [ %call2, %do.end.cleanup_crit_edge ], [ -22, %if.then25 ], [ -22, %do.end20.cleanup_crit_edge ], [ %call52, %do.end75.cleanup_crit_edge ], [ %call52, %if.then80 ], [ %call52, %do.end60.cleanup_crit_edge ], [ %call52, %if.then65 ], [ 0, %if.end198.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %comp_name) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_max_size) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %comp_align_bits) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %comp_max_write_size) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxfw_mfa2_file_component_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !43, !44, !45, !47, !49, !51, !52, !54, !56, !58, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !122, !123, !124, !125, !126, !128, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !196, !197, !198, !199, !200, !202, !203, !204, !205, !207, !208, !210, !212, !213, !214, !215, !217, !218, !219, !220, !222, !223, !225, !227, !228, !229, !230, !232, !233, !235, !237, !238, !239}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 357, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlxfw_firmware_flash._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlxfw_firmware_flash._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mlxfw_firmware_flash.__msg, !1, !"__msg", i1 false, i1 false}
!10 = !{ptr @mlxfw_firmware_flash._entry.6, !11, !"_entry", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 365, i32 3}
!12 = !{ptr @mlxfw_firmware_flash._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mlxfw_firmware_flash.__msg.9, !11, !"__msg", i1 false, i1 false}
!15 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 370, i32 2}
!17 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mlxfw_firmware_flash._entry.10, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @mlxfw_firmware_flash._entry_ptr.13, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 371, i32 33}
!22 = !{ptr @mlxfw_firmware_flash._entry.15, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 375, i32 3}
!24 = !{ptr @mlxfw_firmware_flash._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mlxfw_firmware_flash.__msg.18, !23, !"__msg", i1 false, i1 false}
!27 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 399, i32 2}
!29 = !{ptr @.str.20, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mlxfw_firmware_flash.__UNIQUE_ID_ddebug350, !28, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 400, i32 33}
!33 = !{ptr @mlxfw_firmware_flash._entry.22, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 403, i32 3}
!35 = !{ptr @mlxfw_firmware_flash._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.24, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mlxfw_firmware_flash.__msg.25, !34, !"__msg", i1 false, i1 false}
!38 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 413, i32 2}
!40 = !{ptr @mlxfw_firmware_flash.__UNIQUE_ID_ddebug351, !39, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!41 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 416, i32 2}
!43 = !{ptr @mlxfw_firmware_flash._entry.27, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mlxfw_firmware_flash._entry_ptr.29, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.30, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 417, i32 33}
!47 = !{ptr @__ksymtab_mlxfw_firmware_flash, !48, !"__ksymtab_mlxfw_firmware_flash", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 432, i32 1}
!49 = !{ptr @__UNIQUE_ID_file352, !50, !"__UNIQUE_ID_file352", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 434, i32 1}
!51 = !{ptr @__UNIQUE_ID_license353, !50, !"__UNIQUE_ID_license353", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_author354, !53, !"__UNIQUE_ID_author354", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 435, i32 1}
!54 = !{ptr @__UNIQUE_ID_description355, !55, !"__UNIQUE_ID_description355", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 436, i32 1}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 98, i32 3}
!58 = !{ptr @mlxfw_fsm_state_wait._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mlxfw_fsm_state_wait._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mlxfw_fsm_state_wait.__msg, !57, !"__msg", i1 false, i1 false}
!62 = !{ptr @mlxfw_fsm_state_wait._entry.33, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 107, i32 4}
!64 = !{ptr @mlxfw_fsm_state_wait._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mlxfw_fsm_state_wait.__msg.36, !63, !"__msg", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 49, i32 3}
!69 = !{ptr @mlxfw_fsm_state_err._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mlxfw_fsm_state_err._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @mlxfw_fsm_state_err.__msg, !68, !"__msg", i1 false, i1 false}
!73 = !{ptr @mlxfw_fsm_state_err._entry.39, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 52, i32 3}
!75 = !{ptr @mlxfw_fsm_state_err._entry_ptr.40, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @mlxfw_fsm_state_err.__msg.42, !74, !"__msg", i1 false, i1 false}
!78 = !{ptr @mlxfw_fsm_state_err._entry.43, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 55, i32 3}
!80 = !{ptr @mlxfw_fsm_state_err._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mlxfw_fsm_state_err.__msg.46, !79, !"__msg", i1 false, i1 false}
!83 = !{ptr @mlxfw_fsm_state_err._entry.47, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 58, i32 3}
!85 = !{ptr @mlxfw_fsm_state_err._entry_ptr.48, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @mlxfw_fsm_state_err.__msg.50, !84, !"__msg", i1 false, i1 false}
!88 = !{ptr @mlxfw_fsm_state_err._entry.51, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 61, i32 3}
!90 = !{ptr @mlxfw_fsm_state_err._entry_ptr.52, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.53, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @mlxfw_fsm_state_err.__msg.54, !89, !"__msg", i1 false, i1 false}
!93 = !{ptr @mlxfw_fsm_state_err._entry.55, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 64, i32 3}
!95 = !{ptr @mlxfw_fsm_state_err._entry_ptr.56, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.57, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mlxfw_fsm_state_err.__msg.58, !94, !"__msg", i1 false, i1 false}
!98 = !{ptr @mlxfw_fsm_state_err._entry.59, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 67, i32 3}
!100 = !{ptr @mlxfw_fsm_state_err._entry_ptr.60, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.61, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mlxfw_fsm_state_err.__msg.62, !99, !"__msg", i1 false, i1 false}
!103 = !{ptr @mlxfw_fsm_state_err._entry.63, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 70, i32 3}
!105 = !{ptr @mlxfw_fsm_state_err._entry_ptr.64, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.65, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @mlxfw_fsm_state_err.__msg.66, !104, !"__msg", i1 false, i1 false}
!108 = !{ptr @mlxfw_fsm_state_err._entry.67, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 73, i32 3}
!110 = !{ptr @mlxfw_fsm_state_err._entry_ptr.68, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.69, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mlxfw_fsm_state_err.__msg.70, !109, !"__msg", i1 false, i1 false}
!113 = !{ptr @mlxfw_fsm_state_err._entry.71, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 77, i32 3}
!115 = !{ptr @mlxfw_fsm_state_err._entry_ptr.72, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.73, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @mlxfw_fsm_state_err.__msg.74, !114, !"__msg", i1 false, i1 false}
!118 = !{ptr @mlxfw_fsm_state_errno, !119, !"mlxfw_fsm_state_errno", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 19, i32 18}
!120 = !{ptr @.str.75, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 183, i32 3}
!122 = !{ptr @mlxfw_fsm_reactivate._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @mlxfw_fsm_reactivate._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.76, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @mlxfw_fsm_reactivate.__msg, !121, !"__msg", i1 false, i1 false}
!126 = !{ptr @.str.77, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 132, i32 3}
!128 = !{ptr @mlxfw_fsm_reactivate_err._entry, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @mlxfw_fsm_reactivate_err._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.78, !127, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @mlxfw_fsm_reactivate_err.__msg, !127, !"__msg", i1 false, i1 false}
!132 = !{ptr @mlxfw_fsm_reactivate_err._entry.79, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 135, i32 3}
!134 = !{ptr @mlxfw_fsm_reactivate_err._entry_ptr.80, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.81, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @mlxfw_fsm_reactivate_err.__msg.82, !133, !"__msg", i1 false, i1 false}
!137 = !{ptr @mlxfw_fsm_reactivate_err._entry.83, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 138, i32 3}
!139 = !{ptr @mlxfw_fsm_reactivate_err._entry_ptr.84, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.85, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @mlxfw_fsm_reactivate_err.__msg.86, !138, !"__msg", i1 false, i1 false}
!142 = !{ptr @mlxfw_fsm_reactivate_err._entry.87, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 141, i32 3}
!144 = !{ptr @mlxfw_fsm_reactivate_err._entry_ptr.88, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.89, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @mlxfw_fsm_reactivate_err.__msg.90, !143, !"__msg", i1 false, i1 false}
!147 = !{ptr @mlxfw_fsm_reactivate_err._entry.91, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 144, i32 3}
!149 = !{ptr @mlxfw_fsm_reactivate_err._entry_ptr.92, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.93, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @mlxfw_fsm_reactivate_err.__msg.94, !148, !"__msg", i1 false, i1 false}
!152 = !{ptr @mlxfw_fsm_reactivate_err._entry.95, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 147, i32 3}
!154 = !{ptr @mlxfw_fsm_reactivate_err._entry_ptr.96, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.97, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @mlxfw_fsm_reactivate_err.__msg.98, !153, !"__msg", i1 false, i1 false}
!157 = !{ptr @mlxfw_fsm_reactivate_err._entry.99, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 150, i32 3}
!159 = !{ptr @mlxfw_fsm_reactivate_err._entry_ptr.100, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.101, !158, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @mlxfw_fsm_reactivate_err.__msg.102, !158, !"__msg", i1 false, i1 false}
!162 = !{ptr @mlxfw_fsm_reactivate_err._entry.103, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 153, i32 3}
!164 = !{ptr @mlxfw_fsm_reactivate_err._entry_ptr.104, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.105, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @mlxfw_fsm_reactivate_err.__msg.106, !163, !"__msg", i1 false, i1 false}
!167 = !{ptr @mlxfw_fsm_reactivate_err._entry.107, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 156, i32 3}
!169 = !{ptr @mlxfw_fsm_reactivate_err._entry_ptr.108, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.109, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @mlxfw_fsm_reactivate_err.__msg.110, !168, !"__msg", i1 false, i1 false}
!172 = !{ptr @mlxfw_fsm_reactivate_err._entry.111, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 160, i32 3}
!174 = !{ptr @mlxfw_fsm_reactivate_err._entry_ptr.112, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.113, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @mlxfw_fsm_reactivate_err.__msg.114, !173, !"__msg", i1 false, i1 false}
!177 = !{ptr @.str.115, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 319, i32 3}
!179 = !{ptr @mlxfw_flash_components._entry, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @mlxfw_flash_components._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.116, !178, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @mlxfw_flash_components.__msg, !178, !"__msg", i1 false, i1 false}
!183 = !{ptr @mlxfw_flash_components._entry.117, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 331, i32 4}
!185 = !{ptr @mlxfw_flash_components._entry_ptr.118, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.119, !184, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @mlxfw_flash_components.__msg.120, !184, !"__msg", i1 false, i1 false}
!188 = !{ptr @.str.122, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 336, i32 3}
!190 = !{ptr @mlxfw_flash_components._entry.121, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @mlxfw_flash_components._entry_ptr.123, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.124, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 222, i32 21}
!194 = !{ptr @.str.125, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 228, i32 3}
!196 = !{ptr @mlxfw_flash_component._entry, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @mlxfw_flash_component._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.126, !195, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @mlxfw_flash_component.__msg, !195, !"__msg", i1 false, i1 false}
!200 = !{ptr @mlxfw_flash_component._entry.127, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 234, i32 3}
!202 = !{ptr @mlxfw_flash_component._entry_ptr.128, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.129, !201, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @mlxfw_flash_component.__msg.130, !201, !"__msg", i1 false, i1 false}
!205 = !{ptr @.str.131, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 242, i32 2}
!207 = !{ptr @mlxfw_flash_component.__UNIQUE_ID_ddebug345, !206, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!208 = !{ptr @.str.132, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 243, i32 33}
!210 = !{ptr @mlxfw_flash_component._entry.133, !211, !"_entry", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 249, i32 4}
!212 = !{ptr @mlxfw_flash_component._entry_ptr.134, !211, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.135, !211, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @mlxfw_flash_component.__msg.136, !211, !"__msg", i1 false, i1 false}
!215 = !{ptr @mlxfw_flash_component._entry.137, !216, !"_entry", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 253, i32 4}
!217 = !{ptr @mlxfw_flash_component._entry_ptr.138, !216, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.139, !216, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @mlxfw_flash_component.__msg.140, !216, !"__msg", i1 false, i1 false}
!220 = !{ptr @.str.141, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 263, i32 2}
!222 = !{ptr @mlxfw_flash_component.__UNIQUE_ID_ddebug346, !221, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!223 = !{ptr @.str.142, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 264, i32 33}
!225 = !{ptr @mlxfw_flash_component._entry.143, !226, !"_entry", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 276, i32 4}
!227 = !{ptr @mlxfw_flash_component._entry_ptr.144, !226, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.145, !226, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @mlxfw_flash_component.__msg.146, !226, !"__msg", i1 false, i1 false}
!230 = !{ptr @.str.147, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 285, i32 2}
!232 = !{ptr @mlxfw_flash_component.__UNIQUE_ID_ddebug349, !231, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!233 = !{ptr @.str.148, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 286, i32 33}
!235 = !{ptr @mlxfw_flash_component._entry.149, !236, !"_entry", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_fsm.c", i32 290, i32 3}
!237 = !{ptr @mlxfw_flash_component._entry_ptr.150, !236, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.151, !236, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @mlxfw_flash_component.__msg.152, !236, !"__msg", i1 false, i1 false}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!249 = !{!"auto-init"}
!250 = !{i64 2148702485, i64 2148702490, i64 2148702503, i64 2148702547, i64 2148702581, i64 2148702602}
